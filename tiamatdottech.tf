data "cloudflare_zones" "tiamatdottech" {
  filter {
    name = "tiamat.tech"
  }
}

# zone
resource "cloudflare_zone" "tiamat_tech" {
  zone   = "tiamat.tech"
  paused = false
  plan   = "free"
  type   = "full"
}

# page_rule
resource "cloudflare_page_rule" "tiamatdottech_https_rewrite" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  target   = "http://*.tiamat.tech/*"
  priority = 1
  status   = "active"
  actions {
    always_use_https = true
  }
}

# record
resource "cloudflare_record" "tiamatdottech_A_tiamat_tech_github1" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.111.153"
}

resource "cloudflare_record" "tiamatdottech_A_tiamat_tech_github2" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.110.153"
}

resource "cloudflare_record" "tiamatdottech_A_tiamat_tech_github3" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.109.153"
}

resource "cloudflare_record" "tiamatdottech_A_tiamat_tech_github4" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "A"
  ttl     = "1"
  proxied = "true"
  value   = "185.199.108.153"
}

resource "cloudflare_record" "tiamatdottech_MX_google1" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  name     = "tiamat.tech"
  type     = "MX"
  ttl      = "3600"
  proxied  = "false"
  priority = "10"
  value    = "alt4.aspmx.l.google.com"
}

resource "cloudflare_record" "tiamatdottech_MX_google2" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  name     = "tiamat.tech"
  type     = "MX"
  ttl      = "3600"
  proxied  = "false"
  priority = "10"
  value    = "alt3.aspmx.l.google.com"
}

resource "cloudflare_record" "tiamatdottech_MX_google3" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  name     = "tiamat.tech"
  type     = "MX"
  ttl      = "3600"
  proxied  = "false"
  priority = "5"
  value    = "alt2.aspmx.l.google.com"
}

resource "cloudflare_record" "tiamatdottech_MX_google4" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  name     = "tiamat.tech"
  type     = "MX"
  ttl      = "3600"
  proxied  = "false"
  priority = "5"
  value    = "alt1.aspmx.l.google.com"
}

resource "cloudflare_record" "tiamatdottech_MX_google5" {
  zone_id  = data.cloudflare_zones.tiamatdottech.zones[0].id
  name     = "tiamat.tech"
  type     = "MX"
  ttl      = "3600"
  proxied  = "false"
  priority = "1"
  value    = "aspmx.l.google.com"
}

resource "cloudflare_record" "tiamatdottech_TXT_github" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "_github-challenge-tiamat-tech"
  type    = "TXT"
  ttl     = "1"
  proxied = "false"
  value   = "3aa796030d"
}

resource "cloudflare_record" "tiamatdottech_TXT_google_domainkey" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "google._domainkey"
  type    = "TXT"
  ttl     = "3600"
  proxied = "false"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtLUlm22UDFRLzj1qaLoaOcY5Rruhv6gWTtITbYZn2r3TMp4g4iYRzTgsZFBV8jbVM/+DOXWg4SaGzrn9I/S5lS64aBCH5ePBtHeV4EK5opitKjZOegBOC3VL9MiEscgWHhvLLaC3t804tXeFKz/92NUSVRFv8dEuJtOgAtBWfN76Q/sGHkEokuCrWN3JA7I/chAUjv5qlmuI9Z7ZZ2x5Tr2bSHeoVQ91xVm0wrpVdyC7LZHtwkrXf9A0SredwCSZi0C7EC/o23M8sp2mvcczFAUV8acXfsgc+issEAHTjdi7qc5Hdc5hiNMxAGBvcZmDh/ubJZUe3slRv7qsItcaYwIDAQABGENERATE NEW RECORD"
}

resource "cloudflare_record" "tiamatdottech_TXT_atlassian" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "TXT"
  ttl     = "1"
  proxied = "false"
  value   = "atlassian-domain-verification=ManT6bmVDBOWLIlQOXLQQT9eGMA79mInsr0pw8x/mmXrHaOIheLhgU2stMusZlyw"
}

resource "cloudflare_record" "tiamatdottech_TXT_dmarc" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "TXT"
  ttl     = "1"
  proxied = "false"
  value   = "v=DMARC1; p=reject; rua=mailto:info@tiamat.tech"
}

resource "cloudflare_record" "tiamatdottech_TXT_spf" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "TXT"
  ttl     = "3600"
  proxied = "false"
  value   = "v=spf1 include:_spf.google.com ~all"
}

resource "cloudflare_record" "tiamatdottech_TXT_google_site_verification" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "tiamat.tech"
  type    = "TXT"
  ttl     = "86400"
  proxied = "false"
  value   = "google-site-verification=sZYwXiySoJ0dsgZMMlxoE1YXZ9emCqtJ9GHz8i-SWXM"
}

resource "cloudflare_record" "tiamatdottech_CNAME_calendar" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "calendar"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "ghs.googlehosted.com"
}

resource "cloudflare_record" "tiamatdottech_CNAME_drive" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "drive"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "ghs.googlehosted.com"
}

resource "cloudflare_record" "tiamatdottech_CNAME_mail" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "mail"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "ghs.googlehosted.com"
}

resource "cloudflare_record" "tiamatdottech_CNAME_uptime" {
  zone_id = data.cloudflare_zones.tiamatdottech.zones[0].id
  name    = "uptime"
  type    = "CNAME"
  ttl     = "1"
  proxied = "true"
  value   = "tiamat-tech.github.io"
}

