# Unifi UDM API Proxy Home Assistant Add-on

A Home-Assistant Add-on for the [Unifi UDM API Proxy project](https://github.com/Silvenga/unifi-udm-api-proxy).

## Installation

- Add this repository to Home-Assistant's Supervisor.

```
https://github.com/Silvenga/unifi-udm-api-proxy-ha
```

- Search for and install the add-on.

```
Unifi UDM API Proxy
```

- Update the add-in config and save.

```yaml
udm:
  uri: "https://the-udm-uri"
```

- Start add-on, and point Home-Assistant integrations to the add-on.

The add-on will be accessible (from within Home-Assistant's network) on:
```
http://61535f70-unifi-udm-api-proxy:80
https://61535f70-unifi-udm-api-proxy:443
https://61535f70-unifi-udm-api-proxy:7443
```

## Usage

In most cases, simply changing the host to `61535f70-unifi-udm-api-proxy` (as shown above) will work (as of `1.5.1`).

## Attribution

Icon, proxy by H Alberto Gongora from the Noun Project
