import { envVal } from "@/env";

console.log(`envVal is ${envVal}`);

export async function callHoge() {
  const hoge = "fuga";
  console.log(hoge);
  return hoge;
}
