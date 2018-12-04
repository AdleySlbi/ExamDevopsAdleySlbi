# Create development app
resource "heroku_app" "development" {
  name   = "developmentdevopswsf"
  region = "eu"

  config_vars {
    FOOBAR = "baz"
  }

  buildpacks = [
    "heroku/go",
  ]
}

# Create staging app
resource "heroku_app" "staging" {
  name   = "stagingdevopswsf"
  region = "eu"

  config_vars {
    FOOBAR = "baz"
  }

  buildpacks = [
    "heroku/go",
  ]
}

# Create production app
resource "heroku_app" "production" {
  name   = "productiondevopswsf"
  region = "eu"

  config_vars {
    FOOBAR = "baz"
  }

  buildpacks = [
    "heroku/go",
  ]
}
