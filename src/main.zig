const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{"World"});
}

test "Testing assignment" {
    // Immutable
    const x: i32 = 4;

    // Mutable 
    var y: u32 = 0;
    y += 1;

    try expect(@as(u32, x) == y+3);
}

test "Testing arrays" {
    // Array length can be inferred for array literals
    const arr: [5]u8 = [_]u8{'h', 'e', 'l', 'l', 'o'};

    try expect(arr.len == 5);
}

