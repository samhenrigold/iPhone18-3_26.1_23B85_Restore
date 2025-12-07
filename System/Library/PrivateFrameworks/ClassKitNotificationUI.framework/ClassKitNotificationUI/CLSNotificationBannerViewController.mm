@interface CLSNotificationBannerViewController
- (BOOL)windowPointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_hiddenBannerPosition:(CGSize)position;
- (CGPoint)_visibleBannerCenterPosition:(CGSize)position;
- (double)bannerWidthForViewSize:(CGSize)size;
- (unint64_t)supportedInterfaceOrientations;
- (void)addBannerView:(id)view;
- (void)addConstraintsForBannerView;
- (void)handleWindowPan:(id)pan;
- (void)hideBannerQuickly:(BOOL)quickly;
- (void)showCurrentBanner;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CLSNotificationBannerViewController

- (BOOL)windowPointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = objc_msgSend_view(self, a2, event, v4, v5, 0);
  v13 = objc_msgSend_subviews(v8, v9, v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v35, v39, 16);
  if (v15)
  {
    v16 = *v36;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objc_msgSend_layer(v18, v19, v20, v21, v22);
          v28 = objc_msgSend_presentationLayer(v23, v24, v25, v26, v27);
          v33 = objc_msgSend_hitTest_(v28, v29, v30, v31, v32, x, y);

          if (v33)
          {
            LOBYTE(v15) = 1;
            goto LABEL_12;
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, &v35, v39, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v15;
}

- (void)handleWindowPan:(id)pan
{
  panCopy = pan;
  if (objc_msgSend_bannerVisible(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_view(self, v8, v9, v10, v11);
    objc_msgSend_translationInView_(panCopy, v13, v12, v14, v15);
    v17 = v16;

    if (v17 < 0.0)
    {
      objc_msgSend_hideBannerQuickly_(self, v18, 1, v19, v20);
    }
  }
}

- (void)addBannerView:(id)view
{
  viewCopy = view;
  v8 = objc_msgSend_bannerView(self, v4, v5, v6, v7);

  if (v8)
  {
    objc_msgSend_setBannerYPositionConstraint_(self, v9, 0, v10, v11);
    objc_msgSend_setBannerWidthConstraint_(self, v12, 0, v13, v14);
    v19 = objc_msgSend_bannerView(self, v15, v16, v17, v18);
    objc_msgSend_removeFromSuperview(v19, v20, v21, v22, v23);

    objc_msgSend_setBannerView_(self, v24, 0, v25, v26);
  }

  objc_msgSend_setBannerView_(self, v9, viewCopy, v10, v11);
  v31 = objc_msgSend_view(self, v27, v28, v29, v30);
  v36 = objc_msgSend_bannerView(self, v32, v33, v34, v35);
  objc_msgSend_addSubview_(v31, v37, v36, v38, v39);

  objc_msgSend_addConstraintsForBannerView(self, v40, v41, v42, v43);
}

- (void)showCurrentBanner
{
  v6 = objc_msgSend_bannerView(self, a2, v2, v3, v4);
  v11 = objc_msgSend_view(self, v7, v8, v9, v10);
  v16 = objc_msgSend_subviews(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_containsObject_(v16, v17, v6, v18, v19);

  if ((v20 & 1) == 0)
  {
    v25 = objc_msgSend_view(self, v21, v22, v23, v24);
    objc_msgSend_addSubview_(v25, v26, v6, v27, v28);
  }

  objc_msgSend_setBannerAnimating_(self, v21, 1, v23, v24);
  objc_msgSend_setBannerVisible_(self, v29, 1, v30, v31);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_24351EFAC;
  v49[3] = &unk_278DBEF68;
  v49[4] = self;
  v50 = v6;
  v32 = v6;
  v33 = MEMORY[0x245D38F90](v49);
  v38 = objc_msgSend_view(self, v34, v35, v36, v37);
  objc_msgSend_layoutIfNeeded(v38, v39, v40, v41, v42);

  v43 = MEMORY[0x277D75D18];
  v47 = v33;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_24351F0AC;
  v48[3] = &unk_278DBEF40;
  v48[4] = self;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_24351F0F4;
  v46[3] = &unk_278DBEF90;
  v44 = v33;
  objc_msgSend_animateWithDuration_delay_options_animations_completion_(v43, v45, 38, v48, v46, 0.6, 0.0);
}

- (void)hideBannerQuickly:(BOOL)quickly
{
  quicklyCopy = quickly;
  v7 = objc_msgSend_bannerView(self, a2, quickly, v3, v4);
  objc_msgSend_setBannerAnimating_(self, v8, 1, v9, v10);
  objc_msgSend_setBannerVisible_(self, v11, 0, v12, v13);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_24351F2C4;
  v34[3] = &unk_278DBEF68;
  v34[4] = self;
  v14 = v7;
  v35 = v14;
  v15 = MEMORY[0x245D38F90](v34);
  v20 = objc_msgSend_view(self, v16, v17, v18, v19);
  objc_msgSend_layoutIfNeeded(v20, v21, v22, v23, v24);

  v25 = MEMORY[0x277D75D18];
  if (quicklyCopy)
  {
    v26 = 0.1;
  }

  else
  {
    v26 = 0.3;
  }

  v31 = v15;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_24351F3C8;
  v32[3] = &unk_278DBEF68;
  v32[4] = self;
  v33 = v14;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_24351F458;
  v30[3] = &unk_278DBEF90;
  v27 = v15;
  v28 = v14;
  objc_msgSend_animateWithDuration_delay_options_animations_completion_(v25, v29, 38, v32, v30, v26, 0.0);
}

- (unint64_t)supportedInterfaceOrientations
{
  v6 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, v2, v3, v4);
  v11 = sub_24351D11C(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_view(self, v12, v13, v14, v15);
  v21 = objc_msgSend_window(v16, v17, v18, v19, v20);
  v26 = v21;
  if (v11 == v21)
  {
  }

  else
  {
    v27 = objc_msgSend_rootViewController(v11, v22, v23, v24, v25);

    if (v27)
    {
      v32 = objc_msgSend_rootViewController(v11, v28, v29, v30, v31);
      v37 = objc_msgSend_supportedInterfaceOrientations(v32, v33, v34, v35, v36);

      if (v37)
      {
        goto LABEL_12;
      }
    }
  }

  v38 = objc_msgSend_supportedInterfaceOrientationsForWindow_(v6, v28, v11, v30, v31);
  if (v38)
  {
    v37 = v38;
  }

  else
  {
    v43 = objc_msgSend_traitCollection(self, v39, v40, v41, v42);
    if (objc_msgSend_userInterfaceIdiom(v43, v44, v45, v46, v47))
    {
      v37 = 30;
    }

    else
    {
      v37 = 26;
    }
  }

LABEL_12:

  return v37;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v21.receiver = self;
  v21.super_class = CLSNotificationBannerViewController;
  [(CLSNotificationBannerViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v12 = objc_msgSend_bannerView(self, v8, v9, v10, v11);
  v17 = objc_msgSend_superview(v12, v13, v14, v15, v16);

  if (v17)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_24351F66C;
    v20[3] = &unk_278DBEFB8;
    v20[4] = self;
    *&v20[5] = width;
    *&v20[6] = height;
    objc_msgSend_animateAlongsideTransition_completion_(coordinatorCopy, v18, v20, 0, v19);
  }
}

- (double)bannerWidthForViewSize:(CGSize)size
{
  width = size.width;
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310 == 1)
  {
    v8 = objc_msgSend_bannerView(self, a2, v3, v4, v5);
    objc_msgSend_preferredWidthPad(v8, v9, v10, v11, v12);
    v14 = v13;

    if (width >= v14)
    {
      return v14;
    }
  }

  return width;
}

- (void)addConstraintsForBannerView
{
  v129[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_view(self, a2, v2, v3, v4);
  objc_msgSend_bounds(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;

  v19 = objc_msgSend_bannerView(self, v15, v16, v17, v18);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v19, v20, 0, v21, v22);

  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310 == 1)
  {
    objc_msgSend_bannerWidthForViewSize_(self, v23, v24, v25, v26, v12, v14);
    v28 = v27;
    v29 = MEMORY[0x277CCAAD0];
    v34 = objc_msgSend_bannerView(self, v30, v31, v32, v33);
    v36 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v29, v35, v34, 7, 0, 0, 0, 1.0, v28);
    objc_msgSend_setBannerWidthConstraint_(self, v37, v36, v38, v39);

    v44 = objc_msgSend_bannerView(self, v40, v41, v42, v43);
    v49 = objc_msgSend_bannerWidthConstraint(self, v45, v46, v47, v48);
    objc_msgSend_addConstraint_(v44, v50, v49, v51, v52);
  }

  else
  {
    v44 = objc_msgSend_view(self, v23, v24, v25, v26);
    v53 = MEMORY[0x277CCAAD0];
    v49 = objc_msgSend_bannerView(self, v54, v55, v56, v57);
    v62 = objc_msgSend_view(self, v58, v59, v60, v61);
    v64 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v53, v63, v49, 7, 0, v62, 7, 1.0, 0.0);
    objc_msgSend_addConstraint_(v44, v65, v64, v66, v67);
  }

  v72 = objc_msgSend_view(self, v68, v69, v70, v71);
  v73 = MEMORY[0x277CCAAD0];
  v78 = objc_msgSend_bannerView(self, v74, v75, v76, v77);
  v83 = objc_msgSend_view(self, v79, v80, v81, v82);
  v85 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v73, v84, v78, 9, 0, v83, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(v72, v86, v85, v87, v88);

  v93 = objc_msgSend_bannerView(self, v89, v90, v91, v92);
  objc_msgSend_setAlpha_(v93, v94, v95, v96, v97, 0.0);

  v98 = MEMORY[0x277CCAAD0];
  v103 = objc_msgSend_bannerView(self, v99, v100, v101, v102);
  v108 = objc_msgSend_topAnchor(v103, v104, v105, v106, v107);
  v113 = objc_msgSend_view(self, v109, v110, v111, v112);
  v121 = objc_msgSend_topAnchor(v113, v114, v115, v116, v117);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  if (byte_27ED78310)
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v108, v118, v121, v119, v120, 12.0);
  }

  else
  {
    objc_msgSend_constraintEqualToAnchor_constant_(v108, v118, v121, v119, v120, 15.0);
  }
  v122 = ;
  v129[0] = v122;
  v125 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v123, v129, 1, v124);
  objc_msgSend_activateConstraints_(v98, v126, v125, v127, v128);
}

- (CGPoint)_hiddenBannerPosition:(CGSize)position
{
  v6 = objc_msgSend_view(self, a2, v3, v4, v5, position.width, position.height);
  objc_msgSend_bounds(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  MinY = CGRectGetMinY(v26);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v21 = 32.0;
  if (byte_27ED78310)
  {
    v21 = 33.0;
  }

  v22 = MinY - floorf(v21);
  v23 = MidX;
  result.y = v22;
  result.x = v23;
  return result;
}

- (CGPoint)_visibleBannerCenterPosition:(CGSize)position
{
  v6 = objc_msgSend_view(self, a2, v3, v4, v5, position.width, position.height);
  objc_msgSend_bounds(v6, v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v23 = objc_msgSend_windowScene(qword_27ED78318, v19, v20, v21, v22);
  v28 = objc_msgSend_statusBarManager(v23, v24, v25, v26, v27);
  objc_msgSend_statusBarFrame(v28, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;

  v45.origin.x = v12;
  v45.origin.y = v14;
  v45.size.width = v16;
  v45.size.height = v18;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = v12;
  v46.origin.y = v14;
  v46.size.width = v16;
  v46.size.height = v18;
  MinY = CGRectGetMinY(v46);
  if (qword_27ED78360 != -1)
  {
    dispatch_once(&qword_27ED78360, &unk_28563EF98);
  }

  v39 = 32.0;
  if (byte_27ED78310)
  {
    v39 = 33.0;
  }

  v40 = floorf(v39);
  if (byte_27ED78310)
  {
    v40 = v40 + 16.0;
  }

  if (v34 >= v36)
  {
    v41 = v36;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + MinY + v40;
  v43 = MidX;
  result.y = v42;
  result.x = v43;
  return result;
}

@end