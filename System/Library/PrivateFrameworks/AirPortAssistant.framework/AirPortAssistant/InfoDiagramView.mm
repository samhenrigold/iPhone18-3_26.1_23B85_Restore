@interface InfoDiagramView
- (CGPoint)broadbandInPoint;
- (CGPoint)broadbandOutPoint;
- (CGPoint)internetPoint;
- (CGPoint)swapArcControlPoint;
- (CGPoint)swapArcControlPoint1;
- (CGPoint)swapArcControlPoint2;
- (CGPoint)swapArcLineEndPoint;
- (CGPoint)swapArcLineStartPoint;
- (CGPoint)wanConnectedBaseWANPoint;
- (InfoDiagramView)initWithFrame:(CGRect)frame wanConnectedBaseProductID:(unsigned int)d;
- (InfoDiagramView)initWithFrame:(CGRect)frame wanConnectedBaseProductID:(unsigned int)d replacementProductID:(unsigned int)iD;
- (void)commonInit;
- (void)dealloc;
- (void)setWANConnectedBaseLabelString:(id)string;
- (void)startAnimatingCablingLayer;
- (void)stopAnimatingCablingLayer;
@end

@implementation InfoDiagramView

- (InfoDiagramView)initWithFrame:(CGRect)frame wanConnectedBaseProductID:(unsigned int)d
{
  v11.receiver = self;
  v11.super_class = InfoDiagramView;
  v5 = [(InfoDiagramView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v5;
  if (v5)
  {
    v5->wanBaseProductID = d;
    v5->replacementProductID = 0;
    objc_msgSend_commonInit(v5, v6, v7, v8);
  }

  return v9;
}

- (InfoDiagramView)initWithFrame:(CGRect)frame wanConnectedBaseProductID:(unsigned int)d replacementProductID:(unsigned int)iD
{
  v13.receiver = self;
  v13.super_class = InfoDiagramView;
  v7 = [(InfoDiagramView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v11 = v7;
  if (v7)
  {
    v7->wanBaseProductID = d;
    v7->replacementProductID = iD;
    objc_msgSend_commonInit(v7, v8, v9, v10);
  }

  return v11;
}

- (void)commonInit
{
  v387[1] = *MEMORY[0x277D85DE8];
  replacementProductID = self->replacementProductID;
  self->sizeClass = sub_23EC13544(self, a2, v2, v3);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self, v5, 0, v6);
  v8 = objc_msgSend_imageForInformationalDiagramNamed_small_(ImageStore, v7, @"Cable-Modem", self->sizeClass == 1);
  v9 = [AUImageView alloc];
  v12 = objc_msgSend_initWithImage_(v9, v10, v8, v11);
  self->broadbandImageView = v12;
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v12, v13, 0, v14);
  objc_msgSend_addSubview_(self, v15, self->broadbandImageView, v16);
  v17 = MEMORY[0x277CCAAD0];
  broadbandImageView = self->broadbandImageView;
  objc_msgSend_size(v8, v19, v20, v21);
  v24 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v17, v22, broadbandImageView, 7, 0, 0, 0, 1.0, v23);
  objc_msgSend_addConstraint_(self, v25, v24, v26);
  v27 = MEMORY[0x277CCAAD0];
  v28 = self->broadbandImageView;
  objc_msgSend_size(v8, v29, v30, v31);
  v33 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v27, v32, v28, 8, 0, 0, 0, 1.0);
  objc_msgSend_addConstraint_(self, v34, v33, v35);
  self->broadbandLabel = objc_alloc_init(AULabel);
  v36 = sub_23EB6CD3C(@"BroadbandDeviceOrLAN", @"AirPortSettings");
  objc_msgSend_setText_(self->broadbandLabel, v37, v36, v38);
  objc_msgSend_frame(self->broadbandImageView, v39, v40, v41);
  objc_msgSend_setPreferredMaxLayoutWidth_(self->broadbandLabel, v42, v43, v44, v45);
  sub_23EB7A848(self->broadbandLabel, 13.0, v46, v47, v48);
  objc_msgSend_addSubview_(self, v49, self->broadbandLabel, v50);
  v51 = MEMORY[0x277CCAAD0];
  v52 = _NSDictionaryOfVariableBindings(&cfstr_Broadbandlabel.isa, self->broadbandLabel, self->broadbandImageView, 0);
  v54 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v51, v53, @"V:|-10-[broadbandLabel]-4-[broadbandImageView]", 512, 0, v52);
  objc_msgSend_addConstraints_(self, v55, v54, v56);
  self->internetLabel = objc_alloc_init(AULabel);
  v57 = sub_23EB6CD3C(@"ToInternet", @"AirPortSettings");
  objc_msgSend_setText_(self->internetLabel, v58, v57, v59);
  sub_23EB7A848(self->internetLabel, 13.0, v60, v61, v62);
  objc_msgSend_addSubview_(self, v63, self->internetLabel, v64);
  v66 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v65, self->internetLabel, 1, 0, self->broadbandLabel, 1, 1.0, 0.0);
  objc_msgSend_addConstraint_(self, v67, v66, v68);
  v69 = MEMORY[0x277CCAAD0];
  v70 = _NSDictionaryOfVariableBindings(&cfstr_Broadbandimage.isa, self->broadbandImageView, self->internetLabel, 0);
  v72 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v69, v71, @"V:[broadbandImageView]-30-[internetLabel]-(>=10)-|", 0, 0, v70);
  objc_msgSend_addConstraints_(self, v73, v72, v74);
  objc_msgSend_sizeToFit(self->internetLabel, v75, v76, v77);
  v79 = objc_msgSend_imageForInformationalDiagram_subProductID_deviceKind_audioImage_small_(ImageStore, v78, self->wanBaseProductID, 0, self->wanBaseProductID != 0, 0, self->sizeClass == 1);
  v80 = [AUImageView alloc];
  v83 = objc_msgSend_initWithImage_(v80, v81, v79, v82);
  p_wanConnectedBaseImageView = &self->wanConnectedBaseImageView;
  self->wanConnectedBaseImageView = v83;
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v83, v85, 0, v86);
  objc_msgSend_addSubview_(self, v87, self->wanConnectedBaseImageView, v88);
  v89 = MEMORY[0x277CCAAD0];
  wanConnectedBaseImageView = self->wanConnectedBaseImageView;
  objc_msgSend_size(v79, v91, v92, v93);
  v96 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v89, v94, wanConnectedBaseImageView, 7, 0, 0, 0, 1.0, v95);
  objc_msgSend_addConstraint_(self, v97, v96, v98);
  v99 = MEMORY[0x277CCAAD0];
  v100 = self->wanConnectedBaseImageView;
  objc_msgSend_size(v79, v101, v102, v103);
  v105 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v99, v104, v100, 8, 0, 0, 0, 1.0);
  objc_msgSend_addConstraint_(self, v106, v105, v107);
  self->wanConnectedBaseLabel = objc_alloc_init(AULabel);
  wanBaseProductID = self->wanBaseProductID;
  if (wanBaseProductID)
  {
    v112 = sub_23EB6CEE0(wanBaseProductID, 1, 0);
    objc_msgSend_setText_(self->wanConnectedBaseLabel, v113, v112, v114);
  }

  objc_msgSend_frame(*p_wanConnectedBaseImageView, v108, v109, v110);
  objc_msgSend_setPreferredMaxLayoutWidth_(self->wanConnectedBaseLabel, v115, v116, v117, v118);
  sub_23EB7A848(self->wanConnectedBaseLabel, 13.0, v119, v120, v121);
  objc_msgSend_addSubview_(self, v122, self->wanConnectedBaseLabel, v123);
  objc_msgSend_sizeToFit(self->wanConnectedBaseLabel, v124, v125, v126);
  sizeClass = self->sizeClass;
  LODWORD(v131) = 1109393408;
  if (sizeClass == 3)
  {
    *&v131 = 35.0;
  }

  if (sizeClass == 2)
  {
    *&v131 = 60.0;
  }

  v132 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v127, v128, v129, v131);
  v133 = MEMORY[0x277CCAAD0];
  v386 = @"horizSep";
  v387[0] = v132;
  v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v134, v387, &v386, 1);
  v136 = _NSDictionaryOfVariableBindings(&cfstr_Broadbandimage_0.isa, self->broadbandImageView, *p_wanConnectedBaseImageView, 0);
  v138 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v133, v137, @"H:[broadbandImageView]-(>=horizSep)-[wanConnectedBaseImageView]", 65552, v135, v136);
  objc_msgSend_addConstraints_(self, v139, v138, v140);
  if (replacementProductID)
  {
    v141 = &unk_285156650;
  }

  else
  {
    v141 = &unk_285156678;
  }

  v142 = MEMORY[0x277CCAAD0];
  v143 = _NSDictionaryOfVariableBindings(&cfstr_Broadbandimage_1.isa, self->broadbandImageView, 0);
  v145 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v142, v144, @"H:|-(10)-[broadbandImageView]", 0x10000, 0, v143);
  objc_msgSend_addConstraints_(self, v146, v145, v147);
  v148 = MEMORY[0x277CCAAD0];
  v149 = _NSDictionaryOfVariableBindings(&cfstr_Wanconnectedba.isa, *p_wanConnectedBaseImageView, 0);
  v151 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v148, v150, @"H:[wanConnectedBaseImageView]-(>=rightMargin)-|", 0x10000, v141, v149);
  objc_msgSend_addConstraints_(self, v152, v151, v153);
  v154 = MEMORY[0x277CCAAD0];
  v155 = _NSDictionaryOfVariableBindings(&cfstr_Wanconnectedba_0.isa, self->wanConnectedBaseLabel, *p_wanConnectedBaseImageView, 0);
  v157 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v154, v156, @"V:|-(10)-[wanConnectedBaseLabel]-4-[wanConnectedBaseImageView]-(>=10)-|", 0, 0, v155);
  objc_msgSend_addConstraints_(self, v158, v157, v159);
  v160 = MEMORY[0x277CCAAD0];
  v161 = _NSDictionaryOfVariableBindings(&cfstr_Wanconnectedba_1.isa, self->wanConnectedBaseLabel, 0);
  v163 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v160, v162, @"H:[wanConnectedBaseLabel]-(>=rightMargin)-|", 0, v141, v161);
  objc_msgSend_addConstraints_(self, v164, v163, v165);
  objc_msgSend_informationDiagramBaseImageCenterOffset_small_(ImageStore, v166, self->wanBaseProductID, self->sizeClass == 1);
  v168 = v167 + -0.5;
  objc_msgSend_frame(*p_wanConnectedBaseImageView, v169, v170, v171);
  v173 = v168 * v172;
  v175 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v174, self->wanConnectedBaseLabel, 9, 0, *p_wanConnectedBaseImageView, 9, 1.0, v173);
  objc_msgSend_addConstraint_(self, v176, v175, v177);
  v179 = objc_msgSend_insetImageForInformationalDiagram_deviceKind_audioImage_small_(ImageStore, v178, self->wanBaseProductID, 1, 0, self->sizeClass == 1);
  v180 = [AUImageView alloc];
  v183 = objc_msgSend_initWithImage_(v180, v181, v179, v182);
  self->insetImageView = v183;
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v183, v184, 0, v185);
  objc_msgSend_addSubview_(self, v186, self->insetImageView, v187);
  v188 = MEMORY[0x277CCAAD0];
  v384 = @"xOffset";
  v189 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(self->insetImageView, v190, v191, v192);
  v197 = 85.0;
  if (self->sizeClass == 1)
  {
    v197 = 64.0;
  }

  v198 = v196 + v197;
  *&v198 = v198;
  *&v198 = -*&v198;
  v385 = objc_msgSend_numberWithFloat_(v189, v193, v194, v195, v198);
  v200 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v199, &v385, &v384, 1);
  v201 = _NSDictionaryOfVariableBindings(&cfstr_Insetimageview.isa, self->insetImageView, *p_wanConnectedBaseImageView, 0);
  v203 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v188, v202, @"H:[wanConnectedBaseImageView]-(xOffset)-[insetImageView]", 0x10000, v200, v201);
  objc_msgSend_addConstraints_(self, v204, v203, v205);
  v206 = MEMORY[0x277CCAAD0];
  v382 = @"yOffset";
  v207 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(self->insetImageView, v208, v209, v210);
  v215 = 8.0;
  if (self->sizeClass == 1)
  {
    v215 = 0.0;
  }

  v216 = v214 + v215;
  *&v216 = v216;
  *&v216 = -*&v216;
  v383 = objc_msgSend_numberWithFloat_(v207, v211, v212, v213, v216);
  v218 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v217, &v383, &v382, 1);
  v219 = _NSDictionaryOfVariableBindings(&cfstr_Insetimageview.isa, self->insetImageView, *p_wanConnectedBaseImageView, 0);
  v221 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v206, v220, @"V:[wanConnectedBaseImageView]-(yOffset)-[insetImageView]", 0x10000, v218, v219);
  objc_msgSend_addConstraints_(self, v222, v221, v223);
  if (replacementProductID)
  {
    v225 = objc_msgSend_imageForInformationalDiagram_subProductID_deviceKind_audioImage_small_(ImageStore, v224, self->replacementProductID, 0, 1, 0, self->sizeClass == 1);
    v226 = [AUImageView alloc];
    v229 = objc_msgSend_initWithImage_(v226, v227, v225, v228);
    self->replacementBaseImageView = v229;
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v229, v230, 0, v231);
    objc_msgSend_addSubview_(self, v232, self->replacementBaseImageView, v233);
    v234 = MEMORY[0x277CCAAD0];
    replacementBaseImageView = self->replacementBaseImageView;
    objc_msgSend_size(v225, v236, v237, v238);
    v241 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v234, v239, replacementBaseImageView, 7, 0, 0, 0, 1.0, v240);
    objc_msgSend_addConstraint_(self, v242, v241, v243);
    v244 = MEMORY[0x277CCAAD0];
    v245 = self->replacementBaseImageView;
    objc_msgSend_size(v225, v246, v247, v248);
    v250 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v244, v249, v245, 8, 0, 0, 0, 1.0);
    objc_msgSend_addConstraint_(self, v251, v250, v252);
    v253 = MEMORY[0x277CCAAD0];
    v254 = _NSDictionaryOfVariableBindings(&cfstr_Wanconnectedba_2.isa, *p_wanConnectedBaseImageView, self->replacementBaseImageView, 0);
    v256 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v253, v255, @"V:[wanConnectedBaseImageView]-60-[replacementBaseImageView]", 0, 0, v254);
    objc_msgSend_addConstraints_(self, v257, v256, v258);
    objc_msgSend_informationDiagramBaseImageCenterOffset_small_(ImageStore, v259, self->replacementProductID, self->sizeClass == 1);
    v261 = v260 + -0.5;
    objc_msgSend_frame(self->replacementBaseImageView, v262, v263, v264);
    v266 = v261 * v265;
    v268 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v267, self->replacementBaseImageView, 9, 0, *p_wanConnectedBaseImageView, 9, 1.0, v173 - v266);
    objc_msgSend_addConstraint_(self, v269, v268, v270);
    p_replacementBaseLabel = &self->replacementBaseLabel;
    self->replacementBaseLabel = objc_alloc_init(AULabel);
    v272 = sub_23EB6CEE0(self->replacementProductID, 1, 0);
    objc_msgSend_setText_(self->replacementBaseLabel, v273, v272, v274);
    objc_msgSend_frame(self->replacementBaseImageView, v275, v276, v277);
    objc_msgSend_setPreferredMaxLayoutWidth_(self->replacementBaseLabel, v278, v279, v280, v281);
    sub_23EB7A848(self->replacementBaseLabel, 13.0, v282, v283, v284);
    objc_msgSend_addSubview_(self, v285, self->replacementBaseLabel, v286);
    objc_msgSend_sizeToFit(self->replacementBaseLabel, v287, v288, v289);
    v290 = @"V:[replacementBaseImageView][replacementBaseLabel]-(>=10)-|";
    p_wanConnectedBaseImageView = &self->replacementBaseImageView;
    v291 = @"replacementBaseImageView, replacementBaseLabel";
    v293 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v292, self->replacementBaseLabel, 9, 0, self->replacementBaseImageView, 9, 1.0, v266);
  }

  else
  {
    if (sub_23EB4BDAC(self->wanBaseProductID) >= 2)
    {
      v296 = @"EthernetWANPort";
    }

    else
    {
      v296 = @"EthernetPort";
    }

    v297 = sub_23EB6CD3C(v296, @"AirPortSettings");
    v298 = objc_alloc_init(AULabel);
    p_replacementBaseLabel = &self->portLabel;
    self->portLabel = v298;
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v298, v299, 0, v300);
    objc_msgSend_bounds(self->broadbandImageView, v301, v302, v303);
    objc_msgSend_setPreferredMaxLayoutWidth_(self->portLabel, v304, v305, v306, v307);
    objc_msgSend_setNumberOfLines_(self->portLabel, v308, 0, v309);
    objc_msgSend_setText_(self->portLabel, v310, v297, v311);
    sub_23EB7A848(self->portLabel, 13.0, v312, v313, v314);
    objc_msgSend_addSubview_(self, v315, self->portLabel, v316);
    v290 = @"V:[wanConnectedBaseImageView]-30-[portLabel]-(>=10)-|";
    v291 = @"wanConnectedBaseImageView, portLabel";
    v293 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v317, self->portLabel, 9, 0, *p_wanConnectedBaseImageView, 9, 1.0, v173);
  }

  objc_msgSend_addConstraint_(self, v294, v293, v295);
  v318 = MEMORY[0x277CCAAD0];
  v319 = _NSDictionaryOfVariableBindings(&v291->isa, *p_wanConnectedBaseImageView, *p_replacementBaseLabel, 0);
  v321 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v318, v320, v290, 0, 0, v319);
  objc_msgSend_addConstraints_(self, v322, v321, v323);
  v324 = objc_alloc_init(MEMORY[0x277D75D18]);
  self->fixedCablingFrameView = v324;
  objc_msgSend_setAutoresizingMask_(v324, v325, 2, v326);
  objc_msgSend_addSubview_(self, v327, self->fixedCablingFrameView, v328);
  v329 = [InfoDiagramCablingLayer alloc];
  v333 = objc_msgSend_initNoWANLinkFirstFrame(v329, v330, v331, v332);
  objc_msgSend_setDiagramAnchorPointDelegate_(v333, v334, self, v335);
  objc_msgSend_setIsCompactWidth_(v333, v336, self->sizeClass == 1, v337);
  v341 = objc_msgSend_layer(self->fixedCablingFrameView, v338, v339, v340);
  objc_msgSend_addSublayer_(v341, v342, v333, v343);
  objc_msgSend_sizeToFit(self->fixedCablingFrameView, v344, v345, v346);
  v347 = objc_alloc_init(MEMORY[0x277D75D18]);
  self->animatingCablingFrameView = v347;
  objc_msgSend_setAutoresizingMask_(v347, v348, 2, v349);
  objc_msgSend_addSubview_(self, v350, self->animatingCablingFrameView, v351);
  v352 = [InfoDiagramCablingLayer alloc];
  v356 = objc_msgSend_initNoWANLinkLastFrame(v352, v353, v354, v355);
  objc_msgSend_setDiagramAnchorPointDelegate_(v356, v357, self, v358);
  objc_msgSend_setIsCompactWidth_(v356, v359, self->sizeClass == 1, v360);
  objc_msgSend_setSwapCabling_(v356, v361, self->replacementProductID != 0, v362);
  v366 = objc_msgSend_layer(self->animatingCablingFrameView, v363, v364, v365);
  objc_msgSend_addSublayer_(v366, v367, v356, v368);
  objc_msgSend_sizeToFit(self->animatingCablingFrameView, v369, v370, v371);
  objc_msgSend_startAnimatingCablingLayer(self, v372, v373, v374);
  LODWORD(v375) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(self, v376, 1, v377, v375);
  LODWORD(v378) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(self, v379, 0, v380, v378);
}

- (void)dealloc
{
  v5 = objc_msgSend_layer(self->animatingCablingFrameView, a2, v2, v3);
  objc_msgSend_removeAllAnimations(v5, v6, v7, v8);
  v9.receiver = self;
  v9.super_class = InfoDiagramView;
  [(InfoDiagramView *)&v9 dealloc];
}

- (void)setWANConnectedBaseLabelString:(id)string
{
  objc_msgSend_setText_(self->wanConnectedBaseLabel, a2, string, v3);
  objc_msgSend_sizeToFit(self->wanConnectedBaseLabel, v5, v6, v7);
  wanConnectedBaseLabel = self->wanConnectedBaseLabel;

  objc_msgSend_setNeedsLayout(wanConnectedBaseLabel, v8, v9, v10);
}

- (void)startAnimatingCablingLayer
{
  v5 = objc_msgSend_layer(self->animatingCablingFrameView, a2, v2, v3);
  if (!objc_msgSend_animationForKey_(v5, v6, @"fadeAnimation", v7))
  {
    v11 = objc_msgSend_layer(self->animatingCablingFrameView, v8, v9, v10);
    objc_msgSend_setOpacity_(v11, v12, v13, v14, 0.0);
    v17 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v15, @"opacity", v16);
    LODWORD(v18) = 2139095040;
    objc_msgSend_setRepeatCount_(v17, v19, v20, v21, v18);
    objc_msgSend_setAutoreverses_(v17, v22, 1, v23);
    objc_msgSend_setDuration_(v17, v24, v25, v26, 0.5);
    LODWORD(v27) = 1.0;
    v31 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v27);
    objc_msgSend_setToValue_(v17, v32, v31, v33);
    v37 = objc_msgSend_layer(self->animatingCablingFrameView, v34, v35, v36);

    MEMORY[0x2821F9670](v37, sel_addAnimation_forKey_, v17, @"fadeAnimation");
  }
}

- (void)stopAnimatingCablingLayer
{
  v4 = objc_msgSend_layer(self->animatingCablingFrameView, a2, v2, v3);

  MEMORY[0x2821F9670](v4, sel_removeAnimationForKey_, @"fadeAnimation", v5);
}

- (CGPoint)internetPoint
{
  objc_msgSend_frame(self->broadbandImageView, a2, v2, v3);
  x = v8.origin.x;
  v5 = CGRectGetMaxY(v8) + 20.0;
  v6 = x;
  result.y = v5;
  result.x = v6;
  return result;
}

- (CGPoint)broadbandInPoint
{
  objc_msgSend_frame(self->broadbandImageView, a2, v2, v3);
  v9 = 65.5;
  if (self->sizeClass == 1)
  {
    v9 = 36.0;
  }

  v10 = v5 + v9;
  MaxY = CGRectGetMaxY(*&v5);
  v12 = 14.0;
  if (self->sizeClass == 1)
  {
    v12 = 10.0;
  }

  v13 = MaxY - v12;
  v14 = v10;
  result.y = v13;
  result.x = v14;
  return result;
}

- (CGPoint)broadbandOutPoint
{
  objc_msgSend_frame(self->broadbandImageView, a2, v2, v3);
  v5 = v11.origin.x + dbl_23EC21CF0[self->sizeClass == 1];
  MaxY = CGRectGetMaxY(v11);
  v7 = 14.0;
  if (self->sizeClass == 1)
  {
    v7 = 10.0;
  }

  v8 = MaxY - v7;
  v9 = v5;
  result.y = v8;
  result.x = v9;
  return result;
}

- (CGPoint)wanConnectedBaseWANPoint
{
  objc_msgSend_frame(self->wanConnectedBaseImageView, a2, v2, v3);
  v5 = v11.origin.x + dbl_23EC21D00[self->sizeClass == 1];
  MaxY = CGRectGetMaxY(v11);
  v7 = 14.0;
  if (self->sizeClass == 1)
  {
    v7 = 11.0;
  }

  v8 = MaxY - v7;
  v9 = v5;
  result.y = v8;
  result.x = v9;
  return result;
}

- (CGPoint)swapArcLineStartPoint
{
  objc_msgSend_frame(self->replacementBaseImageView, a2, v2, v3);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MaxX = CGRectGetMaxX(v21);
  objc_msgSend_informationDiagramBaseImageRightEdgeInset_small_(ImageStore, v10, self->replacementProductID, self->sizeClass == 1);
  v12 = MaxX - v11 + 10.0;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMidY(v22);

  v17 = sub_23EB7AD5C(v12, v13, v14, v15, v16);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)swapArcLineEndPoint
{
  objc_msgSend_frame(self->wanConnectedBaseImageView, a2, v2, v3);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MaxX = CGRectGetMaxX(v21);
  objc_msgSend_informationDiagramBaseImageRightEdgeInset_small_(ImageStore, v10, self->wanBaseProductID, self->sizeClass == 1);
  v12 = MaxX - v11 + 13.0;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMidY(v22);

  v17 = sub_23EB7AD5C(v12, v13, v14, v15, v16);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)swapArcControlPoint
{
  objc_msgSend_swapArcLineStartPoint(self, a2, v2, v3);
  v6 = v5;
  v10 = objc_msgSend_swapArcLineEndPoint(self, v7, v8, v9);
  if (v6 >= v14)
  {
    v14 = v6;
  }

  v15 = 50.0;
  if (self->sizeClass == 2)
  {
    v15 = 60.0;
  }

  v16 = v14 + v15;

  v17 = sub_23EB7AD5C(v16, v10, v11, v12, v13);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)swapArcControlPoint1
{
  objc_msgSend_swapArcLineStartPoint(self, a2, v2, v3);
  v6 = v5;
  v10 = objc_msgSend_swapArcLineEndPoint(self, v7, v8, v9);
  if (v6 >= v14)
  {
    v14 = v6;
  }

  v15 = 40.0;
  if (self->sizeClass == 2)
  {
    v15 = 50.0;
  }

  v16 = v14 + v15;

  v17 = sub_23EB7AD5C(v16, v10, v11, v12, v13);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)swapArcControlPoint2
{
  objc_msgSend_swapArcLineStartPoint(self, a2, v2, v3);
  v6 = v5;
  v10 = objc_msgSend_swapArcLineEndPoint(self, v7, v8, v9);
  if (v6 >= v14)
  {
    v14 = v6;
  }

  v15 = 40.0;
  if (self->sizeClass == 2)
  {
    v15 = 50.0;
  }

  v16 = v14 + v15;

  v17 = sub_23EB7AD5C(v16, v10, v11, v12, v13);
  result.y = v18;
  result.x = v17;
  return result;
}

@end