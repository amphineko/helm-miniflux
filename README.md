# Miniflux Helm chart

This chart deploys Miniflux, its PostgreSQL database, and the optional
Wewe-RSS companion workload. It supports either a Kubernetes Ingress or an
Envoy Gateway API `HTTPRoute`; Gateway CORS is configured through the generic
`gateway.cors` values.

Credentials are rendered as Kubernetes Secrets from the supplied Helm values.
For production installations, keep those values in an encrypted secrets file
(for example, with SOPS) and pass it through the deployment tool of choice.

The chart also supports the optional Anubis sidecar and the MariaDB operator
resources used by Wewe-RSS. Site-specific hostnames, storage classes, and
credentials should remain in the consuming repository rather than in this
public chart.
