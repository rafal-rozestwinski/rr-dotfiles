
export interface AppConfig {
    debug?: boolean
}

export let CONFIG : AppConfig

export function set_config(config: AppConfig) {
    CONFIG = config;
}

export const BINARIES_SUBPATH = "./tools/"

