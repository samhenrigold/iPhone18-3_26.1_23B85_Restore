@interface SocCC
- (SocCC)initWithParams:(__CFDictionary *)params listID:(int)d;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)defaultAction;
@end

@implementation SocCC

- (SocCC)initWithParams:(__CFDictionary *)params listID:(int)d
{
  v8.receiver = self;
  v8.super_class = SocCC;
  v5 = [(ComponentControl *)&v8 initWithCC:3];
  v6 = v5;
  if (v5)
  {
    v5->listIDPos = 101;
    *(&v5->super.currentPower + 1) = d;
    v5->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d SoC ", 3);
  }

  return v6;
}

- (void)defaultAction
{
  self->listIDPos = self->super.previousValue;
  [qword_1000ABCB0 setGPUPowerCeiling:? fromDecisionSource:?];
  v2 = qword_1000ABCB0;

  [v2 updateGPU];
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = SocCC;
  return [(ComponentControl *)&v3 numberOfFields]+ 1;
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = SocCC;
  if ([(ComponentControl *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = SocCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return @"SoC - timeActive";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SocCC;
    return [(ComponentControl *)&v7 copyHeaderForIndex:v3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = SocCC;
  if ([(ComponentControl *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = SocCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%.3f", *&self->gpuPowerTarget);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SocCC;
    return [(ComponentControl *)&v7 copyFieldCurrentValueForIndex:v3];
  }
}

@end