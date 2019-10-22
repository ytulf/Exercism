use std::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock {
    hours: i32,
    minutes: i32,
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:0>2}:{:0>2}", self.hours, self.minutes)
    }
}

impl Clock {
    pub fn new(raw_hours: i32, raw_minutes: i32) -> Self {
        // rem_euclid and div_euclid are new in 1.38.0
        let minutes = raw_minutes.rem_euclid(60);
        let minutes_to_hours = raw_minutes.div_euclid(60);
        let hours = (raw_hours + minutes_to_hours).rem_euclid(24);
        Clock { hours, minutes }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(self.hours, self.minutes + minutes)
    }
}
