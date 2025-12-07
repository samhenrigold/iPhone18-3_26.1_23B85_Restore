@interface RadioTxDutyCycleCC
- (RadioTxDutyCycleCC)initWithRunLoopAndParams:(__CFRunLoop *)params withParams:(__CFDictionary *)withParams;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)calculateAdditionalRadioMitigations;
@end

@implementation RadioTxDutyCycleCC

- (RadioTxDutyCycleCC)initWithRunLoopAndParams:(__CFRunLoop *)params withParams:(__CFDictionary *)withParams
{
  v9.receiver = self;
  v9.super_class = RadioTxDutyCycleCC;
  v5 = [(RadioCC *)&v9 initWithRunLoopAndParams:params withParams:?];
  v6 = v5;
  if (v5)
  {
    *(&v5->super.maxLoadingIndexPrevious + 1) = 250;
    if (withParams)
    {
      v8 = 0;
      if (sub_100002A20(withParams, @"minRadioTxDutyCycle", kCFNumberIntType, &v8))
      {
        *(&v6->super.maxLoadingIndexPrevious + 1) = v8;
      }
    }

    [(RadioTxDutyCycleCC *)v6 calculateAdditionalRadioMitigations];
    [(RadioTxDutyCycleCC *)v6 addRadioMitigations];
  }

  return v6;
}

- (void)calculateAdditionalRadioMitigations
{
  v2 = self->super.super.previousValue & ~(self->super.super.previousValue >> 31);
  if (v2 >= 100)
  {
    v2 = 100;
  }

  v3 = 10 * v2;
  if (v3 <= *(&self->super.maxLoadingIndexPrevious + 1))
  {
    v3 = *(&self->super.maxLoadingIndexPrevious + 1);
  }

  self->super.maxLoadingIndexPrevious = v3;
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = RadioTxDutyCycleCC;
  return [(RadioCC *)&v3 numberOfFields]+ 1;
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RadioTxDutyCycleCC;
  if ([(RadioCC *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = RadioTxDutyCycleCC;
    if ([(RadioCC *)&v6 numberOfFields]== v3)
    {
      return @"Radio - txDutyCycleLimit/10";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RadioTxDutyCycleCC;
    return [(RadioCC *)&v7 copyHeaderForIndex:v3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RadioTxDutyCycleCC;
  if ([(RadioCC *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = RadioTxDutyCycleCC;
    if ([(RadioCC *)&v6 numberOfFields]== v3)
    {
      return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", (self->super.maxLoadingIndexPrevious / 10));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RadioTxDutyCycleCC;
    return [(RadioCC *)&v7 copyFieldCurrentValueForIndex:v3];
  }
}

@end