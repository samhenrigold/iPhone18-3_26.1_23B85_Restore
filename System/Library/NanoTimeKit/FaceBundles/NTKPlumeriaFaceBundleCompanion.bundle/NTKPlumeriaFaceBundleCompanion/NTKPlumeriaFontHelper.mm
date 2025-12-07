@interface NTKPlumeriaFontHelper
+ (void)generateTransformFromRect:(id)rect toRect:(SEL)toRect transformX:transformY:;
- (BOOL)setFont:(id)font points:(float)points;
- (NTKPlumeriaFontHelper)init;
- (void)generateLayout:(int)layout minute:(int)minute layout:;
- (void)generateLayoutWithCGRect:(int)rect minute:(int)minute layout:(CGRect *)layout;
- (void)generateTable:(id)table;
@end

@implementation NTKPlumeriaFontHelper

- (NTKPlumeriaFontHelper)init
{
  v3.receiver = self;
  v3.super_class = NTKPlumeriaFontHelper;
  return [(NTKPlumeriaFontHelper *)&v3 init];
}

- (BOOL)setFont:(id)font points:(float)points
{
  fontCopy = font;
  if (fontCopy == @".SFRoundedNumeric-Semibold" && points == 10.0)
  {
    fontName = self->_fontName;
    self->_fontName = @".SFRoundedNumeric-Semibold";

    *&self->_points = 0x40E177FF41200000;
    memcpy(self->_pairs, &unk_155E0, sizeof(self->_pairs));
  }

  else
  {
    objc_storeStrong(&self->_fontName, font);
    self->_points = points;
    self->_capHeight = 0.0;
    pointsCopy = points;
    v10 = CTFontCreateWithNameAndOptions(fontCopy, pointsCopy, 0, 0x400uLL);
    v11 = v10;
    if (!v10)
    {
      v11 = [UIFont systemFontOfSize:pointsCopy];
      fontName = [v11 fontName];
      v13 = self->_fontName;
      self->_fontName = fontName;
    }

    [v11 capHeight];
    v14 = 0;
    *&v15 = v15;
    self->_capHeight = *&v15;
    p_rightX = &self->_pairs[0].rightX;
    do
    {
      0xAu = [NSString stringWithFormat:@"%d%d", v14 / 0xAu, v14 % 0xAu];
      v18 = [NSDictionary dictionaryWithObject:v11 forKey:NSFontAttributeName];
      v19 = CTLineCreateWithAttributedString([[NSAttributedString alloc] initWithString:0xAu attributes:v18]);
      GlyphRuns = CTLineGetGlyphRuns(v19);
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, 0);
      v36.location = 0;
      v36.length = 2;
      CTRunGetGlyphs(ValueAtIndex, v36, buffer);
      CTFontGetBoundingRectsForGlyphs(v10, kCTFontOrientationHorizontal, buffer, &boundingRects, 2);
      v37.location = 0;
      v37.length = 2;
      CTRunGetPositions(ValueAtIndex, v37, &v31);
      v38.location = 0;
      v38.length = 2;
      CTRunGetAdvances(ValueAtIndex, v38, &v29);
      CFRelease(v19);
      size = boundingRects.size;
      *(p_rightX - 19) = boundingRects.origin;
      *(p_rightX - 15) = size;
      v23 = v35;
      *(p_rightX - 11) = v34;
      *(p_rightX - 7) = v23;
      width = v29.width;
      *&v23 = v30;
      *(p_rightX - 3) = width;
      *(p_rightX - 2) = v23;
      x = v31.x;
      *&v23 = v32;
      *(p_rightX - 1) = x;
      *p_rightX = v23;

      ++v14;
      p_rightX += 20;
    }

    while (v14 != 100);
    CFRelease(v10);
  }

  return 1;
}

- (void)generateLayoutWithCGRect:(int)rect minute:(int)minute layout:(CGRect *)layout
{
  if (layout)
  {
    v6 = *&minute;
    [(NTKPlumeriaFontHelper *)self getWidthOfDigitPair:?];
    v9 = &self->_pairs[rect];
    y = v9->leftRect.origin.y;
    v11 = v9->rightRect.origin.y;
    size = v9->rightRect.size;
    v29 = v9->leftRect.size;
    v13 = v12 * -0.5;
    v14 = v9->leftRect.origin.x + v13;
    v15 = v9->rightRect.origin.x + (v13 + v9->leftAdvance);
    [(NTKPlumeriaFontHelper *)self getWidthOfDigitPair:v6];
    v16 = &self->_pairs[v6];
    v17 = v16->leftRect.origin.y;
    v18 = v16->rightRect.origin.y;
    v26 = v16->rightRect.size;
    v27 = v16->leftRect.size;
    v20 = v19 * -0.5;
    v21 = v16->leftRect.origin.x + v20;
    v22 = v16->rightRect.origin.x + (v20 + v16->leftAdvance);
    capHeight = self->_capHeight;
    v24 = (capHeight * 0.066667);
    v25 = (-(capHeight * 0.066667) - capHeight);
    layout->origin.x = v14;
    layout->origin.y = y + v24;
    layout->size = v29;
    layout[1].origin.x = v15;
    layout[1].origin.y = v11 + v24;
    layout[1].size = size;
    layout[2].origin.x = v21;
    layout[2].origin.y = v17 + v25;
    layout[2].size = v27;
    layout[3].origin.x = v22;
    layout[3].origin.y = v18 + v25;
    layout[3].size = v26;
  }
}

- (void)generateLayout:(int)layout minute:(int)minute layout:
{
  v5 = v4;
  [(NTKPlumeriaFontHelper *)self generateLayoutWithCGRect:*&layout minute:*&minute layout:v7];
  for (i = 0; i != 128; i += 32)
  {
    *v5++ = vcvt_hight_f32_f64(vcvt_f32_f64(*&v7[i]), vaddq_f64(*&v7[i], *&v7[i + 16]));
  }
}

+ (void)generateTransformFromRect:(id)rect toRect:(SEL)toRect transformX:transformY:
{
  v7 = vextq_s8(v4, v4, 8uLL);
  v8 = vextq_s8(v5, v5, 8uLL).u64[0];
  *v6.i8 = vsub_f32(vzip1_s32(v8, *v7.i8), vzip1_s32(*v5.i8, *v4.i8));
  *v6.i8 = vdiv_f32(*v6.i8, vdup_lane_s32(*v6.i8, 1));
  v9 = vzip1q_s32(v4, v6);
  v9.i32[2] = v5.i32[0];
  *v2 = v9;
  *v7.i8 = vsub_f32(vzip2_s32(v8, *v7.i8), vzip2_s32(*v5.i8, *v4.i8));
  *v7.i8 = vdiv_f32(*v7.i8, vdup_lane_s32(*v7.i8, 1));
  v10 = vtrn2q_s32(v4, vzip1q_s32(v4, v7));
  v10.i32[2] = v5.i32[1];
  *v3 = v10;
}

- (void)generateTable:(id)table
{
  tableCopy = table;
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendString:@"// ---------- BEGIN GENERATED CODE ----------\n"];
  v5 = [NSString stringWithFormat:@"static NSString *_savedFontName = @%s\n", [(NSString *)self->_fontName cStringUsingEncoding:1]];;
  [v4 appendString:v5];

  v6 = [NSString stringWithFormat:@"static float _savedPoints = %f\n", self->_points];;
  [v4 appendString:v6];

  v7 = [NSString stringWithFormat:@"static float _savedCapHeight = %f\n", self->_capHeight];;
  [v4 appendString:v7];

  [v4 appendString:@"static NTKPlumeriaFontDigitPairInfoFlat _savedPairs[] = {\n"];
  [v4 appendString:{@"    // leftRect, rightRect, leftAdvance, rightAdvance, leftX, rightX\n"}];
  v8 = 0;
  p_rightRect = &self->_pairs[0].rightRect;
  do
  {
    if (v8 == 99)
    {
      v10 = 32;
    }

    else
    {
      v10 = 44;
    }

    0x30 = [NSString stringWithFormat:@"    { %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f }%c // Index: %d, Pair: %c, %c\n", *&p_rightRect[-1].origin, *&p_rightRect[-1].size, *&p_rightRect->origin, *&p_rightRect->size.width, *&p_rightRect->size.height, *&p_rightRect[1].origin.x, *(&p_rightRect[1].origin.x + 1), *&p_rightRect[1].origin.y, *(&p_rightRect[1].origin.y + 1), v10, v8, (v8 / 0xAu) | 0x30, (v8 % 0xAu) | 0x30];
    [v4 appendString:0x30];

    ++v8;
    p_rightRect = (p_rightRect + 80);
  }

  while (v8 != 100);
  [v4 appendString:@"};\n"];
  [v4 appendString:@"// ---------- END GENERATED CODE ----------\n"];
  v12 = +[NSFileManager defaultManager];
  [v12 createFileAtPath:tableCopy contents:0 attributes:0];

  [v4 writeToFile:tableCopy atomically:1 encoding:4 error:0];
}

@end