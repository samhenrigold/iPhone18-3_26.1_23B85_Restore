@interface CLLocationButtonTag
+ (unsigned)secureNameForLabel:(int64_t)label;
- (BOOL)contrastValidForBgColorAndFgTextWithCumulativeOpacity:(float)opacity;
- (CGRect)frame;
- (CLLocationButtonTag)initWithCoder:(id)coder;
- (CLLocationButtonTag)initWithLabel:(int64_t)label iconType:(int64_t)type backgroundColor:(id)color tintColor:(id)tintColor cornerRadius:(double)radius frame:(CGRect)frame fontSize:(double)size controlSize:(int)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedStyleForStyle:(id)style;
- (unsigned)secureNameForStyle:(id)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationButtonTag

- (CLLocationButtonTag)initWithLabel:(int64_t)label iconType:(int64_t)type backgroundColor:(id)color tintColor:(id)tintColor cornerRadius:(double)radius frame:(CGRect)frame fontSize:(double)size controlSize:(int)self0
{
  v10 = *&controlSize;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  tintColorCopy = tintColor;
  v67.receiver = self;
  v67.super_class = CLLocationButtonTag;
  v23 = [(CLLocationButtonTag *)&v67 init];
  v28 = v23;
  if (v23)
  {
    objc_msgSend_setLabel_(v23, v24, v26, v27, label, v25);
    objc_msgSend_setIcon_(v28, v29, v31, v32, type, v30);
    objc_msgSend_setBackgroundColor_(v28, v33, v35, v36, colorCopy, v34);
    objc_msgSend_setTintColor_(v28, v37, v39, v40, tintColorCopy, v38);
    v41.n128_f64[0] = radius;
    objc_msgSend_setCornerRadius_(v28, v42, v41, v45, v43, v44);
    v46.n128_f64[0] = x;
    v47.n128_f64[0] = y;
    objc_msgSend_setFrame_(v28, v48, v46, v47, v49, v50, width, height);
    v51.n128_f64[0] = size;
    objc_msgSend_setFontSize_(v28, v52, v51, v55, v53, v54);
    objc_msgSend_fontSize(v28, v56, v59, v60, v57, v58);
    v65.n128_u64[0] = 12.0;
    if (v64.n128_f64[0] < 12.0)
    {
      v64.n128_u64[0] = 18.0;
      objc_msgSend_setFontSize_(v28, v61, v64, v65, v62, v63);
    }

    objc_msgSend_setControlSize_(v28, v61, v64, v65, v10, v63);
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_alloc_init(objc_opt_class());
  if (v7)
  {
    v10 = objc_msgSend_label(self, v4, v8, v9, v5, v6);
    objc_msgSend_setLabel_(v7, v11, v13, v14, v10, v12);
    v20 = objc_msgSend_icon(self, v15, v18, v19, v16, v17);
    objc_msgSend_setIcon_(v7, v21, v23, v24, v20, v22);
    v30 = objc_msgSend_backgroundColor(self, v25, v28, v29, v26, v27);
    objc_msgSend_setBackgroundColor_(v7, v31, v33, v34, v30, v32);

    v40 = objc_msgSend_tintColor(self, v35, v38, v39, v36, v37);
    objc_msgSend_setTintColor_(v7, v41, v43, v44, v40, v42);

    objc_msgSend_cornerRadius(self, v45, v48, v49, v46, v47);
    objc_msgSend_setCornerRadius_(v7, v50, v53, v54, v51, v52);
    objc_msgSend_frame(self, v55, v58, v59, v56, v57);
    objc_msgSend_setFrame_(v7, v60, v63, v64, v61, v62);
    v70 = objc_msgSend_style(self, v65, v68, v69, v66, v67);
    objc_msgSend_setStyle_(v7, v71, v73, v74, v70, v72);

    v80 = objc_msgSend_renderedSuccessfully(self, v75, v78, v79, v76, v77);
    objc_msgSend_setRenderedSuccessfully_(v7, v81, v83, v84, v80, v82);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  label_low = LODWORD(self->_label);
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, v6, v7, label_low, @"kCLLocationButtonLabel");
  objc_msgSend_encodeInt_forKey_(coderCopy, v8, v9, v10, LODWORD(self->_icon), @"kCLLocationButtonIcon");
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v12, v13, self->_backgroundColor, @"kCLLocationButtonBackgroundColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v15, v16, self->_tintColor, @"kCLLocationButtonTintColor");
  v17.n128_u64[0] = *&self->_cornerRadius;
  v17.n128_f32[0] = v17.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(coderCopy, v18, v17, v20, @"kCLLocationButtonCornerRadius", v19);
  v21.n128_u64[0] = *&self->_frame.origin.x;
  v22.n128_u64[0] = *&self->_frame.origin.y;
  objc_msgSend_encodeCGRect_forKey_(coderCopy, v23, v21, v22, @"kCLLocationButtonFrame", v24, self->_frame.size.width, self->_frame.size.height);
  v25.n128_u64[0] = *&self->_fontSize;
  v25.n128_f32[0] = v25.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(coderCopy, v26, v25, v28, @"kCLLocationButtonFontSize", v27);
  objc_msgSend_encodeInt_forKey_(coderCopy, v29, v30, v31, self->_controlSize, @"kCLLocationButtonControlSize");
}

- (CLLocationButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_decodeIntForKey_(coderCopy, v5, v7, v8, @"kCLLocationButtonLabel", v6);
  v14 = objc_msgSend_decodeIntForKey_(coderCopy, v10, v12, v13, @"kCLLocationButtonIcon", v11);
  v15 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v17, v18, v15, @"kCLLocationButtonBackgroundColor");
  v20 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v22, v23, v20, @"kCLLocationButtonTintColor");
  objc_msgSend_decodeFloatForKey_(coderCopy, v25, v27, v28, @"kCLLocationButtonCornerRadius", v26);
  v30 = v29.n128_f32[0];
  v31 = v29.n128_f32[0];
  objc_msgSend_decodeCGRectForKey_(coderCopy, v32, v29, v34, @"kCLLocationButtonFrame", v33);
  v36 = v35.n128_u64[0];
  v38 = v37.n128_f64[0];
  v40 = v39;
  v42 = v41;
  objc_msgSend_decodeFloatForKey_(coderCopy, v43, v35, v37, @"kCLLocationButtonFontSize", v44);
  v46 = v45.n128_f32[0];
  v50 = objc_msgSend_decodeIntForKey_(coderCopy, v47, v45, v49, @"kCLLocationButtonControlSize", v48);

  if (v40 >= v42)
  {
    v54 = v42;
  }

  else
  {
    v54 = v40;
  }

  v52.n128_f64[0] = v54 * 0.5;
  if (v52.n128_f64[0] >= v31)
  {
    v52.n128_u64[0] = 0;
    if (v30 >= 0.0)
    {
      v52.n128_f64[0] = v31;
    }
  }

  v53.n128_u64[0] = v36;
  v55 = objc_msgSend_initWithLabel_iconType_backgroundColor_tintColor_cornerRadius_frame_fontSize_controlSize_(self, v51, v52, v53, v9, v14, v19, v24, v50, v38, v40, v42, v46);

  return v55;
}

- (id)resolvedStyleForStyle:(id)style
{
  v6 = objc_msgSend_copyWithChangeBlock_(style, a2, v4, v5, &unk_284A43A48, v3);

  return v6;
}

- (BOOL)contrastValidForBgColorAndFgTextWithCumulativeOpacity:(float)opacity
{
  v92 = *MEMORY[0x277D85DE8];
  v81 = 0.0;
  v8 = objc_msgSend_tintColor(self, a2, *&opacity, v5, v3, v4);
  objc_msgSend_getRed_green_blue_alpha_(v8, v9, v10, v11, 0, 0, 0, &v81);

  opacityCopy = opacity;
  v13.n128_f64[0] = v81 * opacity;
  v14 = v13.n128_f64[0];
  v19 = objc_msgSend_tintColor(self, v15, v13, v18, v16, v17);
  v25 = objc_msgSend_whiteColor(MEMORY[0x277D75340], v20, v23, v24, v21, v22);
  v26 = v14;
  v27 = sub_2371BC43C(v19, v25, v14);

  v33 = objc_msgSend_tintColor(self, v28, v31, v32, v29, v30);
  v39 = objc_msgSend_blackColor(MEMORY[0x277D75340], v34, v37, v38, v35, v36);
  v40 = sub_2371BC43C(v33, v39, v26);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v83 = opacityCopy;
    v84 = 2048;
    v85 = v81;
    v86 = 2048;
    v87 = v26;
    v88 = 2048;
    v89 = v27;
    v90 = 2048;
    v91 = v40;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton contrastRatio tintColor-details , cumulativeOpacity: %f tintColorAlpha: %f tintColorEffectiveOpacity: %f fgLuminanceAgainstWhite: %f fgLuminanceAgainstBlack: %f", buf, 0x34u);
  }

  v46 = objc_msgSend_backgroundColor(self, v41, v44, v45, v42, v43, 0);
  objc_msgSend_getRed_green_blue_alpha_(v46, v47, v48, v49, 0, 0, 0, &v80);

  v50.n128_f64[0] = v80 * opacityCopy;
  v51 = v80 * opacityCopy;
  v56 = objc_msgSend_backgroundColor(self, v52, v50, v55, v53, v54);
  v62 = objc_msgSend_whiteColor(MEMORY[0x277D75340], v57, v60, v61, v58, v59);
  v63 = v51;
  v64 = sub_2371BC43C(v56, v62, v51);

  v70 = objc_msgSend_backgroundColor(self, v65, v68, v69, v66, v67);
  v76 = objc_msgSend_blackColor(MEMORY[0x277D75340], v71, v74, v75, v72, v73);
  v77 = sub_2371BC43C(v70, v76, v63);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v83 = opacityCopy;
    v84 = 2048;
    v85 = v80;
    v86 = 2048;
    v87 = v63;
    v88 = 2048;
    v89 = v64;
    v90 = 2048;
    v91 = v77;
    _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton contrastRatio backgroundColor-details , cumulativeOpacity: %f bgColorAlpha: %f bgColorEffectiveOpacity: %f bgLuminanceAgainstWhite: %f bgLuminanceAgainstBlack: %f", buf, 0x34u);
  }

  if ((v40 + 0.05) / (v64 + 0.05) >= 1.5 || (v77 + 0.05) / (v27 + 0.05) >= 1.5)
  {
    LOBYTE(v78) = 1;
  }

  else
  {
    v78 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v78)
    {
      *buf = 0;
      _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: #locationButton failed due to insufficient contrastRatio between tintColor and backgroundColor", buf, 2u);
      LOBYTE(v78) = 0;
    }
  }

  return v78;
}

- (unsigned)secureNameForStyle:(id)style
{
  v7 = objc_msgSend_label(self, a2, v4, v5, style, v3);

  return objc_msgSend_secureNameForLabel_(CLLocationButtonTag, v6, v9, v10, v7, v8);
}

+ (unsigned)secureNameForLabel:(int64_t)label
{
  if ((label - 2) >= 4)
  {
    return 0x20000;
  }

  else
  {
    return label + 0x1FFFF;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end