from fastapi import FastAPI, HTTPException # FastAPI class is used to create fastapi instance
                                           # HTTPException is used to raise HTTP errors.
from pydantic import BaseModel 

app=FastAPI()

class Student(BaseModel): # Student object
    name:str
    gender:str
    age:int

students={} # empty dictionary

@app.post("/students/{student_id}")
def create_student(student_id:int, student:Student):
    if student_id in students:
        raise HTTPException(status_code=404, detail="Student already exist")
    students[student_id]=student
    return{
        "message":"Student added successfully",
        "student":student
    }

@app.get("/students/{student_id}")
def read_student(student_id:int):
    if student_id not in students:
        raise HTTPException(status_code=404, detail="Student not exist")
    return students[student_id]

@app.put("/students/{student_id}")
def update_student(student_id:int, student:Student):
    if student_id not in students:
        raise HTTPException(status_code=404, detail="Student not exist")
    students[student_id]=student
    return{
        "message":"Student updated successfully",
        "student":student
    }

@app.delete("/students/{student_id}")
def delete_student(student_id:int, student:Student):
    if student_id not in students:
        raise HTTPException(status_code=404, detail="Student not exist")
    del students[student_id]
    return{
        "message":"Student deleted successfully"
    }
