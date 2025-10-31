import * as globals from './globals.js';
import * as utils from './utils.js';
import { logger } from './log.js';
import axios from 'axios';


export function adv_log_error(e: any) {
    try {
        if(axios.isAxiosError(e)) {
            logger.error("EXCEPTION HANDLED: Network Problem: ", /*e.config.url,*/ e.response?.status, e.message, e.stack)
        //} else if(e && typeof e === 'object' && utils.hasOwnProperty(e, 'message')) {
            //logger.error("EXCEPTION HANDLED: ", e.message)
            //if(utils.hasOwnProperty(e, "stack")) {
            //    logger.error("STACKTRACEK ", e.stack)
            //}
        //    logger.error(e)
        } else {
            logger.error("EXCEPTION HANDLED: ", e);
        }
    } catch(error) {
        logger.error("EXCEPTION HANDLED: When processing one background exception, another one appeared:", error)
    }
}

            /*
            if (e instanceof TypeError) {
                // A TypeError
              } else if (e instanceof RangeError) {
                // Handle the RangeError
              } else if (e instanceof EvalError) {
                // you guessed it: EvalError
              } else if (typeof e === "string") {
                // The error is a string
              } else if (axios.isAxiosError(e)) {
                // axios does an error check for us!
              } else {
                // everything else  
                logMyErrors(e);
              }
            logger.error("BACKGROUND TASK EXCEPTION HANDLED: ", e.message)
            */