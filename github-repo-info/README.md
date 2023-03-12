# github-repo-info

An action to update your Github repository information.

## Usage

1. Add an json file(ex: `metadata.json`)
The action accept json and parse it.
```json
{
    "enable_wiki": {
        "value": false
    }
}
```

2. Add step in your pipeline.
```yml
steps:
  - name: Update Github repo information
    uses: Darkborderman/github-actions/github-repo-info@master
    with:
      json_file: metadata.json
```

## Available options

Each key in json option


| Name | Type | Example values |
| --- | -- | 

## Design thoughts

### Why this action exists

I have many template repos that are similiar and are overwhelmed by setting each repos' Github configurations.

<!-- Probably have better way, make the pipeline first.
### Can json format be more simple

Sure, at the first glance the json format can be as a one line
```json
{"key": "value"}
```
But I encounter some issues like ambigious keys (is `"version"` stands for git tag, or version for mod tag?) and unclear key names (what value does `"description"` changes?).

So I decided to tune the format to accept `<key>.value` as value input.
You can add more detailed explaination for key like `<key>.description` -->

## References

[Github CLI repo edit](https ://cli.github.com/manual/gh_repo_edit)
