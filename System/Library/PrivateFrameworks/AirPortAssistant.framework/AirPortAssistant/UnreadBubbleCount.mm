@interface UnreadBubbleCount
+ (int)initImageCache;
+ (void)deallocImageCache;
- (UnreadBubbleCount)initWithFrame:(CGRect)frame;
- (void)calculateTextMetrics;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setCount:(int64_t)count;
- (void)setIsSelected:(BOOL)selected;
@end

@implementation UnreadBubbleCount

+ (int)initImageCache
{
  if (qword_27E3834B0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
  qword_27E3834B0 = objc_msgSend_imageNamed_inBundle_(ImageStore, v8, @"UnreadBubble", v7);
  if (qword_27E3834B0 && (v9 = MEMORY[0x277CCA8D8], v10 = objc_opt_class(), v13 = objc_msgSend_bundleForClass_(v9, v11, v10, v12), (qword_27E3834B8 = objc_msgSend_imageNamed_inBundle_(ImageStore, v14, @"UnreadBubbleSelected", v13)) != 0))
  {
    return 0;
  }

  else
  {
    return -6729;
  }
}

+ (void)deallocImageCache
{
  qword_27E3834B0 = 0;

  qword_27E3834B8 = 0;
}

- (UnreadBubbleCount)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UnreadBubbleCount;
  v6 = [(UnreadBubbleCount *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v6)
  {
    objc_msgSend_initImageCache(UnreadBubbleCount, v3, v4, v5);
    objc_msgSend_setOpaque_(v6, v7, 0, v8);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UnreadBubbleCount;
  [(UnreadBubbleCount *)&v2 dealloc];
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    objc_msgSend_calculateTextMetrics(self, a2, count, v3);

    objc_msgSend_setNeedsDisplay(self, v6, v7, v8);
  }
}

- (void)setIsSelected:(BOOL)selected
{
  if (self->_isSelected != selected)
  {
    self->_isSelected = selected;
    objc_msgSend_setNeedsDisplay(self, a2, selected, v3);
  }
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = UnreadBubbleCount;
  [(UnreadBubbleCount *)&v32 layoutSubviews];
  objc_msgSend_frame(self, v3, v4, v5);
  v7 = v6;
  v9 = v8;
  objc_msgSend_frame(self, v10, v11, v12);
  MinX = CGRectGetMinX(v33);
  objc_msgSend_frame(self, v14, v15, v16);
  v18 = v17;
  objc_msgSend_frame(self, v19, v20, v21);
  v23 = v22;
  objc_msgSend_bounds(self, v24, v25, v26);
  v28 = (v23 - v27) * 0.5;
  objc_msgSend_setFrame_(self, v29, v30, v31, MinX, v18 + roundf(v28), v7, v9);
}

- (void)drawRect:(CGRect)rect
{
  v74[2] = *MEMORY[0x277D85DE8];
  if (self->_count >= 1)
  {
    if (self->_isSelected)
    {
      v6 = objc_msgSend_resizableImageWithCapInsets_(qword_27E3834B8, a2, v3, v4, 0.0, 9.0, 0.0, 9.0);
      v7 = 0.122;
      v8 = 0.357;
      v9 = 0.906;
    }

    else
    {
      v6 = objc_msgSend_resizableImageWithCapInsets_(qword_27E3834B0, a2, v3, v4, 0.0, 9.0, 0.0, 9.0);
      v7 = 1.0;
      v8 = 1.0;
      v9 = 1.0;
    }

    v10 = sub_23EBFD680(v7, v8, v9, 1.0);
    objc_msgSend_frame(self, v11, v12, v13);
    v15 = v14;
    objc_msgSend_frame(self, v16, v17, v18);
    objc_msgSend_drawInRect_(v6, v19, v20, v21, 0.0, 0.0, v15);
    v25 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v22, v23, v24, 17.0);
    v29 = sub_23EB6CDA8(self->_count, v26, v27, v28);
    objc_msgSend_bounds(self, v30, v31, v32);
    v34 = (v33 - self->_textSize.height) * 0.5;
    v35 = floorf(v34);
    objc_msgSend_leading(v25, v36, v37, v38);
    v40 = v39;
    objc_msgSend_ascender(v25, v41, v42, v43);
    v45 = v44;
    objc_msgSend_descender(v25, v46, v47, v48);
    v50 = v40 - (v45 - v49);
    objc_msgSend_ascender(v25, v51, v52, v53);
    v55 = v54;
    objc_msgSend_capHeight(v25, v56, v57, v58);
    *&v59 = v50 + v55 - v59;
    *&v50 = v35 - floorf(*&v59);
    objc_msgSend_bounds(self, v60, v61, v62);
    v64 = (v63 - self->_textSize.width) * 0.5;
    v65 = roundf(v64);
    v74[0] = v25;
    v66 = *MEMORY[0x277D740C0];
    v73[0] = *MEMORY[0x277D740A8];
    v73[1] = v66;
    v74[1] = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v67, v10, v68);
    v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, v74, v73, 2);
    objc_msgSend_drawAtPoint_withAttributes_(v29, v71, v70, v72, v65, *&v50);
    CGColorRelease(v10);
  }
}

- (void)calculateTextMetrics
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (self->_count >= 1)
  {
    v5 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], a2, v2, v3, 17.0);
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%u", v7, self->_count);
    v12 = objc_msgSend_length(v8, v9, v10, v11);
    v31 = *MEMORY[0x277D740A8];
    v32[0] = v5;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v32, &v31, 1);
    objc_msgSend_sizeWithAttributes_(v8, v15, v14, v16);
    v18 = v17;
    objc_msgSend_capHeight(v5, v19, v20, v21);
    self->_textSize.width = v18;
    self->_textSize.height = v25;
    if (v12)
    {
      objc_msgSend_characterAtIndex_(v8, v22, 0, v24);
      objc_msgSend_characterAtIndex_(v8, v26, v12 - 1, v27);
    }

    objc_msgSend_size(qword_27E3834B0, v22, v23, v24);
  }

  objc_msgSend_frame(self, a2, v2, v3);
  objc_msgSend_setFrame_(self, v28, v29, v30);
}

@end