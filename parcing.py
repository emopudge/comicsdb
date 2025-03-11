import requests
from bs4 import BeautifulSoup
import json

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 '
                         '(KHTML, like Gocko) Chrome/118.0 Safari/537.36'}

def get_info():
    """
    returns name, release date and description of the comics
    """
    url = 'https://spidermedia.ru/mustread'
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        names = []
        dates = []
        desc = []
        soup = BeautifulSoup(response.text, 'html.parser')

        for name in soup.find_all('div', class_='moment-title'):
            tag = name.get_text(strip=True).replace('✓', '').strip()
            names.append(tag)

        for date_sentence in soup.find_all('div', class_ = 'moment-info'):
            tag = date_sentence.get_text(strip=True).strip()
            date = ''
            for i in tag:
                if i in '1234567890–-.':
                    date += i
            dates.append(date)

        for description_sentence in soup.find_all('div', class_ = 'moment-content'):
            p_tag = description_sentence.find('p')
            if p_tag:
                desc.append(p_tag.get_text(strip=True))
            else:
                desc.append('no description')

        return names, dates, desc

    else:
        return 'error:('

info = get_info()


