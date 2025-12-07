@interface ARFaceAnchor(DebugOutput)
- (uint64_t)description;
@end

@implementation ARFaceAnchor(DebugOutput)

- (uint64_t)description
{
  v2 = MEMORY[0x277CCACA8];
  if ([self isTracked])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  objc_msgSend_transform(self);
  v5 = v4;
  objc_msgSend_transform(self);
  v7 = v6;
  objc_msgSend_transform(self);
  return [v2 stringWithFormat:@"face anchor: isTracked=%@, position=(%f, %f, %f)", v3, *&v5, *&v7, v8];
}

@end