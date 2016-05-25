# Plex CLI

Plex command line interface. A simple script to control your Plex client.

## Installation

1. Git clone the `plex.sh` to a folder in your $PATH

    `curl https://raw.githubusercontent.com/ArtBIT/plex-cli/master/plex.sh > plex`

2. Make it executable

    `chmod +x plex`

2. Edit it, set the Plex Media Server IP and your Plex client IP
4. Test it
    `plex menu`

## Usage

Usage: plex \[\<command\>\]

Available commands:
- `up`            _Navigate up_
- `down`          _Navigate down_
- `left`          _Navigate left_
- `right`         _Navigate right_
- `back`          _Navigate back_
- `menu`          _Open menu_
- `select`        _Select current option_
- `rewind`        _Rewind the playback _
- `bigrewind`     _Rewind the playback more_
- `forward`       _Rewind the playback _
- `bigforward`    _Rewind the playback more_
- `play`          _Playback play_
- `stop`          _Playback stop_
- `osd`           _Toggle OSD_

## Examples:
- `plex play`
- `plex pause`
- `plex stop`

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
