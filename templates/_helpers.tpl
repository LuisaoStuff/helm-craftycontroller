{{- define "crafty.fullname" -}}
{{- include "crafty.name" . -}}-{{ .Release.Name }}
{{- end -}}

{{- define "crafty.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}