
import * as utils from './utils.js'
import * as globals from './globals.js';
import { logger } from './log.js'
import * as socket_global_timeout from './socket_global_timeout.js'
socket_global_timeout.set_global_timeout(30000);

globals.set_config({
  debug: true,
})

await utils.delay(1000);
