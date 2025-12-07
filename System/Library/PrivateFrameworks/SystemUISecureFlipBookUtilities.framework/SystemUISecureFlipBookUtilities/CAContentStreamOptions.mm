@interface CAContentStreamOptions
@end

@implementation CAContentStreamOptions

SEL __82__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__setTrackedLayer___block_invoke(uint64_t a1)
{
  result = NSSelectorFromString(&cfstr_Settrackedlaye.isa);
  if (![CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::trackedLayerSel)
  {
    v2 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) setTrackedLayer:]::trackedLayerSel = v2;
    }
  }

  return result;
}

SEL __78__CAContentStreamOptions_CAContentStreamOptionsRevLockAdditions__trackedLayer__block_invoke(uint64_t a1)
{
  result = NSSelectorFromString(&cfstr_Trackedlayerid.isa);
  if (![CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::trackedLayerSel)
  {
    v2 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamOptions(CAContentStreamOptionsRevLockAdditions) trackedLayer]::trackedLayerSel = v2;
    }
  }

  return result;
}

@end