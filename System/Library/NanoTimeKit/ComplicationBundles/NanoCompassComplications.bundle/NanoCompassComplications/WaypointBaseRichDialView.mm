@interface WaypointBaseRichDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device;
- (UIImageView)waypointView;
- (UIView)needleView;
- (WaypointRichComplicationTicksView)ticksView;
- (id)_defaultSmartWaypointImage;
- (id)_defaultWaypointImage;
- (id)_deletedWaypointImage;
- (id)_pointSizeConfigurationForSymbol:(id)symbol;
- (id)_tickColorForWaypointColor:(id)color;
- (id)_waypointImageForSymbol:(id)symbol;
- (id)_waypointPrivacyRedactionImage;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (void)_configureSampleTemplateWithImageProvider:(id)provider;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation WaypointBaseRichDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = WaypointBaseRichDialView;
  v5 = [(WaypointBaseRichDialView *)&v36 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 69);
    *(v5 + 69) = v6;

    objc_msgSend__layoutConstantsForDevice_(v5, v8, deviceCopy);
    *(v5 + 472) = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
    *(v5 + 67) = v35;
    *(v5 + 504) = v10;
    *(v5 + 520) = v11;
    *(v5 + 488) = v9;
    v13 = objc_msgSend__symbolSizeAdjustmentsForDevice_(v5, v12, deviceCopy);
    v14 = *(v5 + 68);
    *(v5 + 68) = v13;

    v17 = objc_msgSend_needleView(v5, v15, v16);
    objc_msgSend_addSubview_(v5, v18, v17);

    v21 = objc_msgSend_ticksView(v5, v19, v20);
    v24 = objc_msgSend_needleView(v5, v22, v23);
    objc_msgSend_insertSubview_belowSubview_(v5, v25, v21, v24);

    v28 = objc_msgSend_waypointView(v5, v26, v27);
    objc_msgSend_addSubview_(v5, v29, v28);
  }

  return v5;
}

- (UIView)needleView
{
  needleView = self->_needleView;
  if (!needleView)
  {
    v4 = NanoCompassWaypointDefaultColor(0);
    v7 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v5, v6, self->_layoutConstants.needleHeight);
    v9 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v8, @"triangle.fill", v7);
    v11 = objc_msgSend_imageWithTintColor_renderingMode_(v9, v10, v4, 1);

    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v14 = objc_msgSend_initWithImage_(v12, v13, v11);
    needleImageView = self->_needleImageView;
    self->_needleImageView = v14;

    dialDiameter = self->_layoutConstants.dialDiameter;
    v17 = objc_alloc(MEMORY[0x277D75D18]);
    v20 = objc_msgSend_initWithFrame_(v17, v18, v19, 0.0, 0.0, dialDiameter, dialDiameter);
    v21 = self->_needleView;
    self->_needleView = v20;

    objc_msgSend_addSubview_(self->_needleView, v22, self->_needleImageView);
    UIRectGetCenter();
    objc_msgSend_setCenter_(self->_needleImageView, v23, v24);

    needleView = self->_needleView;
  }

  return needleView;
}

- (WaypointRichComplicationTicksView)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    v4 = [WaypointRichComplicationTicksView alloc];
    started = objc_msgSend_initWithLargeTickCount_smallTickCountPerLargeTick_largeTickSize_smallTickSize_dialRange_startAngle_(v4, v5, 4, 10, self->_layoutConstants.largeTickSize.width, self->_layoutConstants.largeTickSize.height, self->_layoutConstants.smallTickSize.width, self->_layoutConstants.smallTickSize.height, 6.28318531, 0.0);
    v7 = self->_ticksView;
    self->_ticksView = started;

    v10 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v8, v9, 0.701960784, 1.0);
    objc_msgSend_setLargeTickColor_(self->_ticksView, v11, v10);

    v14 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v12, v13);
    v17 = objc_msgSend_colorWithAlphaComponent_(v14, v15, v16, 0.400000006);
    objc_msgSend_setSmallTickColor_(self->_ticksView, v18, v17);

    objc_msgSend_setFrame_(self->_ticksView, v19, v20, 0.0, 0.0, self->_layoutConstants.dialDiameter, self->_layoutConstants.dialDiameter);
    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (UIImageView)waypointView
{
  waypointView = self->_waypointView;
  if (!waypointView)
  {
    v4 = self->_layoutConstants.symbolSize - self->_layoutConstants.symbolMargin;
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = objc_msgSend_initWithFrame_(v5, v6, v7, 0.0, 0.0, v4, v4);
    v9 = self->_waypointView;
    self->_waypointView = v8;

    objc_msgSend_setContentMode_(self->_waypointView, v10, 4);
    v13 = objc_msgSend__defaultWaypointImage(self, v11, v12);
    objc_msgSend_setImage_(self->_waypointView, v14, v13);

    waypointView = self->_waypointView;
  }

  return waypointView;
}

- (id)monochromeAccentViews
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_needleView(self, a2, v2);
  v7 = objc_msgSend_ticksView(self, v5, v6, v4);
  v14[1] = v7;
  v10 = objc_msgSend_waypointView(self, v8, v9);
  v14[2] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, 3);

  return v12;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v190.receiver = self;
  v190.super_class = WaypointBaseRichDialView;
  [(NanoCompassBaseRichView *)&v190 configureWithImageProvider:providerCopy reason:reason];
  v9 = objc_msgSend_metadata(providerCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"showSampleData");
  v14 = objc_msgSend_BOOLValue(v11, v12, v13);

  if (!v14)
  {
    v17 = objc_msgSend_metadata(providerCopy, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"heading");

    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);
    isEqual = objc_msgSend_isEqual_(v19, v23, v22);

    if (isEqual)
    {

      v19 = 0;
    }

    v27 = objc_msgSend_metadata(providerCopy, v25, v26);
    v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"waypoint");

    v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31);
    v34 = objc_msgSend_isEqual_(v29, v33, v32);

    if (v34)
    {

      v29 = 0;
    }

    v37 = objc_msgSend_metadata(providerCopy, v35, v36);
    v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, @"location");

    v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v40, v41);
    v44 = objc_msgSend_isEqual_(v39, v43, v42);

    v187 = v19;
    if (v44)
    {

      v39 = 0;
    }

    v47 = objc_msgSend_metadata(providerCopy, v45, v46);
    v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, @"nodata");
    v52 = objc_msgSend_BOOLValue(v49, v50, v51);

    v55 = objc_msgSend_metadata(providerCopy, v53, v54);
    v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, @"inactive");
    v186 = objc_msgSend_BOOLValue(v57, v58, v59);

    v62 = objc_msgSend_metadata(providerCopy, v60, v61);
    v64 = objc_msgSend_objectForKeyedSubscript_(v62, v63, @"alwayson");
    v67 = objc_msgSend_BOOLValue(v64, v65, v66);

    v70 = objc_msgSend_metadata(providerCopy, v68, v69);
    v72 = objc_msgSend_objectForKeyedSubscript_(v70, v71, @"smart");
    v75 = objc_msgSend_BOOLValue(v72, v73, v74);

    v78 = objc_msgSend_metadata(providerCopy, v76, v77);
    v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"showPrivacyRedaction");
    v83 = objc_msgSend_BOOLValue(v80, v81, v82);

    if (v52)
    {
      goto LABEL_17;
    }

    v86 = v186;
    if (!v29)
    {
      v86 = 1;
    }

    if (!v187)
    {
      v86 = 1;
    }

    if (!v39)
    {
      v86 = 1;
    }

    if ((v86 | v67))
    {
LABEL_17:
      v87 = objc_msgSend_needleView(self, v84, v85);
      objc_msgSend_setHidden_(v87, v88, 1);

      v91 = objc_msgSend_ticksView(self, v89, v90);
      objc_msgSend_setProgress_(v91, v92, v93, 0.0);

      if (!v29)
      {
        v96 = v187;
        if (v75)
        {
          v97 = objc_msgSend__defaultSmartWaypointImage(self, v94, v95);
        }

        else
        {
          if (v83)
          {
            objc_msgSend__waypointPrivacyRedactionImage(self, v94, v95);
          }

          else
          {
            objc_msgSend__deletedWaypointImage(self, v94, v95);
          }
          v97 = ;
        }

        v179 = v97;
        v180 = objc_msgSend_waypointView(self, v98, v99);
        objc_msgSend_setImage_(v180, v181, v179);

        goto LABEL_40;
      }
    }

    else
    {
      v100 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v84, v85, self->_layoutConstants.needleHeight);
      v102 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v101, @"triangle.fill", v100);
      v105 = objc_msgSend_labelColor(v29, v103, v104);
      v107 = objc_msgSend_imageWithTintColor_renderingMode_(v102, v106, v105, 1);

      objc_msgSend_setImage_(self->_needleImageView, v108, v107);
      v111 = objc_msgSend_needleView(self, v109, v110);
      objc_msgSend_setHidden_(v111, v112, 0);

      v115 = objc_msgSend_rawLocation(v39, v113, v114);
      v118 = objc_msgSend_location(v29, v116, v117);
      v119 = bearingBetweenLocationsInDegree(v115, v118);

      objc_msgSend_heading(v187, v120, v121);
      v125 = v119 - v124;
      if (v125 < 0.0)
      {
        v125 = v125 + 360.0;
      }

      v126 = v125;
      v127 = llroundf(v126);
      v128 = objc_msgSend_ticksView(self, v122, v123);
      v132 = v128;
      if (v127 > 180)
      {
        LODWORD(v131) = -1.0;
        objc_msgSend_setProgressDirection_(v128, v129, v130, v131);

        v135 = 360 - v127;
      }

      else
      {
        LODWORD(v131) = 1.0;
        objc_msgSend_setProgressDirection_(v128, v129, v130, v131);

        v135 = v127;
      }

      v136 = v135 / 360.0;
      v137 = objc_msgSend_ticksView(self, v133, v134);
      *&v138 = v136;
      objc_msgSend_setProgress_(v137, v139, v140, v138);

      v143 = objc_msgSend_labelColor(v29, v141, v142);
      v145 = objc_msgSend__tickColorForWaypointColor_(self, v144, v143);
      v148 = objc_msgSend_ticksView(self, v146, v147);
      objc_msgSend_setHighlightColor_(v148, v149, v145);

      CGAffineTransformMakeRotation(&v189, v127 * 3.14159265 / 180.0);
      v152 = objc_msgSend_needleView(self, v150, v151);
      v188 = v189;
      objc_msgSend_setTransform_(v152, v153, &v188);
    }

    v154 = objc_msgSend_symbol(v29, v94, v95);

    v96 = v187;
    if (v154)
    {
      v157 = objc_msgSend_labelColor(v29, v155, v156);
      v160 = v157;
      if (v187)
      {
        v161 = v186;
      }

      else
      {
        v161 = 1;
      }

      if ((v161 & 1) != 0 || !v39)
      {
        v162 = NanoCompassWaypointDefaultColor(v157);

        v160 = v162;
      }

      v163 = objc_msgSend_symbol(v29, v158, v159);
      v165 = objc_msgSend__waypointImageForSymbol_(self, v164, v163);

      v167 = objc_msgSend_imageWithTintColor_renderingMode_(v165, v166, v160, 1);
      v170 = objc_msgSend_waypointView(self, v168, v169);
      objc_msgSend_setImage_(v170, v171, v167);

      goto LABEL_41;
    }

    v172 = objc_msgSend__defaultWaypointImage(self, v155, v156);
    v175 = objc_msgSend_waypointView(self, v173, v174);
    objc_msgSend_setImage_(v175, v176, v172);

LABEL_40:
    v160 = objc_msgSend_ticksView(self, v177, v178);
    objc_msgSend_setProgress_(v160, v182, v183, 0.0);
LABEL_41:

    objc_msgSend_setNeedsLayout(self, v184, v185);
    goto LABEL_42;
  }

  objc_msgSend__configureSampleTemplateWithImageProvider_(self, v15, providerCopy);
LABEL_42:
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = WaypointBaseRichDialView;
  [(WaypointBaseRichDialView *)&v24 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4);
  UIRectGetCenter();
  v6 = v5;
  v8 = v7;
  v11 = objc_msgSend_needleView(self, v9, v10);
  objc_msgSend_setCenter_(v11, v12, v13, v6, v8);

  v16 = objc_msgSend_ticksView(self, v14, v15);
  objc_msgSend_setCenter_(v16, v17, v18, v6, v8);

  v21 = objc_msgSend_waypointView(self, v19, v20);
  objc_msgSend_setCenter_(v21, v22, v23, v6, v8);
}

- (id)_pointSizeConfigurationForSymbol:(id)symbol
{
  v4 = objc_msgSend_valueForKey_(self->_symbolSizeAdjustments, a2, symbol);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_doubleValue(v4, v5, v6);
  }

  else
  {
    v8 = 0.0;
  }

  v9 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v5, v6, v8 + self->_layoutConstants.symbolSize);

  return v9;
}

- (void)_configureSampleTemplateWithImageProvider:(id)provider
{
  providerCopy = provider;
  v7 = objc_msgSend_metadata(providerCopy, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"symbol");

  v12 = objc_msgSend_metadata(providerCopy, v10, v11);

  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"color");

  v17 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v15, v16, self->_layoutConstants.needleHeight);
  v19 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v18, @"triangle.fill", v17);
  v21 = objc_msgSend_imageWithTintColor_renderingMode_(v19, v20, v14, 1);

  objc_msgSend_setImage_(self->_needleImageView, v22, v21);
  v25 = objc_msgSend_needleView(self, v23, v24);
  objc_msgSend_setHidden_(v25, v26, 0);

  v29 = objc_msgSend_ticksView(self, v27, v28);
  LODWORD(v30) = 1.0;
  objc_msgSend_setProgressDirection_(v29, v31, v32, v30);

  v35 = objc_msgSend_ticksView(self, v33, v34);
  LODWORD(v36) = 0.125;
  objc_msgSend_setProgress_(v35, v37, v38, v36);

  v40 = objc_msgSend__tickColorForWaypointColor_(self, v39, v14);
  v43 = objc_msgSend_ticksView(self, v41, v42);
  objc_msgSend_setHighlightColor_(v43, v44, v40);

  CGAffineTransformMakeRotation(&v58, 0.785398163);
  v47 = objc_msgSend_needleView(self, v45, v46);
  v57 = v58;
  objc_msgSend_setTransform_(v47, v48, &v57);

  v50 = objc_msgSend__waypointImageForSymbol_(self, v49, v9);
  v52 = objc_msgSend_imageWithTintColor_renderingMode_(v50, v51, v14, 1);
  v55 = objc_msgSend_waypointView(self, v53, v54);
  objc_msgSend_setImage_(v55, v56, v52);
}

- (id)_tickColorForWaypointColor:(id)color
{
  colorCopy = color;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = colorCopy;
  if (objc_msgSend_getHue_saturation_brightness_alpha_(colorCopy, v4, &v12, &v11, &v10, &v9))
  {
    v7 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D75348], v5, v6, v12, v11 * 0.8, v10 * 0.9, v9);
  }

  return v7;
}

- (id)_defaultWaypointImage
{
  defaultWaypointImage = self->_defaultWaypointImage;
  if (!defaultWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor(0);
    v7 = objc_msgSend_idealizedWaypoint(NCWaypoint, v5, v6);
    v10 = objc_msgSend_symbol(v7, v8, v9);

    v12 = objc_msgSend__waypointImageForSymbol_(self, v11, v10);
    v14 = objc_msgSend_imageWithTintColor_renderingMode_(v12, v13, v4, 1);
    v15 = self->_defaultWaypointImage;
    self->_defaultWaypointImage = v14;

    defaultWaypointImage = self->_defaultWaypointImage;
  }

  return defaultWaypointImage;
}

- (id)_defaultSmartWaypointImage
{
  defaultSmartWaypointImage = self->_defaultSmartWaypointImage;
  if (!defaultSmartWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor(0);
    v6 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.2.fill");
    v8 = objc_msgSend_imageWithTintColor_renderingMode_(v6, v7, v4, 1);
    v9 = self->_defaultSmartWaypointImage;
    self->_defaultSmartWaypointImage = v8;

    defaultSmartWaypointImage = self->_defaultSmartWaypointImage;
  }

  return defaultSmartWaypointImage;
}

- (id)_deletedWaypointImage
{
  deletedWaypointImage = self->_deletedWaypointImage;
  if (!deletedWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor(0);
    v6 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.slash.fill");
    v8 = objc_msgSend_imageWithTintColor_renderingMode_(v6, v7, v4, 1);
    v9 = self->_deletedWaypointImage;
    self->_deletedWaypointImage = v8;

    deletedWaypointImage = self->_deletedWaypointImage;
  }

  return deletedWaypointImage;
}

- (id)_waypointPrivacyRedactionImage
{
  waypointPrivacyRedactionImage = self->_waypointPrivacyRedactionImage;
  if (!waypointPrivacyRedactionImage)
  {
    v4 = NanoCompassWaypointDefaultColor(0);
    v6 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.fill");
    v8 = objc_msgSend_imageWithTintColor_renderingMode_(v6, v7, v4, 1);
    v9 = self->_waypointPrivacyRedactionImage;
    self->_waypointPrivacyRedactionImage = v8;

    waypointPrivacyRedactionImage = self->_waypointPrivacyRedactionImage;
  }

  return waypointPrivacyRedactionImage;
}

- (id)_waypointImageForSymbol:(id)symbol
{
  symbolCopy = symbol;
  v6 = objc_msgSend_objectForKey_(self->_waypointSymbolCache, v5, symbolCopy);
  v8 = v6;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v10 = objc_msgSend__pointSizeConfigurationForSymbol_(self, v7, symbolCopy);
    v9 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v11, symbolCopy, v10);
    objc_msgSend_setObject_forKey_(self->_waypointSymbolCache, v12, v9, symbolCopy);
  }

  return v9;
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  retstr->var6 = 0.0;
  *&retstr->var3.height = 0u;
  *&retstr->var4.height = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return result;
}

@end