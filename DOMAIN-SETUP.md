# 🌐 Domain Configuratie Gids

## Stap 1: Domain Kopen

### Aanbevolen Domain Providers:
- **Namecheap** (goedkoop, betrouwbaar)
- **GoDaddy** (populair, veel opties)
- **Hostinger** (goedkoop, Nederlandse support)
- **TransIP** (Nederlandse provider)

### Domain Suggesties:
- `pathe-cinema.nl` / `.com` / `.be`
- `mijnpathe.nl`
- `cinema-nederland.nl`
- `filmhuis.nl`
- `bioscoopje.nl`

## Stap 2: Hosting Kiezen

### 🆓 GRATIS Opties:
1. **GitHub Pages**
   - Domain: `username.github.io/repository`
   - Custom domain: Mogelijk
   - SSL: Gratis
   - Setup: 5 minuten

2. **Netlify**
   - Domain: `site-name.netlify.app`
   - Custom domain: Gratis
   - SSL: Automatisch
   - Setup: 2 minuten

3. **Vercel**
   - Domain: `project.vercel.app`
   - Custom domain: Gratis
   - SSL: Automatisch
   - Setup: 3 minuten

### 💰 BETAALDE Opties:
1. **Hostinger** (€1-3/maand)
2. **SiteGround** (€3-6/maand)
3. **Bluehost** (€2-5/maand)

## Stap 3: DNS Configuratie

### Voor GitHub Pages:
```
Type: CNAME
Name: www
Value: username.github.io

Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153
```

### Voor Netlify:
```
Type: CNAME
Name: www
Value: site-name.netlify.app

Type: A
Name: @
Value: 75.2.60.5
```

### Voor Vercel:
```
Type: CNAME
Name: www
Value: cname.vercel-dns.com

Type: A
Name: @
Value: 76.76.19.61
```

## Stap 4: SSL Certificaat

### Automatisch (Aanbevolen):
- GitHub Pages: Automatisch
- Netlify: Automatisch
- Vercel: Automatisch

### Handmatig:
- Let's Encrypt (gratis)
- CloudFlare (gratis)

## Stap 5: Website Upload

### GitHub Pages:
1. Maak GitHub repository
2. Upload bestanden
3. Enable Pages in Settings
4. Voeg CNAME bestand toe met je domain

### Netlify:
1. Sleep folder naar netlify.com/drop
2. Ga naar Domain settings
3. Voeg custom domain toe
4. Wacht op DNS propagatie

### Vercel:
1. Connect GitHub repository
2. Deploy automatisch
3. Voeg domain toe in settings
4. Configureer DNS

## Stap 6: Testen

### Controleer:
- [ ] Website laadt op www.jouwdomain.nl
- [ ] Website laadt op jouwdomain.nl
- [ ] HTTPS werkt (groen slotje)
- [ ] Mobiele weergave werkt
- [ ] Alle links werken
- [ ] Formulieren werken

### Tools voor Testen:
- **Google PageSpeed Insights**
- **GTmetrix**
- **SSL Labs SSL Test**
- **DNS Checker**

## Stap 7: SEO & Analytics

### Google Search Console:
1. Voeg property toe
2. Verifieer eigendom
3. Submit sitemap

### Google Analytics:
1. Maak account
2. Voeg tracking code toe
3. Test events

## 🚨 Troubleshooting

### "Site not found":
- Controleer DNS records
- Wacht 24-48 uur voor propagatie
- Check CNAME bestand

### "Not secure" warning:
- Force HTTPS in hosting settings
- Wacht op SSL certificate
- Check mixed content

### Slow loading:
- Optimize images
- Minify CSS/JS
- Use CDN

## 📞 Support

### GitHub Pages:
- Docs: pages.github.com
- Status: githubstatus.com

### Netlify:
- Support: netlify.com/support
- Docs: docs.netlify.com

### Vercel:
- Support: vercel.com/support
- Docs: vercel.com/docs

---

## 🎯 Snelle Start (5 minuten):

1. **Netlify Drop** (Snelst):
   - Ga naar netlify.com/drop
   - Sleep je folder
   - Krijg direct URL
   - Voeg later custom domain toe

2. **GitHub Pages** (Populairst):
   - Upload naar GitHub
   - Enable Pages
   - Gratis .github.io URL

3. **Vercel** (Modernst):
   - Connect GitHub
   - Auto-deploy
   - Supersnel CDN