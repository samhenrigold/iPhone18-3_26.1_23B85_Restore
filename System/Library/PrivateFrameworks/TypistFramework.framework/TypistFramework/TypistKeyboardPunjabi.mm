@interface TypistKeyboardPunjabi
- (id)addAccentKeyAction:(id)action;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardPunjabi

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardPunjabi;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"pa"];
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v10) <= 1194.0 || [(TypistKeyboard *)self isFloating])
  {

LABEL_4:
    v6 = keyCopy;
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"ਇ"])
  {
  }

  else
  {
    v8 = [keyCopy isEqualToString:@"ਈ"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v6 = @"ੲ";
LABEL_5:

  return v6;
}

- (id)addAccentKeyAction:(id)action
{
  v15[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v17) <= 1194.0)
  {

    goto LABEL_7;
  }

  isFloating = [(TypistKeyboard *)self isFloating];

  if (isFloating)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (![actionCopy isEqualToString:@"ਇ"])
  {
    if ([actionCopy isEqualToString:@"ਈ"])
    {
      v13 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ੀ"];
      v8 = v13;
      if (v13)
      {
        v14 = v13;
        v9 = MEMORY[0x277CBEA60];
        v10 = &v14;
        goto LABEL_14;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v7 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ਿ"];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_15;
  }

  v15[0] = v7;
  v9 = MEMORY[0x277CBEA60];
  v10 = v15;
LABEL_14:
  v11 = [v9 arrayWithObjects:v10 count:1];
LABEL_16:

LABEL_8:

  return v11;
}

@end