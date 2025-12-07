@interface NTKCParmesanPreviewViewController
- (CGSize)cutoutSize;
- (NTKCParmesanPreviewViewController)initWithPreviewProvider:(id)provider;
- (NTKCParmesanPreviewViewControllerDelegate)delegate;
- (double)_heightForTimeSelectionItem;
- (double)_heightForTimeSelectionView;
- (id)_symbolForUsingDepthEffect:(BOOL)effect;
- (void)_cancelPressed;
- (void)_changePhotoPressed;
- (void)_didSelectPhotoForChangePhoto:(id)photo;
- (void)_donePressed;
- (void)_hideLoadingLabel;
- (void)_hideLoadingSpinner;
- (void)_loadInitialCropPreview;
- (void)_revertPressed;
- (void)_setCropValidationState:(unint64_t)state animated:(BOOL)animated;
- (void)_setPreview:(id)preview animated:(BOOL)animated;
- (void)_setupCenteredViewWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto;
- (void)_showLoadingLabel;
- (void)_showLoadingSpinner;
- (void)_toggleDepthEffectPressed;
- (void)_updateDoneButtonEnabledState;
- (void)_updateNavigationBarItems;
- (void)_updatePreviewForDepthEffect:(BOOL)effect;
- (void)_updateToolbarItems;
- (void)_validatePreview:(id)preview withCrop:(CGRect)crop animated:(BOOL)animated;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidSettleFromInteracting:(id)interacting;
- (void)scrollViewWillBeginInteraction:(id)interaction;
- (void)setDisplayDepthEffect:(BOOL)effect;
- (void)setInitialPreviewState:(unint64_t)state;
- (void)timeLayoutSelectionController:(id)controller didChangeSelection:(id)selection;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKCParmesanPreviewViewController

- (NTKCParmesanPreviewViewController)initWithPreviewProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = NTKCParmesanPreviewViewController;
  v6 = [(NTKCParmesanPreviewViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_navigationItem(v6, v7, v8);
    objc_msgSend_setHidesBackButton_(v10, v11, 1);

    v9->_initialPreviewState = 0;
    objc_storeStrong(&v9->_previewProvider, provider);
    v9->_cropValidationState = 0;
  }

  return v9;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = objc_msgSend__KVOScrollViewKeys(NTKCParmesanPreviewViewController, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_removeObserver_forKeyPath_context_(self->_scrollView, v7, self, *(*(&v12 + 1) + 8 * v10++), qword_27E1DF950);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v11 dealloc];
}

- (void)viewDidLoad
{
  v203 = *MEMORY[0x277D85DE8];
  v201.receiver = self;
  v201.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v201 viewDidLoad];
  v5 = objc_msgSend_navigationController(self, v3, v4);
  objc_msgSend_setNavigationBarHidden_(v5, v6, 1);

  v9 = objc_msgSend_navigationController(self, v7, v8);
  objc_msgSend_setToolbarHidden_(v9, v10, 0);

  v13 = objc_msgSend_systemBlackColor(MEMORY[0x277D75348], v11, v12);
  v16 = objc_msgSend_view(self, v14, v15);
  objc_msgSend_setBackgroundColor_(v16, v17, v13);

  v18 = objc_opt_new();
  infoContainer = self->_infoContainer;
  self->_infoContainer = v18;

  v20 = objc_opt_new();
  contentContainer = self->_contentContainer;
  self->_contentContainer = v20;

  v24 = objc_msgSend_view(self, v22, v23);
  objc_msgSend_addSubview_(v24, v25, self->_contentContainer);

  v28 = objc_msgSend_view(self, v26, v27);
  objc_msgSend_addSubview_(v28, v29, self->_infoContainer);

  objc_msgSend_setUserInteractionEnabled_(self->_infoContainer, v30, 0);
  v33 = objc_msgSend_view(self, v31, v32);
  objc_msgSend_bounds(v33, v34, v35);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = objc_alloc(MEMORY[0x277D2BF70]);
  v47 = objc_msgSend_initWithFrame_(v44, v45, v46, v37, v39, v41, v43);
  scrollView = self->_scrollView;
  self->_scrollView = v47;

  objc_msgSend_setNtk_delegate_(self->_scrollView, v49, self);
  objc_msgSend_setMinimumZoomScale_(self->_scrollView, v50, v51, 0.1);
  objc_msgSend_setClipsToBounds_(self->_scrollView, v52, 0);
  objc_msgSend_setIsAccessibilityElement_(self->_scrollView, v53, 1);
  objc_msgSend_setAccessibilityTraits_(self->_scrollView, v54, *MEMORY[0x277D765B8]);
  v56 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v55, @"PARMESAN_AX_CROP_AREA_LABEL", @"Accessibility label for crop area when editing layout.");
  objc_msgSend_setAccessibilityLabel_(self->_scrollView, v57, v56);

  v59 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v58, @"PARMESAN_AX_CROP_AREA_HINT", @"Accessibility hint for crop area when editing layout.");
  objc_msgSend_setAccessibilityHint_(self->_scrollView, v60, v59);

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v63 = objc_msgSend__KVOScrollViewKeys(NTKCParmesanPreviewViewController, v61, v62, 0);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v197, v202, 16);
  if (v65)
  {
    v67 = v65;
    v68 = *v198;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v198 != v68)
        {
          objc_enumerationMutation(v63);
        }

        objc_msgSend_addObserver_forKeyPath_options_context_(self->_scrollView, v66, self, *(*(&v197 + 1) + 8 * i), 0, qword_27E1DF950);
      }

      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v197, v202, 16);
    }

    while (v67);
  }

  v70 = [_NTKCParmesanOverlayScrollView alloc];
  v73 = objc_msgSend_initWithFrame_(v70, v71, v72, v37, v39, v41, v43);
  overlayScrollView = self->_overlayScrollView;
  self->_overlayScrollView = v73;

  v77 = objc_msgSend_clearColor(MEMORY[0x277D75348], v75, v76);
  objc_msgSend_setBackgroundColor_(self->_overlayScrollView, v78, v77);

  objc_msgSend_setUserInteractionEnabled_(self->_overlayScrollView, v79, 0);
  if (objc_msgSend_Parmesan_canCrop(self->_previewProvider, v80, v81))
  {
    objc_msgSend_Parmesan_minimumNormalizedCropSize(self->_previewProvider, v82, v83);
    v87 = 1.0 / v86;
    v89 = 1.0 / v88;
    if (v87 >= v89)
    {
      v87 = v89;
    }

    objc_msgSend_setMaximumZoomRatio_(self->_scrollView, v84, v85, v87);
    objc_msgSend_maximumZoomRatio(self->_scrollView, v90, v91);
    objc_msgSend_setMaximumZoomRatio_(self->_overlayScrollView, v92, v93);
  }

  else
  {
    objc_msgSend_setMaximumZoomRatio_(self->_scrollView, v82, v83, 1.0);
    objc_msgSend_maximumZoomRatio(self->_scrollView, v95, v96);
    objc_msgSend_setMaximumZoomRatio_(self->_overlayScrollView, v97, v98);
    objc_msgSend_setScrollEnabled_(self->_scrollView, v99, 0);
    v102 = objc_msgSend_leadingButton(self->_navigationBar, v100, v101);
    objc_msgSend_setEnabled_(v102, v103, 0);
  }

  objc_msgSend_addSubview_(self->_contentContainer, v94, self->_scrollView);
  objc_msgSend__loadInitialCropPreview(self, v104, v105);
  v106 = objc_opt_new();
  timeContainer = self->_timeContainer;
  self->_timeContainer = v106;

  objc_msgSend_setUserInteractionEnabled_(self->_timeContainer, v108, 0);
  objc_msgSend_setAccessibilityElementsHidden_(self->_timeContainer, v109, 1);
  objc_msgSend_addSubview_(self->_contentContainer, v110, self->_timeContainer);
  v111 = [NTKParmesanTimeLayout alloc];
  v113 = objc_msgSend_initWithAlignment_scale_(v111, v112, 1, 3);
  v114 = [NTKParmesanTimeView alloc];
  v115 = *MEMORY[0x277CBF3A0];
  v116 = *(MEMORY[0x277CBF3A0] + 8);
  v117 = *(MEMORY[0x277CBF3A0] + 16);
  v118 = *(MEMORY[0x277CBF3A0] + 24);
  v120 = objc_msgSend_initWithFrame_layout_(v114, v119, v113, *MEMORY[0x277CBF3A0], v116, v117, v118);
  time = self->_time;
  self->_time = v120;

  v122 = self->_time;
  v125 = objc_msgSend_faceDate(MEMORY[0x277D2BFD8], v123, v124);
  objc_msgSend_setOverrideDate_duration_(v122, v126, v125, 0.0);

  objc_msgSend_setHidden_(self->_time, v127, 1);
  objc_msgSend_addSubview_(self->_timeContainer, v128, self->_time);
  objc_msgSend_insertSubview_aboveSubview_(self->_contentContainer, v129, self->_overlayScrollView, self->_timeContainer);
  v132 = objc_msgSend_layer(MEMORY[0x277CD9F90], v130, v131);
  mask = self->_mask;
  self->_mask = v132;

  objc_msgSend_setFillRule_(self->_mask, v134, *MEMORY[0x277CDA248]);
  v137 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v135, v136, 0.0, 0.6);
  v138 = v137;
  v141 = objc_msgSend_CGColor(v138, v139, v140);
  objc_msgSend_setFillColor_(self->_mask, v142, v141);

  v145 = objc_msgSend_layer(self->_contentContainer, v143, v144);
  objc_msgSend_addSublayer_(v145, v146, self->_mask);

  v147 = objc_opt_new();
  placementGuideContainer = self->_placementGuideContainer;
  self->_placementGuideContainer = v147;

  objc_msgSend_setAlpha_(self->_placementGuideContainer, v149, v150, 0.0);
  objc_msgSend_setUserInteractionEnabled_(self->_placementGuideContainer, v151, 0);
  objc_msgSend_addSubview_(self->_infoContainer, v152, self->_placementGuideContainer);
  v153 = objc_opt_new();
  placementGuideLabel = self->_placementGuideLabel;
  self->_placementGuideLabel = v153;

  v157 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v155, v156, 16.0, *MEMORY[0x277D74418]);
  objc_msgSend_setFont_(self->_placementGuideLabel, v158, v157);

  objc_msgSend_setTextAlignment_(self->_placementGuideLabel, v159, 1);
  v161 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v160, @"MANUAL_LAYOUT_PLACEMENT_GUIDE_INVALID", &stru_284EC2B20);
  objc_msgSend_setText_(self->_placementGuideLabel, v162, v161);

  v165 = objc_msgSend_systemRedColor(MEMORY[0x277D75348], v163, v164);
  objc_msgSend_setTextColor_(self->_placementGuideLabel, v166, v165);

  objc_msgSend_addSubview_(self->_placementGuideContainer, v167, self->_placementGuideLabel);
  v168 = [NTKParmesanEditorNavigationBar alloc];
  v171 = objc_msgSend_initWithFrame_(v168, v169, v170, v115, v116, v117, v118);
  navigationBar = self->_navigationBar;
  self->_navigationBar = v171;

  v175 = objc_msgSend_view(self, v173, v174);
  objc_msgSend_addSubview_(v175, v176, self->_navigationBar);

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_navigationBar, v177, 0);
  objc_msgSend_constrainToSuperviewWithEdges_insets_useLayoutMargins_(self->_navigationBar, v178, 11, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
  v180 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v179, @"MANUAL_LAYOUT_TITLE", @"Title for manual layout page.");
  v183 = objc_msgSend_titleLabel(self->_navigationBar, v181, v182);
  objc_msgSend_setText_(v183, v184, v180);

  v186 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v185, @"MANUAL_LAYOUT_INSTRUCTIONS", @"Instructive text shown under the title during manual layout.");
  v189 = objc_msgSend_descriptionLabel(self->_navigationBar, v187, v188);
  objc_msgSend_setText_(v189, v190, v186);

  objc_msgSend__updateNavigationBarItems(self, v191, v192);
  objc_msgSend__updateDoneButtonEnabledState(self, v193, v194);
  objc_msgSend__updateToolbarItems(self, v195, v196);
}

- (void)_updateNavigationBarItems
{
  isRevertable = objc_msgSend_isRevertable(self->_currentPreview, a2, v2);
  v7 = objc_msgSend_didInteractWithCropView(self, v5, v6);
  v10 = objc_msgSend_trailingButton(self->_navigationBar, v8, v9);
  objc_msgSend_removeTarget_action_forControlEvents_(v10, v11, 0, 0, 64);

  v15 = objc_msgSend_trailingButton(self->_navigationBar, v12, v13);
  if ((v7 & 1) != 0 || !isRevertable)
  {
    v26 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v14, @"MANUAL_LAYOUT_SAVE_BUTTON", @"Title for saving the photo layout.");
    objc_msgSend_setTitle_forState_(v15, v27, v26, 0);

    v20 = objc_msgSend_trailingButton(self->_navigationBar, v28, v29);
    v23 = objc_msgSend_tintColor(MEMORY[0x277D75348], v30, v31);
    objc_msgSend_setTintColor_(v20, v32, v23);
    v25 = &selRef__donePressed;
  }

  else
  {
    v16 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v14, @"MANUAL_LAYOUT_REVERT_BUTTON", @"Title for reverting back to original layout.");
    objc_msgSend_setTitle_forState_(v15, v17, v16, 0);

    v20 = objc_msgSend_trailingButton(self->_navigationBar, v18, v19);
    v23 = objc_msgSend_systemRedColor(MEMORY[0x277D75348], v21, v22);
    objc_msgSend_setTintColor_(v20, v24, v23);
    v25 = &selRef__revertPressed;
  }

  v35 = objc_msgSend_trailingButton(self->_navigationBar, v33, v34);
  objc_msgSend_addTarget_action_forControlEvents_(v35, v36, self, *v25, 64);

  v39 = objc_msgSend_leadingButton(self->_navigationBar, v37, v38);
  v41 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v40, @"MANUAL_LAYOUT_CANCEL_BUTTON", @"Button for discarding layout changes.");
  objc_msgSend_setTitle_forState_(v39, v42, v41, 0);

  v45 = objc_msgSend_leadingButton(self->_navigationBar, v43, v44);
  v48 = objc_msgSend_allTargets(v45, v46, v47);
  v50 = objc_msgSend_containsObject_(v48, v49, self);

  if ((v50 & 1) == 0)
  {
    v53 = objc_msgSend_leadingButton(self->_navigationBar, v51, v52);
    objc_msgSend_addTarget_action_forControlEvents_(v53, v54, self, sel__cancelPressed, 64);
  }

  v59 = objc_msgSend_leadingButton(self->_navigationBar, v51, v52);
  canCrop = objc_msgSend_Parmesan_canCrop(self->_previewProvider, v55, v56);
  objc_msgSend_setEnabled_(v59, v58, canCrop);
}

- (void)_updateToolbarItems
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_Parmesan_canAddPhotoAssets(self->_previewProvider, a2, v2))
  {
    v6 = objc_msgSend_maskedPhoto(self->_currentPreview, v4, v5);

    if (v6)
    {
      v8 = objc_msgSend__symbolForUsingDepthEffect_(self, v7, self->_displayDepthEffect);
      v10 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], v9, v8);
      v11 = objc_alloc(MEMORY[0x277D751E0]);
      v14 = objc_msgSend_initWithImage_style_target_action_(v11, v12, v10, 0, self, sel__toggleDepthEffectPressed);
      if (self->_displayDepthEffect)
      {
        objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v13, @"PARMESAN_AX_DEPTH_EFFECT_ON", @"Accessibility label for depth effect on icon.");
      }

      else
      {
        objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v13, @"PARMESAN_AX_DEPTH_EFFECT_OFF", @"Accessibility label for depth effect off icon.");
      }
      v17 = ;
      objc_msgSend_setAccessibilityLabel_(v10, v18, v17);

      v21 = objc_msgSend_flexibleSpaceItem(MEMORY[0x277D751E0], v19, v20);
      v24 = objc_msgSend_flexibleSpaceItem(MEMORY[0x277D751E0], v22, v23, v21, v14);
      v27[2] = v24;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v27, 3);

      objc_msgSend_setToolbarItems_animated_(self, v26, v16, 0);
    }

    else
    {
      v16 = 0;
      objc_msgSend_setToolbarItems_animated_(self, v7, 0, 0);
    }
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];

    objc_msgSend_setToolbarItems_animated_(self, v4, v15, 0);
  }
}

- (void)viewDidLayoutSubviews
{
  v153.receiver = self;
  v153.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v153 viewDidLayoutSubviews];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_bounds(v5, v6, v7);
  objc_msgSend_setFrame_(self->_infoContainer, v8, v9);

  v12 = objc_msgSend_view(self, v10, v11);
  objc_msgSend_bounds(v12, v13, v14);
  objc_msgSend_setFrame_(self->_contentContainer, v15, v16);

  objc_msgSend_frame(self->_navigationBar, v17, v18);
  MaxY = CGRectGetMaxY(v154);
  objc_msgSend__heightForTimeSelectionView(self, v19, v20);
  v22 = v21;
  v25 = objc_msgSend_previewProvider(self, v23, v24);
  objc_msgSend_Parmesan_screenBounds(v25, v26, v27);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v38 = objc_msgSend_previewProvider(self, v36, v37);
  objc_msgSend_Parmesan_screenCornerRadius(v38, v39, v40);
  v150 = v41;

  objc_msgSend_cutoutSize(self, v42, v43);
  v45 = v44;
  v47 = v46;
  v155.origin.x = v29;
  v155.origin.y = v31;
  v155.size.width = v33;
  v155.size.height = v35;
  v48 = v45 / CGRectGetWidth(v155);
  v156.origin.x = v29;
  v156.origin.y = v31;
  v156.size.width = v33;
  v156.size.height = v35;
  v51 = v47 / CGRectGetHeight(v156);
  if (v48 >= v51)
  {
    v51 = v48;
  }

  self->_timeContainerScale = v51;
  v52 = objc_msgSend_view(self, v49, v50);
  objc_msgSend_bounds(v52, v53, v54);
  v56 = v55;
  v59 = objc_msgSend_view(self, v57, v58);
  objc_msgSend_safeAreaInsets(v59, v60, v61);
  v63 = v56 - v62 - v22;
  objc_msgSend_frame(self->_navigationBar, v64, v65);
  v66 = v63 - CGRectGetMaxY(v157);

  v69 = objc_msgSend_view(self, v67, v68);
  objc_msgSend_bounds(v69, v70, v71);
  v73 = v72;

  objc_msgSend_setFrame_(self->_scrollView, v74, v75, 0.0, MaxY, v73, v66);
  v76 = *MEMORY[0x277D768C8];
  v77 = *(MEMORY[0x277D768C8] + 8);
  v79 = *(MEMORY[0x277D768C8] + 16);
  v78 = *(MEMORY[0x277D768C8] + 24);
  objc_msgSend_setContentInset_(self->_scrollView, v80, v81, *MEMORY[0x277D768C8], v77, v79, v78);
  objc_msgSend_setFrame_(self->_overlayScrollView, v82, v83, 0.0, MaxY, v73, v66);
  objc_msgSend_setContentInset_(self->_overlayScrollView, v84, v85, v76, v77, v79, v78);
  v86 = v66;
  UIRectCenteredIntegralRectScale();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v97 = objc_msgSend_view(self, v95, v96, 0);
  objc_msgSend_bounds(v97, v98, v99);
  v101 = v100;
  v104 = objc_msgSend_view(self, v102, v103);
  objc_msgSend_bounds(v104, v105, v106);
  objc_msgSend_setFrame_(self->_mask, v107, v108, 0.0, 0.0, v101);

  v109 = MEMORY[0x277D75208];
  objc_msgSend_frame(self->_mask, v110, v111);
  v114 = objc_msgSend_bezierPathWithRect_(v109, v112, v113);
  v117 = objc_msgSend_bezierPathWithRoundedRect_cornerRadius_(MEMORY[0x277D75208], v115, v116, v88, v90, v92, v94, v150);
  objc_msgSend_appendPath_(v114, v118, v117);

  v119 = v114;
  v122 = objc_msgSend_CGPath(v119, v120, v121);
  objc_msgSend_setPath_(self->_mask, v123, v122);
  v126 = objc_msgSend_view(self, v124, v125);
  v158.origin.x = v88;
  v158.origin.y = v90;
  v158.size.width = v92;
  v158.size.height = v94;
  v159 = UIAccessibilityConvertFrameToScreenCoordinates(v158, v126);
  objc_msgSend_setAccessibilityFrame_(self->_scrollView, v127, v128, v159.origin.x, v159.origin.y, v159.size.width, v159.size.height);

  timeContainer = self->_timeContainer;
  v130 = *(MEMORY[0x277CBF2C0] + 16);
  *&v152.a = *MEMORY[0x277CBF2C0];
  *&v152.c = v130;
  *&v152.tx = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_setTransform_(timeContainer, v131, &v152);
  UIRectCenteredIntegralRectScale();
  objc_msgSend_setFrame_(self->_timeContainer, v132, v133, 0);
  CGAffineTransformMakeScale(&v151, self->_timeContainerScale, self->_timeContainerScale);
  v134 = self->_timeContainer;
  v152 = v151;
  objc_msgSend_setTransform_(v134, v135, &v152);
  objc_msgSend_bounds(self->_timeContainer, v136, v137);
  objc_msgSend_setFrame_(self->_time, v138, v139);
  objc_msgSend_setMinimumDisplaySize_withCropRectCushion_(self->_scrollView, v140, v141, v92, v94, *MEMORY[0x277D3B3B8]);
  objc_msgSend_setFrame_(self->_placementGuideContainer, v142, v143, 0.0, MaxY, v73, v86);
  objc_msgSend_frame(self->_navigationBar, v144, v145);
  v146 = CGRectGetMaxY(v160);
  objc_msgSend_setFrame_(self->_placementGuideLabel, v147, v148, 0.0, 0.0, v73, v90 - v146);
}

- (CGSize)cutoutSize
{
  v4 = objc_msgSend_previewProvider(self, a2, v2);
  objc_msgSend_Parmesan_screenBounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  v13 = objc_msgSend_view(self, v11, v12);
  v16 = objc_msgSend_window(v13, v14, v15);
  objc_msgSend_bounds(v16, v17, v18);
  v20 = v19;

  v21 = v20 * 0.26;
  v22 = v8 / v10 * (v20 * 0.26);
  result.height = v21;
  result.width = v22;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v8 viewDidDisappear:disappear];
  v6 = objc_msgSend_delegate(self, v4, v5);
  objc_msgSend_ParmesanPreviewViewControllerDidDismiss_(v6, v7, self);
}

- (void)_loadInitialCropPreview
{
  objc_msgSend_setInitialPreviewState_(self, a2, 1);
  objc_initWeak(&location, self);
  previewProvider = self->_previewProvider;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BF14AD0;
  v5[3] = &unk_278BA69B0;
  objc_copyWeak(&v6, &location);
  objc_msgSend_Parmesan_getPreviewWithCompletion_(previewProvider, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setInitialPreviewState:(unint64_t)state
{
  self->_initialPreviewState = state;
  if (state == 3)
  {
    objc_msgSend__hideLoadingSpinner(self, a2, 3);
    objc_msgSend__hideLoadingLabel(self, v14, v15);
LABEL_9:

    objc_msgSend__updateNavigationBarItems(self, v10, v11);
    return;
  }

  if (state != 2)
  {
    if (state != 1)
    {
      return;
    }

    v4 = objc_msgSend_trailingButton(self->_navigationBar, a2, 1);
    objc_msgSend_setEnabled_(v4, v5, 0);

    objc_msgSend__showLoadingLabel(self, v6, v7);
    objc_msgSend__showLoadingSpinner(self, v8, v9);
    goto LABEL_9;
  }

  objc_msgSend__hideLoadingSpinner(self, a2, 2);
  v16 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v12, @"MANUAL_LAYOUT_LOADING_IMAGE_ERROR_MESSAGE", @"Something went wrong.");
  objc_msgSend_setText_(self->_loadingLabel, v13, v16);
}

- (void)_showLoadingSpinner
{
  if (!self->_loadingSpinner)
  {
    v3 = objc_alloc(MEMORY[0x277D750E8]);
    v5 = objc_msgSend_initWithActivityIndicatorStyle_(v3, v4, 100);
    loadingSpinner = self->_loadingSpinner;
    self->_loadingSpinner = v5;

    objc_msgSend_startAnimating(self->_loadingSpinner, v7, v8);
  }

  v9 = objc_alloc(MEMORY[0x277D751E0]);
  v15 = objc_msgSend_initWithCustomView_(v9, v10, self->_loadingSpinner);
  v13 = objc_msgSend_navigationItem(self, v11, v12);
  objc_msgSend_setRightBarButtonItem_(v13, v14, v15);
}

- (void)_hideLoadingSpinner
{
  v4 = objc_msgSend_navigationItem(self, a2, v2);
  objc_msgSend_setRightBarButtonItem_(v4, v5, 0);

  objc_msgSend_stopAnimating(self->_loadingSpinner, v6, v7);
  loadingSpinner = self->_loadingSpinner;
  self->_loadingSpinner = 0;
}

- (void)_showLoadingLabel
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (!self->_loadingView)
  {
    objc_msgSend_cutoutSize(self, a2, v2);
    v6 = objc_msgSend_view(self, v4, v5);
    objc_msgSend_bounds(v6, v7, v8);
    UIRectCenteredIntegralRectScale();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v19 = objc_msgSend_navigationController(self, v17, v18, 0);
    v22 = objc_msgSend_view(v19, v20, v21);
    objc_msgSend_safeAreaInsets(v22, v23, v24);
    v26 = v25;
    v29 = objc_msgSend_navigationController(self, v27, v28);
    v32 = objc_msgSend_view(v29, v30, v31);
    objc_msgSend_safeAreaInsets(v32, v33, v34);
    v36 = v26 - v35;

    v119.origin.x = v10;
    v119.origin.y = v12;
    v119.size.width = v14;
    v119.size.height = v16;
    v120 = CGRectOffset(v119, 0.0, v36);
    x = v120.origin.x;
    y = v120.origin.y;
    width = v120.size.width;
    height = v120.size.height;
    v41 = objc_alloc(MEMORY[0x277D756B8]);
    v44 = objc_msgSend_initWithFrame_(v41, v42, v43, x, y, width, height);
    loadingLabel = self->_loadingLabel;
    self->_loadingLabel = v44;

    v47 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v46, *MEMORY[0x277D76918]);
    objc_msgSend_setFont_(self->_loadingLabel, v48, v47);

    v50 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v49, @"MANUAL_LAYOUT_LOADING_IMAGE_MESSAGE", @"Loading Image...");
    objc_msgSend_setText_(self->_loadingLabel, v51, v50);

    objc_msgSend_setTextAlignment_(self->_loadingLabel, v52, 1);
    v55 = objc_msgSend_secondaryLabelColor(MEMORY[0x277D75348], v53, v54);
    objc_msgSend_setTextColor_(self->_loadingLabel, v56, v55);

    v57 = objc_alloc(MEMORY[0x277D750E8]);
    v116 = objc_msgSend_initWithActivityIndicatorStyle_(v57, v58, 100);
    v59 = objc_alloc(MEMORY[0x277D75A68]);
    v118[0] = self->_loadingLabel;
    v118[1] = v116;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v118, 2);
    v63 = objc_msgSend_initWithArrangedSubviews_(v59, v62, v61);

    loadingView = self->_loadingView;
    self->_loadingView = v63;
    v65 = v63;

    objc_msgSend_setAxis_(v65, v66, 1);
    objc_msgSend_setAlignment_(v65, v67, 3);
    objc_msgSend_setSpacing_(v65, v68, v69, 8.0);
    objc_msgSend_addSubview_(self->_infoContainer, v70, self->_loadingView);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_loadingView, v71, 0);
    v109 = MEMORY[0x277CCAAD0];
    v115 = objc_msgSend_centerYAnchor(self->_loadingView, v72, v73);
    v114 = objc_msgSend_centerYAnchor(self->_infoContainer, v74, v75);
    v113 = objc_msgSend_constraintEqualToAnchor_(v115, v76, v114);
    v117[0] = v113;
    v112 = objc_msgSend_centerXAnchor(self->_loadingView, v77, v78);
    v111 = objc_msgSend_centerXAnchor(self->_infoContainer, v79, v80);
    v110 = objc_msgSend_constraintEqualToAnchor_(v112, v81, v111);
    v117[1] = v110;
    v84 = objc_msgSend_widthAnchor(self->_loadingView, v82, v83);
    v87 = objc_msgSend_safeAreaLayoutGuide(self->_infoContainer, v85, v86);
    v90 = objc_msgSend_widthAnchor(v87, v88, v89);
    v92 = objc_msgSend_constraintLessThanOrEqualToAnchor_(v84, v91, v90);
    v117[2] = v92;
    v95 = objc_msgSend_heightAnchor(self->_loadingView, v93, v94);
    v98 = objc_msgSend_safeAreaLayoutGuide(self->_infoContainer, v96, v97);
    v101 = objc_msgSend_heightAnchor(v98, v99, v100);
    v103 = objc_msgSend_constraintLessThanOrEqualToAnchor_(v95, v102, v101);
    v117[3] = v103;
    v105 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v104, v117, 4);
    objc_msgSend_activateConstraints_(v109, v106, v105);

    objc_msgSend_startAnimating(v116, v107, v108);
  }
}

- (void)_hideLoadingLabel
{
  objc_msgSend_removeFromSuperview(self->_loadingView, a2, v2);
  loadingView = self->_loadingView;
  self->_loadingView = 0;
}

- (void)_setupCenteredViewWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto
{
  v125[3] = *MEMORY[0x277D85DE8];
  photoCopy = photo;
  maskedPhotoCopy = maskedPhoto;
  v11 = maskedPhotoCopy;
  v12 = self->_currentBackgroundImage != photoCopy || self->_currentForegroundImage != maskedPhotoCopy;
  v13 = objc_msgSend_centeredView(self->_scrollView, v9, v10);

  if (v12)
  {
    objc_storeStrong(&self->_currentBackgroundImage, photo);
    objc_storeStrong(&self->_currentForegroundImage, maskedPhoto);
    v16 = objc_alloc(MEMORY[0x277D755E8]);
    v18 = objc_msgSend_initWithImage_(v16, v17, photoCopy);
    objc_msgSend_setCenteredView_(self->_scrollView, v19, v18);

    objc_msgSend_setHidden_(self->_overlayScrollView, v20, v11 == 0);
    if (v11)
    {
      v21 = objc_alloc(MEMORY[0x277D755E8]);
      v23 = objc_msgSend_initWithImage_(v21, v22, v11);
      objc_msgSend_setCenteredView_(self->_overlayScrollView, v24, v23);
    }
  }

  if (!v13)
  {
    objc_msgSend_Parmesan_screenBounds(self->_previewProvider, v14, v15);
    v26 = v25;
    v28 = v27;
    objc_msgSend_Parmesan_screenCornerRadius(self->_previewProvider, v29, v30);
    v32 = v31;
    objc_msgSend__heightForTimeSelectionItem(self, v33, v34);
    v36 = v35;
    v37 = [NTKParmesanTimeLayoutSelectionViewController alloc];
    v40 = objc_msgSend_allLayouts(NTKParmesanTimeLayout, v38, v39);
    v42 = objc_msgSend_initWithLayoutOptions_itemHeight_deviceSize_deviceScreenRadius_(v37, v41, v40, v36, v26, v28, v32);

    v43 = BPSBridgeTintColor();
    v46 = objc_msgSend_view(v42, v44, v45);
    objc_msgSend_setTintColor_(v46, v47, v43);

    objc_msgSend_addChildViewController_(self, v48, v42);
    v51 = objc_msgSend_view(self, v49, v50);
    v54 = objc_msgSend_view(v42, v52, v53);
    objc_msgSend_addSubview_(v51, v55, v54);

    objc_msgSend_didMoveToParentViewController_(v42, v56, self);
    timeLayoutSelectionViewController = self->_timeLayoutSelectionViewController;
    self->_timeLayoutSelectionViewController = v42;
    v121 = v42;

    objc_msgSend_setDelegate_(self->_timeLayoutSelectionViewController, v58, self);
    objc_msgSend_bottomPadding(NTKParmesanTimeLayoutSelectionViewController, v59, v60);
    v62 = v61;
    v65 = objc_msgSend_view(self->_timeLayoutSelectionViewController, v63, v64);
    v68 = objc_msgSend_clearColor(MEMORY[0x277D75348], v66, v67);
    objc_msgSend_setBackgroundColor_(v65, v69, v68);

    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v65, v70, 0);
    v114 = MEMORY[0x277CCAAD0];
    v120 = objc_msgSend_leadingAnchor(v65, v71, v72);
    v122 = objc_msgSend_view(self, v73, v74);
    v119 = objc_msgSend_safeAreaLayoutGuide(v122, v75, v76);
    v118 = objc_msgSend_leadingAnchor(v119, v77, v78);
    v117 = objc_msgSend_constraintEqualToAnchor_(v120, v79, v118);
    v125[0] = v117;
    v115 = objc_msgSend_trailingAnchor(v65, v80, v81);
    v116 = objc_msgSend_view(self, v82, v83);
    v113 = objc_msgSend_safeAreaLayoutGuide(v116, v84, v85);
    objc_msgSend_trailingAnchor(v113, v86, v87);
    v88 = v124 = photoCopy;
    objc_msgSend_constraintEqualToAnchor_(v115, v89, v88);
    v90 = v123 = v11;
    v125[1] = v90;
    v93 = objc_msgSend_bottomAnchor(v65, v91, v92);
    v96 = objc_msgSend_view(self, v94, v95);
    v99 = objc_msgSend_safeAreaLayoutGuide(v96, v97, v98);
    v102 = objc_msgSend_bottomAnchor(v99, v100, v101);
    v104 = objc_msgSend_constraintEqualToAnchor_constant_(v93, v103, v102, -v62);
    v125[2] = v104;
    v106 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v105, v125, 3);
    objc_msgSend_activateConstraints_(v114, v107, v106);

    v11 = v123;
    photoCopy = v124;

    v110 = objc_msgSend_view(self, v108, v109);
    objc_msgSend_setNeedsLayout(v110, v111, v112);
  }
}

- (double)_heightForTimeSelectionItem
{
  v3 = objc_msgSend_navigationController(self, a2, v2);
  v6 = objc_msgSend_presentingViewController(v3, v4, v5);
  v9 = objc_msgSend_view(v6, v7, v8);

  objc_msgSend_bounds(v9, v10, v11);
  v13 = v12 * 0.09;

  return v13;
}

- (double)_heightForTimeSelectionView
{
  objc_msgSend__heightForTimeSelectionItem(self, a2, v2);

  MEMORY[0x2821F9670](NTKParmesanTimeLayoutSelectionViewController, sel_totalHeightForPreviewHeight_, v3);
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (qword_27E1DF950 == context)
  {
    if (objc_msgSend_isEqualToString_(path, a2, @"bounds", object, change))
    {
      objc_msgSend_zoomScale(self->_scrollView, v7, v8);
      objc_msgSend_setZoomScale_animated_(self->_overlayScrollView, v9, 0);
      objc_msgSend_contentInset(self->_scrollView, v10, v11);
      objc_msgSend_setContentInset_(self->_overlayScrollView, v12, v13);
      objc_msgSend_bounds(self->_scrollView, v14, v15);
      overlayScrollView = self->_overlayScrollView;

      MEMORY[0x2821F9670](overlayScrollView, sel_setBounds_, v16);
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKCParmesanPreviewViewController;
    [(NTKCParmesanPreviewViewController *)&v18 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)scrollViewWillBeginInteraction:(id)interaction
{
  objc_msgSend_setDidInteractWithCropView_(self, a2, 1);
  v6 = objc_msgSend_currentPreview(self, v4, v5);
  objc_msgSend_cropRect(self->_scrollView, v7, v8);
  objc_msgSend__validatePreview_withCrop_animated_(self, v9, v6, 0);

  objc_msgSend__updateNavigationBarItems(self, v10, v11);
}

- (void)scrollViewDidScroll:(id)scroll
{
  v7 = objc_msgSend_currentPreview(self, a2, scroll);
  objc_msgSend_cropRect(self->_scrollView, v4, v5);
  objc_msgSend__validatePreview_withCrop_animated_(self, v6, v7, 0);
}

- (void)scrollViewDidSettleFromInteracting:(id)interacting
{
  v4 = objc_msgSend_currentPreview(self, a2, interacting);
  objc_msgSend_cropRect(self->_scrollView, v5, v6);
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  photoScale = self->_photoScale;
  if (photoScale != 0.0)
  {
    CGAffineTransformMakeScale(&v37, photoScale, self->_photoScale);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectApplyAffineTransform(v38, &v37);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  v16 = [NTKParmesanCrop alloc];
  v19 = objc_msgSend_initWithRect_(v16, v17, v18, x, y, width, height);
  v20 = [NTKParmesanCropPreviewModel alloc];
  v23 = objc_msgSend_photo(v4, v21, v22);
  v26 = objc_msgSend_maskedPhoto(v4, v24, v25);
  v29 = objc_msgSend_previewValidator(v4, v27, v28);
  v32 = objc_msgSend_timeLayout(v4, v30, v31);
  v36 = 1;
  v34 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v20, v33, v23, v26, v29, v19, v32, self->_displayDepthEffect, v36);

  objc_msgSend__setPreview_animated_(self, v35, v34, 1);
}

- (void)_setPreview:(id)preview animated:(BOOL)animated
{
  previewCopy = preview;
  objc_storeStrong(&self->_currentPreview, preview);
  self->_displayDepthEffect = objc_msgSend_useDepthEffect(previewCopy, v7, v8);
  if (objc_msgSend_isHidden(self->_time, v9, v10))
  {
    objc_msgSend_setHidden_(self->_time, v11, 0);
  }

  v13 = objc_msgSend_crop(previewCopy, v11, v12);
  objc_msgSend_cgRect(v13, v14, v15);
  x = v16;
  y = v18;
  width = v20;
  height = v22;

  v26 = objc_msgSend_photo(previewCopy, v24, v25);
  v29 = objc_msgSend_maskedPhoto(previewCopy, v27, v28);
  objc_msgSend_scale(v26, v30, v31);
  self->_photoScale = v32;
  objc_msgSend__setupCenteredViewWithPhoto_maskedPhoto_(self, v33, v26, v29);
  v37 = objc_msgSend_timeLayout(previewCopy, v34, v35);
  if (v37)
  {
    objc_msgSend_updateTimeLayout_(self->_time, v36, v37);
    objc_msgSend_setSelectedLayout_(self->_timeLayoutSelectionViewController, v38, v37);
  }

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (!CGRectIsEmpty(v53))
  {
    photoScale = self->_photoScale;
    if (photoScale != 0.0)
    {
      CGAffineTransformMakeScale(&v52, 1.0 / photoScale, 1.0 / photoScale);
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v55 = CGRectApplyAffineTransform(v54, &v52);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
    }
  }

  objc_msgSend_setCropRect_(self->_scrollView, v39, v40, x, y, width, height);
  objc_msgSend_setCropRect_(self->_overlayScrollView, v42, v43, x, y, width, height);
  objc_msgSend__updatePreviewForDepthEffect_(self, v44, self->_displayDepthEffect);
  objc_msgSend__updateNavigationBarItems(self, v45, v46);
  objc_msgSend__updateToolbarItems(self, v47, v48);
  objc_msgSend__validatePreview_withCrop_animated_(self, v49, previewCopy, 0, x, y, width, height);
  objc_msgSend__updateAllButtonStates(self, v50, v51);
}

- (void)_setCropValidationState:(unint64_t)state animated:(BOOL)animated
{
  self->_cropValidationState = state;
  v5 = 0.0;
  block[1] = 3221225472;
  block[0] = MEMORY[0x277D85DD0];
  block[2] = sub_23BF15E04;
  block[3] = &unk_278BA6A00;
  animatedCopy = animated;
  if (state == 1)
  {
    v5 = 1.0;
  }

  block[4] = self;
  *&block[5] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_msgSend__updateDoneButtonEnabledState(self, v6, v7);
}

- (void)_validatePreview:(id)preview withCrop:(CGRect)crop animated:(BOOL)animated
{
  animatedCopy = animated;
  y = crop.origin.y;
  x = crop.origin.x;
  previewCopy = preview;
  v12 = previewCopy;
  if (self->_displayDepthEffect)
  {
    v13 = objc_msgSend_photo(previewCopy, v10, v11);
    objc_msgSend_size(v13, v14, v15);
    v17 = v16;
    v19 = v18;

    objc_msgSend_zoomScale(self->_scrollView, v20, v21);
    v23 = v22;
    v26 = objc_msgSend_layout(self->_time, v24, v25);
    objc_msgSend_normalizedTimeRectWithoutComplications(v26, v27, v28);
    v30 = v29;
    v32 = v31;
    v34 = v33;
    dy = y;
    v36 = v35;

    objc_msgSend_bounds(self->_time, v37, v38);
    v40 = v30 * v39;
    objc_msgSend_bounds(self->_time, v41, v42);
    v44 = v32 * v43;
    objc_msgSend_bounds(self->_time, v45, v46);
    v48 = v34 * v47;
    objc_msgSend_bounds(self->_time, v49, v50);
    v52 = v36 * v51;
    CGAffineTransformMakeScale(&v68, self->_timeContainerScale, self->_timeContainerScale);
    v69.origin.x = v40;
    v69.origin.y = v44;
    v69.size.width = v48;
    v69.size.height = v52;
    v70 = CGRectApplyAffineTransform(v69, &v68);
    v53 = v70.origin.x;
    v54 = v70.origin.y;
    width = v70.size.width;
    height = v70.size.height;
    CGAffineTransformMakeScale(&v68, 1.0 / v23, 1.0 / v23);
    v71.origin.x = v53;
    v71.origin.y = v54;
    v71.size.width = width;
    v71.size.height = height;
    v72 = CGRectApplyAffineTransform(v71, &v68);
    v73 = CGRectOffset(v72, x, dy);
    v57 = v73.origin.x / v17;
    v58 = v73.origin.y / v19;
    v59 = v73.size.width / v17;
    v60 = v73.size.height / v19;
    v63 = objc_msgSend_previewValidator(v12, v61, v62);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_23BF160E4;
    v66[3] = &unk_278BA6A28;
    v66[4] = self;
    v67 = animatedCopy;
    objc_msgSend_validateTimeLabel_completion_(v63, v64, v66, v57, v58, v59, v60);
  }

  else
  {
    objc_msgSend__setCropValidationState_animated_(self, v10, 0, animatedCopy);
  }
}

- (void)_updateDoneButtonEnabledState
{
  isDragging = objc_msgSend_isDragging(self->_scrollView, a2, v2);
  isDecelerating = objc_msgSend_isDecelerating(self->_scrollView, v5, v6);
  cropValidationState = self->_cropValidationState;
  initialPreviewState = self->_initialPreviewState;
  v12 = objc_msgSend_trailingButton(self->_navigationBar, v10, v11);
  v16 = v12;
  v15 = cropValidationState != 1 && initialPreviewState == 3;
  if (isDecelerating)
  {
    v15 = 0;
  }

  if (isDragging)
  {
    objc_msgSend_setEnabled_(v12, v13, 0);
  }

  else
  {
    objc_msgSend_setEnabled_(v12, v13, v15);
  }
}

- (void)_cancelPressed
{
  if (objc_msgSend_didInteractWithCropView(self, a2, v2))
  {
    v6 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v4, 0, 0, 0);
    v8 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v7, @"MANUAL_LAYOUT_CANCEL_ALERT_TITLE", @"Discard Changes");
    v10 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v9, @"MANUAL_LAYOUT_CANCEL_ALERT_BUTTON", @"Cancel");
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23BF1637C;
    v23[3] = &unk_278BA6A50;
    v23[4] = self;
    v12 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v11, v8, 0, v23);
    objc_msgSend_addAction_(v6, v13, v12);

    v15 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v14, v10, 1, 0);
    objc_msgSend_addAction_(v6, v16, v15);

    v19 = objc_msgSend_parentViewController(self, v17, v18);
    objc_msgSend_presentViewController_animated_completion_(v19, v20, v6, 1, 0);
  }

  else
  {
    v22 = objc_msgSend_delegate(self, v4, v5);
    objc_msgSend_ParmesanPreviewViewControllerWantsToCancel_(v22, v21, self);
  }
}

- (void)_donePressed
{
  v5 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_ParmesanPreviewViewControllerWantsToSave_(v5, v4, self);
}

- (void)_revertPressed
{
  v3 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"MANUAL_LAYOUT_REVERT_ALERT_TITLE", @"Revert to original will…");
  v5 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v4, 0, v3, 0);
  v7 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"MANUAL_LAYOUT_REVERT_ALERT_BUTTON", @"Revert to Original");
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_23BF165F4;
  v21 = &unk_278BA6A78;
  objc_copyWeak(&v22, &location);
  v10 = objc_msgSend_actionWithTitle_style_handler_(v8, v9, v7, 2, &v18);
  objc_msgSend_addAction_(v5, v11, v10, v18, v19, v20, v21);

  v13 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v12, @"MANUAL_LAYOUT_CANCEL_ALERT_BUTTON", @"Cancel");
  v15 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v14, v13, 1, 0);
  objc_msgSend_addAction_(v5, v16, v15);

  objc_msgSend_presentViewController_animated_completion_(self, v17, v5, 1, 0);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_changePhotoPressed
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23BF0C000, v3, OS_LOG_TYPE_INFO, "User tapped Change Photo", buf, 2u);
  }

  v5 = objc_msgSend_parmesanConfigurationWithLimit_(MEMORY[0x277D2BFA0], v4, 1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF168A0;
  v7[3] = &unk_278BA6960;
  v7[4] = self;
  objc_msgSend_presentPhotosAddControllerFromViewController_configuration_withCompletion_(MEMORY[0x277D2BFA0], v6, self, v5, v7);
}

- (void)_didSelectPhotoForChangePhoto:(id)photo
{
  photoCopy = photo;
  previewProvider = self->_previewProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BF16A94;
  v8[3] = &unk_278BA6AA0;
  v9 = photoCopy;
  selfCopy = self;
  v6 = photoCopy;
  objc_msgSend_Parmesan_changePhotoWithAsset_completion_(previewProvider, v7, v6, v8);
}

- (void)_toggleDepthEffectPressed
{
  v4 = objc_msgSend_displayDepthEffect(self, a2, v2) ^ 1;

  MEMORY[0x2821F9670](self, sel_setDisplayDepthEffect_, v4);
}

- (id)_symbolForUsingDepthEffect:(BOOL)effect
{
  if (effect)
  {
    return @"square.3.layers.3d";
  }

  else
  {
    return @"square.3.layers.3d.slash";
  }
}

- (void)setDisplayDepthEffect:(BOOL)effect
{
  if (self->_displayDepthEffect != effect)
  {
    effectCopy = effect;
    self->_displayDepthEffect = effect;
    v6 = [NTKParmesanCropPreviewModel alloc];
    v9 = objc_msgSend_photo(self->_currentPreview, v7, v8);
    v12 = objc_msgSend_maskedPhoto(self->_currentPreview, v10, v11);
    v15 = objc_msgSend_previewValidator(self->_currentPreview, v13, v14);
    v18 = objc_msgSend_crop(self->_currentPreview, v16, v17);
    v21 = objc_msgSend_timeLayout(self->_currentPreview, v19, v20);
    isRevertable = objc_msgSend_isRevertable(self->_currentPreview, v22, v23);
    v27 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v6, v24, v9, v12, v15, v18, v21, effectCopy, isRevertable);

    objc_msgSend__setPreview_animated_(self, v25, v27, 0);
  }
}

- (void)_updatePreviewForDepthEffect:(BOOL)effect
{
  if (effect)
  {
    objc_msgSend_setAlpha_(self->_overlayScrollView, a2, effect, 1.0);
  }

  else
  {
    objc_msgSend_setAlpha_(self->_overlayScrollView, a2, effect, 0.0);
  }
}

- (void)timeLayoutSelectionController:(id)controller didChangeSelection:(id)selection
{
  selectionCopy = selection;
  v8 = objc_msgSend_currentPreview(self, v5, v6);
  if (v8)
  {
    objc_msgSend_setDidInteractWithCropView_(self, v7, 1);
    v9 = [NTKParmesanCropPreviewModel alloc];
    v12 = objc_msgSend_photo(v8, v10, v11);
    v15 = objc_msgSend_maskedPhoto(v8, v13, v14);
    v18 = objc_msgSend_previewValidator(v8, v16, v17);
    v21 = objc_msgSend_crop(v8, v19, v20);
    v25 = 1;
    v23 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v9, v22, v12, v15, v18, v21, selectionCopy, self->_displayDepthEffect, v25);

    objc_msgSend__setPreview_animated_(self, v24, v23, 1);
  }
}

- (NTKCParmesanPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end