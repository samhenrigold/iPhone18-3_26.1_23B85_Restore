@interface NSCoder(PhotosUI)
- (double)ph_decodeRectForKey:()PhotosUI;
@end

@implementation NSCoder(PhotosUI)

- (double)ph_decodeRectForKey:()PhotosUI
{
  v4 = a3;
  [self decodeRectForKey:v4];
  x = v8.origin.x;
  if (CGRectEqualToRect(v8, *MEMORY[0x1E695F058]))
  {
    v6 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
    if ([v6 isEqualToString:{@"{{inf, inf}, {0, 0}}"}])
    {
      x = *MEMORY[0x1E695F050];
    }
  }

  return x;
}

@end