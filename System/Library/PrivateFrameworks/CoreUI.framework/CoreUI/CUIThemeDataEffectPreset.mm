@interface CUIThemeDataEffectPreset
- (CUIThemeDataEffectPreset)initWithEffectData:(const _cuieffectdata *)data forScaleFactor:(double)factor;
@end

@implementation CUIThemeDataEffectPreset

- (CUIThemeDataEffectPreset)initWithEffectData:(const _cuieffectdata *)data forScaleFactor:(double)factor
{
  v22.receiver = self;
  v22.super_class = CUIThemeDataEffectPreset;
  v7 = [(CUIShapeEffectPreset *)&v22 init];
  v8 = v7;
  if (data && data->var0 == 1129596504)
  {
    v20 = a2;
    [(CUIShapeEffectPreset *)v7 setScaleFactor:factor];
    var0 = data->var4.var0;
    if (var0)
    {
      v10 = 0;
      var1 = data->var4.var1;
      v12 = &data->var4.var1[var0 + 1];
      v21 = &data->var4.var1[var0 + 4];
      while (1)
      {
        v13 = var1[v10];
        v14 = (v12 + v13);
        if (*(v12 + v13 + 4))
        {
          break;
        }

LABEL_22:
        if (++v10 == var0)
        {
          goto LABEL_23;
        }
      }

      v15 = 0;
      v16 = (v21 + v13);
      while (1)
      {
        v17 = *(v16 - 1);
        if (v17 <= 0xB)
        {
          if (((1 << v17) & 0xFB0) != 0)
          {
            *&v18 = *v16;
            goto LABEL_16;
          }

          if (((1 << v17) & 0xC) != 0)
          {
            v18 = *v16;
            goto LABEL_16;
          }

          if (v17 == 6)
          {
            *&v18 = *v16;
            goto LABEL_16;
          }
        }

        if (v17 >= 2)
        {
          if (v17 >= 0xC)
          {
            _CUILog(4, "Unrecognized effect parameter type %d encountered for effect type %u. Skipping.", *(v16 - 1), *v14);
            goto LABEL_17;
          }

          v18 = 0.0;
        }

        else
        {
          *&v18 = *v16 | (*(v16 + 2) << 16);
        }

LABEL_16:
        [CUIShapeEffectPreset addValue:v8 forParameter:"addValue:forParameter:withEffectType:atEffectIndex:" withEffectType:*&v18 atEffectIndex:?];
LABEL_17:
        ++v15;
        v16 += 2;
        if (v15 >= v14[1])
        {
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    if ([(CUIShapeEffectPreset *)v8 effectCount]!= var0)
    {
      [CUIThemeDataEffectPreset initWithEffectData:v20 forScaleFactor:v8];
    }
  }

  else
  {
    _CUILog(4, "Invalid effect data signature");

    return 0;
  }

  return v8;
}

@end