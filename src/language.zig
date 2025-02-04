const std = @import("std");
const util = @import("util.zig");

pub fn main() void {
    // Assignment
    util.title("Assignments");
    const person = "Nurul";
    var age: u8 = 23;
    age = age + 1;
    std.debug.print("{s} is {} years old!\n\n\n", .{ person, age });

    // Arrays
    util.title("Arrays");
    const skills = [_]u8{ 'Z', 'i', 'g' };
    const commits = [_]u8{ 1, 2, 3 };
    std.debug.print("Skills: {s}, Commits: {d}\n", .{ skills, commits });
}
