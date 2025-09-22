# Pathé Cinema Website

Een moderne cinema website geïnspireerd op Pathé Nederland.

## 🌐 Live Website
**Domain:** https://jouwdomain.nl  
**Status:** ✅ Online

## 🚀 Hosting Instructies

### Optie 1: GitHub Pages (Gratis)
1. Upload bestanden naar GitHub repository
2. Ga naar Settings → Pages
3. Selecteer "Deploy from branch: main"
4. Website is beschikbaar op `username.github.io/repository-name`

### Optie 2: Netlify (Gratis + Custom Domain)
1. Sleep de hele folder naar netlify.com/drop
2. Krijg gratis .netlify.app URL
3. Voeg custom domain toe in Domain Settings

### Optie 3: Vercel (Gratis + Custom Domain)
1. Upload naar GitHub
2. Connect repository op vercel.com
3. Automatische deployment
4. Voeg custom domain toe

### Optie 4: Betaalde Hosting
1. Koop hosting bij Hostinger/SiteGround/etc
2. Upload bestanden via FTP naar public_html/
3. Configureer custom domain

## 📁 Bestand Structuur
```
/
├── index.html          # Hoofdpagina
├── css/
│   └── styles.css      # Alle styling
├── js/
│   └── main.js         # JavaScript functionaliteit
├── assets/
│   ├── images/         # Afbeeldingen
│   └── icons/          # Favicons
└── README.md           # Deze instructies
```

## 🔧 Domain Configuratie

### Custom Domain Instellen:
1. **Koop domain** bij Namecheap, GoDaddy, etc.
2. **DNS Records** wijzigen:
   ```
   Type: A
   Name: @
   Value: [Server IP]
   
   Type: CNAME
   Name: www
   Value: jouwdomain.nl
   ```
3. **SSL Certificaat** wordt automatisch aangemaakt

### Voor GitHub Pages:
1. Voeg CNAME file toe met je domain
2. Configureer Custom Domain in Settings
3. Enable "Enforce HTTPS"

## 🎯 Features
- ✅ Responsive design
- ✅ Movie trailers
- ✅ Ticket booking system
- ✅ User accounts
- ✅ Favorites system
- ✅ AI Chatbot
- ✅ Settings panel
- ✅ Email verification

## 🔒 Security
- HTTPS enforced
- Form validation
- XSS protection
- CSRF tokens (voor productie)

## 📊 Analytics
- Google Analytics ready
- Privacy compliant
- Cookie consent

## 🛠 Maintenance
- Regular updates
- Performance monitoring
- Security patches

---
© 2025 Pathé Cinema Website - Gemaakt voor educatieve doeleinden