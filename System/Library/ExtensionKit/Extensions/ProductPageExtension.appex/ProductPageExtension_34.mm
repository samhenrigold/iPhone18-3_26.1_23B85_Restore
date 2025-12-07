void sub_1003D0F88()
{
  v1 = v0;
  v180 = type metadata accessor for Accessory(0);
  v2 = *(v180 - 8);
  __chkstk_darwin(v180);
  v170 = (&v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = sub_10000A5D4(&qword_10094BB58, &unk_100791CE0);
  __chkstk_darwin(v171);
  *&v172 = &v167 - v4;
  v5 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v5 - 8);
  *&v173 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v167 - v8;
  __chkstk_darwin(v10);
  v12 = &v167 - v11;
  *&v13 = COERCE_DOUBLE(sub_10077164C());
  v187 = *(v13 - 8);
  v188 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v189.receiver = v0;
  v189.super_class = v16;
  objc_msgSendSuper2(&v189, "layoutSubviews");
  sub_10076422C();
  Width = CGRectGetWidth(v190);
  v18 = [v0 traitCollection];
  LODWORD(v19) = sub_10077071C();

  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v183) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v183) = 0;
  }

  v174 = *&v12;
  v22 = sub_10075FC9C();
  v23 = v22;
  if (v22)
  {
  }

  v181 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v181 text];
  v26 = v24;
  if (v24)
  {
  }

  v182 = v26;
  v27 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v185 = v19;
  v186 = v23;
  if (v27)
  {
    v28 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v31 = 0.0;
    goto LABEL_17;
  }

  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v29 = COERCE_DOUBLE(sub_1003D3278(v25));
  v31 = 0.0;
  if (v32)
  {
LABEL_17:
    v41 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_18;
  }

  v33 = v29;
  v34 = v30;
  if (v19)
  {
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D9AC();
    sub_10000A61C(v35, qword_100955E50);
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v36 = [v19 traitCollection];
    sub_10076D97C();
    v38 = v37;

    [v19 firstBaselineFromTop];
    v40 = v39;
    (*(*&v187 + 8))(v15, COERCE_DOUBLE(*&v188));
    v41 = v38 - v40;
    LOBYTE(v19) = v185;
  }

  else
  {
    sub_10076422C();
    v41 = CGRectGetMidY(v192) + v34 * -0.5;
  }

  sub_10076422C();
  MinX = CGRectGetMinX(v193);
  v31 = MinX;
  if ((v19 & 1) == 0)
  {
    v78 = v41;
    v79 = v33;
    v80 = v34;
    Width = Width - (v28 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  sub_10076422C();
  sub_100770A4C();
  sub_10075FC8C();
  v178 = v33;
  v176 = v41;
  v175 = v31;
  if (v19)
  {
    sub_10075FC7C();
    MaxY = CGRectGetMaxY(v191);
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D9AC();
    sub_10000A61C(v43, qword_100955E50);
    v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v45 = [v44 traitCollection];
    sub_10076D97C();
    v47 = v46;

    [v44 firstBaselineFromTop];
    v49 = v48;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = MaxY + v47 - v49;
  }

  else
  {
    if (qword_100940368 != -1)
    {
      swift_once();
    }

    v52 = sub_10076D9AC();
    sub_10000A61C(v52, qword_100955E50);
    v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    sub_10076D17C();
    v53 = [v44 traitCollection];
    sub_10076D97C();
    v55 = v54;

    [v44 firstBaselineFromTop];
    v57 = v56;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = v55 - v57;
  }

  v184 = v51;
  v58 = &selRef_initWithTabBarSystemItem_tag_;
  v59 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v177 = v34;
  if (v59)
  {
    v60 = 16.0;
    if (LOBYTE(v183))
    {
      goto LABEL_30;
    }

    v183 = 16.0;
LABEL_35:
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v75 = v181;
    goto LABEL_60;
  }

  v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v183))
  {
    v183 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v169 = v44;
  v61 = *&v1[v20];
  v183 = v60;
  if (!v61)
  {
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v44 = v169;
    v75 = v181;
    goto LABEL_60;
  }

  v167 = v50;
  v62 = v61;
  sub_10076422C();
  v168 = v62;
  [v62 sizeThatFits:{v63, v64}];
  v66 = v65;
  v68 = v67;
  v69 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v70 = *&v174;
  v71 = v180;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v70, 0, 1, v71);
  v72 = *(v171 + 48);
  v171 = v69;
  v73 = *&v172;
  sub_1003D438C(&v1[v69], *&v172);
  sub_1003D438C(v70, v73 + v72);
  v74 = *(v2 + 48);
  if (v74(v73, 1, v71) == 1)
  {
    sub_10000CFBC(v70, &qword_10094BB50, &qword_1007851D0);
    if (v74(v73 + v72, 1, v71) == 1)
    {
      sub_10000CFBC(v73, &qword_10094BB50, &qword_1007851D0);
      v44 = v169;
      v75 = v181;
LABEL_44:
      v84 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100770A8C();
      v66 = v85;
      v68 = v86;
      goto LABEL_45;
    }

LABEL_42:
    sub_10000CFBC(v73, &qword_10094BB58, &unk_100791CE0);
    v81 = &selRef_initWithTabBarSystemItem_tag_;
    v44 = v169;
    v75 = v181;
    goto LABEL_46;
  }

  sub_1003D438C(v73, v9);
  if (v74(v73 + v72, 1, v71) == 1)
  {
    sub_10000CFBC(*&v174, &qword_10094BB50, &qword_1007851D0);
    sub_100036758(v9);
    goto LABEL_42;
  }

  v82 = v170;
  sub_1000366F4(v73 + v72, v170);
  v83 = sub_10052A9D0(v9, v82);
  sub_100036758(v82);
  sub_10000CFBC(*&v174, &qword_10094BB50, &qword_1007851D0);
  sub_100036758(v9);
  sub_10000CFBC(v73, &qword_10094BB50, &qword_1007851D0);
  v44 = v169;
  v75 = v181;
  if (v83)
  {
    goto LABEL_44;
  }

LABEL_45:
  v81 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_46:
  sub_10076422C();
  v76 = CGRectGetMaxX(v194) - v66;
  v87 = *&v173;
  sub_1003D438C(&v1[v171], *&v173);
  v88 = v74(v87, 1, v180);
  v181 = v66;
  if (v88 == 1)
  {
    sub_10000CFBC(v87, &qword_10094BB50, &qword_1007851D0);
    v50 = v167;
LABEL_50:
    [v1 v81[105]];
    x = v196.origin.x;
    y = v196.origin.y;
    v93 = v196.size.width;
    v94 = v28;
    v95 = v76;
    v96 = Width;
    height = v196.size.height;
    CGRectGetMidX(v196);
    v197.origin.x = x;
    v197.origin.y = y;
    v60 = v183;
    v197.size.width = v93;
    v197.size.height = height;
    Width = v96;
    v76 = v95;
    v28 = v94;
    v90 = round(CGRectGetMidY(v197) + v68 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100036758(v87);
  v50 = v167;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  sub_10076422C();
  v90 = v184 + CGRectGetMinY(v195);
LABEL_51:
  sub_10076422C();
  v98 = CGRectGetWidth(v198);
  if (v181 >= v98)
  {
    v99 = v98;
  }

  else
  {
    v99 = v181;
  }

  sub_10076422C();
  sub_100770A4C();
  v100 = v168;
  [v168 setFrame:?];
  v199.origin.x = v76;
  v199.origin.y = v90;
  v199.size.width = v99;
  v199.size.height = v68;
  Width = Width - (v60 + CGRectGetWidth(v199));
  v101 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v101)
  {
    v102 = v101;
    sub_10076422C();
    [v102 sizeThatFits:{v103, v104}];
    v106 = v105;
    v108 = v107;
    v200.origin.x = v76;
    v200.origin.y = v90;
    v200.size.width = v99;
    v200.size.height = v68;
    v181 = CGRectGetMinX(v200);
    [v1 v81[105]];
    v109 = v201.origin.x;
    v110 = v28;
    v111 = Width;
    v112 = v201.origin.y;
    v113 = v201.size.width;
    v114 = v201.size.height;
    CGRectGetMidX(v201);
    v202.origin.x = v109;
    v202.origin.y = v112;
    v115 = v111;
    v28 = v110;
    v202.size.width = v113;
    v202.size.height = v114;
    v116 = round(CGRectGetMidY(v202) + v108 * -0.5);
    sub_10076422C();
    v117 = CGRectGetWidth(v203);
    if (v106 >= v117)
    {
      v118 = v117;
    }

    else
    {
      v118 = v106;
    }

    v119 = v183;
    v76 = v181 - v106 - v183;
    sub_10076422C();
    sub_100770A4C();
    v58 = &selRef_initWithTabBarSystemItem_tag_;
    [v102 setFrame:?];
    v204.origin.x = v76;
    v173 = v116;
    v204.origin.y = v116;
    v172 = v118;
    v204.size.width = v118;
    v204.size.height = v108;
    v120 = CGRectGetWidth(v204);

    LODWORD(v180) = 0;
    Width = v115 - (v119 + v120);
    v68 = v108;
  }

  else
  {
    v172 = v99;
    v173 = v90;

    LODWORD(v180) = 0;
    v58 = &selRef_initWithTabBarSystemItem_tag_;
  }

LABEL_60:
  v174 = v76;
  v181 = v68;
  sub_10076422C();
  [v44 v58[261]];
  v122 = v121;
  v124 = v123;
  v125 = v58;
  if (qword_100940380 != -1)
  {
    swift_once();
  }

  v126 = v186 == 0;
  v127 = sub_10076D9AC();
  sub_10000A61C(v127, qword_100955E98);
  sub_10076D17C();
  v128 = [*&v75 traitCollection];
  sub_10076D97C();
  v130 = v129;

  [*&v75 firstBaselineFromTop];
  v132 = v131;
  v50(v15, *&v188);
  v133 = v130 - v132;
  sub_10076422C();
  [*&v75 v125[261]];
  v136 = v135;
  v137 = v134;
  v187 = v133;
  v138 = v182;
  if (v182)
  {
    v139 = v124 + v133 + v134;
  }

  else
  {
    v139 = v124;
  }

  sub_10076422C();
  v140 = (CGRectGetHeight(v207) - v139) * 0.5;
  v141 = v185;
  if (v185 & 1 | (v140 <= v184))
  {
    v142 = v184;
  }

  else
  {
    v142 = v140;
  }

  if (Width >= v122)
  {
    v143 = v122;
  }

  else
  {
    v143 = Width;
  }

  v188 = Width;
  v179 = v28;
  if ((v126 | v185))
  {
    sub_10076422C();
    v144 = CGRectGetMinX(v208);
  }

  else
  {
    v209.origin.x = v175;
    v209.origin.y = v176;
    v209.size.width = v178;
    v209.size.height = v177;
    v144 = v28 + CGRectGetMaxX(v209);
  }

  sub_10076422C();
  MinY = CGRectGetMinY(v210);
  v184 = v142;
  v146 = v142 + MinY;
  sub_10076422C();
  sub_100770A4C();
  [v44 setFrame:?];
  if (v138)
  {
    [*&v75 setHidden:0];
    if (v188 < v136)
    {
      v136 = v188;
    }

    v211.origin.x = v144;
    v211.origin.y = v146;
    v147 = v143;
    v211.size.width = v143;
    v211.size.height = v124;
    v148 = CGRectGetMinX(v211);
    [v44 lastBaselineMaxY];
    v150 = v187 + v149;
  }

  else
  {
    v147 = v143;
    [*&v75 setHidden:1];
    v148 = 0.0;
    v150 = 0.0;
    v136 = 0.0;
    v137 = 0.0;
  }

  sub_10076422C();
  sub_100770A4C();
  [*&v75 setFrame:?];
  if (v141)
  {
    v151 = v147;
  }

  else
  {
    v212.origin.x = v148;
    v212.origin.y = v150;
    v212.size.width = v136;
    v212.size.height = v137;
    v152 = CGRectGetWidth(v212);
    v213.origin.x = v144;
    v213.origin.y = v146;
    v151 = v147;
    v213.size.width = v147;
    v213.size.height = v124;
    v153 = CGRectGetWidth(v213);
    if (v152 > v153)
    {
      v153 = v152;
    }

    if (v186)
    {
      v153 = v179 + v153;
    }

    v188 = v188 - v153;
  }

  v154 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
  v155 = [v154 text];
  if (v155)
  {
    v156 = v155;
    v157 = sub_10076FF9C();
    v159 = v158;

    v160 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v160 = v157 & 0xFFFFFFFFFFFFLL;
    }

    if (v160)
    {
      if (v141)
      {
        v161 = v188;
      }

      else
      {
        v161 = v188 - v183;
      }

      sub_10076422C();
      [v154 measurementsWithFitting:v1 in:{v161, CGRectGetHeight(v214)}];
      if (v141)
      {
        v215.origin.x = v144;
        v215.origin.y = v146;
        v215.size.width = v151;
        v215.size.height = v124;
        CGRectGetMinX(v215);
        [v44 lastBaselineMaxY];
      }

      else
      {
        if (v180)
        {
          sub_10076422C();
          CGRectGetMaxX(v216);
        }

        else
        {
          v217.origin.x = v174;
          v217.origin.y = v173;
          v217.size.width = v172;
          v217.size.height = v181;
          CGRectGetMinX(v217);
        }

        sub_10076422C();
        CGRectGetMinY(v218);
      }

      sub_10076422C();
      sub_100770A4C();
      [v154 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    sub_10076422C();
    CGRectGetMinX(v219);
    [v1 bounds];
    CGRectGetMinY(v220);
    sub_10076422C();
    CGRectGetWidth(v221);
    v162 = [v1 traitCollection];
    sub_10076E20C();

    if ((v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v163 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView];
    sub_10076422C();
    sub_100770A4C();
    [v163 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    sub_10076422C();
    CGRectGetMinX(v222);
    [v1 bounds];
    CGRectGetMaxY(v223);
    v164 = [v1 traitCollection];
    sub_10076E20C();

    sub_10076422C();
    CGRectGetWidth(v224);
    v165 = [v1 traitCollection];
    sub_10076E20C();

    if ((v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v166 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
    sub_10076422C();
    sub_100770A4C();
    [v166 setFrame:?];
  }
}

double sub_1003D2348(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = sub_10075FC9C();
  v22 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    sub_10075FCFC();
  }

  v23 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = sub_10076FF9C();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = sub_10076FF9C();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = sub_10076FF9C();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1003D438C(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_1003D438C(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = sub_10077071C();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_1003D438C(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_1000366F4(v17, v12);
    sub_100528FA8(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_10052A9D0(v12, v9);
    sub_100036758(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_1003D438C(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_1000366F4(v42, v60);
      sub_100528FA8(v37);
      sub_100036758(v43);
      sub_100036758(v12);
      goto LABEL_23;
    }

    sub_100036758(v12);
    v39 = v41;
  }

  sub_10000CFBC(v39, &qword_10094BB50, &qword_1007851D0);
LABEL_23:
  if ((v65 & 1) == 0 && (sub_10077071C() & 1) == 0)
  {
    sub_10077118C();
  }

  v65 = v37;
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v44 = sub_10076D3DC();
  v45 = sub_10000A61C(v44, qword_100955E38);
  v46 = sub_10076C04C();
  v78 = v46;
  v47 = sub_10004C7BC();
  v79 = v47;
  v48 = sub_10000DB7C(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  sub_10076C90C();
  sub_10000CD74(v77);
  v63 = v45;
  sub_10076991C();
  if (qword_100940368 != -1)
  {
    swift_once();
  }

  v51 = sub_10076D9AC();
  sub_10000A61C(v51, qword_100955E50);
  sub_10076D42C();
  if (v75)
  {
    if (qword_100940378 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_100955E80);
    v78 = v46;
    v79 = v47;
    v52 = sub_10000DB7C(v77);
    v50(v52, v49, v46);
    sub_10076C90C();
    sub_10000CD74(v77);
    sub_10076991C();
    if (qword_100940380 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E98);
    sub_10076D42C();
    v53 = v68;
    if (qword_100940388 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955EB0);
    sub_10076D3FC();
  }

  else
  {
    if (qword_100940370 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E68);
    sub_10076D3FC();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_10000DB7C(v77);
    v50(v55, v49, v46);
    sub_10076C90C();
    sub_10000CD74(v77);
    sub_10076991C();
    if (qword_100940380 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955E98);
    sub_10076D42C();
    v56 = v65;
    if (qword_100940388 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v51, qword_100955EB0);
    sub_10076D3FC();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    sub_10076E20C();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    sub_10076E20C();
  }

  else
  {
  }

  sub_10000CFBC(v74, &qword_10094BB50, &qword_1007851D0);
  sub_10000CFBC(v76, &qword_10094BB50, &qword_1007851D0);
  return v70;
}

BOOL sub_1003D3078()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077071C();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    sub_10076FF9C();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (sub_10077071C())
  {

    v13 = 3;
  }

  else
  {
    v14 = sub_10077118C();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_1003D3278(__n128 a1)
{
  result = sub_10075FC9C();
  v3 = result;
  if (result)
  {
    [result size];
    v5 = v4;

    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_10075FCFC();
      [v6 scaledValueForValue:?];
      v8 = v7;

      v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      sub_10075FCFC();
      [v9 scaledValueForValue:v10];

      if (v8 <= 56.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 56.0;
      }

      return *&v11;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void sub_1003D3450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10000A5D4(&qword_10094BB58, &unk_100791CE0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_1003D438C(a1, v19);
  sub_1003D438C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000CFBC(v19, &qword_10094BB50, &qword_1007851D0);
      return;
    }
  }

  else
  {
    sub_1003D438C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_1000366F4(v30, v35);
      v32 = sub_10052A9D0(v15, v31);
      sub_100036758(v31);
      sub_100036758(v15);
      sub_10000CFBC(v19, &qword_10094BB50, &qword_1007851D0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100036758(v15);
  }

  sub_10000CFBC(v19, &qword_10094BB58, &unk_100791CE0);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_1003D438C(v38, v37);
  swift_beginAccess();
  sub_100199B50(v24, &v3[v20]);
  swift_endAccess();
  sub_1003D438C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000CFBC(v10, &qword_10094BB50, &qword_1007851D0);
    v25 = 0;
  }

  else
  {
    sub_100527CDC(v36);
    v25 = v26;
    sub_100036758(v10);
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_1003D3880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10000A5D4(&qword_10094BB58, &unk_100791CE0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_1003D438C(a1, v19);
  sub_1003D438C(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10000CFBC(v19, &qword_10094BB50, &qword_1007851D0);
      return;
    }
  }

  else
  {
    sub_1003D438C(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_1000366F4(v30, v34);
      v32 = sub_10052A9D0(v15, v31);
      sub_100036758(v31);
      sub_100036758(v15);
      sub_10000CFBC(v19, &qword_10094BB50, &qword_1007851D0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100036758(v15);
  }

  sub_10000CFBC(v19, &qword_10094BB58, &unk_100791CE0);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_1003D438C(v37, v36);
  swift_beginAccess();
  sub_100199B50(v24, &v3[v20]);
  swift_endAccess();
  sub_1003D438C(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000CFBC(v10, &qword_10094BB50, &qword_1007851D0);
    v25 = 0;
  }

  else
  {
    sub_100527CDC(v35);
    v25 = v26;
    sub_100036758(v10);
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_1003D3D40()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v22.receiver = v0;
  v22.super_class = v5;
  objc_msgSendSuper2(&v22, "prepareForReuse");
  sub_10075FCAC();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_1003D3078())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_100199B50(v4, &v1[v11]);
  swift_endAccess();
  sub_1003D43FC(0);
  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1000167E0(v14, v15);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v16 = sub_100770CFC();
  [v7 setTextColor:v16];

  v17 = sub_100770D1C();
  [v9 setTextColor:v17];

  v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  return result;
}

id sub_1003D40C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell(uint64_t a1)
{
  result = qword_100955F58;
  if (!qword_100955F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D428C(uint64_t a1)
{
  sub_1003AF014(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003D438C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003D43FC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_1003D44E0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView(0);
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003D4734()
{
  sub_10000CC8C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1003D4794(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076340C();
  v11 = sub_10075E0AC();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_1002D911C(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_1003D4A9C@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10000A5D4(&qword_10094E088, &qword_100795D68);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10000A5D4(&qword_10094E090, &unk_100795D70);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_10076B5BC();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_10076468C();
  swift_getKeyPath();
  v143 = v45;
  sub_10076F49C();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  (v46)(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_10076463C();
  sub_10000CFBC(v32, &qword_1009499A0, &qword_1007848B0);
  v142 = v35;
  sub_100016E2C(v35, v48, &qword_1009499A0, &qword_1007848B0);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10000CFBC(v48, &qword_1009499A0, &qword_1007848B0);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_10076F49C();

    (v46)(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100016E2C(v54, &v58[v57], &unk_1009568A0, &qword_100784890);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_10076468C();
    swift_getKeyPath();
    v63 = v135;
    sub_10076F49C();

    v134 = v46;
    (v46)(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_1007621DC();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10000CFBC(v145, &unk_1009568A0, &qword_100784890);
      sub_10000CFBC(v142, &qword_1009499A0, &qword_1007848B0);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10000CFBC(v71 + v59, &unk_1009568A0, &qword_100784890);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100016E2C(v71 + v59, v130, &unk_1009568A0, &qword_100784890);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100016E2C(v142, v123, &qword_1009499A0, &qword_1007848B0);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10000CFBC(v86, &qword_1009499A0, &qword_1007848B0);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_10076F49C();

          (v134)(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100016E2C(v101, v125, &qword_10094E090, &unk_100795D70);
        sub_100016E2C(v97, v102 + v100, &qword_10094E090, &unk_100795D70);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10000CFBC(v97, &qword_10094E090, &unk_100795D70);
          sub_10000CFBC(v131, &qword_10094E090, &unk_100795D70);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10000CFBC(v102, &qword_10094E090, &unk_100795D70);
LABEL_44:
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v115 = sub_10076D9AC();
            v116 = sub_10000A61C(v115, qword_1009A23E0);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_10000DB7C(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100016E2C(v102, v120, &qword_10094E090, &unk_100795D70);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_1003D8834(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
            LODWORD(v144) = sub_10076FF1C();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10000CFBC(v128, &qword_10094E090, &unk_100795D70);
            sub_10000CFBC(v104, &qword_10094E090, &unk_100795D70);
            v114(v105, v88);
            sub_10000CFBC(v102, &qword_10094E090, &unk_100795D70);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10000CFBC(v128, &qword_10094E090, &unk_100795D70);
          sub_10000CFBC(v104, &qword_10094E090, &unk_100795D70);
          (*(v138 + 8))(v105, v88);
        }

        sub_10000CFBC(v102, &qword_10094E088, &qword_100795D68);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10000CFBC(v145, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v142, &qword_1009499A0, &qword_1007848B0);
    (*(v82 + 8))(v143, v83);
    return sub_10000CFBC(v71, &qword_100942F28, &unk_10079ACB0);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100016E2C(v71 + v59, v126, &unk_1009568A0, &qword_100784890);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10000CFBC(v145, &unk_1009568A0, &qword_100784890);
        sub_10000CFBC(v142, &qword_1009499A0, &qword_1007848B0);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100016E2C(v145, v129, &unk_1009568A0, &qword_100784890);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10000CFBC(v91, &unk_1009568A0, &qword_100784890);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_100941478 != -1)
      {
        swift_once();
      }

      if (sub_10069358C(v92, qword_1009A31A8))
      {
        if (qword_100941208 != -1)
        {
          swift_once();
        }

        v93 = sub_10076D9AC();
        v94 = sub_10000A61C(v93, qword_1009A2398);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_10000DB7C(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10000CFBC(v90, &unk_1009568A0, &qword_100784890);
        sub_10000CFBC(v142, &qword_1009499A0, &qword_1007848B0);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100016E2C(v71 + v57, v121, &unk_1009568A0, &qword_100784890);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10000CFBC(v71 + v59, &unk_1009568A0, &qword_100784890);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v108 = sub_10076D9AC();
  sub_10000A61C(v108, qword_1009A23B0);
  sub_10076D98C();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10000CFBC(v145, &unk_1009568A0, &qword_100784890);
  sub_10000CFBC(v142, &qword_1009499A0, &qword_1007848B0);
  return (v107)(v143, v81);
}

uint64_t sub_1003D5CA4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v165 = a2;
  v4 = sub_1007621EC();
  v157 = *(v4 - 8);
  v158 = v4;
  __chkstk_darwin(v4);
  v156 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = &v143 - v7;
  v8 = sub_10076C38C();
  v151 = *(v8 - 8);
  v152 = v8;
  __chkstk_darwin(v8);
  v150 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v164);
  v168 = &v143 - v10;
  v11 = sub_10076B5BC();
  v12 = *(v11 - 8);
  v166 = v11;
  v167 = v12;
  __chkstk_darwin(v11);
  v163 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v155 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v143 - v18;
  v20 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v143 - v24;
  __chkstk_darwin(v26);
  v28 = &v143 - v27;
  v29 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v29 - 8);
  v144 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v143 = &v143 - v32;
  __chkstk_darwin(v33);
  v146 = &v143 - v34;
  __chkstk_darwin(v35);
  v149 = &v143 - v36;
  __chkstk_darwin(v37);
  v153 = &v143 - v38;
  __chkstk_darwin(v39);
  v162 = &v143 - v40;
  __chkstk_darwin(v41);
  v161 = &v143 - v42;
  __chkstk_darwin(v43);
  v159 = &v143 - v44;
  __chkstk_darwin(v45);
  v154 = &v143 - v46;
  __chkstk_darwin(v47);
  v148 = &v143 - v48;
  __chkstk_darwin(v49);
  v147 = &v143 - v50;
  __chkstk_darwin(v51);
  v145 = &v143 - v52;
  __chkstk_darwin(v53);
  v55 = &v143 - v54;
  v169 = a1;
  sub_10076463C();
  sub_10000CFBC(v25, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v22, v28);
  if ((*(v15 + 48))(v28, 1, v14) == 1)
  {
    sub_10000CFBC(v28, &qword_1009499A0, &qword_1007848B0);
    v56 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v15 + 8))(v28, v14);
    v56 = 0;
  }

  v57 = v167;
  v58 = v55;
  v59 = v55;
  v60 = v166;
  (*(v167 + 56))(v58, v56, 1, v166);
  sub_10076468C();
  swift_getKeyPath();
  v61 = v163;
  sub_10076F49C();

  v62 = *(v15 + 8);
  v62(v19, v14);
  v63 = v168;
  v64 = v61;
  v65 = *(v164 + 48);
  (*(v57 + 32))(v168, v64, v60);
  v164 = v59;
  sub_100016E2C(v59, &v63[v65], &unk_1009568A0, &qword_100784890);
  v66 = *(v57 + 88);
  v67 = v66(v63, v60);
  if (v67 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v67 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) != 1)
    {
      v72 = v161;
      sub_100016E2C(&v63[v65], v161, &unk_1009568A0, &qword_100784890);
      v73 = v66(v72, v60);
      v162 = v72;
      if (v73 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_100941210 != -1)
        {
          swift_once();
        }

        v74 = sub_10076D9AC();
        sub_10000A61C(v74, qword_1009A23B0);
        sub_10076D98C();
        v75 = v165;
        *(v165 + 3) = &type metadata for CGFloat;
        *(v75 + 4) = &protocol witness table for CGFloat;
        *v75 = v76;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v139 = sub_10076D9AC();
    v140 = sub_10000A61C(v139, qword_1009A23E0);
    v141 = v165;
    *(v165 + 3) = v139;
    v141[4] = &protocol witness table for StaticDimension;
    v142 = sub_10000DB7C(v141);
    (*(*(v139 - 8) + 16))(v142, v140, v139);
    sub_10000CFBC(v164, &unk_1009568A0, &qword_100784890);
    v70 = &qword_100942F28;
    v71 = &unk_10079ACB0;
    v69 = v63;
    return sub_10000CFBC(v69, v70, v71);
  }

  if (v67 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v77 = v159;
    sub_100016E2C(&v63[v65], v159, &unk_1009568A0, &qword_100784890);
    v78 = v66(v77, v60);
    v162 = v77;
    if (v78 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v57 + 8))(v162, v60);
    goto LABEL_85;
  }

  if (v67 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v88 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v67 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v89 = v155;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v62(v89, v14);
    v91 = v156;
    v90 = v157;
    v92 = v158;
    (*(v157 + 104))(v156, enum case for ShelfBackground.editorsChoice(_:), v158);
    v93 = v160;
    v94 = sub_1007621DC();
    v95 = *(v90 + 8);
    v95(v91, v92);
    v95(v93, v92);
    if ((v94 & 1) == 0)
    {
      goto LABEL_85;
    }

    v96 = v165;
    *(v165 + 3) = &type metadata for CGFloat;
    *(v96 + 4) = &protocol witness table for CGFloat;
    *v96 = 30.0;
    goto LABEL_22;
  }

  if (v67 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) != 1)
    {
      v97 = v154;
      sub_100016E2C(&v63[v65], v154, &unk_1009568A0, &qword_100784890);
      v98 = v66(v97, v60);
      if (v98 == enum case for Shelf.ContentType.ribbonFlow(_:) || v98 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10000CFBC(&v63[v65], &unk_1009568A0, &qword_100784890);
        (*(v57 + 8))(v63, v60);
        if (qword_100941220 != -1)
        {
          swift_once();
        }

        v79 = sub_10076D9AC();
        v80 = v79;
        v81 = qword_1009A23E0;
        goto LABEL_19;
      }

      (*(v57 + 8))(v97, v60);
    }

LABEL_16:
    sub_10000CFBC(&v63[v65], &unk_1009568A0, &qword_100784890);
    (*(v57 + 8))(v63, v60);
    if (qword_100941208 != -1)
    {
      swift_once();
    }

    v79 = sub_10076D9AC();
    v80 = v79;
    v81 = qword_1009A2398;
LABEL_19:
    v82 = sub_10000A61C(v79, v81);
    v83 = v165;
    *(v165 + 3) = v80;
    v83[4] = &protocol witness table for StaticDimension;
    v84 = sub_10000DB7C(v83);
    (*(*(v80 - 8) + 16))(v84, v82, v80);
    v70 = &unk_1009568A0;
    v71 = &qword_100784890;
    v69 = v164;
    return sub_10000CFBC(v69, v70, v71);
  }

  if (v67 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v85 = sub_10076220C();
    v86 = v165;
    *(v165 + 3) = v85;
    v86[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000DB7C(v86);
    sub_1007621FC();
    goto LABEL_22;
  }

  v99 = enum case for Shelf.ContentType.productReview(_:);
  if (v67 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v67;
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v101 = v153;
    sub_100016E2C(&v63[v65], v153, &unk_1009568A0, &qword_100784890);
    v102 = v66(v101, v60);
    if (v102 == v100)
    {
      v103 = v150;
      sub_10076460C();
      sub_10076C2BC();
      v105 = v104;
      (*(v151 + 8))(v103, v152);
      v106 = v165;
      *(v165 + 3) = &type metadata for CGFloat;
      *(v106 + 4) = &protocol witness table for CGFloat;
      *v106 = v105;
      goto LABEL_22;
    }

    if (v102 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v162 = v101;
    if (v102 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v117 = v165;
    *(v165 + 3) = &type metadata for Double;
    *(v117 + 4) = &protocol witness table for Double;
    *v117 = 0.0;
LABEL_22:
    sub_10000CFBC(v164, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(&v63[v65], &unk_1009568A0, &qword_100784890);
    return (*(v57 + 8))(v63, v60);
  }

  v107 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v67 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v107 = v67;
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v108 = v162;
    sub_100016E2C(&v63[v65], v162, &unk_1009568A0, &qword_100784890);
    v109 = v66(v108, v60);
    if (v109 == v99)
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v110 = sub_10076D9AC();
      v111 = v110;
      v112 = qword_1009A23B0;
LABEL_53:
      v114 = sub_10000A61C(v110, v112);
      v115 = v165;
      *(v165 + 3) = v111;
      v115[4] = &protocol witness table for StaticDimension;
      v116 = sub_10000DB7C(v115);
      (*(*(v111 - 8) + 16))(v116, v114, v111);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v67 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v113 = v149;
    sub_100016E2C(&v63[v65], v149, &unk_1009568A0, &qword_100784890);
    v109 = v66(v113, v60);
    v162 = v113;
LABEL_49:
    if (v109 != v107)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v110 = sub_10076D9AC();
    v111 = v110;
    v112 = qword_1009A23C8;
    goto LABEL_53;
  }

  if (v67 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v67 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v118 = v148;
    sub_100016E2C(&v63[v65], v148, &unk_1009568A0, &qword_100784890);
    v119 = v66(v118, v60);
    v162 = v118;
    if (v119 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v67 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v120 = v147;
    sub_100016E2C(&v63[v65], v147, &unk_1009568A0, &qword_100784890);
    v121 = v66(v120, v60);
    v162 = v120;
    if (v121 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v67 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v122 = v146;
    sub_100016E2C(&v63[v65], v146, &unk_1009568A0, &qword_100784890);
    v123 = v66(v122, v60);
    v162 = v122;
    if (v123 != v88)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v124 = v65;
  if (v67 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v131 = v67;
    v132 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v67 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v57 = v167;
      v63 = v168;
      v60 = v166;
      if ((*(v167 + 48))(&v168[v65], 1, v166) == 1)
      {
        goto LABEL_85;
      }

      v133 = v144;
      sub_100016E2C(&v63[v65], v144, &unk_1009568A0, &qword_100784890);
      v134 = v66(v133, v60);
      v162 = v133;
      if (v134 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v57 = v167;
      v63 = v168;
      v60 = v166;
      if (v67 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v167 + 48))(&v168[v65], 1, v166) == 1)
      {
        goto LABEL_85;
      }

      v137 = v143;
      sub_100016E2C(&v63[v65], v143, &unk_1009568A0, &qword_100784890);
      v138 = v66(v137, v60);
      if (v138 != v132)
      {
        v162 = v143;
        if (v138 != v131)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10000CFBC(&v63[v65], &unk_1009568A0, &qword_100784890);
    (*(v57 + 8))(v63, v60);
    v135 = sub_10076220C();
    v136 = v165;
    *(v165 + 3) = v135;
    v136[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000DB7C(v136);
    sub_1007621FC();
    goto LABEL_6;
  }

  v57 = v167;
  v63 = v168;
  v60 = v166;
  if ((*(v167 + 48))(&v168[v65], 1, v166) == 1)
  {
LABEL_5:
    sub_10000CFBC(&v63[v65], &unk_1009568A0, &qword_100784890);
    (*(v57 + 8))(v63, v60);
    v68 = v165;
    *(v165 + 3) = &type metadata for Double;
    *(v68 + 4) = &protocol witness table for Double;
    *v68 = 0.0;
LABEL_6:
    v69 = v164;
    v70 = &unk_1009568A0;
    v71 = &qword_100784890;
    return sub_10000CFBC(v69, v70, v71);
  }

  v125 = v145;
  sub_100016E2C(&v63[v124], v145, &unk_1009568A0, &qword_100784890);
  if (v66(v125, v60) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v60 = v166;
    v57 = v167;
    (*(v167 + 8))(v145, v166);
    v63 = v168;
    v65 = v124;
    goto LABEL_5;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v126 = sub_10076D9AC();
  v127 = sub_10000A61C(v126, qword_1009A23B0);
  v128 = v165;
  *(v165 + 3) = v126;
  v128[4] = &protocol witness table for StaticDimension;
  v129 = sub_10000DB7C(v128);
  (*(*(v126 - 8) + 16))(v129, v127, v126);
  sub_10000CFBC(v164, &unk_1009568A0, &qword_100784890);
  v130 = v168;
  sub_10000CFBC(&v168[v124], &unk_1009568A0, &qword_100784890);
  return (*(v167 + 8))(v130, v166);
}

uint64_t sub_1003D7354@<X0>(uint64_t *a1@<X8>)
{
  v149 = a1;
  v2 = sub_1007621EC();
  v143 = *(v2 - 8);
  v144 = v2;
  __chkstk_darwin(v2);
  v142 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v141 = &v132 - v5;
  v148 = sub_10000A5D4(&qword_100942F28, &unk_10079ACB0);
  __chkstk_darwin(v148);
  v152 = &v132 - v6;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  v150 = v7;
  v151 = v8;
  __chkstk_darwin(v7);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v146 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  v17 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v132 - v21;
  __chkstk_darwin(v23);
  v25 = &v132 - v24;
  v26 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v26 - 8);
  v133 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v132 = &v132 - v29;
  __chkstk_darwin(v30);
  v140 = &v132 - v31;
  __chkstk_darwin(v32);
  v137 = &v132 - v33;
  __chkstk_darwin(v34);
  v147 = &v132 - v35;
  __chkstk_darwin(v36);
  v138 = &v132 - v37;
  __chkstk_darwin(v38);
  v145 = &v132 - v39;
  __chkstk_darwin(v40);
  v139 = &v132 - v41;
  __chkstk_darwin(v42);
  v136 = &v132 - v43;
  __chkstk_darwin(v44);
  v135 = &v132 - v45;
  __chkstk_darwin(v46);
  v134 = &v132 - v47;
  __chkstk_darwin(v48);
  v50 = &v132 - v49;
  sub_10076463C();
  sub_10000CFBC(v22, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v19, v25);
  if ((*(v12 + 48))(v25, 1, v11) == 1)
  {
    sub_10000CFBC(v25, &qword_1009499A0, &qword_1007848B0);
    v51 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v12 + 8))(v25, v11);
    v51 = 0;
  }

  v52 = v150;
  v53 = v151;
  (*(v151 + 56))(v50, v51, 1, v150);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v54 = v50;
  v55 = *(v12 + 8);
  v56 = v16;
  v57 = v52;
  v55(v56, v11);
  v58 = *(v53 + 32);
  v59 = v152;
  v60 = v10;
  v61 = v53;
  v62 = *(v148 + 48);
  v58(v152, v60, v57);
  v148 = v54;
  sub_100016E2C(v54, &v59[v62], &unk_1009568A0, &qword_100784890);
  v63 = *(v61 + 88);
  v64 = v63(v59, v57);
  if (v64 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10000CFBC(&v59[v62], &unk_1009568A0, &qword_100784890);
    (*(v61 + 8))(v59, v57);
    if (qword_100941208 != -1)
    {
      swift_once();
    }

    v65 = sub_10076D9AC();
    v66 = v65;
    v67 = qword_1009A2398;
LABEL_12:
    v68 = sub_10000A61C(v65, v67);
    v69 = v149;
    v149[3] = v66;
    v69[4] = &protocol witness table for StaticDimension;
    v70 = sub_10000DB7C(v69);
    (*(*(v66 - 8) + 16))(v70, v68, v66);
    v71 = &unk_1009568A0;
    v72 = &qword_100784890;
    v73 = v148;
    return sub_10000CFBC(v73, v71, v72);
  }

  if (v64 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10000CFBC(&v59[v62], &unk_1009568A0, &qword_100784890);
    (*(v61 + 8))(v59, v57);
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v65 = sub_10076D9AC();
    v66 = v65;
    v67 = qword_1009A23B0;
    goto LABEL_12;
  }

  if (v64 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) != 1)
    {
      v75 = v145;
      sub_100016E2C(&v59[v62], v145, &unk_1009568A0, &qword_100784890);
      v76 = v63(v75, v57);
      v147 = v75;
      if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v108 = sub_10076D9AC();
    v109 = sub_10000A61C(v108, qword_1009A23E0);
    v110 = v149;
    v149[3] = v108;
    v110[4] = &protocol witness table for StaticDimension;
    v111 = sub_10000DB7C(v110);
    (*(*(v108 - 8) + 16))(v111, v109, v108);
    sub_10000CFBC(v148, &unk_1009568A0, &qword_100784890);
    v71 = &qword_100942F28;
    v72 = &unk_10079ACB0;
    v73 = v59;
    return sub_10000CFBC(v73, v71, v72);
  }

  if (v64 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v77 = v140;
    sub_100016E2C(&v59[v62], v140, &unk_1009568A0, &qword_100784890);
    v78 = v63(v77, v57);
    v147 = v77;
    if (v78 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v64 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_10076468C();
    swift_getKeyPath();
    v80 = v62;
    v81 = v141;
    v82 = v146;
    sub_10076F49C();

    v55(v82, v11);
    v84 = v142;
    v83 = v143;
    v85 = v144;
    (*(v143 + 104))(v142, enum case for ShelfBackground.editorsChoice(_:), v144);
    v86 = sub_1007621DC();
    v87 = *(v83 + 8);
    v87(v84, v85);
    v87(v81, v85);
    if ((v86 & 1) == 0)
    {
      goto LABEL_53;
    }

    v88 = v148;
    v89 = v149;
    v149[3] = &type metadata for CGFloat;
    v89[4] = &protocol witness table for CGFloat;
    *v89 = 0x403E000000000000;
    sub_10000CFBC(v88, &unk_1009568A0, &qword_100784890);
    v90 = &v59[v80];
    goto LABEL_35;
  }

  if (v64 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_5;
    }

    v91 = v139;
    sub_100016E2C(&v59[v62], v139, &unk_1009568A0, &qword_100784890);
    if (v63(v91, v57) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v61 + 8))(v91, v57);
      goto LABEL_5;
    }

    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v92 = sub_10076D9AC();
    v93 = v92;
    v94 = qword_1009A23E0;
    goto LABEL_31;
  }

  if (v64 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v98 = sub_10076220C();
    v99 = v149;
    v149[3] = v98;
    v99[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000DB7C(v99);
    sub_1007621FC();
    goto LABEL_34;
  }

  v100 = enum case for Shelf.ContentType.productReview(_:);
  if (v64 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v101 = v147;
    sub_100016E2C(&v59[v62], v147, &unk_1009568A0, &qword_100784890);
    v102 = v63(v101, v57);
    if (v102 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v102 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v79 = v149;
        v149[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
LABEL_34:
        sub_10000CFBC(v148, &unk_1009568A0, &qword_100784890);
        v90 = &v59[v62];
LABEL_35:
        sub_10000CFBC(v90, &unk_1009568A0, &qword_100784890);
        return (*(v61 + 8))(v59, v57);
      }

LABEL_52:
      (*(v61 + 8))(v147, v57);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v103 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v64 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) != 1)
    {
      v104 = v138;
      sub_100016E2C(&v59[v62], v138, &unk_1009568A0, &qword_100784890);
      v105 = v63(v104, v57);
      v147 = v104;
      if (v105 == v100)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v64 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v106 = v137;
    sub_100016E2C(&v59[v62], v137, &unk_1009568A0, &qword_100784890);
    v107 = v63(v106, v57);
    v147 = v106;
    if (v107 != v103)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v64 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v64 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v113 = v136;
    sub_100016E2C(&v59[v62], v136, &unk_1009568A0, &qword_100784890);
    v114 = v63(v113, v57);
    v147 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v92 = sub_10076D9AC();
    v93 = v92;
    v94 = qword_1009A23C8;
LABEL_31:
    v95 = sub_10000A61C(v92, v94);
    v96 = v149;
    v149[3] = v93;
    v96[4] = &protocol witness table for StaticDimension;
    v97 = sub_10000DB7C(v96);
    (*(*(v93 - 8) + 16))(v97, v95, v93);
    goto LABEL_34;
  }

  if (v64 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v115 = v135;
    sub_100016E2C(&v59[v62], v135, &unk_1009568A0, &qword_100784890);
    v116 = v63(v115, v57);
    v147 = v115;
    if (v116 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v64 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v124 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v64 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
      {
        goto LABEL_53;
      }

      v125 = v133;
      sub_100016E2C(&v59[v62], v133, &unk_1009568A0, &qword_100784890);
      v126 = v63(v125, v57);
      v147 = v125;
      if (v126 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v129 = v64;
      if (v64 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v61 + 48))(&v59[v62], 1, v57) == 1)
      {
        goto LABEL_53;
      }

      v130 = v132;
      sub_100016E2C(&v59[v62], v132, &unk_1009568A0, &qword_100784890);
      v131 = v63(v130, v57);
      if (v131 != v124)
      {
        v147 = v132;
        if (v131 != v129)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10000CFBC(&v59[v62], &unk_1009568A0, &qword_100784890);
    (*(v61 + 8))(v59, v57);
    v127 = sub_10076220C();
    v128 = v149;
    v149[3] = v127;
    v128[4] = sub_1003D8834(&qword_10094DFA0, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000DB7C(v128);
    sub_1007621FC();
LABEL_58:
    v73 = v148;
    v71 = &unk_1009568A0;
    v72 = &qword_100784890;
    return sub_10000CFBC(v73, v71, v72);
  }

  if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
  {
LABEL_57:
    sub_10000CFBC(&v59[v62], &unk_1009568A0, &qword_100784890);
    (*(v61 + 8))(v59, v57);
    v112 = v149;
    v149[3] = &type metadata for Double;
    v112[4] = &protocol witness table for Double;
    *v112 = 0;
    goto LABEL_58;
  }

  v117 = &v59[v62];
  v118 = v134;
  sub_100016E2C(v117, v134, &unk_1009568A0, &qword_100784890);
  if (v63(v118, v57) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v57 = v150;
    v61 = v151;
    (*(v151 + 8))(v134, v150);
    v59 = v152;
    goto LABEL_57;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v119 = sub_10076D9AC();
  v120 = sub_10000A61C(v119, qword_1009A23B0);
  v121 = v149;
  v149[3] = v119;
  v121[4] = &protocol witness table for StaticDimension;
  v122 = sub_10000DB7C(v121);
  (*(*(v119 - 8) + 16))(v122, v120, v119);
  sub_10000CFBC(v148, &unk_1009568A0, &qword_100784890);
  v123 = v152;
  sub_10000CFBC(&v152[v62], &unk_1009568A0, &qword_100784890);
  return (*(v151 + 8))(v123, v150);
}

uint64_t sub_1003D8760@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v4 = sub_10076461C();
  sub_1007706EC();

  return sub_1003D4A9C(a1, a2);
}

uint64_t sub_1003D87AC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_10076461C();
  v5 = sub_1007706EC();

  if (v5)
  {

    return sub_1003D5CA4(a1, a2);
  }

  else
  {

    return sub_1003D7354(a2);
  }
}

uint64_t sub_1003D8834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003D8880(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_10076514C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076516C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_10099F7E0);
  (*(v6 + 16))(v8, v13, v5);
  v19[11] = *(v4 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  sub_10076D2DC();
  v14 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel);
  v19[4] = sub_1007626BC();
  v19[5] = &protocol witness table for UILabel;
  v19[1] = v14;
  v15 = v14;
  sub_10076515C();
  sub_1003DAF1C(&unk_1009560A0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  sub_10076E0FC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_1003D8B18()
{
  v0 = sub_10076514C();
  sub_10000DB18(v0, qword_10099F7E0);
  sub_10000A61C(v0, qword_10099F7E0);
  v2[3] = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v2[4] = sub_100071820(&qword_100942880, &unk_100942850, &unk_100784420, &protocol conformance descriptor for <> Conditional<A, B>);
  sub_10000DB7C(v2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  return sub_10076513C();
}

uint64_t sub_1003D8C20()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D1C();
  qword_100956030 = result;
  return result;
}

char *sub_1003D8C64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v64 = v4;
  v65 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v15, qword_1009A1000);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v66 = objc_opt_self();
  v22 = [v66 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_10073C780(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100016E2C(v14, v11, &unk_100943250, &unk_1007841D0);
  v26 = v25;
  sub_1007625DC();

  sub_10000CFBC(v14, &unk_100943250, &unk_1007841D0);
  v27 = *(v16 + 8);
  v67 = v15;
  v27(v18, v15);

  v28 = v64;
  *&v64[v65] = v26;
  v29 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  sub_1007626BC();
  *&v28[v29] = sub_10076269C();
  v30 = &v28[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = sub_100760FDC();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v69.receiver = v28;
  v69.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView];
  v39 = [v66 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_10073D75C();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler];
  v51 = *&v48[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler + 8];
  *v49 = 0;
  *(v49 + 1) = 0;
  v52 = v48;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000167E0(v50, v51)}];

  v53 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  v54 = qword_100940398;
  v55 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  if (v54 != -1)
  {
    swift_once();
  }

  [v55 setTextColor:qword_100956030];

  v56 = *&v34[v53];
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v57 = qword_100940D00;
  v58 = v56;
  if (v57 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v67, qword_1009A14F8);
  v59 = [v34 traitCollection];

  v60 = sub_100770B3C();
  [v58 setFont:v60];

  [*&v34[v53] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v53]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100783DD0;
  *(v61 + 32) = sub_10076E88C();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1003D9414()
{
  v1 = sub_10000A5D4(&qword_100956100, &unk_1007A1400);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_100760FDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle + 8];
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle];
  v18 = v8;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100016E2C(&v0[v11], v3, &qword_100956100, &unk_1007A1400);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10000CFBC(v3, &qword_100956100, &unk_1007A1400);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v15 = sub_1003DAB0C(v17, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v18 setAttributedText:v15];
}

uint64_t sub_1003D9714()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076514C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10076516C();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = sub_1007706EC();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer];
  sub_10076422C();
  [v17 setFrame:{sub_100102A30(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v3, qword_10099F7E0);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  sub_10076512C();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  sub_10076D2DC();
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel];
  v34 = sub_1007626BC();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  sub_10076515C();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_1003DAF1C(&unk_1009560A0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v27 = v32;
  sub_10076E0EC();

  [v17 bounds];
  v28 = [v1 traitCollection];
  sub_10076E0FC();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView(uint64_t a1)
{
  result = qword_100956088;
  if (!qword_100956088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D9CEC(uint64_t a1)
{
  sub_1003D9DA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D9DA4(uint64_t a1)
{
  if (!qword_100956098)
  {
    sub_100760FDC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100956098);
    }
  }
}

uint64_t sub_1003D9E44(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_10000A5D4(&unk_1009560C0, &unk_1007A1380);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_10000A5D4(&qword_100954458, &unk_10079DCA0);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = sub_10075D96C();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10075D94C();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075D97C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009560D0, &qword_1007A1390);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_10076D3DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = sub_10075D99C();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_100940CF0 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A61C(v16, qword_1009A14C8);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_100940CF8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009A14E0;
  }

  else
  {
    if (qword_100940CE0 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A61C(v16, qword_1009A1498);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_100940CE8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009A14B0;
  }

  v33 = sub_10000A61C(v16, v31);
  v30(v66, v33, v16);
  sub_10075D98C();
  (*(v10 + 16))(v15, v12, v9);
  sub_1003DAF1C(&qword_1009560D8, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  sub_1007703DC();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      sub_10077040C();
      sub_1003DAF1C(&qword_1009560E0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = sub_10076FF1C();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10000CFBC(v15, &qword_1009560D0, &qword_1007A1390);
        sub_100016F40(0, &qword_1009544A0, NSAttributedString_ptr);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = sub_10077076C();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = sub_10077042C();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      sub_10077041C();
      sub_10075D93C();
      sub_1007627CC();
      sub_1003DAF1C(&qword_1009560E8, &type metadata accessor for JetFontAttribute, &protocol conformance descriptor for JetFontAttribute);
      v42 = v78;
      sub_10075D95C();
      (*v68)(v40, v41);
      v43 = sub_1007627BC();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      v81 = sub_100770B3C();
      sub_100071820(&qword_1009544A8, &qword_100954458, &unk_10079DCA0, &protocol conformance descriptor for Range<A>);
      v34 = sub_10075D9CC();
      sub_10075D91C();
      sub_1003DAF1C(&qword_1009560F0, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
      v35 = sub_10075DA1C();
      sub_10000A5D4(&qword_1009560F8, &qword_1007A13F8);
      sub_100016BD0();
      sub_10075DAAC();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10000CFBC(v79, &qword_100954458, &unk_10079DCA0);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v81 = sub_100770B3C();
    sub_100071820(&qword_1009544A8, &qword_100954458, &unk_10079DCA0, &protocol conformance descriptor for Range<A>);
    v46 = sub_10075D9CC();
    sub_10075D91C();
    sub_1003DAF1C(&qword_1009560F0, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
    v47 = sub_10075DA1C();
    sub_10000A5D4(&qword_1009560F8, &qword_1007A13F8);
    sub_100016BD0();
    sub_10075DAAC();
    v47(v80, 0);

    v46(v82, 0);
    sub_10000CFBC(v79, &qword_100954458, &unk_10079DCA0);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = sub_10077166C();
  __break(1u);
  return result;
}

id sub_1003DAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100760FDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_10076FF6C();
  v13 = [v11 initWithString:v12];

  if (!a3)
  {
    return v13;
  }

  sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);

  v14 = sub_10077098C();
  if (sub_10076BE0C())
  {
    v15 = sub_10076044C();
  }

  else
  {
    if ((sub_10076BDFC() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_1005A6008(a3, v14);
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    return v13;
  }

  v14 = [objc_allocWithZone(NSTextAttachment) init];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v17 = sub_100770D1C();
  v18 = [v16 imageWithTintColor:v17];

  [v14 setImage:v18];
  (*(v8 + 16))(v10, a4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_10076FF6C();
    v22 = [v20 initWithString:v21];

    [v13 insertAttributedString:v22 atIndex:0];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 insertAttributedString:v23 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = sub_10076FF6C();
    v26 = [v24 initWithString:v25];

    [v13 appendAttributedString:v26];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 appendAttributedString:v23];
    goto LABEL_13;
  }

  result = sub_10077166C();
  __break(1u);
  return result;
}

uint64_t sub_1003DAED0@<X0>(uint64_t *a1@<X8>)
{
  sub_10075D92C();
  result = sub_10075D91C();
  *a1 = result;
  return result;
}

uint64_t sub_1003DAF1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003DAF64()
{
  v1 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v7, qword_1009A1000);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_10073C780(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100016E2C(v6, v3, &unk_100943250, &unk_1007841D0);
  v18 = v17;
  sub_1007625DC();

  sub_10000CFBC(v6, &unk_100943250, &unk_1007841D0);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleLabel;
  sub_1007626BC();
  *(v19 + v20) = sub_10076269C();
  v21 = (v19 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = sub_100760FDC();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003DB314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003DB360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003DB3B4()
{
  result = qword_100956108;
  if (!qword_100956108)
  {
    sub_10075EBEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956108);
  }

  return result;
}

uint64_t sub_1003DB40C()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B96C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10075EBDC();
    sub_10074D8E0(v7);
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

unint64_t sub_1003DB5C8(uint64_t a1, int *a2)
{
  v3 = sub_100382B5C(a1, a2);
  sub_1003DB9EC();
  sub_10077019C();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v3;
}

void sub_1003DB660(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007708EC() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_10000A5D4(&qword_100942C18, &unk_10078C540);
    a5[4] = sub_100023880();
    sub_10000DB7C(a5);

    sub_1007708FC();
    sub_10076A3BC();
    return;
  }

  sub_10037E460(a1, a2, a3, a4, a5);
}

uint64_t sub_1003DB7A8(uint64_t a1)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763FDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100763FAC();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_1006359A8();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

id sub_1003DB9EC()
{
  v21 = sub_10077164C();
  v0 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076220C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007621FC();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = sub_10076461C();
  sub_100763FCC();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_1007708EC();
  sub_10076462C();
  sub_10076D17C();
  sub_100219D24(v14);
  sub_10076D40C();
  v16 = v15;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v21);
  v17 = sub_10076FF6C();

  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v17 alignment:1 absoluteOffset:{0.0, v16}];

  (*(v4 + 8))(v6, v3);
  return v18;
}

uint64_t sub_1003DBCB0()
{
  v1 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xD8))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000CFBC(v3, &unk_1009434A0, &unk_100787B90);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_1005B1E18(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1003DBF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*((swift_isaMask & *v3) + 0xE0))(v8);
  sub_1003DC6B0(v5);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10076C70C();
    if (!v13)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v13 = sub_100770D8C();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

void sub_1003DC0C8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*((swift_isaMask & *v3) + 0xE0))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*((swift_isaMask & *v3) + 0x1D8))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v12);
  }
}

id sub_1003DC268()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_1003E01E4;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1003DE5B0;
  v10 = &unk_1008941C0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = sub_10076C03C();
  v10 = v6;
  v11 = sub_1003E0204(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v7 = sub_10000DB7C(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = sub_10076C90C();
  result = sub_10000CD74(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

uint64_t sub_1003DC47C(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*((swift_isaMask & *v1) + 0x1D0))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *((swift_isaMask & *v1) + 0x1C8);

  return v9(result);
}

uint64_t sub_1003DC5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009434A0, &unk_100787B90);
}

uint64_t sub_1003DC640(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009434A0, &unk_100787B90);
  return swift_endAccess();
}

uint64_t sub_1003DC6B0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*((swift_isaMask & *v1) + 0x138))())
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*((swift_isaMask & *v1) + 0x1D8))(v5);
LABEL_7:
  v6 = *((swift_isaMask & *v1) + 0x1D0);

  return v6(v3);
}

__n128 sub_1003DC81C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1003DC83C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void sub_1003DC85C()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v11 = sub_1007701BC();

  if (v11 >> 62)
  {
    v12 = sub_10077158C();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_10077149C();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_1003DCA00()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

id sub_1003DCBD8()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

void sub_1003DCC54()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1003E028C;
  *(v4 + 24) = v3;
  v7[4] = sub_1000349FC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001C5148;
  v7[3] = &unk_100894238;
  v5 = _Block_copy(v7);
  v6 = v0;
  v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1003DCDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  swift_getKeyPath();
  sub_10076338C();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*((swift_isaMask & *v2) + 0xE0))(v13);
  type metadata accessor for TodayCardGridTracker();
  sub_10076F64C();
  sub_10076FC1C();
  sub_1003B1704();
  sub_1003DC6B0(v14);
  sub_10076C84C();
  sub_1003E0204(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  v15 = sub_10076332C();
  v16 = v20;
  if (v20)
  {
    (*((swift_isaMask & *v2) + 0xD8))(v15);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {

      sub_10000CFBC(v10, &unk_1009434A0, &unk_100787B90);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v18 = *(v2 + *v17);
      if (v18 == 7)
      {
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*((swift_isaMask & *v2) + 0x1E0))(v16, v18, v7, a2);
        [v2 setNeedsLayout];

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
  }
}

double sub_1003DD1D8(uint64_t a1, char **a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_1005DE2F4(a2, a4, a5);
  }

  else
  {
    sub_1005DE768(a2, a4, a5);
  }

  return result;
}

double sub_1003DD1F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*((swift_isaMask & *v2) + 0x268))(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v5;
  v8[1] = v7;
  sub_10001CE50(v5, v7);
  result = sub_1000167E0(v9, v10);
  if (v5)
  {
    v5(result);
    return sub_1000167E0(v5, v7);
  }

  return result;
}

double sub_1003DD30C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  return sub_1000167E0(v2, v3);
}

void *sub_1003DD3B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = sub_10075FEEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = sub_10076C38C();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = sub_10075F99C();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_10093F878;
  v35 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10076BCFC();
  v37 = sub_10000A61C(v36, qword_10099D408);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  sub_10075F97C();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  sub_10075F98C();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v46 = sub_100770D8C();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*((swift_isaMask & *v30) + 0x278))();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100783DD0;
  *(v52 + 32) = sub_10076E3FC();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v30;
}

double sub_1003DDB1C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    sub_1007660FC();
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*((swift_isaMask & *v1) + 0x1A8))(v3);
  v4 = v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 1);

    v6(v8);
    return sub_1000167E0(v6, v7);
  }

  return result;
}

id sub_1003DDDB0(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_1003DC47C(*(a1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*((swift_isaMask & *a1) + 0x138))(v5);
  v7 = (*((swift_isaMask & *a2) + 0x140))(v6 & 1);
  v8 = (*((swift_isaMask & *a1) + 0x150))(v7);
  (*((swift_isaMask & *a2) + 0x158))(v8 & 1);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*((swift_isaMask & *a2) + 0x1D8))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1003DC6B0(*(a1 + v11));
  v13 = (*((swift_isaMask & *a1) + 0x190))(v12);
  (*((swift_isaMask & *a2) + 0x198))(v13 & 1);
  v14 = sub_1003E0204(&qword_100956330, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A178C);
  (*((swift_isaMask & *a2) + 0x1E8))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

double sub_1003DE0CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  sub_10076F64C();
  sub_10076FC1C();
  sub_1003B1704();
  v8 = v7;
  sub_10076C84C();
  sub_1003E0204(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  v9 = v16;
  if (v16)
  {
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    v10 = v16;
    v11 = (*(v2 + 528))(v9, v8, 0, v6, v16, 0);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    v12 = v16;
    sub_1005DE768(v8, v6, v16);
    v11 = v13;
  }

  (*(v4 + 8))(v6, v3);
  return v11;
}

_BYTE *sub_1003DE354(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      if (sub_100770EEC())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel(0);
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_1003DE51C(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v3 = sub_1007701BC();

  v4 = sub_10016E820(v3);

  return v4;
}

Class sub_1003DE5B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1003DE62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_1009562C8;
  if (!qword_1009562C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DE758(uint64_t a1)
{
  sub_1003DE89C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1003DE89C(319, qword_100946AC0, &type metadata accessor for PageGrid);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003DE89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003DE93C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_1003DE9F4@<D0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x170))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1003DEBE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0, &unk_100783DC0);
}

uint64_t sub_1003DEC48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0, &unk_100783DC0);
  return swift_endAccess();
}

uint64_t sub_1003DED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

double sub_1003DEE7C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1003DEEDC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1003DEF74()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1003DEFD0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_1003DF1E8(void *a1)
{
  a1[1] = sub_1003E0204(&qword_1009562D8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A16B4);
  a1[2] = sub_1003E0204(&qword_1009562E0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A16E4);
  a1[3] = sub_1003E0204(&qword_100950A68, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A1714);
  a1[4] = sub_1003E0204(&qword_1009562E8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A1684);
  a1[5] = sub_1003E0204(&qword_1009562F0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A15E4);
  a1[6] = sub_1003E0204(&qword_1009562F8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A165C);
  result = sub_1003E0204(&qword_100950A78, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A1744);
  a1[7] = result;
  return result;
}

uint64_t sub_1003DF334(uint64_t a1, void *a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, v6, &unk_1009434A0, &unk_100787B90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_1009434A0, &unk_100787B90);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10076C31C();
  sub_10076C31C();
  [a2 layoutDirection];
  sub_1007708DC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003DF554(uint64_t result, char a2)
{
  if (result)
  {

    sub_10076C7FC();
    v3 = sub_100761BEC();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(0);
          v5 = &unk_100956338;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell(0);
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
          v5 = &unk_100956320;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          sub_10076C7FC();
          sub_10076472C();
          if (swift_dynamicCastClass())
          {
            v7 = sub_1007646EC();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell(0);
              v5 = &unk_100956340;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell(0);
LABEL_36:
        v4 = v8;
        v5 = &unk_100956330;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell(0);
      v5 = &unk_100952D50;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(0);
          v5 = &unk_100956310;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
          v5 = &unk_100956308;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
          v5 = &unk_100956300;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell(0);
          v5 = &unk_100956328;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell(0);
          v5 = &unk_100956318;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_1003E0204(v5, v6, &unk_1007A178C);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

uint64_t sub_1003DF8CC(uint64_t a1, char a2, void *a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, v8, &unk_1009434A0, &unk_100787B90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CFBC(v8, &unk_1009434A0, &unk_100787B90);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [a3 layoutDirection];
  sub_1007708DC();
  return (*(v10 + 8))(v12, v9);
}

id sub_1003DFB08()
{
  v1 = v0;
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*((swift_isaMask & *v1) + 0xD8))();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10000CFBC(v11, &unk_1009434A0, &unk_100787B90);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      sub_10076C31C();
      sub_10076C31C();
    }

    [v36 layoutDirection];
    sub_1007708DC();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*((swift_isaMask & *v1) + 0xD8))();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10000CFBC(v15, &unk_1009434A0, &unk_100787B90);
    v25 = [v1 traitCollection];
    sub_10076C31C();
    sub_10076C31C();
    [v25 layoutDirection];
    sub_1007708DC();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10000CFBC(v21, &unk_1009434A0, &unk_100787B90);
  return [v1 setNeedsLayout];
}

void sub_1003E0038()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = sub_10076C38C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003E01AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003E01EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003E0204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E024C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003E02B0()
{
  result = qword_100950A98;
  if (!qword_100950A98)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A98);
  }

  return result;
}

double sub_1003E030C()
{
  v0 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v39 = &v31 - v1;
  v2 = sub_10076C38C();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);

  sub_1007633DC();
  v19 = v31;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v21 = v20;
  v23 = v22;
  (*(v35 + 8))(v4, v36);
  v24 = sub_100630CB4();
  sub_10000A570(v44, v42);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100763C3C();
  swift_dynamicCast();
  v25 = v33;
  v26 = v34;
  (*(v33 + 16))(v32, v10, v34);
  sub_10076FCFC();
  v27 = v39;
  sub_10076FDBC();
  sub_1001D53DC(v43, v24, v21, v23);
  v29 = v28;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v27, v41);
  (*(v37 + 8))(v19, v38);
  (*(v25 + 8))(v10, v26);
  sub_10000CD74(v44);

  return v29;
}

uint64_t sub_1003E0930(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10076D9AC();
  sub_10000DB18(v10, a3);
  sub_10000A61C(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_10076D9BC();
  return (*(v7 + 8))(v9, v6);
}

void sub_1003E0AA0(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v92[-v10];
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v92[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v92[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_10076FF6C();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v102.receiver = v4;
    v102.super_class = v33;
    v34 = objc_msgSendSuper2(&v102, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v100 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground];
    sub_1003E3E98(v39, 26.0);

    v40 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_100941110;
    v42 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D3DC();
    v44 = sub_10000A61C(v43, qword_1009A2128);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v95 = v45;
    v96 = *(v45 + 56);
    v96(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v101 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v99 = v51;
    v53 = [*&v38[v51] layer];
    v98 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_100941120;
    v56 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_10000A61C(v43, qword_1009A2158);
    v46(v11, v57, v43);
    v58 = v96;
    v96(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v101 labelColor];
    v97 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v93 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v95[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v95 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_1007625DC();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v94 = v62;
    v69 = v68;
    v70 = [v101 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v98;
    [v71 setCompositingFilter:v98];

    v73 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v95;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v93, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_1007625DC();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v101;
    v78 = [v101 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v100]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v97]];
    [v89 addSubview:*&v38[v94]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_1003E2A4C(v91);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E172C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v32 = a1;
  v33 = a2;
  v31 = sub_10076DF4C();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_10076703C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v15 + 16))(v17, v4 + v18, v14);
  sub_100766F6C();
  (*(v15 + 8))(v17, v14);
  v19.n128_f64[0] = (*(v8 + 104))(v10, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  sub_1003E3C30(&qword_100949440, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v19);
  sub_10077018C();
  sub_10077018C();
  if (*v41 == v38)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_10077167C();
  }

  v21 = *(v8 + 8);
  v21(v10, v7);
  v21(v13, v7);

  sub_1003E1CB0(v41);
  if ((v32 & 1) == 0)
  {
    v25 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView);
    v39 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    v40 = &protocol witness table for UIImageView;
    *&v38 = v25;
    v26 = v25;
    sub_10076DF8C();
    v36 = sub_10076DFAC();
    v37 = &protocol witness table for Center;
    sub_10000DB7C(v35);
    sub_10076DFBC();
    (*(v30 + 104))(v6, enum case for Pin.Edge.trailingEdge(_:), v31);
    sub_10000A570(v41, &v38);
    v34[3] = sub_10076E04C();
    v34[4] = &protocol witness table for Margins;
    sub_10000DB7C(v34);
    sub_10076E03C();
    v39 = sub_10076DF5C();
    v40 = &protocol witness table for Pin;
    sub_10000DB7C(&v38);
    sub_10076DF6C();
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000A570(v41, v34);
    sub_10076DF7C();
    v36 = sub_10076DFAC();
    v37 = &protocol witness table for Center;
    sub_10000DB7C(v35);
    sub_10076DFBC();
    goto LABEL_9;
  }

  v22 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay(0);
  sub_10076422C();
  [v22 sizeThatFits:{v23, v24}];
  sub_10000A570(v41, v35);
  v39 = sub_10076E04C();
  v40 = &protocol witness table for Margins;
  sub_10000DB7C(&v38);
  sub_10076E03C();
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_10000A570(&v38, v35);
LABEL_9:
  sub_10000A570(v35, v34);
  v27 = sub_10076E04C();
  v28 = v33;
  v33[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_10000DB7C(v28);
  sub_10076E03C();
  sub_10000CD74(v41);
  sub_10000CD74(&v38);
  return sub_10000CD74(v35);
}

uint64_t sub_1003E1CB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v72 = sub_10076D65C();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v61 - v5;
  __chkstk_darwin(v6);
  v67 = &v61 - v7;
  v8 = sub_10076D9AC();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  __chkstk_darwin(v10);
  v73 = &v61 - v11;
  v12 = sub_100766F4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_10076703C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_100766F6C();
  (*(v20 + 8))(v22, v19);
  v24.n128_f64[0] = (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_1003E3C30(&qword_100949440, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v24);
  sub_10077018C();
  sub_10077018C();
  if (v74 == v77)
  {
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);

LABEL_4:
    v28 = qword_1009403B8;
    v62 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_100956398;
    goto LABEL_10;
  }

  v26 = sub_10077167C();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v27(v18, v12);

  if (v26)
  {
    goto LABEL_4;
  }

  v30 = qword_1009403B0;
  v62 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v30 != -1)
  {
    swift_once();
  }

  v29 = qword_100956380;
LABEL_10:
  v31 = v65;
  v32 = sub_10000A61C(v8, v29);
  v65 = *(v70 + 16);
  (v65)(v73, v32, v8);
  v33 = v63;
  sub_10076D63C();
  v34 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v35 = sub_1007626BC();
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v34;
  v36 = swift_allocObject();
  v37 = ObjectType;
  *(v36 + 16) = v2;
  *(v36 + 24) = v37;
  v38 = v37;
  v39 = v34;
  v40 = v2;
  sub_10076D64C();

  v61 = v8;
  v41 = *(v69 + 1);
  v42 = v33;
  v43 = v72;
  v41(v42, v72);
  v69 = v41;
  sub_10000CD74(&v74);
  v44 = *&v40[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  *(v45 + 24) = v38;
  v63 = v40;
  v46 = v44;
  v47 = v67;
  sub_10076D64C();

  v41(v31, v43);
  sub_10000CD74(&v74);
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  v48 = v62;
  *&v74 = v62;
  v49 = v66;
  v50 = v61;
  (v65)(v66, v73, v61);
  v51 = v70;
  v52 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v53 = (v64 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v63;
  *(v54 + 16) = v63;
  (*(v51 + 32))(v54 + v52, v49, v50);
  v56 = v72;
  *(v54 + v53) = ObjectType;
  v57 = v68;
  v68[3] = v56;
  v57[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v57);
  v58 = v48;
  v59 = v55;
  sub_10076D64C();

  v69(v47, v56);
  (*(v51 + 8))(v73, v50);
  return sub_10000CD74(&v74);
}

uint64_t sub_1003E2474(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = sub_100766F4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076703C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  sub_100766F6C();
  (*(v14 + 8))(v16, v13);
  sub_100766F2C();
  (*(v10 + 8))(v12, v9);
  sub_10076D5EC();
  v18 = sub_10076D60C();
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v18)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D9AC();
  v20 = sub_10000A61C(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_10000DB7C(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return sub_10076D5BC();
}

uint64_t sub_1003E270C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100766F4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076703C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a3 + v14, v10);
  sub_100766F6C();
  (*(v11 + 8))(v13, v10);
  sub_100766F2C();
  (*(v7 + 8))(v9, v6);
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70, &unk_10078BF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v16 = sub_10076D60C();
  *(inited + 32) = v16;
  v17 = sub_10076D61C();
  *(inited + 40) = v17;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v16)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v17)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  v18 = sub_10076D9AC();
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v19 = sub_10000DB7C(v24);
  v20 = *(*(v18 - 8) + 16);
  v20(v19, a4, v18);
  sub_10076D5BC();
  if (qword_1009403C0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v18, qword_1009563B0);
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v22 = sub_10000DB7C(v24);
  v20(v22, v21, v18);
  return sub_10076D5CC();
}

id sub_1003E2A4C(__n128 a1)
{
  v2 = v1;
  v57 = sub_100766FCC();
  v65 = *(v57 - 8);
  __chkstk_darwin(v57);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v54 - v5;
  __chkstk_darwin(v6);
  v58 = &v54 - v7;
  __chkstk_darwin(v8);
  v55 = &v54 - v9;
  v10 = sub_100766F4C();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076703C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v59 = &v54 - v17;
  __chkstk_darwin(v18);
  v56 = &v54 - v19;
  __chkstk_darwin(v20);
  v54 = &v54 - v21;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v26 = *(v14 + 16);
  v26(v24, &v1[v25], v13);
  sub_100766F6C();
  v27 = *(v14 + 8);
  (v27)(v24, v13);
  v28 = [v1 traitCollection];
  v29 = sub_100766F3C();

  v67[1](v12, v68);
  v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v66 = v29;
  [v30 setTextAlignment:v29];
  v60 = v26;
  v61 = v25;
  v31 = v2;
  v32 = v54;
  v26(v54, &v2[v25], v13);
  v33 = v13;
  v34 = v55;
  sub_100766FDC();
  v67 = v27;
  v68 = v14 + 8;
  (v27)(v32, v13);
  v35 = sub_100766F9C();
  v36 = v34;
  v37 = v57;
  v65 = *(v65 + 8);
  (v65)(v36);
  if (!v35)
  {
    v35 = [objc_opt_self() secondaryLabelColor];
  }

  [v30 setTextColor:v35];

  v38 = v31;
  v39 = *&v31[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  [v39 setTextAlignment:v66];
  v40 = v60;
  v41 = v61;
  v42 = v56;
  v60(v56, &v31[v61], v33);
  v43 = v58;
  sub_100766FDC();
  (v67)(v42, v33);
  v44 = sub_100766FAC();
  (v65)(v43, v37);
  if (!v44)
  {
    v44 = [objc_opt_self() labelColor];
  }

  [v39 setTextColor:v44];

  v45 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v45 setTextAlignment:v66];
  v46 = v59;
  v40(v59, &v38[v41], v33);
  v47 = v62;
  sub_100766FDC();
  (v67)(v46, v33);
  v48 = sub_100766F7C();
  (v65)(v47, v37);
  if (!v48)
  {
    v48 = [objc_opt_self() secondaryLabelColor];
  }

  [v45 setTextColor:v48];

  v49 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v49 setTextAlignment:v66];
  v50 = v63;
  v40(v63, &v38[v41], v33);
  v51 = v64;
  sub_100766FDC();
  (v67)(v50, v33);
  v52 = sub_100766F8C();
  (v65)(v51, v37);
  if (!v52)
  {
    v52 = [objc_opt_self() labelColor];
  }

  [v49 setTextColor:v52];

  return [v38 setNeedsLayout];
}

id sub_1003E31C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay(uint64_t a1)
{
  result = qword_100956430;
  if (!qword_100956430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E333C(uint64_t a1)
{
  result = sub_10076703C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1003E33F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001CE50(a1, a2);
  sub_10001CE50(a1, a2);
  v8 = sub_1000167E0(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000167E0(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000167E0(a1, a2);
}

id sub_1003E34A4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_100766F4C();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v60 - v8;
  __chkstk_darwin(v9);
  v63 = &v60 - v10;
  __chkstk_darwin(v11);
  v74 = &v60 - v12;
  __chkstk_darwin(v13);
  v73 = &v60 - v14;
  __chkstk_darwin(v15);
  v72 = &v60 - v16;
  v17 = sub_10076703C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  sub_10076704C();
  v26 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v27 = v18[3];
  v77 = v26;
  v27(&v3[v26], v25, v17);
  swift_endAccess();
  sub_1003E2A4C(v28);
  v29 = v18[1];
  v64 = v25;
  v78 = v17;
  v75 = v29;
  v76 = v18 + 1;
  v29(v25, v17);
  v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_1007670AC();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  sub_1007670BC();
  if (v34)
  {
    v35 = sub_10076FF6C();
  }

  else
  {
    v35 = 0;
  }

  [v33 setText:v35];

  v36 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_10076706C();
  if (v37)
  {
    v38 = sub_10076FF6C();
  }

  else
  {
    v38 = 0;
  }

  v61 = v36;
  [v36 setText:v38];

  v39 = v18[2];
  v40 = v78;
  v65 = v18 + 2;
  v71 = v39;
  v39(v22, &v3[v77], v78);
  sub_100766F6C();
  v75(v22, v40);
  v41 = v79;
  v42 = *(v79 + 104);
  v70 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v69 = v42;
  v43.n128_f64[0] = v42(v73);
  sub_1003E3C30(&qword_100949440, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v43);
  sub_10077018C();
  sub_10077018C();
  v66 = a1;
  if (v82 == v80 && v83 == v81)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_10077167C();
  }

  v45 = *(v41 + 8);
  v45(v73, v5);
  v79 = v41 + 8;
  v45(v72, v5);

  [v61 setHidden:v44 & 1];
  v73 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView];
  v46 = v78;
  v47 = v62;
  v71(v62, &v3[v77], v78);
  sub_100766F6C();
  v75(v47, v46);
  v48 = v63;
  v69(v63, v70, v5);
  sub_10077018C();
  sub_10077018C();
  if (v82 == v80 && v83 == v81)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_10077167C();
  }

  v45(v48, v5);
  v45(v74, v5);

  [v73 setHidden:v49 & 1];
  v50 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  v51 = sub_10076707C();
  v53 = sub_100113EB4(v51, v52, [v3 effectiveUserInterfaceLayoutDirection]);

  [v50 setAttributedText:v53];

  v54 = v78;
  v55 = v64;
  v71(v64, &v3[v77], v78);
  v56 = v67;
  sub_100766F6C();
  v75(v55, v54);
  v57 = v68;
  v58.n128_f64[0] = v69(v68, v70, v5);
  sub_1003E3C30(&qword_100956448, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v58);
  LOBYTE(v55) = sub_10076FF1C();
  v45(v57, v5);
  v45(v56, v5);
  [v50 setHidden:(v55 & 1) == 0];
  return [v3 setNeedsLayout];
}

uint64_t sub_1003E3C30(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_100766F4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003E3C74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E3D24()
{
  v1 = sub_10076D9AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1003E3DF4(uint64_t a1)
{
  v3 = *(sub_10076D9AC() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1003E270C(v4, a1, v5, v6);
}

void sub_1003E3E98(void *a1, double a2)
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = [objc_opt_self() effectWithStyle:17];
  sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  isa = sub_1007701AC().super.isa;

  [a1 setBackgroundEffects:isa];

  [a1 _setContinuousCornerRadius:a2];
  v6 = [a1 layer];
  [v6 setCornerRadius:a2];

  v7 = [a1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [a1 layer];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setBorderWidth:1.0 / v11];
  v12 = [a1 layer];
  v13 = [objc_opt_self() whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.15];

  v15 = [v14 CGColor];
  [v12 setBorderColor:v15];
}

void sub_1003E4108(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  sub_100766FBC();
  sub_100766F5C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *(v1 + v11) = [objc_allocWithZone(UIVisualEffectView) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = sub_10076FF6C();
  v18 = [objc_opt_self() systemImageNamed:v17];

  if (!v18)
  {
    __break(1u);
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_chevronView;
  v20 = [objc_allocWithZone(UIImageView) initWithImage:v18];

  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v1 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1003E4490()
{
  result = qword_100956450;
  if (!qword_100956450)
  {
    sub_10075EAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956450);
  }

  return result;
}

uint64_t sub_1003E44F0(uint64_t a1)
{
  v1 = sub_10076F50C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A54C();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = v10;
  sub_10076A53C();
  sub_10075F45C();
  sub_10076FC1C();
  v6 = v10;
  sub_10075F44C();
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  (*(v2 + 104))(v4, enum case for ActionOutcome.performed(_:), v1);
  v7 = sub_10076FC8C();

  return v7;
}

id sub_1003E46C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076B6EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_10077140C();
      sub_10076FDEC();
      v45[0] = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore];

      sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
      sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
      sub_10076F82C();
      v21 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph];
      sub_10000A5D4(&unk_10094F738, &qword_100798600);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100784500;
      sub_1007665FC();
      sub_1007665CC();
      v45[0] = v23;
      sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_10000A5D4(&qword_10094F748, qword_1007A1A50);
      sub_100071820(&qword_10094F750, &qword_10094F748, qword_1007A1A50, &protocol conformance descriptor for [A]);
      v24 = v37;
      sub_1007712CC();
      v45[0] = _swiftEmptyArrayStorage;
      sub_1003E5E5C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      sub_10000A5D4(&unk_1009564D0, qword_100786660);
      sub_100071820(&qword_100944550, &unk_1009564D0, qword_100786660, &protocol conformance descriptor for [A]);
      v25 = v41;
      v26 = v34;
      sub_1007712CC();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10000A570(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_10075FA0C();
      sub_1003E5EA4(v45);
      sub_10000CD74(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1003E4E08()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1003E5054(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

double sub_1003E5054(double a1, double a2)
{
  v3 = v2;
  v24 = sub_10076664C();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_10077140C();
  sub_10076FDEC();
  v26 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
  sub_10076FD7C();
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
  sub_10000A5D4(&unk_10094F738, &qword_100798600);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100784500;
  sub_1007665FC();
  sub_1007665CC();
  v26 = v15;
  sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10000A5D4(&qword_10094F748, qword_1007A1A50);
  sub_100071820(&qword_10094F750, &qword_10094F748, qword_1007A1A50, &protocol conformance descriptor for [A]);
  v16 = v24;
  sub_1007712CC();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

void sub_1003E5524(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1003E5648()
{
  v1 = sub_10076B6EC();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076664C();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_10077140C();
  sub_10076FDEC();
  v28 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore);

  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
  sub_10076F82C();
  v18 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model;
  sub_10000A5D4(&unk_10094F738, &qword_100798600);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100783DD0;
  sub_1007665FC();
  v28 = v10;
  sub_1003E5E5C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10000A5D4(&qword_10094F748, qword_1007A1A50);
  sub_100071820(&qword_10094F750, &qword_10094F748, qword_1007A1A50, &protocol conformance descriptor for [A]);
  v11 = v21;
  sub_1007712CC();
  v28 = _swiftEmptyArrayStorage;
  sub_1003E5E5C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10000A5D4(&unk_1009564D0, qword_100786660);
  sub_100071820(&qword_100944550, &unk_1009564D0, qword_100786660, &protocol conformance descriptor for [A]);
  v13 = v24;
  v12 = v25;
  sub_1007712CC();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_1003E5B60(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
  v7 = OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_10075E11C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_10021560C(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_1003E5E44()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_1003E5E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E5EA4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094F720, &unk_100785540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1003E5F0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = 0;

  return result;
}

uint64_t sub_1003E5FB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007672DC();
  sub_10000DB18(v4, qword_10099F860);
  v30 = sub_10000A61C(v4, qword_10099F860);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1648);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_10076D9AC();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v5, qword_1009A1660);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_10076D9BC();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v31);
  v18(v20, v3, v0);
  sub_10076D9BC();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return sub_1007672BC();
}

uint64_t sub_1003E6438()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_1009564E0);
  sub_10000A61C(v0, qword_1009564E0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_1003E64D4()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_1009564F8 = v1;
}

char *sub_1003E654C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v10, qword_1009A1648);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(sub_1007626BC());
  *&v5[v24] = sub_1007626AC();
  v28 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v10, qword_1009A1660);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v28] = sub_10050BDFC(v30, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_1009403D8;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_1009564F8];

  v37 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_1009403D0;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v44, qword_1009564E0);
  v51 = v32;
  sub_10075FDCC();

  sub_100770E7C();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1003E6BF0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_10076D1FC();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1007672FC();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007672DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon];
  v15 = qword_1009403C8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099F860);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_1009403D8;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_10076044C();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  sub_1007672CC();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
  v46 = sub_100016F40(0, &qword_100956550, UILabel_ptr);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  sub_1007672EC();
  v28 = [v1 contentView];
  sub_10076422C();

  sub_1007672AC();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_1009403D8;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_10076044C();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

id sub_1003E7274(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009403D0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_1009564E0);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell(uint64_t a1)
{
  result = qword_100956528;
  if (!qword_100956528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003E7514(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003E75C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  sub_10032E104();
  return sub_100760BFC();
}

double sub_1003E7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6, double a7)
{
  v54 = a4;
  v52 = a3;
  v50 = a1;
  v62 = sub_1007672FC();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1007672DC();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v57 = &v46[-v11];
  v12 = sub_10076997C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v46[-v16];
  v53 = sub_10076DDDC();
  v55 = sub_10076DDCC();
  v18 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v19 = qword_100940D70;

  if (v19 != -1)
  {
    swift_once();
  }

  v48 = sub_10076D3DC();
  sub_10000A61C(v48, qword_1009A1648);
  v63 = a5;
  v20 = [a5 traitCollection];
  v49 = v18;
  sub_100770B3C();

  v21 = sub_10076C04C();
  v72[3] = v21;
  v22 = sub_1003E7E60(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72[4] = v22;
  v23 = sub_10000DB7C(v72);
  v24 = *(*(v21 - 8) + 104);
  v47 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24(v23);
  sub_10076C90C();
  sub_10000CD74(v72);
  sub_10076996C();
  sub_10076994C();
  v25 = *(v13 + 8);
  v25(v17, v12);
  if (v52)
  {
    v50 = sub_10076080C();
  }

  else
  {
    v50 = 0;
  }

  v52 = v12;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v48, qword_1009A1660);
  v26 = [v63 traitCollection];
  sub_100770B3C();

  v70 = v21;
  v71 = v22;
  v27 = sub_10000DB7C(&v69);
  (v24)(v27, v47, v21);
  sub_10076C90C();
  sub_10000CD74(&v69);
  v28 = v51;
  sub_10076996C();
  sub_10076994C();
  v25(v28, v52);
  if (qword_1009403C8 != -1)
  {
    swift_once();
  }

  v29 = v60;
  v30 = sub_10000A61C(v60, qword_10099F860);
  v31 = v58;
  v32 = *(v58 + 16);
  v33 = v57;
  v32(v57, v30, v29);
  if (v54)
  {
    v34 = qword_1009403D8;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_10076044C();
    if (v35)
    {
      v36 = v35;
      [v35 size];
    }
  }

  sub_1007672CC();
  v32(v56, v33, v29);
  v67 = v53;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v55;
  sub_10000A570(v72, v65);
  v37 = v70;
  v38 = v71;
  v39 = sub_10000CF78(&v69, v70);
  v64[3] = v37;
  v64[4] = *(v38 + 8);
  v40 = sub_10000DB7C(v64);
  (*(*(v37 - 8) + 16))(v40, v39, v37);

  v41 = v59;
  sub_1007672EC();
  sub_1003E7E60(&unk_100956540, &type metadata accessor for ProductCapabilityLayout, &protocol conformance descriptor for ProductCapabilityLayout);
  v42 = v62;
  sub_10076D2AC();
  v44 = v43;

  (*(v61 + 8))(v41, v42);
  (*(v31 + 8))(v33, v29);
  sub_10000CD74(v72);
  sub_10000CD74(&v69);
  return v44;
}

uint64_t sub_1003E7E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003E7EA8()
{
  v1 = v0;
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100940D70 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v2, qword_1009A1648);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v16) = sub_1007626AC();
  v20 = OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100940D78 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v2, qword_1009A1660);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v20) = sub_10050BDFC(v22, 0, 0, 1);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003E8288()
{
  v0 = sub_10076E1EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E21C();
  sub_10000DB18(v4, qword_10099F8A8);
  sub_10000A61C(v4, qword_10099F8A8);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = sub_10076D67C();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v7);
  sub_10076D66C();
  return sub_10076E1FC();
}

void sub_1003E83C0()
{
  v1 = v0;
  v2 = sub_10076E21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_1009403E0 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_10000A61C(v4, qword_10099F8A8);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = sub_100770EEC();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView(0);
    v14 = v14;
    v23 = v22;
    v24 = sub_100770EEC();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_1003E86BC()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099F8D8 = v0;
  unk_10099F8E0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099F8C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1003E8778(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_1000325F0();
  v18 = sub_100770D7C();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10073C780(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1000);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_1007626BC());
  *&v5[v20] = sub_1007626AC();
  v25 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = sub_10076BD9C();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_10073D75C();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = sub_100770D1C();
  [v43 setTextColor:v44];

  v45 = sub_100770D7C();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_1003E8DA4()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_1003E8EE4()
{
  v1 = v0;
  v67 = sub_10076E21C();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v73.receiver = v0;
  v73.super_class = v7;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView];
  sub_10076422C();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_10076422C();
  MinX = CGRectGetMinX(v74);
  sub_10076422C();
  MinY = CGRectGetMinY(v75);
  sub_10076422C();
  Width = CGRectGetWidth(v76);
  [v8 setFrame:{MinX, MinY, Width, v12}];
  if (qword_1009403E8 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_10099F8C0, v71);
  sub_10076422C();
  Height = CGRectGetHeight(v77);
  v78.origin.x = MinX;
  v78.origin.y = MinY;
  v78.size.width = Width;
  v78.size.height = v12;
  v17 = CGRectGetHeight(v78);
  v18 = v72;
  sub_10000CF78(v71, v72);
  sub_1000FF02C(v18);
  sub_10076D40C();
  v20 = v19;
  v21 = v4 + 8;
  v22 = *(v4 + 8);
  v70 = v21;
  v22(v6, v3);
  v23 = Height - (v17 + v20);
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  sub_10076422C();
  v69 = v24;
  [v24 sizeThatFits:{v25, v26}];
  v28 = v27;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v68 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if ((v29[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    v30 = v72;
    sub_10000CF78(v71, v72);
    sub_1000FF02C(v30);
    sub_10076D40C();
    v32 = v31;
    v22(v6, v3);
    v23 = v23 - (v28 + v32);
  }

  sub_10076422C();
  [v29 measurementsWithFitting:v1 in:{CGRectGetWidth(v79), v23}];
  v34 = v33;
  sub_10076422C();
  v35 = CGRectGetMinX(v80);
  v81.origin.x = MinX;
  v81.origin.y = MinY;
  v81.size.width = Width;
  v81.size.height = v12;
  MaxY = CGRectGetMaxY(v81);
  v37 = v72;
  sub_10000CF78(v71, v72);
  sub_1000FF02C(v37);
  sub_10076D40C();
  v39 = v38;
  v22(v6, v3);
  sub_10076422C();
  [v29 setFrame:{v35, MaxY + v39, CGRectGetWidth(v82), v34}];
  [v29 frame];
  v40 = CGRectGetMinX(v83);
  [v29 frame];
  v41 = CGRectGetMaxY(v84);
  v42 = v72;
  sub_10000CF78(v71, v72);
  sub_1000FF02C(v42);
  sub_10076D40C();
  v44 = v43;
  v22(v6, v3);
  sub_10076422C();
  v45 = CGRectGetWidth(v85);
  v46 = v69;
  [v69 setFrame:{v40, v41 + v44, v45, v28}];
  v47 = 1.0;
  if (v29[v68])
  {
    v47 = 0.0;
  }

  [v46 setAlpha:v47];
  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (v48)
  {
    v49 = v48;
    sub_10076422C();
    CGRectGetMinX(v86);
    [v1 bounds];
    CGRectGetMinY(v87);
    sub_10076422C();
    CGRectGetWidth(v88);
    [v1 bounds];
    CGRectGetHeight(v89);
    v50 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v51 = v66;
    v52 = &v49[v50];
    v53 = v65;
    v54 = v67;
    (*(v66 + 16))(v65, v52, v67);
    sub_10076E1CC();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    (*(v51 + 8))(v53, v54);
    [v49 setFrame:{v56, v58, v60, v62}];
  }

  return sub_10000CD74(v71);
}

id sub_1003E95B4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v7);

  v8 = sub_10076BD9C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_1003EAED8(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10073CEFC(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

double sub_1003E977C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-1] - v7;
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076BEDC();
  v11 = *(v10 - 8);
  *&result = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_10076BEEC();
    v15 = sub_10076BE9C();
    (*(v11 + 8))(v14, v10);
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v16 = sub_100763ADC();
    sub_10000A61C(v16, qword_10099DDA0);
    sub_1007639AC();
    sub_10076BFCC();
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v19 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v19 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v17 + v18) setContentMode:v15];
    sub_10076C01C();
    v20 = sub_10076BD9C();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v8, v3 + v21);
    swift_endAccess();
    sub_100760C4C();
    v22 = *(v17 + v18);
    sub_10075FD2C();
    v23 = v22;
    sub_100760BCC();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v25, &qword_100943310, &unk_100784150);
  }

  return result;
}

void sub_1003E9B4C(objc_class *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v7 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10076BD9C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_10003267C(a3, v15);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    v12 = v15;
  }

  else
  {
    v39 = a1;
    v38 = *(v17 + 32);
    v38(v21, v15, v16);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = v9;
      v24 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v25 = Strong;
      swift_beginAccess();
      sub_10003267C(v25 + v24, v12);

      if (v22(v12, 1, v16) != 1)
      {
        v33 = v40;
        v38(v40, v12, v16);
        sub_1003EAF88(&qword_100943198, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v34 = sub_10076FF1C();
        v35 = *(v17 + 8);
        v35(v33, v16);
        v35(v21, v16);
        v9 = v37;
        a1 = v39;
        if ((v34 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v17 + 8))(v21, v16);
      v9 = v37;
    }

    else
    {
      (*(v17 + 8))(v21, v16);
      (*(v17 + 56))(v12, 1, 1, v16);
    }

    a1 = v39;
  }

  sub_10000CFBC(v12, &qword_100943190, qword_100798490);
LABEL_9:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(*(v26 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);

    v42.is_nil = (v41 & 1) == 0;
    v42.value.super.isa = a1;
    sub_10075FC5C(v42, v29);
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    (*(v17 + 56))(v9, 1, 1, v16);
    v32 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v9, v31 + v32);
    swift_endAccess();
  }
}

double sub_1003E9FB0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v82 - v7;
  v85 = sub_10076443C();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v82 - v12;
  v13 = sub_100763ADC();
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v97 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10077164C();
  v89 = *(v94 - 8);
  *&v15 = __chkstk_darwin(v94).n128_u64[0];
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
  v90 = v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v87 = sub_10076FF9C();
    v91 = v22;
  }

  else
  {
    v87 = 0;
    v91 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v92 = v18;
  v86 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v34;
      v99.receiver = v37;
      v99.super_class = v36;
      v40 = objc_msgSendSuper2(&v99, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v41 = qword_1009678B0;
      v42 = [qword_1009678B0 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v88 = v41;
        v44 = qword_100941598;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_10076D3DC();
        v46 = sub_10000A61C(v45, qword_100967898);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10000CFBC(v8, &unk_100943250, &unk_1007841D0);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v98.receiver = v55;
        v98.super_class = v54;
        v57 = objc_msgSendSuper2(&v98, "init");
        [v88 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_1009403E8 != -1)
  {
    swift_once();
  }

  LODWORD(v88) = v19;
  v58 = qword_10099F8D8;
  sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
  v59 = v93;
  sub_1000FF02C(v58);
  sub_10076D40C();
  v60 = *(v89 + 8);
  v60(v59, v94);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v61 = v96;
  v62 = sub_10000A61C(v96, qword_10099DDA0);
  v63 = [v3 traitCollection];
  (*(v95 + 16))(v97, v62, v61);
  v64 = sub_100763A4C();
  if ((v66 & 1) == 0 && ((v64 | v65) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v67 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v67 = qword_100944CA0;
    }

    v68 = v85;
    v69 = sub_10000A61C(v85, v67);
    v70 = v83;
    (*(v9 + 16))(v83, v69, v68);
    v71 = v84;
    (*(v9 + 32))(v84, v70, v68);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v9 + 8))(v71, v68);
  }

  v72 = v97;
  sub_10076398C();

  (*(v95 + 8))(v72, v96);
  if ((v91 == 0) | v88 & 1)
  {
    v73 = v92;
  }

  else
  {
    v74 = qword_10099F8D8;
    sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
    v75 = v93;
    sub_1000FF02C(v74);
    sub_10076D40C();
    v60(v75, v94);
    v73 = v92;
    if (qword_100940B58 != -1)
    {
      swift_once();
    }

    v76 = sub_10076D3DC();
    sub_10000A61C(v76, qword_1009A1000);
    v77 = sub_10076C04C();
    v100[3] = v77;
    v100[4] = sub_1003EAF88(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v78 = sub_10000DB7C(v100);
    (*(*(v77 - 8) + 104))(v78, enum case for Feature.measurement_with_labelplaceholder(_:), v77);
    sub_10076C90C();
    sub_10000CD74(v100);
    sub_10076991C();
  }

  if (v90)
  {
    if (qword_1009403E0 != -1)
    {
      swift_once();
    }

    v79 = sub_10076E21C();
    sub_10000A61C(v79, qword_10099F8A8);
    sub_100770AFC();
    v31 = v80;
  }

  return v31;
}

id sub_1003EAB5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009565A8;
  if (!qword_1009565A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003EAC68(uint64_t a1)
{
  sub_1003EAD20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003EAD20(uint64_t a1)
{
  if (!qword_100954DD0)
  {
    sub_10076BD9C();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100954DD0);
    }
  }
}

double sub_1003EAD98()
{
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100763ADC();
  sub_10000A61C(v0, qword_10099DDA0);
  sub_1007639AC();
  return result;
}

void sub_1003EAE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

uint64_t sub_1003EAE80(uint64_t a1)
{
  result = sub_1003EAF88(&qword_1009565B8, type metadata accessor for UpdatesLockupCollectionViewCell, &unk_1007A1B50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003EAED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943190, qword_100798490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EAF48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003EAF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003EAFD0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_1000325F0();
  v10 = sub_100770D7C();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10073C780(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100940B58 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1000);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v12) = sub_1007626AC();
  v17 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = sub_10076BD9C();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  sub_10077156C();
  __break(1u);
}

void sub_1003EB2F8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_1000735EC() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10099CC20]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003EB560(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10099CC28];
        if (v13)
        {
          v14 = *&v6[qword_10099CC20];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007706CC(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10099CC20];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1003EB560(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706CC();

  if (v5)
  {
    if (a1)
    {
      sub_1000325F0();
      v6 = sub_100770E1C();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

double sub_1003EB74C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8);
  *v3 = a1;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_10077167C() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_1003EB8BC();
LABEL_11:

  return result;
}

void sub_1003EB7CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  a1 = a1;
  v4 = v7;
  v5 = sub_100770EEC();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_1003EB8BC();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

id sub_1003EB8BC()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8])
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] == 1)
    {

      v1 = sub_1003EBAFC();
      v2 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v1];

      v3 = objc_allocWithZone(NSMutableAttributedString);
      v4 = sub_10076FF6C();

      v5 = [v3 initWithString:v4];

      v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor];
      if (v6)
      {
        v7 = v6;
        [v5 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v5, "length")}];
      }

      [v2 appendAttributedString:v5];
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel] setAttributedText:v2];
    }

    else
    {
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];

      [v13 setAttributedText:0];
      v14 = sub_10076FF6C();

      [v13 setText:v14];

      [v13 setTextColor:*&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor]];
    }

    v10 = "setNeedsLayout";
    v11 = v0;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
    [v9 setAttributedText:0];
    v10 = "setText:";
    v11 = v9;
    v8 = 0;
  }

  return [v11 v10];
}

id sub_1003EBAFC()
{
  v1 = sub_10077164C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  v6 = sub_1005A5DB8(0xD000000000000014, 0x80000001007E3E90, 0);
  if (qword_1009403F0 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  sub_10000A61C(v7, qword_1009565C0);
  sub_10076D17C();
  sub_10076D40C();
  v9 = v8;
  v10 = *(v2 + 8);
  v30 = v1;
  v10(v4, v1);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  sub_10000A61C(v11, qword_1009A0CE8);
  v12 = [v0 traitCollection];
  v13 = sub_100770B3C();

  v29 = v13;
  [v13 capHeight];
  v15 = floor((v14 - v9) * 0.5);
  v16 = [objc_allocWithZone(NSTextAttachment) init];
  v17 = [objc_opt_self() systemYellowColor];
  v18 = [v6 imageWithTintColor:v17];
  v28 = v6;
  v19 = v18;

  [v16 setImage:v19];
  [v16 setBounds:{0.0, v15, v9, v9}];
  sub_100016F40(0, &unk_10094E7F0, NSMutableAttributedString_ptr);
  v20 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v16];
  [v5 appendAttributedString:v20];
  if (qword_1009403F8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v7, qword_1009565D8);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v10(v4, v30);
  v23 = [objc_allocWithZone(NSTextAttachment) init];
  [v23 setBounds:{0.0, 0.0, v22, 0.0}];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setImage:v24];

  v25 = [objc_opt_self() attributedStringWithAttachment:v23];
  [v5 appendAttributedString:v25];

  return v5;
}

id sub_1003EBF74(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1003EB734(v20);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {
    [result setHidden:{1, v10}];
    result = *(v2 + v13);
    if (result)
    {

      return [result setText:0];
    }
  }

  return result;
}

void sub_1003EC234()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1003EB740(v15);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t sub_1003EC4FC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A0CE8);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

void sub_1003EC6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_10075ECDC();
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = v3 & 1;
    if ((v3 & 1) != v4)
    {
      sub_1003EB8BC();
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v1;
    v6[4] = v2;
    swift_unknownObjectRetain();

    sub_10075ECEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp);
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = 0;
    if (v7 == 1)
    {

      sub_1003EB8BC();
    }
  }
}

void sub_1003EC86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getObjectType();
    v7 = sub_10075ECDC();
    v8 = v6[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp];
    v6[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] = v7 & 1;
    if ((v7 & 1) != v8)
    {
      sub_1003EB8BC();
    }
  }
}

char *sub_1003EC900(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v74 = sub_10076F9AC();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076771C();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  sub_10075FD2C();
  *&v4[v17] = sub_10075FB3C();
  v18 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  if (qword_100940AA8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A0E08);
  v21 = *(v19 - 8);
  v22 = v21 + 16;
  v79 = *(v21 + 16);
  v79(v16, v20, v19);
  v24 = *(v21 + 56);
  v23 = v21 + 56;
  v77 = v24;
  v24(v16, 0, 1, v19);
  v25 = *(v11 + 104);
  v75 = v11 + 104;
  v76 = enum case for DirectionalTextAlignment.none(_:);
  v25(v13);
  v26 = sub_1007626BC();
  v27 = objc_allocWithZone(v26);
  *&v4[v18] = sub_1007626AC();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel] = 0;
  v28 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v19, qword_1009A0CE8);
  v79(v16, v29, v19);
  v77(v16, 0, 1, v19);
  (v25)(v13, v76, v78);
  v30 = objc_allocWithZone(v26);
  *&v4[v28] = sub_1007626AC();
  v70 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  v31 = v13;
  v71 = v25;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v19, qword_1009A0D48);
  v79(v16, v69, v19);
  v32 = v77;
  v77(v16, 0, 1, v19);
  v33 = v76;
  v67[1] = v23;
  v34 = v78;
  v67[0] = v22;
  v35 = v71;
  (v71)(v31, v76, v78);
  v36 = objc_allocWithZone(v26);
  v68 = v26;
  *&v4[v70] = sub_1007626AC();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel] = 0;
  v37 = v34;
  v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  v79(v16, v69, v19);
  v32(v16, 0, 1, v19);
  v35(v31, v33, v37);
  v39 = objc_allocWithZone(v68);
  *&v5[v38] = sub_1007626AC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v40] = sub_1001E89B8(0);
  v42 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter];
  *v42 = 0u;
  v42[1] = 0u;
  v43 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *&v5[v44] = sub_100770CFC();
  v45 = &v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine];
  *v45 = 0;
  v45[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp] = 0;
  v46 = type metadata accessor for BaseLockupView();
  v82.receiver = v5;
  v82.super_class = v46;
  v47 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v51 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v52 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  [v51 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView]];
  v53 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  v54 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel];
  sub_10076266C();

  [v51 addSubview:*&v51[v53]];
  v55 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  v56 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  sub_10076266C();

  [v51 addSubview:*&v51[v55]];
  v57 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *&v51[v57];
  sub_10076266C();

  [v51 addSubview:*&v51[v57]];
  v61 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  v62 = *&v51[v61];
  sub_10076266C();

  [*&v51[v61] setText:0];
  [*&v51[v61] setHidden:1];
  [v51 addSubview:*&v51[v61]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton]];
  v63 = *&v51[v52];
  memset(v81, 0, sizeof(v81));
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v72;
  sub_10076F95C();
  sub_1000258C0(v80);
  sub_1000258C0(v81);
  sub_100770B9C();

  (*(v73 + 8))(v65, v74);
  return v51;
}

id sub_1003ED1F0(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v1;
    sub_10075ED0C();

    swift_unknownObjectRelease();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseLockupView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1003ED3A4(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for BaseLockupView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) == 1)
    {
      sub_1003EB8BC();
    }

    return result;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return result;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1003ED5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003ED624()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003ED670()
{
  v49 = sub_10076771C();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  sub_10075FD2C();
  *(v0 + v7) = sub_10075FB3C();
  v8 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel;
  if (qword_100940AA8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A0E08);
  v11 = *(v9 - 8);
  v12 = v11 + 16;
  v50 = *(v11 + 16);
  v50(v6, v10, v9);
  v15 = *(v11 + 56);
  v13 = v11 + 56;
  v14 = v15;
  v15(v6, 0, 1, v9);
  v16 = *(v1 + 104);
  v45 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1 + 104;
  v44 = v16;
  (v16)(v3);
  v48 = sub_1007626BC();
  v17 = objc_allocWithZone(v48);
  *(v0 + v8) = sub_1007626AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel) = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v9, qword_1009A0CE8);
  v20 = v12;
  v50(v6, v19, v9);
  v46 = v13;
  v42 = v14;
  v14(v6, 0, 1, v9);
  v44(v3, v45, v49);
  v21 = objc_allocWithZone(v48);
  v22 = v3;
  v23 = sub_1007626AC();
  v43 = v0;
  *(v0 + v18) = v23;
  v41 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v40[0] = sub_10000A61C(v9, qword_1009A0D48);
  v40[1] = v20;
  v50(v6, v40[0], v9);
  v24 = v42;
  v42(v6, 0, 1, v9);
  v25 = v45;
  v26 = v49;
  v27 = v44;
  v44(v22, v45, v49);
  v28 = objc_allocWithZone(v48);
  v29 = sub_1007626AC();
  v30 = v43;
  *(v43 + v41) = v29;
  *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel) = 0;
  v31 = v26;
  v32 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  v50(v6, v40[0], v9);
  v24(v6, 0, 1, v9);
  v27(v22, v25, v31);
  v33 = objc_allocWithZone(v48);
  *(v30 + v32) = sub_1007626AC();
  v34 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v30 + v34) = sub_1001E89B8(0);
  v36 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *(v30 + v38) = sub_100770CFC();
  v39 = (v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_stateMachine);
  *v39 = 0;
  v39[1] = 0;
  *(v30 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_isBetaApp) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1003EDC00()
{
  result = [objc_opt_self() systemGray6Color];
  qword_10099F8F0 = result;
  return result;
}

void sub_1003EDC3C()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_10099F8F8 = v1;
}

id sub_1003EDCA8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_100940400;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_10099F8F0];
  v13 = [v12 layer];
  if (qword_100940408 != -1)
  {
    swift_once();
  }

  v14 = [qword_10099F8F8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1003EDF20(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_100940408 != -1)
    {
      swift_once();
    }

    v7 = [qword_10099F8F8 CGColor];
    [v6 setBorderColor:v7];
  }
}

double sub_1003EE138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

double sub_1003EE1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_10076FDAC();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10000A570(v26, v34);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_10076FDBC();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_1003EE4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003EE574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = a6;
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  sub_10000A570(a1, v27);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076092C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    v19 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_100595060(v19);

    v20 = v26;
    v21 = [v26 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_100594F54(v23, v24);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1003EE808(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10000A570(a1, v21);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100761D1C();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1001A69F8(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1003EEA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10000A570(a1, v73);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B90C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v64 = v21;
  sub_10076F87C();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v28 = sub_10077124C();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_10076B8BC();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v35 = sub_100770CFC();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_10045B094(v36);
  v38 = type metadata accessor for Accessory(0);
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_100292808(v40, v67);
  sub_10000CFBC(v40, &qword_10094BB50, &qword_1007851D0);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (sub_10076660C(), v45 = sub_10077124C(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_10076B8FC();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1002907D4();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_10076660C();
  v58 = sub_10077124C();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_1003EF0D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_10076664C();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076D1AC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_10076E1EC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076E21C();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10000A570(a1, v95);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076BC0C();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_10076FCFC();
    v75 = v33;
    sub_10076F87C();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_10076D9AC();
    v97 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_10000DB7C(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_10076D9BC();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_10076E1FC();
    v39 = v90;
    sub_1007665FC();
    sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_10077124C();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000A912C(v44, &v46[v45], &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_1002A66D8();
      sub_10000CFBC(v44, &unk_1009467C0, &unk_100787A10);
      v47 = v90;
      sub_10076660C();
      v48 = v91;
      LOBYTE(v45) = sub_10077124C();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_10076E1AC();
        sub_10000CF78(v95, v96);
        sub_10076D41C();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_10000CD74(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000A912C(v52, &v46[v54], &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_1002A66D8();
      sub_10000CFBC(v52, &unk_1009467C0, &unk_100787A10);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_1007665DC();
      v57 = v91;
      v58 = sub_10077124C();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_10075F78C();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_1007628DC();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_10076C54C();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_1004D0A60(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10000CFBC(v72, &unk_100949290, &unk_10078BBF0);
    v62[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v62 setNeedsLayout];
    sub_10000CFBC(v70, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v68, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v66, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v64, &unk_100946760, &unk_100787A20);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}