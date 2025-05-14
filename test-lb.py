import requests, time
success, fail = 0, 0
for i in range(10):
    start = time.time()
    try:
        r = requests.get("https://test-lb.playground.ambientproptech.com")
        print(f"{i}: {r.status_code} - {time.time() - start:.2f}s")
        success += 1
    except:
        print(f"{i}: Failed")
        fail += 1

print(f"Success: {success}, Fail: {fail}")