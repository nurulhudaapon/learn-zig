const std = @import("std");

pub fn main() void {
    // Assignment
    title("Assignments");
    const person = "Nurul";
    var age: u8 = 23;
    age = age + 1;
    std.debug.print("{s} is {} years old!\n\n\n", .{ person, age });

    // Arrays
    title("Arrays");
    const skills = [_]u8{ 'Z', 'i', 'g' };
    const commits = [_]u8{ 1, 2, 3 };
    std.debug.print("Skills: {s}, Commits: {d}\n", .{ skills, commits });
}

// Functions
fn title(comptime fmt: []const u8) void {
    std.debug.print("\x1b[1;32m➜ {s}:\x1b[0m\n", .{fmt});
}
