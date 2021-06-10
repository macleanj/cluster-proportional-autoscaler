{{/* vim: set filetype=mustache: */}}

{{/*
Return the appropriate apiVersion for PriorityClass.
*/}}
{{- define "common.priorityClass.apiVersion" -}}
{{- if semverCompare ">=1.14-0" .Capabilities.KubeVersion.GitVersion -}}
{{- print "scheduling.k8s.io/v1" -}}
{{- else if semverCompare ">=1.11-0, <1.14-0" .Capabilities.KubeVersion.GitVersion -}}
{{- print "scheduling.k8s.io/v1beta1" -}}
{{- else if semverCompare "<1.11-0" .Capabilities.KubeVersion.GitVersion -}}
{{- print "scheduling.k8s.io/v1alpha1" -}}
{{- end -}}
{{- end -}}
