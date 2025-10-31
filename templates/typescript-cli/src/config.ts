import { program } from 'commander';
import { logger } from './log.js';
export function program_options(): any {
    const options = program.opts();
    //const args = program.args;
    logger.debug("OPTIONS:", options)
    return options
}