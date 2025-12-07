@interface AudioAmpCC
- (AudioAmpCC)initWithParams:(__CFDictionary *)params;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)defaultAction;
@end

@implementation AudioAmpCC

- (AudioAmpCC)initWithParams:(__CFDictionary *)params
{
  v7.receiver = self;
  v7.super_class = AudioAmpCC;
  v4 = [(ComponentControl *)&v7 initWithCC:10];
  v5 = v4;
  if (v4)
  {
    *&v4->super.allowLIOverride = 100;
    *(&v4->super.currentPower + 1) = 1109393408;
    v4->_targetPower = 0.0;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d AudioAmp ", 10);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    if (params)
    {
      sub_100002A20(params, @"maxAudioAmpPower", kCFNumberFloatType, &v5->_currentPower);
    }
  }

  return v5;
}

- (void)defaultAction
{
  currentLoadingIndex = self->super.currentLoadingIndex;
  if (currentLoadingIndex != self->super.maxLoadingIndex)
  {
    *(&self->super.currentPower + 1) = (self->_currentPower * currentLoadingIndex) / 100.0;
    self->super.maxLoadingIndex = currentLoadingIndex;
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = AudioAmpCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 2;
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v10.receiver = self;
  v10.super_class = AudioAmpCC;
  if ([(ComponentControl *)&v10 numberOfFields]<= index)
  {
    v8.receiver = self;
    v8.super_class = AudioAmpCC;
    numberOfFields = [(ComponentControl *)&v8 numberOfFields];
    if (v3 - numberOfFields == 1)
    {
      v7 = @"AudioAmpCC current power";
    }

    else
    {
      v7 = 0;
    }

    if (v3 == numberOfFields)
    {
      return @"AudioAmpCC target power";
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AudioAmpCC;
    return [(ComponentControl *)&v9 copyHeaderForIndex:v3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v11.receiver = self;
  v11.super_class = AudioAmpCC;
  if ([(ComponentControl *)&v11 numberOfFields]> index)
  {
    v10.receiver = self;
    v10.super_class = AudioAmpCC;
    return [(ComponentControl *)&v10 copyFieldCurrentValueForIndex:v3];
  }

  v9.receiver = self;
  v9.super_class = AudioAmpCC;
  v6 = v3 - [(ComponentControl *)&v9 numberOfFields];
  if (v6 == 1)
  {
    v7 = kCFAllocatorDefault;
    v8 = 144;
    return CFStringCreateWithFormat(v7, 0, @"%f", *(&self->super.super.super.isa + v8));
  }

  if (!v6)
  {
    v7 = kCFAllocatorDefault;
    v8 = 140;
    return CFStringCreateWithFormat(v7, 0, @"%f", *(&self->super.super.super.isa + v8));
  }

  return 0;
}

@end