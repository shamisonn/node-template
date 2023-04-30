import { callHoge } from "@/hoge";

describe("callHoge", () => {
  it("equal fuga", async () => {
    expect(await callHoge()).toBe("fuga");
  });
});
