const std = @import("std");
const webui = @import("webui");

pub fn main() !void {
    // create a new window
    const nwin = webui.newWindow();

    _ = nwin;
    webui.wait();
}
