@interface WaypointRichRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_alwaysVisibleConstraints;
- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction;
- (id)_formattedLabelText:(id)text direction:(id)direction;
- (id)_threeLineConstraints;
- (id)_twoLineConstraints;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)labelFont;
- (id)smallCapsUnitFont;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)_configureSampleWaypoint:(id)waypoint color:(id)color;
- (void)_updateForMonochrome:(id)monochrome;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation WaypointRichRectangularView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v85.receiver = self;
  v85.super_class = WaypointRichRectangularView;
  v6 = [(WaypointRichRectangularView *)&v85 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = objc_msgSend_initWithUUIDString_(v8, v9, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E");
  v12 = objc_msgSend_supportsCapability_(deviceCopy, v11, v10);

  v7->_supportsGossamer = v12;
  v13 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_AWAY_TEXT");
  awayText = v7->_awayText;
  v7->_awayText = v13;

  v15 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_DOWN_TEXT");
  downText = v7->_downText;
  v7->_downText = v15;

  v17 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_UP_TEXT");
  upText = v7->_upText;
  v7->_upText = v17;

  v19 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_NO_DISTANCE");
  noDistanceText = v7->_noDistanceText;
  v7->_noDistanceText = v19;

  v21 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_NO_ELEVATION");
  noElevationText = v7->_noElevationText;
  v7->_noElevationText = v21;

  v23 = NanoCompassLocalizedString(@"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME");
  defaultWaypointName = v7->_defaultWaypointName;
  v7->_defaultWaypointName = v23;

  v25 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_ACTIVATE_TEXT");
  tapToActivateText = v7->_tapToActivateText;
  v7->_tapToActivateText = v25;

  objc_msgSend_screenBounds(deviceCopy, v27, v28);
  v30 = v29 * 0.042;
  v7->_leftMargin = ceilf(v30);
  v7->_lineSpacing = 0.0;
  objc_msgSend_setClipsToBounds_(v7, v31, 1);
  v32 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = v7->_layoutGuide;
  v7->_layoutGuide = v32;

  objc_msgSend_addLayoutGuide_(v7, v34, v7->_layoutGuide);
  v35 = [WaypointRichRectangularCircleDialView alloc];
  inited = objc_msgSend_initFullColorImageViewWithDevice_(v35, v36, deviceCopy);
  dialView = v7->_dialView;
  v7->_dialView = inited;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_dialView, v39, 0);
  objc_msgSend_addSubview_(v7, v40, v7->_dialView);
  v41 = objc_opt_new();
  contentView = v7->_contentView;
  v7->_contentView = v41;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_contentView, v43, 0);
  objc_msgSend_addSubview_(v7, v44, v7->_contentView);
  v45 = objc_opt_new();
  waypointLabel = v7->_waypointLabel;
  v7->_waypointLabel = v45;

  v49 = objc_msgSend_labelFont(v7, v47, v48);
  objc_msgSend_setFont_(v7->_waypointLabel, v50, v49);

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_waypointLabel, v51, 0);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_waypointLabel, v52, 1);
  objc_msgSend_addSubview_(v7->_contentView, v53, v7->_waypointLabel);
  v54 = objc_opt_new();
  line2Label = v7->_line2Label;
  v7->_line2Label = v54;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_line2Label, v56, 0);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_line2Label, v57, 1);
  objc_msgSend_addSubview_(v7->_contentView, v58, v7->_line2Label);
  v59 = objc_opt_new();
  line3Label = v7->_line3Label;
  v7->_line3Label = v59;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_line3Label, v61, 0);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_line3Label, v62, 1);
  v64 = objc_msgSend_addSubview_(v7->_contentView, v63, v7->_line3Label);
  v65 = v7->_defaultWaypointName;
  v66 = NanoCompassAppTintColor(v64);
  objc_msgSend__configureSampleWaypoint_color_(v7, v67, v65, v66);

  v70 = v7->_dialView;
  if (v70)
  {
    objc_msgSend__layoutConstantsForDevice_(v70, v68, deviceCopy);
  }

  else
  {
    v84 = 0.0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
  }

  *&v7->_layoutConstants.symbolSize = v80;
  v7->_layoutConstants.blurAmount = v84;
  *&v7->_layoutConstants.largeTickSize.height = v82;
  *&v7->_layoutConstants.smallTickSize.height = v83;
  *&v7->_layoutConstants.dialDiameter = v81;
  v71 = objc_msgSend__threeLineConstraints(v7, v68, v69, v80, v81, v82, v83, *&v84);
  waypointDetailsActivatedConstraints = v7->_waypointDetailsActivatedConstraints;
  v7->_waypointDetailsActivatedConstraints = v71;

  v73 = MEMORY[0x277CCAAD0];
  v76 = objc_msgSend__alwaysVisibleConstraints(v7, v74, v75);
  objc_msgSend_activateConstraints_(v73, v77, v76);

  objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v78, v7->_waypointDetailsActivatedConstraints);
  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v8 = objc_msgSend_metadata(providerCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"waypoint");

  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
  isEqual = objc_msgSend_isEqual_(v10, v14, v13);

  if (isEqual)
  {

    v10 = 0;
  }

  v18 = objc_msgSend_metadata(providerCopy, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"smart");
  v23 = objc_msgSend_BOOLValue(v20, v21, v22);

  v26 = objc_msgSend_metadata(providerCopy, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"showSampleData");
  v31 = objc_msgSend_BOOLValue(v28, v29, v30);

  v34 = objc_msgSend_metadata(providerCopy, v32, v33);
  v36 = v34;
  if (!v31)
  {
    v47 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"nodata");
    v50 = objc_msgSend_BOOLValue(v47, v48, v49);

    v53 = objc_msgSend_metadata(providerCopy, v51, v52);
    v55 = objc_msgSend_objectForKeyedSubscript_(v53, v54, @"inactive");
    v58 = objc_msgSend_BOOLValue(v55, v56, v57);

    v61 = objc_msgSend_metadata(providerCopy, v59, v60);
    v63 = objc_msgSend_objectForKeyedSubscript_(v61, v62, @"alwayson");
    v66 = objc_msgSend_BOOLValue(v63, v64, v65);

    if (!v10)
    {
      v103 = objc_msgSend_setText_(self->_waypointLabel, v67, self->_defaultWaypointName);
      v104 = NanoCompassAppTintColor(v103);
      objc_msgSend_setTextColor_(self->_waypointLabel, v105, v104);

      if ((v23 & v58) == 1)
      {
        objc_msgSend_setText_(self->_line2Label, v106, self->_tapToActivateText);
        v109 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v107, v108);
        objc_msgSend_setTextColor_(self->_line2Label, v110, v109);

        objc_msgSend_setNumberOfLines_(self->_line2Label, v111, 2);
        objc_msgSend_setHidden_(self->_line2Label, v112, 0);
        objc_msgSend_setHidden_(self->_line3Label, v113, 1);
        p_waypointDetailsActivatedConstraints = &self->_waypointDetailsActivatedConstraints;
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v115, self->_waypointDetailsActivatedConstraints);
        objc_msgSend__twoLineConstraints(self, v116, v117);
      }

      else
      {
        objc_msgSend_setHidden_(self->_line2Label, v106, 0);
        v124 = objc_msgSend__formattedLabelText_direction_(self, v123, self->_noDistanceText, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v125, v124);

        objc_msgSend_setHidden_(self->_line3Label, v126, 0);
        v128 = objc_msgSend__formattedLabelText_direction_(self, v127, self->_noElevationText, self->_downText);
        objc_msgSend_setAttributedText_(self->_line3Label, v129, v128);

        p_waypointDetailsActivatedConstraints = &self->_waypointDetailsActivatedConstraints;
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v130, self->_waypointDetailsActivatedConstraints);
        objc_msgSend__threeLineConstraints(self, v131, v132);
      }
      v118 = ;
      v133 = *p_waypointDetailsActivatedConstraints;
      *p_waypointDetailsActivatedConstraints = v118;

      objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v134, *p_waypointDetailsActivatedConstraints);
      objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v135, providerCopy, reason);
      objc_msgSend_setNeedsLayout(self, v136, v137);
      goto LABEL_28;
    }

    v69 = objc_msgSend_metadata(providerCopy, v67, v68);
    v37 = objc_msgSend_objectForKeyedSubscript_(v69, v70, @"location");

    v73 = objc_msgSend_null(MEMORY[0x277CBEB68], v71, v72);
    v75 = objc_msgSend_isEqual_(v37, v74, v73);

    if (v75)
    {

      v37 = 0;
    }

    v78 = objc_msgSend_metadata(providerCopy, v76, v77);
    v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"altitude");

    v83 = objc_msgSend_null(MEMORY[0x277CBEB68], v81, v82);
    v85 = objc_msgSend_isEqual_(v80, v84, v83);

    if (v85)
    {

      v80 = 0;
    }

    v88 = objc_msgSend_label(v10, v86, v87);
    objc_msgSend_setText_(self->_waypointLabel, v89, v88);

    if (v58)
    {
      v93 = objc_msgSend_labelColor(v10, v91, v92);
      objc_msgSend_setTextColor_(self->_waypointLabel, v94, v93);

      objc_msgSend_setText_(self->_line2Label, v95, self->_tapToActivateText);
      v98 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v96, v97);
      objc_msgSend_setTextColor_(self->_line2Label, v99, v98);

      objc_msgSend_setNumberOfLines_(self->_line2Label, v100, 2);
      objc_msgSend_setHidden_(self->_line2Label, v101, 0);
    }

    else
    {
      if (v37)
      {
        v119 = objc_msgSend_labelColor(v10, v91, v92);
        objc_msgSend_setTextColor_(self->_waypointLabel, v120, v119);

        v122 = v66 | v50;
      }

      else
      {
        v138 = NanoCompassWaypointDefaultColor(v90);
        objc_msgSend_setTextColor_(self->_waypointLabel, v139, v138);

        v122 = 1;
      }

      objc_msgSend_setNumberOfLines_(self->_line2Label, v121, 1);
      objc_msgSend_setHidden_(self->_line2Label, v140, 0);
      if (v122)
      {
        v143 = objc_msgSend__formattedLabelText_direction_(self, v141, self->_noDistanceText, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v144, v143);
      }

      else
      {
        v145 = objc_msgSend_rawLocation(v37, v141, v142);
        v148 = objc_msgSend_location(v10, v146, v147);
        objc_msgSend_distanceFromLocation_(v145, v149, v148);
        v151 = v150;

        v143 = formattedDistanceForWaypointComplication(v151, v152);
        v154 = objc_msgSend__formattedLabelText_direction_(self, v153, v143, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v155, v154);
      }

      if (v80 && objc_msgSend_hasReading(v80, v102, v156) && !(v66 & 1 | ((objc_msgSend_isAltitudePopulated(v10, v102, v157) & 1) == 0) | v50 & 1))
      {
        objc_msgSend_altitudeInMeters(v80, v102, v158);
        v169 = v168;
        objc_msgSend_altitude(v10, v170, v171);
        v173 = v172;
        v174 = &OBJC_IVAR___WaypointRichRectangularView__downText;
        if (v172 - v169 > 0.0)
        {
          v174 = &OBJC_IVAR___WaypointRichRectangularView__upText;
        }

        v175 = *(&self->super.super.super.isa + *v174);
        v176 = formattedDistanceForWaypointComplication(vabdd_f64(v173, v169), v175);
        v178 = objc_msgSend__formattedLabelText_direction_(self, v177, v176, v175);
        objc_msgSend_setAttributedText_(self->_line3Label, v179, v178);

        objc_msgSend_setHidden_(self->_line3Label, v180, 0);
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v181, self->_waypointDetailsActivatedConstraints);
        v184 = objc_msgSend__threeLineConstraints(self, v182, v183);
        waypointDetailsActivatedConstraints = self->_waypointDetailsActivatedConstraints;
        self->_waypointDetailsActivatedConstraints = v184;

        objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v186, self->_waypointDetailsActivatedConstraints);
        goto LABEL_26;
      }
    }

    objc_msgSend_setHidden_(self->_line3Label, v102, 1);
    objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v159, self->_waypointDetailsActivatedConstraints);
    v162 = objc_msgSend__twoLineConstraints(self, v160, v161);
    v163 = self->_waypointDetailsActivatedConstraints;
    self->_waypointDetailsActivatedConstraints = v162;

    objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v164, self->_waypointDetailsActivatedConstraints);
LABEL_26:
    objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v165, providerCopy, reason);
    objc_msgSend_setNeedsLayout(self, v166, v167);

    goto LABEL_27;
  }

  v37 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"label");

  v40 = objc_msgSend_metadata(providerCopy, v38, v39);
  v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"color");

  objc_msgSend__configureSampleWaypoint_color_(self, v43, v37, v42);
  objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v44, providerCopy, reason);
  objc_msgSend_setNeedsLayout(self, v45, v46);

LABEL_27:
LABEL_28:
}

- (id)_alwaysVisibleConstraints
{
  v107[13] = *MEMORY[0x277D85DE8];
  v106 = objc_msgSend_leadingAnchor(self->_layoutGuide, a2, v2);
  v105 = objc_msgSend_leadingAnchor(self, v4, v5);
  v104 = objc_msgSend_constraintEqualToAnchor_constant_(v106, v6, v105, self->_leftMargin);
  v107[0] = v104;
  v103 = objc_msgSend_trailingAnchor(self->_layoutGuide, v7, v8);
  v102 = objc_msgSend_trailingAnchor(self, v9, v10);
  v101 = objc_msgSend_constraintEqualToAnchor_constant_(v103, v11, v102, 0.0);
  v107[1] = v101;
  v100 = objc_msgSend_topAnchor(self->_layoutGuide, v12, v13);
  v99 = objc_msgSend_topAnchor(self, v14, v15);
  v98 = objc_msgSend_constraintEqualToAnchor_constant_(v100, v16, v99, 0.0);
  v107[2] = v98;
  v97 = objc_msgSend_bottomAnchor(self->_layoutGuide, v17, v18);
  v96 = objc_msgSend_bottomAnchor(self, v19, v20);
  v95 = objc_msgSend_constraintEqualToAnchor_constant_(v97, v21, v96, 0.0);
  v107[3] = v95;
  v94 = objc_msgSend_leadingAnchor(self->_dialView, v22, v23);
  v93 = objc_msgSend_leadingAnchor(self->_layoutGuide, v24, v25);
  v92 = objc_msgSend_constraintEqualToAnchor_(v94, v26, v93);
  v107[4] = v92;
  v91 = objc_msgSend_widthAnchor(self->_dialView, v27, v28);
  v90 = objc_msgSend_constraintEqualToConstant_(v91, v29, v30, self->_layoutConstants.dialDiameter);
  v107[5] = v90;
  v89 = objc_msgSend_centerYAnchor(self->_dialView, v31, v32);
  v88 = objc_msgSend_centerYAnchor(self->_layoutGuide, v33, v34);
  v87 = objc_msgSend_constraintEqualToAnchor_(v89, v35, v88);
  v107[6] = v87;
  v86 = objc_msgSend_leadingAnchor(self->_contentView, v36, v37);
  v85 = objc_msgSend_trailingAnchor(self->_dialView, v38, v39);
  v84 = objc_msgSend_constraintEqualToAnchor_constant_(v86, v40, v85, self->_leftMargin);
  v107[7] = v84;
  v83 = objc_msgSend_trailingAnchor(self->_contentView, v41, v42);
  v82 = objc_msgSend_trailingAnchor(self->_layoutGuide, v43, v44);
  v81 = objc_msgSend_constraintEqualToAnchor_(v83, v45, v82);
  v107[8] = v81;
  v80 = objc_msgSend_centerYAnchor(self->_contentView, v46, v47);
  v79 = objc_msgSend_centerYAnchor(self->_dialView, v48, v49);
  v51 = objc_msgSend_constraintEqualToAnchor_(v80, v50, v79);
  v107[9] = v51;
  v54 = objc_msgSend_topAnchor(self->_waypointLabel, v52, v53);
  v57 = objc_msgSend_topAnchor(self->_contentView, v55, v56);
  v59 = objc_msgSend_constraintEqualToAnchor_(v54, v58, v57);
  v107[10] = v59;
  v62 = objc_msgSend_leadingAnchor(self->_waypointLabel, v60, v61);
  v65 = objc_msgSend_leadingAnchor(self->_contentView, v63, v64);
  v67 = objc_msgSend_constraintEqualToAnchor_(v62, v66, v65);
  v107[11] = v67;
  v70 = objc_msgSend_trailingAnchor(self->_waypointLabel, v68, v69);
  v73 = objc_msgSend_trailingAnchor(self->_contentView, v71, v72);
  v75 = objc_msgSend_constraintEqualToAnchor_(v70, v74, v73);
  v107[12] = v75;
  v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v76, v107, 13);

  return v78;
}

- (id)_twoLineConstraints
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36 = objc_msgSend_topAnchor(self->_line2Label, a2, v2);
  v35 = objc_msgSend_bottomAnchor(self->_waypointLabel, v4, v5);
  v34 = objc_msgSend_constraintEqualToAnchor_constant_(v36, v6, v35, self->_lineSpacing);
  v37[0] = v34;
  v9 = objc_msgSend_leadingAnchor(self->_line2Label, v7, v8);
  v12 = objc_msgSend_leadingAnchor(self->_contentView, v10, v11);
  v14 = objc_msgSend_constraintEqualToAnchor_(v9, v13, v12);
  v37[1] = v14;
  v17 = objc_msgSend_trailingAnchor(self->_line2Label, v15, v16);
  v20 = objc_msgSend_trailingAnchor(self->_contentView, v18, v19);
  v22 = objc_msgSend_constraintEqualToAnchor_(v17, v21, v20);
  v37[2] = v22;
  v25 = objc_msgSend_bottomAnchor(self->_line2Label, v23, v24);
  v28 = objc_msgSend_bottomAnchor(self->_contentView, v26, v27);
  v30 = objc_msgSend_constraintEqualToAnchor_(v25, v29, v28);
  v37[3] = v30;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v37, 4);

  return v32;
}

- (id)_threeLineConstraints
{
  v61[7] = *MEMORY[0x277D85DE8];
  v60 = objc_msgSend_topAnchor(self->_line2Label, a2, v2);
  v59 = objc_msgSend_bottomAnchor(self->_waypointLabel, v4, v5);
  v58 = objc_msgSend_constraintEqualToAnchor_constant_(v60, v6, v59, self->_lineSpacing);
  v61[0] = v58;
  v57 = objc_msgSend_leadingAnchor(self->_line2Label, v7, v8);
  v56 = objc_msgSend_leadingAnchor(self->_contentView, v9, v10);
  v55 = objc_msgSend_constraintEqualToAnchor_(v57, v11, v56);
  v61[1] = v55;
  v54 = objc_msgSend_trailingAnchor(self->_line2Label, v12, v13);
  v53 = objc_msgSend_trailingAnchor(self->_contentView, v14, v15);
  v52 = objc_msgSend_constraintEqualToAnchor_(v54, v16, v53);
  v61[2] = v52;
  v51 = objc_msgSend_topAnchor(self->_line3Label, v17, v18);
  v50 = objc_msgSend_bottomAnchor(self->_line2Label, v19, v20);
  v49 = objc_msgSend_constraintEqualToAnchor_constant_(v51, v21, v50, self->_lineSpacing);
  v61[3] = v49;
  v24 = objc_msgSend_leadingAnchor(self->_line3Label, v22, v23);
  v27 = objc_msgSend_leadingAnchor(self->_contentView, v25, v26);
  v29 = objc_msgSend_constraintEqualToAnchor_(v24, v28, v27);
  v61[4] = v29;
  v32 = objc_msgSend_trailingAnchor(self->_line3Label, v30, v31);
  v35 = objc_msgSend_trailingAnchor(self->_contentView, v33, v34);
  v37 = objc_msgSend_constraintEqualToAnchor_(v32, v36, v35);
  v61[5] = v37;
  v40 = objc_msgSend_bottomAnchor(self->_line3Label, v38, v39);
  v43 = objc_msgSend_bottomAnchor(self->_contentView, v41, v42);
  v45 = objc_msgSend_constraintEqualToAnchor_(v40, v44, v43);
  v61[6] = v45;
  v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, v61, 7);

  return v47;
}

- (id)labelFont
{
  if (qword_27E1C52A0 != -1)
  {
    sub_23BD675AC();
  }

  v3 = qword_27E1C5298;

  return v3;
}

- (id)smallCapsUnitFont
{
  if (qword_27E1C52B0 != -1)
  {
    sub_23BD675C0();
  }

  v3 = qword_27E1C52A8;

  return v3;
}

- (id)_formattedLabelText:(id)text direction:(id)direction
{
  v56[1] = *MEMORY[0x277D85DE8];
  directionCopy = direction;
  textCopy = text;
  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  v55 = *MEMORY[0x277D740A8];
  v9 = v55;
  v12 = objc_msgSend_labelFont(self, v10, v11);
  v56[0] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v56, &v55, 1);
  v49 = objc_msgSend_initWithString_attributes_(v8, v15, @" ", v14);

  v16 = objc_alloc(MEMORY[0x277CCA898]);
  v53[0] = *MEMORY[0x277D740C0];
  v17 = v53[0];
  v20 = objc_msgSend_systemWhiteColor(MEMORY[0x277D75348], v18, v19);
  v53[1] = v9;
  v54[0] = v20;
  v23 = objc_msgSend_smallCapsUnitFont(self, v21, v22);
  v54[1] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v54, v53, 2);
  v27 = objc_msgSend_initWithString_attributes_(v16, v26, textCopy, v25);

  v28 = objc_alloc(MEMORY[0x277CCA898]);
  v51[0] = v17;
  v31 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v29, v30);
  v51[1] = v9;
  v52[0] = v31;
  v34 = objc_msgSend_labelFont(self, v32, v33);
  v52[1] = v34;
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v52, v51, 2);
  v38 = objc_msgSend_initWithString_attributes_(v28, v37, directionCopy, v36);

  v39 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_SWAP_DISTANCE_TEXT_ORDER");
  v42 = objc_msgSend_BOOLValue(v39, v40, v41);
  if (v42)
  {
    v44 = v38;
  }

  else
  {
    v44 = v27;
  }

  if (v42)
  {
    v45 = v27;
  }

  else
  {
    v45 = v38;
  }

  objc_msgSend_appendAttributedString_(v7, v43, v44);
  objc_msgSend_appendAttributedString_(v7, v46, v49);
  objc_msgSend_appendAttributedString_(v7, v47, v45);

  return v7;
}

- (void)_configureSampleWaypoint:(id)waypoint color:(id)color
{
  waypointLabel = self->_waypointLabel;
  colorCopy = color;
  objc_msgSend_setText_(waypointLabel, v8, waypoint);
  objc_msgSend_setTextColor_(self->_waypointLabel, v9, colorCopy);

  v19 = formattedDistanceForWaypointComplication(805.0, v10);
  v12 = objc_msgSend__formattedLabelText_direction_(self, v11, v19, self->_awayText);
  objc_msgSend_setAttributedText_(self->_line2Label, v13, v12);

  v15 = formattedDistanceForWaypointComplication(14.6, v14);
  v17 = objc_msgSend__formattedLabelText_direction_(self, v16, v15, self->_downText);
  objc_msgSend_setAttributedText_(self->_line3Label, v18, v17);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, fraction);
  objc_msgSend__updateForMonochrome_(self, v5, v6);
}

- (void)_updateForMonochrome:(id)monochrome
{
  v18[2] = *MEMORY[0x277D85DE8];
  monochromeCopy = monochrome;
  v6 = objc_msgSend__filtersForStyle_fraction_(self, v5, 2, monochromeCopy);
  dialView = self->_dialView;
  v18[0] = self->_waypointLabel;
  v18[1] = dialView;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v18, 2);
  objc_msgSend__applyFilters_toViews_(self, v10, v6, v9);
  v12 = objc_msgSend__filtersForStyle_fraction_(self, v11, 0, monochromeCopy);

  line3Label = self->_line3Label;
  v17[0] = self->_line2Label;
  v17[1] = line3Label;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 2);
  objc_msgSend__applyFilters_toViews_(self, v16, v12, v15);
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
  v8[2] = sub_23BD53C04;
  v8[3] = &unk_278B942B8;
  v9 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v8);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end