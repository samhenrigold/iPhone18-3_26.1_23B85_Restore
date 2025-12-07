@interface JSLocalize
- (id)nativeString:(id)string;
@end

@implementation JSLocalize

- (id)nativeString:(id)string
{
  v4 = sub_2705D7564();
  v6 = v5;
  selfCopy = self;
  sub_27059A990(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2705D7534();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end