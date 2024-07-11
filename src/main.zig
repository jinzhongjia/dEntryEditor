const std = @import("std");
const webui = @import("webui");

pub fn main() !void {
    var win = webui.newWindow();

    _ = win.setRootFolder("front");
    _ = win.show("index.html");
    // _ = win.showBrowser("index.html", .Chrome);

    webui.wait();

    webui.clean();
}
