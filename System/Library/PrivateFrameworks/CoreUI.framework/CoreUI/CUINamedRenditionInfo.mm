@interface CUINamedRenditionInfo
+ (int)subtypeToIndexWithPlatform:(int64_t)platform andInput:(unsigned __int16)input;
- (BOOL)containsVectorGlyphInterpolationSources;
- (BOOL)contentEqualForAttribute:(int)attribute withRenditionInfo:(id)info;
- (BOOL)contentPresentForAttribute:(int)attribute;
- (BOOL)diverseContentPresentForAttribute:(int)attribute;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNamedRenditionInfo:(id)info;
- (CUINamedRenditionInfo)initWithData:(id)data keyFormat:(const _renditionkeyfmt *)format andPlatform:(int64_t)platform;
- (CUINamedRenditionInfo)initWithKeyFormat:(const _renditionkeyfmt *)format andPlatform:(int64_t)platform;
- (id)archivedData;
- (id)bitwiseAndWith:(id)with;
- (id)bitwiseOrWith:(id)with forAttribute:(int)attribute;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (int)attributePresent:(int)present withValue:(unsigned __int16)value;
- (unsigned)getClosestValueOfAttribute:(int)attribute withValue:(unsigned __int16)value;
- (unsigned)getValueOfAttribute:(int)attribute;
- (void)clearAttributePresent:(int)present withValue:(unsigned __int16)value;
- (void)dealloc;
- (void)decrementValue:(int64_t *)value forAttribute:(int)attribute;
- (void)incrementIndex:(unint64_t *)index inValues:(id)values forAttribute:(int)attribute;
- (void)setAttributePresent:(int)present withValue:(unsigned __int16)value;
@end

@implementation CUINamedRenditionInfo

- (BOOL)containsVectorGlyphInterpolationSources
{
  if (![(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:1 size:1]|| ![(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:4 size:1])
  {
    return 0;
  }

  return [(CUINamedRenditionInfo *)self containsVectorGlyphWithWeight:9 size:1];
}

- (void)dealloc
{
  CUIBitVectorDestroy(self->_bitmap);
  v3.receiver = self;
  v3.super_class = CUINamedRenditionInfo;
  [(CUINamedRenditionInfo *)&v3 dealloc];
}

- (id)archivedData
{
  v5 = 0;
  v2 = CUIBitVectorToData(self->_bitmap, &v5);
  v6 = 1;
  v7 = v5;
  v3 = +[NSMutableData data];
  [v3 appendBytes:&v6 length:12];
  [v3 appendBytes:v2 length:v5];
  free(v2);
  return v3;
}

- (CUINamedRenditionInfo)initWithData:(id)data keyFormat:(const _renditionkeyfmt *)format andPlatform:(int64_t)platform
{
  v11.receiver = self;
  v11.super_class = CUINamedRenditionInfo;
  v8 = [(CUINamedRenditionInfo *)&v11 init];
  v8->_keyFormat = format;
  v8->_platform = platform;
  bytes = [data bytes];
  if (*bytes == 1)
  {
    v8->_bitmap = CUIBitVectorFromData(bytes + 3, bytes[2]);
  }

  else
  {

    return 0;
  }

  return v8;
}

- (CUINamedRenditionInfo)initWithKeyFormat:(const _renditionkeyfmt *)format andPlatform:(int64_t)platform
{
  v19.receiver = self;
  v19.super_class = CUINamedRenditionInfo;
  v6 = [(CUINamedRenditionInfo *)&v19 init];
  *(v6 + 1) = CUIBitVectorCreate(32 * format->var2);
  *(v6 + 2) = format;
  *(v6 + 3) = platform;
  var2 = format->var2;
  if (var2)
  {
    v8 = 0;
    var3 = format->var3;
    do
    {
      v10 = var3[v8];
      if (*(v6 + 3) == -1 && v10 == 16)
      {
        if (var2 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = var2;
        }

        v16 = format->var3;
        while (1)
        {
          v17 = *v16++;
          if (v17 == 16)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_23;
          }
        }
      }

      if (v10 > 0x1C || ((1 << v10) & 0x100600E6) == 0)
      {
        v13 = 0;
        v14 = var2;
        if (var2 <= 1uLL)
        {
          v14 = 1;
        }

        while (var3[v13] != v10)
        {
          if (v14 == ++v13)
          {
            goto LABEL_23;
          }
        }

        if (v13 < 33)
        {
          goto LABEL_25;
        }

        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", var3[v8], 0);
      }

LABEL_23:
      if ((CUIBitVectorSetBitRange(*(v6 + 1), 32 * v8, 32 * v8 + 32) & 0x80000000) != 0)
      {
        [CUINamedRenditionInfo initWithKeyFormat:andPlatform:];
      }

      var2 = format->var2;
LABEL_25:
      ++v8;
    }

    while (v8 < var2);
  }

  return v6;
}

- (BOOL)isEqualToNamedRenditionInfo:(id)info
{
  if (*(info + 3) != self->_platform)
  {
    return 0;
  }

  if (*(*(info + 2) + 8) != self->_keyFormat->var2)
  {
    return 0;
  }

  if (!CUIBitVectorEqual(self->_bitmap, *(info + 1)))
  {
    keyFormat = self->_keyFormat;
    if (keyFormat->var2)
    {
      v6 = 0;
      while (keyFormat->var3[v6] == *(*(info + 2) + 4 * v6 + 12))
      {
        v7 = v6;
        v8 = [(CUINamedRenditionInfo *)self contentPresentForAttribute:?];
        if (v8 != [info contentPresentForAttribute:*(*(info + 2) + 4 * v7 + 12)])
        {
          break;
        }

        v9 = [(CUINamedRenditionInfo *)self diverseContentPresentForAttribute:self->_keyFormat->var3[v7]];
        if (v9 != [info diverseContentPresentForAttribute:*(*(info + 2) + 4 * v7 + 12)])
        {
          break;
        }

        if ([(CUINamedRenditionInfo *)self contentPresentForAttribute:self->_keyFormat->var3[v7]])
        {
          v10 = [[NSMutableArray alloc] initWithCapacity:4];
          v11 = [[NSMutableArray alloc] initWithCapacity:4];
          platform = self->_platform;
          v13 = self->_keyFormat->var3[v7];
          v14 = CUIBitVectorBucketValue(self->_bitmap, 32 * v7);
          if (v14 == -1)
          {
            [v10 addObject:@"<all>"];
          }

          else
          {
            v15 = v14;
            v16 = 0;
            do
            {
              if ((v15 >> v16))
              {
                v17 = v16;
                if (v13 == 16)
                {
                  v18 = __CUISubtypeFromIndex(platform, v16);
                  if (v18 >= 0)
                  {
                    v17 = v18;
                  }

                  else
                  {
                    v17 = v16;
                  }
                }

                [v10 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v17)}];
              }

              v16 = (v16 + 1);
            }

            while (v16 != 32);
          }

          v19 = *(info + 3);
          v20 = *(*(info + 2) + 4 * v7 + 12);
          v21 = CUIBitVectorBucketValue(*(info + 1), 32 * v7);
          if (v21 == -1)
          {
            [v11 addObject:@"<all>"];
          }

          else
          {
            v22 = v21;
            v23 = 0;
            do
            {
              if ((v22 >> v23))
              {
                v24 = v23;
                if (v20 == 16)
                {
                  v25 = __CUISubtypeFromIndex(v19, v23);
                  if (v25 >= 0)
                  {
                    v24 = v25;
                  }

                  else
                  {
                    v24 = v23;
                  }
                }

                [v11 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v24)}];
              }

              v23 = (v23 + 1);
            }

            while (v23 != 32);
          }

          v26 = [v10 isEqualToArray:v11];

          if (!v26)
          {
            break;
          }
        }

        v6 = v7 + 1;
        keyFormat = self->_keyFormat;
        result = 1;
        if ((v7 + 1) >= keyFormat->var2)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return 1;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CUINamedRenditionInfo *)self isEqualToNamedRenditionInfo:equal];
}

- (id)description
{
  v3 = CUIBitVectorToString(self->_bitmap);
  v4 = objc_opt_class();
  v5 = [NSString stringWithFormat:@"<%@: %p %s>", NSStringFromClass(v4), self, v3];
  free(v3);
  return v5;
}

- (id)debugDescription
{
  bzero(__str, 0x800uLL);
  keyFormat = self->_keyFormat;
  v4 = [[NSMutableArray alloc] initWithCapacity:32];
  [v4 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "| Index |            Attribute             | Is Content Present | Is Diverse Content Present |            Values          |")}];
  v20 = v4;
  [v4 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "|-------|----------------------------------|--------------------|----------------------------|----------------------------|")}];
  if (keyFormat->var2)
  {
    v5 = 0;
    var3 = keyFormat->var3;
    do
    {
      v6 = var3[v5];
      v21 = CUIThemeAttributeNameToString(var3[v5]);
      bzero(__str, 0x800uLL);
      v7 = [(CUINamedRenditionInfo *)self contentPresentForAttribute:v6];
      v8 = [(CUINamedRenditionInfo *)self diverseContentPresentForAttribute:v6];
      v9 = [[NSMutableArray alloc] initWithCapacity:4];
      platform = self->_platform;
      v11 = var3[v5];
      v12 = CUIBitVectorBucketValue(self->_bitmap, 32 * v5);
      if (v12 == -1)
      {
        [v9 addObject:@"<all>"];
      }

      else
      {
        v13 = v12;
        v14 = 0;
        do
        {
          if ((v13 >> v14))
          {
            v15 = v14;
            if (v11 == 16)
            {
              v16 = __CUISubtypeFromIndex(platform, v14);
              if (v16 >= 0)
              {
                v15 = v16;
              }

              else
              {
                v15 = v14;
              }
            }

            [v9 addObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v15)}];
          }

          v14 = (v14 + 1);
        }

        while (v14 != 32);
      }

      snprintf(__str, 0x800uLL, "| %-5d | %-32s | %-18d | %-26d | %-26s |", v5, v21, v7, v8, [objc_msgSend(v9 componentsJoinedByString:{@", "), "UTF8String"}]);
      [v20 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];

      ++v5;
    }

    while (v5 < keyFormat->var2);
  }

  v17 = [v20 componentsJoinedByString:@"\n"];

  return v17;
}

- (int)attributePresent:(int)present withValue:(unsigned __int16)value
{
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (present == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return -1;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v10 = *var3++;
      if (v10 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return -1;
      }
    }
  }

  if (present <= 0x1C)
  {
    if (((1 << present) & 0x100600E6) != 0)
    {
      return -1;
    }

    if (present == 13)
    {
      *&value = value != 0;
      goto LABEL_23;
    }

    if (present != 16)
    {
      goto LABEL_23;
    }

    if (platform != -1)
    {
      if (!value)
      {
        goto LABEL_23;
      }

      if (platform <= 3)
      {
        if (platform)
        {
          if (platform == 3)
          {
            if (value != 3840)
            {
              if (value != 1088)
              {
                if (value != 720)
                {
                  goto LABEL_102;
                }

                goto LABEL_188;
              }

LABEL_109:
              *&value = 5;
              goto LABEL_23;
            }

LABEL_170:
            *&value = 7;
            goto LABEL_23;
          }

          goto LABEL_65;
        }

        if (value <= 1963)
        {
          if (value == 1665)
          {
            goto LABEL_177;
          }

          if (value == 1864)
          {
            goto LABEL_78;
          }

LABEL_102:
          [CUINamedRenditionInfo attributePresent:value withValue:platform];
        }

        if (value != 1964)
        {
          if (value != 2234)
          {
            goto LABEL_102;
          }

          goto LABEL_116;
        }

LABEL_131:
        *&value = 26;
        goto LABEL_23;
      }

      if (platform == 5)
      {
        if (value != 3648)
        {
          goto LABEL_102;
        }

        goto LABEL_78;
      }

      if (platform != 4)
      {
LABEL_65:
        if (platform > 2)
        {
          goto LABEL_102;
        }

        if (value > 2435)
        {
          if (value > 2735)
          {
            if (value > 2795)
            {
              if (value <= 3023)
              {
                if (value != 2796)
                {
                  if (value != 2868)
                  {
                    goto LABEL_102;
                  }

LABEL_82:
                  *&value = 14;
                  goto LABEL_23;
                }

LABEL_135:
                *&value = 30;
                goto LABEL_23;
              }

              if (value != 3024)
              {
                if (value != 32401)
                {
                  goto LABEL_102;
                }

                goto LABEL_187;
              }

LABEL_188:
              *&value = 6;
              goto LABEL_23;
            }

            if (value != 2736)
            {
              if (value != 2752)
              {
                if (value != 2778)
                {
                  goto LABEL_102;
                }

                goto LABEL_176;
              }

LABEL_178:
              *&value = 8;
              goto LABEL_23;
            }

LABEL_177:
            *&value = 31;
            goto LABEL_23;
          }

          if (value <= 2621)
          {
            if (value != 2436)
            {
              if (value != 2532)
              {
                if (value != 2556)
                {
                  goto LABEL_102;
                }

LABEL_155:
                *&value = 29;
                goto LABEL_23;
              }

LABEL_156:
              *&value = 22;
              goto LABEL_23;
            }

LABEL_160:
            *&value = 11;
            goto LABEL_23;
          }

          if (value != 2622)
          {
            if (value != 2688)
            {
              if (value != 2732)
              {
                goto LABEL_102;
              }

              goto LABEL_182;
            }

LABEL_184:
            *&value = 12;
            goto LABEL_23;
          }

LABEL_183:
          *&value = 13;
          goto LABEL_23;
        }

        if (value <= 2223)
        {
          if (value <= 569)
          {
            if (value == 163)
            {
              goto LABEL_109;
            }

            if (value != 568)
            {
              if (value != 569)
              {
                goto LABEL_102;
              }

LABEL_157:
              *&value = 2;
              goto LABEL_23;
            }

LABEL_78:
            *&value = 1;
            goto LABEL_23;
          }

          if (value != 570)
          {
            if (value != 1792)
            {
              if (value != 2160)
              {
                goto LABEL_102;
              }

              goto LABEL_164;
            }

LABEL_165:
            *&value = 16;
            goto LABEL_23;
          }

LABEL_166:
          *&value = 3;
          goto LABEL_23;
        }

        if (value <= 2359)
        {
          if (value != 2224)
          {
            if (value != 2266)
            {
              if (value != 2340)
              {
                goto LABEL_102;
              }

              goto LABEL_143;
            }

LABEL_158:
            *&value = 25;
            goto LABEL_23;
          }

LABEL_159:
          *&value = 10;
          goto LABEL_23;
        }

        if (value != 2360)
        {
          if (value != 2388)
          {
            if (value != 2420)
            {
              goto LABEL_102;
            }

            goto LABEL_170;
          }

LABEL_171:
          *&value = 15;
          goto LABEL_23;
        }

LABEL_172:
        *&value = 20;
        goto LABEL_23;
      }

      if (value <= 445)
      {
        if (value <= 383)
        {
          if (value == 320)
          {
            goto LABEL_178;
          }

          if (value == 340)
          {
            goto LABEL_183;
          }

          goto LABEL_102;
        }

        if (value != 384)
        {
          if (value == 390)
          {
            goto LABEL_82;
          }

          if (value != 430)
          {
            goto LABEL_102;
          }

LABEL_138:
          *&value = 23;
          goto LABEL_23;
        }

LABEL_137:
        *&value = 9;
        goto LABEL_23;
      }

      if (value > 495)
      {
        if (value == 496)
        {
          goto LABEL_135;
        }

        if (value != 502)
        {
          if (value == 514)
          {
            goto LABEL_177;
          }

          goto LABEL_102;
        }

LABEL_136:
        *&value = 28;
        goto LABEL_23;
      }

      if (value == 446)
      {
        goto LABEL_155;
      }

      if (value != 484)
      {
        goto LABEL_102;
      }

LABEL_154:
      *&value = 24;
      goto LABEL_23;
    }

    if (value > 2159)
    {
      if (value > 2531)
      {
        if (value > 2777)
        {
          if (value > 3839)
          {
            if (value == 3840)
            {
              goto LABEL_170;
            }

            if (value == 32401)
            {
LABEL_187:
              *&value = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (value == 2778)
            {
LABEL_176:
              *&value = 19;
              goto LABEL_23;
            }

            if (value == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (value > 2687)
        {
          if (value == 2688)
          {
            goto LABEL_184;
          }

          if (value == 2732)
          {
LABEL_182:
            *&value = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (value == 2532)
          {
            goto LABEL_156;
          }

          if (value == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (value > 2339)
      {
        if (value > 2387)
        {
          if (value == 2388)
          {
            goto LABEL_171;
          }

          if (value == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (value == 2340)
          {
LABEL_143:
            *&value = 18;
            goto LABEL_23;
          }

          if (value == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (value > 2233)
      {
        if (value == 2234)
        {
LABEL_116:
          *&value = 27;
          goto LABEL_23;
        }

        if (value == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (value == 2160)
        {
LABEL_164:
          *&value = 21;
          goto LABEL_23;
        }

        if (value == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (value > 501)
    {
      if (value > 719)
      {
        if (value > 1791)
        {
          if (value == 1792)
          {
            goto LABEL_165;
          }

          if (value == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (value == 720)
          {
            goto LABEL_188;
          }

          if (value == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (value > 568)
      {
        if (value == 569)
        {
          goto LABEL_157;
        }

        if (value == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (value == 502)
        {
          goto LABEL_136;
        }

        if (value == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (value > 383)
    {
      if (value > 429)
      {
        if (value == 430)
        {
          goto LABEL_138;
        }

        if (value == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (value == 384)
        {
          goto LABEL_137;
        }

        if (value == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (value > 319)
    {
      if (value == 320)
      {
        goto LABEL_178;
      }

      if (value == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!value)
      {
        goto LABEL_23;
      }

      if (value == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", value);
    *&value = 0xFFFF;
  }

LABEL_23:
  v12 = keyFormat->var2;
  if (!v12)
  {
    return -1;
  }

  v13 = 0;
  valueCopy = value;
  while (keyFormat->var3[v13] != present)
  {
    ++v13;
    valueCopy += 32;
    if (v12 == v13)
    {
      return -1;
    }
  }

  if (v13 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", present, value);
    return -1;
  }

  if ((valueCopy & 0x80000000) != 0)
  {
    return -1;
  }

  bitmap = self->_bitmap;

  return CUIBitVectorIsBitSet(bitmap, valueCopy);
}

- (unsigned)getValueOfAttribute:(int)attribute
{
  keyFormat = self->_keyFormat;
  if (attribute == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      result = 0;
      return __CUISubtypeFromIndex(self->_platform, result);
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v8 = *var3++;
      if (v8 == 16)
      {
        break;
      }

      if (!--var2)
      {
        goto LABEL_10;
      }
    }
  }

  if (attribute <= 0x1C && ((1 << attribute) & 0x100600E6) != 0)
  {
    goto LABEL_10;
  }

  v10 = keyFormat->var2;
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  v13 = keyFormat->var3;
  while (v13[v12] != attribute)
  {
    result = 0;
    ++v12;
    v11 += 32;
    if (v10 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v12 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, 0);
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v14 = CUIBitVectorBucketValue(self->_bitmap, v11);
  v15 = 0;
  while (((v14 >> v15) & 1) == 0)
  {
    result = 0;
    if (++v15 == 32)
    {
      goto LABEL_11;
    }
  }

  result = v15;
LABEL_11:
  if (attribute == 16)
  {
    return __CUISubtypeFromIndex(self->_platform, result);
  }

  return result;
}

- (unsigned)getClosestValueOfAttribute:(int)attribute withValue:(unsigned __int16)value
{
  valueCopy = value;
  keyFormat = self->_keyFormat;
  if (attribute == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v8 = *var3++;
      if (v8 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if (attribute <= 0x1C && ((1 << attribute) & 0x100600E6) != 0)
  {
    return 0;
  }

  v11 = keyFormat->var2;
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = keyFormat->var3;
  while (v14[v13] != attribute)
  {
    v9 = 0;
    ++v13;
    v12 += 32;
    if (v11 == v13)
    {
      return v9;
    }
  }

  if (v13 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, 0);
    return 0;
  }

  if ((v13 & 0x80000000) != 0)
  {
    return 0;
  }

  v15 = CUIBitVectorBucketValue(self->_bitmap, v12);
  while (((v15 >> valueCopy) & 1) == 0)
  {
    v9 = 0;
    v16 = __OFSUB__(valueCopy--, 1);
    if (valueCopy < 0 != v16)
    {
      return v9;
    }
  }

  return valueCopy;
}

- (BOOL)contentPresentForAttribute:(int)attribute
{
  keyFormat = self->_keyFormat;
  if (attribute == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v6 = *var3++;
      if (v6 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if ((attribute - 1) >= 0x1C || ((0x8030073u >> (attribute - 1)) & 1) == 0)
  {
    v7 = keyFormat->var2;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = keyFormat->var3;
      while (v10[v9] != attribute)
      {
        ++v9;
        v8 += 32;
        if (v7 == v9)
        {
          return 0;
        }
      }

      if (v9 < 33)
      {
        if ((v9 & 0x80000000) == 0 && CUIBitVectorNumberOfBitsSetInBucket(self->_bitmap, v8) > 0)
        {
          return 1;
        }
      }

      else
      {
        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, 0);
      }
    }
  }

  return 0;
}

- (BOOL)contentEqualForAttribute:(int)attribute withRenditionInfo:(id)info
{
  keyFormat = self->_keyFormat;
  if (attribute == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v8 = *var3++;
      if (v8 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if ((attribute - 1) >= 0x1C || ((0x8030073u >> (attribute - 1)) & 1) == 0)
  {
    v9 = keyFormat->var2;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = keyFormat->var3;
      while (v12[v11] != attribute)
      {
        ++v11;
        v10 += 32;
        if (v9 == v11)
        {
          return 0;
        }
      }

      if (v11 < 33)
      {
        if ((v11 & 0x80000000) == 0)
        {
          v13 = CUIBitVectorBucketValue(self->_bitmap, v10);
          return v13 == CUIBitVectorBucketValue(*(info + 1), v10);
        }
      }

      else
      {
        _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, 0);
      }
    }
  }

  return 0;
}

- (BOOL)diverseContentPresentForAttribute:(int)attribute
{
  keyFormat = self->_keyFormat;
  if (attribute == 16 && self->_platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return 0;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v7 = *var3++;
      if (v7 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return 0;
      }
    }
  }

  if (attribute - 1) < 0x1C && ((0x8030073u >> (attribute - 1)))
  {
    return 0;
  }

  v8 = keyFormat->var2;
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = keyFormat->var3;
  while (v11[v10] != attribute)
  {
    ++v10;
    v9 += 32;
    if (v8 == v10)
    {
      return 0;
    }
  }

  if (v10 >= 33)
  {
    _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, 0);
    return 0;
  }

  return (v10 & 0x80000000) == 0 && (CUIBitVectorNumberOfBitsSetInBucket(self->_bitmap, v9) != 1 || CUIBitVectorIsBitSet(self->_bitmap, v9) != 1);
}

- (void)setAttributePresent:(int)present withValue:(unsigned __int16)value
{
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (present == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v10 = *var3++;
      if (v10 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (present > 0x1C)
  {
    goto LABEL_23;
  }

  if (((1 << present) & 0x100600E6) != 0)
  {
    return;
  }

  if (present == 13)
  {
    *&value = value != 0;
    goto LABEL_23;
  }

  if (present != 16)
  {
    goto LABEL_23;
  }

  if (platform == -1)
  {
    if (value > 2159)
    {
      if (value > 2531)
      {
        if (value > 2777)
        {
          if (value > 3839)
          {
            if (value == 3840)
            {
              goto LABEL_170;
            }

            if (value == 32401)
            {
LABEL_187:
              *&value = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (value == 2778)
            {
LABEL_176:
              *&value = 19;
              goto LABEL_23;
            }

            if (value == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (value > 2687)
        {
          if (value == 2688)
          {
            goto LABEL_184;
          }

          if (value == 2732)
          {
LABEL_182:
            *&value = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (value == 2532)
          {
            goto LABEL_156;
          }

          if (value == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (value > 2339)
      {
        if (value > 2387)
        {
          if (value == 2388)
          {
            goto LABEL_171;
          }

          if (value == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (value == 2340)
          {
LABEL_143:
            *&value = 18;
            goto LABEL_23;
          }

          if (value == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (value > 2233)
      {
        if (value == 2234)
        {
LABEL_116:
          *&value = 27;
          goto LABEL_23;
        }

        if (value == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (value == 2160)
        {
LABEL_164:
          *&value = 21;
          goto LABEL_23;
        }

        if (value == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (value > 501)
    {
      if (value > 719)
      {
        if (value > 1791)
        {
          if (value == 1792)
          {
            goto LABEL_165;
          }

          if (value == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (value == 720)
          {
            goto LABEL_188;
          }

          if (value == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (value > 568)
      {
        if (value == 569)
        {
          goto LABEL_157;
        }

        if (value == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (value == 502)
        {
          goto LABEL_136;
        }

        if (value == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (value > 383)
    {
      if (value > 429)
      {
        if (value == 430)
        {
          goto LABEL_138;
        }

        if (value == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (value == 384)
        {
          goto LABEL_137;
        }

        if (value == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (value > 319)
    {
      if (value == 320)
      {
        goto LABEL_178;
      }

      if (value == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!value)
      {
        goto LABEL_23;
      }

      if (value == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", value);
    *&value = 0xFFFF;
    goto LABEL_23;
  }

  if (!value)
  {
    goto LABEL_23;
  }

  if (platform <= 3)
  {
    if (platform)
    {
      if (platform == 3)
      {
        if (value != 3840)
        {
          if (value != 1088)
          {
            if (value != 720)
            {
              goto LABEL_102;
            }

            goto LABEL_188;
          }

LABEL_109:
          *&value = 5;
          goto LABEL_23;
        }

LABEL_170:
        *&value = 7;
        goto LABEL_23;
      }

      goto LABEL_65;
    }

    if (value <= 1963)
    {
      if (value == 1665)
      {
        goto LABEL_177;
      }

      if (value == 1864)
      {
        goto LABEL_78;
      }

LABEL_102:
      [CUINamedRenditionInfo attributePresent:value withValue:platform];
    }

    if (value != 1964)
    {
      if (value != 2234)
      {
        goto LABEL_102;
      }

      goto LABEL_116;
    }

LABEL_131:
    *&value = 26;
    goto LABEL_23;
  }

  if (platform == 5)
  {
    if (value != 3648)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (platform == 4)
  {
    if (value <= 445)
    {
      if (value <= 383)
      {
        if (value == 320)
        {
          goto LABEL_178;
        }

        if (value == 340)
        {
          goto LABEL_183;
        }

        goto LABEL_102;
      }

      if (value != 384)
      {
        if (value == 390)
        {
          goto LABEL_82;
        }

        if (value != 430)
        {
          goto LABEL_102;
        }

LABEL_138:
        *&value = 23;
        goto LABEL_23;
      }

LABEL_137:
      *&value = 9;
      goto LABEL_23;
    }

    if (value > 495)
    {
      if (value == 496)
      {
        goto LABEL_135;
      }

      if (value != 502)
      {
        if (value == 514)
        {
          goto LABEL_177;
        }

        goto LABEL_102;
      }

LABEL_136:
      *&value = 28;
      goto LABEL_23;
    }

    if (value == 446)
    {
      goto LABEL_155;
    }

    if (value != 484)
    {
      goto LABEL_102;
    }

LABEL_154:
    *&value = 24;
    goto LABEL_23;
  }

LABEL_65:
  if (platform > 2)
  {
    goto LABEL_102;
  }

  if (value <= 2435)
  {
    if (value <= 2223)
    {
      if (value <= 569)
      {
        if (value == 163)
        {
          goto LABEL_109;
        }

        if (value != 568)
        {
          if (value != 569)
          {
            goto LABEL_102;
          }

LABEL_157:
          *&value = 2;
          goto LABEL_23;
        }

LABEL_78:
        *&value = 1;
        goto LABEL_23;
      }

      if (value != 570)
      {
        if (value != 1792)
        {
          if (value != 2160)
          {
            goto LABEL_102;
          }

          goto LABEL_164;
        }

LABEL_165:
        *&value = 16;
        goto LABEL_23;
      }

LABEL_166:
      *&value = 3;
      goto LABEL_23;
    }

    if (value <= 2359)
    {
      if (value != 2224)
      {
        if (value != 2266)
        {
          if (value != 2340)
          {
            goto LABEL_102;
          }

          goto LABEL_143;
        }

LABEL_158:
        *&value = 25;
        goto LABEL_23;
      }

LABEL_159:
      *&value = 10;
      goto LABEL_23;
    }

    if (value != 2360)
    {
      if (value != 2388)
      {
        if (value != 2420)
        {
          goto LABEL_102;
        }

        goto LABEL_170;
      }

LABEL_171:
      *&value = 15;
      goto LABEL_23;
    }

LABEL_172:
    *&value = 20;
    goto LABEL_23;
  }

  if (value <= 2735)
  {
    if (value <= 2621)
    {
      if (value != 2436)
      {
        if (value != 2532)
        {
          if (value != 2556)
          {
            goto LABEL_102;
          }

LABEL_155:
          *&value = 29;
          goto LABEL_23;
        }

LABEL_156:
        *&value = 22;
        goto LABEL_23;
      }

LABEL_160:
      *&value = 11;
      goto LABEL_23;
    }

    if (value != 2622)
    {
      if (value != 2688)
      {
        if (value != 2732)
        {
          goto LABEL_102;
        }

        goto LABEL_182;
      }

LABEL_184:
      *&value = 12;
      goto LABEL_23;
    }

LABEL_183:
    *&value = 13;
    goto LABEL_23;
  }

  if (value <= 2795)
  {
    if (value != 2736)
    {
      if (value != 2752)
      {
        if (value != 2778)
        {
          goto LABEL_102;
        }

        goto LABEL_176;
      }

LABEL_178:
      *&value = 8;
      goto LABEL_23;
    }

LABEL_177:
    *&value = 31;
    goto LABEL_23;
  }

  if (value <= 3023)
  {
    if (value != 2796)
    {
      if (value != 2868)
      {
        goto LABEL_102;
      }

LABEL_82:
      *&value = 14;
      goto LABEL_23;
    }

LABEL_135:
    *&value = 30;
    goto LABEL_23;
  }

  if (value != 3024)
  {
    if (value != 32401)
    {
      goto LABEL_102;
    }

    goto LABEL_187;
  }

LABEL_188:
  *&value = 6;
LABEL_23:
  v11 = keyFormat->var2;
  if (v11)
  {
    v12 = 0;
    valueCopy = value;
    while (keyFormat->var3[v12] != present)
    {
      ++v12;
      valueCopy += 32;
      if (v11 == v12)
      {
        return;
      }
    }

    if (v12 < 33)
    {
      if ((valueCopy & 0x80000000) == 0)
      {
        bitmap = self->_bitmap;

        CUIBitVectorSetBit(bitmap, valueCopy);
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", present, value);
    }
  }
}

- (void)clearAttributePresent:(int)present withValue:(unsigned __int16)value
{
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (present == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v10 = *var3++;
      if (v10 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (present > 0x1C)
  {
    goto LABEL_23;
  }

  if (((1 << present) & 0x100600E6) != 0)
  {
    return;
  }

  if (present == 13)
  {
    *&value = value != 0;
    goto LABEL_23;
  }

  if (present != 16)
  {
    goto LABEL_23;
  }

  if (platform == -1)
  {
    if (value > 2159)
    {
      if (value > 2531)
      {
        if (value > 2777)
        {
          if (value > 3839)
          {
            if (value == 3840)
            {
              goto LABEL_170;
            }

            if (value == 32401)
            {
LABEL_187:
              *&value = 17;
              goto LABEL_23;
            }
          }

          else
          {
            if (value == 2778)
            {
LABEL_176:
              *&value = 19;
              goto LABEL_23;
            }

            if (value == 2796)
            {
              goto LABEL_135;
            }
          }
        }

        else if (value > 2687)
        {
          if (value == 2688)
          {
            goto LABEL_184;
          }

          if (value == 2732)
          {
LABEL_182:
            *&value = 4;
            goto LABEL_23;
          }
        }

        else
        {
          if (value == 2532)
          {
            goto LABEL_156;
          }

          if (value == 2556)
          {
            goto LABEL_155;
          }
        }
      }

      else if (value > 2339)
      {
        if (value > 2387)
        {
          if (value == 2388)
          {
            goto LABEL_171;
          }

          if (value == 2436)
          {
            goto LABEL_160;
          }
        }

        else
        {
          if (value == 2340)
          {
LABEL_143:
            *&value = 18;
            goto LABEL_23;
          }

          if (value == 2360)
          {
            goto LABEL_172;
          }
        }
      }

      else if (value > 2233)
      {
        if (value == 2234)
        {
LABEL_116:
          *&value = 27;
          goto LABEL_23;
        }

        if (value == 2266)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (value == 2160)
        {
LABEL_164:
          *&value = 21;
          goto LABEL_23;
        }

        if (value == 2224)
        {
          goto LABEL_159;
        }
      }
    }

    else if (value > 501)
    {
      if (value > 719)
      {
        if (value > 1791)
        {
          if (value == 1792)
          {
            goto LABEL_165;
          }

          if (value == 1964)
          {
            goto LABEL_131;
          }
        }

        else
        {
          if (value == 720)
          {
            goto LABEL_188;
          }

          if (value == 1665)
          {
            goto LABEL_177;
          }
        }
      }

      else if (value > 568)
      {
        if (value == 569)
        {
          goto LABEL_157;
        }

        if (value == 570)
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (value == 502)
        {
          goto LABEL_136;
        }

        if (value == 568)
        {
          goto LABEL_78;
        }
      }
    }

    else if (value > 383)
    {
      if (value > 429)
      {
        if (value == 430)
        {
          goto LABEL_138;
        }

        if (value == 484)
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (value == 384)
        {
          goto LABEL_137;
        }

        if (value == 390)
        {
          goto LABEL_82;
        }
      }
    }

    else if (value > 319)
    {
      if (value == 320)
      {
        goto LABEL_178;
      }

      if (value == 340)
      {
        goto LABEL_183;
      }
    }

    else
    {
      if (!value)
      {
        goto LABEL_23;
      }

      if (value == 163)
      {
        goto LABEL_109;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", value);
    *&value = 0xFFFF;
    goto LABEL_23;
  }

  if (!value)
  {
    goto LABEL_23;
  }

  if (platform <= 3)
  {
    if (platform)
    {
      if (platform == 3)
      {
        if (value != 3840)
        {
          if (value != 1088)
          {
            if (value != 720)
            {
              goto LABEL_102;
            }

            goto LABEL_188;
          }

LABEL_109:
          *&value = 5;
          goto LABEL_23;
        }

LABEL_170:
        *&value = 7;
        goto LABEL_23;
      }

      goto LABEL_65;
    }

    if (value <= 1963)
    {
      if (value == 1665)
      {
        goto LABEL_177;
      }

      if (value == 1864)
      {
        goto LABEL_78;
      }

LABEL_102:
      [CUINamedRenditionInfo attributePresent:value withValue:platform];
    }

    if (value != 1964)
    {
      if (value != 2234)
      {
        goto LABEL_102;
      }

      goto LABEL_116;
    }

LABEL_131:
    *&value = 26;
    goto LABEL_23;
  }

  if (platform == 5)
  {
    if (value != 3648)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (platform == 4)
  {
    if (value <= 445)
    {
      if (value <= 383)
      {
        if (value == 320)
        {
          goto LABEL_178;
        }

        if (value == 340)
        {
          goto LABEL_183;
        }

        goto LABEL_102;
      }

      if (value != 384)
      {
        if (value == 390)
        {
          goto LABEL_82;
        }

        if (value != 430)
        {
          goto LABEL_102;
        }

LABEL_138:
        *&value = 23;
        goto LABEL_23;
      }

LABEL_137:
      *&value = 9;
      goto LABEL_23;
    }

    if (value > 495)
    {
      if (value == 496)
      {
        goto LABEL_135;
      }

      if (value != 502)
      {
        if (value == 514)
        {
          goto LABEL_177;
        }

        goto LABEL_102;
      }

LABEL_136:
      *&value = 28;
      goto LABEL_23;
    }

    if (value == 446)
    {
      goto LABEL_155;
    }

    if (value != 484)
    {
      goto LABEL_102;
    }

LABEL_154:
    *&value = 24;
    goto LABEL_23;
  }

LABEL_65:
  if (platform > 2)
  {
    goto LABEL_102;
  }

  if (value <= 2435)
  {
    if (value <= 2223)
    {
      if (value <= 569)
      {
        if (value == 163)
        {
          goto LABEL_109;
        }

        if (value != 568)
        {
          if (value != 569)
          {
            goto LABEL_102;
          }

LABEL_157:
          *&value = 2;
          goto LABEL_23;
        }

LABEL_78:
        *&value = 1;
        goto LABEL_23;
      }

      if (value != 570)
      {
        if (value != 1792)
        {
          if (value != 2160)
          {
            goto LABEL_102;
          }

          goto LABEL_164;
        }

LABEL_165:
        *&value = 16;
        goto LABEL_23;
      }

LABEL_166:
      *&value = 3;
      goto LABEL_23;
    }

    if (value <= 2359)
    {
      if (value != 2224)
      {
        if (value != 2266)
        {
          if (value != 2340)
          {
            goto LABEL_102;
          }

          goto LABEL_143;
        }

LABEL_158:
        *&value = 25;
        goto LABEL_23;
      }

LABEL_159:
      *&value = 10;
      goto LABEL_23;
    }

    if (value != 2360)
    {
      if (value != 2388)
      {
        if (value != 2420)
        {
          goto LABEL_102;
        }

        goto LABEL_170;
      }

LABEL_171:
      *&value = 15;
      goto LABEL_23;
    }

LABEL_172:
    *&value = 20;
    goto LABEL_23;
  }

  if (value <= 2735)
  {
    if (value <= 2621)
    {
      if (value != 2436)
      {
        if (value != 2532)
        {
          if (value != 2556)
          {
            goto LABEL_102;
          }

LABEL_155:
          *&value = 29;
          goto LABEL_23;
        }

LABEL_156:
        *&value = 22;
        goto LABEL_23;
      }

LABEL_160:
      *&value = 11;
      goto LABEL_23;
    }

    if (value != 2622)
    {
      if (value != 2688)
      {
        if (value != 2732)
        {
          goto LABEL_102;
        }

        goto LABEL_182;
      }

LABEL_184:
      *&value = 12;
      goto LABEL_23;
    }

LABEL_183:
    *&value = 13;
    goto LABEL_23;
  }

  if (value <= 2795)
  {
    if (value != 2736)
    {
      if (value != 2752)
      {
        if (value != 2778)
        {
          goto LABEL_102;
        }

        goto LABEL_176;
      }

LABEL_178:
      *&value = 8;
      goto LABEL_23;
    }

LABEL_177:
    *&value = 31;
    goto LABEL_23;
  }

  if (value <= 3023)
  {
    if (value != 2796)
    {
      if (value != 2868)
      {
        goto LABEL_102;
      }

LABEL_82:
      *&value = 14;
      goto LABEL_23;
    }

LABEL_135:
    *&value = 30;
    goto LABEL_23;
  }

  if (value != 3024)
  {
    if (value != 32401)
    {
      goto LABEL_102;
    }

    goto LABEL_187;
  }

LABEL_188:
  *&value = 6;
LABEL_23:
  v11 = keyFormat->var2;
  if (v11)
  {
    v12 = 0;
    valueCopy = value;
    while (keyFormat->var3[v12] != present)
    {
      ++v12;
      valueCopy += 32;
      if (v11 == v12)
      {
        return;
      }
    }

    if (v12 < 33)
    {
      if ((valueCopy & 0x80000000) == 0)
      {
        bitmap = self->_bitmap;

        CUIBitVectorUnSetBit(bitmap, valueCopy);
      }
    }

    else
    {
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", present, value);
    }
  }
}

- (void)decrementValue:(int64_t *)value forAttribute:(int)attribute
{
  v7 = *value;
  keyFormat = self->_keyFormat;
  platform = self->_platform;
  if (attribute == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v12 = *var3++;
      if (v12 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (attribute <= 0x1C)
  {
    if (((1 << attribute) & 0x100600E6) != 0)
    {
      return;
    }

    if (attribute == 13)
    {
      LOWORD(v7) = *value != 0;
    }

    else if (attribute == 16)
    {
      if (platform == -1)
      {
        v24 = *value;
        if (v24 > 0x86F)
        {
          if (*value > 0x9E3u)
          {
            if (*value > 0xAD9u)
            {
              if (*value > 0xEFFu)
              {
                if (v24 == 3840)
                {
                  goto LABEL_357;
                }

                if (v24 == 32401)
                {
LABEL_374:
                  LOWORD(v7) = 17;
                  goto LABEL_23;
                }
              }

              else
              {
                if (v24 == 2778)
                {
LABEL_363:
                  LOWORD(v7) = 19;
                  goto LABEL_23;
                }

                if (v24 == 2796)
                {
                  goto LABEL_322;
                }
              }
            }

            else if (*value > 0xA7Fu)
            {
              if (v24 == 2688)
              {
                goto LABEL_371;
              }

              if (v24 == 2732)
              {
LABEL_369:
                LOWORD(v7) = 4;
                goto LABEL_23;
              }
            }

            else
            {
              if (v24 == 2532)
              {
                goto LABEL_343;
              }

              if (v24 == 2556)
              {
                goto LABEL_342;
              }
            }
          }

          else if (*value > 0x923u)
          {
            if (*value > 0x953u)
            {
              if (v24 == 2388)
              {
                goto LABEL_358;
              }

              if (v24 == 2436)
              {
                goto LABEL_347;
              }
            }

            else
            {
              if (v24 == 2340)
              {
LABEL_330:
                LOWORD(v7) = 18;
                goto LABEL_23;
              }

              if (v24 == 2360)
              {
                goto LABEL_359;
              }
            }
          }

          else if (*value > 0x8B9u)
          {
            if (v24 == 2234)
            {
LABEL_303:
              LOWORD(v7) = 27;
              goto LABEL_23;
            }

            if (v24 == 2266)
            {
              goto LABEL_345;
            }
          }

          else
          {
            if (v24 == 2160)
            {
LABEL_351:
              LOWORD(v7) = 21;
              goto LABEL_23;
            }

            if (v24 == 2224)
            {
              goto LABEL_346;
            }
          }
        }

        else if (*value > 0x1F5u)
        {
          if (*value > 0x2CFu)
          {
            if (*value > 0x6FFu)
            {
              if (v24 == 1792)
              {
                goto LABEL_352;
              }

              if (v24 == 1964)
              {
                goto LABEL_318;
              }
            }

            else
            {
              if (v24 == 720)
              {
                goto LABEL_375;
              }

              if (v24 == 1665)
              {
                goto LABEL_364;
              }
            }
          }

          else if (*value > 0x238u)
          {
            if (v24 == 569)
            {
              goto LABEL_344;
            }

            if (v24 == 570)
            {
              goto LABEL_353;
            }
          }

          else
          {
            if (v24 == 502)
            {
              goto LABEL_323;
            }

            if (v24 == 568)
            {
              goto LABEL_265;
            }
          }
        }

        else if (*value > 0x17Fu)
        {
          if (*value > 0x1ADu)
          {
            if (v24 == 430)
            {
              goto LABEL_325;
            }

            if (v24 == 484)
            {
              goto LABEL_341;
            }
          }

          else
          {
            if (v24 == 384)
            {
              goto LABEL_324;
            }

            if (v24 == 390)
            {
              goto LABEL_269;
            }
          }
        }

        else if (*value > 0x13Fu)
        {
          if (v24 == 320)
          {
            goto LABEL_365;
          }

          if (v24 == 340)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (!*value)
          {
            goto LABEL_23;
          }

          if (v24 == 163)
          {
            goto LABEL_296;
          }
        }

        _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", *value);
        LOWORD(v7) = -1;
        goto LABEL_23;
      }

      if (*value)
      {
        if (platform <= 3)
        {
          if (platform)
          {
            if (platform == 3)
            {
              v13 = *value;
              if (v13 != 3840)
              {
                if (v13 != 1088)
                {
                  if (v13 != 720)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_375;
                }

                goto LABEL_296;
              }

LABEL_357:
              LOWORD(v7) = 7;
              goto LABEL_23;
            }

LABEL_252:
            if (platform > 2)
            {
              goto LABEL_289;
            }

            v26 = *value;
            if (v26 > 0x983)
            {
              if (*value > 0xAAFu)
              {
                if (*value > 0xAEBu)
                {
                  if (*value <= 0xBCFu)
                  {
                    if (v26 != 2796)
                    {
                      if (v26 != 2868)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_269;
                    }

LABEL_322:
                    LOWORD(v7) = 30;
                    goto LABEL_23;
                  }

                  if (v26 != 3024)
                  {
                    if (v26 != 32401)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_374;
                  }

LABEL_375:
                  LOWORD(v7) = 6;
                  goto LABEL_23;
                }

                if (v26 != 2736)
                {
                  if (v26 != 2752)
                  {
                    if (v26 != 2778)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_363;
                  }

LABEL_365:
                  LOWORD(v7) = 8;
                  goto LABEL_23;
                }

LABEL_364:
                LOWORD(v7) = 31;
                goto LABEL_23;
              }

              if (*value <= 0xA3Du)
              {
                if (v26 != 2436)
                {
                  if (v26 != 2532)
                  {
                    if (v26 != 2556)
                    {
                      goto LABEL_289;
                    }

LABEL_342:
                    LOWORD(v7) = 29;
                    goto LABEL_23;
                  }

LABEL_343:
                  LOWORD(v7) = 22;
                  goto LABEL_23;
                }

LABEL_347:
                LOWORD(v7) = 11;
                goto LABEL_23;
              }

              if (v26 != 2622)
              {
                if (v26 != 2688)
                {
                  if (v26 != 2732)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_369;
                }

LABEL_371:
                LOWORD(v7) = 12;
                goto LABEL_23;
              }

LABEL_370:
              LOWORD(v7) = 13;
              goto LABEL_23;
            }

            if (*value <= 0x8AFu)
            {
              if (*value <= 0x239u)
              {
                if (v26 != 163)
                {
                  if (v26 != 568)
                  {
                    if (v26 != 569)
                    {
                      goto LABEL_289;
                    }

LABEL_344:
                    LOWORD(v7) = 2;
                    goto LABEL_23;
                  }

                  goto LABEL_265;
                }

LABEL_296:
                LOWORD(v7) = 5;
                goto LABEL_23;
              }

              if (v26 != 570)
              {
                if (v26 != 1792)
                {
                  if (v26 != 2160)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_351;
                }

LABEL_352:
                LOWORD(v7) = 16;
                goto LABEL_23;
              }

LABEL_353:
              LOWORD(v7) = 3;
              goto LABEL_23;
            }

            if (*value <= 0x937u)
            {
              if (v26 != 2224)
              {
                if (v26 != 2266)
                {
                  if (v26 != 2340)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_330;
                }

LABEL_345:
                LOWORD(v7) = 25;
                goto LABEL_23;
              }

LABEL_346:
              LOWORD(v7) = 10;
              goto LABEL_23;
            }

            if (v26 != 2360)
            {
              if (v26 != 2388)
              {
                if (v26 != 2420)
                {
                  goto LABEL_289;
                }

                goto LABEL_357;
              }

LABEL_358:
              LOWORD(v7) = 15;
              goto LABEL_23;
            }

LABEL_359:
            LOWORD(v7) = 20;
            goto LABEL_23;
          }

          v27 = *value;
          if (v27 <= 0x7AB)
          {
            if (v27 == 1665)
            {
              goto LABEL_364;
            }

            if (v27 != 1864)
            {
              goto LABEL_289;
            }

LABEL_265:
            LOWORD(v7) = 1;
            goto LABEL_23;
          }

          if (v27 != 1964)
          {
            if (v27 != 2234)
            {
              goto LABEL_289;
            }

            goto LABEL_303;
          }

LABEL_318:
          LOWORD(v7) = 26;
          goto LABEL_23;
        }

        if (platform == 5)
        {
          if (*value != 3648)
          {
            goto LABEL_289;
          }

          goto LABEL_265;
        }

        if (platform != 4)
        {
          goto LABEL_252;
        }

        v25 = *value;
        if (v25 <= 0x1BD)
        {
          if (*value <= 0x17Fu)
          {
            if (v25 == 320)
            {
              goto LABEL_365;
            }

            if (v25 == 340)
            {
              goto LABEL_370;
            }

LABEL_289:
            [CUINamedRenditionInfo decrementValue:v7 forAttribute:platform];
          }

          if (v25 != 384)
          {
            if (v25 != 390)
            {
              if (v25 != 430)
              {
                goto LABEL_289;
              }

LABEL_325:
              LOWORD(v7) = 23;
              goto LABEL_23;
            }

LABEL_269:
            LOWORD(v7) = 14;
            goto LABEL_23;
          }

LABEL_324:
          LOWORD(v7) = 9;
          goto LABEL_23;
        }

        if (*value > 0x1EFu)
        {
          if (v25 == 496)
          {
            goto LABEL_322;
          }

          if (v25 != 502)
          {
            if (v25 == 514)
            {
              goto LABEL_364;
            }

            goto LABEL_289;
          }

LABEL_323:
          LOWORD(v7) = 28;
          goto LABEL_23;
        }

        if (v25 == 446)
        {
          goto LABEL_342;
        }

        if (v25 != 484)
        {
          goto LABEL_289;
        }

LABEL_341:
        LOWORD(v7) = 24;
        goto LABEL_23;
      }

      LOWORD(v7) = 0;
    }
  }

LABEL_23:
  v14 = keyFormat->var2;
  if (v14)
  {
    v15 = 0;
    v16 = v7;
    while (keyFormat->var3[v15] != attribute)
    {
      ++v15;
      v16 += 32;
      if (v14 == v15)
      {
        return;
      }
    }

    if (v15 > 32)
    {
LABEL_29:
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, v7);
      return;
    }

    if ((v16 & 0x80000000) == 0 && *value)
    {
      do
      {
        if (CUIBitVectorIsBitSet(self->_bitmap, v16))
        {
          return;
        }

        v7 = *value - 1;
        *value = v7;
        v18 = self->_keyFormat;
        v17 = self->_platform;
        if (attribute == 16 && v17 == -1)
        {
          v19 = v18->var2;
          if (!v19)
          {
            return;
          }

          v20 = v18->var3;
          while (1)
          {
            v21 = *v20++;
            if (v21 == 16)
            {
              break;
            }

            if (!--v19)
            {
              return;
            }
          }
        }

        if (attribute <= 0x1C)
        {
          if (attribute == 13)
          {
            LOWORD(v7) = v7 != 0;
            goto LABEL_211;
          }

          if (attribute == 16)
          {
            if (v17 == -1)
            {
              if (v7 > 0x86Fu)
              {
                if (v7 <= 0x9E3u)
                {
                  if (v7 <= 0x923u)
                  {
                    if (v7 > 0x8B9u)
                    {
                      if (v7 == 2234)
                      {
                        goto LABEL_138;
                      }

                      if (v7 != 2266)
                      {
                        goto LABEL_156;
                      }

LABEL_180:
                      LOWORD(v7) = 25;
                      goto LABEL_211;
                    }

                    if (v7 != 2160)
                    {
                      if (v7 != 2224)
                      {
                        goto LABEL_156;
                      }

LABEL_181:
                      LOWORD(v7) = 10;
                      goto LABEL_211;
                    }

                    goto LABEL_186;
                  }

                  if (v7 > 0x953u)
                  {
                    if (v7 != 2388)
                    {
                      if (v7 != 2436)
                      {
                        goto LABEL_156;
                      }

LABEL_182:
                      LOWORD(v7) = 11;
                      goto LABEL_211;
                    }

LABEL_193:
                    LOWORD(v7) = 15;
                    goto LABEL_211;
                  }

                  if (v7 == 2340)
                  {
                    goto LABEL_165;
                  }

                  if (v7 != 2360)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_194;
                }

                if (v7 <= 0xAD9u)
                {
                  if (v7 <= 0xA7Fu)
                  {
                    if (v7 != 2532)
                    {
                      if (v7 != 2556)
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_178;
                  }

                  if (v7 != 2688)
                  {
                    if (v7 != 2732)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_204;
                  }

LABEL_206:
                  LOWORD(v7) = 12;
                  goto LABEL_211;
                }

                if (v7 <= 0xEFFu)
                {
                  if (v7 != 2778)
                  {
                    if (v7 != 2796)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_157;
                  }

                  goto LABEL_198;
                }

                if (v7 == 3840)
                {
                  goto LABEL_192;
                }

                if (v7 != 32401)
                {
                  goto LABEL_156;
                }

                goto LABEL_209;
              }

              if (v7 <= 0x1F5u)
              {
                if (v7 > 0x17Fu)
                {
                  if (v7 <= 0x1ADu)
                  {
                    if (v7 != 384)
                    {
                      if (v7 == 390)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_156;
                    }

LABEL_159:
                    LOWORD(v7) = 9;
                    goto LABEL_211;
                  }

                  if (v7 == 430)
                  {
                    goto LABEL_160;
                  }

                  if (v7 != 484)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_176;
                }

                if (v7 <= 0x13Fu)
                {
                  if (!v7)
                  {
                    goto LABEL_211;
                  }

                  if (v7 == 163)
                  {
LABEL_131:
                    LOWORD(v7) = 5;
                    goto LABEL_211;
                  }

                  goto LABEL_156;
                }

                if (v7 == 320)
                {
                  goto LABEL_200;
                }

                if (v7 != 340)
                {
                  goto LABEL_156;
                }

LABEL_205:
                LOWORD(v7) = 13;
                goto LABEL_211;
              }

              if (v7 <= 0x2CFu)
              {
                if (v7 <= 0x238u)
                {
                  if (v7 != 502)
                  {
                    if (v7 == 568)
                    {
                      goto LABEL_100;
                    }

LABEL_156:
                    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", v7);
                    LOWORD(v7) = -1;
                    goto LABEL_211;
                  }

LABEL_158:
                  LOWORD(v7) = 28;
                  goto LABEL_211;
                }

                if (v7 == 569)
                {
                  goto LABEL_179;
                }

                if (v7 != 570)
                {
                  goto LABEL_156;
                }

LABEL_188:
                LOWORD(v7) = 3;
                goto LABEL_211;
              }

              if (v7 > 0x6FFu)
              {
                if (v7 != 1792)
                {
                  if (v7 == 1964)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_156;
                }

LABEL_187:
                LOWORD(v7) = 16;
                goto LABEL_211;
              }

              if (v7 != 720)
              {
                if (v7 != 1665)
                {
                  goto LABEL_156;
                }

                goto LABEL_199;
              }

              goto LABEL_210;
            }

            if (!v7)
            {
              LOWORD(v7) = 0;
              goto LABEL_211;
            }

            if (v17 > 3)
            {
              if (v17 == 5)
              {
                if (v7 != 3648)
                {
                  goto LABEL_376;
                }

                goto LABEL_100;
              }

              if (v17 == 4)
              {
                if (v7 > 0x1BDu)
                {
                  if (v7 <= 0x1EFu)
                  {
                    if (v7 != 446)
                    {
                      if (v7 != 484)
                      {
                        goto LABEL_376;
                      }

LABEL_176:
                      LOWORD(v7) = 24;
                      goto LABEL_211;
                    }

                    goto LABEL_177;
                  }

                  if (v7 == 496)
                  {
                    goto LABEL_157;
                  }

                  if (v7 == 502)
                  {
                    goto LABEL_158;
                  }

                  if (v7 != 514)
                  {
                    goto LABEL_376;
                  }

                  goto LABEL_199;
                }

                if (v7 > 0x17Fu)
                {
                  if (v7 == 384)
                  {
                    goto LABEL_159;
                  }

                  if (v7 == 390)
                  {
                    goto LABEL_104;
                  }

                  if (v7 != 430)
                  {
                    goto LABEL_376;
                  }

LABEL_160:
                  LOWORD(v7) = 23;
                  goto LABEL_211;
                }

                if (v7 == 320)
                {
                  goto LABEL_200;
                }

                if (v7 != 340)
                {
                  goto LABEL_376;
                }

                goto LABEL_205;
              }
            }

            else
            {
              if (!v17)
              {
                if (v7 > 0x7ABu)
                {
                  if (v7 != 1964)
                  {
                    if (v7 != 2234)
                    {
                      goto LABEL_376;
                    }

LABEL_138:
                    LOWORD(v7) = 27;
                    goto LABEL_211;
                  }

LABEL_153:
                  LOWORD(v7) = 26;
                  goto LABEL_211;
                }

                if (v7 != 1665)
                {
                  if (v7 != 1864)
                  {
                    goto LABEL_376;
                  }

LABEL_100:
                  LOWORD(v7) = 1;
                  goto LABEL_211;
                }

LABEL_199:
                LOWORD(v7) = 31;
                goto LABEL_211;
              }

              if (v17 == 3)
              {
                if (v7 == 3840)
                {
                  goto LABEL_192;
                }

                if (v7 == 1088)
                {
                  goto LABEL_131;
                }

                if (v7 != 720)
                {
                  goto LABEL_376;
                }

LABEL_210:
                LOWORD(v7) = 6;
                goto LABEL_211;
              }
            }

            if (v17 > 2)
            {
              goto LABEL_376;
            }

            if (v7 <= 0x983u)
            {
              if (v7 <= 0x8AFu)
              {
                if (v7 <= 0x239u)
                {
                  if (v7 == 163)
                  {
                    goto LABEL_131;
                  }

                  if (v7 == 568)
                  {
                    goto LABEL_100;
                  }

                  if (v7 != 569)
                  {
                    goto LABEL_376;
                  }

LABEL_179:
                  LOWORD(v7) = 2;
                  goto LABEL_211;
                }

                if (v7 != 570)
                {
                  if (v7 != 1792)
                  {
                    if (v7 != 2160)
                    {
                      goto LABEL_376;
                    }

LABEL_186:
                    LOWORD(v7) = 21;
                    goto LABEL_211;
                  }

                  goto LABEL_187;
                }

                goto LABEL_188;
              }

              if (v7 <= 0x937u)
              {
                if (v7 != 2224)
                {
                  if (v7 != 2266)
                  {
                    if (v7 != 2340)
                    {
                      goto LABEL_376;
                    }

LABEL_165:
                    LOWORD(v7) = 18;
                    goto LABEL_211;
                  }

                  goto LABEL_180;
                }

                goto LABEL_181;
              }

              if (v7 != 2360)
              {
                if (v7 != 2388)
                {
                  if (v7 != 2420)
                  {
                    goto LABEL_376;
                  }

LABEL_192:
                  LOWORD(v7) = 7;
                  goto LABEL_211;
                }

                goto LABEL_193;
              }

LABEL_194:
              LOWORD(v7) = 20;
              goto LABEL_211;
            }

            if (v7 <= 0xAAFu)
            {
              if (v7 <= 0xA3Du)
              {
                if (v7 != 2436)
                {
                  if (v7 != 2532)
                  {
                    if (v7 != 2556)
                    {
                      goto LABEL_376;
                    }

LABEL_177:
                    LOWORD(v7) = 29;
                    goto LABEL_211;
                  }

LABEL_178:
                  LOWORD(v7) = 22;
                  goto LABEL_211;
                }

                goto LABEL_182;
              }

              if (v7 == 2622)
              {
                goto LABEL_205;
              }

              if (v7 != 2688)
              {
                if (v7 != 2732)
                {
                  goto LABEL_376;
                }

LABEL_204:
                LOWORD(v7) = 4;
                goto LABEL_211;
              }

              goto LABEL_206;
            }

            if (v7 <= 0xAEBu)
            {
              if (v7 == 2736)
              {
                goto LABEL_199;
              }

              if (v7 != 2752)
              {
                if (v7 != 2778)
                {
                  goto LABEL_376;
                }

LABEL_198:
                LOWORD(v7) = 19;
                goto LABEL_211;
              }

LABEL_200:
              LOWORD(v7) = 8;
              goto LABEL_211;
            }

            if (v7 <= 0xBCFu)
            {
              if (v7 != 2796)
              {
                if (v7 != 2868)
                {
                  goto LABEL_376;
                }

LABEL_104:
                LOWORD(v7) = 14;
                goto LABEL_211;
              }

LABEL_157:
              LOWORD(v7) = 30;
              goto LABEL_211;
            }

            if (v7 != 3024)
            {
              if (v7 != 32401)
              {
LABEL_376:
                [CUINamedRenditionInfo decrementValue:v7 forAttribute:v17];
              }

LABEL_209:
              LOWORD(v7) = 17;
              goto LABEL_211;
            }

            goto LABEL_210;
          }

          if (((1 << attribute) & 0x100600E6) != 0)
          {
            return;
          }
        }

LABEL_211:
        v22 = v18->var2;
        if (!v22)
        {
          return;
        }

        v23 = 0;
        v16 = v7;
        while (v18->var3[v23] != attribute)
        {
          v16 += 32;
          if (v22 == ++v23)
          {
            return;
          }
        }

        if (v23 > 32)
        {
          goto LABEL_29;
        }
      }

      while (*value && (v16 & 0x80000000) == 0);
    }
  }
}

- (void)incrementIndex:(unint64_t *)index inValues:(id)values forAttribute:(int)attribute
{
  v9 = [values count];
  platform = self->_platform;
  v11 = [objc_msgSend(values objectAtIndex:{*index), "integerValue"}];
  keyFormat = self->_keyFormat;
  if (attribute == 16 && platform == -1)
  {
    var2 = keyFormat->var2;
    if (!var2)
    {
      return;
    }

    var3 = keyFormat->var3;
    while (1)
    {
      v15 = *var3++;
      if (v15 == 16)
      {
        break;
      }

      if (!--var2)
      {
        return;
      }
    }
  }

  if (attribute <= 0x1C)
  {
    if (((1 << attribute) & 0x100600E6) != 0)
    {
      return;
    }

    if (attribute == 13)
    {
      LOWORD(v11) = v11 != 0;
    }

    else if (attribute == 16)
    {
      if (platform == -1)
      {
        if (v11 > 0x86Fu)
        {
          if (v11 > 0x9E3u)
          {
            if (v11 > 0xAD9u)
            {
              if (v11 > 0xEFFu)
              {
                if (v11 == 3840)
                {
                  goto LABEL_357;
                }

                if (v11 == 32401)
                {
LABEL_374:
                  LOWORD(v11) = 17;
                  goto LABEL_23;
                }
              }

              else
              {
                if (v11 == 2778)
                {
LABEL_363:
                  LOWORD(v11) = 19;
                  goto LABEL_23;
                }

                if (v11 == 2796)
                {
                  goto LABEL_322;
                }
              }
            }

            else if (v11 > 0xA7Fu)
            {
              if (v11 == 2688)
              {
                goto LABEL_371;
              }

              if (v11 == 2732)
              {
LABEL_369:
                LOWORD(v11) = 4;
                goto LABEL_23;
              }
            }

            else
            {
              if (v11 == 2532)
              {
                goto LABEL_343;
              }

              if (v11 == 2556)
              {
                goto LABEL_342;
              }
            }
          }

          else if (v11 > 0x923u)
          {
            if (v11 > 0x953u)
            {
              if (v11 == 2388)
              {
                goto LABEL_358;
              }

              if (v11 == 2436)
              {
                goto LABEL_347;
              }
            }

            else
            {
              if (v11 == 2340)
              {
LABEL_330:
                LOWORD(v11) = 18;
                goto LABEL_23;
              }

              if (v11 == 2360)
              {
                goto LABEL_359;
              }
            }
          }

          else if (v11 > 0x8B9u)
          {
            if (v11 == 2234)
            {
LABEL_303:
              LOWORD(v11) = 27;
              goto LABEL_23;
            }

            if (v11 == 2266)
            {
              goto LABEL_345;
            }
          }

          else
          {
            if (v11 == 2160)
            {
LABEL_351:
              LOWORD(v11) = 21;
              goto LABEL_23;
            }

            if (v11 == 2224)
            {
              goto LABEL_346;
            }
          }
        }

        else if (v11 > 0x1F5u)
        {
          if (v11 > 0x2CFu)
          {
            if (v11 > 0x6FFu)
            {
              if (v11 == 1792)
              {
                goto LABEL_352;
              }

              if (v11 == 1964)
              {
                goto LABEL_318;
              }
            }

            else
            {
              if (v11 == 720)
              {
                goto LABEL_375;
              }

              if (v11 == 1665)
              {
                goto LABEL_364;
              }
            }
          }

          else if (v11 > 0x238u)
          {
            if (v11 == 569)
            {
              goto LABEL_344;
            }

            if (v11 == 570)
            {
              goto LABEL_353;
            }
          }

          else
          {
            if (v11 == 502)
            {
              goto LABEL_323;
            }

            if (v11 == 568)
            {
              goto LABEL_265;
            }
          }
        }

        else if (v11 > 0x17Fu)
        {
          if (v11 > 0x1ADu)
          {
            if (v11 == 430)
            {
              goto LABEL_325;
            }

            if (v11 == 484)
            {
              goto LABEL_341;
            }
          }

          else
          {
            if (v11 == 384)
            {
              goto LABEL_324;
            }

            if (v11 == 390)
            {
              goto LABEL_269;
            }
          }
        }

        else if (v11 > 0x13Fu)
        {
          if (v11 == 320)
          {
            goto LABEL_365;
          }

          if (v11 == 340)
          {
            goto LABEL_370;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_23;
          }

          if (v11 == 163)
          {
            goto LABEL_296;
          }
        }

        _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", v11);
        LOWORD(v11) = -1;
        goto LABEL_23;
      }

      if (v11)
      {
        if (platform <= 3)
        {
          if (platform)
          {
            if (platform == 3)
            {
              if (v11 != 3840)
              {
                if (v11 != 1088)
                {
                  if (v11 != 720)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_375;
                }

                goto LABEL_296;
              }

LABEL_357:
              LOWORD(v11) = 7;
              goto LABEL_23;
            }

LABEL_252:
            if (platform > 2)
            {
              goto LABEL_289;
            }

            if (v11 > 0x983u)
            {
              if (v11 > 0xAAFu)
              {
                if (v11 > 0xAEBu)
                {
                  if (v11 <= 0xBCFu)
                  {
                    if (v11 != 2796)
                    {
                      if (v11 != 2868)
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_269;
                    }

LABEL_322:
                    LOWORD(v11) = 30;
                    goto LABEL_23;
                  }

                  if (v11 != 3024)
                  {
                    if (v11 != 32401)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_374;
                  }

LABEL_375:
                  LOWORD(v11) = 6;
                  goto LABEL_23;
                }

                if (v11 != 2736)
                {
                  if (v11 != 2752)
                  {
                    if (v11 != 2778)
                    {
                      goto LABEL_289;
                    }

                    goto LABEL_363;
                  }

LABEL_365:
                  LOWORD(v11) = 8;
                  goto LABEL_23;
                }

LABEL_364:
                LOWORD(v11) = 31;
                goto LABEL_23;
              }

              if (v11 <= 0xA3Du)
              {
                if (v11 != 2436)
                {
                  if (v11 != 2532)
                  {
                    if (v11 != 2556)
                    {
                      goto LABEL_289;
                    }

LABEL_342:
                    LOWORD(v11) = 29;
                    goto LABEL_23;
                  }

LABEL_343:
                  LOWORD(v11) = 22;
                  goto LABEL_23;
                }

LABEL_347:
                LOWORD(v11) = 11;
                goto LABEL_23;
              }

              if (v11 != 2622)
              {
                if (v11 != 2688)
                {
                  if (v11 != 2732)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_369;
                }

LABEL_371:
                LOWORD(v11) = 12;
                goto LABEL_23;
              }

LABEL_370:
              LOWORD(v11) = 13;
              goto LABEL_23;
            }

            if (v11 <= 0x8AFu)
            {
              if (v11 <= 0x239u)
              {
                if (v11 != 163)
                {
                  if (v11 != 568)
                  {
                    if (v11 != 569)
                    {
                      goto LABEL_289;
                    }

LABEL_344:
                    LOWORD(v11) = 2;
                    goto LABEL_23;
                  }

                  goto LABEL_265;
                }

LABEL_296:
                LOWORD(v11) = 5;
                goto LABEL_23;
              }

              if (v11 != 570)
              {
                if (v11 != 1792)
                {
                  if (v11 != 2160)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_351;
                }

LABEL_352:
                LOWORD(v11) = 16;
                goto LABEL_23;
              }

LABEL_353:
              LOWORD(v11) = 3;
              goto LABEL_23;
            }

            if (v11 <= 0x937u)
            {
              if (v11 != 2224)
              {
                if (v11 != 2266)
                {
                  if (v11 != 2340)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_330;
                }

LABEL_345:
                LOWORD(v11) = 25;
                goto LABEL_23;
              }

LABEL_346:
              LOWORD(v11) = 10;
              goto LABEL_23;
            }

            if (v11 != 2360)
            {
              if (v11 != 2388)
              {
                if (v11 != 2420)
                {
                  goto LABEL_289;
                }

                goto LABEL_357;
              }

LABEL_358:
              LOWORD(v11) = 15;
              goto LABEL_23;
            }

LABEL_359:
            LOWORD(v11) = 20;
            goto LABEL_23;
          }

          if (v11 <= 0x7ABu)
          {
            if (v11 == 1665)
            {
              goto LABEL_364;
            }

            if (v11 != 1864)
            {
              goto LABEL_289;
            }

LABEL_265:
            LOWORD(v11) = 1;
            goto LABEL_23;
          }

          if (v11 != 1964)
          {
            if (v11 != 2234)
            {
              goto LABEL_289;
            }

            goto LABEL_303;
          }

LABEL_318:
          LOWORD(v11) = 26;
          goto LABEL_23;
        }

        if (platform == 5)
        {
          if (v11 != 3648)
          {
            goto LABEL_289;
          }

          goto LABEL_265;
        }

        if (platform != 4)
        {
          goto LABEL_252;
        }

        if (v11 <= 0x1BDu)
        {
          if (v11 <= 0x17Fu)
          {
            if (v11 == 320)
            {
              goto LABEL_365;
            }

            if (v11 == 340)
            {
              goto LABEL_370;
            }

LABEL_289:
            [CUINamedRenditionInfo decrementValue:v11 forAttribute:platform];
          }

          if (v11 != 384)
          {
            if (v11 != 390)
            {
              if (v11 != 430)
              {
                goto LABEL_289;
              }

LABEL_325:
              LOWORD(v11) = 23;
              goto LABEL_23;
            }

LABEL_269:
            LOWORD(v11) = 14;
            goto LABEL_23;
          }

LABEL_324:
          LOWORD(v11) = 9;
          goto LABEL_23;
        }

        if (v11 > 0x1EFu)
        {
          if (v11 == 496)
          {
            goto LABEL_322;
          }

          if (v11 != 502)
          {
            if (v11 == 514)
            {
              goto LABEL_364;
            }

            goto LABEL_289;
          }

LABEL_323:
          LOWORD(v11) = 28;
          goto LABEL_23;
        }

        if (v11 == 446)
        {
          goto LABEL_342;
        }

        if (v11 != 484)
        {
          goto LABEL_289;
        }

LABEL_341:
        LOWORD(v11) = 24;
        goto LABEL_23;
      }

      LOWORD(v11) = 0;
    }
  }

LABEL_23:
  v16 = keyFormat->var2;
  if (v16)
  {
    v17 = 0;
    v18 = v11;
    while (keyFormat->var3[v17] != attribute)
    {
      ++v17;
      v18 += 32;
      if (v16 == v17)
      {
        return;
      }
    }

    if (v17 > 32)
    {
LABEL_29:
      _CUILog(4, "CoreUI: attribute %d > 32 bits its value is %d **************************************************", attribute, v11);
      return;
    }

    if ((v18 & 0x80000000) == 0 && *index < (v9 - 1))
    {
      do
      {
        if (CUIBitVectorIsBitSet(self->_bitmap, v18))
        {
          return;
        }

        ++*index;
        v19 = self->_platform;
        v11 = [objc_msgSend(values "objectAtIndex:"integerValue"")];
        v20 = self->_keyFormat;
        if (attribute == 16 && v19 == -1)
        {
          v21 = v20->var2;
          if (!v21)
          {
            return;
          }

          v22 = v20->var3;
          while (1)
          {
            v23 = *v22++;
            if (v23 == 16)
            {
              break;
            }

            if (!--v21)
            {
              return;
            }
          }
        }

        if (attribute <= 0x1C)
        {
          if (attribute == 13)
          {
            LOWORD(v11) = v11 != 0;
            goto LABEL_211;
          }

          if (attribute == 16)
          {
            if (v19 == -1)
            {
              if (v11 > 0x86Fu)
              {
                if (v11 <= 0x9E3u)
                {
                  if (v11 <= 0x923u)
                  {
                    if (v11 > 0x8B9u)
                    {
                      if (v11 == 2234)
                      {
                        goto LABEL_138;
                      }

                      if (v11 != 2266)
                      {
                        goto LABEL_156;
                      }

LABEL_180:
                      LOWORD(v11) = 25;
                      goto LABEL_211;
                    }

                    if (v11 != 2160)
                    {
                      if (v11 != 2224)
                      {
                        goto LABEL_156;
                      }

LABEL_181:
                      LOWORD(v11) = 10;
                      goto LABEL_211;
                    }

                    goto LABEL_186;
                  }

                  if (v11 > 0x953u)
                  {
                    if (v11 != 2388)
                    {
                      if (v11 != 2436)
                      {
                        goto LABEL_156;
                      }

LABEL_182:
                      LOWORD(v11) = 11;
                      goto LABEL_211;
                    }

LABEL_193:
                    LOWORD(v11) = 15;
                    goto LABEL_211;
                  }

                  if (v11 == 2340)
                  {
                    goto LABEL_165;
                  }

                  if (v11 != 2360)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_194;
                }

                if (v11 <= 0xAD9u)
                {
                  if (v11 <= 0xA7Fu)
                  {
                    if (v11 != 2532)
                    {
                      if (v11 != 2556)
                      {
                        goto LABEL_156;
                      }

                      goto LABEL_177;
                    }

                    goto LABEL_178;
                  }

                  if (v11 != 2688)
                  {
                    if (v11 != 2732)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_204;
                  }

LABEL_206:
                  LOWORD(v11) = 12;
                  goto LABEL_211;
                }

                if (v11 <= 0xEFFu)
                {
                  if (v11 != 2778)
                  {
                    if (v11 != 2796)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_157;
                  }

                  goto LABEL_198;
                }

                if (v11 == 3840)
                {
                  goto LABEL_192;
                }

                if (v11 != 32401)
                {
                  goto LABEL_156;
                }

                goto LABEL_209;
              }

              if (v11 <= 0x1F5u)
              {
                if (v11 > 0x17Fu)
                {
                  if (v11 <= 0x1ADu)
                  {
                    if (v11 != 384)
                    {
                      if (v11 == 390)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_156;
                    }

LABEL_159:
                    LOWORD(v11) = 9;
                    goto LABEL_211;
                  }

                  if (v11 == 430)
                  {
                    goto LABEL_160;
                  }

                  if (v11 != 484)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_176;
                }

                if (v11 <= 0x13Fu)
                {
                  if (!v11)
                  {
                    goto LABEL_211;
                  }

                  if (v11 == 163)
                  {
LABEL_131:
                    LOWORD(v11) = 5;
                    goto LABEL_211;
                  }

                  goto LABEL_156;
                }

                if (v11 == 320)
                {
                  goto LABEL_200;
                }

                if (v11 != 340)
                {
                  goto LABEL_156;
                }

LABEL_205:
                LOWORD(v11) = 13;
                goto LABEL_211;
              }

              if (v11 <= 0x2CFu)
              {
                if (v11 <= 0x238u)
                {
                  if (v11 != 502)
                  {
                    if (v11 == 568)
                    {
                      goto LABEL_100;
                    }

LABEL_156:
                    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", v11);
                    LOWORD(v11) = -1;
                    goto LABEL_211;
                  }

LABEL_158:
                  LOWORD(v11) = 28;
                  goto LABEL_211;
                }

                if (v11 == 569)
                {
                  goto LABEL_179;
                }

                if (v11 != 570)
                {
                  goto LABEL_156;
                }

LABEL_188:
                LOWORD(v11) = 3;
                goto LABEL_211;
              }

              if (v11 > 0x6FFu)
              {
                if (v11 != 1792)
                {
                  if (v11 == 1964)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_156;
                }

LABEL_187:
                LOWORD(v11) = 16;
                goto LABEL_211;
              }

              if (v11 != 720)
              {
                if (v11 != 1665)
                {
                  goto LABEL_156;
                }

                goto LABEL_199;
              }

              goto LABEL_210;
            }

            if (!v11)
            {
              LOWORD(v11) = 0;
              goto LABEL_211;
            }

            if (v19 > 3)
            {
              if (v19 == 5)
              {
                if (v11 != 3648)
                {
                  goto LABEL_376;
                }

                goto LABEL_100;
              }

              if (v19 == 4)
              {
                if (v11 > 0x1BDu)
                {
                  if (v11 <= 0x1EFu)
                  {
                    if (v11 != 446)
                    {
                      if (v11 != 484)
                      {
                        goto LABEL_376;
                      }

LABEL_176:
                      LOWORD(v11) = 24;
                      goto LABEL_211;
                    }

                    goto LABEL_177;
                  }

                  if (v11 == 496)
                  {
                    goto LABEL_157;
                  }

                  if (v11 == 502)
                  {
                    goto LABEL_158;
                  }

                  if (v11 != 514)
                  {
                    goto LABEL_376;
                  }

                  goto LABEL_199;
                }

                if (v11 > 0x17Fu)
                {
                  if (v11 == 384)
                  {
                    goto LABEL_159;
                  }

                  if (v11 == 390)
                  {
                    goto LABEL_104;
                  }

                  if (v11 != 430)
                  {
                    goto LABEL_376;
                  }

LABEL_160:
                  LOWORD(v11) = 23;
                  goto LABEL_211;
                }

                if (v11 == 320)
                {
                  goto LABEL_200;
                }

                if (v11 != 340)
                {
                  goto LABEL_376;
                }

                goto LABEL_205;
              }
            }

            else
            {
              if (!v19)
              {
                if (v11 > 0x7ABu)
                {
                  if (v11 != 1964)
                  {
                    if (v11 != 2234)
                    {
                      goto LABEL_376;
                    }

LABEL_138:
                    LOWORD(v11) = 27;
                    goto LABEL_211;
                  }

LABEL_153:
                  LOWORD(v11) = 26;
                  goto LABEL_211;
                }

                if (v11 != 1665)
                {
                  if (v11 != 1864)
                  {
                    goto LABEL_376;
                  }

LABEL_100:
                  LOWORD(v11) = 1;
                  goto LABEL_211;
                }

LABEL_199:
                LOWORD(v11) = 31;
                goto LABEL_211;
              }

              if (v19 == 3)
              {
                if (v11 == 3840)
                {
                  goto LABEL_192;
                }

                if (v11 == 1088)
                {
                  goto LABEL_131;
                }

                if (v11 != 720)
                {
                  goto LABEL_376;
                }

LABEL_210:
                LOWORD(v11) = 6;
                goto LABEL_211;
              }
            }

            if (v19 > 2)
            {
              goto LABEL_376;
            }

            if (v11 <= 0x983u)
            {
              if (v11 <= 0x8AFu)
              {
                if (v11 <= 0x239u)
                {
                  if (v11 == 163)
                  {
                    goto LABEL_131;
                  }

                  if (v11 == 568)
                  {
                    goto LABEL_100;
                  }

                  if (v11 != 569)
                  {
                    goto LABEL_376;
                  }

LABEL_179:
                  LOWORD(v11) = 2;
                  goto LABEL_211;
                }

                if (v11 != 570)
                {
                  if (v11 != 1792)
                  {
                    if (v11 != 2160)
                    {
                      goto LABEL_376;
                    }

LABEL_186:
                    LOWORD(v11) = 21;
                    goto LABEL_211;
                  }

                  goto LABEL_187;
                }

                goto LABEL_188;
              }

              if (v11 <= 0x937u)
              {
                if (v11 != 2224)
                {
                  if (v11 != 2266)
                  {
                    if (v11 != 2340)
                    {
                      goto LABEL_376;
                    }

LABEL_165:
                    LOWORD(v11) = 18;
                    goto LABEL_211;
                  }

                  goto LABEL_180;
                }

                goto LABEL_181;
              }

              if (v11 != 2360)
              {
                if (v11 != 2388)
                {
                  if (v11 != 2420)
                  {
                    goto LABEL_376;
                  }

LABEL_192:
                  LOWORD(v11) = 7;
                  goto LABEL_211;
                }

                goto LABEL_193;
              }

LABEL_194:
              LOWORD(v11) = 20;
              goto LABEL_211;
            }

            if (v11 <= 0xAAFu)
            {
              if (v11 <= 0xA3Du)
              {
                if (v11 != 2436)
                {
                  if (v11 != 2532)
                  {
                    if (v11 != 2556)
                    {
                      goto LABEL_376;
                    }

LABEL_177:
                    LOWORD(v11) = 29;
                    goto LABEL_211;
                  }

LABEL_178:
                  LOWORD(v11) = 22;
                  goto LABEL_211;
                }

                goto LABEL_182;
              }

              if (v11 == 2622)
              {
                goto LABEL_205;
              }

              if (v11 != 2688)
              {
                if (v11 != 2732)
                {
                  goto LABEL_376;
                }

LABEL_204:
                LOWORD(v11) = 4;
                goto LABEL_211;
              }

              goto LABEL_206;
            }

            if (v11 <= 0xAEBu)
            {
              if (v11 == 2736)
              {
                goto LABEL_199;
              }

              if (v11 != 2752)
              {
                if (v11 != 2778)
                {
                  goto LABEL_376;
                }

LABEL_198:
                LOWORD(v11) = 19;
                goto LABEL_211;
              }

LABEL_200:
              LOWORD(v11) = 8;
              goto LABEL_211;
            }

            if (v11 <= 0xBCFu)
            {
              if (v11 != 2796)
              {
                if (v11 != 2868)
                {
                  goto LABEL_376;
                }

LABEL_104:
                LOWORD(v11) = 14;
                goto LABEL_211;
              }

LABEL_157:
              LOWORD(v11) = 30;
              goto LABEL_211;
            }

            if (v11 != 3024)
            {
              if (v11 != 32401)
              {
LABEL_376:
                [CUINamedRenditionInfo decrementValue:v11 forAttribute:v19];
              }

LABEL_209:
              LOWORD(v11) = 17;
              goto LABEL_211;
            }

            goto LABEL_210;
          }

          if (((1 << attribute) & 0x100600E6) != 0)
          {
            return;
          }
        }

LABEL_211:
        v24 = v20->var2;
        if (!v24)
        {
          return;
        }

        v25 = 0;
        v18 = v11;
        while (v20->var3[v25] != attribute)
        {
          v18 += 32;
          if (v24 == ++v25)
          {
            return;
          }
        }

        if (v25 > 32)
        {
          goto LABEL_29;
        }
      }

      while (*index < (v9 - 1) && (v18 & 0x80000000) == 0);
    }
  }
}

+ (int)subtypeToIndexWithPlatform:(int64_t)platform andInput:(unsigned __int16)input
{
  result = input;
  if (platform == -1)
  {
    if (input > 2159)
    {
      if (input > 2531)
      {
        if (input > 2777)
        {
          if (input > 3839)
          {
            if (input == 3840)
            {
              return 7;
            }

            if (input == 32401)
            {
              return 17;
            }
          }

          else
          {
            if (input == 2778)
            {
              return 19;
            }

            if (input == 2796)
            {
              return 30;
            }
          }
        }

        else if (input > 2687)
        {
          if (input == 2688)
          {
            return 12;
          }

          if (input == 2732)
          {
            return 4;
          }
        }

        else
        {
          if (input == 2532)
          {
            return 22;
          }

          if (input == 2556)
          {
            return 29;
          }
        }
      }

      else if (input > 2339)
      {
        if (input > 2387)
        {
          if (input == 2388)
          {
            return 15;
          }

          if (input == 2436)
          {
            return 11;
          }
        }

        else
        {
          if (input == 2340)
          {
            return 18;
          }

          if (input == 2360)
          {
            return 20;
          }
        }
      }

      else if (input > 2233)
      {
        if (input == 2234)
        {
          return 27;
        }

        if (input == 2266)
        {
          return 25;
        }
      }

      else
      {
        if (input == 2160)
        {
          return 21;
        }

        if (input == 2224)
        {
          return 10;
        }
      }
    }

    else if (input > 501)
    {
      if (input > 719)
      {
        if (input > 1791)
        {
          if (input == 1792)
          {
            return 16;
          }

          if (input == 1964)
          {
            return 26;
          }
        }

        else
        {
          if (input == 720)
          {
            return 6;
          }

          if (input == 1665)
          {
            return 31;
          }
        }
      }

      else if (input > 568)
      {
        if (input == 569)
        {
          return 2;
        }

        if (input == 570)
        {
          return 3;
        }
      }

      else
      {
        if (input == 502)
        {
          return 28;
        }

        if (input == 568)
        {
          return 1;
        }
      }
    }

    else if (input > 383)
    {
      if (input > 429)
      {
        if (input == 430)
        {
          return 23;
        }

        if (input == 484)
        {
          return 24;
        }
      }

      else
      {
        if (input == 384)
        {
          return 9;
        }

        if (input == 390)
        {
          return 14;
        }
      }
    }

    else if (input > 319)
    {
      if (input == 320)
      {
        return 8;
      }

      if (input == 340)
      {
        return 13;
      }
    }

    else
    {
      if (!input)
      {
        return result;
      }

      if (input == 163)
      {
        return 5;
      }
    }

    _CUILog(4, "CoreUI: %s got a device subtype that it doesn't know about %d in unknown platform", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", input);
    return -1;
  }

  if (!input)
  {
    return result;
  }

  if (platform <= 3)
  {
    if (platform)
    {
      if (platform == 3)
      {
        if (input != 3840)
        {
          if (input != 1088)
          {
            if (input != 720)
            {
              goto LABEL_78;
            }

            return 6;
          }

          return 5;
        }

        return 7;
      }

      goto LABEL_41;
    }

    if (input <= 1963)
    {
      if (input == 1665)
      {
        return 31;
      }

      if (input == 1864)
      {
        return 1;
      }

LABEL_78:
      [CUINamedRenditionInfo attributePresent:input withValue:platform];
    }

    if (input != 1964)
    {
      if (input != 2234)
      {
        goto LABEL_78;
      }

      return 27;
    }

    return 26;
  }

  if (platform == 5)
  {
    if (input != 3648)
    {
      goto LABEL_78;
    }

    return 1;
  }

  if (platform == 4)
  {
    if (input <= 445)
    {
      if (input <= 383)
      {
        if (input == 320)
        {
          return 8;
        }

        if (input == 340)
        {
          return 13;
        }

        goto LABEL_78;
      }

      if (input != 384)
      {
        if (input == 390)
        {
          return 14;
        }

        if (input != 430)
        {
          goto LABEL_78;
        }

        return 23;
      }

      return 9;
    }

    if (input > 495)
    {
      if (input == 496)
      {
        return 30;
      }

      if (input != 502)
      {
        if (input == 514)
        {
          return 31;
        }

        goto LABEL_78;
      }

      return 28;
    }

    if (input == 446)
    {
      return 29;
    }

    if (input != 484)
    {
      goto LABEL_78;
    }

    return 24;
  }

LABEL_41:
  if (platform > 2)
  {
    goto LABEL_78;
  }

  if (input <= 2435)
  {
    if (input <= 2223)
    {
      if (input <= 569)
      {
        if (input == 163)
        {
          return 5;
        }

        if (input != 568)
        {
          if (input != 569)
          {
            goto LABEL_78;
          }

          return 2;
        }

        return 1;
      }

      if (input != 570)
      {
        if (input != 1792)
        {
          if (input != 2160)
          {
            goto LABEL_78;
          }

          return 21;
        }

        return 16;
      }

      return 3;
    }

    if (input <= 2359)
    {
      if (input != 2224)
      {
        if (input != 2266)
        {
          if (input != 2340)
          {
            goto LABEL_78;
          }

          return 18;
        }

        return 25;
      }

      return 10;
    }

    if (input != 2360)
    {
      if (input != 2388)
      {
        if (input != 2420)
        {
          goto LABEL_78;
        }

        return 7;
      }

      return 15;
    }

    return 20;
  }

  if (input <= 2735)
  {
    if (input <= 2621)
    {
      if (input != 2436)
      {
        if (input != 2532)
        {
          if (input != 2556)
          {
            goto LABEL_78;
          }

          return 29;
        }

        return 22;
      }

      return 11;
    }

    if (input != 2622)
    {
      if (input != 2688)
      {
        if (input != 2732)
        {
          goto LABEL_78;
        }

        return 4;
      }

      return 12;
    }

    return 13;
  }

  if (input <= 2795)
  {
    if (input != 2736)
    {
      if (input != 2752)
      {
        if (input != 2778)
        {
          goto LABEL_78;
        }

        return 19;
      }

      return 8;
    }

    return 31;
  }

  if (input <= 3023)
  {
    if (input != 2796)
    {
      if (input != 2868)
      {
        goto LABEL_78;
      }

      return 14;
    }

    return 30;
  }

  if (input != 3024)
  {
    if (input != 32401)
    {
      goto LABEL_78;
    }

    return 17;
  }

  return 6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = CUIBitVectorCopy(self->_bitmap);
  result = [CUINamedRenditionInfo allocWithZone:zone];
  if (result)
  {
    keyFormat = self->_keyFormat;
    platform = self->_platform;
    v9.receiver = result;
    v9.super_class = CUINamedRenditionInfo;
    result = [(CUINamedRenditionInfo *)&v9 init];
    *(result + 1) = v5;
    *(result + 2) = keyFormat;
    *(result + 3) = platform;
  }

  return result;
}

- (id)bitwiseAndWith:(id)with
{
  v4 = CUIBitVectorBitAnd(self->_bitmap, *(with + 1));
  v5 = [CUINamedRenditionInfo alloc];
  if (v5)
  {
    keyFormat = self->_keyFormat;
    platform = self->_platform;
    v9.receiver = v5;
    v9.super_class = CUINamedRenditionInfo;
    v5 = [(CUINamedRenditionInfo *)&v9 init];
    v5->_bitmap = v4;
    v5->_keyFormat = keyFormat;
    v5->_platform = platform;
  }

  return v5;
}

- (id)bitwiseOrWith:(id)with forAttribute:(int)attribute
{
  keyFormat = self->_keyFormat;
  var2 = keyFormat->var2;
  if (!var2)
  {
    goto LABEL_8;
  }

  v7 = 0;
  var3 = keyFormat->var3;
  while (var3[v7] != attribute)
  {
    if (var2 == ++v7)
    {
      goto LABEL_8;
    }
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_8:
    v9 = CUIBitVectorCopy(self->_bitmap);
  }

  else
  {
    v9 = CUIBitVectorBitOrForBucket(self->_bitmap, *(with + 1), v7);
  }

  v10 = v9;
  v11 = [CUINamedRenditionInfo alloc];
  if (v11)
  {
    v13 = self->_keyFormat;
    platform = self->_platform;
    v15.receiver = v11;
    v15.super_class = CUINamedRenditionInfo;
    v11 = [(CUINamedRenditionInfo *)&v15 init];
    v11->_bitmap = v10;
    v11->_keyFormat = v13;
    v11->_platform = platform;
  }

  return v11;
}

- (void)attributePresent:(uint64_t)a1 withValue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_1(a1, a2);
  _CUILog(4, "CoreUI: %s got a device subtype %d is unknown for the platform %d:'%@'", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", v3, v2, v4);
  abort();
}

- (void)decrementValue:(uint64_t)a1 forAttribute:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_1(a1, a2);
  _CUILog(4, "CoreUI: %s got a device subtype %d is unknown for the platform %d:'%@'", "int __CUISubtypeToIndex(CUIThemeSchemaPlatform, CUIRenditionKeyUInteger)", v3, v2, v4);
  abort();
}

@end