#!/bin/bash

read -p "Enter name for Student1: " student1
read -p "Enter name for Student2: " student2
read -p "Enter name for Student3: " student3

echo "#Course $student1 $student2 $student3" > marks.dat

for ((i=1; i<=5; i++)); do
    read -p "Enter CourseID for course $i: " course_id
    read -p "Enter marks for $student1: " marks1
    read -p "Enter marks for $student2: " marks2
    read -p "Enter marks for $student3: " marks3
    echo "$course_id $marks1 $marks2 $marks3" >> marks.dat
done

echo "marks.dat has been created."

