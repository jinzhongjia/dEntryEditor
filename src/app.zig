const std = @import("std");
const config = @import("config.zig");

pub fn copyToUser(allocator: std.mem.Allocator) !void {
    const user_path = try std.fs.path.join(allocator, &.{ std.posix.getenv("HOME").?, ".local", "share", "applications" });
    defer allocator.free(user_path);
    _ = try std.fs.updateFileAbsolute(config.system_path, user_path, .{});
}
