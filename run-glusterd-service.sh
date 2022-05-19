#!/bin/bash

systemctl daemon-reload

service  glusterd restart

service  glusterd status

