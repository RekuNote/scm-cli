<div align="center">
  <a href="https://github.com/RekuNote/scm-cli/">
    <img src="logo.png" alt="Logo" height="80">
  </a>

  <h3 align="center">scm-cli</h3>

  <p align="center">
    scm-cli is a terminal client for downloading BRSTM files from Smash Custom Music Archive (smashcustommusic.net)
    <br />
    © RekuBuild 2024
    <br />
    <br />
  </p>
</div>

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Options](#options)
- [Examples](#examples)
- [License](#license)

## Features

- List all available games and their corresponding IDs.
- Search for songs by game ID.
- Download BRSTM (or other) files by song ID.
- Specify output path for downloads.

## Requirements

- `jq` is required for JSON parsing. (When ran, scm-cli will automatically check for `jq` and prompt to install if not found.)

## Installation

Run the install command (this command can also be used to update):<br>
`curl -sL https://raw.githubusercontent.com/RekuNote/scm-cli/main/install.sh | bash`

<br>
If this doesn't work, run scm-cli portably by:

- Downloading the `scm-cli` file
- Allowing execute permissions:
`chmod +x scm-cli`
- Running the program:
`./scm-cli`

## Usage

Run the script with the desired options:

```sh
./scm-cli [OPTIONS]
```

### Options

- `-l, --list`                 List all games
- `-s, --search <game_id>`     Search songs by game ID
- `-t, --trackinfo <song_id>`   Shows track info by song ID
- `-d, --download <song_id>`   Download BRSTM file by song ID
- `-o, --output <path>`        Specify output path for downloads
- `-u, --update <path>`        Specify output path for downloads

### Examples

- List all games:

```sh
./scm-cli --list
```

- Search songs by game ID:

```sh
./scm-cli --search <game id>
```

- Download a BRSTM file by song ID to a specified path:

```sh
./scm-cli --download <song id> --output /path/to/download.brstm
```

- Download a BRSTM file by song ID to the default path (Desktop/brstm):

```sh
./scm-cli --download <song id>
```

## License

This project is licensed under the MIT License.
