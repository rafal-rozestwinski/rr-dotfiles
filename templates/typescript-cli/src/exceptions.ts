import * as globals from './globals.js';
import * as utils from './utils.js';
import { logger } from './log.js';

export function adv_log_error(e: any) {
    logger.error("EXCEPTION HANDLED: ", e);
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