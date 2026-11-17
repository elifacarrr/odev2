## Ödev 2

1. **D6 Division Sorusu için AI Prompt'u:**
   "SQL'de tüm etkinliklere katılmış üyeleri bulan division sorgusunu GROUP BY ve HAVING ile nasıl yazarım?"

2. **AI Cevabı ve Değerlendirmesi:**
   Yapay zeka standart bir `COUNT(DISTINCT event_id) = (SELECT count(*) FROM event)` sorgusu önerdi. Bu sorgu doğru çalışmaktadır ancak sistemde pasif etkinlikler veya farklı kategoriler olduğunda filtreleme yapılmazsa hatalı sonuç verebilir.

3. **Yanıltıcı Veri Durumu (`seed.sql`):**
   Etkinlik tablosuna farklı kategorilerde (örneğin 'Kültür' ve 'Spor') kayıtlar eklendiğinde, kategori filtresi olmayan bir `COUNT` sorgusu tüm kategorileri saydığı için sadece spor etkinliklerinin tamamına katılan üyeyi eleyecektir.
