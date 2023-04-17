#!/usr/bin/python3
import os
directory = "static/galeri"
print("export const slike = [")
for filename in filter(lambda x: x.endswith(".webp"), os.listdir(directory)):
    print(f"\"/{directory.split('/')[1]}/{filename}\",")
print("]")
