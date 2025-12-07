void sub_100BD3BF4(uint64_t a1, uint64_t a2)
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
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v6 = type metadata accessor for QRCodeOverlayViewController();
  v45.receiver = v2;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewIsAppearing:", a1);
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  static UIView.Corner.value(_:continuous:)();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  UIView.corner.setter();
  v10 = [v7 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v7 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v12 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v7;
  v13 = v7;

  v14 = [v2 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 3)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    [v13 setBackgroundColor:v33];

    v34 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v35 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v34 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v35] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v36] addSubview:v13];
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v37 = *&v2[v36];
    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v37 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v39 = [*&v2[v38] contentView];
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v40 = *&v2[v11];
    v41 = [v32 blackColor];
    v42 = *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v41;
    v43 = v41;

    sub_100BD5FC8();
    v30 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v31 = [v32 blackColor];
    [v30 setTintColor:v31];
    goto LABEL_6;
  }

  v16 = *&v2[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
  v21 = v19;

  sub_100BD5FC8();
  v22 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v23 = [v17 labelColor];
  [v22 setTintColor:v23];

  v24 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100BD4214;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003640C;
  aBlock[3] = &unk_1010E74C8;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithDynamicProvider:v25];
  _Block_release(v25);

  [v13 setBackgroundColor:v26];

  v27 = [v2 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:v13];

    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v2[v11];
      [v30 addSubview:v31];
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

id sub_100BD4214(void *a1)
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
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = sub_100BD6920;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10002BC98;
    v12[3] = &unk_1010E7518;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double sub_100BD44B4(char *a1)
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
    if (qword_1011B0760 != -1)
    {
      swift_once();
    }

    v5 = &qword_10121B950;
  }

  else
  {
    if (qword_1011B0758 != -1)
    {
      swift_once();
    }

    v5 = &qword_10121B948;
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
  v1 = v0;
  v219.receiver = v0;
  v219.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v219, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v4 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    if (qword_1011B0718 != -1)
    {
      swift_once();
    }

    v56 = *&qword_10121B908;
    if (qword_1011B0720 != -1)
    {
      swift_once();
    }

    v57 = *&qword_10121B910;
    v58 = v56 + *&qword_10121B910;
    v59 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v222 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v223 = v59;
    v224 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_100BD67E8(&v222, &v218);
    if (qword_1011B0730 != -1)
    {
      swift_once();
    }

    v60 = *&qword_10121B920;
    v239.origin.x = v49;
    v239.origin.y = v51;
    v239.size.width = v53;
    v239.size.height = v55;
    Width = CGRectGetWidth(v239);
    v240.origin.x = v49;
    v240.origin.y = v51;
    v240.size.width = v53;
    v240.size.height = v55;
    Height = CGRectGetHeight(v240);
    if (Height >= Width)
    {
      Height = Width;
    }

    v63 = Height - (v58 + v58);
    if (v63 >= v60)
    {
      v64 = v60;
    }

    else
    {
      v64 = v63;
    }

    v65 = [v1 traitCollection];
    [v65 displayScale];
    v67 = v66;

    v68 = QRCode.dotAdjustedWidth(with:scale:)(v64, v67);
    sub_100BD68C4(&v222);
    v241.origin.x = v49;
    v241.origin.y = v51;
    v241.size.width = v53;
    v241.size.height = v55;
    v69 = CGRectGetWidth(v241);
    v70 = [v1 view];
    if (!v70)
    {
      goto LABEL_57;
    }

    v71 = v70;
    [v70 safeAreaInsets];
    v73 = v72;

    v74 = [v1 view];
    if (!v74)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v75 = v74;
    v217 = v68;
    v76 = v57 + v57 + v68;
    [v74 safeAreaInsets];

    v77 = sub_100058728(v49, v51, v53, v55, v73, (v69 - v76) * 0.5);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v212 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v80, v82}];
    v213 = v84;
    v86 = v85;
    v87 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v81, v83}];
    v216 = v89;
    if (qword_1011B0740 != -1)
    {
      v207 = v88;
      swift_once();
      v88 = v207;
    }

    v209 = v76 + *&qword_10121B930;
    v90 = v86 + v76 + *&qword_10121B930;
    if (qword_1011B0748 != -1)
    {
      v208 = v88;
      swift_once();
      v88 = v208;
    }

    v214 = v86;
    v215 = v88;
    v211 = *&qword_10121B938;
    v91 = v88 + v90 + *&qword_10121B938;
    if (qword_1011B0750 != -1)
    {
      swift_once();
    }

    v92 = *&qword_10121B940;
    v93 = v91 + v92 + v92;
    v242.origin.x = v77;
    v242.origin.y = v79;
    v242.size.width = v81;
    v242.size.height = v83;
    v94 = CGRectGetWidth(v242);
    v95 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v77, v79, v81, v83}];
    [*&v1[v95] setContentSize:{v94, v93}];
    v243.origin.x = v77;
    v243.origin.y = v79;
    v243.size.width = v81;
    v243.size.height = v83;
    v96 = CGRectGetHeight(v243);
    v97 = *&v1[v95];
    v98 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v99 = v97;
    if (v96 >= v93)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v92;
    }

    v101 = CGRect.centeringAlong(axes:in:)(0.0, v100, v94, v93);
    v103 = v102;
    v105 = v104;
    v107 = v106;

    [v98 setFrame:{v101, v103, v105, v107}];
    v108 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v112 = v111;
    v113 = v109;
    v114 = v110;
    v115 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v116 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v210 = v117;
    if (v116)
    {
      v118 = *&v1[v108];
      v119 = v116;
      v120 = v118;
      v121 = CGRect.centeringAlong(axes:in:)(0.0, 0.0, v76, v76);
      v123 = v122;
      v125 = v124;
      v127 = v126;

      [v119 setFrame:{v121, v123, v125, v127}];
      v128 = *&v1[v115];
      v129 = v114 - v209;
      v130 = v209 + v113;
      v131 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v128)
      {
        v132 = v131;
        [v128 bounds];
LABEL_44:
        v133 = v87;
        v134 = [v1 traitCollection];
        [v134 displayScale];

        CGRect.centeringAlong(axes:bounds:scale:)();
        [v132 setFrame:*&v217];

        v135 = *&v1[v212];
        v244.origin.x = v112;
        v244.origin.y = v130;
        v244.size.width = v210;
        v244.size.height = v129;
        MinY = CGRectGetMinY(v244);
        v137 = *&v1[v108];
        v138 = CGRect.centeringAlong(axes:in:)(0.0, MinY, v213, v214);
        v140 = v139;
        v142 = v141;
        v144 = v143;

        [v135 setFrame:{v138, v140, v142, v144}];
        v145 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v146 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v245.origin.x = v112;
        v245.origin.y = v214 + v211 + v130;
        v245.size.width = v210;
        v245.size.height = v129 - (v214 + v211);
        v147 = CGRectGetMinY(v245);
        v148 = *&v1[v108];
        v149 = CGRect.centeringAlong(axes:in:)(0.0, v147, v216, v215);
        v151 = v150;
        v153 = v152;
        v155 = v154;

        [v146 setFrame:{v149, v151, v153, v155}];
        v156 = *&v1[v145];
        v33 = *&v1[v133];
        [v156 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v129 = v110 - v209;
      v130 = v209 + v109;
      v131 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v132 = v131;
    goto LABEL_44;
  }

  if (!v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_1011B0710 != -1)
  {
    swift_once();
  }

  v15 = *&qword_10121B900;
  if (qword_1011B0728 != -1)
  {
    swift_once();
  }

  v16 = *&qword_10121B918;
  v17 = v15 + *&qword_10121B918;
  v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v222 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v223 = v18;
  v224 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_100BD67E8(&v222, &v218);
  if (qword_1011B0730 != -1)
  {
    swift_once();
  }

  v19 = *&qword_10121B920;
  v237.origin.x = v8;
  v237.origin.y = v10;
  v237.size.width = v12;
  v237.size.height = v14;
  v20 = CGRectGetWidth(v237);
  v238.origin.x = v8;
  v238.origin.y = v10;
  v238.size.width = v12;
  v238.size.height = v14;
  v21 = CGRectGetHeight(v238);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v22 = v21 - (v17 + v17);
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = QRCode.dotAdjustedWidth(with:scale:)(v23, v26);
  sub_100BD68C4(&v222);
  v28 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v30 = [v1 traitCollection];
  [v30 displayScale];

  CGRect.centeringAlong(axes:bounds:scale:)();
  [v29 setFrame:*&v27];

  v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v31)
  {
    v32 = *&v1[v28];
    v33 = v31;
    [v32 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v43 = NSDirectionalEdgeInsets.init(edge:length:)(v42, v16);
    v47 = CGRect.outset(by:for:)(0, v43, v44, v45, v46, v35, v37, v39, v41);
LABEL_45:
    [v33 setFrame:v47];
  }

  v157 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v158 = [v1 view];
  if (!v158)
  {
    __break(1u);
    goto LABEL_55;
  }

  v159 = v158;
  [v158 bounds];
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v167 = v166;

  [v157 setFrame:{v161, v163, v165, v167}];
  v168 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v169 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v170 = CGRectGetWidth(v246) * 0.3;
    if (qword_1011B0738 != -1)
    {
      swift_once();
    }

    v171 = *&qword_10121B928;
    if (*&qword_10121B928 < v170)
    {
      v170 = *&qword_10121B928;
    }

    v172 = *&v1[v169];
    v173 = CGRect.centeringAlong(axes:in:)(0.0, 0.0, v170, v170);
    v175 = v174;
    v177 = v176;
    v179 = v178;

    v180 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v173, v175, v177, v179}];
    CGAffineTransformMakeScale(&v218, v170 / v171, v170 / v171);
    a = v218.a;
    b = v218.b;
    c = v218.c;
    d = v218.d;
    tx = v218.tx;
    ty = v218.ty;
    v187 = *(v168 + 1);
    v220[0] = *v168;
    v220[1] = v187;
    v221 = *(v168 + 4);
    sub_10010FC20(&qword_1011B6F50, &qword_100F088F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100ED1A50;
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v225.x = 12.0;
    v225.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v225, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v226.x = 12.0;
    v226.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v226, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v227.y = 6.0;
    v227.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v227, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v228.y = 0.0;
    v228.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v228, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v229.y = 0.0;
    v229.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v229, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v230.x = 85.0;
    v230.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v230, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v231.x = 36.0;
    v231.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v231, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v232.x = 36.0;
    v232.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v232, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v233.x = 0.0;
    v233.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v233, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v234.x = 0.0;
    v234.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v234, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v235.x = 12.0;
    v235.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v235, &v218);
    v218.a = a;
    v218.b = b;
    v218.c = c;
    v218.d = d;
    v218.tx = tx;
    v218.ty = ty;
    v236.x = 12.0;
    v236.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v236, &v218);
    v189 = *&v1[v180];
    sub_100BD67E8(v220, &v218);
    [v189 frame];
    v191 = v190;
    v193 = v192;
    v195 = v194;
    v197 = v196;
    [*&v1[v169] bounds];
    v202 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v191, v193, v195, v197, v198, v199, v200, v201);
    sub_100BD68C4(v220);
    swift_setDeallocating();
    v203 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v202];
    v204 = *&v1[v203];
    v205 = *&v1[v169];
    v206 = v204;
    [v205 bounds];
    [v206 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_100BD6928;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10002BC98;
  v11 = &unk_1010E7568;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_100BD6930;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1005C3688;
  v11 = &unk_1010E75B8;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double sub_100BD5778(uint64_t a1)
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

char *sub_100BD5A0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBDC10;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_100009F78(0, qword_1011B21C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  v35[3] = v14;
  v35[0] = v18;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000959C(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100009F78(0, &qword_1011B6F58, CATransaction_ptr);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_100BD6948);
}

void sub_100BD5E94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_100BD5FC8()
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

id sub_100BD61F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(__n128 a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = *&v12[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v12[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a5;
  v14 = a5;

  [*&v12[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = j__swift_release(a3);
    (*(v9 + 8))(v11, v8, v17);
    a3 = v22[1];
  }

  if (a3)
  {
    sub_100009F78(0, &qword_1011B4940, UIColor_ptr);

    v18 = UIColor.init(_:)();
    v19 = *&v12[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v12[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v18;
    v20 = v18;

    sub_100BD5FC8();
  }

  return v12;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a6;
  v15 = a6;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v15];

  if ((a5 & 1) == 0)
  {
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v18 = j__swift_release(a4);
    (*(v11 + 8))(v13, v10, v18);
    a4 = v22[1];
  }

  if (a4)
  {
    sub_100009F78(0, &qword_1011B4940, UIColor_ptr);

    v19 = UIColor.init(_:)();
    v20 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v19;
    v21 = v19;

    sub_100BD5FC8();
  }
}

uint64_t sub_100BD66F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD6D00();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100BD675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD6D00();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100BD67C0(uint64_t a1)
{
  sub_100BD6D00();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100BD6868(void *a1)
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

unint64_t sub_100BD6958()
{
  result = qword_1011B6F60;
  if (!qword_1011B6F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6F60);
  }

  return result;
}

void sub_100BD69C8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1011B0758 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_10121B948];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100BD6C28()
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
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100BD6D00()
{
  result = qword_1011B6FC0;
  if (!qword_1011B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6FC0);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.getter();
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
  v11 = sub_10010FC20(&qword_1011B6FC8, &qword_100F08AD8);
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
  v17 = sub_10010FC20(&qword_1011B6FD0, &qword_100F08AE0);
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
  v23 = (a2 + *(sub_10010FC20(&qword_1011B6FD8, &unk_100F08AE8) + 36));
  *v23 = sub_100BD6F0C;
  v23[1] = v18;
  sub_100BD6F10(v26, v25);
  return sub_100BD6F48(v3, v25);
}

uint64_t sub_100BD6F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_10010FC20(&qword_1011B2DD8, &qword_100F05F50);
  State.wrappedValue.getter();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_10010FC20(&qword_1011B6FC8, &qword_100F08AD8);
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
  v16 = sub_10010FC20(&qword_1011B6FD0, &qword_100F08AE0);
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
  v22 = (a2 + *(sub_10010FC20(&qword_1011B6FD8, &unk_100F08AE8) + 36));
  *v22 = sub_100BDA424;
  v22[1] = v17;
  sub_100BD6F10(v34, v24);
  return sub_100BD6F48(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t sub_100BD71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100BD7234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100BD72B0(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100BD7300(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_1011B6FF8]];
      [v1 addSubview:*&v1[qword_1011B7000]];
    }

    else
    {
      [*&v1[qword_1011B6FF8] removeFromSuperview];
      [*&v1[qword_1011B7000] removeFromSuperview];
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
  sub_100BD7300(v4);
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
  return sub_100BD74E8;
}

void sub_100BD74E8(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_100BD7528(uint64_t a1)
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
  sub_100BD7D0C(v5);
  sub_100BD8384();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100BD9470(v8);
  sub_100BD6F10(v8, v7);
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
  sub_100BD9640(a1);

  return sub_100BD9714(a1);
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
  sub_100BD6F10(v4, (v4 + 32));
  return sub_100BD771C;
}

void sub_100BD771C(uint64_t a1, char a2)
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
    sub_100BD6F10((v2 + 8), (v2 + 40));
    sub_100BD9640(v2 + 8);
    sub_100BD9714((v2 + 8));
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
    sub_100BD9640(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_100BD9714(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_1011B0768 != -1)
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
    sub_100BD6F10(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    sub_100BD6F10(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + qword_1011B6FF8) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + qword_1011B7000) = v24;
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

  sub_100BD7D0C(0);
  sub_100BD8384();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  sub_100BD8888(v31);
  sub_10010FC20(qword_1011B36C0, &unk_100F088E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100EBC6B0;
  *(v32 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_100BD9714(a3);

  return v29;
}

double sub_100BD7BEC(void *a1)
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
  sub_100BD7D0C(0);
  sub_100BD8384();
}

void sub_100BD7CB0(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_100BD7CF8(uint64_t a1)
{
  v2 = *(v1 + qword_1011B6FF8);
  *(v1 + qword_1011B6FF8) = a1;
}

void sub_100BD7D0C(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_1011B6FF8] removeFromSuperview];
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

    v5 = *&v2[qword_1011B6FF8];
    *&v2[qword_1011B6FF8] = v4;
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
  sub_100BD6F10(&v50, &v49);
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
  sub_100BD9714(&v50);
  v23 = *&v2[qword_1011B6FF8];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_1011B6FF8] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_1011B6FF8] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_1011B6FF8] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_1011B6FF8] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_100BDA3EC(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_100BD9A18(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_1011B6FF8] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_100BDA3EC(&v56, v48);
    v44 = sub_100BD8210(v42, v43, v2);
    sub_100BD9A18(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_100BD8210(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
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

void sub_100BD8384()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v46 = *(v2 + 4);
  v47 = v3;
  v4 = *(v2 + 7);
  v48 = *(v2 + 6);
  v49 = v4;
  v5 = *(v2 + 1);
  v42 = *v2;
  v43 = v5;
  v6 = *(v2 + 3);
  v44 = *(v2 + 2);
  v45 = v6;
  sub_100BD6F10(&v42, &rect[3]);
  [v1 bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&rect[3] = v42;
  *&rect[5] = v43;
  *&rect[7] = v44;
  v51 = CGRectApplyAffineTransform(v50, &rect[3]);
  v11 = v51.origin.x;
  rect[0] = *&v51.origin.x;
  rect[2] = *&v51.origin.y;
  v12 = v51.size.width;
  v13 = v51.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v51));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v14 = CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v53)) * 0.5;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = CGRectGetHeight(v54);
  *&v55.origin.x = rect[0];
  *&v55.origin.y = rect[2];
  v55.size.width = v12;
  v55.size.height = v13;
  v17 = CGRectGetHeight(v55);
  sub_100BD9714(&v42);
  v18 = *&v1[qword_1011B7000];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_10010FC20(&qword_1011B21B0, &unk_100F088D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBDC20;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_100BDA3A0();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_100BD8888(uint64_t a1)
{
  sub_100BD8384();
  v3 = [*(v1 + qword_1011B6FF8) layer];
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

  v7 = [*(v1 + qword_1011B7000) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100BD89F8(uint64_t a1)
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
  sub_100BD9714(v6);
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
  result = sub_100030444(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_100020438(*(v1 + 72), *(v1 + 80));
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

double Radiosity.Specs.radiosity.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;

  return result;
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
  State.init(wrappedValue:)();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  sub_100BD6F10(a1, v14);
  View.modifier<A>(_:)();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return sub_100BD99DC(v14);
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
  sub_100BD6F10(v2, &v14);
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

__n128 sub_100BD8E00()
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
  *algn_10121B970 = v5;
  qword_10121B980 = *&tx;
  unk_10121B988 = *&ty;
  dword_10121B990 = 1050253722;
  qword_10121B998 = v3;
  unk_10121B9A0 = 0x402E000000000000;
  qword_10121B9A8 = 0;
  unk_10121B9B0 = 0;
  qword_10121B9B8 = sub_100BD8F00;
  unk_10121B9C0 = 0;
  qword_10121B9C8 = sub_100BD8F28;
  unk_10121B9D0 = 0;
  qword_10121B9D8 = 0x4040000000000000;
  return result;
}

float sub_100BD8F00(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_100F08EC4[a1];
  }
}

double sub_100BD8F28(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_100F08ED0[a1];
  }
}

__n128 sub_100BD8F70()
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
  *algn_10121B9F0 = v5;
  qword_10121BA00 = *&tx;
  unk_10121BA08 = *&ty;
  dword_10121BA10 = 1053609165;
  qword_10121BA18 = v3;
  unk_10121BA20 = 0x402E000000000000;
  qword_10121BA28 = 0;
  unk_10121BA30 = 0;
  qword_10121BA38 = variable initialization expression of Layer.alpha;
  unk_10121BA40 = 0;
  qword_10121BA48 = sub_100BD906C;
  unk_10121BA50 = 0;
  qword_10121BA58 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_1011B0770 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_100BD90E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_100BD6F10(a2, v5);
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
    sub_100BD6F10(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_100BD6F10(v5, v19);
    sub_100BD9A18(&v28);
    v10 = sub_100BD9A0C;
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

id sub_100BD9258(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  UIEdgeInsets.init(edges:inset:)();
  v19 = [v13 bezierPathWithRoundedRect:sub_100058728(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  v21 = [v19 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  return v15;
}

_BYTE *sub_100BD9414(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
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

__n128 sub_100BD9470@<Q0>(uint64_t a1@<X8>)
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

id sub_100BD94D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for _UIHostingView();
  v11 = type metadata accessor for Radiosity.UIView(0, v8, v9, v10);
  (*(v5 + 16))(v7, v2, v4);
  v12 = _UIHostingView.__allocating_init(rootView:)();
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
  sub_100BD6F10(v21, v20);
  v18 = objc_allocWithZone(v11);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v12, v3, v21);
}

double sub_100BD9640(_OWORD *a1)
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
  sub_100BD6F10(v14, v13);
  sub_100BD6F10(a1, v13);
  sub_100BD9714(v21);
  sub_100BD7528(v14);
  sub_100BD9714(v14);
  return result;
}

void sub_100BD9760(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  dispatch thunk of _UIHostingView.rootView.setter();
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
  sub_100BD6F10(v14, v13);
  sub_100BD9640(v14);
  sub_100BD9714(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_100BD98F4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_100BD8888(v2);
}

uint64_t sub_100BD9A74(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100BD9A8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100BD9AB8(uint64_t a1, int a2)
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

uint64_t sub_100BD9B00(uint64_t result, int a2, int a3)
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

uint64_t sub_100BD9BDC(uint64_t a1, int a2)
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

uint64_t sub_100BD9C24(uint64_t result, int a2, int a3)
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

uint64_t sub_100BD9CA4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100BD9CF4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100BD9D48(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_100BD9D88()
{
  result = qword_1011B7088;
  if (!qword_1011B7088)
  {
    sub_1001109D0(&qword_1011B6FD8, &unk_100F08AE8);
    sub_100020674(&qword_1011B7090, &qword_1011B6FC8, &qword_100F08AD8, &unk_100F08E68);
    sub_100020674(&qword_1011B7098, &qword_1011B70A0, &qword_100F08D50, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7088);
  }

  return result;
}

unint64_t sub_100BD9E6C()
{
  result = qword_1011B70A8[0];
  if (!qword_1011B70A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011B70A8);
  }

  return result;
}

uint64_t sub_100BD9EC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100BD9F48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

double sub_100BDA09C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_100BDA2E8()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100BDA3A0()
{
  result = qword_1011B21B8;
  if (!qword_1011B21B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B21B8);
  }

  return result;
}

uint64_t sub_100BDA428(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.colorScheme.setter();
}

double property wrapper backing initializer of Reactions.StackView.Model.reaction(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
  Published.init(initialValue:)();
  return result;
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_100BDA5B4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100BDA634(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7140, &qword_100F08F38);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011B7140, &qword_100F08F38);
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
  v4[16] = sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100BDAB10(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100BDAB90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7158, &qword_100F08F90);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B7150, &qword_100F08F88);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011B7158, &qword_100F08F90);
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
  v4[16] = sub_10010FC20(&qword_1011B7150, &qword_100F08F88);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100BDB050(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100BDB0D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7168, &qword_100F08FE0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011B7168, &qword_100F08FE0);
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
  v4[16] = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
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
  v4[16] = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100BDB8D8(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
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
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.setter();
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
  v5 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
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
  v4[16] = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
  Published.init(initialValue:)();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_10010FC20(&qword_1011B1180, &qword_100EFFA98);
  Published.init(initialValue:)();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
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
  v26 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_10010FC20(&qword_1011B1180, &qword_100EFFA98);
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_10010FC20(&qword_1011B7150, &qword_100F08F88);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_10010FC20(&qword_1011B7138, &qword_100F08F30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_10010FC20(&qword_1011B7150, &qword_100F08F88);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_10010FC20(&qword_1011B5600, &qword_100F06370);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_100BDC7A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return ObservedObject.projectedValue.getter();
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

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_1011B4820, &qword_100EFE078);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B0880, &unk_100F02D70);
  swift_storeEnumTagMultiPayload();
  v7 = v4[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_10010FC20(&unk_1011B3D50, &qword_100EFDEE0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v10;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  sub_10010FC20(&qword_1011B7190, &qword_100F09110);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011B7198, &qword_100F09118);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  sub_10010FC20(&qword_1011B1478, &qword_100F00188);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = type metadata accessor for DynamicTypeSize();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for BlendMode();
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
  static Published.subscript.getter(v107);

  v19 = *&v107[0];
  v20 = *(v1 + 16);
  if (v20 < *&v107[0])
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
    sub_100B4CD34(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    (v86)(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = UIContentSizeCategory.init(_:)();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    (v86)(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = UIContentSizeCategory.init(_:)();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v108 = v87;
    *(&v108 + 1) = v34;
    *&v109 = v24;
    *(&v109 + 1) = v45;
    LODWORD(v42) = v88;
    v110 = v88;
    *v39 = static VerticalAlignment.center.getter();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(sub_10010FC20(&qword_1011B71A0, &unk_100F09120) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107[0] = 0;
    *(&v107[0] + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    sub_100BDEEB8(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v109;
    *(v54 + 16) = v108;
    *(v54 + 32) = v55;
    *(v54 + 48) = v110;
    sub_100BDEF1C(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    sub_10010FC20(&qword_1011B71A8, &qword_100F09148);
    sub_10010FC20(&qword_1011B71B0, &qword_100F09150);
    sub_100BDF068();
    sub_100BDF1CC();
    v56 = v99;
    ForEach<>.init(_:id:content:)();
    v57 = static Alignment.center.getter();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = sub_10010FC20(&qword_1011B71F0, &qword_100F09168);
    sub_100BDE014(&v108, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    sub_1000089F8(v58, v92, &qword_1011B7190, &qword_100F09110);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = sub_10010FC20(&qword_1011B71F8, &qword_100F09170);
    v63(v66 + *(v67 + 48), v64, v61);
    sub_1000089F8(v65, v66 + *(v67 + 64), &qword_1011B7190, &qword_100F09110);
    sub_1000095E8(v58, &qword_1011B7190, &qword_100F09110);
    v68 = *(v62 + 8);
    v68(v56, v61);
    sub_1000095E8(v65, &qword_1011B7190, &qword_100F09110);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v69 = sub_10010FC20(&qword_1011B7200, &qword_100F09178);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v107[1];
      *v71 = v107[0];
      v71[1] = v72;
      v71[2] = v107[2];
      v73 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(sub_10010FC20(&qword_1011B7208, &qword_100F09180) + 36);
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

uint64_t sub_100BDD528@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = type metadata accessor for ScaleTransition();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011B74E0, &qword_100F09300);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = static Alignment.center.getter();
  a4[1] = v16;
  v17 = sub_10010FC20(&qword_1011B7588, &qword_100F093A8);
  sub_100BDD7F4(a2, v22, a4 + *(v17 + 44));
  static UnitPoint.center.getter();
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v18 = sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  Transition.animation(_:)();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = AnyTransition.init<A>(_:)();
  (*(v11 + 8))(v15, v10);
  result = sub_10010FC20(&qword_1011B71B0, &qword_100F09150);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_100BDD7F4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = sub_10010FC20(&qword_1011B7590, &qword_100F093B0) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_1011B74F0, &qword_100F09310) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = static Color.white.getter();
  v14 = &v11[*(v8 + 44)];
  v15 = *(sub_10010FC20(&qword_1011B74F8, &qword_100F09318) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = type metadata accessor for BlendMode();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(sub_10010FC20(&qword_1011B7500, &qword_100F09320) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  sub_100BDDC5C(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = sub_10010FC20(&qword_1011B7508, &qword_100F09358);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(sub_10010FC20(&qword_1011B7510, &qword_100F09360) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  sub_1000089F8(v11, v26, &qword_1011B74F0, &qword_100F09310);
  v28 = v42;
  sub_1000089F8(v7, v42, &qword_1011B7590, &qword_100F093B0);
  v29 = v43;
  sub_1000089F8(v26, v43, &qword_1011B74F0, &qword_100F09310);
  v30 = sub_10010FC20(&qword_1011B7598, &qword_100F093B8);
  sub_1000089F8(v28, v29 + *(v30 + 48), &qword_1011B7590, &qword_100F093B0);
  sub_1000095E8(v7, &qword_1011B7590, &qword_100F093B0);
  sub_1000095E8(v11, &qword_1011B74F0, &qword_100F09310);
  sub_1000095E8(v28, &qword_1011B7590, &qword_100F093B0);
  return sub_1000095E8(v26, &qword_1011B74F0, &qword_100F09310);
}

uint64_t sub_100BDDC5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_10010FC20(&qword_1011B7530, &qword_100F09378) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = type metadata accessor for ColorSchemeContrast();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Reactions.StackView(0);
  sub_100B4D1B4(v12);
  sub_100B4D164(v8);
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
      v23 = Color.init(_:)();
LABEL_7:
      *v22 = AnyShapeStyle.init<A>(_:)();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = static HierarchicalShapeStyle.quinary.getter();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = static HierarchicalShapeStyle.quaternary.getter();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = Color.init(_:)();
  }

  *v22 = AnyShapeStyle.init<A>(_:)();
  return sub_1000095E8(v15, &qword_1011B7530, &qword_100F09378);
}

uint64_t sub_100BDE014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v79 = a1;
  v88 = a4;
  v75 = type metadata accessor for ScaleTransition();
  v72 = *(v75 - 8);
  __chkstk_darwin();
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011B74E0, &qword_100F09300);
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin();
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v65 - v8;
  v9 = type metadata accessor for Image.ResizingMode();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin();
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4970, &qword_100F03C00);
  __chkstk_darwin();
  v82 = &v65 - v11;
  v83 = sub_10010FC20(&qword_1011B74E8, &qword_100F09308) - 8;
  __chkstk_darwin();
  v87 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v65 - v13;
  v15 = sub_10010FC20(&qword_1011B74F0, &qword_100F09310) - 8;
  __chkstk_darwin();
  v89 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v65 - v17;
  v86 = static Color.clear.getter();
  v19 = *(a1 + 8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = v117;
  LODWORD(v81) = v118;
  v80 = v119;
  LODWORD(v78) = v120;
  v76 = v122;
  *&v77 = v121;
  v21 = static Color.white.getter();
  v22 = &v18[*(v15 + 44)];
  v23 = *(sub_10010FC20(&qword_1011B74F8, &qword_100F09318) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = type metadata accessor for BlendMode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(sub_10010FC20(&qword_1011B7500, &qword_100F09320) + 56)) = 256;
  *v18 = v86;
  *(v18 + 1) = v20;
  v18[16] = v81;
  *(v18 + 3) = v80;
  v18[32] = v78;
  v27 = v76;
  *(v18 + 5) = v77;
  *(v18 + 6) = v27;
  v86 = v18;
  sub_100BDEB5C(&v123);
  v80 = *(&v125 + 1);
  v81 = v125;
  LOBYTE(v22) = v126;
  v28 = type metadata accessor for Font.Design();
  v77 = v124;
  v78 = v123;
  v29 = v82;
  (*(*(v28 - 8) + 56))(v82, 1, 1, v28);
  v30 = static Font.system(size:weight:design:)();
  sub_1000095E8(v29, &qword_1011B4970, &qword_100F03C00);
  KeyPath = swift_getKeyPath();
  LOBYTE(v123) = v22;
  static Alignment.center.getter();
  v82 = v19;
  _FrameLayout.init(width:height:alignment:)();
  sub_100BDDC5C(&v123);
  v32 = v123;
  v33 = &v14[*(v83 + 44)];
  v34 = sub_10010FC20(&qword_1011B7508, &qword_100F09358);
  (*(v26 + 16))(&v33[*(v34 + 36)], v85, v25);
  *v33 = v32;
  *&v33[*(sub_10010FC20(&qword_1011B7510, &qword_100F09360) + 56)] = 256;
  v35 = v77;
  *v14 = v78;
  *(v14 + 1) = v35;
  v36 = v80;
  *(v14 + 4) = v81;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v133[1];
  *(v14 + 72) = v133[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v133[2];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v123);

  v39 = v123;
  if (!v123)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v123);

  if (v123 != 1)
  {

LABEL_5:
    sub_100BDF994(&v123);
    goto LABEL_6;
  }

  v40 = v39;
  Image.init(uiImage:)();
  v42 = v66;
  v41 = v67;
  v43 = v68;
  (*(v67 + 104))(v66, enum case for Image.ResizingMode.stretch(_:), v68);
  v85 = Image.resizable(capInsets:resizingMode:)();

  (*(v41 + 8))(v42, v43);
  v44 = static Alignment.center.getter();
  v83 = v45;
  v84 = v44;
  static Color.black.getter();
  v81 = Color.opacity(_:)();

  static UnitPoint.center.getter();
  v46 = v69;
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v47 = sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v71;
  v49 = v75;
  Transition.animation(_:)();

  (*(v72 + 8))(v46, v49);
  v50 = v73;
  v51 = v74;
  (*(v73 + 16))(v70, v48, v74);
  *&v123 = v49;
  *(&v123 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = AnyTransition.init<A>(_:)();
  (*(v50 + 8))(v48, v51);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *(v116 + 8) = v100;
  v110 = v85;
  LOWORD(v111) = 257;
  *(&v111 + 1) = v84;
  *&v112 = v83;
  *(&v112 + 1) = v81;
  *&v113 = 0x3FE0000000000000;
  BYTE8(v113) = 0;
  v114 = 0uLL;
  LOBYTE(v115) = 2;
  *(&v115 + 1) = 0x3FF0000000000000;
  *&v116[0] = v52;
  *(&v116[1] + 8) = v101;
  *(&v116[2] + 8) = v102;
  UIScreen.Dimensions.size.getter();
  v129 = v116[0];
  v130 = v116[1];
  v131 = v116[2];
  v132 = *&v116[3];
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v123 = v110;
  v124 = v111;
LABEL_6:
  v53 = v86;
  v54 = v89;
  sub_1000089F8(v86, v89, &qword_1011B74F0, &qword_100F09310);
  v55 = v87;
  sub_1000089F8(v38, v87, &qword_1011B74E8, &qword_100F09308);
  v96 = v129;
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v92 = v125;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v90 = v123;
  v91 = v124;
  v56 = v54;
  v57 = v88;
  sub_1000089F8(v56, v88, &qword_1011B74F0, &qword_100F09310);
  v58 = sub_10010FC20(&qword_1011B7518, &qword_100F09368);
  sub_1000089F8(v55, v57 + *(v58 + 48), &qword_1011B74E8, &qword_100F09308);
  v59 = v57 + *(v58 + 64);
  v106 = v96;
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v104 = v94;
  v105 = v95;
  v102 = v92;
  v103 = v93;
  v100 = v90;
  v101 = v91;
  sub_1000089F8(&v100, &v110, &qword_1011B7520, &qword_100F09370);
  sub_1000095E8(v38, &qword_1011B74E8, &qword_100F09308);
  sub_1000095E8(v53, &qword_1011B74F0, &qword_100F09310);
  v60 = v107;
  *(v59 + 96) = v106;
  *(v59 + 112) = v60;
  *(v59 + 128) = v108;
  *(v59 + 144) = v109;
  v61 = v103;
  *(v59 + 32) = v102;
  *(v59 + 48) = v61;
  v62 = v105;
  *(v59 + 64) = v104;
  *(v59 + 80) = v62;
  v63 = v101;
  *v59 = v100;
  *(v59 + 16) = v63;
  v116[0] = v96;
  v116[1] = v97;
  v116[2] = v98;
  *&v116[3] = v99;
  v112 = v92;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v110 = v90;
  v111 = v91;
  sub_1000095E8(&v110, &qword_1011B7520, &qword_100F09370);
  sub_1000095E8(v55, &qword_1011B74E8, &qword_100F09308);
  return sub_1000095E8(v89, &qword_1011B74F0, &qword_100F09310);
}

double sub_100BDEB5C@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ScaleTransition();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v35);

  if (*(&v35[0] + 1))
  {
    sub_1000098E0();
    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = static Animation.easeInOut(duration:)();
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    (*(v4 + 16))(v6, v8, v3);
    sub_100BDF9B4(&qword_1011B7528, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
    v17 = AnyTransition.init<A>(_:)();
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
    v18 = Image.init(_internalSystemName:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v35);

    if (LOBYTE(v35[0]) == 1)
    {
      v19 = static Color.primary.getter();
    }

    else
    {
      v19 = static Color.accentColor.getter();
    }

    v20 = v19;
    v21 = static Font.callout.getter();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_10010FC20(&qword_1011B7538, &qword_100F09380);
  sub_10010FC20(&qword_1011B7540, &qword_100F09388);
  sub_100BDF9FC();
  sub_100BDFAE0();
  _ConditionalContent<>.init(storage:)();
  result = *v35;
  v24 = v35[1];
  v25 = v35[2];
  v26 = v36;
  *a2 = v35[0];
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

uint64_t sub_100BDEEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BDEF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BDEF80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for BlendMode() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100BDD528(v1 + v4, v7, a1);
}

unint64_t sub_100BDF068()
{
  result = qword_1011B71B8;
  if (!qword_1011B71B8)
  {
    sub_1001109D0(&qword_1011B71A8, &qword_100F09148);
    sub_100BDF0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71B8);
  }

  return result;
}

unint64_t sub_100BDF0EC()
{
  result = qword_1011B71C0;
  if (!qword_1011B71C0)
  {
    sub_1001109D0(&qword_1011B71C8, &qword_100F09158);
    sub_100BDF178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71C0);
  }

  return result;
}

unint64_t sub_100BDF178()
{
  result = qword_1011B71D0;
  if (!qword_1011B71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71D0);
  }

  return result;
}

unint64_t sub_100BDF1CC()
{
  result = qword_1011B71D8;
  if (!qword_1011B71D8)
  {
    sub_1001109D0(&qword_1011B71B0, &qword_100F09150);
    sub_100020674(&qword_1011B71E0, &qword_1011B71E8, &qword_100F09160, &protocol conformance descriptor for ZStack<A>);
    sub_100020674(&qword_1011B5ED8, &qword_1011B5EE0, &unk_100F06DF0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B71D8);
  }

  return result;
}

unint64_t sub_100BDF2D0()
{
  result = qword_1011B7210;
  if (!qword_1011B7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7210);
  }

  return result;
}

void sub_100BDF37C(uint64_t a1)
{
  sub_100BDF48C(319);
  if (v1 <= 0x3F)
  {
    sub_100BDF520(319, &qword_1011B45F8, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_100BDF520(319, &unk_1011B3228, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_100BDF520(319, &qword_1011B4260, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100BDF48C(uint64_t a1)
{
  if (!qword_1011B7280)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_100BDF9B4(&qword_1011B7188, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B7280);
    }
  }
}

void sub_100BDF520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100BDF57C(uint64_t a1)
{
  sub_1000054CC(319, &qword_1011B72F8, &qword_1011B7770, &qword_100F083D0);
  if (v1 <= 0x3F)
  {
    sub_100005390(319, &unk_1011B7300, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &unk_1011B5740, &qword_1011B1180, &qword_100EFFA98);
      if (v3 <= 0x3F)
      {
        sub_100005390(319, &qword_1011B3E78, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100BDF718(uint64_t a1, unsigned int a2)
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

uint64_t sub_100BDF75C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100BDF7C4()
{
  result = qword_1011B74B0;
  if (!qword_1011B74B0)
  {
    sub_1001109D0(&qword_1011B74B8, &qword_100F092F0);
    sub_100BDF850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74B0);
  }

  return result;
}

unint64_t sub_100BDF850()
{
  result = qword_1011B74C0;
  if (!qword_1011B74C0)
  {
    sub_1001109D0(&qword_1011B7208, &qword_100F09180);
    sub_100BDF8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74C0);
  }

  return result;
}

unint64_t sub_100BDF8DC()
{
  result = qword_1011B74C8;
  if (!qword_1011B74C8)
  {
    sub_1001109D0(&qword_1011B7200, &qword_100F09178);
    sub_100020674(&qword_1011B74D0, &qword_1011B74D8, &qword_100F092F8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B74C8);
  }

  return result;
}

double sub_100BDF994(uint64_t a1)
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

uint64_t sub_100BDF9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100BDF9FC()
{
  result = qword_1011B7548;
  if (!qword_1011B7548)
  {
    sub_1001109D0(&qword_1011B7538, &qword_100F09380);
    sub_100020674(&qword_1011B7550, &qword_1011B7558, &qword_100F09390, &protocol conformance descriptor for _AnimationView<A>);
    sub_100020674(&qword_1011B5ED8, &qword_1011B5EE0, &unk_100F06DF0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7548);
  }

  return result;
}

unint64_t sub_100BDFAE0()
{
  result = qword_1011B7560;
  if (!qword_1011B7560)
  {
    sub_1001109D0(&qword_1011B7540, &qword_100F09388);
    sub_100BDFB98();
    sub_100020674(&unk_1011B48B0, &qword_1011B2D48, &qword_100F03C60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7560);
  }

  return result;
}

unint64_t sub_100BDFB98()
{
  result = qword_1011B7568;
  if (!qword_1011B7568)
  {
    sub_1001109D0(&qword_1011B7570, &qword_100F09398);
    sub_100020674(&qword_1011B7578, &qword_1011B7580, &qword_100F093A0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7568);
  }

  return result;
}

id sub_100BDFD38(uint64_t a1, uint64_t a2)
{
  sub_100018AA0(a1, v15);
  v5 = v16;
  if (v16)
  {
    sub_10000954C(v15, v16);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v5);
    sub_10000959C(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for SliderView.PanGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  sub_100011EC0(a1);
  return v12;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_1011B0778 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_1011B0780 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_100BE0058()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_1011B0788 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1011B0788 != -1)
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
  if (qword_1011B0790 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_1011B0798 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_100BE0290()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10121BAC0 = result;
  return result;
}

double sub_100BE02E4()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_10121BAC8 = *&result;
  return result;
}

id SliderView.panRecognizer.getter(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v1 action:"panGestureRecognized:"];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1, __n128 a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = SliderView.panRecognizer.getter(a2);
  return sub_100BE0424;
}

void sub_100BE0424(uint64_t *a1)
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
  return sub_100BE0734;
}

void sub_100BE0734(void *a1, char a2)
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
  return sub_100BE0A10;
}

void sub_100BE0A10(void *a1, char a2)
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
  return sub_100BE0CE8;
}

void sub_100BE0CE8(void *a1, char a2)
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
  swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = SliderView.panRecognizer.getter(v4);
  [v5 setEnabled:*(v1 + v3)];
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
  return sub_100BE0F70;
}

void sub_100BE0F70(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = SliderView.panRecognizer.getter(v4);
    [v7 setEnabled:*(v5 + v6)];
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

  sub_100BE37D8();
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
  return sub_100BE11EC;
}

void sub_100BE11EC(uint64_t *a1, char a2, __n128 a3)
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
  sub_100BE37D8();
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

uint64_t sub_100BE13A8(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_100BE1430(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v3, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v4, "setSemanticContentAttribute:", a1);
  return [*&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v1, "semanticContentAttribute")}];
}

char *sub_100BE166C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIView.Corner.Radius();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v15 = &v95 - v14;
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
  if (qword_1011B04D0 != -1)
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
  v38 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v38;
  v39 = v33;
  v40 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter(v41);
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v40[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v40;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_1011B0778;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v51 = type metadata accessor for UIView.Corner();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  UIView.corner.setter();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  result = swift_allocObject();
  *(result + 1) = xmmword_100EE4600;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 4) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_100009F78(0, qword_1011B21C0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v95 activateConstraints:isa];

      return v44;
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
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
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

      sub_100BE308C();
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
        *(v12 + 16) = sub_100BE3BB0;
        *(v12 + 24) = v8;
        aBlock[4] = sub_100029B6C;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        aBlock[3] = &unk_1010E7D28;
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

void sub_100BE2464(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v34] != 1)
      {
        return;
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v1;
      v1[v34] = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = v1;
      *(v36 + 32) = sub_100BE3E88;
      *(v36 + 40) = v35;
      v26 = objc_opt_self();
      v55 = sub_100BE41D8;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1010E7ED0;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v23] != 1)
      {
        return;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      v1[v23] = 0;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = v1;
      *(v25 + 32) = sub_100BE3E70;
      *(v25 + 40) = v24;
      v26 = objc_opt_self();
      v55 = sub_100BE3E78;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1010E7E58;
    }

    v53 = sub_10002BC98;
    v54 = v27;
    v37 = _Block_copy(&aBlock);
    v38 = v1;

    [v26 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v28)
    {
      goto LABEL_54;
    }

    [v28 constant];
    v29 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v29 = v30;
    v29[8] = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v32] == 1)
    {
      v33 = v1;

      return;
    }

    v1[v32] = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    *(v39 + 24) = v1;
    *(v39 + 32) = sub_100BE3EA8;
    *(v39 + 40) = v31;
    v40 = objc_opt_self();
    v55 = sub_100BE41D8;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10002BC98;
    v54 = &unk_1010E7F48;
    v37 = _Block_copy(&aBlock);
    v41 = v1;

    [v40 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v37);
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
  [a1 translationInView:v1];
  v6 = v8.n128_f64[0];
  v8.n128_f64[0] = fabs(v7);
  if (qword_1011B0798 != -1)
  {
    v50 = v8.n128_u64[0];
    swift_once();
    v8.n128_u64[0] = v50;
  }

  if (v8.n128_f64[0] >= *&static SliderView.Specs.escapeHeight)
  {
    v42 = SliderView.panRecognizer.getter(v8);
    [v42 setState:4];

    return;
  }

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = -v6;
  if (v9 != 1)
  {
    v10 = v6;
  }

  v11 = v5 + v10;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v11)
  {
    Width = v11;
  }

  if (Width < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = Width;
  }

  v14 = v1;
  [v1 bounds];
  v15 = v13 / CGRectGetWidth(v59);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v57 = 14;
  v17 = sub_100025D88();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0)
  {
    v22 = 0;
    v18 = v14;
    goto LABEL_43;
  }

  v18 = v1;
  v19 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    if (qword_1011B07A8 != -1)
    {
      swift_once();
    }

    v21 = v20 + *&qword_10121BAC8;
    if (v20 - *&qword_10121BAC8 <= v20 + *&qword_10121BAC8)
    {
      if (v20 - *&qword_10121BAC8 <= v16)
      {
        v22 = v16 <= v21;
        if (v16 <= v21)
        {
          v16 = v20;
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
  v22 = 0;
LABEL_43:
  v43 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v16 != *&v18[v43])
  {
    v44 = v16 == 1.0;
    if (v16 == 0.0)
    {
      v44 = 1;
    }

    if (v44 || v22)
    {
      [*&v18[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v16);
  v45 = v14;
  v46 = &v14[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);
    v49 = *&v45[v43];

    v47(1, v49);
    sub_100020438(v47, v48);
  }
}

void sub_100BE2B78(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_100020438(v2, v3);
  }
}

void sub_100BE2BEC(uint64_t a1, char a2)
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
    sub_100020438(v5, v6);
  }
}

void sub_100BE2D0C(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = type metadata accessor for UIView.Corner.Radius();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      v16 = qword_1011B0778;
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

  v13 = qword_1011B0780;
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
  static CACornerMask.all.getter();
  UIView.Corner.init(radius:mask:)();
  v18 = type metadata accessor for UIView.Corner();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  UIView.corner.setter();
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
  sub_100BE308C();
  [a2 layoutIfNeeded];
}

void sub_100BE308C()
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
    sub_100BE308C();
    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    if (qword_1011B07A0 != -1)
    {
      swift_once();
    }

    v13 = qword_10121BAC0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_100BE3D98, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    v2 = qword_1011B07A0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_10121BAC0;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_100BE3DC0, v5, sub_100BE3DE0, v6, 0.65, 0.0);
  }
}

void sub_100BE3774(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_100BE37D8()
{
  v1 = v0;
  v2 = sub_100025D88();
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

      sub_10010FC20(&qword_1011B5630, "\b)\n");
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100EBE270;
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
      sub_100009F78(0, qword_1011B21C0, NSLayoutConstraint_ptr);
      v31 = v29;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

id sub_100BE3BB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_100BE3C2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100BE3DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

unint64_t sub_100BE3E08()
{
  result = qword_1011B76A8;
  if (!qword_1011B76A8)
  {
    sub_100009F78(255, &qword_1011B76A0, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B76A8);
  }

  return result;
}

uint64_t sub_100BE3EC8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_100BE3F10()
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
  if (qword_1011B04D0 != -1)
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
  _assertionFailure(_:_:file:line:flags:)();
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

BOOL sub_100BE4230(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100F09C98[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100F09C98[*(*(a2 + 48) + v7)];
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

uint64_t sub_100BE4310(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100BF905C(&qword_1011B48E0, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_100BF905C(&qword_1011B48E8, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
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

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v81 = a5;
  v82 = a4;
  v80 = a2;
  v79 = type metadata accessor for UIViewConfigurationState();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v11, &qword_1011B6D30, &unk_100F07CB0);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(&v6[v17], v15, type metadata accessor for SymbolButton.Configuration);
    if (v16(v11, 1, v12) != 1)
    {
      sub_1000095E8(v11, &qword_1011B6D30, &unk_100F07CB0);
    }
  }

  else
  {
    sub_100BF8FF4(v11, v15, type metadata accessor for SymbolButton.Configuration);
  }

  v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v18])
  {
    sub_100282F24(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = xmmword_100EBCEE0;
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v20 = &selRef_trackNumber;
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
        if (qword_1011B07E8 != -1)
        {
          swift_once();
        }

        v26 = static SymbolButton.Background.normal;
        v25 = qword_10121BB88;
        v28 = qword_10121BB90;
        v27 = qword_10121BB98;
        v29 = *(v15 + 25);
        v30 = *(v15 + 26);
        v32 = *(v15 + 27);
        v31 = *(v15 + 28);

        v33 = v25;
        sub_100282F24(v29, v30, v32, v31);
        *(v15 + 25) = v26;
        *(v15 + 26) = v25;
        *(v15 + 27) = v28;
        *(v15 + 28) = v27;
        a3 = v75;
        v12 = v83;
        v20 = &selRef_trackNumber;
        v21 = v74;
      }

      v34 = [v6 v20[4]];
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
          if (qword_1011B07F0 != -1)
          {
            swift_once();
          }

          v41 = static SymbolButton.Background.highlighted;
          v42 = qword_10121BBA8;
          v43 = qword_10121BBB8;
          v74 = qword_10121BBB0;
          v44 = *(v15 + 25);
          v45 = *(v15 + 26);
          v46 = *(v15 + 27);
          v47 = *(v15 + 28);

          v48 = v42;
          sub_100282F24(v44, v45, v46, v47);
          *(v15 + 25) = v41;
          *(v15 + 26) = v42;
          *(v15 + 27) = v74;
          *(v15 + 28) = v43;
          a3 = v75;
          v40 = v83;
          v20 = &selRef_trackNumber;
        }

        v49 = *(v40 + 68);
        *&v15[v49] = 0x3FE0000000000000;
        v50 = [v6 v20[4]];
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
                sub_100282F24(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
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
          sub_100282F24(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
          *(v15 + 25) = 0x3FF0000000000000;
          *(v15 + 26) = 0;
          *(v15 + 27) = 0;
          *(v15 + 28) = 0;
        }

        v62 = *(v61 + 68);
        *&v15[v62] = 0x3FF0000000000000;
        v63 = [v6 v20[4]];
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

    v71 = [v6 v20[4]];
    v72 = v77;
    UIViewConfigurationState.init(traitCollection:)();
    [v6 isEnabled];
    UIViewConfigurationState.isDisabled.setter();
    [v6 isSelected];
    UIViewConfigurationState.isSelected.setter();
    [v6 isHighlighted];
    UIViewConfigurationState.isHighlighted.setter();
    v69(v72, v15);
    sub_100020438(v69, v70);
    (*(v78 + 8))(v72, v79);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v15, v80, a3, v82, v81 & 1, _swiftEmptyArrayStorage);
  return sub_100BF7180(v15, type metadata accessor for SymbolButton.Configuration);
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
  v12 = xmmword_100EFDCA0;
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
  v8 = sub_100BF5FEC(a1, a2, a3);
  sub_100020438(a2, a3);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100BF5FEC(a1, a2, a3);
  sub_100020438(a2, a3);
  return v5;
}

void sub_100BE51EC(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
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

        sub_100020438(v3, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000095E8(v8, &qword_1011B7C70, &unk_100EFFD00);
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
  v3 = sub_100BEDD78();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_100BEDC00();
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
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_100030444(a1, a2);
  sub_100020438(v8, v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_100020438(a1, a2);
  return sub_1000095E8(v6, &qword_1011B6D30, &unk_100F07CB0);
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BE585C;
}

void sub_100BE585C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_1000095E8(v4, &qword_1011B6D30, &unk_100F07CB0);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  UIViewConfigurationState.init(traitCollection:)();
  [v0 isEnabled];
  UIViewConfigurationState.isDisabled.setter();
  [v0 isSelected];
  UIViewConfigurationState.isSelected.setter();
  [v0 isHighlighted];
  return UIViewConfigurationState.isHighlighted.setter();
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BF94BC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100BE5BC0(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
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
    sub_1000095E8(v7, &qword_1011B6D30, &unk_100F07CB0);
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BF94BC;
}

void sub_100BE5DB8(void ***a1)
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
    sub_1000095E8(v6, &qword_1011B6D30, &unk_100F07CB0);
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BF94BC;
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BF94BC;
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
  v5 = *(*(sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0) - 8) + 64);
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
  return sub_100BE61F8;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_100BF8F8C(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
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
  sub_100BF8F8C(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_100BE63CC;
}

void sub_100BE63CC(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_100BF8F8C(*(*a1 + 40), v4, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_100BF7180(v5, type metadata accessor for SymbolButton.Configuration);
  free(v5);
  free(v4);

  free(v3);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_1011B07E8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_1011B07F0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_100030444(*v0, v0[1]);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_100030444(v1, *(v0 + 40));
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 32), *(v2 + 40));
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

void SymbolButton.setConfiguration(_:animation:updates:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  LODWORD(v171) = a5;
  v165 = a4;
  v163 = a3;
  v169 = *&a2;
  ObjectType = swift_getObjectType();
  v175 = sub_10010FC20(&qword_1011B1188, &qword_100EFFAA0);
  __chkstk_darwin();
  v9 = &v159 - v8;
  v10 = type metadata accessor for UUID();
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
  sub_100BF8F8C(v6 + v22, v21, type metadata accessor for SymbolButton.Configuration);
  v23 = a1;
  v24 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v21);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_62;
  }

  sub_100BF8F8C(v23, v18, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v160 = v18;
  v161 = v6;
  sub_100BF6E60(v18, v6 + v22);
  swift_endAccess();
  UUID.init()();
  v162 = UUID.uuidString.getter();
  v177 = v27;
  v173[1](v12, v174);
  v28 = *(v13 + 36);
  v29 = *(v175 + 12);
  v175 = v21;
  sub_1000089F8(&v21[v28], v9, &qword_1011B7710, &qword_100EFF6F0);
  sub_1000089F8(v23 + v28, &v9[v29], &qword_1011B7710, &qword_100EFF6F0);
  v30 = type metadata accessor for UIView.Corner();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v9, 1, v30);
  v33 = v31(&v9[v29], 1, v30);
  v34 = v23;
  if (v32 == 1)
  {
    if (v33 != 1)
    {
      sub_1000095E8(&v9[v29], &qword_1011B7710, &qword_100EFF6F0);
LABEL_6:
      sub_1000095E8(v9, &qword_1011B7710, &qword_100EFF6F0);
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

  sub_1000095E8(v9, &qword_1011B1188, &qword_100EFFAA0);
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
    v39 = String._bridgeToObjectiveC()();
    v40 = objc_opt_self();
    v41 = [v40 _systemImageNamed:v39];

    if (!v41)
    {
      v42 = String._bridgeToObjectiveC()();
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
    if (qword_1011B04C8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    v59 = sub_1000060E4(v58, qword_10121B578);
    v60 = v176;
    sub_100BF8F8C(v57, v176, type metadata accessor for SymbolButton.Configuration);
    v61 = v35;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

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
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v72;

        v60 = v176;
      }

      v73 = sub_100010744(v68, v69, &aBlock);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_100010744(v162, v36, &aBlock);
      *(v65 + 22) = 2082;
      v74 = SymbolButton.Configuration.description.getter();
      v76 = v75;
      sub_100BF7180(v60, type metadata accessor for SymbolButton.Configuration);
      v77 = sub_100010744(v74, v76, &aBlock);

      *(v65 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v65, 0x20u);
      swift_arrayDestroy();

      v57 = v178;
    }

    else
    {

      sub_100BF7180(v60, type metadata accessor for SymbolButton.Configuration);
    }

    sub_100BEF154(v57);
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

        sub_100030444(v82, v84);
        if (v82)
        {
          goto LABEL_35;
        }

LABEL_30:
        v79 += 6;
        sub_100020438(v80, v81);
        if (!--v78)
        {
          goto LABEL_36;
        }
      }

      sub_100030444(v82, v84);
      sub_100030444(v80, v81);
      v80(v61);
      if (!v82)
      {
        goto LABEL_30;
      }

LABEL_35:
      v82(v61);
      sub_100020438(v82, v83);
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
    if (sub_100BF6928(v180, v186))
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

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

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
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v115;
      }

      v116 = sub_100010744(v112, v113, v179);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_100010744(v162, v177, v179);

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
  if (qword_1011B04C8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, qword_10121B578);
  v47 = v168;
  sub_100BF8F8C(v45, v168, type metadata accessor for SymbolButton.Configuration);
  v48 = v35;

  v49 = Logger.logObject.getter();
  LODWORD(v50) = static os_log_type_t.debug.getter();

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
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v120;

      v47 = v168;
      LOBYTE(v50) = v174;
    }

    v121 = sub_100010744(v55, v56, &aBlock);

    *(v51 + 4) = v121;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_100010744(v162, v36, &aBlock);
    *(v51 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v47;
    v125 = v124;
    sub_100BF7180(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_100010744(v122, v125, &aBlock);

    *(v51 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v45 = v178;
  }

  else
  {

    sub_100BF7180(v47, type metadata accessor for SymbolButton.Configuration);
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
      sub_100BEFBCC();
    }

    v130 = swift_allocObject();
    v171 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v174 = v130 + 16;
    v176 = objc_opt_self();
    v173 = v48;
    v21 = v175;
    sub_100BF8F8C(v175, v129, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v45, v54, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v166 + 80);
    v132 = (v131 + 16) & ~v131;
    v166 = v167 + v131;
    v133 = (v167 + v131 + v132) & ~v131;
    v167 += 7;
    v168 = v131;
    v134 = (v167 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_100BF8FF4(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8FF4(v54, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v173;
    v136 = v174;
    *(v135 + v134) = v173;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_100BF6EC4;
    *(v138 + 24) = v135;
    v174 = v135;
    *&v196 = sub_100029B6C;
    *(&v196 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v169 = COERCE_DOUBLE(&v195);
    *&v195 = sub_100029B9C;
    *(&v195 + 1) = &unk_1010E7FE8;
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
      sub_100BF8F8C(v178, v160, type metadata accessor for SymbolButton.Configuration);
      sub_100BF8F8C(v21, v170, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v166 + v144) & v142;
      v146 = (v167 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v173;
      *(v147 + 16) = v173;
      sub_100BF8FF4(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_100BF8FF4(v170, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v171;
      v150 = v172;
      *(v147 + v146) = v171;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v196 = sub_100BF6F6C;
      *(&v196 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_10002BC98;
      *(&v195 + 1) = &unk_1010E8038;
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
      *&v196 = sub_100BF7018;
      *(&v196 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_1005C3688;
      *(&v195 + 1) = &unk_1010E8088;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v176 animateKeyframesWithDuration:v165 delay:v151 options:v156 animations:v44 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v25 = sub_100BF6EC4;
      v26 = v174;
LABEL_62:
      v158 = v26;
      sub_100BF7180(v21, type metadata accessor for SymbolButton.Configuration);
      sub_100020438(v25, v158);
      return;
    }
  }

  __break(1u);
}

void sub_100BE793C(uint64_t *a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 6);
  v174 = *(a1 + 5);
  v175 = v9;
  v176 = a1[14];
  v10 = *(a1 + 2);
  v170 = *(a1 + 1);
  v171 = v10;
  v11 = *(a1 + 4);
  v172 = *(a1 + 3);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_100BEDC00();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_100BF16F8(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_100BF9ED0(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_100BF9ED0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_100EBCEE0;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 17);
  v41 = *(a1 + 21);
  v164[2] = *(a1 + 19);
  v164[3] = v41;
  v42 = *(a1 + 23);
  v164[0] = *(a1 + 15);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_100BF6928(v164, v165))
  {
    v46 = sub_100BEDD78();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_100BF7098(v161, v160);
    v50 = sub_100BF193C(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 17);
    v62 = *(a1 + 21);
    v159[2] = *(a1 + 19);
    v159[3] = v62;
    v63 = *(a1 + 23);
    v159[0] = *(a1 + 15);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_100BF71F4(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_100BF9ED0(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_100BF9ED0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_100EBCEE0;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_100BEE064();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_100BEE064();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 5);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_100BF9ED0(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100BF9ED0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_100BF7150(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_100BF2078();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_100BF2078();
      sub_100B10F40(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_100BEDE80(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_100B10F40(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_100BEDE80(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_100BF9ED0(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_100BF9ED0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}

void sub_100BE8694(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v79 = a5;
  v9 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v66 - v12;
  v72 = objc_opt_self();
  sub_100BF8F8C(a2, v13, type metadata accessor for SymbolButton.Configuration);
  sub_100BF8F8C(a3, v11, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v9 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v10 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_100BF8FF4(v13, v17 + v15, type metadata accessor for SymbolButton.Configuration);
  sub_100BF8FF4(v11, v17 + v16, type metadata accessor for SymbolButton.Configuration);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v85 = sub_100BF9134;
  v86 = v17;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_10002BC98;
  v84 = &unk_1010E8A28;
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
        v85 = sub_1002CF93C;
        v86 = v28;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_10002BC98;
        v84 = &unk_1010E8A78;
        v29 = _Block_copy(&aBlock);
        sub_100030444(v22, v27);
        v30 = v19;
        sub_100030444(v22, v27);
        sub_100030444(v24, v23);

        [v72 addKeyframeWithRelativeStartTime:v29 relativeDuration:v26 animations:v25];
        sub_100020438(v24, v23);
        _Block_release(v29);
        sub_100020438(v22, v27);
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
      v85 = sub_100BF923C;
      v86 = v58;
      aBlock = _NSConcreteStackBlock;
      v82 = 1107296256;
      v83 = sub_10002BC98;
      v84 = &unk_1010E8B18;
      v60 = _Block_copy(&aBlock);
      v69 = v34;
      v61 = v60;
      v62 = v48;
      v63 = v68;
      sub_100BF90A4(v80, v57, v47, v62, v68);
      sub_100BF90A4(v50, v52, v51, v53, v59);
      sub_100BF90A4(v50, v52, v51, v53, v59);
      v64 = v50;
      sub_100030444(v53, v59);

      [v72 addKeyframeWithRelativeStartTime:v61 relativeDuration:0.0 animations:v56];
      v65 = v61;
      v34 = v69;
      _Block_release(v65);

      sub_100020438(v53, v59);
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
        v85 = sub_100BF91D4;
        v86 = v39;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_10002BC98;
        v84 = &unk_1010E8AC8;
        v43 = _Block_copy(&aBlock);
        sub_100BF90A4(v40, v41, v36, v42, v63);
        v44 = v40;
        sub_100030444(v42, v63);

        [v72 addKeyframeWithRelativeStartTime:v43 relativeDuration:v38 animations:v37];
        _Block_release(v43);

        sub_100020438(v42, v63);
        goto LABEL_15;
      }
    }

    else
    {
      sub_100BF90A4(v80, v45, v47, v48, v49);
      sub_100BF90A4(0, v52, v51, v53, v79);
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
    sub_100BF90EC(v80, v41, v36, v42, v63);
    sub_100BF90EC(v78, v75, v76, v53, v79);
    v35 += 88;
    if (v66 == v34)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_100BE8E94(char *a1, __int128 *a2, char **a3, uint64_t a4)
{
  v121 = a4;
  v122 = a1;
  v7 = v128;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v124 = &v119 - v8;
  v126 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SymbolButton.Metrics(0);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  sub_100BEEC4C(v13);
  sub_100BF7180(v13, type metadata accessor for SymbolButton.Metrics);
  sub_100BF8F8C(a2, v10, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v10, v14, v13);
  v127 = v13;
  sub_100BEEEF4(v13);
  v15 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v16 = *(a2 + 248);
  v135[0] = *(a2 + 232);
  v135[1] = v16;
  v135[2] = *(a2 + 264);
  v120 = v15;
  sub_100BF0E28(v135);
  v125 = *&a1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v17 = *(a2 + 25);
  v18 = *(a2 + 26);
  v19 = *(a2 + 27);
  v20 = *(a2 + 28);
  if (v18 == 1)
  {
    v119 = *(a2 + 27);
    v123 = v17;
    if (qword_1011B07B8 != -1)
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
  sub_100BF7108(v17, v18, v19, v20);
  sub_100BF12A4(v22, v21, v23, v24);

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
  v32 = sub_100BF6928(&v133, v134);
  v33 = v122;
  if ((v32 & 1) == 0)
  {
    v34 = sub_100BEDD78();
    v35 = *(a2 + 136);
    v7[24] = *(a2 + 120);
    v7[25] = v35;
    v36 = *(a2 + 168);
    v7[26] = *(a2 + 152);
    v7[27] = v36;
    v7[28] = *(a2 + 184);
    v37 = v132[0];
    v38 = v132[1];
    sub_100BF1AC4(v132);

    if (v38)
    {
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = String._bridgeToObjectiveC()();
        [v33 setAccessibilityLabel:v40];
      }
    }
  }

  v41 = *(a3 + 5);
  v7[12] = *(a3 + 4);
  v7[13] = v41;
  v7[14] = *(a3 + 6);
  v130[14] = a3[14];
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
  v131[14] = *(a2 + 14);
  v7[21] = v48;
  v7[22] = v49;
  v7[20] = v47;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v130, v131))
  {
    v50 = sub_100BEDC00();
    v51 = a2[5];
    v7[4] = a2[4];
    v7[5] = v51;
    v7[6] = a2[6];
    v129 = *(a2 + 14);
    v52 = a2[1];
    v128[0] = *a2;
    v128[1] = v52;
    v53 = a2[3];
    v128[2] = a2[2];
    v128[3] = v53;
    sub_100BF16F8(v128);
  }

  v54 = *(v126 + 11);
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
        sub_100BF7150(v58, a3, 0);
        v61 = [v62 tintColor];
        v60 = 0;
      }

      sub_100BF7150(v58, a3, v56);
      v64 = v60;
      [v57 setBackgroundColor:v61];

      [v57 setAlpha:*&a3];
      [*&v57[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:*&a3];
      sub_100BF2078();
      sub_100B10F40(v58, a3, v56);
    }
  }

  v65 = [v120 contentView];
  v66 = *(a2 + 35);
  v18 = *(a2 + 36);
  v7 = *(a2 + 37);
  v67 = v7;
  UIView.border.setter(v66, v18, v7);

  [v33 setAlpha:*(a2 + *(v126 + 17))];
  v68 = v127;
  sub_100BEEC4C(v127);
  sub_100BF0094(v68);
  sub_100BF7180(v68, type metadata accessor for SymbolButton.Metrics);
  v69 = [v33 superview];
  [v69 layoutIfNeeded];

  [v33 layoutIfNeeded];
  if (v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] == 1)
  {
    v119 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    v70 = v120;
    [v120 _setAllowsGroupFiltering:1];
    v71 = [v70 contentView];
    v72 = [v71 subviews];

    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = v73;
    if (v73 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v126;
    v125 = &v33[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
    swift_beginAccess();
    if (v20)
    {
      v74 = 0;
      v75 = v127 & 0xC000000000000001;
      v7 = (v127 & 0xFFFFFFFFFFFFFF8);
      a3 = &selRef_compoundStringWithElements_;
      v123 = v127 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v75)
        {
          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v74 >= *(v7 + 2))
          {
            goto LABEL_55;
          }

          v76 = *(v127 + 8 * v74 + 32);
        }

        v77 = v76;
        v18 = (v74 + 1);
        if (__OFADD__(v74, 1))
        {
          goto LABEL_54;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v77 a3[491]] & 1) == 0)
        {
          v78 = a3;
          v79 = *(v125 + *(a2 + 19));
          if (v79 == 2)
          {
            v80 = v125 + *(a2 + 9);
            v81 = v124;
            sub_1000089F8(v80, v124, &qword_1011B7710, &qword_100EFF6F0);
            v82 = type metadata accessor for UIView.Corner();
            LOBYTE(v79) = (*(*(v82 - 8) + 48))(v81, 1, v82) != 1;
            v83 = v81;
            a2 = v126;
            v7 = v123;
            sub_1000095E8(v83, &qword_1011B7710, &qword_100EFF6F0);
          }

          [v77 setClipsToBounds:v79 & 1];
          a3 = v78;
        }

        ++v74;
      }

      while (v18 != v20);
    }

    v122[v119] = 0;
  }

  v84 = v121;
  swift_beginAccess();
  v85 = *(v84 + 16);
  v20 = *(v85 + 16);
  v122 = v85;

  v121 = v20;
  if (v20)
  {
    v18 = 0;
    v86 = v122 + 56;
    do
    {
      if (v18 >= *(v122 + 2))
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
        v22 = qword_10121BAF8;
        v23 = qword_10121BB00;
        v24 = qword_10121BB08;

        v25 = v22;
        v17 = v123;
        v19 = v119;
        goto LABEL_5;
      }

      v92 = *(v86 - 3);
      v91 = *(v86 - 2);
      v93 = *(v86 - 1);
      a3 = *v86;
      v94 = *(v86 + 1);
      v95 = *(v86 + 2);
      v96 = *(v86 + 3);
      v20 = *(v86 + 4);
      v126 = v94;
      v127 = v96;
      v97 = *(v86 + 5);
      v7 = *(v86 + 6);
      v124 = v93;
      v125 = a3;
      v123 = v91;
      if (v92)
      {
        if (a3)
        {
          sub_100BF90A4(v92, v91, v93, a3, v94);
          sub_100BF90A4(v95, v127, v20, v97, v7);
          v98 = [v120 contentView];
          v119 = v7;
          v99 = v20;
          v100 = v98;
          [v98 bounds];
          v102 = v101;
          v104 = v103;
          v106 = v105;
          v108 = v107;

          a2 = v97;
          (a3)(v102, v104, v106, v108);
          v20 = v99;
          v7 = v119;
          [v92 setFrame:?];
          if (!v95)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_100BF90A4(v92, v91, v93, 0, v94);
          a2 = v97;
          sub_100BF90A4(v95, v127, v20, v97, v7);
          if (!v95)
          {
LABEL_38:
            sub_100BF90EC(v92, v123, v124, v125, v126);
            v87 = 0;
            v88 = v127;
            v89 = v20;
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_100BF90A4(0, v91, v93, a3, v94);
        sub_100BF90A4(v95, v127, v20, v97, v7);
        a2 = v97;
        if (!v95)
        {
          goto LABEL_38;
        }
      }

      if (!a2)
      {
        sub_100BF90EC(v92, v123, v124, v125, v126);
        v87 = v95;
        v88 = v127;
        v89 = v20;
        v90 = 0;
        goto LABEL_40;
      }

      v109 = v20;
      v110 = [v120 contentView];
      [v110 bounds];
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;

      v20 = v7;
      (a2)(v112, v114, v116, v118);
      [v95 setFrame:?];
      sub_100BF90EC(v92, v123, v124, v125, v126);
      v87 = v95;
      v88 = v127;
      v89 = v109;
LABEL_39:
      v90 = a2;
LABEL_40:
      sub_100BF90EC(v87, v88, v89, v90, v7);
      ++v18;
      v86 += 88;
    }

    while (v121 != v18);
  }
}

uint64_t *SymbolButton.Background.clear.unsafeMutableAddressor()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.clear;
}

void sub_100BE99C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  v44 = v8;

  v43 = v9;
  if (v9)
  {
    v10 = 0;
    v6 = (v44 + 56);
    while (v10 < *(v44 + 16))
    {
      v11 = v6[2];
      if (v11)
      {
        v13 = *(v6 - 1);
        v12 = *v6;
        v14 = v6[1];
        v16 = v6[3];
        v15 = v6[4];
        v17 = v6[5];
        v18 = v6[6];
        v45 = *(v6 - 2);
        v46 = *(v6 - 3);
        sub_100BF90A4(v46, v45, v13, *v6, v14);
        sub_100BF90A4(v11, v16, v15, v17, v18);
        if ([v11 isDescendantOfView:a3])
        {
          [v11 removeFromSuperview];
        }

        sub_100BF90EC(v46, v45, v13, v12, v14);
        sub_100BF90EC(v11, v16, v15, v17, v18);
      }

      ++v10;
      v6 += 11;
      if (v43 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_9:

  v10 = a3;
  v19 = *(a4 + 16);
  if (v19)
  {
    v20 = (a4 + 72);
    do
    {
      v21 = *(v20 - 1);
      if (v21)
      {
        v22 = *v20;
        v24 = *(v20 - 5);
        v23 = *(v20 - 4);
        sub_100030444(v24, v23);
        sub_100030444(v21, v22);
        v21(a3);
        sub_100020438(v24, v23);
        sub_100020438(v21, v22);
      }

      v20 += 6;
      --v19;
    }

    while (v19);
  }

  v25 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v26 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_18;
  }

  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v26;
  v6 = a6;
  if (v26 != v25)
  {
    sub_100BEFBCC();
  }

  if (qword_1011B04C8 != -1)
  {
    goto LABEL_26;
  }

LABEL_18:
  v27 = type metadata accessor for Logger();
  sub_1000060E4(v27, qword_10121B578);
  v28 = v10;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v31 = 136446466;
    v32 = &v28[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
      v35 = v33;
    }

    else
    {
      v36 = [v28 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v37;
    }

    v38 = sub_100010744(v34, v35, &v47);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_100010744(a5, v6, &v47);
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] UpdateID=%{public}s — Updated ✅", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t SymbolButton.Configuration.background.getter()
{
  v1 = *(v0 + 200);
  sub_100BF7108(v1, *(v0 + 208), *(v0 + 216), *(v0 + 224));
  return v1;
}

void SymbolButton.Configuration.background.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100282F24(*(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224));
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;
  *(v4 + 216) = a3;
  *(v4 + 224) = a4;
}

uint64_t SymbolButton.Configuration.border.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);
  return v1;
}

void SymbolButton.Configuration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;
  *(v3 + 296) = a3;
}

uint64_t SymbolButton.Configuration.badge.getter()
{
  v1 = v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  v2 = *v1;
  sub_100BF7150(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

void SymbolButton.Configuration.badge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for SymbolButton.Configuration(0) + 44);
  sub_100B10F40(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t SymbolButton.Configuration.symbolToTextSpacing.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SymbolButton.Configuration.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SymbolButton.Configuration.maximumImageSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v8 = v3 + *(result + 56);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t SymbolButton.Configuration.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  v10 = (v4 + *(result + 60));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SymbolButton.Configuration.accessibility.getter()
{
  v1 = (v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 64));
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = v3;
  return v2;
}

void SymbolButton.Configuration.accessibility.setter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

UIContentSizeCategory sub_100BEA628()
{
  static SymbolButton.Configuration.Accessibility.forBarButtonItem = 1;
  qword_10121BAD8 = UIContentSizeCategoryLarge;
  unk_10121BAE0 = UIContentSizeCategoryExtraLarge;
  byte_10121BAE8 = 1;
  v0 = UIContentSizeCategoryLarge;

  return UIContentSizeCategoryExtraLarge;
}

char *SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor()
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Configuration.Accessibility.forBarButtonItem;
}

uint64_t static SymbolButton.Configuration.Accessibility.forBarButtonItem.getter()
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v0 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v1 = unk_10121BAE0;
  v2 = qword_10121BAD8;
  v3 = v1;
  return v0;
}

uint64_t SymbolButton.Configuration.alpha.setter(double a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

void *SymbolButton.Configuration.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for SymbolButton.Configuration(0) + 72));
  v2 = v1;
  return v1;
}

void SymbolButton.Configuration.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolButton.Configuration(0) + 72);

  *(v1 + v3) = a1;
}

uint64_t SymbolButton.Configuration.shouldClipToBounds.setter(char a1)
{
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

void SymbolButton.Configuration.init()(uint64_t a1@<X8>)
{
  HIBYTE(v30) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = UIFontTextStyleSubheadline;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = xmmword_100EFDCA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 81) = v30;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  v2 = UIFontTextStyleSubheadline;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v2;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) = 1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v4 = v3[9];
  v5 = type metadata accessor for UIView.Corner();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[10];
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v7 = (a1 + v3[11]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 1;
  *(a1 + v3[12]) = 0x4010000000000000;
  *(a1 + v3[13]) = vdupq_n_s64(0x4040000000000000uLL);
  v8 = a1 + v3[14];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = (a1 + v3[15]);
  v10 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v9 = *&NSDirectionalEdgeInsetsZero.top;
  v9[1] = v10;
  v11 = a1 + v3[16];
  *v11 = 1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a1 + v3[17]) = 0x3FF0000000000000;
  *(a1 + v3[18]) = 0;
  *(a1 + v3[19]) = 2;
  v12 = qword_1011B07E8;
  v13 = v2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10121BB98;
  *(a1 + 200) = static SymbolButton.Background.normal;
  v28 = qword_10121BB88;
  *(a1 + 208) = *&qword_10121BB88;
  *(a1 + 224) = v14;
  v15 = objc_opt_self();

  v16 = v28;
  v17 = [v15 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    if (qword_1011B07F8 != -1)
    {
      swift_once();
    }

    v19 = static SymbolButton.Material.xr;
    v20 = qword_10121BBC8;
    v21 = qword_10121BBD0;
    v29 = qword_10121BBD0;
    v22 = byte_10121BBD8;
    v24 = qword_10121BBE0;
    v23 = unk_10121BBE8;
    *(a1 + 232) = static SymbolButton.Material.xr;
    *(a1 + 240) = v20;
    *(a1 + 248) = v21;
    *(a1 + 256) = v22;
    *(a1 + 264) = v24;
    *(a1 + 272) = v23;

    v25 = v19;
    v26 = v20;

    v27 = v29;
  }
}

uint64_t *SymbolButton.Material.xr.unsafeMutableAddressor()
{
  if (qword_1011B07F8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Material.xr;
}

uint64_t SymbolButton.Symbol.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 64) = result;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

void *SymbolButton.Symbol.tint.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

BOOL sub_100BEAD84(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

BOOL sub_100BEAE28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

id sub_100BEAECC()
{
  result = [objc_opt_self() clearColor];
  static SymbolButton.Background.clear = 0x3FF0000000000000;
  qword_10121BAF8 = result;
  qword_10121BB00 = 0;
  qword_10121BB08 = 0;
  return result;
}