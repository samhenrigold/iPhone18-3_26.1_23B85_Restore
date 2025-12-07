@interface CompassRichRectangularDialView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction;
- (id)_newLabelWithFont:(id)font color:(id)color text:(id)text;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)redactionLabel;
- (void)_applyFilters:(id)filters toLayers:(id)layers;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)_createAngles;
- (void)_createBearingTicks;
- (void)_createDirections;
- (void)_createTicks;
- (void)_updateForMonochrome:(id)monochrome;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation CompassRichRectangularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v167[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v165.receiver = self;
  v165.super_class = CompassRichRectangularDialView;
  v5 = [(CompassRichRectangularDialView *)&v165 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_device, device);
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = objc_msgSend_initWithUUIDString_(v7, v8, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E");
    v11 = objc_msgSend_supportsCapability_(deviceCopy, v10, v9);

    v6->_supportsGossamer = v11;
    v13 = objc_msgSend_setClipsToBounds_(v6, v12, 1);
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    sub_23BD36850(v13, v6->_device);
    sub_23BD36C0C(&v151, &qword_27E1C4E20);
    v14 = objc_opt_new();
    wheelContainer = v6->_wheelContainer;
    v6->_wheelContainer = v14;

    objc_msgSend_addSubview_(v6, v16, v6->_wheelContainer);
    objc_msgSend__createDirections(v6, v17, v18);
    directions = v6->_directions;
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = sub_23BD33EEC;
    v149[3] = &unk_278B94220;
    v20 = v6;
    v150 = v20;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(directions, v21, v149);
    objc_msgSend__createAngles(v20, v22, v23);
    angles = v20->_angles;
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_23BD33F00;
    v147[3] = &unk_278B94220;
    v25 = v20;
    v148 = v25;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(angles, v26, v147);
    objc_msgSend__createTicks(v25, v27, v28);
    ticks = v25->_ticks;
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = sub_23BD33F14;
    v145[3] = &unk_278B94248;
    v30 = v25;
    v146 = v30;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(ticks, v31, v145);
    objc_msgSend__createBearingTicks(v30, v32, v33);
    bearingTicks = v30->_bearingTicks;
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = sub_23BD33F80;
    v143[3] = &unk_278B94248;
    v35 = v30;
    v144 = v35;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bearingTicks, v36, v143);
    if (objc_msgSend_supportsGossamer(v35, v37, v38))
    {
      v39 = objc_alloc(MEMORY[0x277D755E8]);
      NanoCompassComplicationImageNamed(@"Compass/Rectangular/Needle");
    }

    else
    {
      v43 = objc_alloc(MEMORY[0x277D755E8]);
      v44 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Rectangular/Needle Shadow");
      v46 = objc_msgSend_initWithImage_(v43, v45, v44);
      needleShadow = v35->_needleShadow;
      v35->_needleShadow = v46;

      objc_msgSend_addSubview_(v35, v48, v35->_needleShadow);
      v39 = objc_alloc(MEMORY[0x277D755E8]);
      NanoCompassComplicationImageNamed(@"Compass/Legacy/Rectangular/Needle");
    }
    v40 = ;
    v42 = objc_msgSend_initWithImage_(v39, v41, v40);
    needleView = v35->_needleView;
    v35->_needleView = v42;

    objc_msgSend_addSubview_(v35, v50, v35->_needleView);
    v52 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v51, v152, v151);
    v55 = objc_msgSend_CLKFontWithMonospacedNumbers(v52, v53, v54);

    v56 = objc_opt_new();
    headingLabel = v35->_headingLabel;
    v35->_headingLabel = v56;

    objc_msgSend_setFont_(v35->_headingLabel, v58, v55);
    objc_msgSend_setTextColor_(v35->_headingLabel, v59, *(&v153 + 1));
    objc_msgSend_addSubview_(v35, v60, v35->_headingLabel);
    v61 = objc_opt_new();
    directionLabel = v35->_directionLabel;
    v35->_directionLabel = v61;

    objc_msgSend_setFont_(v35->_directionLabel, v63, v55);
    objc_msgSend_setTextColor_(v35->_directionLabel, v64, v154);
    objc_msgSend_addSubview_(v35, v65, v35->_directionLabel);
    v66 = objc_opt_new();
    bearingLabel = v35->_bearingLabel;
    v35->_bearingLabel = v66;

    objc_msgSend_setFont_(v35->_bearingLabel, v68, v55);
    objc_msgSend_setTextColor_(v35->_bearingLabel, v69, *(&v154 + 1));
    objc_msgSend_addSubview_(v35, v70, v35->_bearingLabel);
    v71 = objc_opt_new();
    objc_msgSend_setMaskView_(v6->_wheelContainer, v72, v71);

    v75 = objc_msgSend_maskView(v6->_wheelContainer, v73, v74);
    objc_msgSend_setOpaque_(v75, v76, 0);

    v79 = objc_msgSend_maskView(v6->_wheelContainer, v77, v78);
    v82 = objc_msgSend_layer(v79, v80, v81);

    v85 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v83, v84);
    v88 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v86, v87, 0.0, 0.0);
    v89 = v88;
    v167[0] = objc_msgSend_CGColor(v88, v90, v91);
    v94 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v92, v93, 0.0, 1.0);
    v95 = v94;
    v167[1] = objc_msgSend_CGColor(v94, v96, v97);
    v99 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v98, v167, 2);
    objc_msgSend_setColors_(v85, v100, v99);

    objc_msgSend_setStartPoint_(v85, v101, v102, 0.0, 0.5);
    objc_msgSend_setEndPoint_(v85, v103, v104, 1.0, 0.5);
    objc_msgSend_addSublayer_(v82, v105, v85);
    v108 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v106, v107);
    v111 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v109, v110, 0.0, 1.0);
    v112 = v111;
    v115 = objc_msgSend_CGColor(v111, v113, v114);
    objc_msgSend_setBackgroundColor_(v108, v116, v115);

    objc_msgSend_addSublayer_(v82, v117, v108);
    v120 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v118, v119);
    v123 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v121, v122, 0.0, 1.0);
    v124 = v123;
    v166[0] = objc_msgSend_CGColor(v123, v125, v126);
    v129 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v127, v128, 0.0, 0.0);
    v130 = v129;
    v166[1] = objc_msgSend_CGColor(v129, v131, v132);
    v134 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v133, v166, 2);
    objc_msgSend_setColors_(v120, v135, v134);

    objc_msgSend_setStartPoint_(v120, v136, v137, 0.0, 0.5);
    objc_msgSend_setEndPoint_(v120, v138, v139, 1.0, 0.5);
    objc_msgSend_addSublayer_(v82, v140, v120);

    sub_23BD33FEC(&v151);
  }

  return v6;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v8 = objc_msgSend_metadata(providerCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"heading");

  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
  isEqual = objc_msgSend_isEqual_(v10, v14, v13);

  if (isEqual)
  {

    v10 = 0;
  }

  v18 = objc_msgSend_metadata(providerCopy, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"bearing");

  v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22);
  v25 = objc_msgSend_isEqual_(v20, v24, v23);

  if (v25)
  {

    v20 = 0;
  }

  v28 = objc_msgSend_metadata(providerCopy, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"nodata");
  v33 = objc_msgSend_BOOLValue(v30, v31, v32);

  objc_msgSend_setHidden_(self->_headingLabel, v34, 0);
  objc_msgSend_setHidden_(self->_directionLabel, v35, v33);
  objc_msgSend_setHidden_(self->_bearingLabel, v36, v33);
  directions = self->_directions;
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_23BD34510;
  v94[3] = &unk_278B94268;
  v95 = v33;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(directions, v38, v94);
  angles = self->_angles;
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_23BD34520;
  v92[3] = &unk_278B94268;
  v93 = v33;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(angles, v40, v92);
  if (v33)
  {
    self->_offset = 0.0;
    v43 = objc_msgSend_redactionLabel(self, v41, v42);
    objc_msgSend_setAttributedText_(self->_headingLabel, v44, v43);

    objc_msgSend_sizeToFit(self->_headingLabel, v45, v46);
  }

  else
  {
    v47 = NanoCompassFormattedHeading(v10, 0, 0);
    objc_msgSend_heading(v10, v48, v49);
    v53 = NanoCompassFormattedDirection(0, v52, v50, v51);
    objc_msgSend_setText_(self->_headingLabel, v54, v47);
    objc_msgSend_sizeToFit(self->_headingLabel, v55, v56);
    objc_msgSend_setText_(self->_directionLabel, v57, v53);
    objc_msgSend_sizeToFit(self->_directionLabel, v58, v59);
    v60 = NanoCompassFormattedBearing(v20, 0);
    objc_msgSend_setText_(self->_bearingLabel, v61, v60);
    objc_msgSend_sizeToFit(self->_bearingLabel, v62, v63);
    isAccurate = objc_msgSend_isAccurate(v10, v64, v65);
    v69 = 0.0;
    if (isAccurate)
    {
      objc_msgSend_heading(v10, v67, v68, 0.0);
    }

    self->_offset = v69;
    objc_msgSend_bearing(v20, v67, v68);
    self->_bearingOffset = vcvtmd_u64_f64(v70);
  }

  v73 = objc_opt_new();
  if (v20)
  {
    v74 = v33;
  }

  else
  {
    v74 = 1;
  }

  if ((v74 & 1) == 0)
  {
    objc_msgSend_heading(v10, v71, v72);
    v77 = vcvtmd_u64_f64(v76);
    bearingOffset = self->_bearingOffset;
    if (bearingOffset >= v77)
    {
      if (bearingOffset - v77 > 0xB4)
      {
        objc_msgSend_addIndexesInRange_(v73, v75, 0, v77);
        objc_msgSend_addIndexesInRange_(v73, v79, self->_bearingOffset);
        goto LABEL_21;
      }
    }

    else
    {
      if (v77 - bearingOffset <= 0xB4)
      {
        objc_msgSend_addIndexesInRange_(v73, v75, self->_bearingOffset);
        goto LABEL_21;
      }

      objc_msgSend_addIndexesInRange_(v73, v75, v77, 359 - v77);
      v77 = 0;
    }

    objc_msgSend_addIndexesInRange_(v73, v75, v77);
  }

LABEL_21:
  ticks = self->_ticks;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_23BD34530;
  v90[3] = &unk_278B94248;
  v81 = v73;
  v91 = v81;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(ticks, v82, v90);
  bearingTicks = self->_bearingTicks;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_23BD34598;
  v88[3] = &unk_278B94248;
  v89 = v81;
  v84 = v81;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bearingTicks, v85, v88);
  objc_msgSend_setNeedsLayout(self, v86, v87);
}

- (id)redactionLabel
{
  if (qword_27E1C4E18 != -1)
  {
    sub_23BD65B1C();
  }

  v3 = qword_27E1C4E10;

  return v3;
}

- (void)layoutSubviews
{
  v221.receiver = self;
  v221.super_class = CompassRichRectangularDialView;
  layoutSubviews = [(CompassRichRectangularDialView *)&v221 layoutSubviews];
  v220 = 0.0;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v207 = 0u;
  sub_23BD36850(layoutSubviews, self->_device);
  *&v4 = sub_23BD36C0C(&v207, &qword_27E1C4E20).n128_u64[0];
  objc_msgSend_bounds(self, v5, v6, v4);
  x = v222.origin.x;
  y = v222.origin.y;
  width = v222.size.width;
  height = v222.size.height;
  v201 = CGRectGetWidth(v222);
  v223.origin.x = x;
  v223.origin.y = y;
  v223.size.width = width;
  v203 = height;
  v223.size.height = height;
  v11 = CGRectGetHeight(v223);
  v200 = y;
  v12 = *&v209;
  v202 = *(&v208 + 1);
  IsRTL = NanoCompassComplicationLayoutIsRTL(v13, v14);
  rect = width;
  v193 = x;
  v194 = v11;
  objc_msgSend_frame(self->_headingLabel, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_msgSend_frame(self->_directionLabel, v26, v27);
  v28 = v224.size.width;
  v195 = v224.origin.y;
  v196 = v224.origin.x;
  v198 = v224.size.height;
  v29 = CGRectGetWidth(v224);
  v30 = v220;
  v225.origin.x = v19;
  v225.origin.y = v21;
  v225.size.width = v23;
  v225.size.height = v25;
  v31 = CGRectGetWidth(v225);
  objc_msgSend__lastLineBaseline(self->_headingLabel, v32, v33);
  if (IsRTL)
  {
    v37 = v201 - v12 - v29 - v30 - v31;
  }

  else
  {
    v37 = v12;
  }

  v38 = v202 - v36;
  objc_msgSend_setFrame_(self->_headingLabel, v34, v35, v37, v202 - v36, v23, v25);
  v226.origin.x = v37;
  v226.origin.y = v38;
  v226.size.width = v23;
  v226.size.height = v25;
  v39 = CGRectGetWidth(v226);
  v40 = v220;
  v227.origin.y = v195;
  v227.origin.x = v196;
  v227.size.width = v28;
  v227.size.height = v198;
  v41 = CGRectGetWidth(v227);
  objc_msgSend__lastLineBaseline(self->_directionLabel, v42, v43);
  if (IsRTL)
  {
    objc_msgSend_setFrame_(self->_directionLabel, v44, v45, v201 - v41 - v12, v202 - v46, v28, v198);
  }

  else
  {
    objc_msgSend_setFrame_(self->_directionLabel, v44, v45, v12 + v39 + v40, v202 - v46, v28, v198);
  }

  objc_msgSend_frame(self->_bearingLabel, v47, v48);
  v55 = v53;
  v56 = v54;
  if ((IsRTL & 1) == 0)
  {
    v12 = v201 - CGRectGetWidth(*&v51) - v12;
  }

  objc_msgSend__lastLineBaseline(self->_bearingLabel, v49, v50);
  objc_msgSend_setFrame_(self->_bearingLabel, v58, v59, v12, v202 - v57, v55, v56);
  v64 = objc_msgSend_supportsGossamer(self, v60, v61);
  needleView = self->_needleView;
  if (v64)
  {
    v66 = *(&v218 + 1);
    objc_msgSend_frame(needleView, v62, v63);
    CLKRectCenteredXInRectForDevice();
    v67 = v228.origin.x;
    v68 = v228.size.width;
    v69 = v228.size.height;
    v70 = CGRectGetHeight(v228);
    objc_msgSend_setFrame_(self->_needleView, v71, v72, v67, v194 - v66 - v70, v68, v69);
  }

  else
  {
    v73 = *&v219;
    objc_msgSend_frame(needleView, v62, v63);
    CLKRectCenteredXInRectForDevice();
    v74 = v229.origin.x;
    v75 = v229.size.width;
    v76 = v229.size.height;
    v77 = CGRectGetHeight(v229);
    v78 = v194 - v73;
    objc_msgSend_setFrame_(self->_needleView, v79, v80, v74, v78 - v77, v75, v76);
    objc_msgSend_frame(self->_needleShadow, v81, v82);
    CLKRectCenteredXInRectForDevice();
    v83 = v230.origin.x;
    v84 = v230.size.width;
    v85 = v230.size.height;
    v86 = CGRectGetHeight(v230);
    objc_msgSend_setFrame_(self->_needleShadow, v87, v88, v83, v78 - v86, v84, v85);
  }

  v231.origin.x = v193;
  v231.origin.y = v200;
  v231.size.width = rect;
  v231.size.height = v203;
  v89 = CGRectGetHeight(v231);
  v232.origin.x = v193;
  v232.origin.y = v200;
  v232.size.width = rect;
  v232.size.height = v203;
  v90 = CGRectGetWidth(v232);
  v233.origin.x = v193;
  v233.origin.y = v200;
  v233.size.width = rect;
  v233.size.height = v203;
  v91 = CGRectGetWidth(v233);
  v234.origin.x = v193;
  v234.origin.y = v200;
  v234.size.width = rect;
  v234.size.height = v203;
  v92 = CGRectGetHeight(v234);
  v95 = objc_msgSend_maskView(self->_wheelContainer, v93, v94);
  objc_msgSend_setFrame_(v95, v96, v97, 0.0, 0.0, v91, v92);

  v100 = objc_msgSend_maskView(self->_wheelContainer, v98, v99);
  v103 = objc_msgSend_layer(v100, v101, v102);
  v106 = objc_msgSend_sublayers(v103, v104, v105);

  v108 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 0);
  objc_msgSend_setFrame_(v108, v109, v110, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 40.0, v89);
  v112 = objc_msgSend_objectAtIndexedSubscript_(v106, v111, 2);
  objc_msgSend_setFrame_(v112, v113, v114, v90 + -40.0, 0.0, 40.0, v89);
  v116 = objc_msgSend_objectAtIndexedSubscript_(v106, v115, 1);
  objc_msgSend_frame(v108, v117, v118);
  MaxX = CGRectGetMaxX(v235);
  objc_msgSend_frame(v108, v120, v121);
  MinY = CGRectGetMinY(v236);
  objc_msgSend_frame(v112, v123, v124);
  MinX = CGRectGetMinX(v237);
  objc_msgSend_frame(v108, v126, v127);
  v128 = CGRectGetMaxX(v238);
  objc_msgSend_frame(v108, v129, v130);
  v131 = CGRectGetHeight(v239);
  objc_msgSend_setFrame_(v116, v132, v133, MaxX, MinY, MinX - v128, v131);
  v240.origin.x = v193;
  v240.origin.y = v200;
  v240.size.width = rect;
  v240.size.height = v203;
  MidX = CGRectGetMidX(v240);
  v197 = v116;
  v199 = v112;
  v135 = *&v211;
  v241.origin.x = v193;
  v241.origin.y = v200;
  v241.size.width = rect;
  v241.size.height = v203;
  v136 = CGRectGetWidth(v241);
  v137 = *&v218;
  recta = *(&v213 + 1);
  v138 = *(&v216 + 1);
  v206[1] = 3221225472;
  v206[0] = MEMORY[0x277D85DD0];
  v206[2] = sub_23BD35048;
  v206[3] = &unk_278B94290;
  v206[4] = self;
  *&v206[5] = MidX;
  *&v206[6] = v136 / v135;
  v139 = MEMORY[0x23EEBBDF0](v206);
  v140 = 0;
  v141 = v194 - v137;
  v142 = v194 - v138;
  do
  {
    v143 = v139[2](v139, v140);
    v145 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v144, v140);
    v147 = objc_msgSend_objectForKeyedSubscript_(self->_directions, v146, v145);
    v150 = v147;
    if (v147)
    {
      objc_msgSend_frame(v147, v148, v149);
      v151 = v242.size.width;
      v152 = v242.size.height;
      v153 = CGRectGetWidth(v242);
      objc_msgSend__lastLineBaseline(v150, v154, v155);
      objc_msgSend_setFrame_(v150, v157, v158, v143 + v153 * -0.5, v141 - v156, v151, v152);
    }

    v159 = objc_msgSend_objectForKeyedSubscript_(self->_angles, v148, v145);
    v162 = v159;
    if (v159)
    {
      objc_msgSend_frame(v159, v160, v161);
      v163 = v243.size.width;
      v164 = v243.size.height;
      v165 = CGRectGetWidth(v243);
      objc_msgSend__lastLineBaseline(v162, v166, v167);
      objc_msgSend_setFrame_(v162, v169, v170, v143 + v165 * -0.5, recta - v168, v163, v164);
    }

    v171 = objc_msgSend_objectForKeyedSubscript_(self->_ticks, v160, v145);
    v174 = v171;
    if (v171)
    {
      objc_msgSend_frame(v171, v172, v173);
      v175 = v244.origin.y;
      v176 = v244.size.width;
      v177 = v244.size.height;
      v178 = v143 + CGRectGetWidth(v244) * -0.5;
      v245.origin.x = v178;
      v245.origin.y = v175;
      v245.size.width = v176;
      v245.size.height = v177;
      v179 = CGRectGetHeight(v245);
      objc_msgSend_setFrame_(v174, v180, v181, v178, v142 - v179, v176, v177);
    }

    v182 = objc_msgSend_objectForKeyedSubscript_(self->_bearingTicks, v172, v145);
    v185 = v182;
    if (v182)
    {
      objc_msgSend_frame(v182, v183, v184);
      v186 = v246.origin.y;
      v187 = v246.size.width;
      v188 = v246.size.height;
      v189 = v143 + CGRectGetWidth(v246) * -0.5;
      v247.origin.x = v189;
      v247.origin.y = v186;
      v247.size.width = v187;
      v247.size.height = v188;
      v190 = CGRectGetHeight(v247);
      objc_msgSend_setFrame_(v185, v191, v192, v189, v142 - v190, v187, v188);
    }

    ++v140;
  }

  while (v140 != 360);

  sub_23BD33FEC(&v207);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, fraction);
  objc_msgSend__updateForMonochrome_(self, v5, v6);
}

- (void)_updateForMonochrome:(id)monochrome
{
  v88[1] = *MEMORY[0x277D85DE8];
  monochromeCopy = monochrome;
  v6 = objc_msgSend__filtersForStyle_fraction_(self, v5, 2, monochromeCopy);
  v88[0] = self->_needleView;
  v74 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v88, 1);
  v75 = v6;
  objc_msgSend__applyFilters_toViews_(self, v8, v6);
  v10 = objc_msgSend__filtersForStyle_fraction_(self, v9, 0, monochromeCopy);
  directionLabel = self->_directionLabel;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &directionLabel, 1);
  v15 = objc_msgSend_allValues(self->_directions, v13, v14);
  v17 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v16, v15);

  v73 = v17;
  objc_msgSend__applyFilters_toViews_(self, v18, v10, v17);
  v21 = objc_msgSend_allValues(self->_ticks, v19, v20);
  objc_msgSend__applyFilters_toLayers_(self, v22, v10, v21);

  v24 = objc_msgSend__filtersForStyle_fraction_(self, v23, 1, monochromeCopy);
  v27 = objc_msgSend_allValues(self->_angles, v25, v26);
  v72 = v24;
  objc_msgSend__applyFilters_toViews_(self, v28, v24, v27);
  v30 = objc_msgSend__filtersForStyle_fraction_(self, v29, 3, monochromeCopy);
  v33 = objc_msgSend_layer(self->_bearingLabel, v31, v32);
  v86[0] = v33;
  v36 = objc_msgSend_layer(self->_headingLabel, v34, v35);
  v86[1] = v36;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v86, 2);
  v41 = objc_msgSend_allValues(self->_bearingTicks, v39, v40);
  v43 = objc_msgSend_arrayByAddingObjectsFromArray_(v38, v42, v41);

  v45 = objc_msgSend__applyFilters_toLayers_(self, v44, v30, v43);
  if (monochromeCopy)
  {
    sub_23BD36850(v45, self->_device);
    sub_23BD36C0C(v76, &qword_27E1C4E20);
    v48 = v77;
    sub_23BD33FEC(v76);
    v51 = objc_msgSend_filterProvider(self, v49, v50);
    v53 = objc_msgSend_colorForView_accented_(v51, v52, self, 1);

    objc_msgSend_doubleValue(monochromeCopy, v54, v55);
    v56 = v48;
    v57 = v53;
    if (CLKFloatEqualsFloat())
    {
      v58 = v56;
    }

    else if (CLKFloatEqualsFloat())
    {
      v58 = v57;
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v82 = 0;
      v83 = 0;
      v80 = 0;
      v81 = 0;
      v78 = 0;
      v79 = 0;
      objc_msgSend_getRed_green_blue_alpha_(v56, v61, &v85, &v84, &v83, &v82);
      objc_msgSend_getRed_green_blue_alpha_(v57, v62, &v81, &v80, &v79, &v78);
      CLKInterpolateBetweenFloatsClipped();
      v64 = v63;
      CLKInterpolateBetweenFloatsClipped();
      v66 = v65;
      CLKInterpolateBetweenFloatsClipped();
      v68 = v67;
      CLKInterpolateBetweenFloatsClipped();
      v58 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v69, v70, v64, v66, v68, v71);
    }

    v60 = v58;
  }

  else
  {
    v56 = objc_msgSend_filterProvider(self, v46, v47);
    v60 = objc_msgSend_colorForView_accented_(v56, v59, self, 1);
  }
}

- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction
{
  fractionCopy = fraction;
  v9 = fractionCopy;
  if (fractionCopy)
  {
    objc_msgSend_doubleValue(fractionCopy, v7, v8);
    if (CLKFloatEqualsFloat())
    {
      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v13 = objc_msgSend_filterProvider(self, v10, v11);
    objc_msgSend_doubleValue(v9, v16, v17);
    v15 = objc_msgSend_filtersForView_style_fraction_(v13, v18, self, style);
  }

  else
  {
    v13 = objc_msgSend_filterProvider(self, v7, v8);
    v15 = objc_msgSend_filtersForView_style_(v13, v14, self, style);
  }

  v12 = v15;

LABEL_7:

  return v12;
}

- (void)_applyFilters:(id)filters toViews:(id)views
{
  filtersCopy = filters;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BD356C4;
  v8[3] = &unk_278B942B8;
  v9 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v8);
}

- (void)_applyFilters:(id)filters toLayers:(id)layers
{
  filtersCopy = filters;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BD35898;
  v8[3] = &unk_278B942E0;
  v9 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(layers, v7, v8);
}

- (id)_newLabelWithFont:(id)font color:(id)color text:(id)text
{
  textCopy = text;
  colorCopy = color;
  fontCopy = font;
  v10 = objc_opt_new();
  objc_msgSend_setFont_(v10, v11, fontCopy);

  objc_msgSend_setTextColor_(v10, v12, colorCopy);
  objc_msgSend_setText_(v10, v13, textCopy);

  objc_msgSend_sizeToFit(v10, v14, v15);
  return v10;
}

- (void)_createDirections
{
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v39, &qword_27E1C4E20);
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v3, *(&v41 + 1), *(&v40 + 1), *&v41);
  v5 = *(&v46 + 1);
  v6 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BD35E1C;
  v36[3] = &unk_278B94308;
  v36[4] = self;
  v7 = v4;
  v37 = v7;
  v8 = v5;
  v38 = v8;
  v9 = MEMORY[0x23EEBBDF0](v36);
  v10 = NanoCompassLocalizedString(@"N");
  v11 = (v9)[2](v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v12, v11, &unk_284E8ADD0);

  v13 = NanoCompassLocalizedString(@"NE");
  v14 = (v9)[2](v9, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v15, v14, &unk_284E8ADE8);

  v16 = NanoCompassLocalizedString(@"E");
  v17 = (v9)[2](v9, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v18, v17, &unk_284E8AE00);

  v19 = NanoCompassLocalizedString(@"SE");
  v20 = (v9)[2](v9, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v20, &unk_284E8AE18);

  v22 = NanoCompassLocalizedString(@"S");
  v23 = (v9)[2](v9, v22);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v24, v23, &unk_284E8AE30);

  v25 = NanoCompassLocalizedString(@"SW");
  v26 = (v9)[2](v9, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v27, v26, &unk_284E8AE48);

  v28 = NanoCompassLocalizedString(@"W");
  v29 = (v9)[2](v9, v28);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v30, v29, &unk_284E8AE60);

  v31 = NanoCompassLocalizedString(@"NW");
  v32 = (v9)[2](v9, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v33, v32, &unk_284E8AE78);

  directions = self->_directions;
  self->_directions = v6;
  v35 = v6;

  sub_23BD33FEC(v39);
}

- (void)_createAngles
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v24, &qword_27E1C4E20);
  v4 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v3, *(&v26 + 1), *(&v25 + 1), *&v26);
  v5 = v27;
  v6 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BD36084;
  v21[3] = &unk_278B94308;
  v21[4] = self;
  v20 = v4;
  v22 = v20;
  v19 = v5;
  v23 = v19;
  v7 = MEMORY[0x23EEBBDF0](v21);
  v8 = objc_opt_new();
  objc_msgSend_setNumberStyle_(v8, v9, 0);
  v11 = -30;
  do
  {
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, v11 + 30);
    v14 = objc_msgSend_stringFromNumber_(v8, v13, v12);
    v15 = (v7)[2](v7, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v16, v15, v12);

    v11 += 30;
  }

  while (v11 < 0x14A);
  angles = self->_angles;
  self->_angles = v6;
  v18 = v6;

  sub_23BD33FEC(v24);
}

- (void)_createTicks
{
  v49[3] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  selfCopy = self;
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v40, &qword_27E1C4E20);
  v2 = v41;
  v3 = v42;
  v4 = v43;
  v39 = objc_opt_new();
  v7 = -5;
  do
  {
    HIDWORD(v8) = -286331153 * (v7 + 5);
    LODWORD(v8) = HIDWORD(v8);
    v9 = *(&v3 + 1);
    if ((v8 >> 1) >= 0x8888889)
    {
      if (-286331153 * (v7 + 5) >= 0x11111112)
      {
        v9 = *(&v2 + 1);
      }

      else
      {
        v9 = *&v3;
      }
    }

    v10 = objc_msgSend_layer(MEMORY[0x277CD9F90], v5, v6, selfCopy);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, *&v2, 0.0);
    CGPathAddLineToPoint(Mutable, 0, *&v2, v9);
    objc_msgSend_setPath_(v10, v12, Mutable);
    v13 = v4;
    v16 = objc_msgSend_CGColor(v4, v14, v15);
    objc_msgSend_setStrokeColor_(v10, v17, v16);
    objc_msgSend_setLineWidth_(v10, v18, v19, *&v2);
    objc_msgSend_setBounds_(v10, v20, v21, 0.0, 0.0, *&v2 + *&v2, v9);
    v48[0] = @"position";
    v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v22, v23);
    v49[0] = v24;
    v48[1] = @"frame";
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26);
    v49[1] = v27;
    v48[2] = @"bounds";
    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29);
    v49[2] = v30;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v49, v48, 3);
    objc_msgSend_setActions_(v10, v33, v32);

    v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, v7 + 5);
    objc_msgSend_setObject_forKeyedSubscript_(v39, v36, v10, v35);

    CGPathRelease(Mutable);
    v7 += 5;
  }

  while (v7 < 0x163);
  ticks = selfCopy->_ticks;
  selfCopy->_ticks = v39;

  sub_23BD33FEC(v40);
}

- (void)_createBearingTicks
{
  v53[4] = *MEMORY[0x277D85DE8];
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v44, &qword_27E1C4E20);
  v2 = v45;
  v3 = v46;
  v43 = v48;
  v42 = objc_opt_new();
  v6 = -3;
  do
  {
    HIDWORD(v7) = -286331153 * (v6 + 3);
    LODWORD(v7) = HIDWORD(v7);
    v8 = *(&v3 + 1);
    if ((v7 >> 1) >= 0x8888889)
    {
      if (-286331153 * (v6 + 3) >= 0x11111112)
      {
        v8 = *(&v2 + 1);
      }

      else
      {
        v8 = *&v3;
      }
    }

    v9 = objc_msgSend_layer(MEMORY[0x277CD9F90], v4, v5);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, *&v2, 0.0);
    CGPathAddLineToPoint(Mutable, 0, *&v2, v8);
    objc_msgSend_setPath_(v9, v11, Mutable);
    v12 = v43;
    v15 = objc_msgSend_CGColor(v43, v13, v14);
    objc_msgSend_setStrokeColor_(v9, v16, v15);
    objc_msgSend_setLineWidth_(v9, v17, v18, *&v2);
    objc_msgSend_setBounds_(v9, v19, v20, 0.0, 0.0, *&v2 + *&v2, v8);
    v52[0] = @"position";
    v23 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22);
    v53[0] = v23;
    v52[1] = @"frame";
    v26 = objc_msgSend_null(MEMORY[0x277CBEB68], v24, v25);
    v53[1] = v26;
    v52[2] = @"bounds";
    v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28);
    v53[2] = v29;
    v52[3] = @"hidden";
    v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31);
    v53[3] = v32;
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v53, v52, 4);
    objc_msgSend_setActions_(v9, v35, v34);

    objc_msgSend_setHidden_(v9, v36, 1);
    v38 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v37, v6 + 3);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v39, v9, v38);

    CGPathRelease(Mutable);
    v6 += 3;
  }

  while (v6 < 0x165);
  bearingTicks = self->_bearingTicks;
  self->_bearingTicks = v42;

  sub_23BD33FEC(v44);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end