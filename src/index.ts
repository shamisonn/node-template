import { callHoge } from "@/hoge";

async function main(): Promise<void> {
  await callHoge();
  console.log("hello");
}

main();
