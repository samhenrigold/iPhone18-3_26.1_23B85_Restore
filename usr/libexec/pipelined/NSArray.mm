@interface NSArray
+ (id)ps_arrayWithSTLString:(const void *)string;
@end

@implementation NSArray

+ (id)ps_arrayWithSTLString:(const void *)string
{
  v3 = *(string + 1);
  if (v3 != *string)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *string) >> 3)) >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v4 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v4;
}

@end