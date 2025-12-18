# 3) دستورالعمل نصب و راه اندازی


## مراحل نصب
1- ابتدا از لینک زیر، نسخه مربوط به سیستم عامل خود را دانلود می کنیم.


https://www.microsoft.com/en-us/sql-server/sql-server-downloads

2- فایل نصب SQL Server را اجرا کرده‌ تا وارد محیط نصب شویم. از نوار سمت چپ گزینه installation  را انتخاب کرده و پس از انتخاب گزینه installation این منو باز می شود که گزینه اول یعنی New SQL Server standalone ..را انتخاب می کنیم:

<img width="500" height="350" alt="image" src="https://github.com/user-attachments/assets/c2e07e2f-5ad3-4036-aa33-fda55f766dac" />


3- به مرحله installation type می رسیم و گزینه اول را انتخاب می کنیم و به مرحله بعد می رویم :


<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/77a17f8e-30cb-4a43-9772-1dc88f5bb9a6" />


4- در مرحله Edition ، از بین ورژن های موجود، نسخه Developer را انتخاب می کنیم و به مرحله Feature Selection می رویم:

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/875cc06e-78df-4efe-8638-f6df287ef787" />


5- در مرحله Feature Selection ، نسخه Database Engine Service انتخاب می کنیم و به مرحله بعد می رویم:

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/3260520a-6bb5-461c-b4c9-7bd67232333d" />
 

6- به مرحله Instance Configuration می رسیم:

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/5583935b-44dd-41af-8f49-e6e3aa702722" />



در اینجا نام instance ( در اینجا MSSQLSERVER_22 ) به دلخواه نوشته می شود. این instance در واقع نسخه ای از سرور دیتابیس بر روی سیستم است. پس از تعیین نام به مرحله بعدی می رویم.


7- مرحله Server Configuration :فقط گزینه ...Grant Perform را فعال می کنیم و به مرحله بعد می رویم.

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/6222cd8f-bdce-4ab9-8bcd-6bdf7e81fc70" />



8- مرحله Database Engine Configuration :
در این مرحله حالت احراز هویت (Authentication Mode ) انتخاب می‌شود که انتخاب ما گزینه Windows Authentication Mode می باشد.

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/c818bd02-f156-4f5f-8a66-86bdf975353e" />



9- در قسمت Specify SQL Server administration ، گزینه Add Current User  را انتخاب کرده و تعیین می کنیم که این تنظیمات برای چه کاربری اعمال بشوند و به صورت خودکار نام یوزر سیستم را وارد می کند.


<img width="500" height="301" alt="image" src="https://github.com/user-attachments/assets/57716579-342e-4ade-bfb3-79ffc7d2f28f" />



10- مرحله بعد که مرحله آخر هم می باشد با زدن گزینه install ، نصب نرم افزار کامل می شود.

<img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/9cfe8886-fa93-4d55-8cf3-7b68a4a75719" />




11- اتصال به سرور و ایجاد یک دیتابیس:
در این مرحله، محیط SQL Server Management Studio (SSMS) را باز کرده و وارد صفحه‌ی Connect to Server می‌ شویم. در قسمت Server name، نام سرور لوکال سیستم به‌ صورت خودکار شناسایی می شود و به آن متصل و و وارد محیط مدیریت پایگاه داده می شویم.

<img width="430" height="524" alt="image" src="https://github.com/user-attachments/assets/e20d1d6b-2067-48df-bf85-52ef017a0164" />


با زدن گزینه Connect وارد محیط SQL Server می شویم و می توانیم یک دیتابیس جدید بسازیم یا یک دیتابیس را import کنیم و کوئری های مختلفی بر آن ها اجرا کنیم.
