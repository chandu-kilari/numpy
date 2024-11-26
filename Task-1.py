# 1. Hello World Program
a = "Hello, World!"
print(a)

# 2. Data Type Identification
a = input()
print(type(a))

# 3. String Manipulation
a = input()
print(a.upper())
print(len(a))
print(a.replace('chandu', 'charan'))

# 4. Type Casting
a = float(input())
print(int(a))
a = input()
print(float(a))

# 5. String Methods Exploration
a = input()
print(sum(1 for i in a if i.lower() in 'aeiou'))
print(a[::-1])
print(a == a[::-1])

# 6. Even or Odd

a = int(input())
print("Even" if a % 2 == 0 else "Odd")

# 7. String Concatenation

a = input() + input() + input()
print(a)

# 8. Basic List Operations

a = [1, 2, 3, 4, 5]
a.append(6)
del a[2]
a.sort()
print(a)

# 9. Palindrome Checker

a = input()
print(a == a[::-1])

# 10. Simple Calculator

a = int(input())
b = int(input())
print(a + b, a - b, a * b, a / b, a % b,a ** b,)
