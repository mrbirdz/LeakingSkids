import uvicorn
from typing import Union
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {
        "Cookies Services": "Roblox Cheater Database! Created by 黑客先生#8957"
    }



@app.get("/add/{id}")
def add_database(id: Union[str, None] = None):
    file_write = open("database.txt", "a")
    file_read = open("database.txt", "r")

    lines = [line.strip() for line in file_read]

    for line in lines:
        if line == id:
            return {"status": "failed"}

    file_write.write("\n" + id)
    return {"status": "success"}


@app.get("/check/{id}")
def check_database(id: Union[str, None] = None):
    file_read = open("database.txt", "r")
    lines = [line.strip() for line in file_read]
    for line in lines:
        if line == id:
            return {"status": "success"}
    return {"status": "failed"}

@app.get("/get/cheaterdatabase")
def get_cheater_database():
    file_read = open("database.txt", "r")
    lines = [line.strip() for line in file_read]
    return {"ids": lines}






@app.get("/check/staff/{id}")
def check_staff_database(id: Union[str, None] = None):
    file_read = open("database_staff.txt", "r")
    lines = [line.strip() for line in file_read]
    for line in lines:
        if line == id:
            return {"status": "success"}
    return {"status": "failed"}

@app.get("/get/staffdatabase")
def get_staff_database():
    file_read = open("database_staff.txt", "r")
    lines = [line.strip() for line in file_read]
    return {"ids": lines}

@app.get("/add/staff/{id}")
def add_staff_database(id: Union[str, None] = None):
    file_write = open("database_staff.txt", "a")
    file_read = open("database_staff.txt", "r")

    lines = [line.strip() for line in file_read]

    for line in lines:
        if line == id:
            return {"status": "failed"}

    file_write.write("\n" + id)
    return {"status": "success"}





if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8080)
