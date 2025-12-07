@interface WBShading
+ (CsColour)fixedUpVersionOfColor:(CsColour)color;
+ (void)readFrom:(WrdShading *)from to:(id)to;
+ (void)setToSolidWhite:(id)white;
+ (void)write:(id)write to:(WrdShading *)to;
@end

@implementation WBShading

+ (void)setToSolidWhite:(id)white
{
  whiteCopy = white;
  [whiteCopy setStyle:1];
  v3 = +[OITSUColor whiteColor];
  [whiteCopy setForeground:v3];

  v4 = +[OITSUColor whiteColor];
  [whiteCopy setBackground:v4];
}

+ (void)readFrom:(WrdShading *)from to:(id)to
{
  toCopy = to;
  if (from && toCopy)
  {
    v17 = toCopy;
    v7 = [toCopy setStyle:from->var1];
    if (from->var2)
    {
      if (from->var1 != 0xFFFF || (transparentWhite(v7, v8), from->var3.var0 != _MergedGlobals_58) || __PAIR64__(from->var3.var2, from->var3.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || from->var3.var3 != HIWORD(_MergedGlobals_58) || (transparentWhite(v7, v8), from->var4.var0 != _MergedGlobals_58) || __PAIR64__(from->var4.var2, from->var4.var1) != __PAIR64__(WORD2(_MergedGlobals_58), WORD1(_MergedGlobals_58)) || from->var4.var3 != HIWORD(_MergedGlobals_58))
      {
        transparentBlack(v7, v8);
        p_var3 = &from->var3;
        if (from->var3.var0 == qword_27FC68DE0 && __PAIR64__(from->var3.var2, from->var3.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && from->var3.var3 == HIWORD(qword_27FC68DE0))
        {
          v10 = +[WDShading autoForegroundColor];
          [v17 setForeground:v10];
        }

        else
        {
          v10 = [OITSUColor colorWithCsColour:p_var3];
          [v17 setForeground:v10];
        }

        transparentBlack(v12, v13);
        p_var4 = &from->var4;
        if (from->var4.var0 == qword_27FC68DE0 && __PAIR64__(from->var4.var2, from->var4.var1) == __PAIR64__(WORD2(qword_27FC68DE0), WORD1(qword_27FC68DE0)) && from->var4.var3 == HIWORD(qword_27FC68DE0))
        {
          v15 = +[WDShading autoBackgroundColor];
          [v17 setBackground:v15];
        }

        else
        {
          v15 = [OITSUColor colorWithCsColour:p_var4];
          [v17 setBackground:v15];
        }

        goto LABEL_33;
      }

LABEL_19:
      [self setToSolidWhite:v17];
      toCopy = v17;
      goto LABEL_34;
    }

    toCopy = v17;
    if (!from->var5)
    {
      goto LABEL_34;
    }

    var6 = from->var6;
    if (from->var1 == 0xFFFF && var6 == 31)
    {
      if (from->var7 == 31)
      {
        goto LABEL_19;
      }
    }

    else if (!var6)
    {
      v16 = +[WDShading autoForegroundColor];
      [v17 setForeground:v16];
      goto LABEL_29;
    }

    v16 = [OITSUColor colorWithCsColour:&from->var3];
    [v17 setForeground:v16];
LABEL_29:

    if (from->var7)
    {
      [OITSUColor colorWithCsColour:&from->var4];
    }

    else
    {
      +[WDShading autoBackgroundColor];
    }
    v15 = ;
    [v17 setBackground:v15];
LABEL_33:

    toCopy = v17;
  }

LABEL_34:
}

+ (CsColour)fixedUpVersionOfColor:(CsColour)color
{
  v4 = v3;
  v5 = *color.var0;
  *(v4 + 2) = *(*&color + 2);
  *(v4 + 4) = *(*&color + 4);
  if (v5)
  {
    v6 = 255;
  }

  else
  {
    transparentBlack(self, a2);
    v6 = qword_27FC68DE0;
    *(v4 + 2) = WORD1(qword_27FC68DE0);
    *(v4 + 4) = HIDWORD(qword_27FC68DE0);
  }

  *v4 = v6;
  return self;
}

+ (void)write:(id)write to:(WrdShading *)to
{
  writeCopy = write;
  v7 = writeCopy;
  if (writeCopy && to)
  {
    to->var1 = [writeCopy style];
    foreground = [v7 foreground];

    if (foreground)
    {
      foreground2 = [v7 foreground];
      v10 = +[WDShading autoForegroundColor];

      if (foreground2 == v10)
      {
        transparentBlack(v11, v12);
        to->var3 = qword_27FC68DE0;
      }

      else
      {
        foreground3 = [v7 foreground];
        v14 = foreground3;
        if (foreground3)
        {
          objc_msgSend_csColour(foreground3);
        }

        objc_msgSend_fixedUpVersionOfColor_(self);
        to->var3 = v22;
      }
    }

    background = [v7 background];

    if (background)
    {
      background2 = [v7 background];
      v17 = +[WDShading autoBackgroundColor];

      if (background2 == v17)
      {
        transparentBlack(v18, v19);
        to->var4 = qword_27FC68DE0;
      }

      else
      {
        background3 = [v7 background];
        v21 = background3;
        if (background3)
        {
          objc_msgSend_csColour(background3);
        }

        objc_msgSend_fixedUpVersionOfColor_(self);
        to->var4 = v22;
      }
    }
  }
}

@end