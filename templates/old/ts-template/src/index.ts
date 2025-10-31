//let ojej = require("ojej.js");
import * as ojej from "./ojej.js";


//import { Logger } from "tslog";
//const logger: Logger = new Logger({ name: "tsex" });

import { logger } from './log'

const name = 'world';

export function hello(world: string = name): string {
  ojej.ojej();
  return `Hello ${world}! `;
}

console.log(hello());
logger.debug(hello());
