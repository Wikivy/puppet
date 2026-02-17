type Systemdlib::Timer::Schedule = Struct[
  {
    'start'    => Systemdlib::Timer::Start,
    'interval' => Variant[
      Systemdlib::Timer::Interval,
      Systemdlib::Timer::Datetime,
    ]
  }
]