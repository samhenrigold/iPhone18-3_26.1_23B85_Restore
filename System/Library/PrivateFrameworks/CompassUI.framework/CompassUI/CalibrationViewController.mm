@interface CalibrationViewController
- (CalibrationViewController)initWithOriginPoint:(CGPoint)point;
- (double)_correctedAngleForCurrentOrientation:(double)orientation;
- (double)completeCircle;
- (float)quantizedPercentage:(double)percentage forAngle:(double)angle;
- (id)updatedMaskingPath;
- (void)_updateSizes;
- (void)addConstraints;
- (void)dealloc;
- (void)hideAllTics;
- (void)reset;
- (void)setBallAngle:(double)angle tiltAngle:(double)tiltAngle;
- (void)setMotion:(id)motion;
- (void)showTicAtAngle:(double)angle withCredit:(double)credit;
- (void)showTicsBetweenStartAngle:(double)angle endAngle:(double)endAngle withCredit:(double)credit;
- (void)updateMaskingPath;
- (void)userDefaultsChanged:(id)changed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CalibrationViewController

- (CalibrationViewController)initWithOriginPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v23.receiver = self;
  v23.super_class = CalibrationViewController;
  v5 = [(CalibrationViewController *)&v23 init];
  if (v5)
  {
    v5->_ticsShowingArray = malloc_type_calloc(0xB4uLL, 4uLL, 0x100004052888210uLL);
    v5->_angleToRim = 0.34906585;
    v5->_previousHorizontalAngle = -1.0;
    if (x != *MEMORY[0x277CBF348] || y != *(MEMORY[0x277CBF348] + 8))
    {
      v5->_compassOriginPoint.x = x;
      v5->_compassOriginPoint.y = y;
    }

    v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7);
    objc_msgSend_doubleForKey_(v9, v10, @"CalibrationAwesomeAngle");
    v5->_calibrationAngle = v11 * 3.14159265 / 180.0;

    if (v5->_calibrationAngle == 0.0)
    {
      v5->_calibrationAngle = 0.872664626;
    }

    v14 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v12, v13);
    v5->_quantizationType = objc_msgSend_integerForKey_(v14, v15, @"CalibrationQuantizationType");

    v18 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v16, v17);
    v5->_shouldCompleteTics = objc_msgSend_BOOLForKey_(v18, v19, @"CalibrationShouldCompleteTics");

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    calibrationConstraints = v5->_calibrationConstraints;
    v5->_calibrationConstraints = v20;
  }

  return v5;
}

- (void)_updateSizes
{
  v4 = objc_msgSend_traitCollection(self, a2, v2);
  if (objc_msgSend_horizontalSizeClass(v4, v5, v6) == 2)
  {
    v9 = objc_msgSend_traitCollection(self, v7, v8);
    v12 = objc_msgSend_verticalSizeClass(v9, v10, v11) == 2;
  }

  else
  {
    v12 = 0;
  }

  v15 = objc_msgSend_view(self, v13, v14);
  objc_msgSend_frame(v15, v16, v17);
  Width = CGRectGetWidth(v84);

  v21 = objc_msgSend_view(self, v19, v20);
  objc_msgSend_frame(v21, v22, v23);
  Height = CGRectGetHeight(v85);

  if (Width >= Height)
  {
    Width = Height;
  }

  v27 = 203.0;
  v28 = round(Width * 100.0 / 320.0);
  if (!v12)
  {
    v27 = v28;
  }

  self->_compassRadius = v27;
  v29 = 0.0;
  objc_msgSend_setFrame_(self->_compassBackgroundView, v25, v26, 0.0, 0.0, Width, Width);
  objc_msgSend_setTicRadius_(self->_compassBackgroundView, v30, v31, self->_compassRadius);
  objc_msgSend_center(self->_compassBackgroundView, v32, v33);
  v35 = v34 - self->_compassRadius;
  objc_msgSend_center(self->_compassBackgroundView, v36, v37);
  objc_msgSend_setFrame_(self->_titleLabel, v39, v40, v35, v38 - self->_compassRadius, self->_compassRadius + self->_compassRadius, self->_compassRadius + self->_compassRadius);
  v43 = MEMORY[0x277D74300];
  if (v12)
  {
    v29 = 6.0;
    v44 = 4.0;
    objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v41, v42, 24.0);
  }

  else
  {
    v45 = MGIsDeviceOfType();
    v48 = 0.850000024;
    v44 = 1.0;
    if (!v45)
    {
      v48 = 1.0;
    }

    objc_msgSend_systemFontOfSize_(v43, v46, v47, round(Width * 18.0 / 320.0) * v48, 0x6C743B9540D7A421, 0xBCD16A8CA16013ECLL, -798153473);
  }
  v49 = ;
  objc_msgSend_setFont_(self->_titleLabel, v50, v49);

  v52 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v51, *MEMORY[0x277D76A20]);
  objc_msgSend_pointSize(v52, v53, v54);
  v56 = v55;

  v57 = fmin(v56, 26.0);
  v58 = MEMORY[0x277D74300];
  v61 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v59, v60);
  objc_msgSend_bounds(v61, v62, v63);
  v65 = v64;
  LODWORD(v83) = -798153473;
  v66 = MGIsDeviceOfType();
  v69 = 0.850000024;
  if (!v66)
  {
    v69 = 1.0;
  }

  v70 = objc_msgSend_boldSystemFontOfSize_(v58, v67, v68, v69 * round(v57 * v65 / 320.0), 0x6C743B9540D7A421, 0xBCD16A8CA16013ECLL, v83);
  objc_msgSend_setFont_(self->_instructionLabel, v71, v70);

  objc_msgSend_ticLength(self->_compassBackgroundView, v72, v73);
  objc_msgSend_setBallRadius_(self->_ballView, v75, v76, v74 - v29);
  compassRadius = self->_compassRadius;
  objc_msgSend_ballRadius(self->_ballView, v78, v79);
  objc_msgSend_setTrackRadius_(self->_ballView, v81, v82, compassRadius - v80 - v44);
}

- (void)viewDidLoad
{
  v179.receiver = self;
  v179.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v179 viewDidLoad];
  v5 = objc_msgSend_blackColor(MEMORY[0x277D75348], v3, v4);
  v8 = objc_msgSend_view(self, v6, v7);
  objc_msgSend_setBackgroundColor_(v8, v9, v5);

  v12 = objc_msgSend_view(self, v10, v11);
  v15 = objc_msgSend_layer(v12, v13, v14);
  objc_msgSend_setBorderWidth_(v15, v16, v17, 1.0);

  v20 = objc_msgSend_blackColor(MEMORY[0x277D75348], v18, v19);
  v21 = v20;
  v24 = objc_msgSend_CGColor(v21, v22, v23);
  v27 = objc_msgSend_view(self, v25, v26);
  v30 = objc_msgSend_layer(v27, v28, v29);
  objc_msgSend_setBorderColor_(v30, v31, v24);

  v32 = [CompassBackgroundView alloc];
  v33 = *MEMORY[0x277CBF3A0];
  v34 = *(MEMORY[0x277CBF3A0] + 8);
  v35 = *(MEMORY[0x277CBF3A0] + 16);
  v36 = *(MEMORY[0x277CBF3A0] + 24);
  v38 = objc_msgSend_initWithFrame_forCompass_(v32, v37, 0, *MEMORY[0x277CBF3A0], v34, v35, v36);
  compassBackgroundView = self->_compassBackgroundView;
  self->_compassBackgroundView = v38;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_compassBackgroundView, v40, 0);
  self->_numCompleteTics = 0;
  v43 = objc_msgSend_layer(MEMORY[0x277CD9F90], v41, v42);
  compassBackgroundViewMask = self->_compassBackgroundViewMask;
  self->_compassBackgroundViewMask = v43;

  v47 = objc_msgSend_blackColor(MEMORY[0x277D75348], v45, v46);
  v48 = v47;
  v51 = objc_msgSend_CGColor(v48, v49, v50);
  objc_msgSend_setFillColor_(self->_compassBackgroundViewMask, v52, v51);

  objc_msgSend_setLineWidth_(self->_compassBackgroundViewMask, v53, v54, 0.5);
  LODWORD(v55) = 1060320051;
  objc_msgSend_setOpacity_(self->_compassBackgroundViewMask, v56, v57, v55);
  objc_msgSend_reset(self, v58, v59);
  v60 = objc_alloc(MEMORY[0x277D756B8]);
  v63 = objc_msgSend_initWithFrame_(v60, v61, v62, v33, v34, v35, v36);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v63;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_titleLabel, v65, 0);
  v68 = objc_msgSend_grayColor(MEMORY[0x277D75348], v66, v67);
  objc_msgSend_setTextColor_(self->_titleLabel, v69, v68);

  objc_msgSend_setTextAlignment_(self->_titleLabel, v70, 1);
  v73 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v71, v72);
  v75 = objc_msgSend_localizedStringForKey_value_table_(v73, v74, @"Calibrate", &stru_2856FB5D0, 0);
  objc_msgSend_setText_(self->_titleLabel, v76, v75);

  v79 = objc_msgSend_clearColor(MEMORY[0x277D75348], v77, v78);
  objc_msgSend_setBackgroundColor_(self->_titleLabel, v80, v79);

  objc_msgSend_setAdjustsFontSizeToFitWidth_(self->_titleLabel, v81, 1);
  objc_msgSend_setMinimumScaleFactor_(self->_titleLabel, v82, v83, 0.699999988);
  v84 = objc_alloc(MEMORY[0x277D756B8]);
  v87 = objc_msgSend_initWithFrame_(v84, v85, v86, v33, v34, v35, v36);
  instructionLabel = self->_instructionLabel;
  self->_instructionLabel = v87;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_instructionLabel, v89, 0);
  v92 = objc_msgSend_grayColor(MEMORY[0x277D75348], v90, v91);
  objc_msgSend_setTextColor_(self->_instructionLabel, v93, v92);

  objc_msgSend_setTextAlignment_(self->_instructionLabel, v94, 1);
  v97 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v95, v96);
  v99 = objc_msgSend_localizedStringForKey_value_table_(v97, v98, @"Tilt the screen to roll the ball around the circle", &stru_2856FB5D0, 0);
  objc_msgSend_setText_(self->_instructionLabel, v100, v99);

  objc_msgSend_setNumberOfLines_(self->_instructionLabel, v101, 3);
  objc_msgSend_center(self->_compassBackgroundView, v102, v103);
  objc_msgSend_setCenter_(self->_instructionLabel, v104, v105);
  v107 = objc_msgSend_buttonWithType_(MEMORY[0x277D75220], v106, 1);
  cancelButton = self->_cancelButton;
  self->_cancelButton = v107;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_cancelButton, v109, 0);
  v112 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v110, v111, 0.400000006, 1.0);
  objc_msgSend_setBackgroundColor_(self->_cancelButton, v113, v112);

  v116 = objc_msgSend_layer(self->_cancelButton, v114, v115);
  objc_msgSend_setCornerRadius_(v116, v117, v118, 5.0);

  v121 = objc_msgSend_boldSystemFontOfSize_(MEMORY[0x277D74300], v119, v120, 18.0);
  v124 = objc_msgSend_titleLabel(self->_cancelButton, v122, v123);
  objc_msgSend_setFont_(v124, v125, v121);

  v126 = self->_cancelButton;
  v129 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v127, v128);
  v131 = objc_msgSend_localizedStringForKey_value_table_(v129, v130, @"Cancel", &stru_2856FB5D0, 0);
  objc_msgSend_setTitle_forState_(v126, v132, v131, 0);

  v133 = self->_cancelButton;
  v136 = objc_msgSend_blackColor(MEMORY[0x277D75348], v134, v135);
  objc_msgSend_setTitleColor_forState_(v133, v137, v136, 0);

  v138 = self->_cancelButton;
  v141 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v139, v140);
  objc_msgSend_setTitleColor_forState_(v138, v142, v141, 4);

  objc_msgSend_addTarget_action_forControlEvents_(self->_cancelButton, v143, self, sel_cancel, 64);
  v144 = [CalibrationBallView alloc];
  v147 = objc_msgSend_initWithFrame_ballRadius_(v144, v145, v146, v33, v34, v35, v36, 0.0);
  ballView = self->_ballView;
  self->_ballView = v147;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_ballView, v149, 0);
  objc_msgSend__updateSizes(self, v150, v151);
  v154 = objc_msgSend_view(self, v152, v153);
  objc_msgSend_addSubview_(v154, v155, self->_compassBackgroundView);

  v158 = objc_msgSend_view(self, v156, v157);
  objc_msgSend_addSubview_(v158, v159, self->_instructionLabel);

  v162 = objc_msgSend_view(self, v160, v161);
  v165 = objc_msgSend_layer(v162, v163, v164);
  objc_msgSend_addSublayer_(v165, v166, self->_compassBackgroundViewMask);

  v169 = objc_msgSend_view(self, v167, v168);
  objc_msgSend_addSubview_(v169, v170, self->_titleLabel);

  v173 = objc_msgSend_view(self, v171, v172);
  objc_msgSend_addSubview_(v173, v174, self->_ballView);

  v177 = objc_msgSend_view(self, v175, v176);
  objc_msgSend_addSubview_(v177, v178, self->_cancelButton);
}

- (void)userDefaultsChanged:(id)changed
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, changed);
  self->_quantizationType = objc_msgSend_integerForKey_(v4, v5, @"CalibrationQuantizationType");

  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7);
  objc_msgSend_doubleForKey_(v8, v9, @"CalibrationAwesomeAngle");
  self->_calibrationAngle = v10 * 3.14159265 / 180.0;

  if (self->_calibrationAngle == 0.0)
  {
    self->_calibrationAngle = 0.872664626;
  }

  v14 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v11, v12);
  self->_shouldCompleteTics = objc_msgSend_BOOLForKey_(v14, v13, @"CalibrationShouldCompleteTics");
}

- (float)quantizedPercentage:(double)percentage forAngle:(double)angle
{
  if (qword_27EDBA528 != -1)
  {
    sub_243D6FB24();
  }

  v7 = fmax(cos((angle * 2.0 + -270.0) * 3.14159265 / 180.0) * *&qword_27EDBA520, 0.0) + percentage;
  quantizationType = self->_quantizationType;
  if (quantizationType)
  {
    if (quantizationType == 1)
    {
      result = 1.0;
      if (v7 > 0.660000026)
      {
        return result;
      }

      if (v7 > 0.330000013)
      {
        return 0.66;
      }

      if (v7 > 0.100000001)
      {
        return 0.33;
      }
    }

    else if (quantizationType == 2 && v7 > 0.100000001)
    {
      return v7;
    }

    return 0.1;
  }

  result = 1.0;
  if (v7 <= 0.5)
  {
    result = 0.5;
    if (v7 <= 0.100000001)
    {
      return 0.1;
    }
  }

  return result;
}

- (void)addConstraints
{
  v223[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_view(self, a2, v2);
  objc_msgSend_removeConstraints_(v4, v5, self->_calibrationConstraints);

  objc_msgSend_removeAllObjects(self->_calibrationConstraints, v6, v7);
  calibrationConstraints = self->_calibrationConstraints;
  v10 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v9, self->_compassBackgroundView, 7, 0, self->_compassBackgroundView, 8, 1.0, 0.0);
  objc_msgSend_addObject_(calibrationConstraints, v11, v10);

  v12 = self->_calibrationConstraints;
  v13 = MEMORY[0x277CCAAD0];
  compassBackgroundView = self->_compassBackgroundView;
  v17 = objc_msgSend_view(self, v15, v16);
  v19 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v13, v18, compassBackgroundView, 9, 0, v17, 9, 1.0, 0.0);
  objc_msgSend_addObject_(v12, v20, v19);

  v23 = objc_msgSend_view(self, v21, v22);
  objc_msgSend_frame(v23, v24, v25);
  v27 = v26;

  v30 = objc_msgSend_view(self, v28, v29);
  objc_msgSend_frame(v30, v31, v32);
  v34 = v33;

  if (v27 >= v34)
  {
    v37 = v34;
  }

  else
  {
    v37 = v27;
  }

  v38 = self->_calibrationConstraints;
  v39 = MEMORY[0x277CCAAD0];
  v222 = @"compassWidth";
  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v35, v36, v37);
  v223[0] = v40;
  v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v223, &v222, 1);
  v43 = _NSDictionaryOfVariableBindings(&cfstr_Compassbackgro_0.isa, self->_compassBackgroundView, 0);
  v45 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v39, v44, @"[_compassBackgroundView(==compassWidth)]", 0, v42, v43);
  objc_msgSend_addObjectsFromArray_(v38, v46, v45);

  v47 = self->_calibrationConstraints;
  v49 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v48, self->_ballView, 3, 0, self->_compassBackgroundView, 3, 1.0, 0.0);
  objc_msgSend_addObject_(v47, v50, v49);

  v51 = self->_calibrationConstraints;
  v53 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v52, self->_ballView, 1, 0, self->_compassBackgroundView, 1, 1.0, 0.0);
  objc_msgSend_addObject_(v51, v54, v53);

  v55 = self->_calibrationConstraints;
  v57 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v56, self->_ballView, 4, 0, self->_compassBackgroundView, 4, 1.0, 0.0);
  objc_msgSend_addObject_(v55, v58, v57);

  v59 = self->_calibrationConstraints;
  v61 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v60, self->_ballView, 2, 0, self->_compassBackgroundView, 2, 1.0, 0.0);
  objc_msgSend_addObject_(v59, v62, v61);

  v63 = self->_calibrationConstraints;
  v65 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v64, self->_titleLabel, 10, 0, self->_compassBackgroundView, 10, 1.0, 0.0);
  objc_msgSend_addObject_(v63, v66, v65);

  v67 = self->_calibrationConstraints;
  v69 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v68, self->_titleLabel, 9, 0, self->_compassBackgroundView, 9, 1.0, 0.0);
  objc_msgSend_addObject_(v67, v70, v69);

  v71 = self->_calibrationConstraints;
  v73 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v72, self->_instructionLabel, 9, 0, self->_compassBackgroundView, 9, 1.0, 0.0);
  objc_msgSend_addObject_(v71, v74, v73);

  v75 = self->_calibrationConstraints;
  v76 = MEMORY[0x277CCAAD0];
  instructionLabel = self->_instructionLabel;
  v80 = objc_msgSend_view(self, v78, v79);
  v82 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v76, v81, instructionLabel, 7, 0, v80, 7, 0.660000026, 0.0);
  objc_msgSend_addObject_(v75, v83, v82);

  v84 = self->_calibrationConstraints;
  v85 = MEMORY[0x277CCAAD0];
  cancelButton = self->_cancelButton;
  v89 = objc_msgSend_view(self, v87, v88);
  v91 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v85, v90, cancelButton, 9, 0, v89, 9, 1.0, 0.0);
  objc_msgSend_addObject_(v84, v92, v91);

  v93 = self->_calibrationConstraints;
  v95 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v94, self->_cancelButton, 7, 0, 0, 7, 1.0, 150.0);
  objc_msgSend_addObject_(v93, v96, v95);

  v99 = objc_msgSend_view(self, v97, v98);
  objc_msgSend_frame(v99, v100, v101);
  v103 = v102;

  v104 = self->_calibrationConstraints;
  v105 = (v103 - (self->_compassRadius + v103 * 0.5 + 40.0 + 7.0)) * 0.5;
  v106 = MEMORY[0x277CCAAD0];
  v220[0] = @"buttonHeight";
  v220[1] = @"buttonBottomMargin";
  v221[0] = &unk_2856FC260;
  v221[1] = &unk_2856FC270;
  v220[2] = @"instructionBottomMargin";
  v109 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v107, v108, v105);
  v221[2] = v109;
  v111 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, v221, v220, 3);
  v112 = _NSDictionaryOfVariableBindings(&cfstr_Instructionlab.isa, self->_instructionLabel, self->_cancelButton, 0);
  v114 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v106, v113, @"V:[_instructionLabel]-(instructionBottomMargin)-[_cancelButton(==buttonHeight)]-(buttonBottomMargin)-|", 0, v111, v112);
  objc_msgSend_addObjectsFromArray_(v104, v115, v114);

  v118 = objc_msgSend_traitCollection(self, v116, v117);
  if (objc_msgSend_horizontalSizeClass(v118, v119, v120) == 2)
  {
    v123 = objc_msgSend_traitCollection(self, v121, v122);
    v126 = objc_msgSend_verticalSizeClass(v123, v124, v125) == 2;
  }

  else
  {
    v126 = 0;
  }

  v129 = objc_msgSend_view(self, v127, v128);
  objc_msgSend_frame(v129, v130, v131);
  Width = CGRectGetWidth(v224);

  v135 = objc_msgSend_view(self, v133, v134);
  objc_msgSend_frame(v135, v136, v137);
  Height = CGRectGetHeight(v225);

  if (Width >= Height)
  {
    Width = Height;
  }

  v141 = objc_msgSend_view(self, v139, v140);
  objc_msgSend_frame(v141, v142, v143);
  v144 = CGRectGetWidth(v226);

  compassRadius = self->_compassRadius;
  objc_msgSend_ticLength(self->_compassBackgroundView, v146, v147);
  v151 = (v144 + (compassRadius - v150) * -2.0) * 0.5;
  if (v151 >= 0.0)
  {
    v152 = v151;
  }

  else
  {
    v152 = 0.0;
  }

  v218[0] = @"titleLabelWidth";
  v153 = MEMORY[0x277CCABB0];
  v154 = self->_compassRadius;
  objc_msgSend_ticLength(self->_compassBackgroundView, v148, v149);
  v158 = objc_msgSend_numberWithDouble_(v153, v156, v157, v154 - v155 + v154 - v155);
  v218[1] = @"titleMarginWidth";
  v219[0] = v158;
  v161 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v159, v160, v152);
  v219[1] = v161;
  v163 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v162, v219, v218, 2);

  v164 = self->_calibrationConstraints;
  v165 = MEMORY[0x277CCAAD0];
  v166 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, self->_titleLabel, 0);
  v168 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v165, v167, @"|-(>=titleMarginWidth)-[_titleLabel(==titleLabelWidth)]-(>=titleMarginWidth)-|", 0, v163, v166);
  objc_msgSend_addObjectsFromArray_(v164, v169, v168);

  if (v126 || (objc_msgSend_traitCollection(self, v170, v171), v172 = objc_claimAutoreleasedReturnValue(), v175 = objc_msgSend_horizontalSizeClass(v172, v173, v174), v172, v175 == 2))
  {
    v176 = self->_calibrationConstraints;
    v177 = MEMORY[0x277CCAAD0];
    v178 = self->_compassBackgroundView;
    v179 = objc_msgSend_view(self, v170, v171);
    v181 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v177, v180, v178, 10, 0, v179, 10, 1.0, -18.0);
    objc_msgSend_addObject_(v176, v182, v181);

    v183 = self->_calibrationConstraints;
    v185 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v184, self->_compassBackgroundView, 8, 0, 0, 0, 1.0, Width);
    objc_msgSend_addObject_(v183, v186, v185);
  }

  else
  {
    v187 = objc_msgSend_view(self, v170, v171);
    objc_msgSend_frame(v187, v188, v189);
    v191 = (v190 + v190) / 3.0;
    objc_msgSend_frame(self->_compassBackgroundView, v192, v193);
    v195 = v194;

    if (v191 <= v195)
    {
      v203 = self->_calibrationConstraints;
      v209 = MEMORY[0x277CCAAD0];
      v210 = self->_compassBackgroundView;
      v185 = objc_msgSend_view(self, v196, v197);
      objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v209, v211, v210, 3, 0, v185, 3, 1.0, 20.0);
    }

    else
    {
      v198 = objc_msgSend_view(self, v196, v197);
      objc_msgSend_frame(v198, v199, v200);
      v202 = round(v201 * 227.0 / 568.0);

      v203 = self->_calibrationConstraints;
      v204 = MEMORY[0x277CCAAD0];
      v205 = self->_compassBackgroundView;
      v185 = objc_msgSend_view(self, v206, v207);
      objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v204, v208, v205, 10, 0, v185, 3, 1.0, v202);
    }
    v212 = ;
    objc_msgSend_addObject_(v203, v213, v212);
  }

  v216 = objc_msgSend_view(self, v214, v215);
  objc_msgSend_addConstraints_(v216, v217, self->_calibrationConstraints);
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v8 viewWillAppear:appear];
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
  objc_msgSend_addObserver_selector_name_object_(v6, v7, self, sel_userDefaultsChanged_, *MEMORY[0x277CCA858], 0);

  memset_pattern16(self->_ticsShowingArray, &unk_243D70430, 0x2D0uLL);
}

- (void)viewDidAppear:(BOOL)appear
{
  v46.receiver = self;
  v46.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v46 viewDidAppear:appear];
  v6 = objc_msgSend_view(self, v4, v5);
  objc_msgSend_setNeedsLayout(v6, v7, v8);

  v11 = objc_msgSend_view(self, v9, v10);
  objc_msgSend_layoutIfNeeded(v11, v12, v13);

  v15 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9FA0], v14, @"path");
  objc_msgSend_setStiffness_(v15, v16, v17, 1560.0);
  objc_msgSend_setMass_(v15, v18, v19, 3.0);
  objc_msgSend_setDamping_(v15, v20, v21, 600.0);
  objc_msgSend_setDuration_(v15, v22, v23, 0.400000006);
  v24 = CACurrentMediaTime();
  objc_msgSend_setBeginTime_(v15, v25, v26, v24 + 0.5);
  memset_pattern16(self->_ticsShowingArray, &unk_243D70430, 0x2D0uLL);
  v29 = objc_msgSend_updatedMaskingPath(self, v27, v28);
  v30 = v29;
  v33 = objc_msgSend_CGPath(v30, v31, v32);
  objc_msgSend_setFromValue_(v15, v34, v33);

  memset_pattern16(self->_ticsShowingArray, &unk_243D70420, 0x2D0uLL);
  v37 = objc_msgSend_updatedMaskingPath(self, v35, v36);
  v38 = v37;
  v41 = objc_msgSend_CGPath(v38, v39, v40);

  objc_msgSend_setToValue_(v15, v42, v41);
  objc_msgSend_setFillMode_(v15, v43, *MEMORY[0x277CDA230]);
  objc_msgSend_setPath_(self->_compassBackgroundViewMask, v44, v41);
  objc_msgSend_addAnimation_forKey_(self->_compassBackgroundViewMask, v45, v15, @"growAnimation");
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v8 viewWillDisappear:disappear];
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
  objc_msgSend_removeObserver_(v6, v7, self);

  self->_ignoreMotionUpdates = 1;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v6 viewDidDisappear:disappear];
  objc_msgSend_hideAllTics(self, v4, v5);
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v7 viewWillLayoutSubviews];
  objc_msgSend__updateSizes(self, v3, v4);
  objc_msgSend_addConstraints(self, v5, v6);
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v9 viewDidLayoutSubviews];
  objc_msgSend_frame(self->_compassBackgroundView, v3, v4);
  objc_msgSend_setFrame_(self->_compassBackgroundViewMask, v5, v6);
  objc_msgSend_updateMaskingPath(self, v7, v8);
}

- (void)reset
{
  self->_ignoreMotionUpdates = 0;
  objc_msgSend_hideAllTics(self, a2, v2);
  self->_previousTimestamp = -1.0;
  self->_startTicAngle = -1.0;
}

- (id)updatedMaskingPath
{
  compassRadius = self->_compassRadius;
  objc_msgSend_ticLength(self->_compassBackgroundView, a2, v2);
  v41 = compassRadius + v5 * 0.5 + 1.0;
  objc_msgSend_frame(self->_compassBackgroundView, v6, v7);
  v43 = v8 * 0.5;
  objc_msgSend_frame(self->_compassBackgroundView, v9, v10);
  v42 = v11 * 0.5;
  v14 = objc_msgSend_bezierPath(MEMORY[0x277D75208], v12, v13);
  objc_msgSend_setLineWidth_(v14, v15, v16, 0.5);
  v19 = 0;
  v44 = 0x168uLL;
  v20 = -1;
  v40 = 3.14159265;
  do
  {
    v21 = (1.0 - self->_ticsShowingArray[v19]);
    objc_msgSend_ticLength(self->_compassBackgroundView, v17, v18, *&v40);
    v23 = (v22 + 2.0) * v21;
    v24 = fmod(v20, v44);
    v25 = __sincos_stret(v24 * v40 / 180.0);
    objc_msgSend_moveToPoint_(v14, v26, v27);
    v28 = v41 - v23;
    objc_msgSend_addLineToPoint_(v14, v29, v30, v43 + v28 * v25.__cosval, v42 + v28 * v25.__sinval);
    v20 += 2;
    v31 = fmod(v20, v44);
    v32 = __sincos_stret(v31 * v40 / 180.0);
    objc_msgSend_addLineToPoint_(v14, v33, v34, v43 + v28 * v32.__cosval, v42 + v28 * v32.__sinval);
    objc_msgSend_addLineToPoint_(v14, v35, v36, v43 + v41 * v32.__cosval, v42 + v41 * v32.__sinval);
    objc_msgSend_addLineToPoint_(v14, v37, v38, v43 + v41 * v25.__cosval, v42 + v41 * v25.__sinval);
    ++v19;
  }

  while (v19 != 180);

  return v14;
}

- (void)updateMaskingPath
{
  v9 = objc_msgSend_updatedMaskingPath(self, a2, v2);
  v4 = v9;
  v7 = objc_msgSend_CGPath(v9, v5, v6);
  objc_msgSend_setPath_(self->_compassBackgroundViewMask, v8, v7);
}

- (void)showTicAtAngle:(double)angle withCredit:(double)credit
{
  v6 = vcvtmd_u64_f64(angle * 0.5);
  if (v6 <= 0xB3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 % 0xB3;
  }

  ticsShowingArray = self->_ticsShowingArray;
  v9 = ticsShowingArray[v7];
  if (v9 < 1.0)
  {
    if (v9 < credit)
    {
      objc_msgSend_quantizedPercentage_forAngle_(self, a2, v4, credit, angle);
      ticsShowingArray = self->_ticsShowingArray;
    }

    ticsShowingArray[v7] = v9;
    if (v9 == 1.0)
    {
      ++self->_numCompleteTics;
    }

    objc_msgSend_updateMaskingPath(self, a2, v4);
  }
}

- (void)showTicsBetweenStartAngle:(double)angle endAngle:(double)endAngle withCredit:(double)credit
{
    ;
  }

    ;
  }

  v8 = 0;
  v9 = vcvtmd_u64_f64(angle * 0.5) % 0xB4;
  v10 = vcvtmd_u64_f64(endAngle * 0.5);
  if (v9 <= v10 % 0xB4)
  {
    v11 = v10 % 0xB4;
  }

  else
  {
    v11 = v9;
  }

  if (v9 >= v10 % 0xB4)
  {
    v12 = v10 % 0xB4;
  }

  else
  {
    v12 = v9;
  }

  ticsShowingArray = self->_ticsShowingArray;
  do
  {
    v14 = ticsShowingArray[v12];
    if (v14 < 1.0)
    {
      if (v14 < credit)
      {
        objc_msgSend_quantizedPercentage_forAngle_(self, a2, v5, credit, v12);
        ticsShowingArray = self->_ticsShowingArray;
      }

      ticsShowingArray[v12] = v14;
      if (v14 == 1.0)
      {
        ++self->_numCompleteTics;
      }

      v8 = 1;
    }

    v12 = (v12 + 1);
  }

  while (v11 >= v12);
  if (v8)
  {

    objc_msgSend_updateMaskingPath(self, a2, v5);
  }
}

- (void)hideAllTics
{
  memset_pattern16(self->_ticsShowingArray, &unk_243D70420, 0x2D0uLL);
  self->_numCompleteTics = 0;

  objc_msgSend_updateMaskingPath(self, v3, v4);
}

- (void)setBallAngle:(double)angle tiltAngle:(double)tiltAngle
{
  if (self->_startTicAngle < 0.0)
  {
    self->_startTicAngle = angle / 0.0174532925;
  }

  objc_msgSend_showTicsBetweenStartAngle_endAngle_withCredit_(self, a2, v4);
  self->_startTicAngle = angle / 0.0174532925;
  objc_msgSend_setAngle_(self->_ballView, v7, v8, angle);
  objc_msgSend_setNeedsLayout(self->_compassBackgroundView, v9, v10);
  ballView = self->_ballView;

  objc_msgSend_setNeedsLayout(ballView, v11, v12);
}

- (double)_correctedAngleForCurrentOrientation:(double)orientation
{
  v5 = objc_msgSend_view(self, a2, v3);
  v8 = objc_msgSend_window(v5, v6, v7);
  v11 = objc_msgSend_windowScene(v8, v9, v10);
  v14 = objc_msgSend_interfaceOrientation(v11, v12, v13);

  switch(v14)
  {
    case 2:
      v15 = 3.14159265;
      break;
    case 3:
      v15 = -1.57079633;
      break;
    case 4:
      v15 = 1.57079633;
      break;
    default:
      return orientation;
  }

  v16 = orientation + v15;
  v17 = fmod(orientation + v15, 6.28318531);
  orientation = v17;
  if (v16 < 0.0)
  {
    return v17 + 6.28318531;
  }

  return orientation;
}

- (void)setMotion:(id)motion
{
  if (!self->_ignoreMotionUpdates)
  {
    motionCopy = motion;
    objc_msgSend_gravity(motionCopy, v5, v6);
    v8 = v7;
    v10.f64[1] = v9;
    __x = v10;
    v11 = atan2(sqrt(vaddvq_f64(vmulq_f64(v10, v10))), -v7);
    v14 = fmod(v11, 6.28318531);
    if (v11 < 0.0)
    {
      v14 = v14 + 6.28318531;
    }

    objc_msgSend__correctedAngleForCurrentOrientation_(self, v12, v13, v14);
    *&v18 = *&v18 * 1.4037466 + 0.01;
    if (*&v18 <= 0.5)
    {
      v19 = *&v18;
    }

    else
    {
      v19 = 0.5;
    }

    __xa = vmlaq_n_f64(vmulq_n_f64(*self->_previousGravity, 1.0 - v19), __x, v19);
    v20 = *&self->_previousGravity[16] * (1.0 - v19);
    *&v18 = v20 + v19 * v8;
    v35 = v18;
    objc_msgSend_timestamp(motionCopy, v15, v16, *&v19, v17);
    v22 = v21;

    v23 = atan2(-__xa.f64[1], __xa.f64[0]);
    v26 = fmod(v23, 6.28318531);
    if (v23 < 0.0)
    {
      v26 = v26 + 6.28318531;
    }

    objc_msgSend__correctedAngleForCurrentOrientation_(self, v24, v25, v26);
    v28 = v27;
    v29 = atan2(sqrt(vaddvq_f64(vmulq_f64(__xa, __xa))), -(v20 + v34 * v8));
    v32 = fmod(v29, 6.28318531);
    v33 = v32 + 6.28318531;
    if (v29 >= 0.0)
    {
      v33 = v32;
    }

    self->_previousHorizontalAngle = v28;
    objc_msgSend_setBallAngle_tiltAngle_(self, v30, v31, v28, v33);
    *self->_previousGravity = __xa;
    *&self->_previousGravity[16] = v35;
    self->_previousTimestamp = v22;
  }
}

- (double)completeCircle
{
  self->_ignoreMotionUpdates = 1;
  objc_msgSend_currentAngle(self->_ballView, a2, v2);
  v5 = v4 * 180.0 / 3.14159265;
  objc_initWeak(&location, self);
  v6 = 0.0;
  v7 = 360;
  v8 = MEMORY[0x277D85CD0];
  do
  {
    v9 = dispatch_time(0, (v6 / 360.0 * 1000000000.0));
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_243D6F3AC;
    v11[3] = &unk_278DF27F8;
    objc_copyWeak(v12, &location);
    v12[1] = *&v6;
    v12[2] = *&v5;
    dispatch_after(v9, v8, v11);
    objc_destroyWeak(v12);
    v6 = v6 + 1.0;
    --v7;
  }

  while (v7);
  objc_destroyWeak(&location);
  return 1.0;
}

- (void)dealloc
{
  free(self->_ticsShowingArray);
  v3.receiver = self;
  v3.super_class = CalibrationViewController;
  [(CalibrationViewController *)&v3 dealloc];
}

@end