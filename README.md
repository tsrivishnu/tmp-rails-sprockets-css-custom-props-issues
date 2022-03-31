# Rails app to test an issue with creating ActiveStorage JPG image variants

Rails app to reproduce issues with Sprockets when compiles scss files with
custom properties.
See: https://github.com/rails/sprockets/issues/743

## Setup

1. Configure docker base image: The `Dockerfile` is created for Apple Silicon.
If you are using an Intel or AMD chip, Open `Dockerfile` and change
the first line:

    ```
    # For arm (Apple Silicon)
    FROM rubylang/ruby:2.7.4-bionic-arm64

    # For amd
    FROM rubylang/ruby:2.7.4-bionic
    ```

2. Build the docker images:

    ```console
    $ docker-compose build app
    ```

3. Bundle install

    ```console
    $ docker-compose run --rm app bundle install
    ```

4. Open and edit SCSS file `app/assets/stylesheets/properties.scss`

5. Run assets precompile

    ```console
    $ docker-compose up --rm app rake assets:precompile
    ```

6. Inspect the contents of generated file in `public/assets/properties-*.css`.

## Usage

Should you need to access `bash` inside the container:

```console
$ docker-compose run --rm app bash
```
