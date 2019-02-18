use std::cmp::PartialEq;
use std::ops::Rem;

fn divides<T>(n: T, m: T) -> bool
where
    T: Rem<T, Output = T> + From<i32> + PartialEq,
{
    (n % m) == T::from(0)
}

pub fn is_leap_year<T>(year: T) -> bool
where
    T: Rem<T, Output = T> + From<i32> + PartialEq + Copy,
{
    divides(year, T::from(4)) && !divides(year, T::from(100)) || divides(year, T::from(400))
}
