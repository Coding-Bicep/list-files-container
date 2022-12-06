# Hello world docker action

![example workflow](https://github.com/Coding-Bicep/list-files-container/actions/workflows/test.yml/badge.svg)

## Inputs

## `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

## `time`

The time we greeted you.

## Example usage

uses: actions/hello-world-docker-action@v2
with:
  who-to-greet: 'Mona the Octocat'
  