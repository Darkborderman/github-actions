# github-repo-info

An action to update your Github repository information.

## Usage

1. Add an json file
The action accept json and parse it.
For all available options, please refer [metadata.json](metadata.json)
```json
{
    "enable_wiki": {
        "value": false
    }
}
```

2. Add step in your pipeline.
```

```

## Available options

Each key in json option

|

## Design thoughts

### Why this action exists

I have many template repos that are similiar and are overwhelmed by setting each repos' Github configurations.

### Can json format be more simple

Sure, at the first glance the json format can be as a one line
```json
{"key": "value"}
```
But I encounter some issues like ambigious keys (is `"version"` stands for git tag, or version for mod tag?) and unclear key names (what value does `"description"` changes?).

So I decided to tune the format to accept `<key>.value` as value input.
You can add more detailed explaination for key like `<key>.description`
