FROM python

WORKDIR /app

COPY requirements.txt requirements.txt
# RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
# RUN pip install aiogram_calendar

COPY . .

EXPOSE 3000

CMD ["python", "main_cbr_tg_bot.py"]

