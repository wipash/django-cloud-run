#!/bin/bash
gunicorn djangocloudrun.wsgi -w 2 -b :$PORT
