import { nanoid } from 'nanoid'

export function omg(): string {
  return `called OMG! `;
}

export async function async_omg(): Promise<string> {
  let nanoid_id: string = await nanoid();
  return `called ASYNC_OMG nanoid=${nanoid_id}! `;
}
