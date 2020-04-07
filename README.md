# feedourfrontline.org

A simply static site.

## Local development

The site can be run either by using [the dotrun snap](https://github.com/canonical-web-and-design/dotrun):

```bash
dotrun
```

Or by using yarn directly:

```bash
yarn install
$PORT=8066 yarn start
```

Then you can browse to http://localhost:8066 to see the site.

## Building the image for deployment

You can build the image for deploying the website as follows:

```bash
docker build --tag feedinghopeandheroes.org --build-arg BUILD_ID=`git rev-parse HEAD` .
docker run -ti -p 8999:80 feedinghopeandheroes.org
```

Go to http://localhost:8999 to see the site.
