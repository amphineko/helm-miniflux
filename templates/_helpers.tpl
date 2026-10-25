{{- define "miniflux.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "miniflux.labels" -}}
{{- include "miniflux.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "miniflux.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: {{ template "miniflux.name" . }}
{{- end -}}