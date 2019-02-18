pub fn find() -> Option<u32> {
    let val: u32 = 1000;
    let left: u32 = val/2;

    for a in (1..left-1).rev() {
        for b in (a..left).rev() {
            let c = val - a - b;
            if pythag_checks(a,b,c) {
                return Some(a*b*c);
            }
        }
    }

    return None;
}

fn pythag_checks(a: u32, b: u32, c: u32) -> bool {
    return (a*a + b*b) == c*c &&
           (a < b) &&
           (b < c);
}
