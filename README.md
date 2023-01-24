<h1 align="center">
  <br>
  <a href="https://github.com/mkdirlove/fact.py"><img src="https://github.com/mkdirlove/fact.py/blob/main/logo.png" alt="fact.py"></a>
  <br>
  Yet another tool that uses the OpenAI API so that you can use ChatGPT in your Terminal.
  <br>
</h1>

### Installation ang usage

```
git clone https://github.com/mkdirlove/chatgpt.sh.git
```
```
cd chatgpt.sh
```
```
apt install git python3 python3-pip
```
```
git clone https://github.com/mkdirlove/fact.py
```
```
sudo cp ./chatgpt.sh /usr/bin/chatgpt
```
```
sudo chmod +x /usr/bin/chatgpt
```
### Create path for the chatgpt config file and copy it in

```
mkdir ~/.chatgpt/
cp ./chatgpt ~/.chatgpt/
```

Then edit file to match your config

BEARER expects your API Token that you can create at https://beta.openai.com/account/api-keys

```
MODEL="text-davinci-003"
TEMPERATURE="0"
MAX_TOKEN=4000
BEARER="YOUR_API_KEY"
```

# How to use chatgpt.sh

Example1: generate python code
```
$ chatgpt -p "Create a python code that can add two numbers uisng function"

def add_two_numbers(num1, num2):
  return num1 + num2
  
print(add_two_numbers(2, 3)) # Output: 5
```

Example2: generate shell script code
```
chatgpt -p "Create a bash script that can multiply two numbers from the user input"


#!/bin/bash

# Ask user for two numbers
echo \"Please enter two numbers to multiply:\"
read num1
read num2

# Calculate the product
product=$((num1*num2))

# Print the result
echo \"The product of $num1 and $num2 is $product\"

```
