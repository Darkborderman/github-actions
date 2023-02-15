# github-repo-info

An action to update your Github repository information.

## Usage

1. Create a Personal Access Token (PAT).
The access token requires repository administration permission in order to edit metadata.
* Github Action token can't edit metadata, even have `write-all` in Github Action job.

2. Configure your PAT to your repository or organization secrets(ex: `PAT_TOKEN`).

3. Add an YAML file(ex: `metadata.yml`) for repository configuration.
Available options can be found below in the [#options](#options) section.

4. Add step in your pipeline.
```yml
steps:
  - name: Update Github repo information
    uses: Darkborderman/github-actions/github-repo-info@master
    env:
      YML_PATH: metadata.yml
      GH_TOKEN: ${{ secrets.PAT_TOKEN }}
```

## Options

| Name | Type | Example values |
| --- | -- | -- |
| github_description | string | Github action for general purposes. |
| github_enable_discussions | bool | false |
| github_enable_issues | bool | false |
| github_enable_projects | bool | false |
| github_enable_wiki | bool | false |
| github_homepage | string | https://github.com/Darkborderman/github-actions |
| github_template | bool | false |
| github_topics | list of strings | ["github-action"] |

## Design thoughts

### Why this action exists

I have many template repos that are similiar and are overwhelmed by setting each repos' Github configurations.
