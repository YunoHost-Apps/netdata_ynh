<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# NetData для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/netdata.svg)](https://ci-apps.yunohost.org/ci/apps/netdata/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/netdata.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/netdata.maintain.svg)

[![Установите NetData с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить NetData быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Поставляемая версия:** 2.0.1~ynh1

**Демо-версия:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Анти-функции

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Документация и ресурсы

- Официальный веб-сайт приложения: <http://my-netdata.io>
- Официальная документация администратора: <https://learn.netdata.cloud/docs>
- Репозиторий кода главной ветки приложения: <https://github.com/netdata/netdata>
- Магазин YunoHost: <https://apps.yunohost.org/app/netdata>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
или
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
