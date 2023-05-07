{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/* create the name of the service account you want to use */}}
{{- define "service.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "service.name" .) .Values.serviceAccount.name }}
{{- else -}}
{{- default "default" .Vaules.serviceAccount.name }}
{{- end -}}
{{- end -}}