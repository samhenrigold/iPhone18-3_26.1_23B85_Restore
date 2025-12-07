@interface MDDateFormatter
- (MDDateFormatter)init;
- (id)iso8601StringPlusPrecisionForDate:(id)date isAllDay:(BOOL)day;
@end

@implementation MDDateFormatter

- (id)iso8601StringPlusPrecisionForDate:(id)date isAllDay:(BOOL)day
{
  dayCopy = day;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_stringFromDate_(self->_formatter, a2, date, day);
  v9 = v6;
  if (dayCopy)
  {
    objc_msgSend_stringWithFormat_(v5, v7, @"%@_%@", v8, v6, @"DAY");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v5, v7, @"%@_%@", v8, v6, @"SECOND");
  }
  v10 = ;

  return v10;
}

- (MDDateFormatter)init
{
  v6.receiver = self;
  v6.super_class = MDDateFormatter;
  v2 = [(MDDateFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    formatter = v2->_formatter;
    v2->_formatter = v3;
  }

  return v2;
}

@end