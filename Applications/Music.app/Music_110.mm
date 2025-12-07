uint64_t static SymbolButton.Background.clear.getter()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_10121BAF8;
  v1 = qword_10121BAF8;

  return v0;
}

void static SymbolButton.Background.clear.setter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_10121BAF8;
  static SymbolButton.Background.clear = *&a4;
  qword_10121BAF8 = a1;
  qword_10121BB00 = a2;
  qword_10121BB08 = a3;
}

uint64_t (*static SymbolButton.Background.clear.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

void SymbolButton.Material.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL sub_100BEB140(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

void SyncedLyricsViewController.BottomViewMetadata.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *SymbolButton.CustomView.tint.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *static SymbolButton.CustomView.with(_:configurator:)@<X0>(void *result@<X0>, uint64_t (*a2)(void **)@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v11 = result;
    v5 = *&UIEdgeInsetsZero.bottom;
    v12 = *&UIEdgeInsetsZero.top;
    v13 = v5;
    v14 = 0x3FF0000000000000uLL;
    v6 = result;
    result = a2(&v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  return result;
}

uint64_t sub_100BEB26C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static SymbolButton.Badge.with(_:)(void (*a1)(__int128 *))
{
  v2 = xmmword_100EFDCB0;
  v3 = 0;
  a1(&v2);
  return v3;
}

Swift::Void __swiftcall SymbolButton.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UIView.Corner.Radius();
  v139 = *(v140 - 8);
  __chkstk_darwin();
  v138 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v137 - v9;
  __chkstk_darwin();
  v12 = &v137 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v150.receiver = v0;
  v150.super_class = v13;
  objc_msgSendSuper2(&v150, "layoutSubviews");
  v14 = *&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView] bounds];
  [v14 setFrame:?];
  v15 = [v14 contentView];
  [v15 bounds];
  v17 = v16;

  sub_100BEEC4C(v12);
  v18 = *&v12[v6[12] + 16];
  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 contentHorizontalAlignment];
  v141 = v2;
  v149 = v17;
  if ([v1 contentVerticalAlignment] == 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  CGRect.inset(by:for:)();
  v144 = v20;
  v22 = v21;
  v146 = v23;
  v147 = v24;
  sub_100BF7180(v12, type metadata accessor for SymbolButton.Metrics);
  sub_100BEEC4C(v10);
  v25 = *&v10[v6[8]];
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
  v26 = sub_100BEDC00();
  sub_100BEEC4C(v8);
  v27 = &v8[v6[11]];
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = v27[16];
  sub_100BF7180(v8, type metadata accessor for SymbolButton.Metrics);
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28;
  }

  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v26 sizeThatFits:{v31, v32}];
  v149 = v33;
  v35 = v34;

  v36 = &v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration];
  swift_beginAccess();
  if (!*(v36 + 128) || (*(v36 + 184) & 1) != 0)
  {
    v43 = sub_100BEDD78();
    [v43 frame];
    v45 = v47;
    v143 = v48;
  }

  else
  {
    v37 = v144;
    v157.origin.x = v144;
    v157.origin.y = v22;
    v38 = v146;
    v157.size.width = v146;
    v39 = v147;
    v157.size.height = v147;
    Width = CGRectGetWidth(v157);
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = v149;
    v158.size.height = v35;
    v41 = Width - (v25 + CGRectGetWidth(v158));
    v159.origin.x = v37;
    v159.origin.y = v22;
    v159.size.width = v38;
    v159.size.height = v39;
    Height = CGRectGetHeight(v159);
    v43 = sub_100BEDD78();
    [v43 sizeThatFits:{v41, Height}];
    v45 = v44;
    v143 = v46;
  }

  v49 = &selRef_objectAtIndexedSubscript_;
  v50 = &selRef_compoundStringWithElements_;
  v142 = v25;
  v145 = v45;
  if (*(v36 + 8))
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v51 = v149;
    v160.size.width = v149;
    v160.size.height = v35;
    v52 = CGRectGetWidth(v160) + 0.0;
    v161.origin.x = 0.0;
    v161.origin.y = 0.0;
    v161.size.height = 0.0;
    v161.size.width = v52;
    v53 = CGRectGetHeight(v161);
    v162.origin.x = 0.0;
    v162.origin.y = 0.0;
    v162.size.width = v51;
    v162.size.height = v35;
    v54 = CGRectGetHeight(v162);
    if (v53 <= v54)
    {
      v53 = v54;
    }
  }

  else
  {
    v52 = 0.0;
    v53 = 0.0;
  }

  v55 = v144;
  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v163.origin.x = 0.0;
      v163.origin.y = 0.0;
      v56 = v145;
      v163.size.width = v145;
      v57 = v143;
      v163.size.height = v143;
      v52 = v52 + CGRectGetWidth(v163);
      v164.origin.x = 0.0;
      v164.origin.y = 0.0;
      v164.size.width = v52;
      v164.size.height = v53;
      v53 = CGRectGetHeight(v164);
      v165.origin.x = 0.0;
      v165.origin.y = 0.0;
      v165.size.width = v56;
      v165.size.height = v57;
      v58 = CGRectGetHeight(v165);
      if (v53 <= v58)
      {
        v53 = v58;
      }
    }
  }

  v59 = *(v36 + 8);
  v148 = v35;
  if (v59 && *(v36 + 128) && !*(v36 + 184))
  {
    v52 = v142 + v52;
  }

  v60 = [v1 contentHorizontalAlignment];
  MinY = 0.0;
  MinX = 0.0;
  if (v60 <= 5)
  {
    if (((1 << v60) & 9) != 0)
    {
      v166.origin.x = v55;
      v166.origin.y = v22;
      v166.size.width = v146;
      v166.size.height = v147;
      CGRectGetMidX(v166);
      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v52;
      v167.size.height = v53;
      CGRectGetWidth(v167);
      v67 = [v1 traitCollection];
      [v67 displayScale];

      CGFloat.roundValue(scale:)();
      MinX = v68;
    }

    else
    {
      v63 = v55;
      v64 = v22;
      v65 = v146;
      v66 = v147;
      if (((1 << v60) & 0x12) != 0)
      {
        MinX = CGRectGetMinX(*&v63);
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v63);
        v168.origin.x = 0.0;
        v168.origin.y = 0.0;
        v168.size.width = v52;
        v168.size.height = v53;
        MinX = MaxX - CGRectGetWidth(v168);
      }
    }
  }

  v70 = [v1 contentVerticalAlignment];
  if (v70 > 1)
  {
    if (v70 == 2)
    {
      v174.origin.x = v55;
      v174.origin.y = v22;
      v174.size.width = v146;
      v174.size.height = v147;
      MaxY = CGRectGetMaxY(v174);
      v175.origin.y = 0.0;
      v175.origin.x = MinX;
      v175.size.width = v52;
      v175.size.height = v53;
      MinY = MaxY - CGRectGetHeight(v175);
    }

    else if (v70 == 3)
    {
      v170.origin.x = v55;
      v170.origin.y = v22;
      v71 = v146;
      v170.size.width = v146;
      v72 = v147;
      v170.size.height = v147;
      MinY = CGRectGetMinY(v170);
      v171.origin.x = v55;
      v171.origin.y = v22;
      v171.size.width = v71;
      v171.size.height = v72;
      v53 = CGRectGetHeight(v171);
    }
  }

  else if (v70)
  {
    if (v70 == 1)
    {
      v169.origin.x = v55;
      v169.origin.y = v22;
      v169.size.width = v146;
      v169.size.height = v147;
      MinY = CGRectGetMinY(v169);
    }
  }

  else
  {
    v172.origin.x = v55;
    v172.origin.y = v22;
    v172.size.width = v146;
    v172.size.height = v147;
    CGRectGetMidY(v172);
    v173.origin.y = 0.0;
    v173.origin.x = MinX;
    v173.size.width = v52;
    v173.size.height = v53;
    CGRectGetHeight(v173);
    v73 = [v1 traitCollection];
    [v73 displayScale];

    CGFloat.roundValue(scale:)();
    MinY = v74;
  }

  v76 = MinX;
  if (*(v36 + 8))
  {
    v176.origin.x = MinX;
    v176.origin.y = MinY;
    v176.size.width = v149;
    v176.size.height = v148;
    v76 = v142 + CGRectGetMaxX(v176);
  }

  v77 = [v1 contentVerticalAlignment];
  if (v77 == 3)
  {
    v181.origin.x = MinX;
    v181.origin.y = MinY;
    v181.size.width = v52;
    v181.size.height = v53;
    v148 = CGRectGetHeight(v181);
    v182.origin.x = MinX;
    v182.origin.y = MinY;
    v182.size.width = v52;
    v182.size.height = v53;
    v82 = CGRectGetHeight(v182);
    v80 = MinY;
    v81 = v145;
  }

  else if (v77)
  {
    v80 = MinY;
    v81 = v145;
    v82 = v143;
  }

  else
  {
    v177.origin.x = MinX;
    v177.origin.y = MinY;
    v177.size.width = v52;
    v177.size.height = v53;
    CGRectGetMidY(v177);
    v178.origin.x = MinX;
    v178.origin.y = MinY;
    v178.size.width = v149;
    v178.size.height = v148;
    CGRectGetHeight(v178);
    v78 = [v1 traitCollection];
    [v78 displayScale];

    CGFloat.roundValue(scale:)();
    v80 = v79;
    v179.origin.x = MinX;
    v179.origin.y = MinY;
    v179.size.width = v52;
    v179.size.height = v53;
    CGRectGetMidY(v179);
    v180.origin.x = v76;
    v180.origin.y = MinY;
    v81 = v145;
    v180.size.width = v145;
    v82 = v143;
    v180.size.height = v143;
    CGRectGetHeight(v180);
    v50 = &selRef_compoundStringWithElements_;
    v83 = [v1 traitCollection];
    [v83 displayScale];

    CGFloat.roundValue(scale:)();
    MinY = v84;
  }

  v85 = sub_100BEDD78();
  if ([v1 v50[461]] == 4 || objc_msgSend(v1, v50[461]) == 5)
  {
    v154 = 0u;
    v155 = 0u;
    v156 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v76 = v86;
    MinY = v87;
    v81 = v88;
    v82 = v89;
  }

  [v85 setFrame:{v76, MinY, v81, v82}];

  if (*(v36 + 128))
  {
    if ((*(v36 + 184) & 1) == 0)
    {
      v90 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] image];
      if (v90)
      {
        v91 = v90;
        sub_100BEEC4C(v10);
        v92 = *&v10[v6[7]];
        sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
        v93 = [v91 imageByApplyingSymbolConfiguration:v92];

        if (v93)
        {
          UIImage.baselineOffsetFromBottom.getter();
          v49 = &selRef_objectAtIndexedSubscript_;
          if ((v94 & 1) == 0)
          {
            v95 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
            [*&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] frame];
            CGRectGetMinY(v183);
            [*&v1[v95] _firstLineBaseline];
            v184.origin.x = MinX;
            v184.origin.y = v80;
            v184.size.width = v149;
            v184.size.height = v148;
            CGRectGetHeight(v184);
          }
        }

        else
        {
          v49 = &selRef_objectAtIndexedSubscript_;
        }

        v50 = &selRef_compoundStringWithElements_;
      }
    }
  }

  sub_100BEEC4C(v10);
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
  CGRect.offset(by:)();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
  if ([v1 v50[461]] == 4 || objc_msgSend(v1, v50[461]) == 5)
  {
    v151 = 0u;
    v152 = 0u;
    v153 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
  }

  else
  {
    v105 = v97;
    v106 = v99;
    v107 = v101;
    v108 = v103;
  }

  v109 = v141;
  [v104 v49[252]];

  sub_100BEE064();
  v110 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (v110)
  {
    v111 = v110;
    v112 = [v1 traitCollection];
    v113 = [v112 userInterfaceIdiom];

    v114 = v113 == 6;
    v49 = &selRef_objectAtIndexedSubscript_;
    if (v114)
    {
      v115 = 12.0;
    }

    else
    {
      v115 = 8.0;
    }

    [v1 bounds];
    v116 = CGRectGetMaxX(v185);
    v186.origin.x = 0.0;
    v186.origin.y = 0.0;
    v186.size.width = v115;
    v186.size.height = v115;
    v117 = v116 - CGRectGetWidth(v186) + 1.0;
    [v1 bounds];
    [v111 setFrame:{v117, CGRectGetMinY(v187) + -1.0, v115, v115}];
  }

  v118 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v119 = [v14 contentView];
  [v119 bounds];
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;

  [v118 v49[252]];
  sub_100BF8F8C(v36, v4, type metadata accessor for SymbolButton.Configuration);
  v128 = *(v109 + 36);
  v129 = type metadata accessor for UIView.Corner();
  if ((*(*(v129 - 8) + 48))(&v4[v128], 1, v129))
  {
    v130 = type metadata accessor for SymbolButton.Configuration;
    v131 = v4;
  }

  else
  {
    v132 = v138;
    UIView.Corner.radius.getter();
    sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
    v133 = v139;
    v134 = v140;
    v135 = (*(v139 + 88))(v132, v140);
    v136 = enum case for UIView.Corner.Radius.rounded(_:);
    (*(v133 + 8))(v132, v134);
    if (v135 != v136)
    {
      return;
    }

    sub_100BEEC4C(v10);
    sub_100BF0094(v10);
    v130 = type metadata accessor for SymbolButton.Metrics;
    v131 = v10;
  }

  sub_100BF7180(v131, v130);
}

Swift::Void __swiftcall SymbolButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = type metadata accessor for SymbolButton(0);
  v17.receiver = v1;
  v17.super_class = v13;
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", isa);
  (*(v6 + 56))(v12, 1, 1, v5);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v12, 0, 0, 0, 1);
  sub_1000095E8(v12, &qword_1011B6D30, &unk_100F07CB0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v1 + v14, v10, type metadata accessor for SymbolButton.Configuration);
  v15 = [v1 traitCollection];
  sub_100BEEC4C(v4);
  sub_100BF7180(v4, type metadata accessor for SymbolButton.Metrics);
  sub_100BF8F8C(v10, v8, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v8, v15, v4);
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Configuration);
  sub_100BEEEF4(v4);
}

double SymbolButton.intrinsicContentSize.getter()
{
  v1 = type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v32 - v4;
  __chkstk_darwin();
  v7 = &v32 - v6;
  __chkstk_darwin();
  v9 = &v32 - v8;
  sub_100BEEC4C(&v32 - v8);
  sub_100BF7180(v9, type metadata accessor for SymbolButton.Metrics);
  NSDirectionalEdgeInsets.horizontal.getter();
  v11 = v10;
  sub_100BEEC4C(v9);
  sub_100BF7180(v9, type metadata accessor for SymbolButton.Metrics);
  NSDirectionalEdgeInsets.vertical.getter();
  v12 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  if (!*(v12 + 8))
  {
    v20 = 0.0;
    if (!*(v12 + 128))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_100BEEC4C(v7);
  v13 = &v7[v1[11]];
  v14 = *v13;
  v15 = v13[16];
  sub_100BF7180(v7, type metadata accessor for SymbolButton.Metrics);
  v16 = sub_100BEDC00();
  [v16 intrinsicContentSize];
  v18 = v17;

  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (v15)
  {
    v19 = v18;
  }

  v20 = v19 + 0.0;
  if (*(v12 + 128))
  {
LABEL_10:
    if ((*(v12 + 184) & 1) == 0)
    {
      v21 = sub_100BEDD78();
      [v21 intrinsicContentSize];
      v23 = v22;

      v20 = v20 + v23;
    }
  }

LABEL_12:
  if (*(v12 + 8) && *(v12 + 128) && (*(v12 + 184) & 1) == 0)
  {
    sub_100BEEC4C(v9);
    v24 = *&v9[v1[8]];
    sub_100BF7180(v9, type metadata accessor for SymbolButton.Metrics);
    v20 = v20 + v24;
  }

  v25 = *(v12 + *(type metadata accessor for SymbolButton.Configuration(0) + 40));
  if (v25)
  {
    [v25 intrinsicContentSize];
    if (v26 > v20)
    {
      v20 = v26;
    }
  }

  v27 = v11 + 0.0;
  sub_100BEEC4C(v5);
  v28 = *&v5[v1[10]];
  sub_100BF7180(v5, type metadata accessor for SymbolButton.Metrics);
  if (v20 > v28)
  {
    v29 = v20;
  }

  else
  {
    v29 = v28;
  }

  v30 = v27 + v29;
  sub_100BEEC4C(v3);
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Metrics);
  return v30;
}

Swift::Void __swiftcall SymbolButton.tintColorDidChange()()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for SymbolButton(0);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v0 + v4, v2, type metadata accessor for SymbolButton.Configuration);
  sub_100BEF154(v2);
  sub_100BF7180(v2, type metadata accessor for SymbolButton.Configuration);
}

double SymbolButton.hitRectMinimumSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize;
  swift_beginAccess();
  return *v1;
}

void SymbolButton.hitRectMinimumSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double SymbolButton.hitRect()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v15, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize];
  swift_beginAccess();
  v10 = *v9;
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  if (Width > v10)
  {
    v10 = Width;
  }

  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetHeight(v17);
  CGRect.center.getter();
  v13 = v12 - v10 * 0.5;
  CGRect.center.getter();
  return v13;
}

id SymbolButton.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for SymbolButton(0);
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_100BED030(v4);
}

id sub_100BED030(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &aBlock - v5;
  result = [v2 isHighlighted];
  if (result != v3)
  {
    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 6)
    {
      v10 = objc_opt_self();
      if ([v10 areAnimationsEnabled])
      {
        if ([v2 isHighlighted])
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v2;
          v28 = sub_100BF8F5C;
          v29 = v11;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_10002BC98;
          v27 = &unk_1010E8960;
          v12 = _Block_copy(&aBlock);
          v13 = v2;

          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          v28 = sub_100BF8F84;
          v29 = v14;
          aBlock = _NSConcreteStackBlock;
          v25 = 1107296256;
          v26 = sub_1005C3688;
          v27 = &unk_1010E89B0;
          v15 = _Block_copy(&aBlock);
          v16 = v13;

          [v10 animateWithDuration:0x20000 delay:v12 options:v15 animations:0.1 completion:0.0];
          _Block_release(v15);
          _Block_release(v12);
        }

        else
        {
          sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
          sub_100009F78(0, &qword_1011B7C38, UISpringTimingParameters_ptr);
          v17 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
          v18 = swift_allocObject();
          *(v18 + 16) = v2;
          v19 = v2;
          static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v17, 0, sub_100BF8F3C, v18, 0, 0, 0.0);
        }
      }
    }

    v20 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = [objc_opt_self() areAnimationsEnabled];
    if (v21)
    {
      v22 = 0x3FD0000000000000;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 3075;
    }

    else
    {
      v23 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, v22, 0, v23, v21 ^ 1);
    return sub_1000095E8(v6, &qword_1011B6D30, &unk_100F07CB0);
  }

  return result;
}

id sub_100BED3DC(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_100BED43C(int a1, id a2)
{
  if ([a2 showsMenuAsPrimaryAction] && objc_msgSend(a2, "isContextMenuInteractionEnabled"))
  {
    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    sub_100009F78(0, &qword_1011B7C38, UISpringTimingParameters_ptr);
    v5 = UISpringTimingParameters.init(dampingRatio:response:)(0.7, 0.4);
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v5, 0, sub_100BF94A4, v3, 0, 0, 0.0);
  }
}

id sub_100BED58C(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = (a3)(0, a2);
  return objc_msgSendSuper2(&v6, *a4);
}

id sub_100BED5E0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v4, *a1);
}

id sub_100BED71C(char a1, SEL *a2, SEL *a3)
{
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = type metadata accessor for SymbolButton(0);
  v17.receiver = v3;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, *a2);
  v16.receiver = v3;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a3, a1 & 1);
  result = [v3 *a2];
  if (v10 != result)
  {
    v12 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = [objc_opt_self() areAnimationsEnabled];
    if (v13)
    {
      v14 = 0x3FD0000000000000;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = 3075;
    }

    else
    {
      v15 = 0;
    }

    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v8, v14, 0, v15, v13 ^ 1);
    return sub_1000095E8(v8, &qword_1011B6D30, &unk_100F07CB0);
  }

  return result;
}

Swift::Void __swiftcall SymbolButton.setEnabled(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEnabled:_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100BF71E0;
    *(v6 + 24) = v5;
    v10[4] = sub_1001D3174;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100029B9C;
    v10[3] = &unk_1010E8100;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_100BEDA54(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_100BEDADC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_100BEDC00()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v18[4] = *(v5 + 64);
    v18[5] = v6;
    v18[6] = *(v5 + 96);
    v19 = *(v5 + 112);
    v7 = *(v5 + 16);
    v18[0] = *v5;
    v18[1] = v7;
    v8 = *(v5 + 48);
    v18[2] = *(v5 + 32);
    v18[3] = v8;
    v9 = type metadata accessor for SymbolButton.ImageView();
    v10 = objc_allocWithZone(v9);
    sub_100BF7028(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v11 setContentMode:4];
    sub_100BF16F8(v18);
    sub_100BCF5C0(v18);

    v12 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v11 isDescendantOfView:v12] & 1) == 0)
    {
      [v12 addSubview:v11];
    }

    v13 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_100BEDD78()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v6 = *(v5 + 136);
    v7 = *(v5 + 168);
    v15[2] = *(v5 + 152);
    v15[3] = v7;
    v15[4] = *(v5 + 184);
    v15[0] = *(v5 + 120);
    v15[1] = v6;
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_100BF7098(v15, v14);
    v9 = sub_100BF193C(v15);
    v10 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
    if (([v9 isDescendantOfView:v10] & 1) == 0)
    {
      [v10 addSubview:v9];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100BEDE80(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperview];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for SymbolButton.BadgeView();
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
  v17 = v5;
  [v8 insertSubview:? aboveSubview:?];
  v9 = *&v2[v4];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      v13 = 12.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v2 bounds];
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = v13;
    v20.size.height = v13;
    v15 = MaxX - CGRectGetWidth(v20) + 1.0;
    [v2 bounds];
    [v10 setFrame:{v15, CGRectGetMinY(v21) + -1.0, v13, v13}];

    v16 = v10;
  }

  else
  {
    v16 = v17;
  }
}

void sub_100BEE064()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
    v6 = v4;
    v7 = [v5 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(v0 + v16, v3, type metadata accessor for SymbolButton.Configuration);
    v17 = &v3[*(v1 + 40)];
    if (*v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = &UIEdgeInsetsZero;
    }

    if (*v17)
    {
      p_left = (v17 + 16);
    }

    else
    {
      p_left = &UIEdgeInsetsZero.left;
    }

    v20 = *p_left;
    top = v18->top;
    sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
    [v6 setFrame:{sub_100058728(v9, v11, v13, v15, top, v20)}];
  }
}

id sub_100BEE248()
{
  result = [objc_opt_self() defaultMetrics];
  qword_1011B76B0 = result;
  return result;
}

void sub_100BEE284(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v73 = &v72 - v6;
  v7 = type metadata accessor for SymbolButton.Metrics(0);
  v8 = v7[5];
  v9 = type metadata accessor for UIView.Corner();
  v10 = *(*(v9 - 8) + 56);
  v79 = v8;
  v10(&a3[v8], 1, 1, v9);
  v11 = &a3[v7[11]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v74 = v11;
  v11[16] = 1;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = (a1 + v12[16]);
  v75 = *v13;
  v78 = a2;
  if (v75 == 1)
  {
    v14 = [a2 preferredContentSizeCategory];
    v15 = *(v13 + 1);
    if (v15)
    {
      v16 = v15;
      v17 = static UIContentSizeCategory.>= infix(_:_:)();
      if (v17)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      if (v17)
      {
        v14 = v16;
      }
    }

    v19 = *(v13 + 2);
    if (v19)
    {
      v20 = v19;
      if (static UIContentSizeCategory.< infix(_:_:)())
      {

        goto LABEL_15;
      }
    }

    v20 = v14;
  }

  else
  {
    v20 = UIContentSizeCategoryLarge;
  }

LABEL_15:
  v21 = objc_opt_self();
  v77 = v20;
  v22 = [v21 traitCollectionWithPreferredContentSizeCategory:v20];
  *a3 = v22;
  v23 = objc_opt_self();
  v24 = *(a1 + 136);
  v72 = v22;
  v25 = v22;
  v26 = [v23 preferredFontDescriptorWithTextStyle:v24 compatibleWithTraitCollection:v25];
  v27 = objc_opt_self();
  v76 = v26;
  [v26 pointSize];
  *&a3[v7[6]] = [v27 systemFontOfSize:? weight:?];
  if (*(a1 + 40))
  {
    v28 = [v23 preferredFontDescriptorWithTextStyle:*(a1 + 24) compatibleWithTraitCollection:v25];
    [v28 pointSize];
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:v29];
  }

  else
  {
    v30 = [objc_opt_self() configurationWithPointSize:*(a1 + 48) weight:*(a1 + 56) scale:*(a1 + 32)];
  }

  *&a3[v7[7]] = v30;
  *&a3[v7[8]] = *(a1 + v12[12]);
  v31 = *(a1 + 80);
  v32 = v78;
  if (v31 == 255)
  {
    *&a3[v7[9]] = UIOffsetZero;
    if (v75)
    {
      goto LABEL_23;
    }

LABEL_29:

    v64 = (a1 + v12[15]);
    v65 = &a3[v7[12]];
    v66 = v64[1];
    *v65 = *v64;
    *(v65 + 1) = v66;
    *&a3[v7[10]] = *(a1 + v12[13]);
    v67 = (a1 + v12[14]);
    LOBYTE(v65) = *(v67 + 16);
    v68 = *v67;
    v69 = v74;
    *v74 = v68;
    v69[16] = v65;
    v70 = v12[9];
    v71 = v79;
    sub_1000095E8(&a3[v79], &qword_1011B7710, &qword_100EFF6F0);
    sub_1000089F8(a1 + v70, &a3[v71], &qword_1011B7710, &qword_100EFF6F0);
    sub_100BF7180(a1, type metadata accessor for SymbolButton.Configuration);
    return;
  }

  v33 = *(a1 + 72);
  if ((v31 & 1) == 0)
  {
    [v78 displayScale];
    static UIOffset./ infix(_:_:)();
    v61 = &a3[v7[9]];
    *v61 = v62;
    *(v61 + 1) = v63;
    if (v75)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v34 = &a3[v7[9]];
  *v34 = *(a1 + 64);
  *(v34 + 1) = v33;
  if (!v75)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (qword_1011B07C0 != -1)
  {
    swift_once();
  }

  v35 = qword_1011B76B0;
  v36 = (a1 + v12[15]);
  v37 = v36[1];
  v38 = v36[2];
  v39 = v36[3];
  [qword_1011B76B0 scaledValueForValue:v25 compatibleWithTraitCollection:*v36];
  v41 = v40;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v37];
  v43 = v42;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v38];
  v45 = v44;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v39];
  v46 = &a3[v7[12]];
  *v46 = v41;
  *(v46 + 1) = v43;
  *(v46 + 2) = v45;
  *(v46 + 3) = v47;
  v48 = (a1 + v12[13]);
  v49 = v48[1];
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v48];
  v51 = v50;
  [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v49];
  v52 = &a3[v7[10]];
  *v52 = v51;
  *(v52 + 1) = v53;
  v54 = a1 + v12[14];
  if ((*(v54 + 16) & 1) == 0)
  {
    v55 = *(v54 + 8);
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:*v54];
    v57 = v56;
    [v35 scaledValueForValue:v25 compatibleWithTraitCollection:v55];
    v58 = v74;
    *v74 = v57;
    *(v58 + 1) = v59;
    v58[16] = 0;
  }

  v60 = v73;
  sub_100BEE8B8(a1 + v12[9], v72, v73);

  sub_100BF7180(a1, type metadata accessor for SymbolButton.Configuration);
  sub_10006B010(v60, &a3[v79], &qword_1011B7710, &qword_100EFF6F0);
}

uint64_t sub_100BEE8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v25 = type metadata accessor for UIView.Corner.Radius();
  v4 = *(v25 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v23 - v7;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v10 = v23 - v9;
  v11 = type metadata accessor for UIView.Corner();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1000089F8(a1, v10, &qword_1011B7710, &qword_100EFF6F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &qword_1011B7710, &qword_100EFF6F0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    UIView.Corner.radius.getter();
    v15 = v25;
    v16 = (*(v4 + 88))(v8, v25);
    if (v16 == enum case for UIView.Corner.Radius.value(_:))
    {
      v17 = v16;
      (*(v4 + 96))(v8, v15);
      v18 = *v8;
      v19 = v8[8];
      v20 = v27;
      (*(v12 + 16))(v27, v14, v11);
      [v23[1] scaledValueForValue:v24 compatibleWithTraitCollection:v18];
      *v6 = v21;
      v6[8] = v19;
      (*(v4 + 104))(v6, v17, v15);
      UIView.Corner.radius.setter();
      (*(v12 + 8))(v14, v11);
      return (*(v12 + 56))(v20, 0, 1, v11);
    }

    (*(v12 + 8))(v14, v11);
    (*(v4 + 8))(v8, v15);
  }

  return sub_1000089F8(v26, v27, &qword_1011B7710, &qword_100EFF6F0);
}

uint64_t sub_100BEEC4C@<X0>(char *a1@<X8>)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B7C18, &unk_100F09BA8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011B7C18, &unk_100F09BA8);
  v10 = type metadata accessor for SymbolButton.Metrics(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100BF8FF4(v8, a1, type metadata accessor for SymbolButton.Metrics);
  }

  sub_1000095E8(v8, &qword_1011B7C18, &unk_100F09BA8);
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v1 + v12, v4, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v4, [v1 traitCollection], a1);
  sub_100BF8F8C(a1, v6, type metadata accessor for SymbolButton.Metrics);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011B7C18, &unk_100F09BA8);
  return swift_endAccess();
}

double sub_100BEEEF4(uint64_t a1)
{
  sub_10010FC20(&qword_1011B7C18, &unk_100F09BA8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v14 - v9);
  sub_100BEEC4C(&v14 - v9);
  sub_100BF8F8C(a1, v4, type metadata accessor for SymbolButton.Metrics);
  (*(v6 + 56))(v4, 0, 1, v5);
  v11 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  swift_beginAccess();
  sub_10006B010(v4, v1 + v11, &qword_1011B7C18, &unk_100F09BA8);
  swift_endAccess();
  sub_100BEEC4C(v8);
  v12 = sub_100BF4F14(v8, v10);
  sub_100BF7180(v8, type metadata accessor for SymbolButton.Metrics);
  if ((v12 & 1) == 0)
  {
    sub_100BEEC4C(v8);
    sub_100BEFF5C();
    sub_100BF7180(v8, type metadata accessor for SymbolButton.Metrics);
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }

  sub_100BF7180(a1, type metadata accessor for SymbolButton.Metrics);
  sub_100BF7180(v10, type metadata accessor for SymbolButton.Metrics);
  return result;
}

id sub_100BEF154(__int128 *a1)
{
  type metadata accessor for SymbolButton.Metrics(0);
  __chkstk_darwin();
  v111 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v110 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v102 - v5;
  if (qword_1011B04C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_10121B578);
  sub_100BF8F8C(a1, v6, type metadata accessor for SymbolButton.Configuration);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v113 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v118 = v13;
    *v12 = 136446466;
    v14 = &v8[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = v15;
    }

    else
    {
      v18 = v8;
      v109 = v13;
      v19 = v18;
      v20 = [v18 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v21;
    }

    v22 = sub_100010744(v16, v17, &v118);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2082;
    v23 = SymbolButton.Configuration.description.getter();
    v25 = v24;
    sub_100BF7180(v6, type metadata accessor for SymbolButton.Configuration);
    v26 = sub_100010744(v23, v25, &v118);

    *(v12 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Applying configuration=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100BF7180(v6, type metadata accessor for SymbolButton.Configuration);
  }

  v27 = v113;
  v28 = *&v113[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView];
  v29 = *(a1 + 248);
  v126[0] = *(a1 + 232);
  v126[1] = v29;
  v126[2] = *(a1 + 264);
  sub_100BF0E28(v126);
  v30 = [v28 contentView];
  v31 = *(a1 + 35);
  v32 = *(a1 + 36);
  v33 = *(a1 + 37);
  v34 = v33;
  UIView.border.setter(v31, v32, v33);

  v109 = *&v27[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
  v35 = *(a1 + 25);
  v36 = *(a1 + 26);
  v37 = *(a1 + 27);
  v38 = *(a1 + 28);
  if (v36 == 1)
  {
    if (qword_1011B07B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = *&static SymbolButton.Background.clear;
    v40 = qword_10121BAF8;
    v41 = qword_10121BB00;
    v42 = qword_10121BB08;

    v43 = v40;
  }

  else
  {
    v39 = *(a1 + 25);
    v42 = *(a1 + 28);
    v43 = *(a1 + 26);
    v40 = v43;
    v41 = *(a1 + 27);
  }

  sub_100BF7108(v35, v36, v37, v38);
  sub_100BF12A4(v40, v39, v41, v42);

  v44 = v113;
  v45 = sub_100BEDC00();
  v46 = a1[5];
  v122 = a1[4];
  v123 = v46;
  v124 = a1[6];
  v125 = *(a1 + 14);
  v47 = a1[1];
  v118 = *a1;
  v119 = v47;
  v48 = a1[3];
  v120 = a1[2];
  v121 = v48;
  sub_100BF16F8(&v118);

  v49 = sub_100BEDD78();
  v50 = *(a1 + 136);
  v117[0] = *(a1 + 120);
  v117[1] = v50;
  v51 = *(a1 + 168);
  v117[2] = *(a1 + 152);
  v117[3] = v51;
  v117[4] = *(a1 + 184);
  v52 = v117[0];
  sub_100BF1AC4(v117);

  if (*(&v52 + 1))
  {
    v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
    if ((*(&v52 + 1) & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v54 = String._bridgeToObjectiveC()();
      [v44 setAccessibilityLabel:v54];
    }
  }

  v55 = (a1 + *(v112 + 44));
  v56 = v55[2];
  v57 = &selRef_objectAtIndexedSubscript_;
  v109 = v52;
  if (v56 == 1)
  {
    v58 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    sub_100BEDE80(v58);
  }

  else
  {
    v59 = *v55;
    v60 = v55[1];
    v61 = *&v60;
    v62 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView;
    v63 = *&v44[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v107 = v60;
    v108 = v59;
    if (v63)
    {
      v64 = v56;
      v65 = v44;
      v66 = v63;
      v67 = v63;
    }

    else
    {
      v106 = type metadata accessor for SymbolButton.BadgeView();
      v68 = objc_allocWithZone(v106);
      v105 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
      v69 = objc_allocWithZone(UIView);
      v104 = v56;
      v70 = [v69 init];
      v103 = objc_opt_self();
      v71 = v59;
      v72 = [v103 blackColor];
      [v70 setBackgroundColor:v72];

      v73 = [v70 layer];
      [v73 setCompositingFilter:kCAFilterDestOut];

      *&v68[v105] = v70;
      v74 = &v68[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v74 = v71;
      v74[1] = v60;
      v74[2] = v56;
      v114.receiver = v68;
      v114.super_class = v106;
      v75 = v104;
      v76 = v60;
      v67 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v77 = v75;
      if (!v56)
      {
        v77 = [v103 tintColor];
      }

      v78 = v75;
      [v67 setBackgroundColor:v77];

      [v67 setAlpha:v61];
      [*(v67 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:v61];
      sub_100BF2078();
      sub_100B10F40(v108, v76, v56);

      v66 = 0;
      v65 = v113;
      v63 = *&v113[v62];
    }

    *&v65[v62] = v67;
    v79 = v67;
    v80 = v66;
    sub_100BEDE80(v63);

    v81 = *&v65[v62];
    v44 = v65;
    if (v81)
    {
      v57 = &selRef_objectAtIndexedSubscript_;
      if (v56)
      {
        v82 = v81;
        v83 = v56;
        v84 = v56;
      }

      else
      {
        v85 = objc_opt_self();
        v86 = v81;
        v84 = [v85 tintColor];
        v83 = 0;
      }

      v87 = v83;
      [v81 setBackgroundColor:v84];

      [v81 setAlpha:v61];
      [*&v81[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView] setAlpha:v61];
      sub_100BF2078();
      sub_100B10F40(v108, v107, v56);
    }

    else
    {
      sub_100B10F40(v108, v107, v56);
      v57 = &selRef_objectAtIndexedSubscript_;
    }
  }

  v88 = v112;
  v89 = a1 + *(v112 + 40);
  v90 = *(v89 + 1);
  v115[0] = *v89;
  v115[1] = v90;
  v115[2] = *(v89 + 2);
  v116 = *(v89 + 6);
  sub_100BEFD58(v115);
  [v44 v57[172]];
  [v44 setTintColor:*(a1 + v88[18])];
  v91 = [v44 traitCollection];
  v92 = v111;
  sub_100BEEC4C(v111);
  sub_100BF7180(v92, type metadata accessor for SymbolButton.Metrics);
  v93 = v110;
  sub_100BF8F8C(a1, v110, type metadata accessor for SymbolButton.Configuration);
  sub_100BEE284(v93, v91, v92);
  sub_100BEEEF4(v92);
  sub_100BEEC4C(v92);
  sub_100BF0094(v92);
  sub_100BF7180(v92, type metadata accessor for SymbolButton.Metrics);
  sub_100BEFBCC();
  [v44 setShowsLargeContentViewer:*(a1 + v88[16] + 24)];
  if (*(&v52 + 1))
  {
    v94 = String._bridgeToObjectiveC()();
  }

  else
  {
    v94 = 0;
  }

  v95 = *(&v118 + 1);
  [v44 setLargeContentTitle:v94];

  if (v95)
  {
    v96 = String._bridgeToObjectiveC()();
    v97 = objc_opt_self();
    v98 = [v97 _systemImageNamed:v96];

    if (!v98)
    {
      v99 = v119;
      v100 = String._bridgeToObjectiveC()();
      v98 = [v97 imageNamed:v100 inBundle:v99];
    }
  }

  else
  {
    v98 = 0;
  }

  [v44 setLargeContentImage:v98];

  return [v44 setScalesLargeContentImage:1];
}

void sub_100BEFBCC()
{
  type metadata accessor for SymbolButton.Configuration(0);
  *&v1 = __chkstk_darwin().n128_u64[0];
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  if (!*(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount))
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(v0 + v6, v3, type metadata accessor for SymbolButton.Configuration);
    if (*(v3 + 29) == 1)
    {
      sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
    }

    else
    {
      v7 = *(v3 + 34);

      sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
      if (v7)
      {
        v8 = String._bridgeToObjectiveC()();

LABEL_10:
        [v4 _setGroupName:v8];

        return;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);

  [v5 _setGroupName:{0, v1}];
}

void **sub_100BEFD58(void **result)
{
  v2 = v1;
  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView);
  v6 = *result;
  if (!*result)
  {
    if (!v5)
    {
      return result;
    }

LABEL_10:
    if ([v5 isDescendantOfView:v2])
    {
      [*(v2 + v4) removeFromSuperview];
    }

    v8 = v6;
    if (!v6)
    {
      v15 = *(v2 + v4);
      *(v2 + v4) = 0;
      v16 = 0;

      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      v14 = 1.0;
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = v7;
  if (v5)
  {
    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    v9 = v5;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      result = *(v2 + v4);
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = *(v2 + v4);
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_13:
  v11 = *(v2 + v4);
  *(v2 + v4) = v6;
  v12 = v8;

  v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView);
  if ([v13 isDescendantOfView:v13])
  {
    [v13 insertSubview:v12 aboveSubview:v13];
  }

  else
  {

    if (([v12 isDescendantOfView:v13] & 1) == 0)
    {
      [v13 addSubview:v12];
    }
  }

  sub_100BEE064();

  result = *(v2 + v4);
  if (result)
  {
LABEL_18:
    v14 = *(v3 + 5);
LABEL_21:
    [result setAlpha:v14];
    result = *(v2 + v4);
    if (result)
    {
      if (v6)
      {
        v17 = v3[6];
      }

      else
      {
        v17 = 0;
      }

      return [result setTintColor:v17];
    }
  }

  return result;
}

double sub_100BEFF5C()
{
  v0 = type metadata accessor for SymbolButton.Metrics(0) - 8;
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100BEDC00();
  sub_100BEEC4C(v2);
  v4 = *&v2[*(v0 + 36)];
  sub_100BF7180(v2, type metadata accessor for SymbolButton.Metrics);
  [v3 setPreferredSymbolConfiguration:v4];

  v5 = sub_100BEDD78();
  sub_100BEEC4C(v2);
  v6 = *&v2[*(v0 + 32)];
  sub_100BF7180(v2, type metadata accessor for SymbolButton.Metrics);
  [v5 setFont:v6];

  sub_100BEEC4C(v2);
  sub_100BF0094(v2);
  sub_100BF7180(v2, type metadata accessor for SymbolButton.Metrics);
  return result;
}

uint64_t sub_100BF0094(uint64_t a1)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  __chkstk_darwin();
  v7 = &v39 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView);
  v9 = *(type metadata accessor for SymbolButton.Metrics(0) + 20);
  sub_1000089F8(a1 + v9, v7, &qword_1011B7710, &qword_100EFF6F0);
  UIView.corner.setter();
  v41 = v1;
  sub_1000089F8(a1 + v9, v7, &qword_1011B7710, &qword_100EFF6F0);
  UIView.corner.setter();
  v10 = [v8 contentView];
  v11 = [v10 clipsToBounds];

  if (v11)
  {
    sub_1000089F8(a1 + v9, v5, &qword_1011B7710, &qword_100EFF6F0);
    v12 = type metadata accessor for UIView.Corner();
    v13 = (*(*(v12 - 8) + 48))(v5, 1, v12);
    sub_1000095E8(v5, &qword_1011B7710, &qword_100EFF6F0);
    if (v13 != 1)
    {
      v14 = [v8 contentView];
      [v14 setClipsToBounds:0];
    }
  }

  v15 = v41;
  if (*(v41 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) == 1)
  {
    v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated;
    [v8 _setAllowsGroupFiltering:1];
    v16 = [v8 contentView];
    v17 = [v16 subviews];

    sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v20 = v15 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v21 = 0;
      v22 = v18 & 0xC000000000000001;
      v23 = v18 & 0xFFFFFFFFFFFFFF8;
      v15 = &selRef_compoundStringWithElements_;
      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v22)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_22;
          }

          v24 = *(v18 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        type metadata accessor for SymbolButton.Label();
        if (([v25 v15[491]] & 1) == 0)
        {
          v27 = type metadata accessor for SymbolButton.Configuration(0);
          v28 = v20[*(v27 + 76)];
          if (v28 == 2)
          {
            v29 = &v20[*(v27 + 36)];
            v30 = v22;
            v31 = v18;
            v32 = i;
            v33 = v20;
            v34 = v15;
            v35 = v43;
            sub_1000089F8(v29, v43, &qword_1011B7710, &qword_100EFF6F0);
            v36 = type metadata accessor for UIView.Corner();
            LOBYTE(v28) = (*(*(v36 - 8) + 48))(v35, 1, v36) != 1;
            v37 = v35;
            v15 = v34;
            v20 = v33;
            i = v32;
            v18 = v31;
            v22 = v30;
            v23 = v42;
            sub_1000095E8(v37, &qword_1011B7710, &qword_100EFF6F0);
          }

          [v25 setClipsToBounds:v28 & 1];
        }

        ++v21;
        if (v26 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_19:

    *(v41 + v40) = 0;
  }

  return sub_100BF0510();
}

uint64_t sub_100BF0510()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v27 - v8;
  sub_10010FC20(&qword_1011B7C40, &qword_100F09BB8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v12 = [v0 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    *(&v38 + 1) = type metadata accessor for UIHoverHighlightEffect();
    v39 = &protocol witness table for UIHoverHighlightEffect;
    sub_10001C8B8(&v37);
    static UIHoverEffect<>.highlight.getter();
  }

  else
  {
    *(&v38 + 1) = type metadata accessor for UIHoverLiftEffect();
    v39 = &protocol witness table for UIHoverLiftEffect;
    sub_10001C8B8(&v37);
    static UIHoverEffect<>.lift.getter();
  }

  sub_1000095E8(&v40, &qword_1011B7C48, &qword_100F09BC0);
  v40 = v37;
  v41 = v38;
  v42 = v39;
  sub_1000089F8(&v40, &v35, &qword_1011B7C48, &qword_100F09BC0);
  if (v36)
  {
    v27 = v3;
    v28 = v2;
    v33 = v11;
    sub_100059A8C(&v35, &v37);
    v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView];
    v30 = v39;
    sub_10000954C(&v37, *(&v38 + 1));
    v29 = &v27;
    v14 = __chkstk_darwin();
    (*(v16 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BF8F8C(&v1[v17], v9, type metadata accessor for SymbolButton.Configuration);
    v32 = v6;
    v18 = *(v6 + 36);
    v19 = type metadata accessor for UIView.Corner();
    v20 = *(*(v19 - 8) + 48);
    if (v20(&v9[v18], 1, v19))
    {
      sub_100BF7180(v9, type metadata accessor for SymbolButton.Configuration);
      static UIPointerShape.defaultCornerRadius.getter();
    }

    else
    {
      UIView.Corner.radius.getter();
      sub_100BF7180(v9, type metadata accessor for SymbolButton.Configuration);
      [v1 bounds];
      UIView.Corner.Radius.value(in:)();
      (*(v27 + 8))(v5, v28);
    }

    v22 = v34;
    sub_100BF8F8C(&v1[v17], v34, type metadata accessor for SymbolButton.Configuration);
    if (v20((v22 + *(v32 + 36)), 1, v19))
    {
      v23 = 0;
    }

    else
    {
      v23 = UIView.Corner.mask.getter();
    }

    v24 = v33;
    sub_100009F78(0, &qword_1011B7C50, UIHoverStyle_ptr);
    sub_100BF7180(v22, type metadata accessor for SymbolButton.Configuration);
    UIRectCorner.init(_:)(v23);
    static UIShape.rect(cornerRadius:cornerCurve:maskedCorners:)();
    v25 = type metadata accessor for UIShape();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v26 = UIHoverStyle.init<A>(effect:shape:)();
    [v31 setHoverStyle:v26];

    sub_1000095E8(&v40, &qword_1011B7C48, &qword_100F09BC0);
    return sub_10000959C(&v37);
  }

  else
  {
    sub_1000095E8(&v35, &qword_1011B7C48, &qword_100F09BC0);
    [v1 setHoverStyle:0];
    return sub_1000095E8(&v40, &qword_1011B7C48, &qword_100F09BC0);
  }
}

void sub_100BF0E28(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  [v2 setEffect:0];
  v6 = *a1;
  if (*a1 < 2uLL)
  {
    sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v2 setBackgroundEffects:isa];

    if (*a1 == 1)
    {
LABEL_6:
      sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
      v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
      [v2 setContentEffects:v8.super.isa];
      goto LABEL_12;
    }

    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v5;
    v13 = [v2 backgroundEffects];
    sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setBackgroundEffects:v15];

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6C0;
  *(v9 + 32) = v6;
  sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBackgroundEffects:v11];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (*a1 == 1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBC6C0;
  *(v16 + 32) = v4;
  sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
  v17 = v4;
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setContentEffects:v8.super.isa];

LABEL_12:
  v18 = [v2 contentView];
  v19 = [v18 layer];

  [v19 setAllowsGroupBlending:0];
}

id sub_100BF11F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100BF12A4(void *a1, double a2, uint64_t a3, NSString a4)
{
  v8 = [v4 layer];
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  [v8 setCompositingFilter:a4];

  swift_unknownObjectRelease();
  v9 = &v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v10 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v11 = *&v4[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration + 8];
  *v9 = a1;
  v9[1] = a2;
  if (!a1)
  {
    a1 = v10;
    if (!v10)
    {
      if (v11 == a2)
      {
        v14 = 0;
        goto LABEL_11;
      }

LABEL_10:
      sub_100BF1464();
      v14 = v10;
      goto LABEL_11;
    }

LABEL_9:
    v15 = a1;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
  v12 = a1;
  v16 = v10;
  v13 = static NSObject.== infix(_:_:)();

  v14 = v16;
  if ((v13 & 1) == 0 || v11 != a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = v14;
}

void sub_100BF1464()
{
  v1 = &v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  }

  else
  {
    v3 = [objc_opt_self() tintColor];
  }

  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(UIColor);
  v11[4] = sub_100BF92C0;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003640C;
  v11[3] = &unk_1010E8B68;
  v7 = _Block_copy(v11);
  v8 = v2;
  v9 = v3;
  v10 = [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  [v0 setBackgroundColor:v10];
}

id sub_100BF15C4(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection:a1];
  [v4 alphaComponent];
  v6 = [v4 colorWithAlphaComponent:v5 * a3];

  return v6;
}

id sub_100BF16F8(double *a1)
{
  if (*(a1 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = objc_opt_self();
    v5 = [v4 _systemImageNamed:v3];

    if (!v5)
    {
      v6 = *(a1 + 2);
      v7 = String._bridgeToObjectiveC()();
      v5 = [v4 imageNamed:v7 inBundle:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 setImage:v5];

  v8 = [v1 layer];
  if (*(a1 + 12))
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v8 setCompositingFilter:v9];

  swift_unknownObjectRelease();
  v10 = [v1 layer];
  [v10 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 14)];
  v11 = a1[13];

  return [v1 setAlpha:v11];
}

id sub_100BF193C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SymbolButton.Label();
  v3 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v3 setLineBreakMode:5];
  v4 = v3;
  [v4 setNumberOfLines:1];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setAdjustsFontForContentSizeCategory:0];
  [v4 setClipsToBounds:0];

  [v4 _setTextColorFollowsTintColor:1];
  sub_100BF1AC4(a1);
  sub_100BCF614(a1);

  return v4;
}

id sub_100BF1AC4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = [v1 layer];
  if (*(a1 + 40))
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setCompositingFilter:v5];

  swift_unknownObjectRelease();
  v6 = [v1 layer];
  [v6 setAllowsGroupOpacity:0];

  [v1 setTintColor:*(a1 + 56)];
  [v1 setSizingRule:*(a1 + 72)];
  v7 = 0.0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v7 = *(a1 + 48);
  }

  return [v1 setAlpha:v7];
}

void sub_100BF2078()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v17 - v3;
  [v1 bounds];
  v5 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration;
  UIEdgeInsets.init(edges:inset:)();
  CGSize.inset(by:)();
  v7 = v6;
  v9 = v8;
  [v1 frame];
  v11 = v10 - *&v1[v5];
  [v1 frame];
  v13 = v12 - *&v1[v5];
  v14 = *&v1[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView];
  [v14 setFrame:{v11, v13, v7, v9}];
  static UIView.Corner.rounded.getter();
  v15 = type metadata accessor for UIView.Corner();
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
  UIView.corner.setter();
  v16 = [v1 superview];
  [v16 insertSubview:v14 belowSubview:v1];
}

Swift::Void __swiftcall SymbolButton.configureForToolbar(_:)(UITraitCollection a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v25 - v5;
  __chkstk_darwin();
  v8 = (&v25 - v7);
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  v27 = v1;
  sub_100BF8F8C(v1 + v9, v6, type metadata accessor for SymbolButton.Configuration);
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v10 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v11 = qword_10121BAD8;
  v12 = unk_10121BAE0;
  v13 = byte_10121BAE8;
  sub_100BF8F8C(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v14 = *(v2 + 64);
  v26 = v2;
  v15 = &v4[v14];
  v16 = *&v4[v14 + 8];
  v17 = v11;
  v18 = v12;

  *v15 = v10;
  *(v15 + 1) = v11;
  *(v15 + 2) = v12;
  v15[24] = v13;
  v19 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v11) = sub_10048C7DC(1, v19);

  if (v11)
  {
    v20 = [objc_opt_self() labelColor];
    sub_100BF7180(v6, type metadata accessor for SymbolButton.Configuration);
    v21 = *(v26 + 72);

    *&v4[v21] = v20;
    sub_100282F24(*(v4 + 25), *(v4 + 26), *(v4 + 27), *(v4 + 28));
    *(v4 + 200) = xmmword_100EBCEE0;
    *(v4 + 27) = 0;
    *(v4 + 28) = 0;
  }

  else
  {
    sub_100BF7180(v6, type metadata accessor for SymbolButton.Configuration);
  }

  sub_100BF8FF4(v4, v8, type metadata accessor for SymbolButton.Configuration);
  v22 = v27;
  SymbolButton.setConfiguration(_:animation:updates:)(v8, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BF7180(v8, type metadata accessor for SymbolButton.Configuration);
  v23 = UITraitCollection.supportedMaterials.getter();
  v24 = sub_10048C7DC(1, v23);

  if (v24)
  {
    [v22 _setMonochromaticTreatment:2];
  }
}

double SymbolButton.Configuration.forBarButtonItem(_:)@<D0>(uint64_t a1@<X8>)
{
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v4 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v5 = qword_10121BAD8;
  v6 = unk_10121BAE0;
  v7 = byte_10121BAE8;
  sub_100BF8F8C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9 = a1 + *(v8 + 64);
  v10 = *(v9 + 8);
  v11 = v5;
  v12 = v6;

  *v9 = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v13 = UITraitCollection.supportedMaterials.getter();
  v14 = sub_10048C7DC(1, v13);

  if (v14)
  {
    v16 = [objc_opt_self() labelColor];
    v17 = *(v8 + 72);

    *(a1 + v17) = v16;
    sub_100282F24(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
    result = 0.0;
    *(a1 + 200) = xmmword_100EBCEE0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  return result;
}

int64x2_t sub_100BF2710()
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v1 = v20 - v0;
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  sub_100006080(v2, static SymbolButton.Configuration.contextualAction);
  v3 = sub_1000060E4(v2, static SymbolButton.Configuration.contextualAction);
  SymbolButton.Configuration.init()(v3);
  v23[0] = 0;
  v23[1] = 0;
  *&v22[15] = 0;
  *&v22[7] = 0;
  v24[0] = UIFontTextStyleSubheadline;
  v4 = UIFontTextStyleSubheadline;
  sub_1000095E8(v23, &qword_1011B7770, &qword_100F083D0);
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = v6 == 6;
  if (v6 == 6)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = &UIFontTextStyleTitle3;
  if (!v7)
  {
    v9 = &UIFontTextStyleCallout;
  }

  v10 = *v9;
  sub_100BF7180(v24, _s3__C9TextStyleVMa_0);
  v11 = *v3;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v20[2] = *(v3 + 32);
  v20[3] = v13;
  v20[0] = v11;
  v20[1] = v12;
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  v16 = *(v3 + 96);
  v21 = *(v3 + 112);
  v20[5] = v15;
  v20[6] = v16;
  v20[4] = v14;
  *v3 = xmmword_100EFDCC0;
  *(v3 + 16) = 0;
  *(v3 + 24) = v10;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = v8;
  *(v3 + 56) = 2;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = -1;
  v17 = *v22;
  *(v3 + 96) = *&v22[15];
  *(v3 + 104) = 0x3FF0000000000000;
  *(v3 + 81) = v17;
  *(v3 + 112) = 0;
  sub_100BCF5C0(v20);
  static UIView.Corner.rounded.getter();
  v18 = type metadata accessor for UIView.Corner();
  (*(*(v18 - 8) + 56))(v1, 0, 1, v18);
  sub_10006B010(v1, v3 + *(v2 + 36), &qword_1011B7710, &qword_100EFF6F0);
  result = vdupq_n_s64(0x4040000000000000uLL);
  *(v3 + *(v2 + 52)) = result;
  return result;
}

uint64_t sub_100BF29B8(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_1000060E4(v5, a3);
}

double sub_100BF2A3C()
{
  v0 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  sub_100006080(v5, static SymbolButton.Configuration.barButtonContextualAction);
  v21 = sub_1000060E4(v0, static SymbolButton.Configuration.barButtonContextualAction);
  if (qword_1011B07C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v0, static SymbolButton.Configuration.contextualAction);
  sub_100BF8F8C(v6, v4, type metadata accessor for SymbolButton.Configuration);
  v7 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v8 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v9 = qword_10121BAD8;
  v10 = unk_10121BAE0;
  v11 = byte_10121BAE8;
  sub_100BF8F8C(v4, v2, type metadata accessor for SymbolButton.Configuration);
  v12 = &v2[*(v0 + 64)];
  v13 = *(v12 + 1);
  v14 = v9;
  v15 = v10;

  *v12 = v8;
  *(v12 + 1) = v9;
  *(v12 + 2) = v10;
  v12[24] = v11;
  v16 = UITraitCollection.supportedMaterials.getter();
  LOBYTE(v9) = sub_10048C7DC(1, v16);

  if (v9)
  {
    v17 = [objc_opt_self() labelColor];
    v18 = *(v0 + 72);

    *&v2[v18] = v17;
    sub_100282F24(*(v2 + 25), *(v2 + 26), *(v2 + 27), *(v2 + 28));
    *(v2 + 200) = xmmword_100EBCEE0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
  }

  sub_100BF8FF4(v2, v21, type metadata accessor for SymbolButton.Configuration);

  sub_100BF7180(v4, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t sub_100BF2D2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = sub_1000060E4(v6, a2);
  return sub_100BF8F8C(v7, a4, type metadata accessor for SymbolButton.Configuration);
}

void SymbolButton.Configuration.adding(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v17 = *(a1 + 24);
  v15 = a1[5];
  v16 = a1[4];
  sub_100BF8F8C(v3, a2, type metadata accessor for SymbolButton.Configuration);
  v9 = a2[29];
  v10 = a2[32];
  v13 = a2[31];
  v14 = a2[30];
  v11 = a2[33];
  v12 = a2[34];
  v22 = v7;
  v20 = v8;
  v21 = v6;
  v19 = *(a1 + 2);
  sub_1000089F8(&v22, v18, &qword_1011B7768, &unk_100F09488);
  sub_1000089F8(&v21, v18, &qword_1011B7768, &unk_100F09488);
  sub_1000089F8(&v20, v18, &qword_1011B7768, &unk_100F09488);
  sub_1000089F8(&v19, v18, &qword_1011B7770, &qword_100F083D0);
  sub_1002ACCD0(v9, v14, v13, v10, v11, v12);
  a2[29] = v7;
  a2[30] = v6;
  a2[31] = v8;
  a2[32] = v17;
  a2[33] = v16;
  a2[34] = v15;
}

double SymbolButton.Configuration.removingMaterial()@<D0>(uint64_t a1@<X8>)
{
  sub_100BF8F8C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_1002ACCD0(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272));
  *(a1 + 232) = 1;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return result;
}

void SymbolButton.Configuration.adding(_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_100BF8F8C(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5[25];
  v13 = a5[26];
  v14 = a5[27];
  v15 = a5[28];
  sub_100BF7108(a1, a2, a3, a4);
  sub_100282F24(v12, v13, v14, v15);
  a5[25] = a1;
  a5[26] = a2;
  a5[27] = a3;
  a5[28] = a4;
}

double SymbolButton.Configuration.removingBackground()@<D0>(uint64_t a1@<X8>)
{
  sub_100BF8F8C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  sub_100282F24(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  result = 0.0;
  *(a1 + 200) = xmmword_100EBCEE0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

void SymbolButton.Configuration.withAccessibility(_:)(char a1@<W0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_100BF8F8C(v6, a5, type metadata accessor for SymbolButton.Configuration);
  v12 = a5 + *(type metadata accessor for SymbolButton.Configuration(0) + 64);
  v13 = *(v12 + 8);
  v14 = a2;
  v15 = a3;

  *v12 = a1;
  *(v12 + 8) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
}

uint64_t *SymbolButton.Background.tertiary.unsafeMutableAddressor()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.tertiary;
}

double SymbolButton.Configuration.forUberNavigationBar(withMaterial:background:groupName:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v53 = a7;
  v54 = a3;
  v51 = a6;
  v52 = a2;
  v55 = a4;
  v56 = a5;
  LODWORD(v59) = a1;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v58 = &v50 - v11;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v18 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v19 = qword_10121BAD8;
  v20 = unk_10121BAE0;
  v21 = byte_10121BAE8;
  sub_100BF8F8C(v9, v16, type metadata accessor for SymbolButton.Configuration);
  v22 = *(v12 + 64);
  v57 = v12;
  v23 = &v16[v22];
  v24 = *&v16[v22 + 8];
  v25 = v19;
  v26 = v20;

  *v23 = v18;
  *(v23 + 1) = v19;
  *(v23 + 2) = v20;
  v23[24] = v21;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_10048C7DC(1, v27);

  if (v28)
  {
    v29 = [objc_opt_self() labelColor];

    v30 = v57;
    v31 = *(v57 + 72);

    *&v16[v31] = v29;
    sub_100282F24(*(v16 + 25), *(v16 + 26), *(v16 + 27), *(v16 + 28));
    *(v16 + 200) = xmmword_100EBCEE0;
    *(v16 + 27) = 0;
    *(v16 + 28) = 0;
  }

  else
  {

    v30 = v57;
  }

  sub_100BF8FF4(v16, a8, type metadata accessor for SymbolButton.Configuration);
  v32 = v58;
  static UIView.Corner.rounded.getter();
  v33 = type metadata accessor for UIView.Corner();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_10006B010(v32, a8 + *(v30 + 36), &qword_1011B7710, &qword_100EFF6F0);

  *(a8 + 280) = 0;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  if (v59)
  {
    v59 = [objc_opt_self() effectWithStyle:16];
    sub_100BF8F8C(a8, v14, type metadata accessor for SymbolButton.Configuration);
    v34 = *(v14 + 29);
    v35 = *(v14 + 30);
    v36 = *(v14 + 31);
    v37 = *(v14 + 32);
    v38 = *(v14 + 33);
    v39 = *(v14 + 34);
    v40 = v53;

    sub_1002ACCD0(v34, v35, v36, v37, v38, v39);
    *(v14 + 29) = v59;
    *(v14 + 30) = 0;
    *(v14 + 31) = 0;
    *(v14 + 32) = 2;
    *(v14 + 33) = v51;
    *(v14 + 34) = v40;
    sub_100BF7180(a8, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v14, a8, type metadata accessor for SymbolButton.Configuration);
    sub_100282F24(*(a8 + 200), *(a8 + 208), *(a8 + 216), *(a8 + 224));
    *(a8 + 200) = xmmword_100EBCEE0;
    *(a8 + 216) = 0;
    *(a8 + 224) = 0;
  }

  else
  {
    sub_100BF8F8C(a8, v14, type metadata accessor for SymbolButton.Configuration);
    sub_1002ACCD0(*(v14 + 29), *(v14 + 30), *(v14 + 31), *(v14 + 32), *(v14 + 33), *(v14 + 34));
    *(v14 + 29) = 1;
    *(v14 + 15) = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 34) = 0;
    sub_100BF7180(a8, type metadata accessor for SymbolButton.Configuration);
    sub_100BF8F8C(v14, a8, type metadata accessor for SymbolButton.Configuration);
    v41 = *(a8 + 200);
    v42 = *(a8 + 208);
    v43 = *(a8 + 216);
    v44 = *(a8 + 224);
    v45 = v52;
    v47 = v54;
    v46 = v55;
    v48 = v56;
    sub_100BF7108(v52, v54, v55, v56);
    sub_100282F24(v41, v42, v43, v44);
    *(a8 + 200) = v45;
    *(a8 + 208) = v47;
    *(a8 + 216) = v46;
    *(a8 + 224) = v48;
  }

  sub_100BF7180(v14, type metadata accessor for SymbolButton.Configuration);
  return result;
}

uint64_t SymbolButton.Configuration.forPromotionalParallaxNavigationBar(withMaterial:background:backgroundAlpha:groupName:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v53 = a7;
  v54 = a8;
  v61 = a1;
  v62 = a6;
  v56 = a5;
  v57 = a3;
  v58 = a4;
  v55 = a2;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v60 = &v52 - v12;
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v52 - v16;
  v18 = [objc_opt_self() currentTraitCollection];
  if (qword_1011B07B0 != -1)
  {
    swift_once();
  }

  v19 = static SymbolButton.Configuration.Accessibility.forBarButtonItem;
  v21 = qword_10121BAD8;
  v20 = unk_10121BAE0;
  v22 = byte_10121BAE8;
  sub_100BF8F8C(v10, v17, type metadata accessor for SymbolButton.Configuration);
  v23 = &v17[*(v13 + 64)];
  v59 = v13;
  v24 = *(v23 + 1);
  v25 = v21;
  v26 = v20;

  *v23 = v19;
  *(v23 + 1) = v21;
  *(v23 + 2) = v20;
  v23[24] = v22;
  v27 = UITraitCollection.supportedMaterials.getter();
  v28 = sub_10048C7DC(1, v27);

  v29 = &unk_100EBC000;
  if (v28)
  {
    v30 = [objc_opt_self() labelColor];

    v31 = v59;
    v32 = *(v59 + 72);

    *&v17[v32] = v30;
    sub_100282F24(*(v17 + 25), *(v17 + 26), *(v17 + 27), *(v17 + 28));
    *(v17 + 200) = xmmword_100EBCEE0;
    *(v17 + 27) = 0;
    *(v17 + 28) = 0;
  }

  else
  {

    v31 = v59;
  }

  sub_100BF8FF4(v17, a9, type metadata accessor for SymbolButton.Configuration);
  v33 = v60;
  static UIView.Corner.rounded.getter();
  v34 = type metadata accessor for UIView.Corner();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_10006B010(v33, a9 + *(v31 + 36), &qword_1011B7710, &qword_100EFF6F0);

  *(a9 + 280) = 0;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  if (v61)
  {
    v35 = [objc_opt_self() effectWithStyle:16];
    sub_100BF8F8C(a9, v15, type metadata accessor for SymbolButton.Configuration);
    v36 = *(v15 + 29);
    v37 = *(v15 + 30);
    v38 = *(v15 + 31);
    v39 = *(v15 + 32);
    v40 = *(v15 + 33);
    v41 = *(v15 + 34);
    v42 = v54;

    sub_1002ACCD0(v36, v37, v38, v39, v40, v41);
    *(v15 + 29) = v35;
    *(v15 + 30) = 0;
    *(v15 + 31) = 0;
    *(v15 + 32) = 2;
    *(v15 + 33) = v53;
    *(v15 + 34) = v42;
    v29 = &unk_100EBC000;
  }

  else
  {
    sub_100BF8F8C(a9, v15, type metadata accessor for SymbolButton.Configuration);
    sub_1002ACCD0(*(v15 + 29), *(v15 + 30), *(v15 + 31), *(v15 + 32), *(v15 + 33), *(v15 + 34));
    *(v15 + 29) = 1;
    *(v15 + 15) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 34) = 0;
  }

  sub_100BF6E60(v15, a9);
  sub_100BF8F8C(a9, v15, type metadata accessor for SymbolButton.Configuration);
  v43 = *(v15 + 27);
  v44 = *(v15 + 25);
  v45 = *(v15 + 26);
  v46 = *(v15 + 28);
  if (v62)
  {
    sub_100282F24(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = v29[238];
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  else
  {
    v47 = v58;

    v48 = v55;
    v49 = v55;
    sub_100282F24(v44, v45, v43, v46);
    v50 = v57;
    *(v15 + 25) = v56;
    *(v15 + 26) = v48;
    *(v15 + 27) = v50;
    *(v15 + 28) = v47;
  }

  return sub_100BF6E60(v15, a9);
}

void *SymbolButton.Background.withAlpha(_:)(void *a1, uint64_t a2, uint64_t a3)
{

  v4 = a1;
  return a1;
}

uint64_t SymbolButton.Configuration.withAlpha(_:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = a2.n128_u64[0];
  sub_100BF8F8C(v2, a1, type metadata accessor for SymbolButton.Configuration);
  result = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + *(result + 68)) = v3;
  return result;
}

id sub_100BF3B38()
{
  result = [objc_opt_self() secondarySystemFillColor];
  static SymbolButton.Background.secondary = 0x3FF0000000000000;
  qword_10121BB48 = result;
  qword_10121BB50 = 0;
  qword_10121BB58 = 0;
  return result;
}

uint64_t *SymbolButton.Background.secondary.unsafeMutableAddressor()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.secondary;
}

uint64_t static SymbolButton.Background.secondary.getter()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB48;
  v1 = qword_10121BB48;

  return v0;
}

id sub_100BF3C5C()
{
  result = [objc_opt_self() tertiarySystemFillColor];
  static SymbolButton.Background.tertiary = 0x3FF0000000000000;
  qword_10121BB68 = result;
  qword_10121BB70 = 0;
  qword_10121BB78 = 0;
  return result;
}

uint64_t static SymbolButton.Background.tertiary.getter()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB68;
  v1 = qword_10121BB68;

  return v0;
}

id sub_100BF3D30()
{
  if (qword_1011B07E0 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.normal = static SymbolButton.Background.tertiary;
  *&qword_10121BB88 = *&qword_10121BB68;
  qword_10121BB98 = qword_10121BB78;
  v1 = qword_10121BB68;

  return v1;
}

uint64_t static SymbolButton.Background.normal.getter()
{
  if (qword_1011B07E8 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BB88;
  v1 = qword_10121BB88;

  return v0;
}

id sub_100BF3E50()
{
  if (qword_1011B07D8 != -1)
  {
    swift_once();
  }

  static SymbolButton.Background.highlighted = static SymbolButton.Background.secondary;
  *&qword_10121BBA8 = *&qword_10121BB48;
  qword_10121BBB8 = qword_10121BB58;
  v1 = qword_10121BB48;

  return v1;
}

uint64_t static SymbolButton.Background.highlighted.getter()
{
  if (qword_1011B07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_10121BBA8;
  v1 = qword_10121BBA8;

  return v0;
}

id sub_100BF3F70()
{
  result = [objc_opt_self() effectWithStyle:7];
  qword_10121BBC8 = 0;
  qword_10121BBD0 = 0;
  static SymbolButton.Material.xr = result;
  byte_10121BBD8 = 2;
  qword_10121BBE0 = 0;
  unk_10121BBE8 = 0;
  return result;
}

double static SymbolButton.Material.xr.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1011B07F8 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static SymbolButton.Material.xr;
  v2 = qword_10121BBC8;
  v3 = qword_10121BBD0;
  v4 = byte_10121BBD8;
  v5 = qword_10121BBE0;
  v6 = unk_10121BBE8;
  *a1 = static SymbolButton.Material.xr;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;

  return result;
}

uint64_t sub_100BF4068()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.capsule);
  sub_1000060E4(v0, static UIView.Corner.capsule);
  return static UIView.Corner.rounded.getter();
}

uint64_t sub_100BF40D8()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.roundedRect);
  sub_1000060E4(v0, static UIView.Corner.roundedRect);
  return static UIView.Corner.value(_:continuous:)();
}

id SymbolButton.withProvider(_:)(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = &v12[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  sub_100020438(v7, v8);
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
  sub_1000095E8(v5, &qword_1011B6D30, &unk_100F07CB0);
  v10 = v12;

  return v10;
}

id SymbolButton.withConfiguration(_:)(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100BF8F8C(a1, v3, type metadata accessor for SymbolButton.Configuration);
  SymbolButton.setConfiguration(_:animation:updates:)(v3, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BF7180(v3, type metadata accessor for SymbolButton.Configuration);
  v4 = v6[1];

  return v4;
}

id sub_100BF43D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C68, NSBundle_ptr);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (*(a1 + 6) != *(a2 + 48) || *(a1 + 7) != *(a2 + 56))
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a2 + 80);
  if (v18 == 255)
  {
    if (v19 != 255)
    {
      return 0;
    }
  }

  else
  {
    v20 = *(a2 + 64);
    v33 = *(a1 + 4);
    v34 = v18;
    if (v19 == 255)
    {
      return 0;
    }

    v31 = v20;
    v32 = v19 & 1;
    type metadata accessor for UIOffset(0);
    v22 = v21;
    sub_100BF905C(&qword_1011B7C60, type metadata accessor for UIOffset, &protocol conformance descriptor for UIOffset);
    if ((static DisplayUnit.__derived_enum_equals(_:_:)(&v33, &v31, v22) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 12);
  v24 = *(a2 + 96);
  if (v23)
  {
    if (!v24 || (*(a1 + 11) != *(a2 + 88) || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (a1[13] == *(a2 + 104))
  {
    v25 = *(a1 + 14);
    v26 = *(a2 + 112);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
      v27 = v26;
      v28 = v25;
      v29 = static NSObject.== infix(_:_:)();

      return (v29 & 1) != 0;
    }

    if (!v26)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a7 != a8)
  {
    return 0;
  }

  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
    v14 = a4;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    a2 = v9;
    a3 = v10;
    a5 = v12;
    a6 = v11;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !a6;
}

uint64_t _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 32) == *(a2 + 32);
    if (v5 && *(a1 + 40) == *(a2 + 40))
    {
      v6 = *(a1 + 48);
      v7 = *(a2 + 48);
      if (v6)
      {
        if (v7)
        {
          sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
          v8 = v7;
          v9 = v6;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(int a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6, void *a7, char a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      goto LABEL_17;
    }

    v10 = a3;
    v11 = a7;
    v12 = a4;
    v13 = a8;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a8 = v13;
      a4 = v12;
      a7 = v11;
      a3 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    if (a7)
    {
      v19 = a4;
      v20 = a8;
      v21 = a7;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
      {

        a8 = v20;
        a4 = v19;
LABEL_20:
        v26 = a4 ^ a8 ^ 1;
        return v26 & 1;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a8 = v20;
      a4 = v19;
      if (v27)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v26 = 0;
  return v26 & 1;
}

BOOL _s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(double *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v13 = *(a1 + 5);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 4) != *(a2 + 32) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48))
  {
    return 0;
  }

  v15 = *(a1 + 7);
  v16 = *(a2 + 56);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
  v17 = v16;
  v18 = v15;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if ((*(a1 + 64) ^ *(a2 + 64)))
  {
    return 0;
  }

  return *(a1 + 9) == *(a2 + 72);
}

BOOL _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
    v11 = v10;
    v12 = v9;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B7C58, UIVisualEffect_ptr);
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_21:
    v22 = *(a1 + 40);
    v23 = *(a2 + 40);
    if (v22)
    {
      return v23 && (*(a1 + 32) == *(a2 + 32) && v22 == v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v23;
  }

  return result;
}

BOOL _s11MusicCoreUI12SymbolButtonC5BadgeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a3 != a5 || a4 != a6)
  {
    return 0;
  }

  if (a1)
  {
    if (a2)
    {
      sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
      v10 = a2;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_100BF4F14(void **a1, void **a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = sub_10010FC20(&qword_1011B1188, &qword_100EFFAA0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v47 = a1;
  v13 = *a1;
  v14 = a2;
  v15 = *a2;
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
    v16 = v15;
    v17 = v13;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v15)
  {
    goto LABEL_24;
  }

  v46 = type metadata accessor for SymbolButton.Metrics(0);
  v19 = *(v46 + 20);
  v20 = *(v10 + 48);
  sub_1000089F8(v47 + v19, v12, &qword_1011B7710, &qword_100EFF6F0);
  v21 = v14 + v19;
  v22 = v14;
  sub_1000089F8(v21, &v12[v20], &qword_1011B7710, &qword_100EFF6F0);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    if (v23(&v12[v20], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_1011B7710, &qword_100EFF6F0);
      goto LABEL_13;
    }

LABEL_11:
    sub_1000095E8(v12, &qword_1011B1188, &qword_100EFFAA0);
    goto LABEL_24;
  }

  sub_1000089F8(v12, v9, &qword_1011B7710, &qword_100EFF6F0);
  if (v23(&v12[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v12[v20], v4);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v9, v4);
  v22 = v14;
  sub_1000095E8(v12, &qword_1011B7710, &qword_100EFF6F0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  v27 = v46;
  v26 = v47;
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v28 = v27[8];
  v29 = *(v26 + v28);
  v30 = *(v22 + v28);
  v31 = 0;
  if (v29 == v30)
  {
    v32 = v27[9];
    v33 = (v26 + v32);
    v34 = *(v26 + v32);
    v35 = (v22 + v32);
    if (v34 == *v35 && v33[1] == v35[1])
    {
      v31 = 0;
      v36 = v27[10];
      v37 = (v26 + v36);
      v38 = *(v26 + v36);
      v39 = (v22 + v36);
      if (v38 == *v39 && v37[1] == v39[1])
      {
        v40 = v27[11];
        v41 = (v26 + v40);
        v42 = *(v26 + v40 + 16);
        v43 = (v22 + v40);
        v44 = *(v22 + v40 + 16);
        if (v42)
        {
          if ((v44 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_28:
          v31 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v26 + v27[12]), *(v22 + v27[12])), vceqq_f64(*(v26 + v27[12] + 16), *(v22 + v27[12] + 16)))));
          return v31 & 1;
        }

        if (v44)
        {
LABEL_24:
          v31 = 0;
          return v31 & 1;
        }

        v31 = 0;
        if (*v41 == *v43 && v41[1] == v43[1])
        {
          goto LABEL_28;
        }
      }
    }
  }

  return v31 & 1;
}

uint64_t _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v9 = &v141 - v8;
  v10 = sub_10010FC20(&qword_1011B1188, &qword_100EFFAA0);
  __chkstk_darwin();
  v12 = (&v141 - v11);
  v13 = *(a1 + 80);
  v165[4] = *(a1 + 64);
  v165[5] = v13;
  v165[6] = *(a1 + 96);
  v166 = *(a1 + 112);
  v14 = *(a1 + 16);
  v165[0] = *a1;
  v165[1] = v14;
  v15 = *(a1 + 48);
  v165[2] = *(a1 + 32);
  v165[3] = v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v167[2] = a2[2];
  v167[3] = v18;
  v167[0] = v16;
  v167[1] = v17;
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v168 = *(a2 + 14);
  v167[5] = v20;
  v167[6] = v21;
  v167[4] = v19;
  if (!_s11MusicCoreUI12SymbolButtonC0D0V23__derived_struct_equalsySbAE_AEtFZ_0(v165, v167))
  {
    return 0;
  }

  v22 = *(a1 + 136);
  v23 = *(a1 + 168);
  v163[2] = *(a1 + 152);
  v163[3] = v23;
  v24 = *(a1 + 184);
  v163[0] = *(a1 + 120);
  v163[1] = v22;
  v25 = *(a2 + 136);
  v26 = *(a2 + 168);
  v164[2] = *(a2 + 152);
  v164[3] = v26;
  v164[4] = *(a2 + 184);
  v27 = *(a2 + 120);
  v164[1] = v25;
  v163[4] = v24;
  v164[0] = v27;
  if (!_s11MusicCoreUI12SymbolButtonC5TitleV23__derived_struct_equalsySbAE_AEtFZ_0(v163, v164))
  {
    return 0;
  }

  v148 = v9;
  v149 = v10;
  v151 = v5;
  v152 = v12;
  v147 = v7;
  v150 = v4;
  v28 = *(a1 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 224);
  v31 = *(a2 + 25);
  v32 = *(a2 + 26);
  v34 = *(a2 + 27);
  v33 = *(a2 + 28);
  if (v29 == 1)
  {
    if (v32 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v35 = *(a2 + 25);
    v36 = *(a2 + 26);
    v37 = *(a1 + 216);
    sub_100BF7108(v35, v36, v34, v33);
    sub_100BF7108(v28, v29, v37, v30);
    sub_100282F24(v28, v29, v37, v30);
    sub_100282F24(v31, v32, v34, v33);
    return 0;
  }

  if (v32 == 1)
  {
    goto LABEL_7;
  }

  v38 = *(a2 + 25);
  v39 = *(a1 + 216);
  sub_100BF7108(v38, *(a2 + 26), *(a2 + 27), *(a2 + 28));
  sub_100BF7108(v28, v29, v39, v30);
  v40 = _s11MusicCoreUI12SymbolButtonC10BackgroundV23__derived_struct_equalsySbAE_AEtFZ_0(v29, v39, v30, v32, v34, v33, *&v28, *&v38);

  sub_100282F24(v28, v29, v39, v30);
  if (!v40)
  {
    return 0;
  }

LABEL_9:
  v42 = *(a1 + 232);
  v41 = *(a1 + 240);
  v43 = *(a1 + 248);
  v44 = *(a1 + 256);
  v46 = *(a1 + 264);
  v45 = *(a1 + 272);
  v48 = *(a2 + 29);
  v47 = *(a2 + 30);
  v50 = *(a2 + 31);
  v49 = *(a2 + 32);
  v51 = *(a2 + 33);
  v52 = *(a2 + 34);
  if (v42 == 1)
  {
    if (v48 == 1)
    {
      goto LABEL_17;
    }

LABEL_13:
    v53 = *(a2 + 29);
    v54 = *(a1 + 240);
    v55 = *(a2 + 30);
    v145 = *(a2 + 32);
    v146 = v47;
    v56 = v43;
    v57 = v50;
    v144 = v51;
    sub_100BF9260(v53, v55, v50, v49, v51, v52);
    sub_100BF9260(v42, v54, v56, v44, v46, v45);
    sub_1002ACCD0(v42, v54, v56, v44, v46, v45);
    sub_1002ACCD0(v48, v146, v57, v145, v144, v52);
    return 0;
  }

  if (v48 == 1)
  {
    goto LABEL_13;
  }

  v159[0] = *(a2 + 29);
  v159[1] = v47;
  v159[2] = v50;
  v160 = v49;
  v161 = v51;
  v162 = v52;
  v155[0] = v42;
  v155[1] = v41;
  v155[2] = v43;
  v156 = v44;
  v157 = v46;
  v158 = v45;
  v142 = v50;
  v143 = v41;
  v146 = v47;
  v59 = v43;
  sub_100BF9260(v48, v47, v50, v49, v51, v52);
  sub_100BF9260(v42, v143, v59, v44, v46, v45);
  LODWORD(v145) = _s11MusicCoreUI12SymbolButtonC8MaterialV23__derived_struct_equalsySbAE_AEtFZ_0(v155, v159);

  sub_1002ACCD0(v42, v143, v59, v44, v46, v45);
  if ((v145 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v60 = *(a1 + 296);
  v61 = *(a2 + 37);
  if (v60)
  {
    v62 = v152;
    if (!v61)
    {
      return 0;
    }

    v63 = *(a1 + 280);
    v64 = *(a1 + 288);
    v65 = *(a2 + 35);
    v66 = *(a2 + 36);
    v67 = v61;
    LOBYTE(v154[0]) = v66 & 1;
    v68 = static UIView.Border.__derived_struct_equals(_:_:)(v63, v64 & 1, v60, v65, v66 & 1, v67);

    if ((v68 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v62 = v152;
    if (v61)
    {
      return 0;
    }
  }

  v69 = type metadata accessor for SymbolButton.Configuration(0);
  v70 = *(v69 + 36);
  v71 = *(v149 + 48);
  sub_1000089F8(a1 + v70, v62, &qword_1011B7710, &qword_100EFF6F0);
  sub_1000089F8(a2 + v70, v62 + v71, &qword_1011B7710, &qword_100EFF6F0);
  v72 = v150;
  v73 = *(v151 + 48);
  if (v73(v62, 1, v150) == 1)
  {
    if (v73(v62 + v71, 1, v72) == 1)
    {
      sub_1000095E8(v62, &qword_1011B7710, &qword_100EFF6F0);
      goto LABEL_29;
    }

LABEL_27:
    sub_1000095E8(v62, &qword_1011B1188, &qword_100EFFAA0);
    return 0;
  }

  v74 = v148;
  sub_1000089F8(v62, v148, &qword_1011B7710, &qword_100EFF6F0);
  if (v73(v62 + v71, 1, v72) == 1)
  {
    (*(v151 + 8))(v74, v72);
    goto LABEL_27;
  }

  v152 = v69;
  v75 = v151;
  v76 = v62 + v71;
  v77 = v147;
  (*(v151 + 32))(v147, v76, v72);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v79 = *(v75 + 8);
  v79(v77, v72);
  v79(v74, v72);
  v69 = v152;
  sub_1000095E8(v62, &qword_1011B7710, &qword_100EFF6F0);
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v152 = v69;
  v80 = *(v69 + 40);
  v82 = *(a1 + v80);
  v81 = *(a1 + v80 + 8);
  v84 = *(a1 + v80 + 16);
  v83 = *(a1 + v80 + 24);
  v86 = *(a1 + v80 + 32);
  v85 = *(a1 + v80 + 40);
  v87 = *(a1 + v80 + 48);
  v88 = a2 + v80;
  v90 = *v88;
  v89 = *(v88 + 1);
  v92 = *(v88 + 2);
  v91 = *(v88 + 3);
  v94 = *(v88 + 4);
  v93 = *(v88 + 5);
  v95 = *(v88 + 6);
  if (!v82)
  {
    if (!v90)
    {
      v144 = *(v88 + 2);
      v145 = v89;
      v146 = v91;
      v141 = v94;
      v142 = v93;
      v110 = v85;
      v111 = v87;
      sub_100B10F50(0, v81, v84, v83, v86, v85, v87);
      sub_100B10F50(0, v145, v144, v146, v141, v142, v95);
      sub_100B07154(0, v81, v84, v83, v86, v110, v111);
      goto LABEL_36;
    }

LABEL_34:
    v102 = v81;
    v148 = v81;
    v149 = v84;
    v103 = v89;
    v104 = v84;
    v105 = v92;
    v106 = v91;
    v150 = v86;
    v151 = v85;
    v107 = v94;
    v108 = v86;
    v109 = v93;
    v147 = v87;
    sub_100B10F50(v82, v102, v104, v83, v108, v85, v87);
    sub_100B10F50(v90, v103, v105, v106, v107, v109, v95);
    sub_100B07154(v82, v148, v149, v83, v150, v151, v147);
    sub_100B07154(v90, v103, v105, v106, v107, v109, v95);
    return 0;
  }

  if (!v90)
  {
    goto LABEL_34;
  }

  v154[0] = *v88;
  v154[1] = v89;
  v154[2] = v92;
  v154[3] = v91;
  v154[4] = v94;
  v154[5] = v93;
  v154[6] = v95;
  v153[0] = v82;
  v153[1] = v81;
  v153[2] = v84;
  v153[3] = v83;
  v153[4] = v86;
  v153[5] = v85;
  v153[6] = v87;
  v148 = v81;
  v149 = v84;
  v144 = v92;
  v145 = v89;
  v96 = v81;
  v97 = v84;
  v143 = v83;
  v146 = v91;
  v147 = v87;
  v150 = v86;
  v151 = v85;
  v98 = v94;
  v99 = v93;
  sub_100B10F50(v82, v96, v97, v83, v86, v85, v87);
  v101 = v144;
  v100 = v145;
  sub_100B10F50(v90, v145, v144, v146, v98, v99, v95);
  LODWORD(v142) = _s11MusicCoreUI12SymbolButtonC10CustomViewV23__derived_struct_equalsySbAE_AEtFZ_0(v153, v154);
  sub_100B07154(v90, v100, v101, v146, v98, v99, v95);
  sub_100B07154(v82, v148, v149, v143, v150, v151, v147);
  if ((v142 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v112 = v152;
  v113 = v152[11];
  v114 = (a1 + v113);
  v115 = *(a1 + v113 + 16);
  v116 = a2 + v113;
  v117 = *(v116 + 2);
  if (v115 == 1)
  {
    if (v117 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v117 == 1)
    {
      return 0;
    }

    result = 0;
    v126 = *v114;
    v127 = *v116;
    if (*v114 != *v116)
    {
      return result;
    }

    v128 = v114[1];
    v129 = *(v116 + 1);
    if (*&v128 != *&v129)
    {
      return result;
    }

    if (v115)
    {
      if (!v117)
      {
        return 0;
      }

      sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
      sub_100BF7150(v127, v129, v117);
      sub_100BF7150(v126, v128, v115);
      v130 = static NSObject.== infix(_:_:)();
      sub_100B10F40(v126, v128, v115);
      sub_100B10F40(v127, v129, v117);
      v112 = v152;
      if ((v130 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v112 = v152;
      if (v117)
      {
        return 0;
      }
    }
  }

  if (*(a1 + v112[12]) != *(a2 + v112[12]))
  {
    return 0;
  }

  result = 0;
  v118 = v112[13];
  v119 = a1 + v118;
  v120 = *(a1 + v118);
  v121 = (a2 + v118);
  if (v120 == *v121 && *(v119 + 8) == v121[1])
  {
    v122 = v152[14];
    v123 = (a1 + v122);
    v124 = *(a1 + v122 + 16);
    v125 = (a2 + v122);
    if (v124)
    {
      if ((v125[2] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    if (v125[2])
    {
      return 0;
    }

    result = 0;
    if (*v123 == *v125 && v123[1] == v125[1])
    {
LABEL_56:
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v152[15]), *(a2 + v152[15])), vceqq_f64(*(a1 + v152[15] + 16), *(a2 + v152[15] + 16))))))
      {
        v131 = v152[16];
        if ((_s11MusicCoreUI12SymbolButtonC13ConfigurationV13AccessibilityV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v131), *(a1 + v131 + 8), *(a1 + v131 + 16), *(a1 + v131 + 24), *(a2 + v131), *(a2 + v131 + 8), *(a2 + v131 + 16), *(a2 + v131 + 24)) & 1) != 0 && *(a1 + v152[17]) == *(a2 + v152[17]))
        {
          v132 = v152[18];
          v133 = *(a1 + v132);
          v134 = *(a2 + v132);
          if (v133)
          {
            if (v134)
            {
              sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
              v135 = v134;
              v136 = v133;
              v137 = static NSObject.== infix(_:_:)();

              if (v137)
              {
LABEL_64:
                v138 = v152[19];
                v139 = *(a1 + v138);
                v140 = *(a2 + v138);
                if (v139 == 2)
                {
                  if (v140 == 2)
                  {
                    return 1;
                  }
                }

                else if (v140 != 2 && ((v140 ^ v139) & 1) == 0)
                {
                  return 1;
                }
              }
            }
          }

          else if (!v134)
          {
            goto LABEL_64;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

UIFontTextStyle sub_100BF5F9C@<X0>(uint64_t a1@<X8>)
{
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
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3FF0000000000000;
  *(a1 + 112) = 0;
  return UIFontTextStyleSubheadline;
}

char *sub_100BF5FEC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v60 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v58 = &v57 - v5;
  v59 = type metadata accessor for SymbolButton.Metrics(0);
  v6 = *(v59 - 8);
  __chkstk_darwin();
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
  *v10 = 0;
  v10[1] = 0;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden] = 1;
  v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = 0;
  *&v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize] = vdupq_n_s64(0x4040000000000000uLL);
  v11 = &v3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v68 = 1;
  v14 = type metadata accessor for SymbolButton.MaterialView();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v67.receiver = objc_allocWithZone(v14);
  v67.super_class = v14;
  v15 = objc_msgSendSuper2(&v67, "initWithEffect:", 0);
  sub_100BF0E28(&v68);

  *&v4[v13] = v15;
  v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = *&static SymbolButton.Background.clear;
  v19 = qword_10121BAF8;
  v18 = qword_10121BB00;
  v20 = qword_10121BB08;
  v21 = type metadata accessor for SymbolButton.BackgroundView();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v23 = 0;
  *(v23 + 1) = 0x3FF0000000000000;
  v66.receiver = v22;
  v66.super_class = v21;
  v24 = v19;

  v25 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v19, v17, v18, v20);
  sub_100BF1464();

  *&v4[v16] = v25;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
  (*(v6 + 56))(&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics], 1, 1, v59);
  v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated] = 1;
  v26 = v62;
  sub_100BF8F8C(v62, &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration], type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v27 = *v10;
  v28 = v10[1];
  v29 = v60;
  v30 = v61;
  *v10 = v60;
  v10[1] = v30;
  sub_100030444(v29, v30);
  sub_100020438(v27, v28);
  v31 = type metadata accessor for SymbolButton(0);
  v65.receiver = v4;
  v65.super_class = v31;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  v34 = *(v32 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView);
  v35 = v32;
  [v34 setAutoresizingMask:18];
  v36 = *(v32 + v33);
  [v35 bounds];
  [v36 setFrame:?];

  [v35 addSubview:*(v32 + v33)];
  v37 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  [*(v32 + v33) addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView)];
  v38 = [*(v35 + v37) contentView];
  v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  [v38 addSubview:*(v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView)];

  v40 = *(v35 + v39);
  type metadata accessor for SymbolButton.Label();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v40;
  if (([v42 isKindOfClass:ObjCClassFromMetadata] & 1) == 0)
  {
    v43 = v35 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    v44 = type metadata accessor for SymbolButton.Configuration(0);
    v45 = v43[*(v44 + 76)];
    if (v45 == 2)
    {
      v46 = &v43[*(v44 + 36)];
      v47 = v58;
      sub_1000089F8(v46, v58, &qword_1011B7710, &qword_100EFF6F0);
      v48 = type metadata accessor for UIView.Corner();
      LOBYTE(v45) = (*(*(v48 - 8) + 48))(v47, 1, v48) != 1;
      sub_1000095E8(v47, &qword_1011B7710, &qword_100EFF6F0);
    }

    [v42 setClipsToBounds:v45 & 1];
  }

  sub_100BEF154(v26);
  v49 = v63;
  sub_100BEEC4C(v63);
  sub_100BEFF5C();
  sub_100BF7180(v49, type metadata accessor for SymbolButton.Metrics);
  sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
  *(swift_allocObject() + 16) = ObjectType;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v35 addAction:v50 forControlEvents:64];

  v51 = UIAccessibilityTraitButton;
  v52 = v35;
  v53 = [v52 accessibilityTraits];
  if ((v51 & ~v53) != 0)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  [v52 setAccessibilityTraits:v54 | v53];

  v55 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v52];
  [v52 addInteraction:v55];

  sub_100BF7180(v26, type metadata accessor for SymbolButton.Configuration);
  return v52;
}

BOOL _s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  if (!v3)
  {
    v9 = a2[3];
LABEL_9:
    v10 = v9 == 0;
    return !v10;
  }

  v6 = *a1;
  v5 = a1[1];
  v7 = a2[3];

  if (!v7)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = a2[1];
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    return 1;
  }

  if (v8)
  {
    return 1;
  }

LABEL_18:
  v13 = v3;
  v14 = v7;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_22;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    return 1;
  }

LABEL_22:
  v9 = a1[3];
  if (!a2[3])
  {
    goto LABEL_9;
  }

  if (!v9 || a1[6] != a2[6])
  {
    return 1;
  }

  v10 = a1[7] == a2[7];
  return !v10;
}

uint64_t sub_100BF6928(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    if (*(a2 + 16))
    {
      goto LABEL_29;
    }

    v10 = 0;
LABEL_25:
    v19 = v10 != 0;
    return v19 & 1;
  }

  v5 = *(a1 + 7);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = *(a2 + 16);

  if (!v8)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v9 = *(a2 + 8);
  if (v6)
  {
    if (v9)
    {
      if (v7 == *a2 && v6 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_29;
  }

  if (v9)
  {
    goto LABEL_29;
  }

LABEL_15:
  v12 = v3;
  v13 = v8;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  v19 = 1;
  if (v10 && a1[3] == *(a2 + 24))
  {
    v20 = *(a2 + 56);
    v21 = v5;
    v22 = v20;
    v23 = v22;
    if (v5)
    {
      if (v20)
      {
        sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
        v24 = static NSObject.== infix(_:_:)();

        v19 = v24 ^ 1;
        return v19 & 1;
      }
    }

    else
    {
      if (!v20)
      {
        v19 = 0;
        return v19 & 1;
      }
    }

LABEL_29:
    v19 = 1;
  }

  return v19 & 1;
}

void _s11MusicCoreUI12SymbolButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_hitRectMinimumSize) = vdupq_n_s64(0x4040000000000000uLL);
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_containerView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_materialView;
  v24 = 1;
  v8 = type metadata accessor for SymbolButton.MaterialView();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v23.receiver = objc_allocWithZone(v8);
  v23.super_class = v8;
  v9 = objc_msgSendSuper2(&v23, "initWithEffect:", 0);
  sub_100BF0E28(&v24);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView;
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = *&static SymbolButton.Background.clear;
  v13 = qword_10121BAF8;
  v12 = qword_10121BB00;
  v14 = qword_10121BB08;
  v15 = type metadata accessor for SymbolButton.BackgroundView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v17 = 0;
  *(v17 + 1) = 0x3FF0000000000000;
  v22.receiver = v16;
  v22.super_class = v15;
  v18 = v13;

  v19 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v13, v11, v12, v14);
  sub_100BF1464();

  *(v1 + v10) = v19;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView) = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___metrics;
  v21 = type metadata accessor for SymbolButton.Metrics(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100BF6E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100BF6EC4()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100BE793C((v0 + v4), (v0 + v5), v7, v8);
}

void sub_100BF6F6C()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  sub_100BE8694(v9, v0 + v4, v0 + v5, v7, v8);
}

void sub_100BF7108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    v5 = a2;
  }
}

id sub_100BF7150(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100BF7180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_100BF71F4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return !*(a2 + 16);
  }

  v6 = *a1;
  v5 = *(a1 + 1);
  v7 = *(a2 + 16);

  if (!v7)
  {
    if (!v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v8 = *(a2 + 8);
  if (v5)
  {
    if (v8)
    {
      if (v6 == *a2 && v5 == v8)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

LABEL_11:

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_15:
  v10 = v3;
  v11 = v7;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    goto LABEL_19;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v17 = *(a1 + 2);
  if (!*(a2 + 16))
  {
    return !v17;
  }

  result = 0;
  if (v17 && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  return result;
}

id _s11MusicCoreUI12SymbolButtonC22contextMenuInteraction_016configurationForG10AtLocationSo09UIContextG13ConfigurationCSgSo0mgH0C_So7CGPointVtF_0()
{
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu];
  swift_beginAccess();
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = v1[1];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0;
  v5 = objc_opt_self();
  aBlock[4] = sub_100BF8F0C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100BF43D0;
  aBlock[3] = &unk_1010E88E8;
  v6 = _Block_copy(aBlock);
  sub_100030444(v2, v3);
  sub_100030444(v2, v3);
  v7 = v0;

  v8 = [v5 configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  _Block_release(v6);
  [v8 setPreferredMenuElementOrder:2];
  sub_100020438(v2, v3);
  return v8;
}

id _s11MusicCoreUI12SymbolButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0(void *a1)
{
  sub_10010FC20(&unk_1011B7C20, "|)\n");
  __chkstk_darwin();
  v4 = &v86[-v3];
  v5 = type metadata accessor for UIView.Corner.Radius();
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin();
  v93 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UIView.Corner();
  v8 = *(v7 - 8);
  v101 = v7;
  v102 = v8;
  __chkstk_darwin();
  v92 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&qword_1011B1188, &qword_100EFFAA0);
  __chkstk_darwin();
  v12 = &v86[-v11];
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v14 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v16 = &v86[-v15];
  __chkstk_darwin();
  v18 = &v86[-v17];
  v103 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v96 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v21 = &v86[-v20];
  __chkstk_darwin();
  v23 = &v86[-v22];
  v24 = type metadata accessor for UIPointerEffect();
  v99 = *(v24 - 8);
  v100 = v24;
  __chkstk_darwin();
  v97 = &v86[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v26 = __chkstk_darwin().n128_u64[0];
  v98 = &v86[-v27];
  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v29 = result;
  if (![v1 isUserInteractionEnabled])
  {

    return 0;
  }

  v91 = v29;
  v89 = v4;
  v90 = v1;
  v30 = v1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BF8F8C(v30, v23, type metadata accessor for SymbolButton.Configuration);
  v31 = *(v23 + 29);
  if (v31 == 1)
  {
    sub_100BF7180(v23, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    v32 = v31;
    sub_100BF7180(v23, type metadata accessor for SymbolButton.Configuration);
    if (v31)
    {

      goto LABEL_10;
    }
  }

  if (*(v30 + 208) == 1 && !*(v30 + *(v103 + 40)))
  {
    goto LABEL_17;
  }

LABEL_10:
  v33 = [v90 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v88 = v30;
  if (v34 != 6)
  {
LABEL_19:
    v52 = objc_allocWithZone(UITargetedPreview);
    v53 = [v52 initWithView:v91];
    v54 = [v53 parameters];
    v47 = &selRef__replacePlaceholderViewWithView_;
    v44 = v90;
    [v90 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_100BF8F8C(v30, v21, type metadata accessor for SymbolButton.Configuration);
    if ((*(v102 + 48))(&v21[*(v103 + 36)], 1, v101))
    {
      sub_100BF7180(v21, type metadata accessor for SymbolButton.Configuration);
      static UIPointerShape.defaultCornerRadius.getter();
      v64 = v63;
    }

    else
    {
      v65 = v93;
      UIView.Corner.radius.getter();
      sub_100BF7180(v21, type metadata accessor for SymbolButton.Configuration);
      [v44 bounds];
      UIView.Corner.Radius.value(in:)();
      v64 = v66;
      (*(v94 + 8))(v65, v95);
    }

    v42 = v98;
    v41 = v99;
    v46 = v97;
    v67 = [objc_opt_self() bezierPathWithRoundedRect:v56 cornerRadius:{v58, v60, v62, v64}];
    [v54 setShadowPath:v67];

    *v42 = v53;
    v43 = &enum case for UIPointerEffect.lift(_:);
    v45 = v96;
    v30 = v88;
    goto LABEL_23;
  }

  sub_1000089F8(v30 + *(v103 + 36), v18, &qword_1011B7710, &qword_100EFF6F0);
  static UIView.Corner.rounded.getter();
  v35 = v101;
  v36 = v102;
  (*(v102 + 56))(v16, 0, 1, v101);
  v37 = *(v10 + 48);
  sub_1000089F8(v18, v12, &qword_1011B7710, &qword_100EFF6F0);
  sub_1000089F8(v16, &v12[v37], &qword_1011B7710, &qword_100EFF6F0);
  v38 = *(v36 + 48);
  if (v38(v12, 1, v35) == 1)
  {
    sub_1000095E8(v16, &qword_1011B7710, &qword_100EFF6F0);
    sub_1000095E8(v18, &qword_1011B7710, &qword_100EFF6F0);
    if (v38(&v12[v37], 1, v35) == 1)
    {
      sub_1000095E8(v12, &qword_1011B7710, &qword_100EFF6F0);
      v30 = v88;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_1000089F8(v12, v14, &qword_1011B7710, &qword_100EFF6F0);
  if (v38(&v12[v37], 1, v35) == 1)
  {
    sub_1000095E8(v16, &qword_1011B7710, &qword_100EFF6F0);
    sub_1000095E8(v18, &qword_1011B7710, &qword_100EFF6F0);
    (*(v102 + 8))(v14, v35);
LABEL_16:
    sub_1000095E8(v12, &qword_1011B1188, &qword_100EFFAA0);
    v30 = v88;
    goto LABEL_17;
  }

  v48 = v102;
  v49 = &v12[v37];
  v50 = v92;
  (*(v102 + 32))(v92, v49, v35);
  sub_100BF905C(&qword_1011B1190, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v48 + 8);
  v51(v50, v35);
  sub_1000095E8(v16, &qword_1011B7710, &qword_100EFF6F0);
  sub_1000095E8(v18, &qword_1011B7710, &qword_100EFF6F0);
  v51(v14, v35);
  sub_1000095E8(v12, &qword_1011B7710, &qword_100EFF6F0);
  v30 = v88;
  if (v87)
  {
    goto LABEL_19;
  }

LABEL_17:
  v39 = objc_allocWithZone(UITargetedPreview);
  v40 = [v39 initWithView:v91];
  v42 = v98;
  v41 = v99;
  *v98 = v40;
  v43 = &enum case for UIPointerEffect.highlight(_:);
  v44 = v90;
  v45 = v96;
  v46 = v97;
  v47 = &selRef__replacePlaceholderViewWithView_;
LABEL_23:
  v68 = v100;
  (*(v41 + 104))(v42, *v43, v100);
  (*(v41 + 16))(v46, v42, v68);
  [v44 v47[104]];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  sub_100BF8F8C(v30, v45, type metadata accessor for SymbolButton.Configuration);
  if ((*(v102 + 48))(v45 + *(v103 + 36), 1, v101))
  {
    sub_100BF7180(v45, type metadata accessor for SymbolButton.Configuration);
    static UIPointerShape.defaultCornerRadius.getter();
    v78 = v77;
  }

  else
  {
    v79 = v93;
    UIView.Corner.radius.getter();
    sub_100BF7180(v45, type metadata accessor for SymbolButton.Configuration);
    [v44 v47[104]];
    UIView.Corner.Radius.value(in:)();
    v78 = v80;
    (*(v94 + 8))(v79, v95);
  }

  sub_100009F78(0, &qword_1011B1628, UIPointerStyle_ptr);
  v81 = v89;
  *v89 = v70;
  v81[1] = v72;
  v81[2] = v74;
  v81[3] = v76;
  v81[4] = v78;
  v82 = enum case for UIPointerShape.roundedRect(_:);
  v83 = type metadata accessor for UIPointerShape();
  v84 = *(v83 - 8);
  (*(v84 + 104))(v81, v82, v83);
  (*(v84 + 56))(v81, 0, 1, v83);
  v85 = UIPointerStyle.init(effect:shape:)();

  (*(v41 + 8))(v42, v68);
  return v85;
}

unint64_t sub_100BF80EC(uint64_t a1)
{
  result = sub_100BF8114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF8114()
{
  result = qword_1011B7778;
  if (!qword_1011B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7778);
  }

  return result;
}

unint64_t sub_100BF8168(uint64_t a1)
{
  result = sub_100BF8190();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF8190()
{
  result = qword_1011B7780;
  if (!qword_1011B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7780);
  }

  return result;
}

unint64_t sub_100BF81E4(uint64_t a1)
{
  result = sub_100BF820C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF820C()
{
  result = qword_1011B7788;
  if (!qword_1011B7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7788);
  }

  return result;
}

unint64_t sub_100BF8264()
{
  result = qword_1011B7790;
  if (!qword_1011B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7790);
  }

  return result;
}

unint64_t sub_100BF82B8(uint64_t a1)
{
  result = sub_100BF82E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF82E0()
{
  result = qword_1011B7798;
  if (!qword_1011B7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7798);
  }

  return result;
}

unint64_t sub_100BF8334(uint64_t a1)
{
  result = sub_100BF835C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF835C()
{
  result = qword_1011B77A0;
  if (!qword_1011B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B77A0);
  }

  return result;
}

void sub_100BF83B8(uint64_t a1)
{
  type metadata accessor for SymbolButton.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_100BF8794(319, &qword_1011B77F0, type metadata accessor for SymbolButton.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100BF8558(uint64_t a1)
{
  sub_1000308A0(319, &qword_1011B7860, &type metadata for SymbolButton.Background);
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &qword_1011B7868, &type metadata for SymbolButton.Material);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &unk_1011B7870, &type metadata for UIView.Border);
      if (v3 <= 0x3F)
      {
        sub_100BF8794(319, &qword_1011B1108, &type metadata accessor for UIView.Corner);
        if (v4 <= 0x3F)
        {
          sub_1000308A0(319, &qword_1011B7880, &type metadata for SymbolButton.CustomView);
          if (v5 <= 0x3F)
          {
            sub_1000308A0(319, &qword_1011B7888, &type metadata for SymbolButton.Badge);
            if (v6 <= 0x3F)
            {
              _s3__C6CGSizeVMa_1(319);
              if (v7 <= 0x3F)
              {
                sub_100BF8794(319, &qword_1011B7890, _s3__C6CGSizeVMa_1);
                if (v8 <= 0x3F)
                {
                  _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_100A21F08(319, &unk_1011B7898, &qword_1011B4940, UIColor_ptr);
                    if (v10 <= 0x3F)
                    {
                      sub_1000308A0(319, &unk_1011B78A8, &type metadata for Bool);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100BF8794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100BF87E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100BF8844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100BF88AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100BF88D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100BF8920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BF898C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100BF89D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BF8A48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100BF8AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100BF8C20(uint64_t a1)
{
  sub_100A21F08(319, &qword_1011B7AB8, &unk_1011B7AC0, UITraitCollection_ptr);
  if (v1 <= 0x3F)
  {
    sub_100BF8794(319, &qword_1011B1108, &type metadata accessor for UIView.Corner);
    if (v2 <= 0x3F)
    {
      sub_100009F78(319, &qword_1011B6520, UIFont_ptr);
      if (v3 <= 0x3F)
      {
        sub_100009F78(319, &unk_1011B7AD0, UIImageSymbolConfiguration_ptr);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIOffset(319);
          if (v5 <= 0x3F)
          {
            _s3__C6CGSizeVMa_1(319);
            if (v6 <= 0x3F)
            {
              sub_100BF8794(319, &qword_1011B7890, _s3__C6CGSizeVMa_1);
              if (v7 <= 0x3F)
              {
                _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100BF8DB0()
{
  result = qword_1011B7B20;
  if (!qword_1011B7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B20);
  }

  return result;
}

unint64_t sub_100BF8E08()
{
  result = qword_1011B7B58;
  if (!qword_1011B7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B58);
  }

  return result;
}

unint64_t sub_100BF8E60()
{
  result = qword_1011B7B90;
  if (!qword_1011B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7B90);
  }

  return result;
}

unint64_t sub_100BF8EB8()
{
  result = qword_1011B7BC8;
  if (!qword_1011B7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7BC8);
  }

  return result;
}

uint64_t sub_100BF8F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF8FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF905C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100BF90A4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;

    return sub_100030444(a4, a5);
  }

  return result;
}

void *sub_100BF90EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_100020438(a4, a5);
  }

  return result;
}

void sub_100BF9134()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100BE8E94(v6, (v0 + v4), (v0 + v5), v7);
}

uint64_t sub_100BF91E8(uint64_t a1)
{
  if (*(v1 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_100BF923C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

id sub_100BF9260(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    v8 = result;

    v9 = v8;
    v10 = a2;

    return a3;
  }

  return result;
}

__n128 sub_100BF92E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100BF9308(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100BF9364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100BF93F4()
{
  result = qword_1011B7C78;
  if (!qword_1011B7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7C78);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

void TextArray.body.getter(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_100BFA404(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v51 = v5;
    v53 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_10021D0C0(v10, v11, v12);
      v63 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_100BFA404((v15 > 1), v14 + 1, 1);
        v7 = v63;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v53;
    v4 = a3;
    v5 = v51;
  }

  v63 = a2;
  v64 = v4;
  sub_1000098E0();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v60[0] = v17;
  v60[1] = v18;
  v21 = v20 & 1;
  v61 = v20 & 1;
  v62 = v22;
  Array<A>.joined(separator:)(v60, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v63);

  sub_10011895C(v17, v19, v21);

  v23 = 0;
  v24 = v63;
  v54 = v64;
  v52 = v65;
  v25 = v66;
  v26 = v5 + 72;
  v27 = _swiftEmptyArrayStorage;
LABEL_8:
  v28 = (v26 + 48 * v23);
  while (1)
  {
    if (v6 == v23)
    {
      v63 = v27;
      sub_10010FC20(&qword_1011B1758, &qword_100F00C48);
      sub_100B246F0();
      v37 = BidirectionalCollection<>.joined(separator:)();
      v39 = v38;

      v63 = v37;
      v64 = v39;
      v40 = Text.init<A>(_:)();
      v42 = v41;
      v44 = v43;
      v45 = Text.accessibilityLabel(_:)();
      v47 = v46;
      v56 = v48;
      v59 = v49;
      sub_10011895C(v24, v54, v52);

      sub_10011895C(v40, v42, v44 & 1);

      *a4 = v45;
      *(a4 + 8) = v47;
      *(a4 + 16) = v56 & 1;
      *(a4 + 24) = v59;
      return;
    }

    if (v23 >= v6)
    {
      break;
    }

    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_20;
    }

    v31 = *v28;
    v28 += 6;
    v30 = v31;
    ++v23;
    if (v31)
    {
      v50 = v25;
      v32 = *(v28 - 7);

      v33 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100BF9974(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_100BF9974((v34 > 1), v35 + 1, 1, v27);
      }

      *(v27 + 2) = v35 + 1;
      v36 = &v27[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v30;
      v23 = v29;
      v6 = v33;
      v25 = v50;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000098E0();

  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100BF98F8@<X0>(uint64_t a3@<X8>)
{
  result = static Text.+ infix(_:_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_100BF9954@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100EC61F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

char *sub_100BF9974(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B5F90, &qword_100F06EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9AA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B1EB8, &unk_100F01CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100BF9BD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100BF9DB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7CB0, &qword_100F09E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9ED0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7CA8, &qword_100F09E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BF9FF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7C80, "0x\n");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100BFA100(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7C90, &qword_100F09E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011B7C98, &qword_100F09E48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100BFA234(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B21B0, &unk_100F088D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100BFA344(void *a1, int64_t a2, char a3)
{
  result = sub_100BAC144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA364(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA384(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA3A4(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA3C4(char *a1, int64_t a2, char a3)
{
  result = sub_100BAC64C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100BFA3E4(void *a1, int64_t a2, char a3)
{
  result = sub_100BAC758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100BFA404(char *a1, int64_t a2, char a3)
{
  result = sub_100BACA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100BFA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100BFA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100BFCE50(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  sub_100BFB65C(v9, v6, a3, a5, v21);
  sub_10011895C(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_100BFA7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v84 + 1) = a2;
  v85 = a4;
  v80 = a3;
  *&v84 = a1;
  v81 = a6;
  v83 = sub_10010FC20(&qword_1011B7D48, &qword_100F09F38);
  __chkstk_darwin();
  v8 = &v71[-v7];
  v78 = sub_10010FC20(&qword_1011B7D50, &qword_100F09F40);
  __chkstk_darwin();
  v76 = &v71[-v9];
  sub_10010FC20(&qword_1011B7D58, &qword_100F09F48);
  __chkstk_darwin();
  v11 = &v71[-v10];
  v77 = sub_10010FC20(&qword_1011B7D20, &qword_100F09F20);
  __chkstk_darwin();
  v74 = &v71[-v12];
  v82 = sub_10010FC20(&qword_1011B7CE0, &qword_100F09F00);
  __chkstk_darwin();
  v79 = &v71[-v13];
  v14 = sub_10010FC20(&qword_1011B7D30, &qword_100F09F28);
  __chkstk_darwin();
  v16 = &v71[-v15];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v75 = v8;
        if (a5 == 8)
        {
          v17 = static Color.white.getter();
          KeyPath = swift_getKeyPath();
          v19 = swift_getKeyPath();
          LOBYTE(v111) = v80 & 1;
          LOBYTE(v105) = 0;
          v119 = v84;
          LOBYTE(v120) = v80 & 1;
          *(&v120 + 1) = v85;
          *&v121 = KeyPath;
          *(&v121 + 1) = v17;
          *&v122 = v19;
          *(&v122 + 1) = 1;
          LOBYTE(v123) = 0;
          v125 = v84;
          LOBYTE(v126) = v80 & 1;
          *(&v126 + 1) = v85;
          *&v127 = KeyPath;
          *(&v127 + 1) = v17;
          *&v128 = v19;
          *(&v128 + 1) = 1;
          LOBYTE(v129) = 0;
          sub_10021D0C0(v84, *(&v84 + 1), v80 & 1);

          sub_1000089F8(&v119, &v86, &qword_1011B7D00, &qword_100F09F10);
          sub_1000095E8(&v125, &qword_1011B7D00, &qword_100F09F10);
          v20 = v122;
          v21 = v75;
          *(v75 + 2) = v121;
          *(v21 + 48) = v20;
          *(v21 + 64) = v123;
          v22 = v120;
          *v21 = v119;
          *(v21 + 16) = v22;
          swift_storeEnumTagMultiPayload();
          sub_10010FC20(&qword_1011B7D00, &qword_100F09F10);
          sub_100BFD104();
          sub_100BFD21C();
          return _ConditionalContent<>.init(storage:)();
        }

        goto LABEL_11;
      }

      v56 = static Color.white.getter();
      v75 = v56;
      v57 = swift_getKeyPath();
      v58 = v84;
      *v11 = v84;
      v59 = v80 & 1;
      v11[16] = v59;
      v80 = v59;
      *(v11 + 3) = v85;
      *(v11 + 4) = v57;
      v73 = v57;
      *(v11 + 5) = v56;
      swift_storeEnumTagMultiPayload();
      sub_10021D0C0(v58, *(&v58 + 1), v59);

      sub_10021D0C0(v58, *(&v58 + 1), v59);

      sub_10010FC20(&qword_1011B4D20, &qword_100F05838);
      sub_100BFD3F0();
      sub_100B90234();
      v60 = v74;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v60, v76, &qword_1011B7D20, &qword_100F09F20);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011B7CF0, &qword_100F09F08);
      sub_100BFD190();
      sub_100BFD364();
      v61 = v79;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v60, &qword_1011B7D20, &qword_100F09F20);
      sub_1000089F8(v61, v8, &qword_1011B7CE0, &qword_100F09F00);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_1011B7D00, &qword_100F09F10);
      sub_100BFD104();
      sub_100BFD21C();
      _ConditionalContent<>.init(storage:)();
      sub_10011895C(v84, *(&v84 + 1), v80);

      v35 = v61;
      v36 = &qword_1011B7CE0;
      v37 = &qword_100F09F00;
      return sub_1000095E8(v35, v36, v37);
    }

LABEL_9:
    v38 = static Color.secondary.getter();
    v75 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v80 & 1;
    LOBYTE(v86) = v80 & 1;
    LOBYTE(v111) = 0;
    v43 = v84;
    v92 = v84;
    LOBYTE(v93) = v80 & 1;
    v44 = v85;
    *(&v93 + 1) = v85;
    *&v94 = v40;
    *(&v94 + 1) = v39;
    *&v95 = v41;
    *(&v95 + 1) = 2;
    v96 = 0;
    v45 = swift_getKeyPath();
    v121 = v94;
    v122 = v95;
    LOBYTE(v123) = v96;
    v119 = v92;
    v120 = v93;
    v97 = v43;
    v98 = v42;
    v99 = v44;
    v100 = v40;
    v101 = v39;
    v102 = v41;
    v103 = 2;
    v104 = 0;
    sub_10021D0C0(v43, *(&v43 + 1), v42);

    sub_1000089F8(&v92, &v125, &qword_1011B7D00, &qword_100F09F10);
    sub_1000095E8(&v97, &qword_1011B7D00, &qword_100F09F10);
    v107 = v121;
    v108 = v122;
    v105 = v119;
    v106 = v120;
    *&v109 = v123;
    *(&v109 + 1) = v45;
    v110 = 1;
    v113 = v121;
    v114 = v122;
    v111 = v119;
    v112 = v120;
    v115 = v123;
    v116 = v45;
    v117 = 1;
    sub_1000089F8(&v105, &v125, &qword_1011B7D10, &qword_100F09F18);
    sub_1000095E8(&v111, &qword_1011B7D10, &qword_100F09F18);
    v127 = v107;
    v128 = v108;
    v129 = v109;
    LOBYTE(v130) = v110;
    v125 = v105;
    v126 = v106;
    v118 = 1;
    HIBYTE(v130) = 1;
    sub_1000089F8(&v105, &v119, &qword_1011B7D10, &qword_100F09F18);
    sub_1000089F8(&v105, &v119, &qword_1011B7D10, &qword_100F09F18);
    sub_10010FC20(&qword_1011B7D00, &qword_100F09F10);
    sub_10010FC20(&qword_1011B7D10, &qword_100F09F18);
    sub_100BFD21C();
    sub_100BFD2C0();
    _ConditionalContent<>.init(storage:)();
    v46 = v89;
    v121 = v88;
    v122 = v89;
    v47 = v90;
    v123 = v90;
    v48 = v91;
    v124 = v91;
    v49 = v86;
    v50 = v87;
    v119 = v86;
    v120 = v87;
    v51 = v76;
    *(v76 + 2) = v88;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v119, &v125, &qword_1011B7CF0, &qword_100F09F08);
    sub_10010FC20(&qword_1011B7CF0, &qword_100F09F08);
    sub_100BFD190();
    sub_100BFD364();
    v52 = v79;
    _ConditionalContent<>.init(storage:)();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_1000095E8(&v125, &qword_1011B7CF0, &qword_100F09F08);
    sub_1000089F8(v52, v75, &qword_1011B7CE0, &qword_100F09F00);
    swift_storeEnumTagMultiPayload();
    sub_100BFD104();
    _ConditionalContent<>.init(storage:)();
    v53 = &qword_1011B7D10;
    v54 = &qword_1011B7D10;
    v55 = &qword_100F09F18;
LABEL_12:
    sub_1000095E8(&v105, v54, v55);
    sub_1000095E8(&v105, v53, v55);
    v35 = v52;
    v36 = &qword_1011B7CE0;
    v37 = &qword_100F09F00;
    return sub_1000095E8(v35, v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v75 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v62 = static Color.primary.getter();
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    LOBYTE(v119) = v80 & 1;
    LOBYTE(v86) = 0;
    v105 = v84;
    LOBYTE(v106) = v80 & 1;
    *(&v106 + 1) = v85;
    *&v107 = v63;
    *(&v107 + 1) = v62;
    *&v108 = v64;
    *(&v108 + 1) = 1;
    LOBYTE(v109) = 0;
    v111 = v84;
    LOBYTE(v112) = v80 & 1;
    *(&v112 + 1) = v85;
    *&v113 = v63;
    *(&v113 + 1) = v62;
    *&v114 = v64;
    *(&v114 + 1) = 1;
    LOBYTE(v115) = 0;
    sub_10021D0C0(v84, *(&v84 + 1), v80 & 1);

    sub_1000089F8(&v105, &v125, &qword_1011B7D00, &qword_100F09F10);
    sub_1000095E8(&v111, &qword_1011B7D00, &qword_100F09F10);
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v125 = v105;
    v126 = v106;
    LOBYTE(v97) = 0;
    HIBYTE(v130) = 0;
    sub_1000089F8(&v105, &v119, &qword_1011B7D00, &qword_100F09F10);
    sub_1000089F8(&v105, &v119, &qword_1011B7D00, &qword_100F09F10);
    sub_10010FC20(&qword_1011B7D00, &qword_100F09F10);
    sub_10010FC20(&qword_1011B7D10, &qword_100F09F18);
    sub_100BFD21C();
    sub_100BFD2C0();
    _ConditionalContent<>.init(storage:)();
    v65 = v89;
    v121 = v88;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v91;
    v124 = v91;
    v68 = v86;
    v69 = v87;
    v119 = v86;
    v120 = v87;
    v70 = v76;
    *(v76 + 2) = v88;
    *(v70 + 3) = v65;
    *(v70 + 4) = v66;
    *(v70 + 40) = v67;
    *v70 = v68;
    *(v70 + 1) = v69;
    swift_storeEnumTagMultiPayload();
    sub_1000089F8(&v119, &v125, &qword_1011B7CF0, &qword_100F09F08);
    sub_10010FC20(&qword_1011B7CF0, &qword_100F09F08);
    sub_100BFD190();
    sub_100BFD364();
    v52 = v79;
    _ConditionalContent<>.init(storage:)();
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v130 = v91;
    v125 = v86;
    v126 = v87;
    sub_1000095E8(&v125, &qword_1011B7CF0, &qword_100F09F08);
    sub_1000089F8(v52, v75, &qword_1011B7CE0, &qword_100F09F00);
    swift_storeEnumTagMultiPayload();
    sub_100BFD104();
    _ConditionalContent<>.init(storage:)();
    v53 = &qword_1011B7D00;
    v54 = &qword_1011B7D00;
    v55 = &qword_100F09F10;
    goto LABEL_12;
  }

  v24 = static Color.secondary.getter();
  v73 = swift_getKeyPath();
  v25 = &v16[*(sub_10010FC20(&qword_1011B7D40, &qword_100F09F30) + 36)];
  v26 = *(sub_10010FC20(&qword_1011B5420, &qword_100F06048) + 28);
  v72 = enum case for Text.Case.uppercase(_:);
  v27 = type metadata accessor for Text.Case();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v25 + v26, v72, v27);
  (*(v28 + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v29 = v84;
  *v16 = v84;
  LOBYTE(v27) = v80 & 1;
  v16[16] = v80 & 1;
  v30 = v73;
  *(v16 + 3) = v85;
  *(v16 + 4) = v30;
  *(v16 + 5) = v24;
  v31 = swift_getKeyPath();
  v32 = &v16[*(v14 + 36)];
  *v32 = v31;
  *(v32 + 1) = 1;
  v32[16] = 0;
  sub_1000089F8(v16, v11, &qword_1011B7D30, &qword_100F09F28);
  swift_storeEnumTagMultiPayload();
  sub_10021D0C0(v29, *(&v29 + 1), v27);

  sub_10010FC20(&qword_1011B4D20, &qword_100F05838);
  sub_100BFD3F0();
  sub_100B90234();
  v33 = v74;
  _ConditionalContent<>.init(storage:)();
  sub_1000089F8(v33, v76, &qword_1011B7D20, &qword_100F09F20);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B7CF0, &qword_100F09F08);
  sub_100BFD190();
  sub_100BFD364();
  v34 = v79;
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v33, &qword_1011B7D20, &qword_100F09F20);
  sub_1000089F8(v34, v75, &qword_1011B7CE0, &qword_100F09F00);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_1011B7D00, &qword_100F09F10);
  sub_100BFD104();
  sub_100BFD21C();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v34, &qword_1011B7CE0, &qword_100F09F00);
  v35 = v16;
  v36 = &qword_1011B7D30;
  v37 = &qword_100F09F28;
  return sub_1000095E8(v35, v36, v37);
}

uint64_t sub_100BFB65C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v200 = a4;
  LODWORD(v190) = a2;
  v186 = a1;
  v193 = a5;
  sub_1001109D0(&unk_1011B46E0, &unk_100F05070);
  v185 = a3;
  v6 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B5420, &qword_100F06048);
  v7 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B5A00, &qword_100F06770);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for _ConditionalContent();
  v175 = *(v9 - 8);
  __chkstk_darwin();
  v174 = &v171 - v10;
  sub_10010FC20(&qword_1011B5BB8, ",h\n");
  __chkstk_darwin();
  v12 = &v171 - v11;
  v199 = v7;
  v173 = *(v7 - 8);
  __chkstk_darwin();
  v14 = &v171 - v13;
  v198 = v8;
  v177 = *(v8 - 8);
  __chkstk_darwin();
  v16 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v171 - v17;
  v19 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011B6988, &qword_100F07858);
  v176 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v181 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v180 = &v171 - v21;
  v195 = v22;
  v179 = *(type metadata accessor for _ConditionalContent() - 8);
  __chkstk_darwin();
  v178 = &v171 - v23;
  v197 = v24;
  v194 = v9;
  v183 = *(type metadata accessor for _ConditionalContent() - 8);
  __chkstk_darwin();
  v182 = &v171 - v25;
  v201 = v6;
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v28 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v171 - v29;
  v184 = *(v19 - 8);
  __chkstk_darwin();
  v32 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v187 = &v171 - v33;
  v189 = v34;
  v196 = v19;
  type metadata accessor for _ConditionalContent();
  __chkstk_darwin();
  v188 = &v171 - v35;
  v191 = v37;
  v192 = v36;
  if (v190 > 5u)
  {
    if (v190 != 6)
    {
      v38 = v26;
      if (v190 == 7)
      {
        static Color.white.getter();
        v110 = v200;
        View.foregroundColor(_:)();

        v111 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
        v264 = v110;
        v265 = v111;
        v112 = v201;
        WitnessTable = swift_getWitnessTable();
        sub_100B5B86C();
        v114 = v198;
        v115 = *(v38 + 8);
        v187 = v38 + 8;
        v190 = v115;
        v115(v28, v112);
        sub_100B5B86C();
        v116 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
        v262 = WitnessTable;
        v263 = v116;
        v117 = swift_getWitnessTable();
        v118 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
        v260 = v117;
        v261 = v118;
        v119 = swift_getWitnessTable();
        v120 = v174;
        sub_100BFA564(v28, v114, v112, v119, WitnessTable);
        v258 = WitnessTable;
        v259 = v118;
        v121 = swift_getWitnessTable();
        v186 = v121;
        v122 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
        v256 = v121;
        v257 = v122;
        v123 = swift_getWitnessTable();
        v254 = v121;
        v255 = v123;
        v124 = v197;
        v125 = swift_getWitnessTable();
        v252 = v119;
        v253 = WitnessTable;
        v126 = v194;
        v127 = swift_getWitnessTable();
        v128 = v182;
        sub_100BFA564(v120, v124, v126, v125, v127);
        (*(v175 + 8))(v120, v126);
        v250 = v125;
        v251 = v127;
        v129 = v189;
        v130 = swift_getWitnessTable();
        v56 = v188;
        sub_100BFA46C(v128, v129, v196, v130, v186);
        v131 = v128;
        v84 = v200;
        (*(v183 + 8))(v131, v129);
        v132 = v30;
        v133 = v201;
        v134 = v190;
        v190(v28, v201);
        v134(v132, v133);
        goto LABEL_14;
      }

      v39 = v200;
      if (v190 == 8)
      {
        static Color.white.getter();
        View.foregroundColor(_:)();

        v40 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
        v298 = v39;
        v299 = v40;
        v41 = v201;
        v42 = swift_getWitnessTable();
        v43 = v32;
        View.lineLimit(_:)();
        (*(v38 + 8))(v30, v41);
        v186 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
        v296 = v42;
        v297 = v186;
        v44 = v184;
        v45 = v196;
        v46 = swift_getWitnessTable();
        sub_100B5B86C();
        v190 = *(v44 + 8);
        v190(v43, v45);
        sub_100B5B86C();
        v47 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
        v294 = v46;
        v295 = v47;
        v48 = swift_getWitnessTable();
        v292 = v46;
        v293 = v48;
        v49 = swift_getWitnessTable();
        v50 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
        v290 = v42;
        v291 = v50;
        v288 = swift_getWitnessTable();
        v289 = v186;
        v286 = swift_getWitnessTable();
        v287 = v42;
        v51 = swift_getWitnessTable();
        v284 = v49;
        v285 = v51;
        v52 = v189;
        v53 = swift_getWitnessTable();
        v54 = v188;
        sub_100BFA564(v43, v52, v45, v53, v46);
        v55 = v43;
        v56 = v54;
        v57 = v190;
        v190(v55, v45);
        v57(v187, v45);
LABEL_9:
        v84 = v200;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    static Color.secondary.getter();
    v85 = v200;
    View.foregroundColor(_:)();

    v86 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
    v232 = v85;
    v233 = v86;
    v87 = v201;
    v88 = swift_getWitnessTable();
    v89 = v187;
    v90 = v88;
    v185 = v88;
    View.lineLimit(_:)();
    (*(v26 + 8))(v30, v87);
    v186 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
    v230 = v90;
    v231 = v186;
    v91 = v196;
    v92 = swift_getWitnessTable();
    v93 = v181;
    View.multilineTextAlignment(_:)();
    (*(v184 + 8))(v89, v91);
    v94 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
    v228 = v92;
    v229 = v94;
    v95 = v195;
    v96 = swift_getWitnessTable();
    sub_100B5B86C();
    v190 = *(v176 + 8);
    v190(v93, v95);
    sub_100B5B86C();
    v97 = v178;
    v177 = v92;
    sub_100BFA564(v93, v91, v95, v92, v96);
    v226 = v92;
    v227 = v96;
    v98 = v197;
    v99 = swift_getWitnessTable();
    v100 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
    v101 = v185;
    v224 = v185;
    v225 = v100;
    v222 = swift_getWitnessTable();
    v223 = v186;
    v220 = swift_getWitnessTable();
    v221 = v101;
    v102 = v194;
    v103 = swift_getWitnessTable();
    v104 = v182;
    sub_100BFA46C(v97, v98, v102, v99, v103);
    (*(v179 + 8))(v97, v98);
    v218 = v99;
    v219 = v103;
    v105 = v95;
    v106 = v196;
    v107 = v189;
    v108 = swift_getWitnessTable();
    v56 = v188;
    sub_100BFA46C(v104, v107, v106, v108, v177);
    (*(v183 + 8))(v104, v107);
    v84 = v200;
    v109 = v190;
    v190(v181, v105);
    v109(v180, v105);
    goto LABEL_14;
  }

  v172 = v18;
  if (v190 == 4)
  {
    goto LABEL_10;
  }

  v38 = v26;
  v39 = v200;
  if (v190 == 5)
  {
    static Color.secondary.getter();
    View.foregroundColor(_:)();

    v58 = enum case for Text.Case.uppercase(_:);
    v59 = type metadata accessor for Text.Case();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v12, v58, v59);
    (*(v60 + 56))(v12, 0, 1, v59);
    v61 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
    v248 = v39;
    v249 = v61;
    v62 = v201;
    v63 = swift_getWitnessTable();
    v64 = v14;
    View.textCase(_:)();
    sub_1000095E8(v12, &qword_1011B5BB8, ",h\n");
    (*(v38 + 8))(v30, v62);
    v65 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
    v246 = v63;
    v247 = v65;
    v66 = v199;
    v67 = swift_getWitnessTable();
    View.lineLimit(_:)();
    (*(v173 + 8))(v64, v66);
    v68 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
    v244 = v67;
    v245 = v68;
    v69 = v198;
    v70 = swift_getWitnessTable();
    v171 = v16;
    sub_100B5B86C();
    v190 = *(v177 + 8);
    v177 += 8;
    v190(v16, v69);
    sub_100B5B86C();
    v71 = v174;
    sub_100BFA46C(v16, v69, v201, v70, v63);
    v242 = v63;
    v243 = v68;
    v72 = swift_getWitnessTable();
    v73 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
    v240 = v72;
    v187 = v72;
    v241 = v73;
    v74 = swift_getWitnessTable();
    v238 = v72;
    v239 = v74;
    v75 = v197;
    v76 = swift_getWitnessTable();
    v236 = v70;
    v237 = v63;
    v77 = v194;
    v78 = swift_getWitnessTable();
    v79 = v182;
    sub_100BFA564(v71, v75, v77, v76, v78);
    (*(v175 + 8))(v71, v77);
    v234 = v76;
    v235 = v78;
    v80 = v196;
    v81 = v189;
    v82 = swift_getWitnessTable();
    v56 = v188;
    sub_100BFA46C(v79, v81, v80, v82, v187);
    (*(v183 + 8))(v79, v81);
    v83 = v190;
    v190(v171, v69);
    v83(v172, v69);
    goto LABEL_9;
  }

LABEL_12:
  static Color.primary.getter();
  View.foregroundColor(_:)();

  v135 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
  v216 = v39;
  v217 = v135;
  v136 = v201;
  v137 = swift_getWitnessTable();
  v138 = v184;
  v139 = v137;
  v140 = v32;
  View.lineLimit(_:)();
  (*(v38 + 8))(v30, v136);
  v141 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
  v214 = v139;
  v215 = v141;
  v142 = v196;
  v143 = swift_getWitnessTable();
  sub_100B5B86C();
  v190 = *(v138 + 8);
  v184 = v138 + 8;
  v190(v32, v142);
  sub_100B5B86C();
  v144 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
  v212 = v143;
  v213 = v144;
  v186 = v143;
  v145 = v195;
  v146 = swift_getWitnessTable();
  v147 = v178;
  sub_100BFA46C(v140, v142, v145, v143, v146);
  v210 = v143;
  v211 = v146;
  v148 = v197;
  v185 = swift_getWitnessTable();
  v149 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
  v208 = v139;
  v209 = v149;
  v206 = swift_getWitnessTable();
  v207 = v141;
  v204 = swift_getWitnessTable();
  v205 = v139;
  v150 = v194;
  v151 = swift_getWitnessTable();
  v152 = v182;
  v153 = v185;
  sub_100BFA46C(v147, v148, v150, v185, v151);
  (*(v179 + 8))(v147, v148);
  v202 = v153;
  v203 = v151;
  v154 = v200;
  v155 = v189;
  v156 = swift_getWitnessTable();
  v157 = v188;
  sub_100BFA46C(v152, v155, v142, v156, v186);
  (*(v183 + 8))(v152, v155);
  v158 = v140;
  v84 = v154;
  v56 = v157;
  v159 = v190;
  v190(v158, v142);
  v159(v187, v142);
LABEL_14:
  v160 = sub_100BFD024(&unk_1011B59D0, &unk_1011B46E0, &unk_100F05070);
  v282 = v84;
  v283 = v160;
  v161 = swift_getWitnessTable();
  v162 = sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
  v280 = v161;
  v281 = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
  v278 = v163;
  v279 = v164;
  v165 = swift_getWitnessTable();
  v276 = v163;
  v277 = v165;
  v166 = swift_getWitnessTable();
  v167 = sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
  v274 = v161;
  v275 = v167;
  v272 = swift_getWitnessTable();
  v273 = v162;
  v270 = swift_getWitnessTable();
  v271 = v161;
  v168 = swift_getWitnessTable();
  v268 = v166;
  v269 = v168;
  v266 = swift_getWitnessTable();
  v267 = v163;
  v169 = v192;
  swift_getWitnessTable();
  sub_100B5B86C();
  return (*(v191 + 8))(v56, v169);
}

double Text.with(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  v9 = sub_100BFCE50(a2, a3, a4 & 1, a5, a1);
  v11 = v10;
  v13 = v12;
  sub_100BFA7A4(v9, v10, v12 & 1, v14, v7, a6);
  sub_10011895C(v9, v11, v13 & 1);

  return result;
}

uint64_t sub_100BFCE50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      static Font.title2.getter();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      static Font.Weight.semibold.getter();
      v7 = Text.fontWeight(_:)();
      v9 = v8;
      v11 = v10;
      static Font.caption.getter();
      v5 = Text.font(_:)();

      sub_10011895C(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    static Font.body.getter();
    goto LABEL_9;
  }

  static Font.title3.getter();
LABEL_9:
  v5 = Text.font(_:)();

  return v5;
}

unint64_t sub_100BFCFB0()
{
  result = qword_1011B7CC0;
  if (!qword_1011B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CC0);
  }

  return result;
}

uint64_t sub_100BFD024(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BFD078()
{
  result = qword_1011B7CC8;
  if (!qword_1011B7CC8)
  {
    sub_1001109D0(&qword_1011B7CD0, "^x\n");
    sub_100BFD104();
    sub_100BFD21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CC8);
  }

  return result;
}

unint64_t sub_100BFD104()
{
  result = qword_1011B7CD8;
  if (!qword_1011B7CD8)
  {
    sub_1001109D0(&qword_1011B7CE0, &qword_100F09F00);
    sub_100BFD190();
    sub_100BFD364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CD8);
  }

  return result;
}

unint64_t sub_100BFD190()
{
  result = qword_1011B7CE8;
  if (!qword_1011B7CE8)
  {
    sub_1001109D0(&qword_1011B7CF0, &qword_100F09F08);
    sub_100BFD21C();
    sub_100BFD2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CE8);
  }

  return result;
}

unint64_t sub_100BFD21C()
{
  result = qword_1011B7CF8;
  if (!qword_1011B7CF8)
  {
    sub_1001109D0(&qword_1011B7D00, &qword_100F09F10);
    sub_100B90234();
    sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7CF8);
  }

  return result;
}

unint64_t sub_100BFD2C0()
{
  result = qword_1011B7D08;
  if (!qword_1011B7D08)
  {
    sub_1001109D0(&qword_1011B7D10, &qword_100F09F18);
    sub_100BFD21C();
    sub_100BFD024(&qword_1011B6980, &qword_1011B6988, &qword_100F07858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D08);
  }

  return result;
}

unint64_t sub_100BFD364()
{
  result = qword_1011B7D18;
  if (!qword_1011B7D18)
  {
    sub_1001109D0(&qword_1011B7D20, &qword_100F09F20);
    sub_100BFD3F0();
    sub_100B90234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D18);
  }

  return result;
}

unint64_t sub_100BFD3F0()
{
  result = qword_1011B7D28;
  if (!qword_1011B7D28)
  {
    sub_1001109D0(&qword_1011B7D30, &qword_100F09F28);
    sub_100BFD494();
    sub_100BFD024(&qword_1011B5A98, &qword_1011B5A00, &qword_100F06770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D28);
  }

  return result;
}

unint64_t sub_100BFD494()
{
  result = qword_1011B7D38;
  if (!qword_1011B7D38)
  {
    sub_1001109D0(&qword_1011B7D40, &qword_100F09F30);
    sub_100B90234();
    sub_100BFD024(&qword_1011B5AB0, &qword_1011B5420, &qword_100F06048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7D38);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100B3336C(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_100B3336C(v12, v11);
  sub_100B3336C(a1, v11);
  sub_1000095E8(v18, &qword_1011B1E08, &qword_100F011A0);
  sub_100C00EF4(v12);
  sub_1000095E8(v12, &qword_1011B1E08, &qword_100F011A0);
  return sub_1000095E8(a1, &qword_1011B1E08, &qword_100F011A0);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_100B3336C(v4, v4 + 416);
  return sub_100BFD7C8;
}

void sub_100BFD7C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_100B3336C(v2 + 624, v2 + 728);
    sub_100B3336C(v2 + 624, v2 + 728);
    sub_100B3336C(v2 + 104, v2 + 728);
    sub_1000095E8(v4, &qword_1011B1E08, &qword_100F011A0);
    sub_100C00EF4((v2 + 104));
    sub_1000095E8(v2 + 104, &qword_1011B1E08, &qword_100F011A0);
    sub_1000095E8(v2 + 624, &qword_1011B1E08, &qword_100F011A0);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_100B3336C(v2 + 208, v2 + 624);
    sub_100B3336C(v4, v2 + 624);
    sub_1000095E8(v2 + 416, &qword_1011B1E08, &qword_100F011A0);
    sub_100C00EF4((v2 + 208));
    sub_1000095E8(v2 + 208, &qword_1011B1E08, &qword_100F011A0);
    v28 = v4;
  }

  sub_1000095E8(v28, &qword_1011B1E08, &qword_100F011A0);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_100C02000(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_100BFDAB8;
}

void sub_100BFDAB8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_100C02000(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_100BFF3FC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

uint64_t (*VerticalToggleSlider.value.modify(uint64_t (**a1)()))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_100BFDC30;
  }

  return result;
}

void sub_100BFDC30(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_100BFF3FC(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x8000000100E67CB0;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x8000000100E67D00;
    String.append(_:)(v4);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_10121B560);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = sub_100010744(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_100BFDF38;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(145);
    v2._object = 0x8000000100E67CB0;
    v2._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v2);
    Float.write<A>(to:)();
    v3._countAndFlagsBits = 3026478;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 0xD000000000000048;
    v4._object = 0x8000000100E67D00;
    String.append(_:)(v4);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_10121B560);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      v10 = sub_100010744(0, 0xE000000000000000, v11);

      *(v8 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_10000959C(v9);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_100BFE1D0;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(164);
    v3._object = 0x8000000100E67CB0;
    v3._countAndFlagsBits = 0xD000000000000042;
    String.append(_:)(v3);
    Float.write<A>(to:)();
    v4._countAndFlagsBits = 3026478;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    Float.write<A>(to:)();
    v5._countAndFlagsBits = 0xD00000000000005BLL;
    v5._object = 0x8000000100E67D50;
    String.append(_:)(v5);
    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_10121B560);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136446210;
      v11 = sub_100010744(0, 0xE000000000000000, v12);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      sub_10000959C(v10);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

uint64_t (*VerticalToggleSlider.valueRange.modify(uint64_t (*result)()))()
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_100BFE4AC;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_100BFFE10(0x100000000);
    v5 = sub_100BFF9F8();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_100BFE6BC;
}

void sub_100BFE6BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_100BFFE10(0x100000000);
      v8 = sub_100BFF9F8();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_100BFF974();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100BFEB7C;
}

void sub_100BFEB7C(id **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = *(*a1 + 40);
  v7 = v4[v5];
  v4[v5] = v6;
  if ((a2 & 1) == 0)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (((v6 ^ v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = [v3[3] isEnabled] ^ 1;
LABEL_8:
  v9 = *(v3[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v9)
  {
    v10 = 0.4;
    if (!v8)
    {
      v10 = 1.0;
    }

    [v9 setAlpha:v10];
  }

  v11 = sub_100BFF974();
  v12 = v11;
  v13 = 1.0;
  if (v8)
  {
    v13 = 0.5;
  }

  [v11 setAlpha:v13];

LABEL_15:

  free(v3);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_100C007E8();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100BFEF7C;
}

void sub_100BFEF7C(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_100C007E8();
  }

  free(v2);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_100BFF340();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v8 = sub_100C011C0(v6, v5, v7).n128_u64[0];
  v10 = v9;

  [v4 setAnchorPoint:{v8, v10}];
  v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v11 setFrame:?];
}

uint64_t (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100BFF19C;
}

void sub_100BFF19C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_100BFF340();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v10 = sub_100C011C0(v8, v7, v9).n128_u64[0];
    v12 = v11;

    [v6 setAnchorPoint:{v10, v12}];
    v13 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v13 setFrame:?];
  }

  free(v3);
}

id sub_100BFF28C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100BFF340()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_100BFF28C();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_100BFF3FC(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_100BFFE10(0x100000000);
      v10 = sub_100BFF9F8();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_100BFF508()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100BFF580()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_100BFF974();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_100BFF9F8();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_100C00570();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_100C01F50;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10003640C;
    v20[3] = &unk_1010E9308;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_100BFF9F8();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100BFF8B4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_100BFF974();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_100BFF974()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100BFF9F8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_100BFF974();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_100BFFAB4()
{
  v1 = sub_100BFF340();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v9 = sub_100C011C0(v7, v5, v8).n128_u64[0];
  v11 = v10;

  [v6 setAnchorPoint:{v9, v11}];
  v12 = *&v0[v2];
  [v0 bounds];
  [v12 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v13 = sub_100BFF28C();
  [v13 setClipsToBounds:1];

  v14 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v14] setAutoresizingMask:18];
  v15 = *&v0[v2];
  v16 = *&v0[v14];
  [v15 bounds];
  [v16 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v14]];
}

void sub_100BFFC74()
{
  v1 = sub_100BFF9F8();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_100BFF974();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_100BFFE10(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_100BFFE10(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_100BFF9F8();
    v2 = sub_100BFF974();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_100BFF974();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_100BFF9F8();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}