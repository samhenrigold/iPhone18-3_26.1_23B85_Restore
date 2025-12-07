@interface GQHBulletState
+ (__CFString)createLabelStr:(int)str number:(int)number;
- (BOOL)hasNumberAtLevel:(int)level;
- (GQHBulletState)init;
- (__CFString)bulletChar:(int)char;
- (__CFString)createTieredNumberStringForLevel:(int)level;
- (id)listStyleAtLevel:(int)level;
- (int)bulletIndentForLevel:(int)level;
- (int)labelTypeAtLevel:(int)level;
- (int)numberAtLevel:(int)level;
- (int)textIndentForLevel:(int)level;
- (int)typeAtlevel:(int)atlevel;
- (void)dealloc;
- (void)setBulletChar:(__CFString *)char level:(int)level;
- (void)setBulletIndent:(int)indent level:(int)level;
- (void)setCurrentLevel:(int)level;
- (void)setLabelType:(int)type level:(int)level;
- (void)setListStyle:(id)style atLevel:(int)level;
- (void)setNumber:(int)number level:(int)level;
- (void)setTextIndent:(int)indent level:(int)level;
- (void)setType:(int)type level:(int)level;
@end

@implementation GQHBulletState

+ (__CFString)createLabelStr:(int)str number:(int)number
{
  v4 = *&number;
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if ((str & 0xFFFFFFFE) == 4)
  {
    v8 = v4 % 26;
    if (str == 4)
    {
      v9 = 90;
    }

    else
    {
      v9 = 122;
    }

    if (str == 4)
    {
      v10 = 64;
    }

    else
    {
      v10 = 96;
    }

    v11 = v10 + v8;
    if (v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v4 >= -24)
    {
      v13 = (v4 - 1) / 26 + 1;
      do
      {
        CFStringAppendFormat(v7, 0, @"%c", v12);
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%d", v4);
  }

  return v7;
}

- (GQHBulletState)init
{
  v7.receiver = self;
  v7.super_class = GQHBulletState;
  v2 = [(GQHBulletState *)&v7 init];
  if (v2)
  {
    v2->mLevels = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if ((dword_9CDF8 & 0x80000000) == 0)
    {
      v3 = 0;
      v4 = -1;
      do
      {
        v5 = objc_alloc_init(GQHBulletInfo);
        [(GQHBulletInfo *)v5 setBulletIndent:v3];
        [(GQHBulletInfo *)v5 setTextIndent:10];
        CFArrayAppendValue(v2->mLevels, v5);

        ++v4;
        v3 = (v3 + 10);
      }

      while (v4 < dword_9CDF8);
    }
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->mLevels);
  v3.receiver = self;
  v3.super_class = GQHBulletState;
  [(GQHBulletState *)&v3 dealloc];
}

- (void)setType:(int)type level:(int)level
{
  v4 = *&type;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setType:v4];
}

- (int)typeAtlevel:(int)atlevel
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, atlevel);

  return [ValueAtIndex type];
}

- (void)setNumber:(int)number level:(int)level
{
  v4 = *&number;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);
  [ValueAtIndex setNumber:v4];

  [ValueAtIndex setHasNumber:1];
}

- (BOOL)hasNumberAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex hasNumber];
}

- (int)numberAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex number];
}

- (void)setLabelType:(int)type level:(int)level
{
  v4 = *&type;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setLabelType:v4];
}

- (int)labelTypeAtLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex labelType];
}

- (void)setBulletChar:(__CFString *)char level:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setBulletChar:char];
}

- (__CFString)bulletChar:(int)char
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, char);

  return [ValueAtIndex bulletChar];
}

- (void)setBulletIndent:(int)indent level:(int)level
{
  v4 = *&indent;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setBulletIndent:v4];
}

- (int)bulletIndentForLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex bulletIndent];
}

- (void)setTextIndent:(int)indent level:(int)level
{
  v4 = *&indent;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  [ValueAtIndex setTextIndent:v4];
}

- (int)textIndentForLevel:(int)level
{
  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex textIndent];
}

- (void)setListStyle:(id)style atLevel:(int)level
{
  if (CFArrayGetCount(self->mLevels) > level)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

    [ValueAtIndex setStyle:style];
  }
}

- (id)listStyleAtLevel:(int)level
{
  if (CFArrayGetCount(self->mLevels) <= level)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, level);

  return [ValueAtIndex style];
}

- (__CFString)createTieredNumberStringForLevel:(int)level
{
  v3 = *&level;
  Count = CFArrayGetCount(self->mLevels);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v7 = [(GQHBulletState *)self typeAtlevel:v3];
  v8 = 0;
  if (v3 >= 1 && (v7 & 0xFFFFFFFE) == 2)
  {
    v9 = [(GQHBulletState *)self typeAtlevel:(v3 - 1)];
    v10 = v3;
    do
    {
      v11 = v10;
      if (v10 < 2)
      {
        break;
      }

      if ((v9 & 0xFFFFFFFE) != 2)
      {
        break;
      }

      v12 = [(GQHBulletState *)self typeAtlevel:v10 - 2];
      v10 = v11 - 1;
      v13 = v9 == 2;
      v9 = v12;
    }

    while (!v13);
    v8 = v11 - 1;
  }

  if (v8 <= v3)
  {
    v14 = v8;
    if (Count > v8)
    {
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, v14);
        if ([ValueAtIndex type] == 3 || objc_msgSend(ValueAtIndex, "type") == 2)
        {
          createTierStringNumber = [ValueAtIndex createTierStringNumber];
          v18 = createTierStringNumber;
          if ((v15 & 1) == 0)
          {
            v15 = 1;
          }

          CFStringAppendFormat(Mutable, 0, @"%@.", createTierStringNumber);
          CFRelease(v18);
        }

        if ([ValueAtIndex type] == 1 || !objc_msgSend(ValueAtIndex, "type")) && (v15)
        {
          break;
        }

        if (v14 >= v3)
        {
          break;
        }

        ++v14;
      }

      while (Count > v14);
    }
  }

  return Mutable;
}

- (void)setCurrentLevel:(int)level
{
  if (self->mCurrentLevel > level && dword_9CDF8 > level)
  {
    levelCopy = level;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->mLevels, ++levelCopy);
      [ValueAtIndex setNumber:0];
      [ValueAtIndex setHasNumber:0];
    }

    while (levelCopy < dword_9CDF8);
  }

  self->mCurrentLevel = level;
}

@end