from pydantic import BaseModel

class UserBase(BaseModel):
    email: str

class UserCreate(UserBase):
    password: str

class User(UserBase):
    id: int
    is_active: bool

    class Config:
        orm_mode = True

class TheatreBase(BaseModel):
    name: str
    location: str

class TheatreCreate(TheatreBase):
    pass

class Theatre(TheatreBase):
    id: int

    class Config:
        orm_mode = True

class FilmBase(BaseModel):
    title: str
    description: str

class FilmCreate(FilmBase):
    pass

class Film(FilmBase):
    id: int
    theatre_id: int

    class Config:
        orm_mode = True