import { hoge } from "@/hoge";

async function callHoge() {
  console.log(hoge);
}
callHoge();

async function main(): Promise<void> {
  console.log('hello');
}

main();
