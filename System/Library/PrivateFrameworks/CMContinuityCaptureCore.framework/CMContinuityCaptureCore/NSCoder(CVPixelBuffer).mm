@interface NSCoder(CVPixelBuffer)
- (CFTypeRef)decodeCVPixelBufferForKey:()CVPixelBuffer;
- (CFTypeRef)decodeCVPixelBufferForKey:()CVPixelBuffer expectSourceMedia:;
- (void)encodeCVPixelBuffer:()CVPixelBuffer forKey:;
@end

@implementation NSCoder(CVPixelBuffer)

- (CFTypeRef)decodeCVPixelBufferForKey:()CVPixelBuffer
{
  v4 = a3;
  objc_opt_class();
  v5 = [self decodeObjectOfClass:? forKey:?];

  if ([v5 pixelBuffer])
  {
    v6 = CFRetain([v5 pixelBuffer]);
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CFTypeRef)decodeCVPixelBufferForKey:()CVPixelBuffer expectSourceMedia:
{
  v6 = a3;
  objc_opt_class();
  v7 = [self decodeObjectOfClass:? forKey:?];

  if (a4 && [v7 pixelBuffer])
  {
    [v7 transferSourceMedia];
  }

  if ([v7 pixelBuffer])
  {
    v8 = CFRetain([v7 pixelBuffer]);
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeCVPixelBuffer:()CVPixelBuffer forKey:
{
  v6 = a4;
  v5 = [[CVPixelBufferCoder alloc] initWithCVPixelBuffer:?];
  if (v5)
  {
    [self encodeObject:? forKey:?];
  }
}

@end