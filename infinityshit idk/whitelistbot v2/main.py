import uvicorn
from typing import Union
from fastapi import FastAPI
from json_database import JsonDatabase

app = FastAPI()


@app.get("/")
def read_root():
    return {"Cookies Services": "Created by 黑客先生#8957"}


@app.get("/auth/{hwid}")
def auth_database(hwid: Union[str, None] = None):
    db = JsonDatabase("users", "users.db")
    FoundUsers = db.search_by_key("Key")

    for user in FoundUsers:
        if user["Hwid"] == hwid:
            return {"status": "success"}

    return {"status": "failed"}


@app.get("/addkey/{key}")
def add_key_database(key: Union[str, None] = None):
    file_write = open("createdkeys.txt", "a")
    file_read = open("createdkeys.txt", "r")

    lines = [line.strip() for line in file_read]

    for line in lines:
        if line == key:
            return {"status": "failed"}

    file_write.write("\n" + key)
    return {"status": "success"}


@app.get("/add/{key}/{hwid}")
def add_auth_database(key: Union[str, None] = None,
                      hwid: Union[str, None] = None):
    file_write = open("createdkeys.txt", "a")
    file_read = open("createdkeys.txt", "r")

    lines = [line.strip() for line in file_read]

    for line in lines:
        if line == key:  # Key is found in database
            with JsonDatabase("users", "users.db") as db:
                data = {"Key": key, "Hwid": hwid}
                db.add_item(data)

            # remove the key from the file
            lines.remove(key)

            # open file and clear "createdkeys.txt"
            file_writea = open("createdkeys.txt", "w")
            file_writea.write("")
            file_writea.close()

            # write lines to file_read_a
            for line in lines:
                file_write.write(line + "\n")

            return {"status": "success"}

    return {"status": "failed"}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8080)
