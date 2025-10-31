import fetch from 'node-fetch';

import { logger } from './log.js'


export function delay(ms: number) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

export async function fetch_url_as_json_string_token(url: string, token: string): Promise<string> {
  logger.debug(`fetch_url_as_json_string_token ${url}`)
  const response = await fetch(url, {
    method: "GET",
    //body: JSON.stringify({ username: "example" }),
    headers: {
      "authorization": `${token}`,
    },
  });
  const data_json : any = await response.json();
  logger.debug(`fetch_url_as_json_string_token data: ${data_json}`)
  return JSON.stringify(data_json);
}

/*
async function get() {
  const controller = new AbortController();
  const request = new Request("https://example.org/get", {
    signal: controller.signal,
  });

  const response = await fetch(request);
  controller.abort();
  // The next line will throw `AbortError`
  const text = await response.text();
  console.log(text);
}
*/


export async function fetch_url_as_json_string(url: string): Promise<string> {
    const response = await fetch(url);
    const data_json : any = await response.json();
    return JSON.stringify(data_json);
}

export async function fetch_url_as_string(url: string): Promise<string> {
    const response = await fetch(url);
    const data_str : any = await response.text()
    return data_str;
}

export function enum_to_strings(e: any): string[] {
    const tmp = Object.values(e).filter((v) => isNaN(Number(v)));
    let ret = []
    for(const ef of tmp) {
      ret.push(String(ef))
    }
    return ret;
}

export function enum_to_ints(e: any): number[] {
    const tmp = Object.values(e).filter((v) => !isNaN(Number(v)));
    let ret = []
    for(const ef of tmp) {
      ret.push(Number(ef))
    }
    return ret;
}

// Map<any,any> to obj
export function map_to_obj(map: any): any {
  const obj: any = {}
  for(let [k, v] of map) {
    obj[k] = v;
  }
  return obj;
}