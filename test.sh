#!/usr/bin/env bash

# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

curl --request POST \
  --url http://localhost:3000/alert_webhook \
  --header 'Content-Type: application/json' \
  --data '{
  "receiver": "webhook",
  "status": "firing",
  "alerts": [
    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },    {
      "status": "firing",
      "labels": {
        "alertname": "test1",
        "endpoint": "test1",
        "instance": "test1",
        "job": "test1",
        "namespace": "test1",
        "severity": "warning"
      },
      "annotations": {
        "message": "test1 alert",
        "Summary": "test1",
        "runbook_url": "test1"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "test2",
        "endpoint": "test2",
        "instance": "test2",
        "job": "test2",
        "namespace": "test2",
        "severity": "warning"
      },
      "annotations": {
        "message": "test2 alert",
        "Summary": "test2",
        "runbook_url": "test2"
      },
      "startsAt": "2018-08-20T06:01:26.025235557Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://prometheus-k8s-0:9090/graph?g0.expr=100+%2A+kubelet_volume_stats_available_bytes%7Bjob%3D%22kubelet%22%7D+%2F+kubelet_volume_stats_capacity_bytes%7Bjob%3D%22kubelet%22%7D+%3C+3&amp;g0.tab=1"
    }
  ],
  "groupLabels": {
    "alertname": "Test",
    "job": "prometheus24"
  },
  "commonLabels": {
    "alertname": "Test",
    "dc": "eu-west-1",
    "instance": "localhost:9090",
    "job": "prometheus24"
  },
  "commonAnnotations": {
    "description": "some description"
  },
  "externalURL": "http://simon-laptop:9093",
  "version": "4",
  "groupKey": "{}:{alertname=\"test1\", job=\"test1\"}"
}'