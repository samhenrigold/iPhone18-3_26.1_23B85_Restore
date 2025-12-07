@interface CAFenceResolution
+ (CAFenceResolution)_newResolutionWithTime:(uint64_t)time;
@end

@implementation CAFenceResolution

+ (CAFenceResolution)_newResolutionWithTime:(uint64_t)time
{
  v5 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = [CAFenceResolution alloc];
  if (result)
  {
    v4.receiver = result;
    v4.super_class = CAFenceResolution;
    result = objc_msgSendSuper2(&v4, sel_init);
    if (!result)
    {
      __assert_rtn("[CAFenceResolution _initWithTime:]", "CAFenceResolution.mm", 28, "self");
    }

    result->_time = a2;
  }

  return result;
}

@end