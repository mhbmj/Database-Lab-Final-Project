# میانگین بارش سالانه هر شهر محاسبه شود و شهرهایی که بیشترین بارش متوسط سالانه را دارند استخراج شوند.

ابتدا باید اطلاعات مربوط به بارش که در جدول `Rainfall` ذخیره شده‌اند، به اطلاعات نام شهرها که در جدول `City` قرار دارند، مرتبط کنیم. از آنجا که جدول `Rainfall` فقط آی دی های هر شهر `(CityID)` را نگه می‌دارد و نام شهر در جدول `City` قرار دارد، باید از `INNER JOIN` استفاده کنیم:

به همین منظور از کوئری زیر استفاده می کنیم:

   
    SELECT 
        c.CityName,
        AVG(r.Rainfall) AS AvgRainfall
    FROM Rainfall R
    INNER JOIN City c ON R.CityID = c.CityID
    GROUP BY c.CityName
    ORDER BY AvgRainfall DESC;

نتایج:

<img width="500" height="600" alt="L3-1" src="https://github.com/user-attachments/assets/ad2cca73-211a-4f97-b18a-a599d280dccc" />
