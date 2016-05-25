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

Usage: plex [<command>]

Available commands:
- up            Navigate up
- down          Navigate down
- left          Navigate left
- right         Navigate right
- back          Navigate back
- menu          Open menu
- select        Select current option
- rewind        Rewind the playback 
- bigrewind     Rewind the playback more
- forward       Rewind the playback 
- bigforward    Rewind the playback more
- play          Playback play
- stop          Playback stop
- osd           Toggle OSD

## Examples:
- plex play
- plex pause
- plex stop

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
