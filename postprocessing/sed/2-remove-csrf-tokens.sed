# This sed command will remove the value from a csrfmiddlewaretoken element

s/name="csrfmiddlewaretoken" value=".*"/name="csrfmiddlewaretoken" value=""/g
