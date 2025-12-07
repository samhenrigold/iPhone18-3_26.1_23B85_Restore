@interface MonochromeModel
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
@end

@implementation MonochromeModel

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_243D99838(style);

  if (v8)
  {
    sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
    v9 = sub_243DAE1A0();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  selfCopy = self;
  v10 = sub_243D99994(style, fraction);

  if (v10)
  {
    sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
    v11 = sub_243DAE1A0();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_243D99AFC(accented);

  return v8;
}

@end