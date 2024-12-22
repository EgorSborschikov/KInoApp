from sqlalchemy.orm import Session
from . import models, schemas

def get_user(db: Session, user_id: int):
    return db.query(models.User).filter(models.User.id == user_id).first()

def get_user_by_email(db: Session, email: str):
    return db.query(models.User).filter(models.User.email == email).first()

def create_user(db: Session, user: schemas.UserCreate):
    db_user = models.User(email=user.email, hashed_password=user.hashed_password)
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_theatre(db: Session, theatre_id: int):
    return db.query(models.Theatre).filter(models.Theatre.id == theatre_id).first()

def create_theatre(db: Session, theatre: schemas.TheatreCreate):
    db_theatre = models.Theatre(name=theatre.name, location=theatre.location)
    db.add(db_theatre)
    db.commit()
    db.refresh(db_theatre)
    return db_theatre

def get_film(db: Session, film_id: int):
    return db.query(models.Film).filter(models.Film.id == film_id).first()

def create_film(db: Session, film: schemas.FilmCreate, theatre_id: int):
    db_film = models.Film(**film.dict(), theatre_id=theatre_id)
    db.add(db_film)
    db.commit()
    db.refresh(db_film)
    return db_film