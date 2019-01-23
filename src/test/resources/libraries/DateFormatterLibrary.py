from datetime import datetime

def split_date(ISO):
    splittedTime = ISO.split('GMT')
    time = datetime.strptime(splittedTime[0], "%a %b %d %Y %H:%M:%S")
    date = str(int(time.strftime("%d")))
    month = str(int(time.strftime("%m")))
    return time.strftime("%Y")+"-"+month+"-"+date
