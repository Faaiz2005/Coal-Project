# Coal-Project

---

## PROJECT REPORT

---

### 1. Introduction
This project is a menu-driven calculator application developed using Assembly Language (MASM) with Irvine32 library. The program provides an interactive menu that allows users to perform multiple operations such as arithmetic calculations, data conversion, or string processing. The project demonstrates core assembly programming concepts like register operations, looping, procedure calling, and memory handling.

---

### 2. Objective

The main objectives of this project are:

•	To design a menu-driven system using Assembly Language

•	To perform arithmetic operations (Addition, Subtraction, Multiplication, Division)

•	To implement factorial calculation using loops

•	To perform basic string processing operations

•	To practice modular programming using procedures

---

### 3. Program Description
The program displays a menu and asks the user to select an operation. Based on the selected option, the program calls the corresponding procedure to perform the task.Menu Options Include:

•	Addition

•	Subtraction

•	Multiplication

•	Division

•	Factorial Calculation

•	String Length Calculation

•	Exit

Separate procedures are used for each operation which improves readability and program structure.

---

### 4. Working Methodology

1.	The program displays the menu using WriteString.

2.	The user enters a choice using ReadInt.

3.	The program compares the input choice using CMP instructions.

4.	The selected operation procedure is executed.

5.	The result is displayed using WriteInt.

6.	The program returns to the menu until the user selects Exit.

Registers such as EAX, EBX, ECX, and EDX are used for calculations and data handling.

---

### 5. Features and Advantages

•	User-friendly menu interface

•	Modular design using multiple procedures

•	Efficient use of CPU registers

•	Supports both numeric and string operations

•	Demonstrates real-world assembly programming concepts

---

### 6. Conclusion

This menu-driven assembly application successfully integrates multiple operations into a single program. It demonstrates practical use of assembly language concepts such as procedure handling, loops, register manipulation, and string processing. The project provides strong understanding of low-level programming and structured assembly code design.
