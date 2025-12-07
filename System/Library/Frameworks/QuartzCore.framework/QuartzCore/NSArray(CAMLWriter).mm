@interface NSArray(CAMLWriter)
- (char)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSArray(CAMLWriter)

- (char)encodeWithCAMLWriter:()CAMLWriter
{
  result = [self count];
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      result = [a3 encodeObject:{objc_msgSend(self, "objectAtIndex:", i)}];
    }
  }

  return result;
}

@end