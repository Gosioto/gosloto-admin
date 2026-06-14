# gosloto-admin

Статический сайт **admin.gosloto.xyz** (GOSLOTO admin SPA).

Содержимое `main` обновляется автоматически из [gosioto.github.io](https://github.com/Gosioto/gosioto.github.io) (ветка `admin_branch`, workflow `Deploy admin`).

## Минимальная настройка GitHub (один раз)

1. **Settings → Pages** → Source: branch **main** / **/(root)**
2. **Custom domain:** `admin.gosloto.xyz` → Enforce HTTPS
3. DNS: запись `admin` → CNAME → `<org>.github.io`

## Секреты в gosioto.github.io

| Имя | Значение |
|-----|----------|
| `ADMIN_DEPLOY_TOKEN` | PAT с write на этот репозиторий |
| `ADMIN_PAGES_REPO` | `Gosioto/gosloto-admin` |

Инструкция: [ADMIN-DEPLOY.md](https://github.com/Gosioto/gosioto.github.io/blob/admin_branch/ADMIN-DEPLOY.md)
