@interface _GEOTrafficUpdateETARequestConfig
- (id)additionalURLQueryItems;
@end

@implementation _GEOTrafficUpdateETARequestConfig

- (id)additionalURLQueryItems
{
  v2 = GEOConfigGetString();
  if (v2)
  {
    v3 = [NSCharacterSet characterSetWithCharactersInString:@"?"];
    v4 = [v2 stringByTrimmingCharactersInSet:v3];
    v5 = [v4 componentsSeparatedByString:@"="];

    if ([v5 count] == 2)
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v5 objectAtIndexedSubscript:1];
      v8 = [NSURLQueryItem queryItemWithName:v6 value:v7];

      v11 = v8;
      v9 = [NSArray arrayWithObjects:&v11 count:1];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

@end