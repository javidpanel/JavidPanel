// JavidPanel public sample Worker.
// The production Worker source is not published in this repository.

export default {
  async fetch() {
    return new Response("JavidPanel public sample. Install and updates are handled by the official installer.", {
      status: 200,
      headers: {
        "content-type": "text/plain; charset=utf-8",
        "cache-control": "no-store"
      }
    });
  }
};
