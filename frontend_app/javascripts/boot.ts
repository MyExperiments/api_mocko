import {provide} from 'angular2/core'
import {bootstrap} from 'angular2/platform/browser'
import {HTTP_PROVIDERS} from 'angular2/http'
import {ROUTER_PROVIDERS} from 'angular2/router'

bootstrap( HomeComponent, [ HTTP_PROVIDERS, ROUTER_PROVIDERS ] );
