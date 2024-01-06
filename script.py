import requests

r = requests.get("https://www.youtube.com/watch?v=-nh9rCzPJ20")
print(r.status_code)
print(r.ok)
