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
- Maak **2 templates**:

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

#### **Template 2: Booking Confirmation**
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
- Kopieer beide **Template IDs** (verification + booking)

### 6. **Code Updaten**
In `index.html`, vervang deze waarden:

```javascript
// Regel ~3427:
emailjs.init('YOUR_PUBLIC_KEY'); // Vervang met je Public Key

// Regel ~3438:
emailjs.send('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', templateParams)
//           ↑ Service ID      ↑ Verification Template ID

// Regel ~3485:
emailjs.send('YOUR_SERVICE_ID', 'YOUR_BOOKING_TEMPLATE_ID', templateParams)
//           ↑ Service ID      ↑ Booking Template ID
```

### 7. **Test de Setup**
1. Upload je website
2. Registreer met een echt email adres → Verificatie email
3. Check je inbox (en spam folder!)
4. Voer de code in en verifieer account
5. Book een film → Booking confirmation email
6. Check inbox voor booking bevestiging

## 🎯 **Voordelen EmailJS:**
✅ **Gratis** voor 200 emails/maand
✅ **Geen backend** nodig
✅ **Werkt direct** vanuit browser
✅ **2 email types**: Verificatie + Booking confirmatie
✅ **Betrouwbaar** en snel
✅ **Spam-proof** delivery

## 📧 **Email Types:**
🔐 **Verification Email** - Bij account registratie
🎫 **Booking Confirmation** - Bij ticket booking (alleen voor geverifieerde users)

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