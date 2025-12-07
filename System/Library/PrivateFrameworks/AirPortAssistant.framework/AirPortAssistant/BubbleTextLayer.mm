@interface BubbleTextLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (BOOL)isAnnotationBubble;
- (BubbleTextLayer)initWithOwningView:(id)view;
- (CGImage)image;
- (CGRect)textFrame;
- (CGSize)boundsSizeConstraint;
- (CGSize)calculatePreferredSubframeSizes;
- (CGSize)getImagePreferredSize;
- (CGSize)getRightAccessoryLayerPreferredSize;
- (CGSize)preferredFrameSize;
- (CGSize)textPreferredFrameSizeForLayerSize:(CGSize)size;
- (double)textBaselineOffset;
- (void)addAnnotationPoint:(CGPoint)point;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setBoundsSizeConstraint:(CGSize)constraint;
- (void)setFont:(id)font;
- (void)setImage:(CGImage *)image;
- (void)setOwningView:(id)view;
- (void)setRightAccessoryLayer:(id)layer;
@end

@implementation BubbleTextLayer

- (BubbleTextLayer)initWithOwningView:(id)view
{
  v22.receiver = self;
  v22.super_class = BubbleTextLayer;
  v4 = [(BubbleTextLayer *)&v22 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, view, v6);
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v7, v8, 1, v9);
    v10 = sub_23EBFD680(0.0, 0.0, 0.0, 0.0);
    objc_msgSend_setFillColor_(v7, v11, v10, v12);
    CGColorRelease(v10);
    if (sub_23EC132F8(v13, v14, v15, v16))
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    }

    v7->_whiteShadowColor = v20;
    v7->_generalShadowColor = 0;
    objc_msgSend_setFontSize_(v7, v17, v18, v19, 17.0);
  }

  return v7;
}

- (void)dealloc
{
  theLine = self->_theLine;
  if (theLine)
  {
    CFRelease(theLine);
    self->_theLine = 0;
  }

  curCTFont = self->_curCTFont;
  if (curCTFont)
  {
    CFRelease(curCTFont);
    self->_curCTFont = 0;
  }

  generalShadowColor = self->_generalShadowColor;
  if (generalShadowColor)
  {
    CFRelease(generalShadowColor);
    self->_generalShadowColor = 0;
  }

  whiteShadowColor = self->_whiteShadowColor;
  if (whiteShadowColor)
  {
    CFRelease(whiteShadowColor);
    self->_whiteShadowColor = 0;
  }

  v7.receiver = self;
  v7.super_class = BubbleTextLayer;
  [(BubbleTextLayer *)&v7 dealloc];
}

- (void)addAnnotationPoint:(CGPoint)point
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(point);
  objc_msgSend_addObject_(self->_annotationPoints, v5, DictionaryRepresentation, v6);

  objc_msgSend_setNeedsLayout(self, v7, v8, v9);
}

- (void)setOwningView:(id)view
{
  self->_owningView = view;
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, view, v3);
  objc_msgSend_scale(v5, v6, v7, v8);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v9, v10);
}

- (CGImage)image
{
  result = self->_leftImageLayer;
  if (result)
  {
    return objc_msgSend_contents(result, a2, v2, v3);
  }

  return result;
}

- (void)setImage:(CGImage *)image
{
  if (!self->_leftImageLayer)
  {
    v6 = objc_msgSend_layer(MEMORY[0x277CD9ED0], a2, image, v3);
    self->_leftImageLayer = v6;
    objc_msgSend_addSublayer_(self, v7, v6, v8);
  }

  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, image, v3);
  v9 = MEMORY[0x277CD9FF0];
  v13 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v12, 0.0);
  objc_msgSend_setValue_forKey_(v9, v14, v13, *MEMORY[0x277CDA908]);
  objc_msgSend_setContents_(self->_leftImageLayer, v15, image, v16);
  objc_msgSend_setNeedsLayout(self, v17, v18, v19);
  v22 = MEMORY[0x277CD9FF0];

  MEMORY[0x2821F9670](v22, sel_commit, v20, v21);
}

- (void)setRightAccessoryLayer:(id)layer
{
  if (layer && self->_rightAccessoryLayer != layer)
  {
    objc_msgSend_addSublayer_(self, a2, layer, v3);
  }

  rightAccessoryLayer = self->_rightAccessoryLayer;
  if (rightAccessoryLayer)
  {
    v7 = rightAccessoryLayer == layer;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    objc_msgSend_removeFromSuperlayer(rightAccessoryLayer, a2, layer, v3);
  }

  self->_rightAccessoryLayer = layer;

  objc_msgSend_setNeedsLayout(self, a2, layer, v3);
}

- (void)setFont:(id)font
{
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setFont:]", 800, "%@\n", self);
    }

    if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setFont:]", 800, "%@\n", font);
    }
  }

  v5 = CFGetTypeID(font);
  if (v5 == CGFontGetTypeID())
  {
    objc_msgSend_fontSize(self, v6, v7, v8);
    v10 = CTFontCreateWithGraphicsFont(font, v9, 0, 0);
  }

  else if (v5 == CFStringGetTypeID())
  {
    objc_msgSend_fontSize(self, v14, v15, v16);
    v10 = CTFontCreateWithName(font, v17, 0);
  }

  else
  {
    if (v5 != CTFontGetTypeID())
    {
      return;
    }

    v10 = CFRetain(font);
  }

  v18 = v10;
  if (v10)
  {
    curCTFont = self->_curCTFont;
    if (curCTFont)
    {
      CFRelease(curCTFont);
    }

    self->_curCTFont = v18;

    objc_msgSend_setNeedsLayout(self, v11, v12, v13);
  }
}

- (void)setBoundsSizeConstraint:(CGSize)constraint
{
  height = constraint.height;
  width = constraint.width;
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer setBoundsSizeConstraint:]", 800, "%@  constraint = (w = %.2f h = %.2f)\n", self, *&width, *&height);
  }

  self->_boundsSizeConstraint.width = width;
  self->_boundsSizeConstraint.height = height;

  objc_msgSend_layoutSublayers(self, a2, v3, v4);
}

- (CGSize)boundsSizeConstraint
{
  width = self->_boundsSizeConstraint.width;
  height = self->_boundsSizeConstraint.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)getImagePreferredSize
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer getImagePreferredSize]", 800, "%@\n", self);
  }

  v5 = objc_msgSend_contents(self->_leftImageLayer, a2, v2, v3);
  if (v5)
  {
    v6 = v5;
    Width = CGImageGetWidth(v5);
    objc_msgSend_contentsScale(self, v8, v9, v10);
    v12 = Width / v11;
    Height = CGImageGetHeight(v6);
    objc_msgSend_contentsScale(self, v14, v15, v16);
    v18 = Height / v17;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer getImagePreferredSize]", 800, "image layer size w = %.1f h = %.1f\n", v12, v18);
  }

  v19 = v12;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)getRightAccessoryLayerPreferredSize
{
  rightAccessoryLayer = self->_rightAccessoryLayer;
  if (rightAccessoryLayer)
  {
    objc_msgSend_preferredFrameSize(rightAccessoryLayer, a2, v2, v3);
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (BOOL)isAnnotationBubble
{
  annotationPoints = self->_annotationPoints;
  if (annotationPoints)
  {
    LOBYTE(annotationPoints) = objc_msgSend_count(annotationPoints, a2, v2, v3) != 0;
  }

  return annotationPoints;
}

- (CGSize)textPreferredFrameSizeForLayerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_string(self, a2, v3, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = MEMORY[0x277CC4838];
  v13 = MEMORY[0x277CC49C0];
  if (isKindOfClass)
  {
    theLine = self->_theLine;
    if (theLine)
    {
      CFRelease(theLine);
    }

    v15 = objc_msgSend_string(self, v9, v10, v11);
    self->_theLine = CTLineCreateWithAttributedString(v15);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEAC0]);
    curCTFont = self->_curCTFont;
    v18 = *v12;
    v22 = objc_msgSend_foregroundColor(self, v19, v20, v21);
    v25 = objc_msgSend_initWithObjectsAndKeys_(v16, v23, curCTFont, v24, v18, v22, *v13, 0);
    v29 = objc_msgSend_string(self, v26, v27, v28);
    v30 = CFAttributedStringCreate(0, v29, v25);
    v31 = self->_theLine;
    if (v31)
    {
      CFRelease(v31);
    }

    self->_theLine = CTLineCreateWithAttributedString(v30);
    CFRelease(v25);
    CFRelease(v30);
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    TruncatedLine = self->_theLine;
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CBEAC0]);
    v34 = self->_curCTFont;
    v35 = *v12;
    v39 = objc_msgSend_foregroundColor(self, v36, v37, v38);
    v42 = objc_msgSend_initWithObjectsAndKeys_(v33, v40, v34, v41, v35, v39, *v13, 0);
    v43 = CFAttributedStringCreate(0, @"…", v42);
    v44 = CTLineCreateWithAttributedString(v43);
    TruncatedLine = CTLineCreateTruncatedLine(self->_theLine, width, kCTLineTruncationMiddle, v44);
    if (v42)
    {
      CFRelease(v42);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    v46 = self->_theLine;
    if (v46)
    {
      CFRelease(v46);
    }

    self->_theLine = TruncatedLine;
  }

  TypographicBounds = CTLineGetTypographicBounds(TruncatedLine, &self->_ascent, &self->_descent, &self->_leading);
  v48 = ceilf(TypographicBounds);
  ascent = self->_ascent;
  descent = self->_descent;
  v51 = ascent + descent;
  v52 = ceilf(v51);
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 != -1)
    {
LABEL_26:
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer textPreferredFrameSizeForLayerSize:]", 800, "width = %.2f  height = %.2f  ascent = %.2f  descent = %.2f  leading = %.2f\n", v48, v52, ascent, descent, self->_leading);
      goto LABEL_27;
    }

    if (sub_23EB74AC8(&dword_27E382F28, 0x320u))
    {
      ascent = self->_ascent;
      descent = self->_descent;
      goto LABEL_26;
    }
  }

LABEL_27:
  v53 = v48;
  v54 = v52;
  result.height = v54;
  result.width = v53;
  return result;
}

- (CGSize)calculatePreferredSubframeSizes
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "\n");
  }

  objc_msgSend_boundsSizeConstraint(self, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  p_leftImageLayerSize = &self->_leftImageLayerSize;
  objc_msgSend_getImagePreferredSize(self, v10, v11, v12);
  self->_leftImageLayerSize.width = v13;
  self->_leftImageLayerSize.height = v14;
  p_rightAccessoryLayerSize = &self->_rightAccessoryLayerSize;
  objc_msgSend_getRightAccessoryLayerPreferredSize(self, v16, v17, v18);
  self->_rightAccessoryLayerSize.width = v22;
  self->_rightAccessoryLayerSize.height = v23;
  if (v6 != *MEMORY[0x277CBF3A8] || v8 != *(MEMORY[0x277CBF3A8] + 8))
  {
    if (self->_leftImageLayer)
    {
      v6 = v6 - (p_leftImageLayerSize->width + 7.0);
    }

    v25 = v6 - (v22 + 7.0);
    if (!self->_rightAccessoryLayer)
    {
      v25 = v6;
    }

    v6 = v25 + -16.0;
  }

  p_textSize = &self->_textSize;
  objc_msgSend_textPreferredFrameSizeForLayerSize_(self, v19, v20, v21, v6, v8);
  self->_textSize.width = width;
  self->_textSize.height = height;
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        goto LABEL_19;
      }

      width = p_textSize->width;
      height = self->_textSize.height;
    }

    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "text area size w = %.1f h = %.1f\n", width, height);
LABEL_19:
    if (dword_27E382F28 <= 800)
    {
      if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "image layer size w = %.1f h = %.1f\n", p_leftImageLayerSize->width, self->_leftImageLayerSize.height);
      }

      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "right accessory layer size w = %.1f h = %.1f\n", p_rightAccessoryLayerSize->width, self->_rightAccessoryLayerSize.height);
      }
    }
  }

  v32 = p_textSize->width;
  if (self->_leftImageLayer)
  {
    v32 = v32 + p_leftImageLayerSize->width + 7.0;
  }

  if (self->_rightAccessoryLayer)
  {
    v32 = v32 + p_rightAccessoryLayerSize->width + 7.0;
  }

  v33 = self->_textSize.height;
  self->_contentSize.width = v32;
  self->_contentSize.height = v33;
  v34 = v33 + 12.0;
  v35 = v32 + 16.0;
  if (objc_msgSend_isAnnotationBubble(self, v27, v28, v29))
  {
    v34 = v34 + 16.0;
  }

  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer calculatePreferredSubframeSizes]", 800, "final bubble size w = %.1f h = %.1f\n", v35, v34);
  }

  self->_bubbleSize.width = v35;
  self->_bubbleSize.height = v34;
  v36 = v34 + 4.0;
  v37 = ceilf(v36);
  v38 = v35 + 2.0;
  v39 = ceilf(v38);
  result.height = v37;
  result.width = v39;
  return result;
}

- (CGSize)preferredFrameSize
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer preferredFrameSize]", 800, "\n");
  }

  objc_msgSend_calculatePreferredSubframeSizes(self, a2, v2, v3);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGRect)textFrame
{
  x = self->_textFrame.origin.x;
  y = self->_textFrame.origin.y;
  width = self->_textFrame.size.width;
  height = self->_textFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)textBaselineOffset
{
  result = 0.0;
  if (self->_textSize.width != *MEMORY[0x277CBF3A8] || self->_textSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer textBaselineOffset]", 800, "returning %.2f\n", self->_ascent);
    }

    return self->_ascent;
  }

  return result;
}

- (void)layoutSublayers
{
  if (dword_27E382F28 <= 800)
  {
    if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
    {
      sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "%@\n", self);
    }

    if (dword_27E382F28 <= 800)
    {
      if (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        objc_msgSend_frame(self, a2, v2, v3);
        v6 = v5;
        objc_msgSend_frame(self, v7, v8, v9);
        v11 = v10;
        objc_msgSend_frame(self, v12, v13, v14);
        v16 = v15;
        objc_msgSend_frame(self, v17, v18, v19);
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "bubble layer frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v6, v11, v16, v20);
      }

      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        objc_msgSend_boundsSizeConstraint(self, a2, v2, v3);
        v22 = v21;
        objc_msgSend_boundsSizeConstraint(self, v23, v24, v25);
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "constraint = (w = %.2f h = %.2f)\n", v22, v26);
      }
    }
  }

  objc_msgSend_frame(self, a2, v2, v3);
  if (v31 != *MEMORY[0x277CBF3A8] || v30 != *(MEMORY[0x277CBF3A8] + 8))
  {
    objc_msgSend_calculatePreferredSubframeSizes(self, v27, v28, v29);
    objc_msgSend_bounds(self, v33, v34, v35);
    v37 = v36;
    objc_msgSend_bounds(self, v38, v39, v40);
    self->_bubbleFrame.origin.y = 0.0;
    bubbleSize = self->_bubbleSize;
    self->_bubbleFrame.origin.x = ceil(v37 + (v42 - bubbleSize.width) * 0.5);
    self->_bubbleFrame.size = bubbleSize;
    objc_msgSend_bounds(self, v43, v44, v45);
    v50 = (v49 - self->_contentSize.width) * 0.5;
    v51 = floorf(v50);
    p_textFrame = &self->_textFrame;
    self->_textFrame.origin.x = v51;
    if (self->_leftImageLayer)
    {
      p_textFrame->origin.x = self->_leftImageLayerSize.width + 7.0 + -1.0 + v51;
    }

    objc_msgSend_bounds(self, v46, v47, v48);
    v54 = v53 - self->_ascent;
    objc_msgSend_bounds(self, v55, v56, v57);
    width = self->_textSize.width;
    height = self->_textSize.height;
    v64 = v54 + (v63 - height) * -0.5;
    y = ceilf(v64);
    self->_textFrame.origin.y = y;
    self->_textFrame.size.width = width;
    self->_textFrame.size.height = height;
    if (dword_27E382F28 > 800)
    {
      goto LABEL_24;
    }

    if (dword_27E382F28 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382F28, 0x320u))
      {
        goto LABEL_24;
      }

      y = self->_textFrame.origin.y;
      width = self->_textFrame.size.width;
      height = self->_textFrame.size.height;
    }

    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_textFrame placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", p_textFrame->origin.x, y, width, height);
LABEL_24:
    if (self->_leftImageLayer)
    {
      objc_msgSend_bounds(self, v58, v59, v60);
      v68 = self->_leftImageLayerSize.width;
      v67 = self->_leftImageLayerSize.height;
      v69 = (v66 - self->_contentSize.width) * 0.5;
      v70 = ceilf(v69);
      v71 = (self->_bubbleSize.height - v67) * 0.5;
      v72 = ceilf(v71);
      objc_msgSend_setFrame_(self->_leftImageLayer, v73, v74, v75, v70, v72, v68, v67);
      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_leftImageLayer placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v70, v72, v68, v67);
      }
    }

    if (self->_rightAccessoryLayer)
    {
      v88.origin.x = p_textFrame->origin.x;
      v88.origin.y = self->_textFrame.origin.y;
      v88.size.width = self->_textFrame.size.width;
      v88.size.height = self->_textFrame.size.height;
      v76 = CGRectGetMaxX(v88) + 7.0;
      objc_msgSend_bounds(self, v77, v78, v79);
      MaxY = CGRectGetMaxY(v89);
      v82 = self->_rightAccessoryLayerSize.width;
      v81 = self->_rightAccessoryLayerSize.height;
      v83 = MaxY - v81;
      objc_msgSend_setFrame_(self->_rightAccessoryLayer, v84, v85, v86, v76, MaxY - v81, v82, v81);
      if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
      {
        sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer layoutSublayers]", 800, "_rightAccessoryLayer placed at frame=(x = %.1f, y = %.1f, w = %.1f, h = %.1f)\n", v76, v83, v82, v81);
      }
    }

    objc_msgSend_setNeedsDisplay(self, v58, v59, v60);
  }
}

- (void)drawInContext:(CGContext *)context
{
  if (dword_27E382F28 <= 800 && (dword_27E382F28 != -1 || sub_23EB74AC8(&dword_27E382F28, 0x320u)))
  {
    sub_23EB75374(&dword_27E382F28, "[BubbleTextLayer drawInContext:]", 800, "\n");
  }

  CGContextSaveGState(context);
  if (objc_msgSend_isAnnotationBubble(self, v5, v6, v7))
  {
    sub_23EBFD864(context, self->_bubbleFrame.origin.x, self->_bubbleFrame.origin.y, self->_bubbleFrame.size.width, self->_bubbleFrame.size.height, self->_bubbleFrame.size.height * 0.5, 16.0);
  }

  else
  {
    sub_23EBFDA80(context, self->_bubbleFrame.origin.x, self->_bubbleFrame.origin.y, self->_bubbleFrame.size.width, self->_bubbleFrame.size.height, self->_bubbleFrame.size.height * 0.5);
  }

  CGContextClosePath(context);
  generalShadowColor = self->_generalShadowColor;
  if (generalShadowColor)
  {
    v54.width = 0.0;
    v54.height = 1.0;
    CGContextSetShadowWithColor(context, v54, 1.0, generalShadowColor);
  }

  p_bubbleFrame = &self->_bubbleFrame;
  CGContextBeginTransparencyLayerWithRect(context, self->_bubbleFrame, 0);
  if (objc_msgSend_fillColor(self, v10, v11, v12) && objc_msgSend_fillColor2(self, v13, v14, v15))
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v17 = MEMORY[0x277CBEA60];
    v21 = objc_msgSend_fillColor(self, v18, v19, v20);
    v25 = objc_msgSend_fillColor2(self, v22, v23, v24);
    v28 = objc_msgSend_arrayWithObjects_(v17, v26, v21, v27, v25, 0);
    v29 = CGGradientCreateWithColors(DeviceRGB, v28, 0);
    CGContextClip(context);
    v61.origin.x = p_bubbleFrame->origin.x;
    v61.origin.y = self->_bubbleFrame.origin.y;
    v61.size.width = self->_bubbleFrame.size.width;
    v61.size.height = self->_bubbleFrame.size.height;
    MidX = CGRectGetMidX(v61);
    v62.origin.x = p_bubbleFrame->origin.x;
    v62.origin.y = self->_bubbleFrame.origin.y;
    v62.size.width = self->_bubbleFrame.size.width;
    v62.size.height = self->_bubbleFrame.size.height;
    v31 = CGRectGetMidX(v62);
    v63.origin.x = p_bubbleFrame->origin.x;
    v63.origin.y = self->_bubbleFrame.origin.y;
    v63.size.width = self->_bubbleFrame.size.width;
    v63.size.height = self->_bubbleFrame.size.height;
    v60.y = CGRectGetMaxY(v63);
    v55.y = 0.0;
    v55.x = MidX;
    v60.x = v31;
    CGContextDrawLinearGradient(context, v29, v55, v60, 0);
    CGGradientRelease(v29);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v32 = objc_msgSend_fillColor(self, v13, v14, v15);
    CGContextSetFillColorWithColor(context, v32);
    CGContextDrawPath(context, kCGPathFill);
  }

  CGContextEndTransparencyLayer(context);
  v56.width = 0.0;
  v56.height = 0.0;
  CGContextSetShadowWithColor(context, v56, 0.0, 0);
  objc_msgSend_frameWidth(self, v33, v34, v35);
  if (v39 != 0.0 && objc_msgSend_frameColor(self, v36, v37, v38))
  {
    objc_msgSend_frameWidth(self, v40, v41, v42);
    CGContextSetLineWidth(context, v43);
    v47 = objc_msgSend_frameColor(self, v44, v45, v46);
    CGContextSetStrokeColorWithColor(context, v47);
    CGContextDrawPath(context, kCGPathStroke);
  }

  CGContextSetShouldSmoothFonts(context, 0);
  CGContextSetAllowsFontSmoothing(context, 0);
  CGContextSetTextPosition(context, self->_textFrame.origin.x, self->_textFrame.origin.y);
  objc_msgSend_bounds(self, v48, v49, v50);
  CGContextTranslateCTM(context, 0.0, v51);
  CGContextScaleCTM(context, 1.0, -1.0);
  v52 = self->_generalShadowColor;
  if (v52)
  {
    v57.width = 0.0;
    v57.height = -1.0;
    CGContextSetShadowWithColor(context, v57, 1.0, v52);
  }

  whiteShadowColor = self->_whiteShadowColor;
  if (whiteShadowColor)
  {
    v58.width = 0.0;
    v58.height = 1.0;
    CGContextSetShadowWithColor(context, v58, 0.0, whiteShadowColor);
  }

  CTLineDraw(self->_theLine, context);
  v59.width = 0.0;
  v59.height = 0.0;
  CGContextSetShadowWithColor(context, v59, 0.0, 0);
  CGContextRestoreGState(context);
}

+ (BOOL)needsDisplayForKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"foregroundColor", v3) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v6, @"fillColor", v7) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v8, @"fillColor2", v9) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v10, @"frameColor", v11) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v12, @"frameWidth", v13) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v14, @"fontSize", v15) & 1) != 0 || (objc_msgSend_isEqualToString_(key, v16, @"string", v17))
  {
    return 1;
  }

  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS___BubbleTextLayer;
  return objc_msgSendSuper2(&v19, sel_needsDisplayForKey_, key);
}

@end