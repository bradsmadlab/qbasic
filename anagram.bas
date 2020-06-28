'This is an exercise on checking if two words are anagrams
'I did this in qbasic because I figured these exercises have
'been done in other languages, but this one

CLS
DIM num1 AS INTEGER 'declare variables and type
DIM num2 AS INTEGER
DIM count AS INTEGER
DIM str1 AS STRING
DIM str2 AS STRING
DIM str3 AS STRING

str1 = "dog" 'initialize variables
str2 = "god"
num1 = 0
num2 = 0

IF LEN(str1) <> LEN(str2) THEN 'check if words are same length
    PRINT str1; " and "; str2; " are not anagrams"
    END
END IF

FOR count = 1 TO LEN(str1)
    str3 = MID$(str1, count, 1) 'input each letter from str1 to str3
    num1 = num1 + ASC(str3) 'convert each letter to ascii code and add to num1
NEXT count
'debug PRINT num1

FOR count = 1 TO LEN(str2)
    str3 = MID$(str2, count, 1)
    num2 = num2 + ASC(str3)
NEXT count
'debug PRINT num2

IF num1 = num2 THEN 'check if ascii total of each word is same
    PRINT str1; " and "; str2; " are anagrams"
ELSE PRINT str1; " and "; str2; " are not anagrams"
END IF
