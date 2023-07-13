from flask import Blueprint, render_template, request, flash, redirect, url_for
from .models import User
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.utils import secure_filename
from . import db   ##de __init__.py importe db
from flask_login import login_user, login_required, logout_user, current_user

auth = Blueprint('auth', __name__)

@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email    = request.form.get('email')
        password = request.form.get('password')

        user = User.query.filter_by(email=email).first()
        if user:
            if check_password_hash(user.password, password):
                flash('Login feito com sucesso!', category='success')
                login_user(user, remember=True)
                return redirect(url_for('views.home'))
            else:
                flash('Senha incorreta. Tente novamente.', category='error')
        else:
            flash('Este e-mail não existe', category='error')

    return render_template("login.html", user=current_user)


@auth.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('auth.login'))


@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        email      = request.form.get('email')
        first_name = request.form.get('firstName')
        password1  = request.form.get('password1')
        password2  = request.form.get('password2')
        id_number  = request.form.get('id_number')
        course     = request.form.get('course')

        user = User.query.filter_by(email=email).first()
        if user:
            flash('Este e-mail já está cadastrado. Tente novamente.', category='error')
        elif len(email) < 4:
            flash('O e-mail deve ter mais que 3 caracteres. Tente novamente.', category='error')
        elif len(first_name) < 2:
            flash('Seu nome deve conter mais que 1 caractere. Tente novamente.', category='error')
        elif len(id_number) != 9:
            flash('A matrícula contém 9 números. Tente novamente.', category='error')
        elif password1 != password2:
            flash('As senhas não correspondem. Tente novamente.', category='error')
        elif len(password1) < 8:
            flash('A senha deve ter no mínimo 8 caracteres. Tente novamente.', category='error')

        else:
            new_user = User(email=email, first_name=first_name, password=generate_password_hash(
                password1, method='sha256'))
            db.session.add(new_user)
            db.session.commit()
            login_user(new_user, remember=True)
            flash('Sua conta foi criada com sucesso!', category='success')
            return redirect(url_for('views.home'))

    return render_template("sign_up.html", user=current_user)
    
