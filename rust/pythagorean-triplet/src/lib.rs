use std::collections::HashSet;

pub fn find() -> Option<u64> {
    (1..)
        .flat_map(|a| (1..a).map(move |b| (a, b)))
        .filter_map(|(a, b)| {
            let c = 1000 - a - b;
            if c <= 0 {
                None
            } else {
                Some((a, b, c))
            }
        })
        .filter(|(a, b, c)| c * c == a * a + b * b)
        .map(|(a, b, c)| a * b * c)
        .nth(0)
}
