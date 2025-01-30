<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# NetData for YunoHost

[![Integration level](https://apps.yunohost.org/badge/integration/netdata)](https://ci-apps.yunohost.org/ci/apps/netdata/)
![Working status](https://apps.yunohost.org/badge/state/netdata)
![Maintenance status](https://apps.yunohost.org/badge/maintained/netdata)

[![Install NetData with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=netdata)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install NetData quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

NetData is a system for **distributed real-time performance and health monitoring**.
It provides **unparalleled insights, in real-time**, of everything happening on the
system it runs (including applications such as web and database servers), using
**modern interactive web dashboards**.

_netdata is **fast** and **efficient**, designed to permanently run on all systems
(**physical** & **virtual** servers, **containers**, **IoT** devices), without
disrupting their core function._


**Shipped version:** 2.2.2~ynh1

**Demo:** <https://learn.netdata.cloud/docs/agent/demo-sites/>
## :red_circle: Antifeatures

- **Not totally free upstream**: Netdata now includes a dependencie to a UI which is under a shady license that forbids reverse engineering or customisation. See: https://github.com/YunoHost/apps/pull/2519

## Documentation and resources

- Official app website: <http://my-netdata.io>
- Official admin documentation: <https://learn.netdata.cloud/docs>
- Upstream app code repository: <https://github.com/netdata/netdata>
- YunoHost Store: <https://apps.yunohost.org/app/netdata>
- Report a bug: <https://github.com/YunoHost-Apps/netdata_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/netdata_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
or
sudo yunohost app upgrade netdata -u https://github.com/YunoHost-Apps/netdata_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
