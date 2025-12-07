@interface WFWorkflowIconDrawer
+ (id)glyphImageWithIcon:(id)icon size:(CGSize)size;
+ (id)imageWithIcon:(id)icon size:(CGSize)size background:(BOOL)background;
+ (id)imageWithIcon:(id)icon size:(CGSize)size scale:(double)scale padding:(CGSize)padding glyphColor:(id)color background:(BOOL)background;
+ (id)pngDataForImageWithIcon:(id)icon size:(CGSize)size;
- (CGSize)calculatedSizeForSize:(CGSize)size scale:(double)scale;
- (CGSize)glyphSize;
- (WFColor)glyphColor;
- (WFWorkflowIconDrawer)initWithDrawerContext:(id)context;
- (WFWorkflowIconDrawer)initWithIcon:(id)icon drawerContext:(id)context;
- (id)imageWithSize:(CGSize)size scale:(double)scale padding:(CGSize)padding;
- (void)drawInContext:(id)context inRect:(CGRect)rect;
- (void)setIcon:(id)icon;
@end

@implementation WFWorkflowIconDrawer

- (CGSize)glyphSize
{
  width = self->_glyphSize.width;
  height = self->_glyphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)imageWithSize:(CGSize)size scale:(double)scale padding:(CGSize)padding
{
  width = padding.width;
  if (size.width == *MEMORY[0x1E695F060] && size.height == *(MEMORY[0x1E695F060] + 8))
  {
    image = 0;
  }

  else
  {
    height = padding.height;
    [WFWorkflowIconDrawer calculatedSizeForSize:"calculatedSizeForSize:scale:" scale:?];
    v10 = v9;
    v12 = v11;
    v13 = [WFBitmapContext contextWithSize:"contextWithSize:scale:" scale:?];
    if (v13)
    {
      v14 = ceil(width);
      v15 = ceil(height);
      [(WFWorkflowIconDrawer *)self drawInContext:v13 inRect:v14, v15, v10 - v14 * 2.0, v12 - v15 * 2.0];
      image = [v13 image];
    }

    else
    {
      image = 0;
    }
  }

  return image;
}

- (CGSize)calculatedSizeForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v81 = *MEMORY[0x1E69E9840];
  if (size.width == 0.0 || size.height == 0.0)
  {
    customImageData = [(WFWorkflowIconDrawer *)self customImageData];
    if (-[WFWorkflowIconDrawer useCustomImage](self, "useCustomImage") && [customImageData length])
    {
      v11 = [WFImage imageWithData:customImageData scale:0 allowAnimated:scale];
      [v11 sizeInPoints];
      v13 = v12;
      v15 = v14;

      v8 = WFWorkflowIconDrawerScaledSizeWithTargetSize(width, height, v13, v15, scale);
      v9 = v16;
    }

    else
    {
      drawerContext = [(WFWorkflowIconDrawer *)self drawerContext];
      glyphCharacter = [(WFWorkflowIconDrawer *)self glyphCharacter];
      outline = [(WFWorkflowIconDrawer *)self outline];
      v20 = drawerContext;
      theChar = glyphCharacter;
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      if (width == *MEMORY[0x1E695F060] && height == v9)
      {
        v8 = width;
        v9 = height;
      }

      else
      {
        v22 = +[WFDevice currentDevice];
        [v22 screenScale];
        v24 = v23;

        if (outline)
        {
          WFSystemImageNameForOutlineGlyphCharacter(glyphCharacter);
        }

        else
        {
          WFSystemImageNameForGlyphCharacter(glyphCharacter);
        }
        v25 = ;
        v26 = v25;
        if (v25)
        {
          v27 = v25;
          coreGlyphsCatalogs = [v20 coreGlyphsCatalogs];
          v29 = [WFImage glyphNamed:v27 pointSize:6 symbolWeight:coreGlyphsCatalogs scaleFactor:height inCatalogs:v24];

          if (v29)
          {
            [v29 sizeInPoints];
            v8 = WFWorkflowIconDrawerScaledSizeWithTargetSize(width, height, v30, v31, v24);
            v9 = v32;
          }

          else
          {
            v48 = getWFVoiceShortcutClientLogObject();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
            {
              *aBlock = 136315394;
              *&aBlock[4] = "WFWorkflowIconDrawerScaledSizeForVectorIdentifier";
              *&aBlock[12] = 2114;
              *&aBlock[14] = v27;
              _os_log_impl(&dword_1B1DE3000, v48, OS_LOG_TYPE_FAULT, "%s vector glyph was unexpectedly nil with identifier: %{public}@", aBlock, 0x16u);
            }
          }
        }

        else
        {
          theChar = WFReplacementGlyphCharacterForCharacter(glyphCharacter);
          glyphTestFont = [v20 glyphTestFont];
          WFCTFontCopyCharacterSet(glyphTestFont);
          v35 = v34;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 3221225472;
          *&aBlock[16] = __WFWorkflowIconDrawerScaledSizeForIconCharacter_block_invoke;
          v79 = &__block_descriptor_40_e5_v8__0l;
          v80 = v34;
          v27 = _Block_copy(aBlock);
          if (CFCharacterSetIsCharacterMember(v35, theChar))
          {
            v36 = [MEMORY[0x1E696AEC0] stringWithCharacters:&theChar length:1];
            v69 = [v36 length];
            v37 = objc_alloc(MEMORY[0x1E696AAB0]);
            getkCTFontAttributeName();
            v76 = v38;
            v77 = glyphTestFont;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v40 = [v37 initWithString:v36 attributes:v39];

            WFCTFramesetterCreateWithAttributedString(v40);
            v42 = v41;
            if (v41)
            {
              v72[0] = MEMORY[0x1E69E9820];
              v72[1] = 3221225472;
              v72[2] = __WFWorkflowIconDrawerScaledSizeForIconCharacter_block_invoke_2;
              v72[3] = &__block_descriptor_40_e5_v8__0l;
              v72[4] = v41;
              v43 = _Block_copy(v72);
              WFCTFramesetterSuggestFrameSizeWithConstraints(v42, 0, v69);
              if (v44 != v8 || v45 != v9)
              {
                v46 = 1.0 / v24;
                if (width == 0.0)
                {
                  v47 = (height - v46) / v45;
                }

                else
                {
                  v49 = (width - v46) / v44;
                  v50 = (height - v46) / v45;
                  if (v49 < v50)
                  {
                    v50 = v49;
                  }

                  if (height == 0.0)
                  {
                    v47 = v49;
                  }

                  else
                  {
                    v47 = v50;
                  }
                }

                +[WFWorkflowIconDrawerContext glyphTestFontSize];
                v52 = [v20 newGlyphFontForSize:v47 * v51];
                v53 = v52;
                if (v52)
                {
                  v71[0] = MEMORY[0x1E69E9820];
                  v71[1] = 3221225472;
                  v71[2] = __WFWorkflowIconDrawerScaledSizeForIconCharacter_block_invoke_3;
                  v71[3] = &__block_descriptor_40_e5_v8__0l;
                  v71[4] = v52;
                  v67 = _Block_copy(v71);
                  v54 = objc_alloc(MEMORY[0x1E696AAB0]);
                  getkCTFontAttributeName();
                  v74 = v55;
                  v75 = v53;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                  v68 = [v54 initWithString:v36 attributes:v56];

                  WFCTFramesetterCreateWithAttributedString(v68);
                  v58 = v57;
                  if (v57)
                  {
                    v70[0] = MEMORY[0x1E69E9820];
                    v70[1] = 3221225472;
                    v70[2] = __WFWorkflowIconDrawerScaledSizeForIconCharacter_block_invoke_4;
                    v70[3] = &__block_descriptor_40_e5_v8__0l;
                    v70[4] = v57;
                    v59 = _Block_copy(v70);
                    WFCTFramesetterSuggestFrameSizeWithConstraints(v58, 0, v69);
                    v61 = v60;
                    v63 = v62;
                    v59[2](v59);
                    v8 = WFWorkflowIconDrawerScaledSizeWithTargetSize(width, height, v61, v63, v24);
                    v9 = v64;
                  }

                  v67[2](v67);
                }
              }

              v43[2](v43);
            }
          }

          v27[2](v27);
        }
      }
    }
  }

  else
  {
    v8 = size.width;
    v9 = size.height;
  }

  v65 = v8;
  v66 = v9;
  result.height = v66;
  result.width = v65;
  return result;
}

- (void)drawInContext:(id)context inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v199[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cGContext = [contextCopy CGContext];
  CGContextSaveGState(cGContext);
  drawBackground = [(WFWorkflowIconDrawer *)self drawBackground];
  if ([(WFWorkflowIconDrawer *)self rounded]&& drawBackground)
  {
    [(WFWorkflowIconDrawer *)self cornerRadius];
    v13 = v12;
    if (v12 == 0.0)
    {
      v207.origin.x = x;
      v207.origin.y = y;
      v207.size.width = width;
      v207.size.height = height;
      v13 = CGRectGetWidth(v207) * 0.25999999;
    }

    v14 = NSClassFromString(@"UIBezierPath");
    if (!v14 || (-[objc_class bezierPathWithRoundedRect:cornerRadius:](v14, "bezierPathWithRoundedRect:cornerRadius:", x, y, width, height, v13), v15 = objc_claimAutoreleasedReturnValue(), Mutable = CGPathRetain([v15 CGPath]), v15, !Mutable))
    {
      if (v13 >= 0.0)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0.0;
      }

      if (v17 == 0.0 || (v208.origin.x = x, v208.origin.y = y, v208.size.width = width, v208.size.height = height, CGRectIsEmpty(v208)))
      {
        v209.origin.x = x;
        v209.origin.y = y;
        v209.size.width = width;
        v209.size.height = height;
        Mutable = CGPathCreateWithRect(v209, 0);
      }

      else
      {
        v49 = x + width;
        Mutable = CGPathCreateMutable();
        CGPathMoveToPoint(Mutable, 0, x, y + v17 * 1.528665);
        CGPathAddCurveToPoint(Mutable, 0, x, y + v17 * 1.08849, x, y + v17 * 0.868407, x + v17 * 0.0749114, y + v17 * 0.631494);
        CGPathAddCurveToPoint(Mutable, 0, x + v17 * 0.16906, y + v17 * 0.372824, x + v17 * 0.372824, y + v17 * 0.16906, x + v17 * 0.631494, y + v17 * 0.0749114);
        CGPathAddCurveToPoint(Mutable, 0, x + v17 * 0.868407, y, x + v17 * 1.08849, y, x + v17 * 1.52866, y);
        CGPathAddLineToPoint(Mutable, 0, x + width - v17 * 1.528665, y);
        cp2xc = x + width - v17 * 1.08849;
        CGPathAddCurveToPoint(Mutable, 0, cp2xc, y, v49 - v17 * 0.868407, y, v49 - v17 * 0.631494, y + v17 * 0.0749114);
        CGPathAddCurveToPoint(Mutable, 0, v49 - v17 * 0.372824, y + v17 * 0.16906, v49 - v17 * 0.16906, y + v17 * 0.372824, v49 - v17 * 0.0749114, y + v17 * 0.631494);
        CGPathAddCurveToPoint(Mutable, 0, x + width, y + v17 * 0.868407, x + width, y + v17 * 1.08849, x + width, y + v17 * 1.52866);
        CGPathAddLineToPoint(Mutable, 0, x + width, y + height - v17 * 1.528665);
        v164 = y + height - v17 * 1.08849;
        v167 = y + height - v17 * 0.868407;
        v169 = y + height - v17 * 0.631494;
        CGPathAddCurveToPoint(Mutable, 0, x + width, v164, x + width, v167, x + width - v17 * 0.0749114, v169);
        v171 = y + height - v17 * 0.16906;
        v173 = y + height - v17 * 0.372824;
        v50 = y + height - v17 * 0.0749114;
        CGPathAddCurveToPoint(Mutable, 0, x + width - v17 * 0.16906, v173, x + width - v17 * 0.372824, v171, x + width - v17 * 0.631494, v50);
        CGPathAddCurveToPoint(Mutable, 0, x + width - v17 * 0.868407, y + height, cp2xc, y + height, x + width - v17 * 1.52866, y + height);
        CGPathAddLineToPoint(Mutable, 0, x + v17 * 1.528665, y + height);
        CGPathAddCurveToPoint(Mutable, 0, x + v17 * 1.08849, y + height, x + v17 * 0.868407, y + height, x + v17 * 0.631494, v50);
        CGPathAddCurveToPoint(Mutable, 0, x + v17 * 0.372824, v171, x + v17 * 0.16906, v173, x + v17 * 0.0749114, v169);
        CGPathAddCurveToPoint(Mutable, 0, x, v167, x, v164, x, y + height - v17 * 1.52866);
        CGPathCloseSubpath(Mutable);
      }
    }

    CGContextAddPath(cGContext, Mutable);
    CGContextClip(cGContext);
    CGPathRelease(Mutable);
  }

  if (drawBackground)
  {
    drawGradient = [(WFWorkflowIconDrawer *)self drawGradient];
    backgroundColor = [(WFWorkflowIconDrawer *)self backgroundColor];
    v20 = backgroundColor;
    if (drawGradient)
    {
      gradient = [backgroundColor gradient];

      v22 = [gradient baseColorForDarkMode:-[WFWorkflowIconDrawer dark](self highContrast:{"dark"), -[WFWorkflowIconDrawer highContrast](self, "highContrast")}];
      CGContextSetFillColorWithColor(cGContext, [v22 CGColor]);
      v210.origin.x = x;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = height;
      CGContextFillRect(cGContext, v210);
      cGGradient = [gradient CGGradient];
      v211.origin.x = x;
      v211.origin.y = y;
      v211.size.width = width;
      v211.size.height = height;
      MidX = CGRectGetMidX(v211);
      v212.origin.x = x;
      v212.origin.y = y;
      v212.size.width = width;
      v212.size.height = height;
      MinY = CGRectGetMinY(v212);
      v213.origin.x = x;
      v213.origin.y = y;
      v213.size.width = width;
      v213.size.height = height;
      v26 = CGRectGetMidX(v213);
      v214.origin.x = x;
      v214.origin.y = y;
      v214.size.width = width;
      v214.size.height = height;
      v206.y = CGRectGetMaxY(v214);
      v204.x = MidX;
      v204.y = MinY;
      v206.x = v26;
      CGContextDrawLinearGradient(cGContext, cGGradient, v204, v206, 2u);
    }

    else
    {
      CGContextSetFillColorWithColor(cGContext, [backgroundColor CGColor]);

      v215.origin.x = x;
      v215.origin.y = y;
      v215.size.width = width;
      v215.size.height = height;
      CGContextFillRect(cGContext, v215);
    }
  }

  if ([(WFWorkflowIconDrawer *)self drawShadowBehindGlyph])
  {
    CGContextSaveGState(cGContext);
    v27 = +[WFColor blackColor];
    v28 = [v27 colorWithAlphaComponent:0.3];

    cGColor = [v28 CGColor];
    v205.width = 0.0;
    v205.height = 2.0;
    CGContextSetShadowWithColor(cGContext, v205, 2.0, cGColor);
  }

  customImageData = [(WFWorkflowIconDrawer *)self customImageData];
  if (-[WFWorkflowIconDrawer useCustomImage](self, "useCustomImage") && [customImageData length])
  {
    v31 = [WFImage imageWithData:customImageData scale:0 allowAnimated:1.0];
    [v31 drawInContext:contextCopy inRect:{x, y, width, height}];
  }

  else
  {
    [(WFWorkflowIconDrawer *)self glyphSize];
    v35 = *MEMORY[0x1E695F060];
    v34 = *(MEMORY[0x1E695F060] + 8);
    if (v32 == *MEMORY[0x1E695F060] && v33 == v34)
    {
      v41 = 0.0;
      if (drawBackground)
      {
        v216.origin.x = x;
        v216.origin.y = y;
        v216.size.width = width;
        v216.size.height = height;
        v41 = CGRectGetWidth(v216) / 6.0;
      }

      v217.origin.x = x;
      v217.origin.y = y;
      v217.size.width = width;
      v217.size.height = height;
      v218 = CGRectInset(v217, v41, v41);
      v39 = v218.origin.x;
      v40 = v218.origin.y;
      v37 = v218.size.width;
      v38 = v218.size.height;
    }

    else
    {
      v37 = v32;
      v38 = v33;
      v39 = (width - v32) * 0.5;
      v40 = (height - v33) * 0.5;
    }

    symbolName = [(WFWorkflowIconDrawer *)self symbolName];
    drawerContext = [(WFWorkflowIconDrawer *)self drawerContext];
    if (symbolName)
    {
      glyphColor = [(WFWorkflowIconDrawer *)self glyphColor];
      v44 = symbolName;
      WFDrawGlyphForVectorIdentifier(drawerContext, contextCopy, symbolName, glyphColor, v39, v40, v37, v38);
    }

    else
    {
      glyphCharacter = [(WFWorkflowIconDrawer *)self glyphCharacter];
      glyphColor2 = [(WFWorkflowIconDrawer *)self glyphColor];
      outline = [(WFWorkflowIconDrawer *)self outline];
      v175 = drawerContext;
      v172 = contextCopy;
      theChar = glyphCharacter;
      v174 = glyphColor2;
      v219.origin.x = v39;
      v219.origin.y = v40;
      v219.size.width = v37;
      v219.size.height = v38;
      if (!CGRectIsEmpty(v219))
      {
        if (outline)
        {
          WFSystemImageNameForOutlineGlyphCharacter(glyphCharacter);
        }

        else
        {
          WFSystemImageNameForGlyphCharacter(glyphCharacter);
        }
        v48 = ;
        if (v48)
        {
          WFDrawGlyphForVectorIdentifier(v175, v172, v48, v174, v39, v40, v37, v38);
        }

        else
        {
          theChar = WFReplacementGlyphCharacterForCharacter(glyphCharacter);
          glyphTestFont = [v175 glyphTestFont];
          WFCTFontCopyCharacterSet(glyphTestFont);
          v53 = v52;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __WFDrawGlyphForIconCharacter_block_invoke;
          aBlock[3] = &__block_descriptor_40_e5_v8__0l;
          aBlock[4] = v52;
          v54 = _Block_copy(aBlock);
          if (CFCharacterSetIsCharacterMember(v53, theChar))
          {
            v170 = [MEMORY[0x1E696AEC0] stringWithCharacters:&theChar length:1];
            v165 = [v170 length];
            v55 = objc_alloc(MEMORY[0x1E696AAB0]);
            getkCTFontAttributeName();
            v198 = v56;
            v199[0] = glyphTestFont;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v199 forKeys:&v198 count:1];
            v168 = [v55 initWithString:v170 attributes:v57];

            WFCTFramesetterCreateWithAttributedString(v168);
            v59 = v58;
            if (v58)
            {
              v184[0] = MEMORY[0x1E69E9820];
              v184[1] = 3221225472;
              v184[2] = __WFDrawGlyphForIconCharacter_block_invoke_2;
              v184[3] = &__block_descriptor_40_e5_v8__0l;
              v184[4] = v58;
              v159 = _Block_copy(v184);
              WFCTFramesetterSuggestFrameSizeWithConstraints(v59, 0, v165);
              v62 = v61;
              if (v61 != v35 || v60 != v34)
              {
                v160 = v60;
                memset(&v183, 0, sizeof(v183));
                v63 = v172;
                CGContextGetCTM(&v183, [v172 CGContext]);
                v64 = vsqrtq_f64(vmlaq_f64(vmulq_f64(*&v183.c, *&v183.c), *&v183.a, *&v183.a));
                cp1x = v64.f64[0];
                if ((vmovn_s64(vmvnq_s8(vceqq_f64(v64, vdupq_laneq_s64(v64, 1)))).u8[0] & 1) == 0 && floor(v64.f64[0]) == v64.f64[0])
                {
                  cp2x = 0;
                  v65 = 1.0 / v64.f64[0];
                }

                else
                {
                  v65 = 0.0;
                  cp2x = 1;
                }

                v220.origin.x = v39;
                v220.origin.y = v40;
                v220.size.width = v37;
                v220.size.height = v38;
                v66 = CGRectGetWidth(v220);
                v221.origin.x = v39;
                v221.origin.y = v40;
                v221.size.width = v37;
                v221.size.height = v38;
                v67 = CGRectGetHeight(v221);
                +[WFWorkflowIconDrawerContext glyphTestFontSize];
                v69 = (v66 - v65) / v62;
                if (v69 >= (v67 - v65) / v160)
                {
                  v69 = (v67 - v65) / v160;
                }

                v70 = [v175 newGlyphFontForSize:v69 * v68];
                v71 = v70;
                if (v70)
                {
                  v182[0] = MEMORY[0x1E69E9820];
                  v182[1] = 3221225472;
                  v182[2] = __WFDrawGlyphForIconCharacter_block_invoke_3;
                  v182[3] = &__block_descriptor_40_e5_v8__0l;
                  v182[4] = v70;
                  v145 = _Block_copy(v182);
                  v150 = v54;
                  v72 = objc_alloc(MEMORY[0x1E696AAB0]);
                  getkCTFontAttributeName();
                  v151 = customImageData;
                  v196[0] = v73;
                  v197[0] = v71;
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v193 = 0x2020000000;
                  v74 = getkCTForegroundColorAttributeNameSymbolLoc_ptr;
                  v194 = getkCTForegroundColorAttributeNameSymbolLoc_ptr;
                  if (!getkCTForegroundColorAttributeNameSymbolLoc_ptr)
                  {
                    v187 = MEMORY[0x1E69E9820];
                    v188 = 3221225472;
                    v189 = __getkCTForegroundColorAttributeNameSymbolLoc_block_invoke;
                    v190 = &unk_1E7B02C60;
                    p_buf = &buf;
                    v75 = CoreTextLibrary();
                    v76 = dlsym(v75, "kCTForegroundColorAttributeName");
                    *(*(p_buf + 1) + 24) = v76;
                    getkCTForegroundColorAttributeNameSymbolLoc_ptr = *(*(p_buf + 1) + 24);
                    v74 = *(*(&buf + 1) + 24);
                  }

                  _Block_object_dispose(&buf, 8);
                  if (!v74)
                  {
                    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                    v141 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCTForegroundColorAttributeName(void)"];
                    [currentHandler handleFailureInFunction:v141 file:@"WFWorkflowIconDrawer.m" lineNumber:36 description:{@"%s", dlerror()}];

                    __break(1u);
                  }

                  v196[1] = *v74;
                  v77 = v174;
                  v54 = v150;
                  v197[1] = [v174 CGColor];
                  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v197 forKeys:v196 count:2];
                  v156 = [v72 initWithString:v170 attributes:v78];

                  WFCTFramesetterCreateWithAttributedString(v156);
                  v80 = v79;
                  if (v79)
                  {
                    v187 = MEMORY[0x1E69E9820];
                    v188 = 3221225472;
                    v189 = __WFDrawGlyphForIconCharacter_block_invoke_4;
                    v190 = &__block_descriptor_40_e5_v8__0l;
                    p_buf = v79;
                    v143 = _Block_copy(&v187);
                    WFCTFramesetterSuggestFrameSizeWithConstraints(v80, 0, v165);
                    v152 = v81;
                    v154 = v82;
                    if (cp2x)
                    {
                      v83 = getWFVoiceShortcutClientLogObject();
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(buf) = 136315138;
                        *(&buf + 4) = "WFDrawGlyphForIconCharacter";
                        _os_log_impl(&dword_1B1DE3000, v83, OS_LOG_TYPE_ERROR, "%s Warning: Drawing at a non-integral scale or stretching the glyph will not result in a perfectly positioned result", &buf, 0xCu);
                      }

                      v222.origin.x = v39;
                      v222.origin.y = v40;
                      v222.size.width = v37;
                      v222.size.height = v38;
                      v161 = CGRectGetWidth(v222);
                      v223.origin.x = 0.0;
                      v223.origin.y = 0.0;
                      v223.size.width = v152;
                      v223.size.height = v154;
                      v84 = CGRectGetWidth(v223);
                      v224.origin.x = v39;
                      v224.origin.y = v40;
                      v224.size.width = v37;
                      v224.size.height = v38;
                      MinX = CGRectGetMinX(v224);
                      v225.origin.x = 0.0;
                      v225.origin.y = 0.0;
                      v225.size.width = v152;
                      v225.size.height = v154;
                      v86 = CGRectGetMinX(v225);
                      v226.origin.x = v39;
                      v226.origin.y = v40;
                      v226.size.width = v37;
                      v226.size.height = v38;
                      v87 = CGRectGetHeight(v226);
                      v88 = (v161 - v84) * 0.5 + MinX - v86;
                      v227.origin.y = 0.0;
                      v227.origin.x = v88;
                      v227.size.width = v152;
                      v227.size.height = v154;
                      v89 = CGRectGetHeight(v227);
                      v228.origin.x = v39;
                      v228.origin.y = v40;
                      v228.size.width = v37;
                      v228.size.height = v38;
                      v90 = CGRectGetMinY(v228);
                      v229.origin.y = 0.0;
                      v229.origin.x = v88;
                      v229.size.width = v152;
                      v229.size.height = v154;
                      v230.origin.y = (v87 - v89) * 0.5 + v90 - CGRectGetMinY(v229);
                      v230.origin.x = v88;
                      v230.size.width = v152;
                      v230.size.height = v154;
                      v91 = CGPathCreateWithRect(v230, 0);
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v193 = __WFDrawGlyphForIconCharacter_block_invoke_120;
                      v194 = &__block_descriptor_40_e5_v8__0l;
                      v195 = v91;
                      v92 = _Block_copy(&buf);
                      WFCTFramesetterCreateFrame(v80, 0, v165, v91);
                      v94 = v93;
                      v177 = MEMORY[0x1E69E9820];
                      v178 = 3221225472;
                      v179 = __WFDrawGlyphForIconCharacter_block_invoke_2_121;
                      v180 = &__block_descriptor_40_e5_v8__0l;
                      v181 = v93;
                      v95 = _Block_copy(&v177);
                      v96 = v172;
                      WFCTFrameDraw(v94, [v172 CGContext]);
                      v95[2](v95);

                      v92[2](v92);
                    }

                    else
                    {
                      v97 = vcvtpd_u64_f64(v38 * 0.5);
                      v98 = vcvtmd_u64_f64(cp1x);
                      v99 = (2 * v97);
                      v100 = v98 * (ceil(v37) + v99);
                      v101 = v98 * (ceil(v38) + v99);
                      v162 = 4 * v100;
                      size = 4 * v100 * v101;
                      v102 = malloc_type_calloc(size, 1uLL, 0xFA74BF8FuLL);
                      DeviceRGB = CGColorSpaceCreateDeviceRGB();
                      cp2xa = v102;
                      v104 = CGBitmapContextCreate(v102, v100, v101, 8uLL, 4 * v100, DeviceRGB, 1u);
                      CGContextScaleCTM(v104, v98, v98);
                      v231.origin.x = v97;
                      v231.origin.y = v97;
                      v231.size.width = v37;
                      v231.size.height = v38;
                      v105 = CGRectGetWidth(v231);
                      v232.origin.x = 0.0;
                      v232.origin.y = 0.0;
                      v232.size.width = v152;
                      v232.size.height = v154;
                      v106 = CGRectGetWidth(v232);
                      v233.origin.x = v97;
                      v233.origin.y = v97;
                      v233.size.width = v37;
                      v233.size.height = v38;
                      v107 = (v105 - v106) * 0.5 + CGRectGetMinX(v233);
                      v234.origin.x = v107;
                      v234.origin.y = v97;
                      v234.size.width = v37;
                      v234.size.height = v38;
                      v108 = CGRectGetWidth(v234);
                      v235.origin.x = 0.0;
                      v235.origin.y = 0.0;
                      v235.size.width = v152;
                      v235.size.height = v154;
                      v109 = CGRectGetHeight(v235);
                      v236.origin.x = v107;
                      v236.origin.y = v97;
                      v236.size.width = v37;
                      v236.size.height = v38;
                      v237.origin.y = (v108 - v109) * 0.5 + CGRectGetMinY(v236);
                      v237.origin.x = v107;
                      v237.size.width = v37;
                      v237.size.height = v38;
                      v110 = CGPathCreateWithRect(v237, 0);
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v193 = __WFDrawGlyphForIconCharacter_block_invoke_3_122;
                      v194 = &__block_descriptor_40_e5_v8__0l;
                      v195 = v110;
                      v111 = v98;
                      v153 = _Block_copy(&buf);
                      WFCTFramesetterCreateFrame(v80, 0, v165, v110);
                      v113 = v112;
                      v177 = MEMORY[0x1E69E9820];
                      v178 = 3221225472;
                      v179 = __WFDrawGlyphForIconCharacter_block_invoke_4_123;
                      v180 = &__block_descriptor_40_e5_v8__0l;
                      v181 = v112;
                      v155 = _Block_copy(&v177);
                      WFCTFrameDraw(v113, v104);
                      CGContextRelease(v104);
                      v114 = *MEMORY[0x1E695E480];
                      v115 = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], v101);
                      CFBitVectorSetCount(v115, v101);
                      CFBitVectorSetAllBits(v115, 0);
                      space = DeviceRGB;
                      v116 = CFBitVectorCreateMutable(v114, v100);
                      CFBitVectorSetCount(v116, v100);
                      CFBitVectorSetAllBits(v116, 0);
                      v166 = v101;
                      if (v101)
                      {
                        v117 = 0;
                        v118 = cp2xa;
                        do
                        {
                          if (v100)
                          {
                            v119 = 0;
                            v120 = v118;
                            do
                            {
                              v121 = *v120;
                              v120 += 4;
                              if (v121)
                              {
                                CFBitVectorSetBitAtIndex(v115, v117, 1u);
                                CFBitVectorSetBitAtIndex(v116, v119, 1u);
                              }

                              ++v119;
                            }

                            while (v100 != v119);
                          }

                          ++v117;
                          v118 += v162;
                        }

                        while (v117 != v166);
                      }

                      v122 = CGDataProviderCreateWithData(0, cp2xa, size, WFDrawGlyphFreeCallback);
                      v163 = CGImageCreate(v100, v166, 8uLL, 0x20uLL, v162, space, 1u, v122, 0, 0, kCGRenderingIntentDefault);
                      customImageData = v151;
                      CGDataProviderRelease(v122);
                      CGColorSpaceRelease(space);
                      v200.location = 0;
                      v200.length = v166;
                      FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(v115, v200, 1u);
                      v201.location = 0;
                      v201.length = v166;
                      v54 = v150;
                      spacea = CFBitVectorGetLastIndexOfBit(v115, v201, 1u);
                      v202.location = 0;
                      v202.length = v100;
                      cp2xb = CFBitVectorGetFirstIndexOfBit(v116, v202, 1u);
                      v203.location = 0;
                      v203.length = v100;
                      LastIndexOfBit = CFBitVectorGetLastIndexOfBit(v116, v203, 1u);
                      CFRelease(v115);
                      CFRelease(v116);
                      v125 = v100;
                      v126 = v166;
                      if (FirstIndexOfBit == -1)
                      {
                        v127 = 0;
                      }

                      else
                      {
                        v127 = FirstIndexOfBit;
                      }

                      v128 = v127;
                      v129 = cp2xb;
                      if (cp2xb == -1)
                      {
                        v129 = 0;
                      }

                      v130 = v129;
                      v131 = v126 - spacea + -1.0;
                      if (spacea == -1)
                      {
                        v131 = 0.0;
                      }

                      v132 = v125 - LastIndexOfBit + -1.0;
                      if (LastIndexOfBit == -1)
                      {
                        v132 = 0.0;
                      }

                      v238.origin.x = *MEMORY[0x1E695EFF8] + v130;
                      v238.origin.y = *(MEMORY[0x1E695EFF8] + 8) + v128;
                      v238.size.width = v125 - (v132 + v130);
                      v238.size.height = v126 - (v131 + v128);
                      v133 = CGImageCreateWithImageInRect(v163, v238);
                      CGImageRelease(v163);
                      v92 = v153;
                      v134 = [[WFImage alloc] initWithCGImage:v133 scale:1 orientation:v111];
                      [(WFImage *)v134 sizeInPoints];
                      v136 = v135;
                      v138 = v137;
                      CGImageRelease(v133);
                      v239.origin.x = v39;
                      v239.origin.y = v40;
                      v239.size.width = v37;
                      v239.size.height = v38;
                      v139 = CGRectGetMinX(v239);
                      v240.origin.x = v39;
                      v240.origin.y = v40;
                      v240.size.width = v37;
                      v240.size.height = v38;
                      [(WFImage *)v134 drawInContext:v172 inRect:round(((v37 - v136) * 0.5 + v139) * v111) / v111, round(((v38 - v138) * 0.5 + CGRectGetMinY(v240)) * v111) / v111, round(v136 * v111) / v111, round(v138 * v111) / v111];

                      v155[2](v155);
                      v92[2](v92);
                    }

                    v143[2](v143);
                  }

                  v145[2](v145);
                }
              }

              v159[2](v159);
            }
          }

          v54[2](v54);

          v48 = 0;
        }
      }

      v44 = 0;
    }
  }

  if ([(WFWorkflowIconDrawer *)self drawShadowBehindGlyph])
  {
    CGContextRestoreGState(cGContext);
  }

  CGContextRestoreGState(cGContext);
}

- (WFColor)glyphColor
{
  glyphColor = self->_glyphColor;
  if (!glyphColor)
  {
    v4 = +[WFColor whiteColor];
    v5 = self->_glyphColor;
    self->_glyphColor = v4;

    glyphColor = self->_glyphColor;
  }

  return glyphColor;
}

- (WFWorkflowIconDrawer)initWithDrawerContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = WFWorkflowIconDrawer;
  v5 = [(WFWorkflowIconDrawer *)&v10 init];
  if (v5)
  {
    if (contextCopy)
    {
      v6 = contextCopy;
    }

    else
    {
      v6 = +[WFWorkflowIconDrawerContext cachedContextOrNewContext];
    }

    drawerContext = v5->_drawerContext;
    v5->_drawerContext = v6;

    *&v5->_drawGradient = 257;
    v5->_rounded = 1;
    v8 = v5;
  }

  return v5;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  -[WFWorkflowIconDrawer setGlyphCharacter:](self, "setGlyphCharacter:", [iconCopy glyphCharacter]);
  backgroundColor = [iconCopy backgroundColor];

  [(WFWorkflowIconDrawer *)self setBackgroundColor:backgroundColor];
}

- (WFWorkflowIconDrawer)initWithIcon:(id)icon drawerContext:(id)context
{
  iconCopy = icon;
  v7 = [(WFWorkflowIconDrawer *)self initWithDrawerContext:context];
  v8 = v7;
  if (v7)
  {
    [(WFWorkflowIconDrawer *)v7 setIcon:iconCopy];
    v9 = v8;
  }

  return v8;
}

+ (id)pngDataForImageWithIcon:(id)icon size:(CGSize)size
{
  v4 = [self imageWithIcon:icon size:{size.width, size.height}];
  pNGRepresentation = [v4 PNGRepresentation];

  return pNGRepresentation;
}

+ (id)glyphImageWithIcon:(id)icon size:(CGSize)size
{
  v4 = [self imageWithIcon:icon size:0 background:{size.width, size.height}];
  platformImage = [v4 platformImage];

  return platformImage;
}

+ (id)imageWithIcon:(id)icon size:(CGSize)size scale:(double)scale padding:(CGSize)padding glyphColor:(id)color background:(BOOL)background
{
  backgroundCopy = background;
  height = padding.height;
  width = padding.width;
  v12 = size.height;
  v13 = size.width;
  colorCopy = color;
  iconCopy = icon;
  v18 = [[self alloc] initWithIcon:iconCopy];

  [v18 setGlyphColor:colorCopy];
  [v18 setDrawBackground:backgroundCopy];
  v19 = [v18 imageWithSize:v13 scale:v12 padding:{scale, width, height}];

  return v19;
}

+ (id)imageWithIcon:(id)icon size:(CGSize)size background:(BOOL)background
{
  backgroundCopy = background;
  height = size.height;
  width = size.width;
  iconCopy = icon;
  v10 = +[WFColor whiteColor];
  v11 = [self imageWithIcon:iconCopy size:v10 scale:backgroundCopy padding:width glyphColor:height background:{0.0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  return v11;
}

@end