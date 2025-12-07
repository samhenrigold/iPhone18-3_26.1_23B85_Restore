@interface _CUIThemeNamedColorGradientRendition
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (void)dealloc;
@end

@implementation _CUIThemeNamedColorGradientRendition

- (CGPoint)gradientStartPoint
{
  x = self->_gradientStart.x;
  y = self->_gradientStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gradientEndPoint
{
  x = self->_gradientEnd.x;
  y = self->_gradientEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeNamedColorGradientRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v27.receiver = self;
  v27.super_class = _CUIThemeNamedColorGradientRendition;
  v5 = [(CUIThemeRendition *)&v27 _initWithCSIHeader:header version:*&version];
  f64 = v5->f64;
  v7 = &header->var0 + 4 * header->var11.var0 + header->var10;
  v10 = *(v7 + 45);
  v8 = (v7 + 180);
  v9 = v10;
  if (v10 == 1095193153)
  {
    v22 = v8->i32[1];
    *&v5[14].f64[1] = v8[1].u32[0];
    if (!v22)
    {
      goto LABEL_29;
    }

    v12 = 0;
    v13 = 0;
    v23 = &v8[2] + 1;
    while (1)
    {
      if (v12)
      {
        if (!v13)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = objc_alloc_init(NSMutableArray);
        if (!v13)
        {
LABEL_27:
          v13 = objc_alloc_init(NSMutableArray);
        }
      }

      v24 = [[NSString alloc] initWithUTF8String:v23 + 2];
      LODWORD(v25) = *v23;
      [v13 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v25)}];
      [v12 addObject:v24];

      v23 = (v23 + v23[1] + 8);
      if (!--v22)
      {
        goto LABEL_30;
      }
    }
  }

  if (v9 == 1195856449)
  {
    v17 = v8[3];
    v5[15] = vcvtq_f64_f32(v8[2]);
    v18 = v8->i32[1];
    *&v5[14].f64[1] = v8[1].u32[0];
    v5[16] = vcvtq_f64_f32(v17);
    if (!v18)
    {
      goto LABEL_29;
    }

    v12 = 0;
    v13 = 0;
    v19 = v8 + 4;
    while (1)
    {
      if (v12)
      {
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = objc_alloc_init(NSMutableArray);
        if (!v13)
        {
LABEL_19:
          v13 = objc_alloc_init(NSMutableArray);
        }
      }

      v20 = [[NSString alloc] initWithUTF8String:&v19[1]];
      LODWORD(v21) = v19->i32[0];
      [v13 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v21)}];
      [v12 addObject:v20];

      v19 = (v19 + v19->u32[1] + 8);
      if (!--v18)
      {
        goto LABEL_30;
      }
    }
  }

  if (v9 == 1313296961)
  {
    v11 = v8->i32[1];
    *&v5[14].f64[1] = v8[1].u32[0];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v8 + 2;
      while (1)
      {
        if (v12)
        {
          if (!v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v12 = objc_alloc_init(NSMutableArray);
          if (!v13)
          {
LABEL_11:
            v13 = objc_alloc_init(NSMutableArray);
          }
        }

        v15 = [[NSString alloc] initWithUTF8String:&v14[1]];
        LODWORD(v16) = v14->i32[0];
        [v13 addObject:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v16)}];
        [v12 addObject:v15];

        v14 = (v14 + v14->u32[1] + 8);
        if (!--v11)
        {
          goto LABEL_30;
        }
      }
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Got a gradient that i don't understand skipping everything");
  }

LABEL_29:
  v13 = 0;
  v12 = 0;
LABEL_30:
  f64[27] = v12;
  f64[28] = v13;
  return f64;
}

@end