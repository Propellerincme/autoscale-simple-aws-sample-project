#!/bin/bash
systemctl daemon-reload
systemctl enable gunicorn.service
systemctl start gunicorn.service