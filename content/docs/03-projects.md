---
title: Projects
root: '/docs'
parents: ['Get Started']
---

### Helios

Helios is our weather/welcome display for the Providence and Boulder front door. It serves as an opportunity to welcome guests and show off some our technical expertise.

* Front-end
  * react: https://reactjs.org/
  * apollo client: https://www.apollographql.com/docs/react/
  * ramdajs: https://ramdajs.com/
  * matter.js: http://brm.io/matter-js/
* Back-end
  * ruby on rails: https://rubyonrails.org/
  * graphql-ruby: https://github.com/rmosolgo/graphql-ruby
  * postgresql: https://www.postgresql.org/
  * redis: https://redis.io/
* APIs
  * https://darksky.net/
  * https://github.com/
  * https://slack.com/
  * https://twitter.com/
* graphql: https://graphql.org/
* docker: https://www.docker.com/

### StandupHub

[StandupHub](https://www.standuphub.com/) is a web service to easily track your tasks and their statuses for standup.

#### Stack

* PT issues: https://www.pivotaltracker.com/n/projects/1553257
* Slack: #standuphub
* Front-end
  * github: https://github.com/mojotech/standup-web
  * react 16: https://reactjs.org/
  * redux: https://redux.js.org/
* Back-end
  * github: https://github.com/mojotech/standup-api-ex
  * Phoenix: https://www.phoenixframework.org/
  * Elixir: https://elixir-lang.org/
* Back-end (legacy)
  * https://github.com/mojotech/standup-api
* docker: https://www.docker.com/

#### Startup

```sh
cd standuphub-api-ex
# start a pgsl instance on localhost:5432. You can use an OS service instead of docker
docker-compose up db
# start the phoenix server on localhost:4000 connected to localhost for database
mix phx.server
cd ../standuphub-web
# start webpack server on localhost:3000 pointed to the local phoenix server the API server
REACT_APP_API_SERVER=http://localhost:4000 yarn start
```

