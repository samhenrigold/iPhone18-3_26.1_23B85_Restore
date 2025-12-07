@interface NSDictionary(CAMLWriter)
- (char)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSDictionary(CAMLWriter)

- (char)encodeWithCAMLWriter:()CAMLWriter
{
  v5 = [objc_msgSend(self "allKeys")];
  result = [v5 count];
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndex:i];
      v10 = [self objectForKey:v9];
      [a3 beginPropertyElement:v9];
      [a3 encodeObject:v10];
      result = [a3 endElement];
    }
  }

  return result;
}

@end