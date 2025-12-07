@interface IMDynamicGradientLayer
- (CGColorSpace)colorSpace;
- (CGImage)gradient;
- (CGRect)gradientFrame;
- (IMDynamicGradientLayer)init;
- (IMDynamicGradientReferenceView)referenceView;
- (id)description;
- (void)_updateAnimation;
- (void)_updateGradientImage;
- (void)dealloc;
- (void)didMoveToWindow:(id)window;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)layoutSublayers;
- (void)setColorSpace:(CGColorSpace *)space;
- (void)setColors:(id)colors;
- (void)setReferenceView:(id)view;
- (void)setScreenScale:(double)scale;
@end

@implementation IMDynamicGradientLayer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = IMDynamicGradientLayer;
  v4 = [(IMDynamicGradientLayer *)&v15 description];
  v9 = objc_msgSend_referenceView(self, v5, v6, v8, v7);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ referenceView:%@", v12, v11, v4, v9);

  return v13;
}

- (IMDynamicGradientLayer)init
{
  v39.receiver = self;
  v39.super_class = IMDynamicGradientLayer;
  v2 = [(IMDynamicGradientLayer *)&v39 init];
  v7 = v2;
  if (v2)
  {
    v6.n128_u64[0] = 1.0;
    objc_msgSend_setScreenScale_(v2, v3, v4, v6, v5);
    v12 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v8, v9, v11, v10);
    v13.n128_u64[0] = *MEMORY[0x277CBF348];
    objc_msgSend_setAnchorPoint_(v12, v14, v15, v13, v16, *(MEMORY[0x277CBF348] + 8));
    v21 = objc_msgSend_layer(MEMORY[0x277CD9FF8], v17, v18, v20, v19);
    CATransform3DMakeScale(&v38, -1.0, -1.0, 1.0);
    objc_msgSend_setSublayerTransform_(v21, v22, &v38, v24, v23);
    objc_msgSend_setTrackingLayer_(v7, v25, v21, v27, v26);
    objc_msgSend_addSublayer_(v7, v28, v21, v30, v29);
    objc_msgSend_setGradientLayer_(v7, v31, v12, v33, v32);
    objc_msgSend_addSublayer_(v21, v34, v12, v36, v35);
  }

  return v7;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = IMDynamicGradientLayer;
  [(IMDynamicGradientLayer *)&v3 dealloc];
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    objc_msgSend__updateAnimation(self, a2, visible, v4, v3);
  }

  v7.receiver = self;
  v7.super_class = IMDynamicGradientLayer;
  [(IMDynamicGradientLayer *)&v7 layerDidBecomeVisible:visibleCopy];
}

- (void)layoutSublayers
{
  v106.receiver = self;
  v106.super_class = IMDynamicGradientLayer;
  [(IMDynamicGradientLayer *)&v106 layoutSublayers];
  v7 = objc_msgSend_superlayer(self, v3, v4, v6, v5);
  v12 = objc_msgSend_referenceView(self, v8, v9, v11, v10);
  v17 = v12;
  if (v7)
  {
    if (v12)
    {
      objc_msgSend_bounds(self, v13, v14, v16, v15);
      v19 = v18.n128_f64[0];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      objc_msgSend_gradientFrame(v17, v26, v27, v18, v28);
      v30 = v29.n128_f64[0];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      objc_msgSend_gradientFrame(v17, v37, v38, v29, v39);
      v101 = v40;
      v102 = v41;
      v99 = v43;
      v100 = v42;
      v98 = v19;
      v107.origin.x = v19;
      v44 = v21;
      v107.origin.y = v21;
      v45 = v23;
      v107.size.width = v23;
      v46 = v25;
      v107.size.height = v25;
      v47 = v34;
      if (!CGRectIsEmpty(v107))
      {
        v108.origin.x = v30;
        v108.origin.y = v32;
        v108.size.width = v34;
        v108.size.height = v36;
        if (!CGRectIsEmpty(v108))
        {
          v109.origin.x = v101;
          v109.origin.y = v102;
          v109.size.height = v99;
          v109.size.width = v100;
          if (!CGRectIsEmpty(v109))
          {
            v51.n128_f64[0] = v101;
            objc_msgSend_setGradientFrame_(self, v48, v49, v51, v50, v102, v100, v99);
            v52 = v45 / v34 * (v100 / v34);
            v103 = v102 / v36;
            v53.n128_f64[0] = v103;
            objc_msgSend_begin(MEMORY[0x277CD9FF0], v54, v55, v53, v56);
            objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v57, 1, v59, v58);
            v64 = objc_msgSend_trackingLayer(self, v60, v61, v63, v62);
            v65.n128_u64[0] = 0;
            objc_msgSend_setBounds_(v64, v66, v67, v65, v68, 0.0, v52, v46 / v36 * (v99 / v36));
            v110.origin.x = v98;
            v110.origin.y = v44;
            v110.size.width = v45;
            v110.size.height = v46;
            MidX = CGRectGetMidX(v110);
            v111.origin.x = v98;
            v111.origin.y = v44;
            v111.size.width = v45;
            v111.size.height = v46;
            MidY = CGRectGetMidY(v111);
            v71.n128_f64[0] = MidX;
            objc_msgSend_setPosition_(v64, v72, v73, v71, v74, MidY);
            CATransform3DMakeScale(&v105, -v47, -v36, 1.0);
            objc_msgSend_setTransform_(v64, v75, &v105, v77, v76);
            v82 = objc_msgSend_gradientLayer(self, v78, v79, v81, v80);
            v83.n128_f64[0] = -v52 - v101 / v47;
            objc_msgSend_setContentsRect_(v82, v84, v85, v83, v86, -(v46 / v36 * (v99 / v36)) - v103, v52, v46 / v36 * (v99 / v36));
            v87.n128_f64[0] = v98;
            objc_msgSend_setBounds_(v82, v88, v89, v87, v90, v44, v45, v46);
            CATransform3DMakeScale(&v104, 1.0 / v47, 1.0 / v36, 1.0);
            CATransform3DTranslate(&v105, &v104, 0.0, 0.0, 0.0);
            objc_msgSend_setTransform_(v82, v91, &v105, v93, v92);
            objc_msgSend_commit(MEMORY[0x277CD9FF0], v94, v95, v97, v96);
          }
        }
      }
    }
  }
}

- (void)setReferenceView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_referenceView, obj);
    objc_msgSend__updateGradientImage(self, v6, v7, v9, v8);
    updated = objc_msgSend__updateAnimation(self, v10, v11, v13, v12);
    if (obj)
    {
      objc_msgSend_gradientFrame(obj, obj, v14, v16, v15);
      v18 = v17.n128_f64[0];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      objc_msgSend_gradientFrame(self, v25, v26, v17, v27);
      v38.origin.x = v28;
      v38.origin.y = v29;
      v38.size.width = v30;
      v38.size.height = v31;
      v37.origin.x = v18;
      v37.origin.y = v20;
      v37.size.width = v22;
      v37.size.height = v24;
      updated = CGRectEqualToRect(v37, v38);
      if ((updated & 1) == 0)
      {
        updated = objc_msgSend_setNeedsLayout(self, obj, v32, v34, v33);
      }
    }
  }

  MEMORY[0x2821F96F8](updated);
}

- (void)didMoveToWindow:(id)window
{
  if (window)
  {
    objc_msgSend__updateAnimation(self, a2, window, v4, v3);
  }
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  if ((objc_msgSend_isEqualToArray_(self->_colors, v4, colorsCopy, v6, v5) & 1) == 0)
  {
    v11 = objc_msgSend_copy(colorsCopy, v7, v8, v10, v9);
    colors = self->_colors;
    self->_colors = v11;

    objc_msgSend__updateGradientImage(self, v13, v14, v16, v15);
  }
}

- (void)setScreenScale:(double)scale
{
  if (self->_screenScale != scale)
  {
    self->_screenScale = scale;
    objc_msgSend__updateGradientImage(self, a2, v3, *&scale, v4);
  }
}

- (void)setColorSpace:(CGColorSpace *)space
{
  if (self->_colorSpace != space && (CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CGColorSpaceRelease(self->_colorSpace);
    self->_colorSpace = CGColorSpaceRetain(space);

    objc_msgSend__updateGradientImage(self, v5, v6, v8, v7);
  }
}

- (CGColorSpace)colorSpace
{
  result = self->_colorSpace;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    self->_colorSpace = result;
  }

  return result;
}

- (CGImage)gradient
{
  v68[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_colors(self, a2, v2, v4, v3);
  v11 = objc_msgSend_referenceView(self, v7, v8, v10, v9);
  v16 = v11;
  Image = 0;
  if (v6 && v11)
  {
    if (qword_27F611840 != -1)
    {
      sub_254805940();
    }

    objc_msgSend_gradientFrame(v16, v12, v13, v15, v14);
    v19.n128_u64[0] = v18;
    objc_msgSend__floorToPixels_(self, v20, v21, v19, v22);
    v24 = v23.n128_f64[0];
    v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v25, v26, v23, v27);
    v34 = objc_msgSend_objectForKey_(qword_27F611838, v29, v28, v31, v30);
    if (!v34)
    {
      v34 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v32, 2, v35, v33);
      objc_msgSend_setObject_forKey_(qword_27F611838, v36, v34, v37, v28);
    }

    Image = objc_msgSend_objectForKey_(v34, v32, v6, v35, v33);
    if (Image)
    {
      goto LABEL_16;
    }

    objc_msgSend_screenScale(self, v38, v39, v41, v40);
    v43 = v24 * v42.n128_f64[0];
    v47 = objc_msgSend_count(v6, v44, v45, v42, v46);
    Mutable = CFArrayCreateMutable(0, v47, MEMORY[0x277CBF128]);
    v68[0] = v68;
    MEMORY[0x28223BE20](Mutable);
    v50 = (v68 - v49);
    bzero(v68 - v49, v51);
    if (v47 >= 1)
    {
      for (i = 0; i != v47; ++i)
      {
        v57 = objc_msgSend_objectAtIndexedSubscript_(v6, v52, i, v55, v54);
        CFArrayAppendValue(Mutable, v57);

        v55.n128_f64[0] = i / (v47 - 1);
        v50[i] = v55.n128_f64[0];
      }
    }

    v58 = objc_msgSend_colorSpace(self, v52, v53, v55, v54);
    v59 = CGBitmapContextCreate(0, 1uLL, v43, 8uLL, 4uLL, v58, 5u);
    if (v59)
    {
      v60 = v59;
      v61 = *MEMORY[0x277CBF348];
      v62 = *(MEMORY[0x277CBF348] + 8);
      v63 = CGGradientCreateWithColors(0, Mutable, v50);
      v70.x = 0.0;
      v69.x = v61;
      v69.y = v62;
      v70.y = v43;
      CGContextDrawLinearGradient(v60, v63, v69, v70, 0);
      Image = CGBitmapContextCreateImage(v60);
      CGGradientRelease(v63);
      CGContextRelease(v60);
      if (Image)
      {
        objc_msgSend_setObject_forKey_(v34, v64, Image, v65, v6);
        CGImageRelease(Image);
      }

      if (!Mutable)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v67 = IMLogHandleForCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_254805954(v67);
      }

      CGContextRelease(0);
      Image = 0;
      if (!Mutable)
      {
        goto LABEL_16;
      }
    }

    CFRelease(Mutable);
LABEL_16:
  }

  return Image;
}

- (void)_updateAnimation
{
  v63[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_gradientLayer(self, a2, v2, v4, v3);
  objc_msgSend_removeAnimationForKey_(v6, v7, @"matchmove", v9, v8);
  v14 = objc_msgSend_superlayer(self, v10, v11, v13, v12);
  v19 = objc_msgSend_referenceView(self, v15, v16, v18, v17);
  v20 = v19;
  if (v14 && v19)
  {
    v21 = objc_alloc_init(MEMORY[0x277CD9EE8]);
    objc_msgSend_setKeyPath_(v21, v22, @"contentsRect.origin", v24, v23);
    v29 = objc_msgSend_layer(v20, v25, v26, v28, v27);
    objc_msgSend_setSourceLayer_(v21, v30, v29, v32, v31);

    v33.n128_u64[0] = 0x7FF0000000000000;
    objc_msgSend_setDuration_(v21, v34, v35, v33, v36);
    v37.n128_u64[0] = 0;
    v41 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v38, v39, v37, v40, 0.0);
    v63[0] = v41;
    v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v63, v43, 1);
    objc_msgSend_setSourcePoints_(v21, v45, v44, v47, v46);

    objc_msgSend_setBeginTimeMode_(v21, v48, @"absolute", v50, v49);
    v51.n128_u64[0] = 0;
    objc_msgSend_setBeginTime_(v21, v52, v53, v51, v54);
    objc_msgSend_setAdditive_(v21, v55, 1, v57, v56);
    objc_msgSend_setTargetsSuperlayer_(v21, v58, 1, v60, v59);
    objc_msgSend_addAnimation_forKey_(v6, v61, v21, v62, @"matchmove");
  }
}

- (void)_updateGradientImage
{
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2, v4, v3);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v6, 1, v8, v7);
  v13 = objc_msgSend_gradientLayer(self, v9, v10, v12, v11);
  v18 = objc_msgSend_gradient(self, v14, v15, v17, v16);
  objc_msgSend_setContents_(v13, v19, v18, v21, v20);

  v26 = MEMORY[0x277CD9FF0];

  objc_msgSend_commit(v26, v22, v23, v25, v24);
}

- (IMDynamicGradientReferenceView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  return WeakRetained;
}

- (CGRect)gradientFrame
{
  x = self->_gradientFrame.origin.x;
  y = self->_gradientFrame.origin.y;
  width = self->_gradientFrame.size.width;
  height = self->_gradientFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end