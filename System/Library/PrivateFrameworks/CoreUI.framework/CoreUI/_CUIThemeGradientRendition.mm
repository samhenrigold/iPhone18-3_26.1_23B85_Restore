@interface _CUIThemeGradientRendition
+ (NSArray)_nodesFromNodeList:(uint64_t)list count:(_DWORD *)count header:(uint64_t)header;
+ (void)_parseGradientInfoFromCSIHeader:(uint64_t)header@<X1>;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (void)dealloc;
@end

@implementation _CUIThemeGradientRendition

+ (NSArray)_nodesFromNodeList:(uint64_t)list count:(_DWORD *)count header:(uint64_t)header
{
  v5 = objc_opt_self();
  if (header)
  {
    v6 = v5;
    v7 = [[NSMutableArray alloc] initWithCapacity:header];
    for (i = (count + 8); ; i += 9)
    {
      v9 = *count;
      v10 = *(i - 8);
      if (*count != v10)
      {
        if (v9 == 1129270354 && v10 == 1129270340)
        {
LABEL_25:
          v12 = [[CUIPSDGradientDoubleColorStop alloc] initWithLocation:*(i - 7) leadInColor:*(i - 3) leadOutColor:*(i - 2), *(i - 1), *i, *(i + 1), *(i + 2), *(i + 3), *(i + 4)];
          goto LABEL_28;
        }

        if (v9 == 1330660180)
        {
          if (v10 == 1330660164)
          {
            goto LABEL_26;
          }
        }

        else if (v9 == 1330660164)
        {
          if (v10 == 1330660180)
          {
            goto LABEL_21;
          }
        }

        else if (v9 == 1129270340 && v10 == 1129270354)
        {
          goto LABEL_24;
        }

        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__nodesFromNodeList_count_header_ file:v6 lineNumber:@"_CUIThemeGradientRendition.m" description:34, @"CoreUI: Mixed node types in node list"];
        v9 = *(i - 8);
      }

      if (v9 <= 1296647247)
      {
        if (v9 == 1129270340)
        {
          goto LABEL_25;
        }

        if (v9 != 1129270354)
        {
LABEL_31:
          [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__nodesFromNodeList_count_header_ file:v6 lineNumber:@"_CUIThemeGradientRendition.m" description:73, @"CoreUI: Invalid gradient node type in gradient rendition initialization"];
          v15 = 0;
          goto LABEL_29;
        }

LABEL_24:
        v12 = [[CUIPSDGradientColorStop alloc] initWithLocation:*(i - 7) gradientColor:*(i - 3), *(i - 2), *(i - 1), *i];
        goto LABEL_28;
      }

      if (v9 == 1296647248)
      {
        v13 = [NSNumber alloc];
        LODWORD(v14) = *(i - 7);
        v12 = [v13 initWithFloat:v14];
        goto LABEL_28;
      }

      if (v9 == 1330660164)
      {
LABEL_26:
        v12 = [[CUIPSDGradientDoubleOpacityStop alloc] initWithLocation:*(i - 7) leadInOpacity:*i leadOutOpacity:i[4]];
        goto LABEL_28;
      }

      if (v9 != 1330660180)
      {
        goto LABEL_31;
      }

LABEL_21:
      v12 = [[CUIPSDGradientOpacityStop alloc] initWithLocation:*(i - 7) opacity:*i];
LABEL_28:
      v15 = v12;
LABEL_29:
      [v7 addObject:v15];

      if (!--header)
      {

        return v7;
      }
    }
  }

  return +[NSArray array];
}

+ (void)_parseGradientInfoFromCSIHeader:(uint64_t)header@<X1>
{
  objc_opt_self();
  a3[1] = 0.0;
  a3[2] = 0.0;
  *a3 = 0.0;
  headerCopy = header;
  v5 = *(header + 172);
  if (v5)
  {
    v6 = 0;
    v27 = header + 176 + 4 * v5 + *(header + 168) + 4;
    v28 = header + 176;
    v7 = 1;
    while ((v7 & 1) != 0)
    {
      v8 = v27 + *(v28 + 4 * v6);
      v9 = *v8;
      v10 = *(v8 + 12);
      if (*v8 == 1145131591)
      {
        v10 = bswap32(v10);
        v11 = bswap32(*(v8 + 64));
      }

      else
      {
        v11 = *(v8 + 64);
      }

      *a3 = v10;
      if (v11 >= 2)
      {
        a3[1] = *(v8 + 56);
        v12 = *(v8 + 68);
        v13 = *(v8 + 72);
        v14 = *(v8 + 76);
        v15 = bswap32(v12);
        v16 = bswap32(v13);
        v17 = bswap32(v14);
        v18 = v9 == 1145131591 ? v17 : v14;
        v19 = v9 == 1145131591 ? v16 : v13;
        v20 = v9 == 1145131591 ? v15 : v12;
        v21 = [_CUIThemeGradientRendition _nodesFromNodeList:(v8 + 80) count:v11 header:?];
        v22 = (v8 + 80 + 72 * v11);
        v23 = [_CUIThemeGradientRendition _nodesFromNodeList:v22 count:v20 header:?];
        v24 = &v22[18 * v20];
        v25 = [_CUIThemeGradientRendition _nodesFromNodeList:v24 count:v19 header:?];
        v26 = [[CUIPSDGradientEvaluator alloc] initWithColorStops:v21 colorMidpoints:v23 opacityStops:v25 opacityMidpoints:[_CUIThemeGradientRendition _nodesFromNodeList:? count:? header:?]dither:*(v8 + 4) & 1, *(v8 + 60), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48)];
        *(a3 + 2) = v26;
        [(CUIPSDGradientEvaluator *)v26 setBlendMode:*(v8 + 20)];
        v7 = 0;
        v6 = 1;
        if (*(headerCopy + 172) > 1u)
        {
          continue;
        }
      }

      return;
    }

    _CUILog(4, "Warning: Ignoring extra gradient data found in CSI");
  }
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v16.receiver = self;
  v16.super_class = _CUIThemeGradientRendition;
  v5 = [(CUIThemeRendition *)&v16 _initWithCSIHeader:header version:*&version];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  [(_CUIThemeGradientRendition *)header _parseGradientInfoFromCSIHeader:?];
  v8 = v15;
  if (v15)
  {
    if ((*(header + 7) & 0xF) == 1)
    {
      SRGB = _CUIColorSpaceGetSRGB(v6, v7);
    }

    else
    {
      SRGB = _CUIColorSpaceGetGenericRGB(v6, v7);
    }

    v11 = SRGB;
    [v5 setBlendMode:{objc_msgSend(v8, "blendMode")}];
    v5[28] = v14;
    [v5 setSubtype:v13];
    v5[27] = [[CUIThemeGradient alloc] _initWithGradientEvaluator:v8 colorSpace:v11];
  }

  else
  {
    v10 = v5;
    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeGradientRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

@end