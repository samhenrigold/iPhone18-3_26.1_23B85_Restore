@interface TopoNumberBadge
+ (id)imageBadgeForCount:(int64_t)count;
+ (int)initImageCache;
- (CGImage)newNumberBadge;
- (CGSize)preferredFrameSize;
- (TopoNumberBadge)initWithOwningView:(id)view;
- (void)calculateBadgeMetrics;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setCount:(int64_t)count;
- (void)setOwningView:(id)view;
@end

@implementation TopoNumberBadge

+ (int)initImageCache
{
  if (qword_27E3834D0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
  v9 = objc_msgSend_imageNamed_inBundle_(ImageStore, v8, @"TopoBadgeBG", v7);
  if (v9 && (qword_27E3834D0 = objc_msgSend_resizableImageWithCapInsets_(v9, v10, v11, v12, 0.0, 14.0, 0.0, 14.0)) != 0)
  {
    return 0;
  }

  else
  {
    return -6729;
  }
}

- (TopoNumberBadge)initWithOwningView:(id)view
{
  v19.receiver = self;
  v19.super_class = TopoNumberBadge;
  v4 = [(TopoNumberBadge *)&v19 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, view, v6);
    v11 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v8, v9, v10, 17.0);
    v7->_font = v11;
    v12 = v11;
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v7, v13, 1, v14);
    objc_msgSend_initImageCache(TopoNumberBadge, v15, v16, v17);
  }

  return v7;
}

- (void)setOwningView:(id)view
{
  self->_owningView = view;
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, view, v3);
  objc_msgSend_scale(v5, v6, v7, v8);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v9, v10);
}

- (CGSize)preferredFrameSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  font = self->_font;
  if (font)
  {
  }

  self->_font = 0;
  v4.receiver = self;
  v4.super_class = TopoNumberBadge;
  [(TopoNumberBadge *)&v4 dealloc];
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    (MEMORY[0x2821F9670])(self, sel_calculateBadgeMetrics, count);
  }
}

- (void)layoutSublayers
{
  v5 = objc_msgSend_newNumberBadge(self, a2, v2, v3);
  objc_msgSend_setContents_(self, v6, v5, v7);

  CGImageRelease(v5);
}

- (void)calculateBadgeMetrics
{
  v33[1] = *MEMORY[0x277D85DE8];
  count = self->_count;
  if (count < 1)
  {
    _Q0 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v6 = sub_23EB6CDA8(count, a2, v2, v3);
    v10 = objc_msgSend_length(v6, v7, v8, v9);
    font = self->_font;
    v32 = *MEMORY[0x277D740A8];
    v33[0] = font;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v33, &v32, 1);
    objc_msgSend_sizeWithAttributes_(v6, v14, v13, v15);
    v17 = v16;
    objc_msgSend_capHeight(self->_font, v18, v19, v20);
    self->_textSize.width = v17;
    self->_textSize.height = v21;
    if (v10)
    {
      if (objc_msgSend_characterAtIndex_(v6, a2, 0, v3) == 49)
      {
        v17 = v17 + 1.0;
      }

      if (objc_msgSend_characterAtIndex_(v6, v22, v10 - 1, v23) == 49)
      {
        v17 = v17 + -1.0;
      }
    }

    v24 = v17 + 20.0;
    v25 = floorf(v24);
    if (v25 <= 23.0)
    {
      v25 = 23.0;
    }

    v26 = v25;
    __asm { FMOV            V0.2D, #31.0 }

    _Q0.width = v26;
  }

  self->_imageSize = _Q0;
  objc_msgSend_setNeedsLayout(self, a2, v2, v3);
}

+ (id)imageBadgeForCount:(int64_t)count
{
  countCopy = count;
  if (count)
  {
    v4 = objc_alloc_init(TopoNumberBadge);
    v7 = v4;
    if (v4)
    {
      objc_msgSend_setCount_(v4, v5, countCopy, v6);
      v8 = *MEMORY[0x277CBF348];
      v9 = *(MEMORY[0x277CBF348] + 8);
      objc_msgSend_preferredFrameSize(v7, v10, v11, v12);
      objc_msgSend_setFrame_(v7, v13, v14, v15, v8, v9, v16, v17);
      v21 = objc_msgSend_newNumberBadge(v7, v18, v19, v20);
      countCopy = objc_msgSend_imageWithCGImage_(MEMORY[0x277D755B8], v22, v21, v23);
      CGImageRelease(v21);
    }

    else
    {
      countCopy = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return countCopy;
}

- (CGImage)newNumberBadge
{
  v80[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_bounds(self, a2, v2, v3);
  if (CGRectIsEmpty(v82))
  {
    return 0;
  }

  objc_msgSend_bounds(self, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  objc_msgSend_scale(qword_27E3834D0, v13, v14, v15);
  v17 = v16;
  v81.width = v10;
  v81.height = v12;
  UIGraphicsBeginImageContextWithOptions(v81, 0, v17);
  v18 = qword_27E3834D0;
  objc_msgSend_bounds(self, v19, v20, v21);
  objc_msgSend_drawInRect_(v18, v22, v23, v24);
  v28 = sub_23EB6CDA8(self->_count, v25, v26, v27);
  objc_msgSend_bounds(self, v29, v30, v31);
  v33 = (v32 - self->_textSize.height) * 0.5 + -4.0;
  v34 = floorf(v33);
  objc_msgSend_leading(self->_font, v35, v36, v37);
  v39 = v38;
  objc_msgSend_ascender(self->_font, v40, v41, v42);
  v44 = v43;
  objc_msgSend_descender(self->_font, v45, v46, v47);
  v49 = v39 - (v44 - v48);
  objc_msgSend_ascender(self->_font, v50, v51, v52);
  v54 = v53;
  objc_msgSend_capHeight(self->_font, v55, v56, v57);
  *&v58 = v49 + v54 - v58;
  *&v49 = v34 - floorf(*&v58);
  objc_msgSend_bounds(self, v59, v60, v61);
  v63 = (v62 - self->_textSize.width) * 0.5;
  v64 = roundf(v63);
  font = self->_font;
  v66 = *MEMORY[0x277D740C0];
  v79[0] = *MEMORY[0x277D740A8];
  v79[1] = v66;
  v80[0] = font;
  v80[1] = objc_msgSend_whiteColor(MEMORY[0x277D75348], v67, v68, v69);
  v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v80, v79, 2);
  objc_msgSend_drawAtPoint_withAttributes_(v28, v72, v71, v73, v64, *&v49);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (ImageFromCurrentImageContext)
  {
    v77 = objc_msgSend_CGImage(ImageFromCurrentImageContext, v74, v75, v76);
    ImageFromCurrentImageContext = v77;
    if (v77)
    {
      CGImageRetain(v77);
    }
  }

  return ImageFromCurrentImageContext;
}

@end