@interface NSString(_PSInteractionAndContactMonitor)
- (uint64_t)_ps_pointerSizedHash;
@end

@implementation NSString(_PSInteractionAndContactMonitor)

- (uint64_t)_ps_pointerSizedHash
{
  v1 = objc_autoreleasePoolPush();
  if (_ps_pointerSizedHash__pasOnceToken1 != -1)
  {
    [NSString(_PSInteractionAndContactMonitor) _ps_pointerSizedHash];
  }

  v2 = _PASRepairString();
  v5 = 0;
  if (![v2 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v5])
  {
    [v2 UTF8String];
    v5 = [v2 lengthOfBytesUsingEncoding:4];
  }

  v3 = _PASMurmur3_x64_128();

  objc_autoreleasePoolPop(v1);
  return v3;
}

@end