#!/bin/sh
poetry run python src/hydrangea_dark_night_wezterm.py > wezterm/HydrangeaDarkNight.toml
poetry run python src/hydrangea_bright_night_wezterm.py > wezterm/HydrangeaBrightNight.toml
