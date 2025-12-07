char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v6[v8] = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView(v9, v11);
  *&v6[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v6[v12] = [objc_allocWithZone(CAShapeLayer) init];
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v14 = sub_1004BBE24();
  v15 = [objc_opt_self() _systemImageNamed:v14];

  v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  *&v6[v13] = v16;
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v6[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_100609D48 != -1)
  {
    swift_once();
  }

  v19 = [objc_opt_self() effectForBlurEffect:qword_100619268];
  v20 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v19];

  *&v6[v18] = v20;
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v6[v21] = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v22 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v6[v22] = [objc_allocWithZone(UIScrollView) init];
  v23 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v6[v23] = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v46);
    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v29 = v46[1];
      v28 = v46[2];
      v30 = v46[0];
    }

    else
    {
      v28 = a1[2];
      v26 = a1[3];
      v30 = *a1;
      v29 = a1[1];
      v24 = sub_100399C60(a1, v44);
      v27 = 76;
    }

    v33 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v33 = v30;
    *(v33 + 1) = v29;
    *(v33 + 2) = v28;
    *(v33 + 3) = v26;
    *(v33 + 4) = v27;
  }

  else
  {
    v31 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v32 = *(a1 + 1);
    *v31 = *a1;
    *(v31 + 1) = v32;
    *(v31 + 4) = a1[4];
    v24 = sub_100399C60(a1, v46);
  }

  v34 = type metadata accessor for QRCodeOverlayViewController(v24, v25);
  v45.receiver = v6;
  v45.super_class = v34;
  v35 = objc_msgSendSuper2(&v45, "initWithNibName:bundle:", 0, 0);
  v36 = *(v35 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v37 = v35;
  v38 = v36;
  v39 = sub_1004BBE24();

  [v38 setText:v39];

  v40 = *(v37 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v41 = sub_1004BBE24();

  [v40 setText:v41];

  sub_100003ABC(qword_10060CCB0, &unk_1004E4A50);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1004C50A0;
  *(v42 + 32) = sub_1004B83D4();
  *(v42 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1004BCA74();
  swift_unknownObjectRelease();

  sub_100399D3C(a1);

  return v37;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v3 = v2;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for QRCodeOverlayViewController(v0, v1);
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    v6 = [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v3 setTitle:v6];
  }

  v7 = [v3 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor:v10];

  v11 = [v3 navigationItem];
  sub_100009130(0, &qword_10060ABA8, UIBarButtonItem_ptr);
  sub_100009130(0, &qword_10060AC30, UIAction_ptr);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46.value.super.super.isa = sub_1004BCFD4();
  v46.is_nil = 0;
  isa = sub_1004BC9E4(UIBarButtonSystemItemDone, v46, v47).super.super.isa;
  [v11 setLeftBarButtonItem:{isa, 0, 0, 0, sub_100399DC8, v12}];

  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v3 action:"dismissAnimated"];
  v15 = [v3 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v43 = v14;
  [v15 addGestureRecognizer:v14];

  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v18 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v44 = &v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v19 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v19;
  v21 = v19;
  v22 = v18;

  [*&v22[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v21];
  v42 = v17;
  [*&v3[v17] setAlpha:0.0];
  v41 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v23 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v24 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_100009130(0, &qword_10060FB10, UIFont_ptr);
  v25 = v24;
  v26 = sub_1004BCE34();
  [v25 setFont:v26];

  v27 = *&v3[v23];
  v28 = [v9 whiteColor];
  [v27 setTextColor:v28];

  [*&v3[v23] setTextAlignment:1];
  [*&v3[v23] setNumberOfLines:0];
  [*&v3[v23] setAlpha:0.0];
  [*&v3[v23] setAdjustsFontForContentSizeCategory:1];
  v29 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v30 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 preferredFontForTextStyle:UIFontTextStyleBody];
  [v32 setFont:v33];

  [*&v3[v29] setTextAlignment:1];
  [*&v3[v29] setNumberOfLines:0];
  [*&v3[v29] setAlpha:0.0];
  [*&v3[v29] setAdjustsFontForContentSizeCategory:1];
  v34 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v35 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v36 = [v9 blackColor];
  v37 = [v36 CGColor];

  [v35 setFillColor:v37];
  [*&v3[v34] setFillRule:kCAFillRuleNonZero];
  [*&v3[v34] setCompositingFilter:kCAFilterDestOut];
  if (*(v44 + 4) != 76)
  {
    v38 = [*&v3[v42] layer];
    [v38 addSublayer:*&v3[v34]];

    [*&v3[v42] addSubview:*&v3[v41]];
  }

  v39 = [v3 view];
  if (v39)
  {
    v40 = v39;
    [v39 addSubview:*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100396FB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v8 = type metadata accessor for QRCodeOverlayViewController(v6, v7);
  v47.receiver = v2;
  v47.super_class = v8;
  objc_msgSendSuper2(&v47, "viewIsAppearing:", a1);
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [v2 traitCollection];
  [v10 userInterfaceIdiom];

  sub_1004BCE74();
  v11 = sub_1004BCEE4();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_1004BCEF4();
  v12 = [v9 layer];
  [v12 setCornerCurve:kCACornerCurveContinuous];

  [v9 setClipsToBounds:1];
  [v9 setAlpha:0.0];
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v9 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v14 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v9;
  v15 = v9;

  v16 = [v2 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 3)
  {
    v34 = objc_opt_self();
    v35 = [v34 whiteColor];
    [v15 setBackgroundColor:v35];

    v36 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v37 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v36 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v37] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v38] addSubview:v15];
    [*&v2[v38] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v39 = *&v2[v38];
    v40 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v41 = [*&v2[v40] contentView];
    [v41 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v42 = *&v2[v13];
    v43 = [v34 blackColor];
    v44 = *&v42[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v42[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v43;
    v45 = v43;

    sub_1003993D8();
    v32 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v33 = [v34 blackColor];
    [v32 setTintColor:v33];
    goto LABEL_6;
  }

  v18 = *&v2[v13];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 labelColor];
  v22 = *&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v21;
  v23 = v21;

  sub_1003993D8();
  v24 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v25 = [v19 labelColor];
  [v24 setTintColor:v25];

  v26 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_1003975D0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100399BF8;
  aBlock[3] = &unk_1005C4E18;
  v27 = _Block_copy(aBlock);
  v28 = [v26 initWithDynamicProvider:v27];
  _Block_release(v27);

  [v15 setBackgroundColor:v28];

  v29 = [v2 view];
  if (v29)
  {
    v30 = v29;
    [v29 addSubview:v15];

    v31 = [v2 view];
    if (v31)
    {
      v32 = v31;
      v33 = *&v2[v13];
      [v32 addSubview:v33];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003975D0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v15.receiver = v2;
  v15.super_class = type metadata accessor for QRCodeOverlayViewController(a1, v1);
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v14[4] = sub_100399DE8;
    v14[5] = v6;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000D6C80;
    v14[3] = &unk_1005C4E68;
    v7 = _Block_copy(v14);
    v8 = v2;

    [v5 animateWithDuration:v7 animations:0.25];
    _Block_release(v7);
    return;
  }

  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (v11)
    {
      v12 = [v11 windowScene];

      if (v12)
      {
        type metadata accessor for BrightnessManager(0, v13);
        swift_allocObject();
        *&v2[v4] = BrightnessManager.init(windowScene:)(v12);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double sub_100397870(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (qword_100609D50 != -1)
    {
      swift_once();
    }

    v5 = &qword_100619270;
  }

  else
  {
    if (qword_100609D48 != -1)
    {
      swift_once();
    }

    v5 = &qword_100619268;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }

  return result;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v3 = v2;
  v226.receiver = v2;
  v226.super_class = type metadata accessor for QRCodeOverlayViewController(v0, v1);
  objc_msgSendSuper2(&v226, "viewDidLayoutSubviews");
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [v3 view];
  v7 = v6;
  if (v5 != 3)
  {
    if (!v6)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v6 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    if (qword_100609D08 != -1)
    {
      swift_once();
    }

    v58 = *&qword_100619228;
    if (qword_100609D10 != -1)
    {
      swift_once();
    }

    v59 = *&qword_100619230;
    v60 = v58 + *&qword_100619230;
    v61 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v229 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v230 = v61;
    v231 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_100399C60(&v229, &v225);
    if (qword_100609D20 != -1)
    {
      swift_once();
    }

    v62 = *&qword_100619240;
    v246.origin.x = v51;
    v246.origin.y = v53;
    v246.size.width = v55;
    v246.size.height = v57;
    Width = CGRectGetWidth(v246);
    v247.origin.x = v51;
    v247.origin.y = v53;
    v247.size.width = v55;
    v247.size.height = v57;
    Height = CGRectGetHeight(v247);
    if (Height >= Width)
    {
      Height = Width;
    }

    v65 = Height - (v60 + v60);
    if (v65 >= v62)
    {
      v66 = v62;
    }

    else
    {
      v66 = v65;
    }

    v67 = [v3 traitCollection];
    [v67 displayScale];
    v69 = v68;

    v70 = QRCode.dotAdjustedWidth(with:scale:)(v66, v69);
    sub_100399D3C(&v229);
    v248.origin.x = v51;
    v248.origin.y = v53;
    v248.size.width = v55;
    v248.size.height = v57;
    v71 = CGRectGetWidth(v248);
    v72 = [v3 view];
    if (!v72)
    {
      goto LABEL_57;
    }

    v73 = v72;
    [v72 safeAreaInsets];
    v75 = v74;

    v76 = [v3 view];
    if (!v76)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v77 = v76;
    v224 = v70;
    v78 = v59 + v59 + v70;
    [v76 safeAreaInsets];

    v79 = sub_100226A94(v51, v53, v55, v57, v75, (v71 - v78) * 0.5);
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v219 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v82, v84}];
    v220 = v86;
    v88 = v87;
    v89 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v83, v85}];
    v223 = v91;
    if (qword_100609D30 != -1)
    {
      v214 = v90;
      swift_once();
      v90 = v214;
    }

    v216 = v78 + *&qword_100619250;
    v92 = v88 + v78 + *&qword_100619250;
    if (qword_100609D38 != -1)
    {
      v215 = v90;
      swift_once();
      v90 = v215;
    }

    v221 = v88;
    v222 = v90;
    v218 = *&qword_100619258;
    v93 = v90 + v92 + *&qword_100619258;
    if (qword_100609D40 != -1)
    {
      swift_once();
    }

    v94 = *&qword_100619260;
    v95 = v93 + v94 + v94;
    v249.origin.x = v79;
    v249.origin.y = v81;
    v249.size.width = v83;
    v249.size.height = v85;
    v96 = CGRectGetWidth(v249);
    v97 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v79, v81, v83, v85}];
    [*&v3[v97] setContentSize:{v96, v95}];
    v250.origin.x = v79;
    v250.origin.y = v81;
    v250.size.width = v83;
    v250.size.height = v85;
    v98 = CGRectGetHeight(v250);
    v99 = *&v3[v97];
    v100 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v101 = v99;
    if (v98 >= v95)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = v94;
    }

    sub_1004BCD84(0.0, v102, v96, v95);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;

    [v100 setFrame:{v104, v106, v108, v110}];
    v111 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v115 = v114;
    v116 = v112;
    v117 = v113;
    v118 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v119 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v217 = v120;
    if (v119)
    {
      v121 = *&v3[v111];
      v122 = v119;
      v123 = v121;
      sub_1004BCD84(0.0, 0.0, v78, v78);
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v131 = v130;

      [v122 setFrame:{v125, v127, v129, v131}];
      v132 = *&v3[v118];
      v133 = v117 - v216;
      v134 = v216 + v116;
      v135 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v132)
      {
        v136 = v135;
        [v132 bounds];
LABEL_44:
        v137 = v89;
        v138 = [v3 traitCollection];
        [v138 displayScale];

        sub_1004BCD94();
        [v136 setFrame:*&v224];

        v139 = *&v3[v219];
        v251.origin.x = v115;
        v251.origin.y = v134;
        v251.size.width = v217;
        v251.size.height = v133;
        MinY = CGRectGetMinY(v251);
        v141 = *&v3[v111];
        sub_1004BCD84(0.0, MinY, v220, v221);
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;

        [v139 setFrame:{v143, v145, v147, v149}];
        v150 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v151 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v252.origin.x = v115;
        v252.origin.y = v221 + v218 + v134;
        v252.size.width = v217;
        v252.size.height = v133 - (v221 + v218);
        v152 = CGRectGetMinY(v252);
        v153 = *&v3[v111];
        sub_1004BCD84(0.0, v152, v223, v222);
        v155 = v154;
        v157 = v156;
        v159 = v158;
        v161 = v160;

        [v151 setFrame:{v155, v157, v159, v161}];
        v162 = *&v3[v150];
        v35 = *&v3[v137];
        [v162 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v133 = v113 - v216;
      v134 = v216 + v112;
      v135 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v136 = v135;
    goto LABEL_44;
  }

  if (!v6)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = [v6 safeAreaLayoutGuide];

  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (qword_100609D00 != -1)
  {
    swift_once();
  }

  v17 = *&qword_100619220;
  if (qword_100609D18 != -1)
  {
    swift_once();
  }

  v18 = *&qword_100619238;
  v19 = v17 + *&qword_100619238;
  v20 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v229 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v230 = v20;
  v231 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_100399C60(&v229, &v225);
  if (qword_100609D20 != -1)
  {
    swift_once();
  }

  v21 = *&qword_100619240;
  v244.origin.x = v10;
  v244.origin.y = v12;
  v244.size.width = v14;
  v244.size.height = v16;
  v22 = CGRectGetWidth(v244);
  v245.origin.x = v10;
  v245.origin.y = v12;
  v245.size.width = v14;
  v245.size.height = v16;
  v23 = CGRectGetHeight(v245);
  if (v23 >= v22)
  {
    v23 = v22;
  }

  v24 = v23 - (v19 + v19);
  if (v24 >= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v3 traitCollection];
  [v26 displayScale];
  v28 = v27;

  v29 = QRCode.dotAdjustedWidth(with:scale:)(v25, v28);
  sub_100399D3C(&v229);
  v30 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v31 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v32 = [v3 traitCollection];
  [v32 displayScale];

  sub_1004BCD94();
  [v31 setFrame:*&v29];

  v33 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v33)
  {
    v34 = *&v3[v30];
    v35 = v33;
    [v34 frame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v45 = NSDirectionalEdgeInsets.init(edge:length:)(v44, v18);
    v49 = CGRect.outset(by:for:)(0, v45, v46, v47, v48, v37, v39, v41, v43);
LABEL_45:
    [v35 setFrame:v49];
  }

  v163 = *&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v164 = [v3 view];
  if (!v164)
  {
    __break(1u);
    goto LABEL_55;
  }

  v165 = v164;
  [v164 bounds];
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;

  [v163 setFrame:{v167, v169, v171, v173}];
  v174 = &v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v175 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v176 = CGRectGetWidth(v253) * 0.3;
    if (qword_100609D28 != -1)
    {
      swift_once();
    }

    v177 = *&qword_100619248;
    if (*&qword_100619248 < v176)
    {
      v176 = *&qword_100619248;
    }

    v178 = *&v3[v175];
    sub_1004BCD84(0.0, 0.0, v176, v176);
    v180 = v179;
    v182 = v181;
    v184 = v183;
    v186 = v185;

    v187 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v180, v182, v184, v186}];
    CGAffineTransformMakeScale(&v225, v176 / v177, v176 / v177);
    a = v225.a;
    b = v225.b;
    c = v225.c;
    d = v225.d;
    tx = v225.tx;
    ty = v225.ty;
    v194 = *(v174 + 1);
    v227[0] = *v174;
    v227[1] = v194;
    v228 = *(v174 + 4);
    sub_100003ABC(&qword_100610540, &qword_1004E4A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004D9C70;
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v232.x = 12.0;
    v232.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v232, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v233.x = 12.0;
    v233.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v233, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v234.y = 6.0;
    v234.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v234, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v235.y = 0.0;
    v235.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v235, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v236.y = 0.0;
    v236.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v236, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v237.x = 85.0;
    v237.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v237, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v238.x = 36.0;
    v238.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v238, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v239.x = 36.0;
    v239.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v239, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v240.x = 0.0;
    v240.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v240, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v241.x = 0.0;
    v241.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v241, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v242.x = 12.0;
    v242.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v242, &v225);
    v225.a = a;
    v225.b = b;
    v225.c = c;
    v225.d = d;
    v225.tx = tx;
    v225.ty = ty;
    v243.x = 12.0;
    v243.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v243, &v225);
    v196 = *&v3[v187];
    sub_100399C60(v227, &v225);
    [v196 frame];
    v198 = v197;
    v200 = v199;
    v202 = v201;
    v204 = v203;
    [*&v3[v175] bounds];
    v209 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v198, v200, v202, v204, v205, v206, v207, v208);
    sub_100399D3C(v227);
    swift_setDeallocating();
    v210 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v3[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v209];
    v211 = *&v3[v210];
    v212 = *&v3[v175];
    v213 = v211;
    [v212 bounds];
    [v213 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_100399DF0;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000D6C80;
  v11 = &unk_1005C4EB8;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_100399E30;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100398C10;
  v11 = &unk_1005C4F08;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double sub_100398B34(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

double sub_100398C10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *sub_100398E1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  v14 = [objc_allocWithZone(CALayer) init];
  *&v5[v13] = v14;
  v16 = type metadata accessor for QRCodeOverlayViewController.ContainerView(v14, v15);
  v38.receiver = v5;
  v38.super_class = v16;
  v17 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v19 = *&v17[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v20 = v17;
  [v20 addSubview:v19];
  v21 = objc_opt_self();
  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004C51F0;
  v23 = [*&v17[v18] leadingAnchor];
  v24 = [v20 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [*&v17[v18] trailingAnchor];
  v27 = [v20 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27];
  *(v22 + 40) = v28;
  v29 = [*&v17[v18] topAnchor];
  v30 = [v20 topAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v22 + 48) = v31;
  v32 = [*&v17[v18] bottomAnchor];
  v33 = [v20 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  sub_100009130(0, qword_10060B7B0, NSLayoutConstraint_ptr);
  isa = sub_1004BC284().super.isa;

  [v21 activateConstraints:isa];

  sub_100009130(0, &unk_1006110B0, UITraitCollection_ptr);
  sub_1004BCB94();
  v37[3] = v16;
  v37[0] = v20;
  sub_1004BCF14();
  swift_unknownObjectRelease();

  sub_100004C6C(v37);
  return v20;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView(v0, v1);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  sub_100009130(0, &qword_100610548, CATransaction_ptr);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static CATransaction.performWithoutAnimation(_:)(sub_100399E48, v3);
}

void sub_1003992A4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_1003993D8()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_100399604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_1004B9184();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView(v11, v12);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = *&v13[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v13[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v15 = a4;

  [*&v13[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v15];

  if ((a3 & 1) == 0)
  {
    v16 = sub_1004BC994();
    v17 = sub_1004B9904();
    sub_1004B7F84(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();
    v18 = j__swift_release(a2);
    (*(v8 + 8))(v10, v7, v18);
    a2 = v23[1];
  }

  if (a2)
  {
    sub_100009130(0, &qword_10060DF30, UIColor_ptr);

    v19 = sub_1004BCF54();
    v20 = *&v13[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v13[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
    v21 = v19;

    sub_1003993D8();
  }

  return v13;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_1004B9184();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = sub_1004BC994();
    v16 = sub_1004B9904();
    sub_1004B7F84(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004B9174();
    swift_getAtKeyPath();
    v17 = j__swift_release(a3);
    (*(v10 + 8))(v12, v9, v17);
    a3 = v21[1];
  }

  if (a3)
  {
    sub_100009130(0, &qword_10060DF30, UIColor_ptr);

    v18 = sub_1004BCF54();
    v19 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v18;
    v20 = v18;

    sub_1003993D8();
  }
}

uint64_t sub_100399B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10039A28C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100399B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10039A28C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100399BD0(uint64_t a1)
{
  sub_10039A28C();
  sub_1004B94B4();
  __break(1u);
}

id sub_100399BF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_100399CE0(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100399D90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100399DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100399DF8()
{

  return swift_deallocObject();
}

unint64_t sub_100399E5C()
{
  result = qword_100610550;
  if (!qword_100610550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610550);
  }

  return result;
}

uint64_t sub_100399EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100399F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100399F54()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView(v2, v4);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v5) = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v7 = sub_1004BBE24();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
  *(v0 + v6) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_100609D48 != -1)
  {
    swift_once();
  }

  v12 = [objc_opt_self() effectForBlurEffect:qword_100619268];
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  *(v0 + v11) = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v14) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v15) = [objc_allocWithZone(UIScrollView) init];
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v16) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_10039A1B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_10039A28C()
{
  result = qword_1006105B0;
  if (!qword_1006105B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006105B0);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = sub_100003ABC(&qword_1006105B8, &qword_1004E4C48);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = sub_100003ABC(&qword_1006105C0, &qword_1004E4C50);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(sub_100003ABC(&qword_1006105C8, &unk_1004E4C58) + 36));
  *v23 = sub_10039A4B0;
  v23[1] = v18;
  sub_10039A4B4(v26, v25);
  return sub_10039A4EC(v3, v25);
}

uint64_t sub_10039A524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  sub_100003ABC(&qword_10060C3C8, &qword_1004E2070);
  sub_1004BA424();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_100003ABC(&qword_1006105B8, &qword_1004E4C48);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = sub_100003ABC(&qword_1006105C0, &qword_1004E4C50);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(sub_100003ABC(&qword_1006105C8, &unk_1004E4C58) + 36));
  *v22 = sub_10039DAC4;
  v22[1] = v17;
  sub_10039A4B4(v34, v24);
  return sub_10039A4EC(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t sub_10039A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10039A7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_10039A854(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1004B94B4();
  __break(1u);
}

void sub_10039A8A4(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_1006105E8]];
      [v1 addSubview:*&v1[qword_1006105F0]];
    }

    else
    {
      [*&v1[qword_1006105E8] removeFromSuperview];
      [*&v1[qword_1006105F0] removeFromSuperview];
    }
  }
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10039A8A4(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_10039AA8C;
}

void sub_10039AA8C(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_10039AACC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_10039B2B0(v5);
  sub_10039B928();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_10039CA14(v8);
  sub_10039A4B4(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_10039CBE4(a1);

  return sub_10039CCB8(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_10039A4B4(v4, (v4 + 32));
  return sub_10039ACC0;
}

void sub_10039ACC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_10039A4B4((v2 + 8), (v2 + 40));
    sub_10039CBE4(v2 + 8);
    sub_10039CCB8((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_10039CBE4(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_10039CCB8(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_100609D58 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_isaMask & *v4;
  *(v4 + direct field offset for Radiosity.UIView.content) = a1;
  v10 = (v4 + direct field offset for Radiosity.UIView.specs);
  v11 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v11;
  v12 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v12;
  v13 = *(a3 + 16);
  *v10 = *a3;
  v10[1] = v13;
  v14 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v14;
  *(v4 + direct field offset for Radiosity.UIView.isRadiosityEnabled) = a2;
  if (*(a3 + 72))
  {
    v15 = objc_allocWithZone(UIView);
    v16 = a1;
    sub_10039A4B4(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    sub_10039A4B4(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + qword_1006105E8) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + qword_1006105F0) = v24;
  v27 = type metadata accessor for Radiosity.UIView(0, *(v9 + 80), v25, v26);
  v34.receiver = v4;
  v34.super_class = v27;
  v28 = v24;
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview:{v22, v34.receiver, v34.super_class}];
  if (a2)
  {
    [v29 addSubview:v23];
    [v29 addSubview:v28];
  }

  [v29 bounds];
  [v22 setFrame:?];
  [v22 setAutoresizingMask:18];

  sub_10039B2B0(0);
  sub_10039B928();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  sub_10039BE2C(v31);
  sub_100003ABC(qword_10060CCB0, &unk_1004E4A50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1004C50A0;
  *(v32 + 32) = sub_1004B8364();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1004BCF24();

  swift_unknownObjectRelease();

  sub_10039CCB8(a3);

  return v29;
}

double sub_10039B190(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v3 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v2) + 0x50), v0, v1);
  v4.receiver = v2;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  sub_10039B2B0(0);
  sub_10039B928();
}

void sub_10039B254(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_10039B29C(uint64_t a1)
{
  v2 = *(v1 + qword_1006105E8);
  *(v1 + qword_1006105E8) = a1;
}

void sub_10039B2B0(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_1006105E8] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_1006105E8];
    *&v2[qword_1006105E8] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_10039A4B4(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_10039CCB8(&v50);
  v23 = *&v2[qword_1006105E8];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_1006105E8] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_1006105E8] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_1006105E8] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_1006105E8] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_10039DA88(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_10039CFDC(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_1006105E8] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_10039DA88(&v56, v48);
    v44 = sub_10039B7B4(v42, v43, v2);
    sub_10039CFDC(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_10039B7B4(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, *(v18 + 8));
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_10039B928()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v47 = *(v2 + 4);
  v48 = v3;
  v4 = *(v2 + 7);
  v49 = *(v2 + 6);
  v50 = v4;
  v5 = *(v2 + 1);
  v43 = *v2;
  v44 = v5;
  v6 = *(v2 + 3);
  v45 = *(v2 + 2);
  v46 = v6;
  sub_10039A4B4(&v43, &rect[3]);
  [v1 bounds];
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  *&rect[3] = v43;
  *&rect[5] = v44;
  *&rect[7] = v45;
  v52 = CGRectApplyAffineTransform(v51, &rect[3]);
  v11 = v52.origin.x;
  rect[0] = *&v52.origin.x;
  rect[2] = *&v52.origin.y;
  v12 = v52.size.width;
  v13 = v52.size.height;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v52));
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v14 = CGRectGetWidth(v53);
  v54.origin.x = v11;
  *&v54.origin.y = rect[2];
  v54.size.width = v12;
  v54.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v54)) * 0.5;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v16 = CGRectGetHeight(v55);
  *&v56.origin.x = rect[0];
  *&v56.origin.y = rect[2];
  v56.size.width = v12;
  v56.size.height = v13;
  v17 = CGRectGetHeight(v56);
  sub_10039CCB8(&v43);
  v18 = *&v1[qword_1006105F0];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_100003ABC(&qword_10060B7A0, &unk_1004E4A40);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C50C0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_1004BC5A4().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v29 = sub_10039DA3C(0, v28);
  *(v21 + 56) = v29;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v30 = kCAFilterGaussianBlur;
  v31 = objc_allocWithZone(CAFilter);

  v32 = [v31 initWithType:v30];
  v33 = sub_1004BC5A4().super.super.isa;
  [v32 setValue:v33 forKey:kCAFilterInputRadius];

  v34 = sub_1004BC3D4().super.super.isa;
  [v32 setValue:v34 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v29;
  *(v21 + 64) = v32;
  v35 = sub_1004BC284().super.isa;

  [rect[2] setFilters:v35];

  v36 = [v18 layer];
  v37 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v38 = *(v37 + 11);

  v39 = [v1 traitCollection];
  v40 = [v39 userInterfaceStyle];

  LODWORD(v16) = v38(v40);

  LODWORD(v41) = LODWORD(v16);
  [v36 setOpacity:v41];
}

void sub_10039BE2C(uint64_t a1)
{
  sub_10039B928();
  v3 = [*(v1 + qword_1006105E8) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_1006105F0) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10039BF9C(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_10039CCB8(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_10002F518(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_10003CC4C(*(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_1004BA414();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  sub_10039A4B4(a1, v14);
  sub_1004BA124();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return sub_10039CF90(v14);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_10039A4B4(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_10039C3A4()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_100619290 = v5;
  qword_1006192A0 = *&tx;
  unk_1006192A8 = *&ty;
  dword_1006192B0 = 1050253722;
  qword_1006192B8 = v3;
  unk_1006192C0 = 0x402E000000000000;
  qword_1006192C8 = 0;
  unk_1006192D0 = 0;
  qword_1006192D8 = sub_10039C4A4;
  unk_1006192E0 = 0;
  qword_1006192E8 = sub_10039C4CC;
  unk_1006192F0 = 0;
  qword_1006192F8 = 0x4040000000000000;
  return result;
}

float sub_10039C4A4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_1004E5034[a1];
  }
}

double sub_10039C4CC(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_1004E5040[a1];
  }
}

__n128 sub_10039C514()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_100619310 = v5;
  qword_100619320 = *&tx;
  unk_100619328 = *&ty;
  dword_100619330 = 1053609165;
  qword_100619338 = v3;
  unk_100619340 = 0x402E000000000000;
  qword_100619348 = 0;
  unk_100619350 = 0;
  qword_100619358 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_100619360 = 0;
  qword_100619368 = sub_10039C610;
  unk_100619370 = 0;
  qword_100619378 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_100609D60 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_10039C68C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_10039A4B4(a2, v5);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_10039A4B4(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_10039A4B4(v5, v19);
    sub_10039CFDC(&v28);
    v10 = sub_10039CFD0;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_10039C7FC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v14 = objc_opt_self();
  v15 = [v14 bezierPathWithRoundedRect:a1 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, a8, a8}];
  v16 = [v15 CGPath];

  v17 = [v14 bezierPathWithRoundedRect:a3 cornerRadius:{a4, a5, a6, a8}];
  sub_1004BC924();
  v20 = [v14 bezierPathWithRoundedRect:sub_100226A94(a3 cornerRadius:{a4, a5, a6, v18, v19)}];
  CGPathCreateMutable();
  v21 = [v17 CGPath];
  sub_1004BCA14();

  v22 = [v20 CGPath];
  sub_1004BCA14();

  return v16;
}

_BYTE *sub_10039C9B8(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_10039CA14@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_10039CA7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1004B8C74();
  v11 = type metadata accessor for Radiosity.UIView(0, v8, v9, v10);
  (*(v5 + 16))(v7, v2, v4);
  v12 = sub_1004B8C44();
  v13 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v14 = *(v2 + v13 + 80);
  v21[4] = *(v2 + v13 + 64);
  v21[5] = v14;
  v15 = *(v2 + v13 + 112);
  v21[6] = *(v2 + v13 + 96);
  v21[7] = v15;
  v16 = *(v2 + v13 + 16);
  v21[0] = *(v2 + v13);
  v21[1] = v16;
  v17 = *(v2 + v13 + 48);
  v21[2] = *(v2 + v13 + 32);
  v21[3] = v17;
  sub_10039A4B4(v21, v20);
  v18 = objc_allocWithZone(v11);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v12, v3, v21);
}

double sub_10039CBE4(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_10039A4B4(v14, v13);
  sub_10039A4B4(a1, v13);
  sub_10039CCB8(v21);
  sub_10039AACC(v14);
  sub_10039CCB8(v14);
  return result;
}

void sub_10039CD14(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_1004B8C64();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v14[4] = v8[4];
  v14[5] = v9;
  v10 = v8[7];
  v14[6] = v8[6];
  v14[7] = v10;
  v11 = v8[1];
  v14[0] = *v8;
  v14[1] = v11;
  v12 = v8[3];
  v14[2] = v8[2];
  v14[3] = v12;
  sub_10039A4B4(v14, v13);
  sub_10039CBE4(v14);
  sub_10039CCB8(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_10039CEA8(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_10039BE2C(v2);
}

uint64_t sub_10039D038(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10039D050(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10039D07C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10039D2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10039D2F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039D348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10039D3C0()
{
  result = qword_100610678;
  if (!qword_100610678)
  {
    sub_100003B68(&qword_1006105C8, &unk_1004E4C58);
    sub_1000206D4(&qword_100610680, &qword_1006105B8, &qword_1004E4C48, &unk_1004E4FD8);
    sub_1000206D4(&qword_100610688, &qword_100610690, &qword_1004E4EC0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610678);
  }

  return result;
}

uint64_t sub_10039D4A4(void *a1)
{
  sub_1004B8D64();
  sub_10039D508();
  return swift_getWitnessTable();
}

unint64_t sub_10039D508()
{
  result = qword_100610698[0];
  if (!qword_100610698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100610698);
  }

  return result;
}

uint64_t sub_10039D55C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039D5E4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_10039D738(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_10039D984()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10039DA3C(uint64_t a1, uint64_t a2)
{
  result = qword_10060B7A8;
  if (!qword_10060B7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060B7A8);
  }

  return result;
}

uint64_t sub_10039DAEC(uint64_t a1)
{
  sub_1004B87C4();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004B8F64();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

double sub_10039DC78@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10039DCFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610730, &qword_1004E50A8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610730, &qword_1004E50A8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_10039E1DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

uint64_t sub_10039E260(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610748, &qword_1004E5100);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100610740, &qword_1004E50F8);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610748, &qword_1004E5100);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100610740, &qword_1004E50F8);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_10039E724(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

uint64_t sub_10039E7A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1004B85B4();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610758, &qword_1004E5150);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610758, &qword_1004E5150);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D4114;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D3DD4;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t sub_10039F054(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100610768, &qword_1004E51A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_100003ABC(&qword_100610D60, &qword_1004E4540);
  sub_1004B8564();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100003ABC(&qword_10060A770, &qword_1004DBB28);
  sub_1004B8564();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004B8564();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004B8564();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_1004B8564();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004B8564();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004B85B4();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_100003ABC(&qword_100610D60, &qword_1004E4540);
  sub_1004B8564();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100003ABC(&qword_10060A770, &qword_1004DBB28);
  sub_1004B8564();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_1004B8564();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_1004B8564();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_1004B8564();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_1004B8564();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_1004B85B4();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100003ABC(&qword_100610740, &qword_1004E50F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100003ABC(&qword_100610728, &qword_1004E50A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100003ABC(&qword_100610740, &qword_1004E50F8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100003ABC(&qword_10060EBF0, &qword_1004E2490);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100003ABC(&qword_10060D2F0, &unk_1004E6370);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_10039FF24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model(uint64_t a1)
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_1004B8B74();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_1004B8B84();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Reactions.StackView(0);
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  sub_100003ABC(&qword_10060DE10, &qword_1004DA108);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E70, &unk_1004DEE80);
  swift_storeEnumTagMultiPayload();
  v8 = v5[8];
  *(a3 + v8) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a3 = sub_1004B8B74();
  *(a3 + 8) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  sub_100003ABC(&qword_100610780, &qword_1004E5280);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_100610788, &qword_1004E5288);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  sub_100003ABC(&qword_10060AA68, &qword_1004DC238);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = sub_1004B8C94();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BA7E4();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v16 = __chkstk_darwin();
  v17 = *(v14 + 104);
  v105 = &v83 - v18;
  v17(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v19 = v107;
  v20 = *(v1 + 16);
  if (v20 < v107)
  {
    v19 = *(v1 + 16);
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v90 = v1;
    v88 = *(v1 + 48);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    KeyPath = v22;
    v85 = v12;
    v87 = v20;
    sub_100308A40(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    v86(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = sub_1004BCCE4();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    v86(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = sub_1004BCCE4();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v110 = v87;
    *(&v110 + 1) = v34;
    *&v111 = v24;
    *(&v111 + 1) = v45;
    LODWORD(v42) = v88;
    v112 = v88;
    *v39 = sub_1004B9204();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(sub_100003ABC(&qword_100610790, &unk_1004E5290) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107 = 0;
    *(&v107 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    sub_1003A2668(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v111;
    *(v54 + 16) = v110;
    *(v54 + 32) = v55;
    *(v54 + 48) = v112;
    sub_1003A2968(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    sub_100003ABC(&qword_100610798, &qword_1004E52B8);
    sub_100003ABC(&qword_1006107A0, &qword_1004E52C0);
    sub_1003A2AB4();
    sub_1003A2C18();
    v56 = v99;
    sub_1004BA654();
    v57 = sub_1004BA754();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = sub_100003ABC(&qword_1006107E0, &qword_1004E52D8);
    sub_1003A17C4(&v110, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    sub_10000F778(v58, v92, &qword_100610780, &qword_1004E5280);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = sub_100003ABC(&qword_1006107E8, &qword_1004E52E0);
    v63(v66 + *(v67 + 48), v64, v61);
    sub_10000F778(v65, v66 + *(v67 + 64), &qword_100610780, &qword_1004E5280);
    sub_100007214(v58, &qword_100610780, &qword_1004E5280);
    v68 = *(v62 + 8);
    v68(v56, v61);
    sub_100007214(v65, &qword_100610780, &qword_1004E5280);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      sub_1004BA754();
      sub_1004B8994();
      v69 = sub_100003ABC(&qword_1006107F0, &qword_1004E52E8);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v108;
      *v71 = v107;
      v71[1] = v72;
      v71[2] = v109;
      v73 = sub_1004B9964();
      sub_1004B86C4();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(sub_100003ABC(&qword_1006107F8, &qword_1004E52F0) + 36);
      *v82 = v73;
      *(v82 + 8) = v75;
      *(v82 + 16) = v77;
      *(v82 + 24) = v79;
      *(v82 + 32) = v81;
      *(v82 + 40) = 0;
      (*(v103 + 8))(v105, v104);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003A0CD8@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = sub_1004B8D94();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003ABC(&qword_100610AD0, &qword_1004E5470);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = sub_1004BA754();
  a4[1] = v16;
  v17 = sub_100003ABC(&qword_100610B78, &qword_1004E5518);
  sub_1003A0FA4(a2, v22, a4 + *(v17 + 44));
  sub_1004BA8B4();
  sub_1004B8DA4();
  sub_1004BA7C4();
  v18 = sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  sub_1004B8784();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1004B8A04();
  (*(v11 + 8))(v15, v10);
  result = sub_100003ABC(&qword_1006107A0, &qword_1004E52C0);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1003A0FA4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = sub_100003ABC(&qword_100610B80, &qword_1004E5520) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100003ABC(&qword_100610AE0, &qword_1004E5480) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = sub_1004BA294();
  sub_1004BA754();
  sub_1004B8994();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = sub_1004BA2B4();
  v14 = &v11[*(v8 + 44)];
  v15 = *(sub_100003ABC(&qword_100610AE8, &qword_1004E5488) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_1004BA7E4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(sub_100003ABC(&qword_100610AF0, &qword_1004E5490) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = sub_1004BA294();
  sub_1004BA754();
  sub_1004B8994();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  sub_1003A140C(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = sub_100003ABC(&qword_100610AF8, &qword_1004E54C8);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(sub_100003ABC(&qword_100610B00, &qword_1004E54D0) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  sub_10000F778(v11, v26, &qword_100610AE0, &qword_1004E5480);
  v28 = v42;
  sub_10000F778(v7, v42, &qword_100610B80, &qword_1004E5520);
  v29 = v43;
  sub_10000F778(v26, v43, &qword_100610AE0, &qword_1004E5480);
  v30 = sub_100003ABC(&qword_100610B88, &qword_1004E5528);
  sub_10000F778(v28, v29 + *(v30 + 48), &qword_100610B80, &qword_1004E5520);
  sub_100007214(v7, &qword_100610B80, &qword_1004E5520);
  sub_100007214(v11, &qword_100610AE0, &qword_1004E5480);
  sub_100007214(v28, &qword_100610B80, &qword_1004E5520);
  return sub_100007214(v26, &qword_100610AE0, &qword_1004E5480);
}

uint64_t sub_1003A140C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_100003ABC(&qword_100610B20, &qword_1004E54E8) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = sub_1004B92F4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004B87C4();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  sub_100308EC0(v12);
  sub_100308E70(v8);
  v13 = *(v3 + 56);
  v14 = v10;
  v15 = v21;
  (*(v14 + 32))(v21, v12, v9);
  (*(v6 + 32))(v15 + v13, v8, v5);
  v16 = (*(v14 + 88))(v15, v9);
  if (v16 == enum case for ColorScheme.light(_:))
  {
    if ((*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = [objc_opt_self() secondarySystemFillColor];
      v23 = sub_1004BA304();
LABEL_7:
      *v22 = sub_1004B89A4();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = sub_1004B9634();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = sub_1004B9614();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = sub_1004BA304();
  }

  *v22 = sub_1004B89A4();
  return sub_100007214(v15, &qword_100610B20, &qword_1004E54E8);
}

uint64_t sub_1003A17C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v89 = a4;
  v76 = sub_1004B8D94();
  v73 = *(v76 - 8);
  __chkstk_darwin();
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_100610AD0, &qword_1004E5470);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v8;
  v9 = sub_1004BA334();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin();
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DF60, &qword_1004DFD10);
  __chkstk_darwin();
  v83 = &v66 - v11;
  v84 = sub_100003ABC(&qword_100610AD8, &qword_1004E5478) - 8;
  __chkstk_darwin();
  v88 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = sub_100003ABC(&qword_100610AE0, &qword_1004E5480) - 8;
  __chkstk_darwin();
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v66 - v17;
  v87 = sub_1004BA294();
  v19 = *(a1 + 8);
  sub_1004BA754();
  sub_1004B8994();
  v20 = v118;
  LODWORD(v82) = v119;
  v81 = v120;
  LODWORD(v79) = v121;
  v77 = v123;
  *&v78 = v122;
  v21 = sub_1004BA2B4();
  v22 = &v18[*(v15 + 44)];
  v23 = *(sub_100003ABC(&qword_100610AE8, &qword_1004E5488) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_1004BA7E4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(sub_100003ABC(&qword_100610AF0, &qword_1004E5490) + 56)) = 256;
  *v18 = v87;
  *(v18 + 1) = v20;
  v18[16] = v82;
  *(v18 + 3) = v81;
  v18[32] = v79;
  v27 = v77;
  *(v18 + 5) = v78;
  *(v18 + 6) = v27;
  v87 = v18;
  sub_1003A230C(&v124);
  v81 = *(&v126 + 1);
  v82 = v126;
  LOBYTE(v22) = v127;
  v28 = sub_1004B9A64();
  v78 = v125;
  v79 = v124;
  v29 = v83;
  (*(*(v28 - 8) + 56))(v83, 1, 1, v28);
  v30 = sub_1004B9AB4();
  sub_100007214(v29, &qword_10060DF60, &qword_1004DFD10);
  KeyPath = swift_getKeyPath();
  LOBYTE(v124) = v22;
  sub_1004BA754();
  v83 = v19;
  sub_1004B8994();
  sub_1003A140C(&v124);
  v32 = v124;
  v33 = &v14[*(v84 + 44)];
  v34 = sub_100003ABC(&qword_100610AF8, &qword_1004E54C8);
  (*(v26 + 16))(&v33[*(v34 + 36)], v86, v25);
  *v33 = v32;
  *&v33[*(sub_100003ABC(&qword_100610B00, &qword_1004E54D0) + 56)] = 256;
  v35 = v78;
  *v14 = v79;
  *(v14 + 1) = v35;
  v36 = v81;
  *(v14 + 4) = v82;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v134[1];
  *(v14 + 72) = v134[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v134[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v39 = v124;
  if (!v124)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v124 != 1)
  {

LABEL_5:
    sub_1003A3758(&v124);
    goto LABEL_6;
  }

  v40 = v39;
  sub_1004BA314();
  v42 = v67;
  v41 = v68;
  v43 = v69;
  (*(v68 + 104))(v67, enum case for Image.ResizingMode.stretch(_:), v69);
  v86 = sub_1004BA384();

  (*(v41 + 8))(v42, v43);
  v44 = sub_1004BA754();
  v84 = v45;
  v85 = v44;
  sub_1004BA284();
  v82 = sub_1004BA2C4();

  sub_1004BA8B4();
  v46 = v70;
  sub_1004B8DA4();
  sub_1004BA7C4();
  v47 = sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v72;
  v49 = v76;
  sub_1004B8784();

  (*(v73 + 8))(v46, v49);
  v50 = v74;
  v51 = v75;
  (*(v74 + 16))(v71, v48, v75);
  *&v124 = v49;
  *(&v124 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = sub_1004B8A04();
  (*(v50 + 8))(v48, v51);
  sub_1004BA754();
  sub_1004B8994();

  *(v117 + 8) = v101;
  v111 = v86;
  LOWORD(v112) = 257;
  *(&v112 + 1) = v85;
  *&v113 = v84;
  *(&v113 + 1) = v82;
  *&v114 = 0x3FE0000000000000;
  BYTE8(v114) = 0;
  v115 = 0uLL;
  LOBYTE(v116) = 2;
  *(&v116 + 1) = 0x3FF0000000000000;
  *&v117[0] = v52;
  *(&v117[1] + 8) = v102;
  *(&v117[2] + 8) = v103;
  v53.location = &v111;
  CFRange.init(_:)(v53);
  v130 = v117[0];
  v131 = v117[1];
  v132 = v117[2];
  v133 = *&v117[3];
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v124 = v111;
  v125 = v112;
LABEL_6:
  v54 = v87;
  v55 = v90;
  sub_10000F778(v87, v90, &qword_100610AE0, &qword_1004E5480);
  v56 = v88;
  sub_10000F778(v38, v88, &qword_100610AD8, &qword_1004E5478);
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  v91 = v124;
  v92 = v125;
  v57 = v55;
  v58 = v89;
  sub_10000F778(v57, v89, &qword_100610AE0, &qword_1004E5480);
  v59 = sub_100003ABC(&qword_100610B08, &qword_1004E54D8);
  sub_10000F778(v56, v58 + *(v59 + 48), &qword_100610AD8, &qword_1004E5478);
  v60 = v58 + *(v59 + 64);
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v105 = v95;
  v106 = v96;
  v103 = v93;
  v104 = v94;
  v101 = v91;
  v102 = v92;
  sub_10000F778(&v101, &v111, &qword_100610B10, &qword_1004E54E0);
  sub_100007214(v38, &qword_100610AD8, &qword_1004E5478);
  sub_100007214(v54, &qword_100610AE0, &qword_1004E5480);
  v61 = v108;
  *(v60 + 96) = v107;
  *(v60 + 112) = v61;
  *(v60 + 128) = v109;
  *(v60 + 144) = v110;
  v62 = v104;
  *(v60 + 32) = v103;
  *(v60 + 48) = v62;
  v63 = v106;
  *(v60 + 64) = v105;
  *(v60 + 80) = v63;
  v64 = v102;
  *v60 = v101;
  *(v60 + 16) = v64;
  v117[0] = v97;
  v117[1] = v98;
  v117[2] = v99;
  *&v117[3] = v100;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v116 = v96;
  v111 = v91;
  v112 = v92;
  sub_100007214(&v111, &qword_100610B10, &qword_1004E54E0);
  sub_100007214(v56, &qword_100610AD8, &qword_1004E5478);
  return sub_100007214(v90, &qword_100610AE0, &qword_1004E5480);
}

double sub_1003A230C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1004B8D94();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (*(&v35 + 1))
  {
    sub_1002C4D1C();
    v9 = sub_1004B9D84();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_1004BA7C4();
    sub_1004BA8B4();
    sub_1004B8DA4();
    (*(v4 + 16))(v6, v8, v3);
    sub_1003A3778(&qword_100610B18, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
    v17 = sub_1004B8A04();
    (*(v4 + 8))(v8, v3);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_1004BA344();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (v35 == 1)
    {
      v19 = sub_1004BA2D4();
    }

    else
    {
      v19 = sub_1004BA234();
    }

    v20 = v19;
    v21 = sub_1004B9B14();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_100003ABC(&qword_100610B28, &qword_1004E54F0);
  sub_100003ABC(&qword_100610B30, &qword_1004E54F8);
  sub_1003A37C0();
  sub_1003A38A4();
  sub_1004B9514();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a2 = v35;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1003A2668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A26CC()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_1004BA7E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  sub_100003ABC(&qword_10060DE10, &qword_1004DA108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004B87C4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100003ABC(&unk_100609E70, &unk_1004DEE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004B92F4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_100003ABC(&unk_10060D340, &qword_1004D9F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1004B8C94();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1003A2968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A29CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1004BA7E4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1003A0CD8(v1 + v4, v7, a1);
}

unint64_t sub_1003A2AB4()
{
  result = qword_1006107A8;
  if (!qword_1006107A8)
  {
    sub_100003B68(&qword_100610798, &qword_1004E52B8);
    sub_1003A2B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107A8);
  }

  return result;
}

unint64_t sub_1003A2B38()
{
  result = qword_1006107B0;
  if (!qword_1006107B0)
  {
    sub_100003B68(&qword_1006107B8, &qword_1004E52C8);
    sub_1003A2BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107B0);
  }

  return result;
}

unint64_t sub_1003A2BC4()
{
  result = qword_1006107C0;
  if (!qword_1006107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107C0);
  }

  return result;
}

unint64_t sub_1003A2C18()
{
  result = qword_1006107C8;
  if (!qword_1006107C8)
  {
    sub_100003B68(&qword_1006107A0, &qword_1004E52C0);
    sub_1000206D4(&qword_1006107D0, &qword_1006107D8, &qword_1004E52D0, &protocol conformance descriptor for ZStack<A>);
    sub_1000206D4(&qword_10060F4C8, &qword_10060F4D0, &unk_1004E2F30, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006107C8);
  }

  return result;
}

unint64_t sub_1003A2D1C()
{
  result = qword_100610800;
  if (!qword_100610800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610800);
  }

  return result;
}

uint64_t sub_1003A2DB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100003ABC(&qword_10060DB70, &qword_1004E0DD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1003A2F58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100003ABC(&qword_10060DB70, &qword_1004E0DD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C7A0, &qword_1004DF1F8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100003ABC(&qword_10060C1D8, &qword_1004DEB00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_1003A30E8(uint64_t a1)
{
  sub_1003A31F8(319);
  if (v1 <= 0x3F)
  {
    sub_1003A328C(319, &qword_10060DBE8, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_1003A328C(319, &unk_10060C818, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_1003A328C(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003A31F8(uint64_t a1)
{
  if (!qword_100610870)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_1003A3778(&qword_100610778, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
    v1 = sub_1004B8BA4();
    if (!v2)
    {
      atomic_store(v1, &qword_100610870);
    }
  }
}

void sub_1003A328C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004B8804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003A32E8(uint64_t a1)
{
  sub_100214418(319, &qword_1006108E8, &qword_100610D60, &qword_1004E4540);
  if (v1 <= 0x3F)
  {
    sub_1003A3484(319, &unk_1006108F0, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_100214418(319, &unk_10060ED30, &qword_10060A770, &qword_1004DBB28);
      if (v3 <= 0x3F)
      {
        sub_1003A3484(319, &qword_10060D468, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1003A3484(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004B85D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003A34D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003A3514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003A3580()
{
  result = qword_100610AA0;
  if (!qword_100610AA0)
  {
    sub_100003B68(&qword_100610AA8, &qword_1004E5460);
    sub_1003A360C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AA0);
  }

  return result;
}

unint64_t sub_1003A360C()
{
  result = qword_100610AB0;
  if (!qword_100610AB0)
  {
    sub_100003B68(&qword_1006107F8, &qword_1004E52F0);
    sub_1003A3698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AB0);
  }

  return result;
}

unint64_t sub_1003A3698()
{
  result = qword_100610AB8;
  if (!qword_100610AB8)
  {
    sub_100003B68(&qword_1006107F0, &qword_1004E52E8);
    sub_1000206D4(&qword_100610AC0, &qword_100610AC8, &qword_1004E5468, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610AB8);
  }

  return result;
}

double sub_1003A3758(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1003A3778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003A37C0()
{
  result = qword_100610B38;
  if (!qword_100610B38)
  {
    sub_100003B68(&qword_100610B28, &qword_1004E54F0);
    sub_1000206D4(&qword_100610B40, &qword_100610B48, &qword_1004E5500, &protocol conformance descriptor for _AnimationView<A>);
    sub_1000206D4(&qword_10060F4C8, &qword_10060F4D0, &unk_1004E2F30, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B38);
  }

  return result;
}

unint64_t sub_1003A38A4()
{
  result = qword_100610B50;
  if (!qword_100610B50)
  {
    sub_100003B68(&qword_100610B30, &qword_1004E54F8);
    sub_1003A395C();
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338, &qword_1004DFD70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B50);
  }

  return result;
}

unint64_t sub_1003A395C()
{
  result = qword_100610B58;
  if (!qword_100610B58)
  {
    sub_100003B68(&qword_100610B60, &qword_1004E5508);
    sub_1000206D4(&qword_100610B68, &qword_100610B70, &qword_1004E5510, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610B58);
  }

  return result;
}

id sub_1003A3AFC(uint64_t a1, uint64_t a2)
{
  sub_1003A7DE4(a1, v16);
  v6 = v17;
  if (v17)
  {
    sub_100009178(v16, v17);
    v7 = *(v6 - 8);
    v8 = __chkstk_darwin();
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1004BD9A4();
    (*(v7 + 8))(v10, v6);
    sub_100004C6C(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SliderView.PanGestureRecognizer(0, v5);
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithTarget:action:", v11, a2);
  swift_unknownObjectRelease();
  sub_1002BE048(a1);
  return v13;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_100609D68 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_100609D70 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_1003A3E1C()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_100609D78 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100609D78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_100609D80 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_100609D88 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_1003A4054()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006193E0 = result;
  return result;
}

double sub_1003A40A8()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_1006193E8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v5 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer(0 a3))];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1, __n128 a2, uint64_t a3))(uint64_t *a1)
{
  a1[1] = v3;
  *a1 = SliderView.panRecognizer.getter(a2, a1, a3);
  return sub_1003A41E8;
}

void sub_1003A41E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.elapsedTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A44F8;
}

void sub_1003A44F8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

uint64_t (*SliderView.remainingTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A47D4;
}

void sub_1003A47D4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.trackingColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_1003A4AAC;
}

void sub_1003A4AAC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v7 = SliderView.panRecognizer.getter(v6, v4, v5);
  [v7 setEnabled:*(v1 + v3)];
}

uint64_t (*SliderView.isEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1003A4D34;
}

void sub_1003A4D34(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = v3[3];
    v8 = v3[4];
    v9 = SliderView.panRecognizer.getter(v6, v4, v5);
    [v9 setEnabled:*(v7 + v8)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_1003A759C();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1003A4FB0;
}

void sub_1003A4FB0(uint64_t *a1, char a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(v4 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v5, v6);
    goto LABEL_3;
  }

  v7 = *(v4 + 40) + *(v4 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v5;
  *(v7 + 8) = v6;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v8 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v4 + 40) + *(v4 + 48);
  sub_1003A759C();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *(v4 + 40);
    v13 = *&v12[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v13)
    {
      v14 = *&v12[*(v4 + 48)];
      v15 = v13;
      [v12 bounds];
      [v15 setConstant:v14 * CGRectGetWidth(v17)];
    }
  }

LABEL_3:

  free(v4);
}

uint64_t sub_1003A516C(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_1003A51F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SliderView(a1, a2);
  return objc_msgSendSuper2(&v4, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SliderView(a1, a2);
  objc_msgSendSuper2(&v5, "setSemanticContentAttribute:", a1);
  return [*&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v2, "semanticContentAttribute")}];
}

char *sub_1003A5430(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1004BCE94();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v15 = &v98 - v14;
  v16 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  v18 = UIView.forAutolayout.getter();

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v23 = [objc_allocWithZone(UIView) init];
  v24 = UIView.forAutolayout.getter();

  *&v5[v22] = v24;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v25 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v25] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v26 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v27 = 0u;
  v27[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v28 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v28] = [objc_allocWithZone(UILayoutGuide) init];
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v30 = objc_opt_self();
  *&v5[v29] = [v30 whiteColor];
  v31 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v31] = [v30 systemFillColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  v33 = static UIColor.MusicTint.normal;
  *&v5[v32] = static UIColor.MusicTint.normal;
  v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v34] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v35 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v37 = 0;
  v37[1] = 0;
  v40 = type metadata accessor for SliderView(v38, v39);
  v99.receiver = v5;
  v99.super_class = v40;
  v41 = v33;
  v42 = objc_msgSendSuper2(&v99, "initWithFrame:", a1, a2, a3, a4);
  v45 = SliderView.panRecognizer.getter(v44, v42, v43);
  [v45 _setRequiresSystemGesturesToFail:0];

  v46 = *&v42[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v47 = v42;
  [v47 addGestureRecognizer:v46];
  v48 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v47 addLayoutGuide:*&v47[v48]];
  [v47 setExclusiveTouch:1];
  v49 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v50 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v47[v49] addArrangedSubview:*&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v47[v49] setAxis:0];
  v51 = qword_100609D68;
  v52 = *&v47[v49];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_1004BC8C4();
  sub_1004BCEA4();
  v54 = sub_1004BCEE4();
  (*(*(v54 - 8) + 56))(v15, 0, 1, v54);
  sub_1004BCEF4();

  v55 = [*&v47[v49] layer];
  [v55 setMasksToBounds:1];

  [v47 addSubview:*&v47[v49]];
  v56 = [*&v47[v50] widthAnchor];
  v57 = [v56 constraintEqualToConstant:0.0];

  v58 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v59 = *&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v57;

  v60 = [*&v47[v49] heightAnchor];
  v61 = [v60 constraintEqualToConstant:v53];

  v62 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v63 = *&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v47[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v61;

  sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
  result = swift_allocObject();
  *(result + 1) = xmmword_1004D9C80;
  v65 = *&v47[v58];
  if (v65)
  {
    v66 = result;
    *(result + 4) = v65;
    v67 = *&v47[v62];
    if (v67)
    {
      v98 = objc_opt_self();
      v66[5] = v67;
      v68 = *&v47[v49];
      v69 = v65;
      v70 = v67;
      v71 = [v68 leadingAnchor];
      v72 = [v47 leadingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v66[6] = v73;
      v74 = [*&v47[v49] trailingAnchor];
      v75 = [v47 trailingAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v66[7] = v76;
      v77 = [*&v47[v49] topAnchor];
      v78 = [v47 topAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v66[8] = v79;
      v80 = [*&v47[v49] bottomAnchor];
      v81 = [v47 bottomAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v66[9] = v82;
      v83 = [*&v47[v49] centerYAnchor];
      v84 = [v47 centerYAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v66[10] = v85;
      v86 = [*&v47[v48] leadingAnchor];
      v87 = [v47 leadingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v66[11] = v88;
      v89 = [*&v47[v48] trailingAnchor];
      v90 = [v47 trailingAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v66[12] = v91;
      v92 = [*&v47[v48] centerYAnchor];
      v93 = [v47 centerYAnchor];

      v94 = [v92 constraintEqualToAnchor:v93];
      v66[13] = v94;
      v95 = [*&v47[v48] heightAnchor];
      v96 = [v95 constraintEqualToConstant:v53];

      v66[14] = v96;
      sub_100009130(0, qword_10060B7B0, NSLayoutConstraint_ptr);
      isa = sub_1004BC284().super.isa;

      [v98 activateConstraints:isa];

      return v47;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SliderView(v0, v1);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v2 bounds];
  v3 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v13, *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v4 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v4)
    {
      v5 = v4;
      [v2 bounds];
      Width = CGRectGetWidth(v14);
      v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v5 setConstant:Width * *&v2[v7]];

      [v2 bounds];
      *v3 = v8;
      *(v3 + 1) = v9;
      *(v3 + 2) = v10;
      *(v3 + 3) = v11;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_1003A6E50();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1003A79AC;
        *(v12 + 24) = v8;
        aBlock[4] = sub_1000081FC;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        aBlock[3] = &unk_1005C5678;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003A6228(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v36 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v36] != 1)
      {
        return;
      }

      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v1[v36] = 0;
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = v1;
      *(v38 + 32) = sub_1003A7ED8;
      *(v38 + 40) = v37;
      v28 = objc_opt_self();
      v57 = sub_1003A8244;
      v58 = v38;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v29 = &unk_1005C5820;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v25 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v25] != 1)
      {
        return;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v1[v25] = 0;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = v1;
      *(v27 + 32) = sub_1003A7EBC;
      *(v27 + 40) = v26;
      v28 = objc_opt_self();
      v57 = sub_1003A7EC8;
      v58 = v27;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v29 = &unk_1005C57A8;
    }

    v55 = sub_1000D6C80;
    v56 = v29;
    v39 = _Block_copy(&aBlock);
    v40 = v1;

    [v28 _animateUsingSpringWithDuration:2 delay:v39 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v30 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v30)
    {
      goto LABEL_54;
    }

    [v30 constant];
    v31 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v31 = v32;
    v31[8] = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = v1;
    v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v34] == 1)
    {
      v35 = v1;

      return;
    }

    v1[v34] = 1;
    v41 = swift_allocObject();
    *(v41 + 16) = 1;
    *(v41 + 24) = v1;
    *(v41 + 32) = sub_1003A7EF8;
    *(v41 + 40) = v33;
    v42 = objc_opt_self();
    v57 = sub_1003A8244;
    v58 = v41;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000D6C80;
    v56 = &unk_1005C5898;
    v39 = _Block_copy(&aBlock);
    v43 = v1;

    [v42 _animateUsingSpringWithDuration:2 delay:v39 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v39);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  v6 = [a1 translationInView:v1];
  v8 = v10.n128_f64[0];
  v10.n128_f64[0] = fabs(v9);
  if (qword_100609D88 != -1)
  {
    v52 = v10.n128_u64[0];
    v6 = swift_once();
    v10.n128_u64[0] = v52;
  }

  if (v10.n128_f64[0] >= *&static SliderView.Specs.escapeHeight)
  {
    v44 = SliderView.panRecognizer.getter(v10, v6, v7);
    [v44 setState:4];

    return;
  }

  v11 = [v1 effectiveUserInterfaceLayoutDirection];
  v12 = -v8;
  if (v11 != 1)
  {
    v12 = v8;
  }

  v13 = v5 + v12;
  [v1 bounds];
  Width = CGRectGetWidth(v60);
  if (Width >= v13)
  {
    Width = v13;
  }

  if (Width < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = Width;
  }

  v16 = v1;
  [v1 bounds];
  v17 = v15 / CGRectGetWidth(v61);
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v59 = 14;
  v19 = sub_1002DD06C();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19) & 1) == 0)
  {
    v24 = 0;
    v20 = v16;
    goto LABEL_43;
  }

  v20 = v1;
  v21 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v21[1] & 1) == 0)
  {
    v22 = *v21;
    if (qword_100609D98 != -1)
    {
      swift_once();
    }

    v23 = v22 + *&qword_1006193E8;
    if (v22 - *&qword_1006193E8 <= v22 + *&qword_1006193E8)
    {
      if (v22 - *&qword_1006193E8 <= v18)
      {
        v24 = v18 <= v23;
        if (v18 <= v23)
        {
          v18 = v22;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v24 = 0;
LABEL_43:
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v18 != *&v20[v45])
  {
    v46 = v18 == 1.0;
    if (v18 == 0.0)
    {
      v46 = 1;
    }

    if (v46 || v24)
    {
      [*&v20[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v18);
  v47 = v16;
  v48 = &v16[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v49 = *v48;
  if (*v48)
  {
    v50 = *(v48 + 1);
    v51 = *&v47[v45];

    v49(1, v51);
    sub_10003CC4C(v49, v50);
  }
}

void sub_1003A693C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_10003CC4C(v2, v3);
  }
}

void sub_1003A69B0(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v5(a2 & 1, v8);
    sub_10003CC4C(v5, v6);
  }
}

void sub_1003A6AD0(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_1004BCE94();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      v16 = qword_100609D68;
      v14 = v12;
      if (v16 != -1)
      {
        swift_once();
      }

      v15 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = qword_100609D70;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v17 = *v15;
  [v14 setConstant:*v15];

  *v9 = v17 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_1004BC8C4();
  sub_1004BCEA4();
  v18 = sub_1004BCEE4();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_1004BCEF4();
  v19 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v19)
  {
    v20 = 0.0;
    if (a1)
    {
      v20 = 1.0;
    }

    v19 = [v19 setAlpha:v20];
  }

  if (a3)
  {
    a3(v19);
  }

  v21 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v22] == 1)
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v24 = &a2[v23];
  swift_beginAccess();
  [v21 setBackgroundColor:*v24];
  v25 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v25 setBackgroundColor:*&a2[v26]];
  sub_1003A6E50();
  [a2 layoutIfNeeded];
}

void sub_1003A6E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_1003A6E50();
    sub_100009130(0, &qword_100611200, UIView_ptr);
    if (qword_100609D90 != -1)
    {
      swift_once();
    }

    v13 = qword_1006193E0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_1003A7BE4, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100009130(0, &qword_100611200, UIView_ptr);
    v2 = qword_100609D90;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1006193E0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_1003A7C44, v5, sub_1003A7C64, v6, 0.65, 0.0);
  }
}

void sub_1003A7538(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_1003A759C()
{
  v1 = v0;
  v2 = sub_1002DD06C();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_100003ABC(&qword_10060EC20, &qword_1004DC490);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1004C5130;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_100009130(0, qword_10060B7B0, NSLayoutConstraint_ptr);
      v31 = v29;
      isa = sub_1004BC284().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

uint64_t sub_1003A7974()
{

  return swift_deallocObject();
}

id sub_1003A79AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_1003A7A28(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003A7B94()
{

  return swift_deallocObject();
}

uint64_t sub_1003A7BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003A7C0C()
{

  return swift_deallocObject();
}

void sub_1003A7C64()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_1003A7C7C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1003A7CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1003A7D28(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1003A7D80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1003A7DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100611260, &unk_1004DBDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A7E54()
{
  result = qword_100610C98;
  if (!qword_100610C98)
  {
    sub_100009130(255, &qword_100610C90, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100610C98);
  }

  return result;
}

uint64_t sub_1003A7F18()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_1003A7F60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_100609AC0 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_1004BD624();
  __break(1u);
}

uint64_t SymbolButton.CustomView.init(view:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_1003A829C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004BDBA4();
  v4 = qword_1004E5E08[a1];
  sub_1004BDBB4(v4);
  v5 = sub_1004BDBF4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_1004E5E08[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1003A837C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1003BDD24(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = sub_1004BBCD4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1003BDD24(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = sub_1004BBD84();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1003A8594(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_1004BDBA4();
    sub_1004BDBB4(a1 & 1);
    v5 = sub_1004BDBF4();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v81 = a5;
  v82 = a4;
  v80 = a2;
  v79 = sub_1004B8324();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100610320, &unk_1004E3E10);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F778(a1, v11, &qword_100610320, &unk_1004E3E10);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_1003BDC54(&v6[v17], v15, type metadata accessor for SymbolButton.Configuration);
    if (v16(v11, 1, v12) != 1)
    {
      sub_100007214(v11, &qword_100610320, &unk_1004E3E10);
    }
  }

  else
  {
    sub_1003BDCBC(v11, v15, type metadata accessor for SymbolButton.Configuration);
  }

  v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v18])
  {
    sub_1002BE638(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = xmmword_1004C5080;
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v20 = &selRef_values;
  if ((v6[v19] & 1) != 0 || *&v15[*(v12 + 68)] != 0.0)
  {
    [v6 state];
    v21 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v22 = v6[v21];
    v83 = v12;
    v76 = v18;
    if (v22 & 1) != 0 || (v23 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v23]) || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v24] == 1))
    {
      if ((v6[v18] & 1) == 0)
      {
        v74 = v21;
        v75 = a3;
        if (qword_100609DD8 != -1)
        {
          swift_once();
        }

        v26 = static SymbolButton.Background.normal;
        v25 = qword_1006194A8;
        v28 = qword_1006194B0;
        v27 = qword_1006194B8;
        v29 = *(v15 + 25);
        v30 = *(v15 + 26);
        v32 = *(v15 + 27);
        v31 = *(v15 + 28);

        v33 = v25;
        sub_1002BE638(v29, v30, v32, v31);
        *(v15 + 25) = v26;
        *(v15 + 26) = v25;
        *(v15 + 27) = v28;
        *(v15 + 28) = v27;
        a3 = v75;
        v12 = v83;
        v20 = &selRef_values;
        v21 = v74;
      }

      v34 = [v6 v20[444]];
      v35 = [v34 userInterfaceIdiom];

      if (v35 == 6)
      {
        v36 = objc_opt_self();
        v37 = [v36 labelColor];

        *(v15 + 14) = v37;
        v12 = v83;
        v38 = [v36 labelColor];

        *(v15 + 22) = v38;
      }

      *&v15[*(v12 + 68)] = 0x3FF0000000000000;
      v18 = v76;
    }

    if (([v6 state] & 2) != 0 && v6[v21] == 1)
    {
      *&v15[*(v12 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v40 = v83;
      if (v6[v39] == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          v75 = a3;
          if (qword_100609DE0 != -1)
          {
            swift_once();
          }

          v41 = static SymbolButton.Background.highlighted;
          v42 = qword_1006194C8;
          v43 = qword_1006194D8;
          v74 = qword_1006194D0;
          v44 = *(v15 + 25);
          v45 = *(v15 + 26);
          v46 = *(v15 + 27);
          v47 = *(v15 + 28);

          v48 = v42;
          sub_1002BE638(v44, v45, v46, v47);
          *(v15 + 25) = v41;
          *(v15 + 26) = v42;
          *(v15 + 27) = v74;
          *(v15 + 28) = v43;
          a3 = v75;
          v40 = v83;
          v20 = &selRef_values;
        }

        v49 = *(v40 + 68);
        *&v15[v49] = 0x3FE0000000000000;
        v50 = [v6 v20[444]];
        v51 = [v50 userInterfaceIdiom];

        v52 = v51 == 6;
        v18 = v76;
        if (v52)
        {
          v53 = objc_opt_self();
          v54 = [v53 labelColor];

          *(v15 + 14) = v54;
          v55 = [v53 labelColor];

          *(v15 + 22) = v55;
          *&v15[v49] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v75 = v55;
              v56 = v54;
              if ((v6[v18] & 1) == 0)
              {
                sub_1002BE638(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
                *(v15 + 25) = 0x3FF0000000000000;
                *(v15 + 26) = 0;
                *(v15 + 27) = 0;
                *(v15 + 28) = 0;
              }

              v57 = [v53 blackColor];

              *(v15 + 14) = v57;
              v58 = [v53 blackColor];

              *(v15 + 22) = v58;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v59 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v60 = v6[v59];
      v61 = v83;
      if (v60 == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          sub_1002BE638(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
          *(v15 + 25) = 0x3FF0000000000000;
          *(v15 + 26) = 0;
          *(v15 + 27) = 0;
          *(v15 + 28) = 0;
        }

        v62 = *(v61 + 68);
        *&v15[v62] = 0x3FF0000000000000;
        v63 = [v6 v20[444]];
        v64 = [v63 userInterfaceIdiom];

        if (v64 == 6)
        {
          v65 = objc_opt_self();
          v66 = [v65 blackColor];

          *(v15 + 14) = v66;
          v67 = [v65 blackColor];

          *(v15 + 22) = v67;
        }

        else if ([v6 state])
        {
          *&v15[v62] = 0x3FE0000000000000;
        }
      }
    }
  }

  v68 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v69 = *v68;
  if (*v68)
  {
    v70 = *(v68 + 1);

    v71 = [v6 v20[444]];
    v72 = v77;
    sub_1004B8304();
    [v6 isEnabled];
    sub_1004B82B4();
    [v6 isSelected];
    sub_1004B82D4();
    [v6 isHighlighted];
    sub_1004B82F4();
    v69(v72, v15);
    sub_10003CC4C(v69, v70);
    (*(v78 + 8))(v72, v79);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v15, v80, a3, v82, v81 & 1, _swiftEmptyArrayStorage);
  return sub_1003BBA80(v15, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_1004D9C90;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1003BA128(a1, a2, a3);
  sub_10003CC4C(a2, a3);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1003BA128(a1, a2, a3);
  sub_10003CC4C(a2, a3);
  return v5;
}

void sub_1003A9320(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v3 = *v2;
      if (*v2)
      {
        v4 = *(v2 + 1);

        v3();

        sub_10003CC4C(v3, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100007214(v8, &qword_100611260, &unk_1004DBDA0);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_1003B1EB4();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_1003B1D3C();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_100610320, &unk_1004E3E10);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_10002F518(a1, a2);
  sub_10003CC4C(v8, v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_10003CC4C(a1, a2);
  return sub_100007214(v6, &qword_100610320, &unk_1004E3E10);
}

uint64_t (*SymbolButton.configurationProvider.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_1003A9990;
}

void sub_1003A9990(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_100007214(v4, &qword_100610320, &unk_1004E3E10);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_1004B8304();
  [v0 isEnabled];
  sub_1004B82B4();
  [v0 isSelected];
  sub_1004B82D4();
  [v0 isHighlighted];
  return sub_1004B82F4();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1003A9CF4(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  sub_100003ABC(&qword_100610320, &unk_1004E3E10);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v2 + v8);
  *(v2 + v8) = a1;
  if (v9 != v5)
  {
    v10 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
    sub_100007214(v7, &qword_100610320, &unk_1004E3E10);
  }
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

void sub_1003A9EEC(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_100007214(v6, &qword_100610320, &unk_1004E3E10);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))(void ***a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003BE5DC;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(sub_100003ABC(&qword_100610320, &unk_1004E3E10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1003AA32C;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_1003BDC54(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003BDC54(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_1003AA500;
}

void sub_1003AA500(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_1003BDC54(*(*a1 + 40), v4, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1003BBA80(v4, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_1003BBA80(v5, type metadata accessor for SymbolButton.Configuration);
  free(v5);
  free(v4);

  free(v3);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_100609DD8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_100609DE0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_10002F518(*v0, v0[1]);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_10002F518(v1, *(v0 + 40));
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  LODWORD(v171) = a5;
  v165 = a4;
  v163 = a3;
  v169 = *&a2;
  ObjectType = swift_getObjectType();
  v175 = sub_100003ABC(&qword_10060A778, &qword_1004DBB30);
  __chkstk_darwin();
  v9 = &v159 - v8;
  v10 = sub_1004B6D14();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin();
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v166 = *(v13 - 8);
  __chkstk_darwin();
  v176 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v170 = &v159 - v15;
  __chkstk_darwin();
  v168 = &v159 - v16;
  __chkstk_darwin();
  v18 = &v159 - v17;
  v167 = v19;
  __chkstk_darwin();
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_1003BDC54(v6 + v22, v21, type metadata accessor for SymbolButton.Configuration);
  v23 = a1;
  v24 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v21);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_62;
  }

  sub_1003BDC54(v23, v18, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v160 = v18;
  v161 = v6;
  sub_1003BAF9C(v18, v6 + v22);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v162 = sub_1004B6CE4();
  v177 = v27;
  v173[1](v12, v174);
  v28 = *(v13 + 36);
  v29 = *(v175 + 12);
  v175 = v21;
  sub_10000F778(&v21[v28], v9, &qword_100610D00, &qword_1004DB780);
  sub_10000F778(v23 + v28, &v9[v29], &qword_100610D00, &qword_1004DB780);
  v30 = sub_1004BCEE4();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v9, 1, v30);
  v33 = v31(&v9[v29], 1, v30);
  v34 = v23;
  if (v32 == 1)
  {
    if (v33 != 1)
    {
      sub_100007214(&v9[v29], &qword_100610D00, &qword_1004DB780);
LABEL_6:
      sub_100007214(v9, &qword_100610D00, &qword_1004DB780);
      v35 = v161;
      *(v161 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v36 = v177;
      goto LABEL_8;
    }
  }

  else if (v33 == 1)
  {
    goto LABEL_6;
  }

  sub_100007214(v9, &qword_10060A778, &qword_1004DBB30);
  v36 = v177;
  v35 = v161;
LABEL_8:
  v173 = v13;
  [v35 invalidateIntrinsicContentSize];
  [v35 accessibilityUpdateSymbolButton];
  v37 = *(v34 + 8);
  v178 = v34;
  if (v37)
  {
    v38 = *(v34 + 16);
    v39 = sub_1004BBE24();
    v40 = objc_opt_self();
    v41 = [v40 _systemImageNamed:v39];

    if (!v41)
    {
      v42 = sub_1004BBE24();
      v41 = [v40 imageNamed:v42 inBundle:v38];
    }
  }

  else
  {
    v41 = 0;
  }

  [v35 setLargeContentImage:v41];

  v43 = [v35 window];
  if (!v43 || (v43, (v171 & 1) != 0) || (v44 = v169, v169 <= 0.0))
  {
    v57 = v178;
    if (qword_100609AB8 != -1)
    {
      swift_once();
    }

    v58 = sub_1004B80B4();
    v59 = sub_100007084(v58, qword_100618E98);
    v60 = v176;
    sub_1003BDC54(v57, v176, type metadata accessor for SymbolButton.Configuration);
    v61 = v35;

    v62 = sub_1004B8094();
    v63 = sub_1004BC974();

    v64 = os_log_type_enabled(v62, v63);
    v174 = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&aBlock = v171;
      *v65 = 136446722;
      v66 = &v61[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v67 = v66[1];
      if (v67)
      {
        v68 = *v66;
        v69 = v67;
      }

      else
      {
        v70 = v61;
        v71 = [v70 description];
        v68 = sub_1004BBE64();
        v69 = v72;

        v60 = v176;
      }

      v73 = sub_1002C4260(v68, v69, &aBlock);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_1002C4260(v162, v36, &aBlock);
      *(v65 + 22) = 2082;
      v74 = SymbolButton.Configuration.description.getter();
      v76 = v75;
      sub_1003BBA80(v60, type metadata accessor for SymbolButton.Configuration);
      v77 = sub_1002C4260(v74, v76, &aBlock);

      *(v65 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v65, 0x20u);
      swift_arrayDestroy();

      v57 = v178;
    }

    else
    {

      sub_1003BBA80(v60, type metadata accessor for SymbolButton.Configuration);
    }

    sub_1003B3290(v57);
    v78 = *(v172 + 16);
    v21 = v175;
    if (v78)
    {
      v79 = (v172 + 72);
      while (1)
      {
        v80 = *(v79 - 5);
        v81 = *(v79 - 4);
        v82 = *(v79 - 1);
        v83 = *v79;
        v84 = *v79;
        if (v80)
        {
          break;
        }

        sub_10002F518(v82, v84);
        if (v82)
        {
          goto LABEL_35;
        }

LABEL_30:
        v79 += 6;
        sub_10003CC4C(v80, v81);
        if (!--v78)
        {
          goto LABEL_36;
        }
      }

      sub_10002F518(v82, v84);
      sub_10002F518(v80, v81);
      v80(v61);
      if (!v82)
      {
        goto LABEL_30;
      }

LABEL_35:
      v82(v61);
      sub_10003CC4C(v82, v83);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v21 + 5);
    v192[4] = *(v21 + 4);
    v192[5] = v85;
    v192[6] = *(v21 + 6);
    v193 = *(v21 + 14);
    v86 = *(v21 + 1);
    v192[0] = *v21;
    v192[1] = v86;
    v87 = *(v21 + 3);
    v192[2] = *(v21 + 2);
    v192[3] = v87;
    v88 = v178;
    v89 = *v178;
    v90 = *(v178 + 16);
    v91 = *(v178 + 48);
    v196 = *(v178 + 32);
    v197 = v91;
    aBlock = v89;
    v195 = v90;
    v92 = *(v178 + 64);
    v93 = *(v178 + 80);
    v94 = *(v178 + 96);
    v201 = *(v178 + 112);
    v199 = v93;
    v200 = v94;
    v198 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v192, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v21 + 15);
    v96 = *(v21 + 16);
    v97 = *(v21 + 152);
    v181 = *(v21 + 136);
    v182 = v97;
    v183 = *(v21 + 168);
    v98 = v21[184];
    v180[0] = v95;
    v180[1] = v96;
    v184 = v98;
    *v185 = *(v21 + 185);
    v99 = *(v21 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v187 = *(v88 + 136);
    v188 = v102;
    v189 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v185[7] = v99;
    v186[0] = v100;
    v186[1] = v101;
    v190 = v103;
    *v191 = *(v88 + 185);
    *&v191[7] = *(v88 + 192);
    if (sub_1003BAA64(v180, v186))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v173 + 10);
    v105 = *&v21[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v21[*(v173 + 11) + 16] == 1) == (*(v88 + *(v173 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v61 setNeedsLayout];
LABEL_49:
    v107 = v61;

    v108 = sub_1004B8094();
    v109 = sub_1004BC974();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_1004BBE64();
        v113 = v115;
      }

      v116 = sub_1002C4260(v112, v113, v179);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_1002C4260(v162, v177, v179);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v25 = 0;
      v26 = 0;
      v21 = v175;
    }

    else
    {

      v25 = 0;
      v26 = 0;
    }

    goto LABEL_62;
  }

  v45 = v178;
  if (qword_100609AB8 != -1)
  {
    swift_once();
  }

  v46 = sub_1004B80B4();
  sub_100007084(v46, qword_100618E98);
  v47 = v168;
  sub_1003BDC54(v45, v168, type metadata accessor for SymbolButton.Configuration);
  v48 = v35;

  v49 = sub_1004B8094();
  LODWORD(v50) = sub_1004BC974();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&aBlock = v176;
    *v51 = 136446722;
    v52 = &v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v53 = v52[1];
    v54 = v170;
    if (v53)
    {
      v55 = *v52;
      v56 = v53;
    }

    else
    {
      v118 = v48;
      v119 = [v118 description];
      LODWORD(v174) = v50;
      v50 = v119;
      v55 = sub_1004BBE64();
      v56 = v120;

      v47 = v168;
      LOBYTE(v50) = v174;
    }

    v121 = sub_1002C4260(v55, v56, &aBlock);

    *(v51 + 4) = v121;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_1002C4260(v162, v36, &aBlock);
    *(v51 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v47;
    v125 = v124;
    sub_1003BBA80(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_1002C4260(v122, v125, &aBlock);

    *(v51 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v45 = v178;
  }

  else
  {

    sub_1003BBA80(v47, type metadata accessor for SymbolButton.Configuration);
    v54 = v170;
  }

  v127 = *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v160;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_1003B3D08();
    }

    v130 = swift_allocObject();
    v171 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v174 = v130 + 16;
    v176 = objc_opt_self();
    v173 = v48;
    v21 = v175;
    sub_1003BDC54(v175, v129, type metadata accessor for SymbolButton.Configuration);
    sub_1003BDC54(v45, v54, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v166 + 80);
    v132 = (v131 + 16) & ~v131;
    v166 = v167 + v131;
    v133 = (v167 + v131 + v132) & ~v131;
    v167 += 7;
    v168 = v131;
    v134 = (v167 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1003BDCBC(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_1003BDCBC(v54, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v173;
    v136 = v174;
    *(v135 + v134) = v173;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_1003BB3B8;
    *(v138 + 24) = v135;
    v174 = v135;
    *&v196 = sub_1000081FC;
    *(&v196 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v169 = COERCE_DOUBLE(&v195);
    *&v195 = sub_100008224;
    *(&v195 + 1) = &unk_1005C5938;
    v139 = _Block_copy(&aBlock);
    v173 = v137;

    [v176 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = *&v163;
      v141 = v168;
      v142 = ~v168;
      v143 = v160;
      sub_1003BDC54(v178, v160, type metadata accessor for SymbolButton.Configuration);
      sub_1003BDC54(v21, v170, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v166 + v144) & v142;
      v146 = (v167 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v173;
      *(v147 + 16) = v173;
      sub_1003BDCBC(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_1003BDCBC(v170, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v171;
      v150 = v172;
      *(v147 + v146) = v171;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v196 = sub_1003BB81C;
      *(&v196 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_1000D6C80;
      *(&v195 + 1) = &unk_1005C5988;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v162;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v177;
      v153[7] = v155;
      *&v196 = sub_1003BB918;
      *(&v196 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_100398C10;
      *(&v195 + 1) = &unk_1005C59D8;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v176 animateKeyframesWithDuration:v165 delay:v151 options:v156 animations:v44 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v25 = sub_1003BB3B8;
      v26 = v174;
LABEL_62:
      v158 = v26;
      sub_1003BBA80(v21, type metadata accessor for SymbolButton.Configuration);
      sub_10003CC4C(v25, v158);
      return;
    }
  }

  __break(1u);
}

void sub_1003ABA70(uint64_t *a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 6);
  v180 = *(a1 + 5);
  v181 = v9;
  v182 = a1[14];
  v10 = *(a1 + 2);
  v176 = *(a1 + 1);
  v177 = v10;
  v11 = *(a1 + 4);
  v178 = *(a1 + 3);
  v179 = v11;
  v175[0] = v7;
  v175[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v183[2] = a2[2];
  v183[3] = v14;
  v183[0] = v12;
  v183[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v184 = *(a2 + 14);
  v183[5] = v16;
  v183[6] = v17;
  v183[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v175, v183))
  {
    v18 = sub_1003B1D3C();
    v19 = a2[5];
    v172[4] = a2[4];
    v172[5] = v19;
    v173 = a2[6];
    v174 = *(a2 + 14);
    v20 = a2[1];
    v172[0] = *a2;
    v172[1] = v20;
    v21 = a2[3];
    v172[2] = a2[2];
    v172[3] = v21;
    v23 = type metadata accessor for SymbolButton.ImageView(0, v22);
    v162.receiver = objc_allocWithZone(v23);
    v162.super_class = v23;
    v24 = objc_msgSendSuper2(&v162, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v24 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v24 setContentMode:4];
    sub_1003B5834(v172);
    v25 = [v18 preferredSymbolConfiguration];
    [v24 setPreferredSymbolConfiguration:v25];

    [v18 frame];
    [v24 setFrame:?];

    v26 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v27 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v24;
    v28 = v24;

    [v28 setAlpha:0.0];
    v29 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v30 = *&a3[v26];
    if (([v30 isDescendantOfView:v29] & 1) == 0)
    {
      [v29 addSubview:v30];
    }

    if (!v8 && *(&v172[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v31 = *(&v173 + 1);
    v32 = *&a3[v26];
    v33 = *a4;
    v34 = v32;
    v35 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1003BF1E0(0, *(v33 + 2) + 1, 1, v33);
      *a4 = v33;
    }

    v38 = *(v33 + 2);
    v37 = *(v33 + 3);
    v4 = a3;
    if (v38 >= v37 >> 1)
    {
      *a4 = sub_1003BF1E0((v37 > 1), v38 + 1, 1, v33);
    }

    v39 = *a4;
    *(v39 + 2) = v38 + 1;
    v40 = &v39[88 * v38];
    *(v40 + 4) = v32;
    *(v40 + 5) = v31;
    *(v40 + 6) = 0;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    *(v40 + 9) = v35;
    *(v40 + 5) = xmmword_1004C5080;
    *(v40 + 12) = 0;
    *(v40 + 13) = 0;
    v40[112] = 0;
  }

  v41 = *(a1 + 17);
  v42 = *(a1 + 21);
  v170[2] = *(a1 + 19);
  v170[3] = v42;
  v43 = *(a1 + 23);
  v170[0] = *(a1 + 15);
  v170[1] = v41;
  v44 = *(a2 + 136);
  v45 = *(a2 + 168);
  v171[2] = *(a2 + 152);
  v171[3] = v45;
  v171[4] = *(a2 + 184);
  v46 = *(a2 + 120);
  v171[1] = v44;
  v170[4] = v43;
  v171[0] = v46;
  if (sub_1003BAA64(v170, v171))
  {
    v47 = sub_1003B1EB4();
    v48 = *(a2 + 136);
    v49 = *(a2 + 168);
    v167[2] = *(a2 + 152);
    v168 = v49;
    v169 = *(a2 + 184);
    v167[0] = *(a2 + 120);
    v167[1] = v48;
    v51 = objc_allocWithZone(type metadata accessor for SymbolButton.Label(0, v50));
    sub_1003BB998(v167, v166);
    v53 = sub_1003B5A78(v167, v52);
    v54 = [v47 font];
    [v53 setFont:v54];

    v55 = v53;
    v56 = v47;
    [v56 frame];
    [v55 setFrame:?];

    v57 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v58 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v55;
    v59 = v55;

    [v59 setAlpha:0.0];
    v60 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v61 = *&v4[v57];
    if (([v61 isDescendantOfView:v60] & 1) == 0)
    {
      [v60 addSubview:v61];
    }

    v62 = v168;
    v63 = *&v4[v57];
    v64 = *(a1 + 17);
    v65 = *(a1 + 21);
    v165[2] = *(a1 + 19);
    v165[3] = v65;
    v66 = *(a1 + 23);
    v165[0] = *(a1 + 15);
    v165[1] = v64;
    v67 = *(a2 + 136);
    v68 = *(a2 + 168);
    v166[2] = *(a2 + 152);
    v166[3] = v68;
    v166[4] = *(a2 + 184);
    v69 = *(a2 + 120);
    v166[1] = v67;
    v165[4] = v66;
    v166[0] = v69;
    v70 = v63;
    v71 = sub_1003BBB2C(v165, v166);
    v72 = *a4;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_1003BF1E0(0, *(v72 + 2) + 1, 1, v72);
      *a4 = v72;
    }

    v75 = *(v72 + 2);
    v74 = *(v72 + 3);
    v4 = a3;
    if (v75 >= v74 >> 1)
    {
      *a4 = sub_1003BF1E0((v74 > 1), v75 + 1, 1, v72);
    }

    v76 = *a4;
    *(v76 + 2) = v75 + 1;
    v77 = &v76[88 * v75];
    *(v77 + 4) = v63;
    *(v77 + 5) = v62;
    *(v77 + 6) = 0;
    *(v77 + 7) = 0;
    *(v77 + 8) = 0;
    *(v77 + 9) = v56;
    *(v77 + 5) = xmmword_1004C5080;
    *(v77 + 12) = 0;
    *(v77 + 13) = 0;
    v77[112] = v71;
  }

  v78 = type metadata accessor for SymbolButton.Configuration(0);
  v80 = *(v78 + 40);
  v81 = *(a1 + v80);
  v82 = a2 + v80;
  v83 = *(a2 + v80);
  if (v81)
  {
    if (v81 == v83)
    {
      goto LABEL_47;
    }

    if (!v83)
    {
      v159 = v78;
      v84 = 0;
      v157 = 1;
      goto LABEL_26;
    }
  }

  else if (!v83)
  {
    goto LABEL_47;
  }

  v159 = v78;
  v85 = v83;
  v157 = 0;
  v84 = v83;
LABEL_26:
  v86 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v87 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v84;
  v88 = v84;

  v89 = a3;
  if (v84)
  {
    v90 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v90 isDescendantOfView:v90])
    {
      [v90 insertSubview:v88 aboveSubview:v90];
    }

    else
    {

      if (([v88 isDescendantOfView:v90] & 1) == 0)
      {
        [v90 addSubview:v88];
      }
    }

    v89 = a3;
    sub_1003B21A0();
  }

  v91 = *&v89[v86];
  if (v91)
  {
    [v91 setAlpha:0.0];
  }

  sub_1003B21A0();
  [*&v89[v86] layoutIfNeeded];
  if ((v157 & 1) == 0)
  {
    v93 = v83;
    if (v83)
    {
      v92 = *(v82 + 5);
      if (v81)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v92 = 0;
      if (v81)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v95 = 0;
    goto LABEL_42;
  }

  v83 = 0;
  v92 = 0;
  if (!v81)
  {
    goto LABEL_41;
  }

LABEL_39:
  v94 = v81;
  v95 = 1;
LABEL_42:
  v96 = *a4;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v96;
  if ((v97 & 1) == 0)
  {
    v96 = sub_1003BF1E0(0, *(v96 + 2) + 1, 1, v96);
    *a4 = v96;
  }

  v99 = *(v96 + 2);
  v98 = *(v96 + 3);
  if (v99 >= v98 >> 1)
  {
    v96 = sub_1003BF1E0((v98 > 1), v99 + 1, 1, v96);
    *a4 = v96;
  }

  *(v96 + 2) = v99 + 1;
  v100 = &v96[88 * v99];
  *(v100 + 4) = v83;
  *(v100 + 5) = v92;
  *(v100 + 6) = 0;
  *(v100 + 7) = 0;
  *(v100 + 8) = 0;
  *(v100 + 9) = v81;
  *(v100 + 10) = 0;
  *(v100 + 11) = v95;
  *(v100 + 12) = 0;
  *(v100 + 13) = 0;
  v100[112] = 0;
  v4 = a3;
  v78 = v159;
LABEL_47:
  v101 = *(v78 + 44);
  v102 = *(a1 + v101 + 16);
  v103 = (a2 + v101);
  v104 = v103[2];
  if (v102 == 1)
  {
    if (v104 == 1)
    {
      return;
    }

    v110 = *v103;
    v109 = v103[1];
    v105 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v111 = type metadata accessor for SymbolButton.BadgeView(0, v79);
    v112 = objc_allocWithZone(v111);
    v158 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v113 = objc_allocWithZone(UIView);
    if (v106)
    {
      v114 = v106;
      sub_1003BBA50(v110, v109, v104);
      v115 = v110;
      v116 = [v113 init];
      v117 = objc_opt_self();
      v118 = [v117 blackColor];
      [v116 setBackgroundColor:v118];

      v119 = [v116 layer];
      [v119 setCompositingFilter:kCAFilterDestOut];

      *&v112[v158] = v116;
      v120 = &v112[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v120 = v115;
      v120[1] = v109;
      v120[2] = v104;
      v164.receiver = v112;
      v164.super_class = v111;
      v121 = v104;
      v122 = objc_msgSendSuper2(&v164, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v123 = v121;
      if (!v104)
      {
        v123 = [v117 tintColor];
      }

      v124 = v121;
      [v122 setBackgroundColor:v123];

      [v122 setAlpha:*&v109];
      [*(v122 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v109];
      sub_1003B61B4();
      v125 = v115;
    }

    else
    {
      v156 = v104;
      v126 = [v113 init];
      v127 = v110;
      v128 = v126;
      v129 = objc_opt_self();
      v130 = [v129 blackColor];
      [v128 setBackgroundColor:v130];

      v131 = [v128 layer];
      [v131 setCompositingFilter:kCAFilterDestOut];

      *&v112[v158] = v128;
      v132 = &v112[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v132 = v127;
      v132[1] = v109;
      v132[2] = v104;
      v163.receiver = v112;
      v163.super_class = v111;
      v133 = v156;
      v122 = objc_msgSendSuper2(&v163, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v134 = v133;
      if (!v104)
      {
        v134 = [v129 tintColor];
      }

      v135 = v133;
      [v122 setBackgroundColor:v134];

      [v122 setAlpha:*&v109];
      [*(v122 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v109];
      sub_1003B61B4();
      sub_1002C8BF0(v127, v109, v104);
      v125 = v127;
    }

    v136 = *v105;
    *v105 = v122;
    v137 = v122;
    sub_1003B1FBC(v136, v138);

    if (*v105)
    {
      [*v105 setAlpha:0.0];
      if (*v105)
      {
        v139 = *v105;
        v140 = [a3 traitCollection];
        v141 = [v140 userInterfaceIdiom];

        if (v141 == 6)
        {
          v142 = 12.0;
        }

        else
        {
          v142 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v185);
        v186.origin.x = 0.0;
        v186.origin.y = 0.0;
        v186.size.width = v142;
        v186.size.height = v142;
        v144 = MaxX - CGRectGetWidth(v186) + 1.0;
        [a3 bounds];
        [v139 setFrame:{v144, CGRectGetMinY(v187) + -1.0, v142, v142}];
      }
    }

    sub_1002C8BF0(v125, v109, v104);
    v102 = 1;
  }

  else
  {
    if (v104 != 1)
    {
      return;
    }

    v105 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v107 = v106;
    sub_1003B1FBC(v106, v108);

    v109 = 0;
  }

  v145 = *v105;
  if (*v105)
  {
    v146 = v109;
  }

  else
  {
    v146 = 0;
  }

  if (*v105)
  {
    v147 = v102 != 1;
  }

  else
  {
    v147 = 0;
  }

  v148 = *a4;
  v149 = v145;
  v150 = v106;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v148;
  if ((v151 & 1) == 0)
  {
    v148 = sub_1003BF1E0(0, *(v148 + 2) + 1, 1, v148);
    *a4 = v148;
  }

  v153 = *(v148 + 2);
  v152 = *(v148 + 3);
  if (v153 >= v152 >> 1)
  {
    *a4 = sub_1003BF1E0((v152 > 1), v153 + 1, 1, v148);
  }

  v154 = *a4;
  *(v154 + 2) = v153 + 1;
  v155 = &v154[88 * v153];
  *(v155 + 4) = v145;
  *(v155 + 5) = v146;
  *(v155 + 6) = v147;
  *(v155 + 7) = 0;
  *(v155 + 8) = 0;
  *(v155 + 9) = v106;
  *(v155 + 10) = 0;
  *(v155 + 11) = v106 != 0;
  *(v155 + 12) = 0;
  *(v155 + 13) = 0;
  v155[112] = 0;
}

void sub_1003AC7C8(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v79 = a5;
  v9 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v66 - v12;
  v72 = objc_opt_self();
  sub_1003BDC54(a2, v13, type metadata accessor for SymbolButton.Configuration);
  sub_1003BDC54(a3, v11, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v9 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v10 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_1003BDCBC(v13, v17 + v15, type metadata accessor for SymbolButton.Configuration);
  sub_1003BDCBC(v11, v17 + v16, type metadata accessor for SymbolButton.Configuration);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v85 = sub_1003BE178;
  v86 = v17;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_1000D6C80;
  v84 = &unk_1005C6378;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v80 = a4;

  [v72 addKeyframeWithRelativeStartTime:v18 relativeDuration:0.0 animations:1.0];
  _Block_release(v18);
  v20 = *(v79 + 16);
  if (v20)
  {
    v21 = (v79 + 40);
    do
    {
      v22 = *(v21 - 1);
      if (v22)
      {
        v24 = v21[3];
        v23 = v21[4];
        v26 = *(v21 + 1);
        v25 = *(v21 + 2);
        v27 = *v21;
        v28 = swift_allocObject();
        v28[2] = v22;
        v28[3] = v27;
        v28[4] = v19;
        v85 = sub_1003BE258;
        v86 = v28;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_1000D6C80;
        v84 = &unk_1005C63C8;
        v29 = _Block_copy(&aBlock);
        sub_10002F518(v22, v27);
        v30 = v19;
        sub_10002F518(v22, v27);
        sub_10002F518(v24, v23);

        [v72 addKeyframeWithRelativeStartTime:v29 relativeDuration:v26 animations:v25];
        sub_10003CC4C(v24, v23);
        _Block_release(v29);
        sub_10003CC4C(v22, v27);
      }

      v21 += 6;
      --v20;
    }

    while (v20);
  }

  v31 = v80;
  swift_beginAccess();
  v32 = v31[2];
  v33 = *(v32 + 16);
  v67 = v32;

  v66 = v33;
  if (!v33)
  {
LABEL_28:

    return;
  }

  v34 = 0;
  v70 = &v83;
  v35 = v67 + 56;
  while (v34 < *(v67 + 16))
  {
    v46 = *(v35 - 24);
    v45 = *(v35 - 16);
    v47 = *(v35 - 8);
    v48 = *v35;
    v49 = *(v35 + 8);
    v50 = *(v35 + 16);
    v52 = *(v35 + 24);
    v51 = *(v35 + 32);
    v53 = *(v35 + 40);
    v79 = *(v35 + 48);
    v54 = *(v35 + 56);
    v80 = v46;
    if ((v46 == 0) | v47 & 1)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = *&v45;
    }

    v78 = v50;
    v77 = v45;
    v76 = v51;
    v75 = v52;
    v74 = v47;
    v73 = v48;
    v71 = v54;
    if (v50)
    {
      v90 = v51 & 1;
      if (v54)
      {
        v56 = 1.0;
      }

      else
      {
        v56 = 0.5;
      }

      v68 = v49;
      v57 = v45;
      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      *(v58 + 24) = v52;
      *(v58 + 32) = v90;
      *(v58 + 33) = *v89;
      *(v58 + 36) = *&v89[3];
      v59 = v79;
      *(v58 + 40) = v53;
      *(v58 + 48) = v59;
      v85 = sub_1003BE300;
      v86 = v58;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_1000D6C80;
      v84 = &unk_1005C6468;
      v60 = _Block_copy(&aBlock);
      v69 = v34;
      v61 = v60;
      v62 = v48;
      v63 = v68;
      sub_1003BDD6C(v80, v57, v47, v62, v68);
      sub_1003BDD6C(v50, v52, v51, v53, v59);
      sub_1003BDD6C(v50, v52, v51, v53, v59);
      v64 = v50;
      sub_10002F518(v53, v59);

      [v72 addKeyframeWithRelativeStartTime:v61 relativeDuration:0.0 animations:v56];
      v65 = v61;
      v34 = v69;
      _Block_release(v65);

      sub_10003CC4C(v53, v59);
      if (v80)
      {
LABEL_8:
        v36 = v74;
        v88 = v74 & 1;
        if (v71)
        {
          v37 = 1.0;
        }

        else
        {
          v37 = 0.5;
        }

        if (v71)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.5;
        }

        v39 = swift_allocObject();
        v40 = v80;
        v41 = v77;
        *(v39 + 16) = v80;
        *(v39 + 24) = v41;
        *(v39 + 32) = v88;
        *(v39 + 33) = *v87;
        *(v39 + 36) = *&v87[3];
        v42 = v73;
        *(v39 + 40) = v73;
        *(v39 + 48) = v63;
        *(v39 + 56) = v55;
        v85 = sub_1003BE290;
        v86 = v39;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_1000D6C80;
        v84 = &unk_1005C6418;
        v43 = _Block_copy(&aBlock);
        sub_1003BDD6C(v40, v41, v36, v42, v63);
        v44 = v40;
        sub_10002F518(v42, v63);

        [v72 addKeyframeWithRelativeStartTime:v43 relativeDuration:v38 animations:v37];
        _Block_release(v43);

        sub_10003CC4C(v42, v63);
        goto LABEL_15;
      }
    }

    else
    {
      sub_1003BDD6C(v80, v45, v47, v48, v49);
      sub_1003BDD6C(0, v52, v51, v53, v79);
      v63 = v49;
      if (v80)
      {
        goto LABEL_8;
      }
    }

    v80 = 0;
    v41 = v77;
    v36 = v74;
    v42 = v73;
LABEL_15:
    ++v34;
    sub_1003BDDB4(v80, v41, v36, v42, v63);
    sub_1003BDDB4(v78, v75, v76, v53, v79);
    v35 += 88;
    if (v66 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_1003ACFC8(char *a1, __int128 *a2, char **a3, uint64_t a4)
{
  v122 = a4;
  v123 = a1;
  v7 = v129;
  sub_100003ABC(&qword_100610D00, &qword_1004DB780);
  __chkstk_darwin();
  v125 = &v120 - v8;
  v127 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymbolButton.Metrics(0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  sub_1003B2D88(v13);
  sub_1003BBA80(v13, type metadata accessor for SymbolButton.Metrics);
  sub_1003BDC54(a2, v10, type metadata accessor for SymbolButton.Configuration);
  sub_1003B23C0(v10, v14, v13);
  v128 = v13;
  sub_1003B3030(v13);
  v15 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v16 = *(a2 + 248);
  v136[0] = *(a2 + 232);
  v136[1] = v16;
  v136[2] = *(a2 + 264);
  v121 = v15;
  sub_1003B4F64(v136);
  v126 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v17 = *(a2 + 25);
  v18 = *(a2 + 26);
  v19 = *(a2 + 27);
  v20 = *(a2 + 28);
  if (v18 == 1)
  {
    v120 = *(a2 + 27);
    v124 = v17;
    if (qword_100609DA8 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v21 = *(a2 + 25);
  v24 = *(a2 + 28);
  v25 = *(a2 + 26);
  v22 = v25;
  v23 = *(a2 + 27);
LABEL_5:
  sub_1003BBA08(v17, v18, v19, v20);
  sub_1003B53E0(v22, v23, v24, v21);

  v26 = *(a3 + 17);
  v27 = *(a3 + 21);
  v7[31] = *(a3 + 19);
  v7[32] = v27;
  v28 = *(a3 + 23);
  v7[29] = *(a3 + 15);
  v7[30] = v26;
  v29 = *(a2 + 152);
  v7[35] = *(a2 + 136);
  v7[36] = v29;
  v30 = *(a2 + 184);
  v7[37] = *(a2 + 168);
  v7[38] = v30;
  v31 = *(a2 + 120);
  v7[33] = v28;
  v7[34] = v31;
  v32 = sub_1003BAA64(&v134, v135);
  v33 = v123;
  if ((v32 & 1) == 0)
  {
    v34 = sub_1003B1EB4();
    v35 = *(a2 + 136);
    v7[24] = *(a2 + 120);
    v7[25] = v35;
    v36 = *(a2 + 168);
    v7[26] = *(a2 + 152);
    v7[27] = v36;
    v7[28] = *(a2 + 184);
    v37 = v133[0];
    v38 = v133[1];
    sub_1003B5C00(v133);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = sub_1004BBE24();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  v7[12] = *(a3 + 4);
  v7[13] = v41;
  v7[14] = *(a3 + 6);
  v131[14] = a3[14];
  v42 = *(a3 + 1);
  v7[8] = *a3;
  v7[9] = v42;
  v43 = *(a3 + 3);
  v7[10] = *(a3 + 2);
  v7[11] = v43;
  v44 = *a2;
  v45 = a2[1];
  v46 = a2[3];
  v7[18] = a2[2];
  v7[19] = v46;
  v7[16] = v44;
  v7[17] = v45;
  v47 = a2[4];
  v48 = a2[5];
  v49 = a2[6];
  v132[14] = *(a2 + 14);
  v7[21] = v48;
  v7[22] = v49;
  v7[20] = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v131, v132))
  {
    v50 = sub_1003B1D3C();
    v51 = a2[5];
    v7[4] = a2[4];
    v7[5] = v51;
    v7[6] = a2[6];
    v130 = *(a2 + 14);
    v52 = a2[1];
    v129[0] = *a2;
    v129[1] = v52;
    v53 = a2[3];
    v129[2] = a2[2];
    v129[3] = v53;
    sub_1003B5834(v129);
  }

  v54 = *(v127 + 11);
  v55 = (a2 + v54);
  v56 = *(a2 + v54 + 16);
  if (v56 != 1 && *(a3 + v54 + 16) != 1)
  {
    v57 = *&v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    if (v57)
    {
      v58 = *v55;
      a3 = v55[1];
      if (v56)
      {
        v59 = v57;
        v60 = v56;
        v61 = v56;
      }

      else
      {
        v62 = objc_opt_self();
        v63 = v57;
        sub_1003BBA50(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_1003BBA50(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_1003B61B4();
      sub_1002C8BF0(v58, a3, v56);
    }
  }

  v65 = [v121 contentView];
  v66 = *(a2 + 35);
  v18 = *(a2 + 36);
  v7 = *(a2 + 37);
  v67 = v7;
  UIView.border.setter(v66, v18, v7);

  [v33 setAlpha:*(a2 + *(v127 + 17))];
  v68 = v128;
  sub_1003B2D88(v128);
  sub_1003B41D0(v68);
  sub_1003BBA80(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v120 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v121;
    [v121 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_100009130(0, &qword_100611200, UIView_ptr);
    v73 = sub_1004BC2A4();

    v128 = v73;
    if (v73 >> 62)
    {
      v20 = sub_1004BD6A4();
    }

    else
    {
      v20 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v127;
    v126 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v20)
    {
      v74 = 0;
      v75 = v128 & 0xC000000000000001;
      v7 = (v128 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_shuffleCommand;
      v124 = v128 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = sub_1004BD484();
        }

        else
        {
          if (v74 >= *(v7 + 2))
          {
            goto LABEL_55;
          }

          v76 = *(v128 + 8 * v74 + 32);
        }

        v78 = v76;
        v18 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label(0, v77);
        if (([v78 a3[270]] & 1) == 0)
        {
          v79 = a3;
          v80 = *(v126 + *(a2 + 19));
          if (v80 == 2)
          {
            v81 = v126 + *(a2 + 9);
            v82 = v125;
            sub_10000F778(v81, v125, &qword_100610D00, &qword_1004DB780);
            v83 = sub_1004BCEE4();
            LOBYTE(v80) = (*(*(v83 - 8) + 48))(v82, 1, v83) != 1;
            v84 = v82;
            a2 = v127;
            v7 = v124;
            sub_100007214(v84, &qword_100610D00, &qword_1004DB780);
          }

          [v78 setClipsToBounds:v80 & 1];
          a3 = v79;
        }

        ++v74;
      }

      while (v18 != v20);
    }

    v123[v120] = 0;
  }

  v85 = v122;
  swift_beginAccess();
  v86 = *(v85 + 16);
  v20 = *(v86 + 16);
  v123 = v86;

  v122 = v20;
  if (v20)
  {
    v18 = 0;
    v87 = v123 + 56;
    do
    {
      if (v18 >= *(v123 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_3:
        swift_beginAccess();
        v21 = *&static SymbolButton.Background.clear;
        v22 = qword_100619418;
        v23 = qword_100619420;
        v24 = qword_100619428;

        v25 = v22;
        v17 = v124;
        v19 = v120;
        goto LABEL_5;
      }

      v93 = *(v87 - 3);
      v92 = *(v87 - 2);
      v94 = *(v87 - 1);
      a3 = *v87;
      v95 = *(v87 + 1);
      v96 = *(v87 + 2);
      v97 = *(v87 + 3);
      v20 = *(v87 + 4);
      v127 = v95;
      v128 = v97;
      v98 = *(v87 + 5);
      v7 = *(v87 + 6);
      v125 = v94;
      v126 = a3;
      v124 = v92;
      if (v93)
      {
        if (a3)
        {
          sub_1003BDD6C(v93, v92, v94, a3, v95);
          sub_1003BDD6C(v96, v128, v20, v98, v7);
          v99 = [v121 contentView];
          v120 = v7;
          v100 = v20;
          v101 = v99;
          [v99 bounds];
          v103 = v102;
          v105 = v104;
          v107 = v106;
          v109 = v108;

          a2 = v98;
          (a3)(v103, v105, v107, v109);
          v20 = v100;
          v7 = v120;
          [v93 setFrame:?];
          if (!v96)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_1003BDD6C(v93, v92, v94, 0, v95);
          a2 = v98;
          sub_1003BDD6C(v96, v128, v20, v98, v7);
          if (!v96)
          {
LABEL_38:
            sub_1003BDDB4(v93, v124, v125, v126, v127);
            v88 = 0;
            v89 = v128;
            v90 = v20;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1003BDD6C(0, v92, v94, a3, v95);
        sub_1003BDD6C(v96, v128, v20, v98, v7);
        a2 = v98;
        if (!v96)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_1003BDDB4(v93, v124, v125, v126, v127);
        v88 = v96;
        v89 = v128;
        v90 = v20;
        v91 = 0;
        goto LABEL_40;
      }

      v110 = v20;
      v111 = [v121 contentView];
      [v111 bounds];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      v20 = v7;
      (a2)(v113, v115, v117, v119);
      [v96 setFrame:?];
      sub_1003BDDB4(v93, v124, v125, v126, v127);
      v88 = v96;
      v89 = v128;
      v90 = v110;
LABEL_39:
      v91 = a2;
LABEL_40:
      sub_1003BDDB4(v88, v89, v90, v91, v7);
      ++v18;
      v87 += 88;
    }

    while (v122 != v18);
  }
}