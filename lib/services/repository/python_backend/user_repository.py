import requests

class UserRepository:
    def __init__(self, base_url):
        self.base_url = base_url

    def login(self, email, password):
        response = requests.post(f"{self.base_url}/login", json={"email": email, "password": password})
        if response.status_code == 200:
            return response.json()
        else:
            return None

    def register(self, email, password):
        response = requests.post(f"{self.base_url}/register", json={"email": email, "password": password})
        if response.status_code == 200:
            return response.json()
        else:
            return None