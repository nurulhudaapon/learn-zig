const std = @import("std");
const util = @import("util.zig");
const print = std.debug.print;

pub fn main() void {
    // Assignment
    util.title("Assignments");
    const person = "Nurul";
    var age: u8 = 23;
    age = age + 1;
    print("{s} is {} years old!", .{ person, age });

    // Arrays
    util.title("Arrays");
    const skills = [_]u8{ 'Z', 'i', 'g' }; // array of infered size chars (integer under the hood)
    const commits = [_]u8{ 1, 2, 3 };
    const degrees = [_][]const u8{ "High School", "Grad School" }; // inferrd sized array of unknown sized string
    print("Skills: {s}\nCommits: {d}\nDegrees: {s}", .{ skills, commits, degrees });

    // If Expressions
    util.title("If Expressions");
    if (age > 18) print("{s} is now adult!\n", .{person});
    const is_adult = if (age >= 18) true else false;
    if (is_adult) print("Yes, {s} is adult!\n", .{person});
    age = age - 10;
    if (age > 18) {
        print("{s} is now adult!\n", .{person});
    } else {
        print("{s} is not an adult!", .{person});
    }

    // While loops
    util.title("While Loops");
    const year_of_birth: u16 = 2001;
    var years_old: u8 = 0;
    const current_ts = std.time.timestamp(); // Seconds from relative to 1970-01-01
    const year = @divFloor(current_ts, 365 * std.time.s_per_day) + 1970;

    while (years_old <= 50) {
        const current_year = year_of_birth + years_old;
        const is_future = current_year > year;
        const verb = if (is_future) "will be" else "was";

        if (is_future) print("In {} {s} {s} {} years old\n", .{ current_year, person, verb, years_old });
        years_old = years_old + 1;
    }

    // For loops
    util.title("For loops");
    for (degrees) |degree| {
        print("{s}, ", .{degree});
    }
    print("\n", .{});
    for (degrees, 0..) |degree, index| {
        print("{s}", .{degree});
        if (index == degrees.len - 1) print("\n", .{}) else print(", ", .{});
    }
}
