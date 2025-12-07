@interface CLSNotificationBannerView
+ (id)bannerMessageAttributes;
+ (id)bannerTitleAttributes;
+ (id)bundle;
- (CLSNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message;
- (CLSNotificationBannerView)initWithTitle:(id)title imageView:(id)view message:(id)message;
- (CLSNotificationBannerView)initWithTitle:(id)title message:(id)message;
- (void)applyConstraints;
- (void)callCompletionHandler;
- (void)hideBanner;
- (void)showWithCompletionHandler:(id)handler;
@end

@implementation CLSNotificationBannerView

+ (id)bannerTitleAttributes
{
  if (qword_27ED78338 != -1)
  {
    dispatch_once(&qword_27ED78338, &unk_28563EF18);
  }

  v3 = qword_27ED78330;

  return v3;
}

+ (id)bannerMessageAttributes
{
  if (qword_27ED78348 != -1)
  {
    dispatch_once(&qword_27ED78348, &unk_28563EF38);
  }

  v3 = qword_27ED78340;

  return v3;
}

+ (id)bundle
{
  if (qword_27ED78358 != -1)
  {
    dispatch_once(&qword_27ED78358, &unk_28563EF58);
  }

  v3 = qword_27ED78350;

  return v3;
}

- (CLSNotificationBannerView)initWithTitle:(id)title imageView:(id)view message:(id)message
{
  titleCopy = title;
  viewCopy = view;
  messageCopy = message;
  v189.receiver = self;
  v189.super_class = CLSNotificationBannerView;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(CLSNotificationBannerView *)&v189 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  v20 = v15;
  if (v15)
  {
    objc_msgSend_setDuration_(v15, v16, v17, v18, v19, 9.0);
    v25 = objc_msgSend_currentTraitCollection(MEMORY[0x277D75C80], v21, v22, v23, v24);
    v30 = objc_msgSend_userInterfaceStyle(v25, v26, v27, v28, v29);

    if (v30 > 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = qword_2435210D8[v30];
    }

    v32 = objc_alloc(MEMORY[0x277D75DE8]);
    v188 = objc_msgSend_initWithPrivateStyle_(v32, v33, v31, v34, v35);
    objc_msgSend_addSubview_(v20, v36, v188, v37, v38);
    objc_storeStrong(&v20->_imageView, view);
    objc_msgSend_addSubview_(v20, v39, v20->_imageView, v40, v41);
    v42 = objc_alloc_init(MEMORY[0x277D75A68]);
    labelsStackView = v20->_labelsStackView;
    v20->_labelsStackView = v42;

    objc_msgSend_setAxis_(v20->_labelsStackView, v44, 1, v45, v46);
    objc_msgSend_setAlignment_(v20->_labelsStackView, v47, 0, v48, v49);
    objc_msgSend_setDistribution_(v20->_labelsStackView, v50, 2, v51, v52);
    objc_msgSend_addSubview_(v20, v53, v20->_labelsStackView, v54, v55);
    v60 = 0x277D75000uLL;
    if (titleCopy)
    {
      v61 = objc_alloc(MEMORY[0x277D756B8]);
      v66 = objc_msgSend_initWithFrame_(v61, v62, v63, v64, v65, v11, v12, v13, v14);
      titleLabel = v20->_titleLabel;
      v20->_titleLabel = v66;

      v72 = objc_msgSend_clearColor(MEMORY[0x277D75348], v68, v69, v70, v71);
      objc_msgSend_setBackgroundColor_(v20->_titleLabel, v73, v72, v74, v75);

      objc_msgSend_setNumberOfLines_(v20->_titleLabel, v76, 1, v77, v78);
      objc_msgSend_setAdjustsFontSizeToFitWidth_(v20->_titleLabel, v79, 1, v80, v81);
      objc_msgSend_setMinimumScaleFactor_(v20->_titleLabel, v82, v83, v84, v85, 0.8);
      v86 = objc_alloc(MEMORY[0x277CCA898]);
      v87 = objc_opt_class();
      v92 = objc_msgSend_bannerTitleAttributes(v87, v88, v89, v90, v91);
      v95 = objc_msgSend_initWithString_attributes_(v86, v93, titleCopy, v92, v94);
      objc_msgSend_setAttributedText_(v20->_titleLabel, v96, v95, v97, v98);

      v60 = 0x277D75000uLL;
      objc_msgSend_setTextAlignment_(v20->_titleLabel, v99, 4, v100, v101);
      objc_msgSend_addArrangedSubview_(v20->_labelsStackView, v102, v20->_titleLabel, v103, v104);
    }

    if (messageCopy)
    {
      v105 = objc_alloc(MEMORY[0x277D756B8]);
      v110 = objc_msgSend_initWithFrame_(v105, v106, v107, v108, v109, v11, v12, v13, v14);
      messageLabel = v20->_messageLabel;
      v20->_messageLabel = v110;

      v116 = objc_msgSend_clearColor(MEMORY[0x277D75348], v112, v113, v114, v115);
      objc_msgSend_setBackgroundColor_(v20->_messageLabel, v117, v116, v118, v119);

      objc_msgSend_setNumberOfLines_(v20->_messageLabel, v120, 0, v121, v122);
      objc_msgSend_setAdjustsFontSizeToFitWidth_(v20->_messageLabel, v123, 1, v124, v125);
      objc_msgSend_setMinimumScaleFactor_(v20->_messageLabel, v126, v127, v128, v129, 0.8);
      v130 = objc_alloc(MEMORY[0x277CCA898]);
      v131 = objc_opt_class();
      v136 = objc_msgSend_bannerMessageAttributes(v131, v132, v133, v134, v135);
      v139 = objc_msgSend_initWithString_attributes_(v130, v137, messageCopy, v136, v138);
      objc_msgSend_setAttributedText_(v20->_messageLabel, v140, v139, v141, v142);

      v60 = 0x277D75000;
      objc_msgSend_setTextAlignment_(v20->_messageLabel, v143, 4, v144, v145);
      objc_msgSend_addArrangedSubview_(v20->_labelsStackView, v146, v20->_messageLabel, v147, v148);
    }

    if (qword_27ED78360 != -1)
    {
      dispatch_once(&qword_27ED78360, &unk_28563EF98);
    }

    if (byte_27ED78310 == 1)
    {
      objc_msgSend_sizeToFit(v20->_titleLabel, v56, v57, v58, v59);
      objc_msgSend_sizeToFit(v20->_messageLabel, v149, v150, v151, v152);
      v157 = v20->_titleLabel;
      if (v157)
      {
        objc_msgSend_frame(v157, v153, v154, v155, v156);
        v159 = v158;
      }

      else
      {
        v159 = 0.0;
      }

      v160 = v20->_messageLabel;
      if (v160)
      {
        objc_msgSend_frame(v160, v153, v154, v155, v156);
        if (v159 < v161)
        {
          v159 = v161;
        }
      }

      v60 = 0x277D75000uLL;
      v162 = fmin(v159, 512.0);
      if (qword_27ED78360 != -1)
      {
        dispatch_once(&qword_27ED78360, &unk_28563EF98);
      }

      v163 = 57.0;
      if (byte_27ED78310)
      {
        v163 = 54.0;
      }

      v164 = 15.0;
      if (byte_27ED78310)
      {
        v165 = 12.0;
      }

      else
      {
        v165 = 15.0;
      }

      v166 = v162 + v163 + v165;
      if (byte_27ED78310)
      {
        v164 = 12.0;
      }

      v167 = v166 + v164;
      if (v167 < 282.0)
      {
        v167 = 282.0;
      }

      v20->_preferredWidthPad = v167;
      v168 = 16.5;
      if (!byte_27ED78310)
      {
        v168 = 16.0;
      }

      v169 = floorf(v168);
      v170 = objc_msgSend_layer(v20, v153, v154, v155, v156);
      objc_msgSend_setCornerRadius_(v170, v171, v172, v173, v174, v169);

      v179 = objc_msgSend_layer(v20, v175, v176, v177, v178);
      objc_msgSend_setMasksToBounds_(v179, v180, 1, v181, v182);
    }

    v183 = objc_msgSend_systemBackgroundColor(*(v60 + 840), v56, v57, v58, v59);
    objc_msgSend_setBackgroundColor_(v20, v184, v183, v185, v186);
  }

  objc_msgSend_applyConstraints(v20, v16, v17, v18, v19);

  return v20;
}

- (CLSNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message
{
  v8 = MEMORY[0x277D755E8];
  messageCopy = message;
  imageCopy = image;
  titleCopy = title;
  v12 = [v8 alloc];
  v16 = objc_msgSend_initWithImage_(v12, v13, imageCopy, v14, v15);

  v21 = objc_msgSend_clearColor(MEMORY[0x277D75348], v17, v18, v19, v20);
  objc_msgSend_setBackgroundColor_(v16, v22, v21, v23, v24);

  objc_msgSend_setContentMode_(v16, v25, 1, v26, v27);
  objc_msgSend_setClipsToBounds_(v16, v28, 1, v29, v30);
  v32 = objc_msgSend_initWithTitle_imageView_message_(self, v31, titleCopy, v16, messageCopy);

  return v32;
}

- (CLSNotificationBannerView)initWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v12 = objc_msgSend_bundle(CLSNotificationBannerView, v8, v9, v10, v11);
  v15 = objc_msgSend_imageNamed_inBundle_(MEMORY[0x277D755B8], v13, @"BannerIcon", v12, v14);
  v17 = objc_msgSend_initWithTitle_image_message_(self, v16, titleCopy, v15, messageCopy);

  return v17;
}

- (void)applyConstraints
{
  v178[3] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_imageView(self, a2, v2, v3, v4);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v6, v7, 0, v8, v9);

  v14 = objc_msgSend_labelsStackView(self, v10, v11, v12, v13);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v14, v15, 0, v16, v17);

  v169 = MEMORY[0x277CCAAD0];
  v175 = objc_msgSend_imageView(self, v18, v19, v20, v21);
  v26 = objc_msgSend_topAnchor(v175, v22, v23, v24, v25);
  v34 = objc_msgSend_topAnchor(self, v27, v28, v29, v30);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v26, v31, v34, v32, v33, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v26, v31, v34, v32, v33, 11.0);
  }
  v167 = ;
  v178[0] = v167;
  v39 = objc_msgSend_imageView(self, v35, v36, v37, v38);
  v44 = objc_msgSend_leadingAnchor(v39, v40, v41, v42, v43);
  v52 = objc_msgSend_leadingAnchor(self, v45, v46, v47, v48);
  v171 = v34;
  v173 = v26;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v44, v49, v52, v50, v51, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v44, v49, v52, v50, v51, 11.0);
  }
  v53 = ;
  v178[1] = v53;
  v58 = objc_msgSend_imageView(self, v54, v55, v56, v57);
  v63 = objc_msgSend_centerYAnchor(v58, v59, v60, v61, v62);
  v68 = objc_msgSend_centerYAnchor(self, v64, v65, v66, v67);
  v72 = objc_msgSend_constraintEqualToAnchor_(v63, v69, v68, v70, v71);
  v178[2] = v72;
  v75 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v73, v178, 3, v74);
  objc_msgSend_activateConstraints_(v169, v76, v75, v77, v78);

  v166 = MEMORY[0x277CCAAD0];
  v176 = objc_msgSend_labelsStackView(self, v79, v80, v81, v82);
  v87 = objc_msgSend_leadingAnchor(v176, v83, v84, v85, v86);
  v172 = objc_msgSend_imageView(self, v88, v89, v90, v91);
  v99 = objc_msgSend_trailingAnchor(v172, v92, v93, v94, v95);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v87, v96, v99, v97, v98, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v87, v96, v99, v97, v98, 11.0);
  }
  v168 = ;
  v177[0] = v168;
  v165 = objc_msgSend_labelsStackView(self, v100, v101, v102, v103);
  v108 = objc_msgSend_topAnchor(v165, v104, v105, v106, v107);
  v116 = objc_msgSend_topAnchor(self, v109, v110, v111, v112);
  v174 = v87;
  v170 = v99;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v117 = 15.0;
  if (byte_27ED78310)
  {
    v117 = 12.0;
  }

  v164 = v108;
  v118 = objc_msgSend_constraintEqualToAnchor_constant_(v108, v113, v116, v114, v115, v117);
  v177[1] = v118;
  v123 = objc_msgSend_labelsStackView(self, v119, v120, v121, v122);
  v128 = objc_msgSend_bottomAnchor(v123, v124, v125, v126, v127);
  v136 = objc_msgSend_bottomAnchor(self, v129, v130, v131, v132);
  v163 = v116;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v128, v133, v136, v134, v135, -12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v128, v133, v136, v134, v135, -15.0);
  }
  v137 = ;
  v177[2] = v137;
  v142 = objc_msgSend_labelsStackView(self, v138, v139, v140, v141);
  v147 = objc_msgSend_trailingAnchor(v142, v143, v144, v145, v146);
  v155 = objc_msgSend_trailingAnchor(self, v148, v149, v150, v151);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v147, v152, v155, v153, v154, -12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v147, v152, v155, v153, v154, -15.0);
  }
  v156 = ;
  v177[3] = v156;
  v159 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v157, v177, 4, v158);
  objc_msgSend_activateConstraints_(v166, v160, v159, v161, v162);
}

- (void)showWithCompletionHandler:(id)handler
{
  objc_msgSend_setCompletionHandler_(self, a2, handler, v3, v4);

  MEMORY[0x2821F9670](CLSNotificationBannerWindow, sel_enqueBanner_, self, v6, v7);
}

- (void)hideBanner
{
  v8 = objc_msgSend_superview(self, a2, v2, v3, v4);
  objc_msgSend__hideBanner_quickly_(v8, v6, self, 1, v7);
}

- (void)callCompletionHandler
{
  v9 = objc_msgSend_completionHandler(self, a2, v2, v3, v4);
  if (v9)
  {
    v9[2]();
  }

  objc_msgSend_setCompletionHandler_(self, v6, 0, v7, v8);
}

@end