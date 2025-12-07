@interface CAContentStreamFrame
@end

@implementation CAContentStreamFrame

SEL __72__CAContentStreamFrame_CAContentStreamFrameRevLockAdditions__updateTime__block_invoke(uint64_t a1)
{
  result = NSSelectorFromString(&cfstr_Updatebegintim.isa);
  if (![CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::updateBeginTimeSel)
  {
    v2 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::updateBeginTimeSel = v2;
    }
  }

  return result;
}

@end