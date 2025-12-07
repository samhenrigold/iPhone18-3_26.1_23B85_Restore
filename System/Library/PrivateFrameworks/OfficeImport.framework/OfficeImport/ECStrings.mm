@interface ECStrings
+ (void)initialize;
@end

@implementation ECStrings

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v21 = TCBundle(v3);
    v4 = [v21 localizedStringForKey:@"h" value:&stru_286EE1130 table:@"TCCompatibility"];
    v5 = sDurationHourShortString;
    sDurationHourShortString = v4;

    v22 = TCBundle(v6);
    v7 = [v22 localizedStringForKey:@"hours" value:&stru_286EE1130 table:@"TCCompatibility"];
    v8 = sDurationHourLongString;
    sDurationHourLongString = v7;

    v23 = TCBundle(v9);
    v10 = [v23 localizedStringForKey:@"m" value:&stru_286EE1130 table:@"TCCompatibility"];
    v11 = sDurationMinuteShortString;
    sDurationMinuteShortString = v10;

    v24 = TCBundle(v12);
    v13 = [v24 localizedStringForKey:@"minutes" value:&stru_286EE1130 table:@"TCCompatibility"];
    v14 = sDurationMinuteLongString;
    sDurationMinuteLongString = v13;

    v25 = TCBundle(v15);
    v16 = [v25 localizedStringForKey:@"s" value:&stru_286EE1130 table:@"TCCompatibility"];
    v17 = sDurationSecondShortString;
    sDurationSecondShortString = v16;

    v26 = TCBundle(v18);
    v19 = [v26 localizedStringForKey:@"seconds" value:&stru_286EE1130 table:@"TCCompatibility"];
    v20 = sDurationSecondLongString;
    sDurationSecondLongString = v19;
  }
}

@end