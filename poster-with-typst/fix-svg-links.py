import re

#path = r"C:\Users\eikeb\OneDrive\Documents\RWTH-Aachen\Hiwijob\MSS_Dashboard\dashboard\poster-with-typst\poster-PSimPy.svg"


path = r"C:\Users\eikeb\OneDrive\Documents\RWTH-Aachen\Hiwijob\MSS_Dashboard\dashboard\poster-with-typst\poster_PSimPy.svg"
text = open(path, encoding="utf-8").read()
text = re.sub(r"<a\b", '<a target="_blank"', text)
open(path, "w", encoding="utf-8").write(text)

print("Done:", path)