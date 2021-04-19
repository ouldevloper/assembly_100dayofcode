# @Author: Абделлах Улахияне
# @Date:   2021-04-14 00:17:08
# @Last Modified by:   Абделлах Улахияне
# @Last Modified time: 2021-04-14 00:36:13
string = "Hello World"

# string with encoding 'utf-8'
arr = bytes(string, 'utf-8')
arr2 = bytes(string, 'ascii')

print(arr,'\n')

# actual bytes in the the string
for byte in arr:
    print(byte, end=' ')
print("\n")
for byte in arr2:
    print(byte, end=' ')
print()