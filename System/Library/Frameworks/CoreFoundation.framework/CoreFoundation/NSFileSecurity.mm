@interface NSFileSecurity
+ (NSFileSecurity)allocWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSFileSecurity

+ (NSFileSecurity)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSFileSecurity == self)
  {

    return +[__NSPlaceholderFileSecurity immutablePlaceholder];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___NSFileSecurity;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end