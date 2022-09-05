//let ojej = require("ojej.js");
import * as ojej from "./ojej.js";
import * as omg from './omg.js';


//import { Logger } from "tslog";
//const logger: Logger = new Logger({ name: "tsex" });

import { logger } from './log.js'

import { nanoid } from 'nanoid'

const name = 'world';

export function hello(world: string = name): string {
  ojej.ojej();
  return `Hello ${world}! `;
}

console.log("NanoID: ");
console.log(await nanoid());

//const nanoid = import('nanoid');
console.log(hello());
logger.debug(hello());
//logger.debug(await nanoid.nanoid());

//async function createUser () {
//  let id = await nanoid();
//  logger.debug(id);
//}

//nanoid().then( () => console.log("OJEJ"));

console.log("OMG: " +  omg.omg());

(async() => {
  console.log('1')
  let ret: string = await omg.async_omg()  
  console.log(ret)
})()
let ret: string = await omg.async_omg()  
console.log(ret)
