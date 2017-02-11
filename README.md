# $BLOCK_NAME

A block that can be run on http://assembleapp.co.

This block was created by the Assemble block creator.
Modify this block to fit your own needs.

## Customization

Assemble uses GitHub to store and manage blocks.
To make a change to this block, clone the git repo with:

```bash
git clone $GIT_URL
cd $BLOCK_SHORTNAME
```

Make changes, and test them with:

```bash
assemble test
```

When you're happy with your changes, save them by pushing to GitHub.

```bash
git push
```

Assemble will pick up on your changes, and re-build your block.

## Common Tasks

### Need a new gem?

Make sure you have [Docker] installed.

Add your gem to the Gemfile, and run:

```bash
docker run --rm -v $(pwd):/app --workdir /app bundle install
```

This command updates the `Gemfile.lock` file
to reflect the new gem you've added.

[Docker]: https://www.docker.com/products/docker
