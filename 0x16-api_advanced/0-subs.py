#!/usr/bin/python3

import requests

""
a script that Writes a function that queries the Reddit API
and returns the number of subscribers
""


def number_of_subscribers(subreddit):

    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}

    response = requests.get(url.format(subreddit), headers=headers,
                            allow_redirects=False)

    if response.status_code == 200:
        data = response.json()
        return data['data']['subscribers']
    else
    return 0
