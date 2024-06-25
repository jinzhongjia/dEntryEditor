const std = @import("std");
const webui = @import("webui");

pub fn main() !void {
    // create a new window
    var nwin = webui.newWindow();

    _ = nwin.setRootFolder("ui");

    _ = nwin.showBrowser("index.html", .Firefox);

    webui.wait();
}
