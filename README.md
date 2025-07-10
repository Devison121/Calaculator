# Calaculator

This script creates a basic command-line calculator. Here's how it works:

    1.Starts a Loop: It keeps running forever (while true) until you tell it to stop.

    2.Asks for Numbers: It prompts you to "Enter first number" and "Enter second number."

    3.Asks for Operation: It then asks you to "Enter operation" and shows you the valid choices: / (divide), + (add), - (subtract), and x (multiply). The choices are highlighted in green for clarity.

    4.Validates Input:

        It checks if the numbers you entered are actually numbers (integers or decimals).

        It checks if the operation you entered is one of the valid ones.

     5.Performs Calculation:

        If everything is valid, it performs the requested calculation.

        Important: If you try to divide by zero, it will give you a "Error, division by zero" message in yellow.

        It uses bc (basic calculator) for floating-point arithmetic to handle decimals correctly, setting the scale (number of decimal places) for the answer.

    6.Shows Answer: It displays the "Answer is: " followed by the result of your calculation.

    7.Continues or Quits: After showing the answer, it asks you to "Enter q to quit or c to continue."

        If you type q, the script stops (exit).

        If you type c (or anything else), it goes back to the beginning and asks for new numbers.
