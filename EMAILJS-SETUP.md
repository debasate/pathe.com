# 📧 EmailJS Setup voor Echte Emails

## 🚀 Stap-voor-stap EmailJS configuratie:

### 1. **EmailJS Account Aanmaken**
- Ga naar: https://www.emailjs.com/
- Klik **"Sign Up"** (gratis account)
- Verifieer je email adres

### 2. **Email Service Toevoegen**
- In je EmailJS dashboard: **"Email Services"**
- Klik **"Add New Service"**
- Kies je email provider:
  - **Gmail** (makkelijkst)
  - **Outlook/Hotmail**
  - **Yahoo**
  - **Custom SMTP**

### 3. **Email Templates Maken**
- Ga naar **"Email Templates"**
- Maak **3 templates**:

#### **Template 1: Verification Email**
```html
Subject: 🎬 Pathé Cinema - Email Verification

Hello {{to_name}}!

Welcome to Pathé Cinema! 🍿

Your verification code is: **{{verification_code}}**

Please enter this code on our website to verify your account.

Thanks for joining Pathé!

Best regards,
The Pathé Cinema Team

Visit us: {{website_url}}
```

#### **Template 2: 2FA Login Code**
```html
Subject: 🔐 Pathé Cinema - Login Verification

Hello {{to_name}}!

Someone is trying to log into your Pathé account. 

**Login Details:**
🕐 Time: {{login_time}}
💻 Location: {{website_url}}

**Your 2FA Code:** {{two_factor_code}}

⚠️ If this wasn't you, change your password immediately!

This code expires in 10 minutes.

Best regards,
The Pathé Security Team
```

#### **Template 3: Booking Confirmation**
```html
Subject: 🎫 Pathé Cinema - Booking Confirmation

Hello {{to_name}}!

Your movie booking has been confirmed! 🎬

**Booking Details:**
🎬 Movie: {{movie_title}}
🏢 Cinema: {{cinema_name}}  
📅 Date: {{booking_date}}
🕐 Time: {{showtime}}
🪑 Seats: {{seats_list}} ({{seat_count}} tickets)
💰 Total: €{{total_price}}

**Booking Reference:** {{booking_reference}}

Please arrive 15 minutes before showtime.
Don't forget to bring your ID and payment method for Pathé.nl!

Enjoy your movie! 🍿

Best regards,
The Pathé Cinema Team

Visit us: {{website_url}}
```

### 4. **Template Parameters**
**Voor Verification Email:**
- `{{to_name}}` - Gebruiker naam
- `{{to_email}}` - Email adres  
- `{{verification_code}}` - 6-cijferige code
- `{{cinema_name}}` - Pathé Cinema
- `{{website_url}}` - Website URL

**Voor 2FA Login Code:**
- `{{to_name}}` - Gebruiker naam
- `{{to_email}}` - Email adres
- `{{two_factor_code}}` - 6-cijferige 2FA code
- `{{login_time}}` - Inlog tijd
- `{{website_url}}` - Website URL

**Voor Booking Confirmation:**
- `{{to_name}}` - Gebruiker naam
- `{{to_email}}` - Email adres
- `{{movie_title}}` - Film titel
- `{{cinema_name}}` - Bioscoop locatie
- `{{booking_date}}` - Datum
- `{{showtime}}` - Tijdstip
- `{{seats_list}}` - Stoelnummers
- `{{seat_count}}` - Aantal tickets
- `{{total_price}}` - Totaalprijs
- `{{booking_reference}}` - Booking referentie
- `{{website_url}}` - Website URL

### 5. **API Keys Verkrijgen**
- Ga naar **"Account"** → **"General"**
- Kopieer je **Public Key**
- Kopieer je **Service ID** 
- Kopieer alle **Template IDs** (verification + 2FA + booking)

### 6. **Code Updaten**
In `index.html`, vervang deze waarden:

```javascript
// Regel ~3440:
emailjs.init('902hWQUoBZdWzwVfH'); // Jouw Public Key is al ingevuld

// Regel ~3451:
emailjs.send('service_doc2eqt', 'YOUR_TEMPLATE_ID', templateParams)
//           ↑ Service ID      ↑ Verification Template ID

// Regel ~3607:
emailjs.send('service_doc2eqt', 'YOUR_2FA_TEMPLATE_ID', templateParams)
//           ↑ Service ID      ↑ 2FA Template ID  

// Regel ~3540:
emailjs.send('service_doc2eqt', 'YOUR_BOOKING_TEMPLATE_ID', templateParams)
//           ↑ Service ID      ↑ Booking Template ID
```

### 7. **Test de Setup**
1. Upload je website
2. Registreer met een echt email adres → Verificatie email
3. Check je inbox (en spam folder!)
4. Voer de code in en verifieer account
5. **Log uit en log weer in** → 2FA email wordt verzonden! 🔐
6. Voer 2FA code in om in te loggen
7. Book een film → Booking confirmation email
8. Check inbox voor alle 3 email types

## 🎯 **Voordelen EmailJS:**
✅ **Gratis** voor 200 emails/maand
✅ **Geen backend** nodig
✅ **Werkt direct** vanuit browser
✅ **3 email types**: Verificatie + 2FA + Booking confirmatie
✅ **Betrouwbaar** en snel
✅ **Spam-proof** delivery

## 📧 **Email Types:**
🔐 **Verification Email** - Bij account registratie
🔐 **2FA Login Email** - Bij elke inlog poging (NIEUW!)
🎫 **Booking Confirmation** - Bij ticket booking (alleen voor geverifieerde users)

## 🔒 **2FA Security Features:**
✅ **Verplicht bij elke login** - Extra beveiliging
✅ **10 minuten geldig** - Codes verlopen automatisch
✅ **Code opnieuw aanvragen** - Als code verlopen is
✅ **Login details** - Tijd en locatie van inlog poging
✅ **Security waarschuwing** - Als het niet jijzelf was

## 🔧 **Troubleshooting:**
- **Emails komen niet aan?** Check spam folder
- **API errors?** Controleer je keys
- **Rate limiting?** Max 200/maand op gratis plan
- **Gmail blocks?** Enable "Less secure apps" in Gmail

## 💡 **Pro Tips:**
- Test eerst met je eigen email
- Customizeer de email template design
- Add je domain aan EmailJS whitelist
- Monitor usage in EmailJS dashboard

Na setup krijgen gebruikers echte verification emails! 📬✨