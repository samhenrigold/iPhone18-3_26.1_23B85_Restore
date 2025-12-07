void sub_10010B124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v200 = a6;
  v208 = a2;
  v11 = a5;
  v12 = sub_10076BF6C();
  __chkstk_darwin(v12 - 8);
  v199 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100763ADC();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10076BEDC();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10076C5FC();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v189 = &v183 - v18;
  v212 = sub_10076B96C();
  v207 = *(v212 - 1);
  __chkstk_darwin(v212);
  v188 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v211 = &v183 - v21;
  v22 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v22 - 8);
  v206 = &v183 - v23;
  v24 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v24 - 8);
  v205 = &v183 - v25;
  v26 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v26 - 8);
  v204 = &v183 - v27;
  v28 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v28 - 8);
  v203 = &v183 - v29;
  v30 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v30 - 8);
  v202 = &v183 - v31;
  v32 = sub_10076A3AC();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v201 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v35 - 8);
  v210 = &v183 - v36;
  v209 = sub_10076C7EC();
  v215 = *(v209 - 8);
  __chkstk_darwin(v209);
  v187 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v183 - v39;
  v41 = v7[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v218 = a4;
  v42 = sub_10076C7BC();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v43 layoutDirection];
  sub_1007708DC();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v213 = a1;
  v52 = sub_10076A0AC();
  v214 = v7;
  v216 = v52;
  v217 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = sub_10076C78C();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v58 = v55;
    v57 = v57;
    v59 = sub_100770EEC();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_1003EB8BC();
  v58 = v55;
LABEL_13:

  v61 = v214;
  v62 = v217;
  v63 = *(*(*&v214[v217] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v64 = v218;
  v65 = sub_10076C78C();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v67 = sub_10076C7CC();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = sub_10076C7CC();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = sub_10076C78C();
  [v70 setTextColor:v71];

  v72 = v215;
  v73 = *(v215 + 16);
  v74 = v209;
  v186 = v215 + 16;
  v185 = v73;
  v73(v40, v64, v209);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v184 = v76;
  v77 = v76(v40, v74);
  v183 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v217;
    [*(v61 + v217) setOverrideUserInterfaceStyle:{0, v183}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v217;
      [*(v61 + v217) setOverrideUserInterfaceStyle:{2, v183}];
    }

    else
    {
      v78 = v217;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v217) setOverrideUserInterfaceStyle:{1, v183}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    v80 = sub_10076C78C();
    [v79 setTintColor:v80];
  }

  v215 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v201, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v202;
  v82(v202, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_10010DA4C(&unk_1009492B0, 255, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v210;
  sub_10076759C();
  v86 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView];
  v88 = sub_10076BB5C();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v90 = sub_10075F78C();
  v91 = v203;
  (*(*(v90 - 8) + 56))(v203, 1, 1, v90);
  v92 = sub_1007628DC();
  v93 = v204;
  (*(*(v92 - 8) + 56))(v204, 1, 1, v92);
  v94 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v95 = v205;
  (*(*(v94 - 8) + 56))(v205, 1, 1, v94);
  v96 = sub_10076C54C();
  v97 = v206;
  (*(*(v96 - 8) + 56))(v206, 1, 1, v96);
  sub_1004D0A60(v216, v89, v85, v208, 1, 0, v91, v93, v97, v95);
  sub_10000CFBC(v97, &unk_100949290, &unk_10078BBF0);
  v89[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v89 setNeedsLayout];
  sub_10000CFBC(v95, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v93, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v91, &unk_10094D210, &qword_10078DE20);
  v98 = v211;
  sub_10076BB7C();
  v99 = sub_10076BA5C();
  v101 = v100;
  v206 = sub_10076BABC();
  v103 = v102;
  v104 = sub_10076BA7C();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v207;
    v108 = v188;
    (*(v207 + 16))(v188, v106, v212);
    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    sub_10076F64C();
    sub_10076FC1C();
    v110 = aBlock;
    v109 = v220;
    type metadata accessor for CrossLinkPresenter(0);
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v182 = v110;
    v61 = v214;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v206, v103, v105 & 1, v84, &off_1008922A8, v182, v109);
    (*(v107 + 8))(v211, v212);
    sub_10000CFBC(v210, &unk_100946760, &unk_100787A20);
    v115 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v218;

    v117 = &qword_100953000;
    v118 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_100354258(0, 0);

    (*(v207 + 8))(v98, v212);
    sub_10000CFBC(v85, &unk_100946760, &unk_100787A20);
    v117 = &qword_100953000;
    v118 = &selRef_initWithTabBarSystemItem_tag_;
    v116 = v218;
  }

  v120 = v217;
  v121 = *(*(v61 + v217) + v117[299]);
  v122 = *(v121 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = sub_10076C7CC();
    [v123 v118[252]];

    v121 = *(*&v120[v61] + v117[299]);
  }

  v125 = &OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = sub_10076C7CC();
  [v127 v118[252]];

  v129 = *(*(*&v120[v61] + v117[299]) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_100940A98;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = sub_10076D3DC();
    v133 = sub_10000A61C(v132, qword_1009A0DD8);
    v134 = *(v132 - 8);
    v135 = v189;
    (*(v134 + 16))(v189, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    sub_1007625DC();

    v136 = *(*(*&v120[v61] + v117[299]) + *v125);
    v118 = &selRef_initWithTabBarSystemItem_tag_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = sub_10076C78C();
    [v138 v118[252]];

    if (!sub_10076A0BC())
    {
      break;
    }

    v211 = *(v61 + v137);
    v140 = sub_10076C5AC();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v212 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_1000275EC;
    *(v142 + 24) = v117;
    v223 = sub_1000ACB04;
    v224 = v142;
    aBlock = _NSConcreteStackBlock;
    v220 = 1107296256;
    v221 = sub_100026610;
    v222 = &unk_100889050;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v212 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v211;
      [v211 setAttributedText:v120];

      v61 = v214;
      v144 = *&v214[v137];
      v145 = v190;
      sub_10076C60C();
      v146 = v191;
      v147 = v192;
      v148 = (*(v191 + 88))(v145, v192);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v217;
        v116 = v218;
      }

      else
      {
        v120 = v217;
        v116 = v218;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_100109FA4(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  sub_10076A0AC();
  v150 = sub_10076BB5C();

  if (v150)
  {
    v151 = v193;
    sub_10076BEEC();
    v152 = sub_10076BE9C();
    (*(v194 + 8))(v151, v195);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v197;
    v156 = v153 + v154;
    v157 = v196;
    v158 = v198;
    (*(v197 + 16))(v196, v156, v198);
    sub_1007639AC();
    (*(v155 + 8))(v157, v158);
    sub_10076BFCC();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v159 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(*&v120[v61] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    sub_10075FD2C();
    sub_10010DA4C(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v161 = v160;
    sub_100760B8C();

    v162 = sub_10076BE1C();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = sub_10076A09C();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1007841E0;
    *(v171 + 32) = v168;
    sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
    isa = sub_1007701AC().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v187;
  v174 = v209;
  v185(v187, v116, v209);
  v175 = v184(v173, v174);
  if (v175 == HIDWORD(v183) || v175 == v183)
  {
    v170 = *(v61 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:sub_10076A08C() & 1];

    return;
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = sub_10076A09C();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1007841E0;
    *(v179 + 32) = v177;
    sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
    v180 = v177;
    v181 = sub_1007701AC().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v220 = 0xE000000000000000;
  sub_10077145C(44);

  aBlock = 0xD00000000000002ALL;
  v220 = 0x80000001007D3D40;
  v225._countAndFlagsBits = sub_10076C7DC();
  sub_1007700CC(v225);

  sub_10077156C();
  __break(1u);
}

void sub_10010CD9C()
{
  v1 = v0;
  v2 = sub_10076BF6C();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_10075FCCC();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_10075FCEC(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FD2C();
  sub_10010DA4C(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_100760BFC();
}

void sub_10010CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_10076A0CC();
        if (swift_dynamicCastClass())
        {
          sub_10076A0AC();
          sub_10076BACC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10010D2A4(char *a1, char a2)
{
  if (a2)
  {
    sub_10010A4C0(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

double sub_10010D2DC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

double sub_10010D328()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1007639AC();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

double sub_10010D4AC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10010D50C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

void sub_10010D5A4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10010D624()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_10010D680(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_10010D740(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012498(v7, v5 + 32);
  return sub_10010DBBC;
}

uint64_t sub_10010D808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_10076A03C();
}

uint64_t sub_10010D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_10076A02C();
}

void sub_10010D8B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FB6C();

  v6 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FD2C();
  sub_10010DA4C(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100760BFC();
}

uint64_t sub_10010D9A8(uint64_t a1, uint64_t a2)
{
  result = sub_10010DA4C(&qword_1009491D0, a2, type metadata accessor for TodayCardMarketingLockupOverlayView, &unk_10078BB04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10010DA4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10010DA94()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10010DAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10010DB04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010DB3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010DB74()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10010DBC8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_10010DCB0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

char *sub_10010DF04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_100763ADC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  *&v5[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v26 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  v27 = qword_10093FBE8;
  v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v14, qword_10099DDB8);
  (*(v15 + 16))(v17, v29, v14);
  v30 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v15 + 24))(&v28[v30], v17, v14);
  swift_endAccess();
  [v28 setNeedsLayout];

  (*(v15 + 8))(v17, v14);
  v31 = qword_100941140;
  v32 = *(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D3DC();
  v34 = sub_10000A61C(v33, qword_1009A21B8);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v36(v13, v34, v33);
  v37 = *(v35 + 56);
  v37(v13, 0, 1, v33);
  sub_1007625DC();

  v38 = qword_100941148;
  v39 = *(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v33, qword_1009A21D0);
  v36(v13, v40, v33);
  v37(v13, 0, 1, v33);
  sub_1007625DC();

  v41 = [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v25[v26] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  v42 = [*&v25[v26] layer];
  [v42 setAllowsGroupBlending:0];

  v43 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  v44 = *&v25[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_1003E4478(20.0);

  [v25 addSubview:*&v25[v43]];
  v45 = [*&v25[v43] contentView];
  [v45 addSubview:*&v25[v26]];

  v46 = [*&v25[v43] contentView];
  v47 = [v46 layer];

  [v47 setAllowsGroupBlending:0];
  return v25;
}

uint64_t sub_10010E520()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076DFAC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_10076422C();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
  v15[3] = type metadata accessor for SmallLockupView(0);
  v15[4] = sub_10010F890(&qword_100949328, type metadata accessor for SmallLockupView, &unk_100797C8C);
  v15[0] = v8;
  sub_10000A570(v15, v13);
  v14[3] = sub_10076E04C();
  v14[4] = &protocol witness table for Margins;
  sub_10000DB7C(v14);
  v9 = v8;
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v15);
  sub_10076422C();
  v10 = [v0 traitCollection];
  sub_10076E0EC();

  return (*(v3 + 8))(v6, v2);
}

double sub_10010E7A0(double a1, double a2)
{
  v5 = sub_10076DFAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002617F8(v14);
  sub_10000A570(v14, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v14);
  v9 = sub_10010F484(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

void sub_10010E96C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v19 = &v34 - v18;
  v20 = sub_10076709C();
  if (v20)
  {
    v21 = v20;
    v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView];
    [v22 setHidden:0];
    v23 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = sub_10075F78C();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_1007628DC();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = sub_10076C54C();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_1004D0A60(v21, v22, v19, a2, 0, 0, v16, v13, v7, v10);
    sub_10000CFBC(v7, &unk_100949290, &unk_10078BBF0);
    v22[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v22 setNeedsLayout];
    sub_10000CFBC(v10, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v13, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v16, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v19, &unk_100946760, &unk_100787A20);
    v28 = *&v22[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
    v30 = *&v22[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
    sub_1000325F0();
    v31 = v30;
    v32 = sub_100770D1C();
    [v31 setTextColor:v32];

    [*&v22[v29] _setTextColorFollowsTintColor:0];
    v33 = [*&v22[v29] layer];
    [v33 setCompositingFilter:kCAFilterPlusL];

    [v3 setNeedsLayout];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView] setHidden:1];

    [v2 setNeedsLayout];
  }
}

void sub_10010EEA8()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076BEDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076709C())
  {
    v6 = sub_10076BB9C();

    if (v6)
    {
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v3 + 8))(v5, v2);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v7 = sub_100763ADC();
      sub_10000A61C(v7, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView);
      v9 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v10 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v10 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      v11 = *(v8 + v9);
      sub_10075FD2C();
      sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v12 = v11;
      sub_100760B8C();
    }
  }
}

double sub_10010F1FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

void sub_10010F224()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

double sub_10010F314(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = [v2 traitCollection];
    v8 = type metadata accessor for SnapshotPageTraitEnvironment();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v10 = a1;
    v10[1] = a2;
    *&v9[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
    v27.receiver = v9;
    v27.super_class = v8;
    v11 = objc_msgSendSuper2(&v27, "init");
    v12 = [v11 traitCollection];
    v13 = sub_1007706CC();

    if (v13)
    {
      [v11 pageContainerSize];
      sub_1006D502C(v14, v15);
      v17 = v16 + v16;
      PageTraitEnvironment.pageColumnMargin.getter();
      v19 = v18;

      return v17 + v19;
    }

    else
    {
      [v11 pageMarginInsets];
      v21 = v20;
      v23 = v22;
      [v11 pageContainerSize];
      v25 = v24;

      return v25 - v21 - v23;
    }
  }

  return a1;
}

double sub_10010F484(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_10076DFEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_10076DFAC();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_10000DB7C(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10010F314(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000A570(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_10076DFFC();
    v46 = &protocol witness table for Resize;
    sub_10000DB7C(v44);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v28 = v27;
    v30 = v29;
    sub_10000A570(v47, v43);
    sub_10076DACC();
    v32 = v31;
    v34 = v33;
    v45 = sub_10076E0CC();
    v46 = &protocol witness table for Constrain;
    sub_10000DB7C(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_10076E0DC();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v44, v45);
  v37 = [a2 traitCollection];
  sub_10076E0FC();
  v39 = v38;

  sub_10000CD74(v44);
  sub_10000CD74(v47);
  return v39;
}

uint64_t sub_10010F890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10010F8D8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView(0);
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28CarouselItemModuleLockupView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_10010F99C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A12D0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v18] = sub_1007626AC();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_10076262C();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_10010FE20(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = sub_10076DD3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = sub_10076DA7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076DD2C();
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A12D0);
  sub_10076DCFC();
  (*(v7 + 8))(v9, v6);
  sub_10076DA5C();

  sub_10076DA9C();
  v16 = [a3 traitCollection];
  sub_10076DA6C();
  v18 = v17;

  (*(v12 + 8))(v14, v11);
  return v18;
}

void sub_100110094()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel;
  if (qword_100940C48 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A12D0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001102DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100110324(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10011038C(double a1)
{
  v2 = v1;
  v4 = sub_1007604DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v40.a = 1.0;
  v41 = v2[4];
  v12 = *(v5 + 104);
  v32 = enum case for TimingCurve.easeInOut(_:);
  v36 = v4;
  v34 = v5 + 104;
  v31 = v12;
  v12(v7);
  sub_1007607FC();
  sub_1007607DC();
  v13 = *(v9 + 8);
  v35 = v8;
  v33 = v9 + 8;
  v30 = v13;
  v13(v11, v8);
  CGAffineTransformMakeScale(&v40, v40.a, v40.a);
  v38 = *&v40.a;
  v39 = *&v40.c;
  tx = v40.tx;
  ty = v40.ty;
  v16 = sub_100111494(v2[2], a1);
  v37 = v2;
  v17 = *v2;
  if (*v2 >> 62)
  {
    v18 = sub_10077158C();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = 0;
  v20 = *(v37 + 24);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = sub_10077149C();
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v21;
    *&v40.a = v38;
    *&v40.c = v39;
    v40.tx = tx;
    v40.ty = ty;
    [v21 setTransform:&v40];
    if (v20)
    {
      [v22 _setContinuousCornerRadius:v16];
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_12:
  v40.a = 1.0;
  v41 = 0;
  v31(v7, v32, v36);
  sub_1007607FC();
  v23 = v35;
  sub_1007607DC();
  v30(v11, v23);
  a = v40.a;
  v25 = v37[1];
  if (v25 >> 62)
  {
    v26 = sub_10077158C();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = sub_10077149C();
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_10011078C()
{
  v1 = objc_opt_self();
  v2 = *v0;
  v19 = v0[1];
  v20 = v2;
  v3 = v0[2];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  v17 = sub_1001113C8;
  v18 = v4;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10009AEDC;
  v16 = &unk_100889308;
  v6 = _Block_copy(&aBlock);
  sub_1001113D0(&v20, v12);
  sub_1001113D0(&v19, v12);
  v7 = v3;

  v8 = swift_allocObject();
  v9 = *(v0 + 1);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = v0[4];
  v17 = sub_10011148C;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000513F0;
  v16 = &unk_100889358;
  v10 = _Block_copy(&aBlock);
  sub_1001113D0(&v20, v12);
  sub_1001113D0(&v19, v12);
  v11 = v7;

  [v1 animateWithDuration:v6 animations:v10 completion:0.15];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_100110974(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_10077158C();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x3FF0000000000000;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [v5 setTransform:v13];
    if (v4)
    {
      [v6 _setContinuousCornerRadius:0.0];
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_12:
  v7 = a1[1];
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_100110B14(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >> 62)
  {
    v9 = a2;
    v10 = sub_10077158C();
    a2 = v9;
    v3 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 24);
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
        if (v5)
        {
LABEL_10:
          v7 = v6;
          v8 = [v6 layer];
          [v8 setMaskedCorners:15];

          v6 = v8;
        }
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_100110C18()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_10077158C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform:v6];
    }

    while (v2 != v3);
  }
}

void sub_100110CFC(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v35 = sub_1007604DC();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if (a1 >> 62)
  {
    v14 = sub_10077158C();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = enum case for TimingCurve.easeInOut(_:);
    v22 = *(v7 + 104);
    goto LABEL_12;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = a2;
  v15 = 0;
  v16 = a1;
  v33 = a1 & 0xC000000000000001;
  v34 = enum case for TimingCurve.easeInOut(_:);
  v17 = v7 + 104;
  v18 = (v11 + 8);
  v30 = v17 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v11;
  do
  {
    v23 = v14;
    if (v33)
    {
      v19 = sub_10077149C();
    }

    else
    {
      v19 = *(v16 + 8 * v15 + 32);
    }

    v20 = v19;
    ++v15;
    [v19 frame];
    Height = CGRectGetHeight(v38);
    v36.a = 0.0;
    v37 = Height * a4;
    v22 = *v17;
    (*v17)(v9, v34, v35);
    sub_1007607FC();
    sub_1007607DC();
    (*v18)(v13, v10);
    CGAffineTransformMakeTranslation(&v36, 0.0, v36.a);
    [v20 setTransform:&v36];

    v14 = v23;
  }

  while (v23 != v15);
  v11 = v31;
  a2 = v32;
  v24 = v34;
LABEL_12:
  v36.a = 1.0;
  v37 = 0.0;
  v22(v9, v24, v35);
  sub_1007607FC();
  sub_1007607DC();
  (*(v11 + 8))(v13, v10);
  a = v36.a;
  if (a2 >> 62)
  {
    v26 = sub_10077158C();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = sub_10077149C();
    }

    else
    {
      v28 = *(a2 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1001110CC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_10077158C();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10077149C();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = sub_10077158C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_10011124C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v7[4] = sub_1001113A4;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10009AEDC;
  v7[3] = &unk_1008892B8;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:v6 animations:0.15];
  _Block_release(v6);
}

uint64_t sub_100111364()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1001113B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001113D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009453D0, &unk_100787870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100111444()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100111494(void *a1, double a2)
{
  v3 = sub_1007604DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094B450, &qword_10078BDE0);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v14 - v10;
  if ([a1 userInterfaceIdiom] == 1)
  {
    v12 = 0x4040000000000000;
  }

  else
  {
    [a1 displayCornerRadius];
  }

  v15 = *&v12;
  v14 = 0x4034000000000000;
  (*(v4 + 104))(v6, enum case for TimingCurve.easeInOut(_:), v3);
  sub_1007607FC();
  sub_1007607DC();
  (*(v8 + 8))(v11, v7);
  return v15;
}

unint64_t sub_1001116A8()
{
  result = qword_100949360;
  if (!qword_100949360)
  {
    type metadata accessor for HeroCarouselCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949360);
  }

  return result;
}

double sub_100111718()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10076FF6C();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_10077123C();
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
      return v5;
    }
  }

  else
  {
    sub_1000258C0(v8);
  }

  Main = JUScreenClassGetMain();
  result = 560.0;
  if (Main == 1)
  {
    return 526.0;
  }

  return result;
}

void sub_100111894()
{
  v1 = sub_10076C38C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000A5D4(&unk_1009566C0, &qword_10078BEC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-v6];
  sub_10076C61C();
  sub_100111D5C(&qword_100949370, &type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  sub_10076332C();
  if (aBlock[0])
  {
    sub_100111DA4();
    sub_10076335C();
    sub_10076FD8C();
    v33 = v4;
    v34 = v0;
    v31 = v7;
    v32 = v5;
    v29 = v2;
    v30 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v28 = sub_10076C56C();
    }

    else
    {
      v28 = LOBYTE(aBlock[0]);
    }

    v8 = sub_10076C5AC();
    swift_getKeyPath();
    sub_10076338C();

    v9 = aBlock[6];
    v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
    v11 = [v8 length];
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000275EC;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1000ACB04;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    aBlock[3] = &unk_1008893D0;
    v14 = _Block_copy(aBlock);
    v15 = v9;
    v16 = v10;

    [v8 enumerateAttributesInRange:0 options:v11 usingBlock:{0x100000, v14}];

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v20 = v16;
      v21 = v35;
      sub_10076338C();

      sub_10076C2FC();
      v23 = v22;
      v25 = v24;
      (*(v29 + 8))(v21, v30);
      v26 = sub_100630CB4();
      swift_getObjectType();
      sub_1003899C8(v16, v28 & 1, v26, UIEdgeInsetsZero.top, left, bottom, right, v23, v25);

      swift_unknownObjectRelease();

      (*(v32 + 8))(v31, v33);
    }
  }
}

uint64_t sub_100111D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100111DA4()
{
  result = qword_100949378;
  if (!qword_100949378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949378);
  }

  return result;
}

uint64_t sub_100111DFC()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100111E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100111ED0(double a1, uint64_t a2, uint64_t *a3, void **a4)
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

char *sub_100112040(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v67 - v10);
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay(0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v71.receiver = v4;
  v71.super_class = v27;
  v28 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_100941110;
  v35 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D3DC();
  v37 = sub_10000A61C(v36, qword_1009A2128);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v69 = *(v38 + 56);
  v69(v11, 0, 1, v36);
  sub_1007625DC();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v68 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v70 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  v48 = qword_100941120;
  v49 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v36, qword_1009A2158);
  v39(v11, v50, v36);
  v51 = v69;
  v69(v11, 0, 1, v36);
  sub_1007625DC();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v67 = v47;
  v53 = v68;
  v54 = [v68 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_1007625DC();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v70]];
  [v63 addSubview:*&v32[v67]];
  [v63 addSubview:*&v32[v55]];
  sub_1001135B4(v65);

  return v63;
}

uint64_t sub_100112988@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_10076D65C();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v54 = &v52[-v6];
  __chkstk_darwin(v7);
  v55 = &v52[-v8];
  __chkstk_darwin(v9);
  v56 = &v52[-v10];
  v11 = sub_100766F4C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v52[-v16];
  v18 = sub_10076703C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_100766F6C();
  (*(v19 + 8))(v21, v18);
  v23.n128_f64[0] = (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_10011430C(v23);
  sub_10077018C();
  sub_10077018C();
  if (v61 == v64)
  {
    v53 = 1;
  }

  else
  {
    v53 = sub_10077167C();
  }

  v24 = *(v12 + 8);
  v24(v14, v11);
  v24(v17, v11);

  sub_10076D63C();
  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  v26 = sub_1007626BC();
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v25;
  v27 = swift_allocObject();
  v28 = v4;
  v29 = ObjectType;
  *(v27 + 16) = v2;
  *(v27 + 24) = v29;
  v30 = v25;
  v31 = v2;
  v32 = v54;
  sub_10076D64C();

  v33 = *(v60 + 8);
  v34 = v58;
  v33(v28, v58);
  sub_10000CD74(&v61);
  v35 = *&v31[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v29;
  v37 = v31;
  v38 = v35;
  v39 = v55;
  sub_10076D64C();

  v33(v32, v34);
  sub_10000CD74(&v61);
  v40 = *&v37[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v40;
  v41 = swift_allocObject();
  v42 = ObjectType;
  *(v41 + 16) = v37;
  *(v41 + 24) = v42;
  v43 = v37;
  v44 = v40;
  v45 = v56;
  sub_10076D64C();

  v33(v39, v34);
  sub_10000CD74(&v61);
  if (v53)
  {
    v62 = v34;
    v63 = &protocol witness table for VerticalStack;
    v46 = sub_10000DB7C(&v61);
    (*(v60 + 16))(v46, v45, v34);
    sub_10076DF7C();
    v47 = sub_10076DFAC();
    v48 = v57;
    v57[3] = v47;
    v48[4] = &protocol witness table for Center;
    sub_10000DB7C(v48);
    sub_10076DFBC();
    return (v33)(v45, v34);
  }

  else
  {
    v50 = v57;
    v57[3] = v34;
    v50[4] = &protocol witness table for VerticalStack;
    v51 = sub_10000DB7C(v50);
    return (*(v60 + 32))(v51, v45, v34);
  }
}

uint64_t sub_100112F9C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
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
  v17 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
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

uint64_t sub_100113234(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100766F4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076703C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  sub_100766F6C();
  (*(v9 + 8))(v11, v8);
  sub_100766F2C();
  (*(v5 + 8))(v7, v4);
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70, &unk_10078BF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v14 = sub_10076D60C();
  *(inited + 32) = v14;
  v15 = sub_10076D61C();
  *(inited + 40) = v15;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v14)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v15)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (qword_10093F7C8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D9AC();
  v17 = sub_10000A61C(v16, qword_1009493B0);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_10000DB7C(v23);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  sub_10076D5BC();
  if (qword_10093F7D0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v16, qword_1009493C8);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_10000DB7C(v23);
  v19(v21, v20, v16);
  return sub_10076D5CC();
}

id sub_1001135B4(__n128 a1)
{
  v2 = v1;
  v48 = sub_100766FCC();
  v56 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v46 - v5;
  __chkstk_darwin(v6);
  v46 = &v46 - v7;
  v8 = sub_100766F4C();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076703C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v46 - v15;
  __chkstk_darwin(v16);
  v53 = &v46 - v17;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v22 = *(v12 + 16);
  (v22)(v20, &v1[v21], v11);
  sub_100766F6C();
  v23 = *(v12 + 8);
  v23(v20, v11);
  v24 = [v1 traitCollection];
  v25 = sub_100766F3C();

  v54[1](v10, v55);
  v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  v52 = v25;
  [v26 setTextAlignment:v25];
  v54 = v22;
  v55 = v21;
  v27 = &v2[v21];
  v28 = v2;
  v29 = v53;
  (v22)(v53, v27, v11);
  v30 = v46;
  sub_100766FDC();
  v31 = v29;
  v32 = v11;
  v53 = (v12 + 8);
  v23(v31, v11);
  v33 = sub_100766F9C();
  v34 = *(v56 + 8);
  v35 = v48;
  v56 += 8;
  v34(v30, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() secondaryLabelColor];
  }

  [v26 setTextColor:v33];

  v36 = *&v28[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  [v36 setTextAlignment:v52];
  v37 = v47;
  v38 = v32;
  (v54)(v47, &v28[v55], v32);
  v39 = v49;
  sub_100766FDC();
  v23(v37, v38);
  v40 = sub_100766FAC();
  v34(v39, v35);
  if (!v40)
  {
    v40 = [objc_opt_self() labelColor];
  }

  [v36 setTextColor:v40];

  v41 = *&v28[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  [v41 setTextAlignment:v52];
  v42 = v50;
  (v54)(v50, &v28[v55], v38);
  v43 = v51;
  sub_100766FDC();
  v23(v42, v38);
  v44 = sub_100766F8C();
  v34(v43, v35);
  if (!v44)
  {
    v44 = [objc_opt_self() labelColor];
  }

  [v41 setTextColor:v44];

  return [v28 setNeedsLayout];
}

id sub_100113C08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay(uint64_t a1)
{
  result = qword_100949430;
  if (!qword_100949430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100113D54(uint64_t a1)
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

double sub_100113E00(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001CE50(a1, a2);
  sub_10001CE50(a1, a2);
  v8 = sub_1000167E0(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000167E0(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000167E0(a1, a2);
}

id sub_100113EB4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_10076FF6C();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_10076FF6C();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_10076FF6C();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_1001140E4()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076704C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_1001135B4(v7);
  (*(v3 + 8))(v5, v2);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel];
  sub_1007670AC();
  if (v9)
  {
    v10 = sub_10076FF6C();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel];
  sub_1007670BC();
  if (v12)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel];
  v15 = sub_10076707C();
  v17 = sub_100113EB4(v15, v16, [v1 effectiveUserInterfaceLayoutDirection]);

  [v14 setAttributedText:v17];

  return [v1 setNeedsLayout];
}

unint64_t sub_10011430C(__n128 a1)
{
  result = qword_100949440;
  if (!qword_100949440)
  {
    sub_100766F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949440);
  }

  return result;
}

uint64_t sub_100114364()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10011441C(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  sub_100766FBC();
  sub_100766F5C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_titleLabel;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_callToActionLabel;
  *(v1 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v1 + v15) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v16 = (v1 + OBJC_IVAR____TtC20ProductPageExtension23CarouselItemTextOverlay_selectionHandler);
  *v16 = 0;
  v16[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001146C8()
{
  sub_10000A5D4(&unk_100948AD0, "ޢ\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0, &qword_10078B350);
  result = swift_arrayDestroy();
  qword_100949450 = v1;
  return result;
}

uint64_t sub_1001148E4(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10000A5D4(&qword_1009494D0, qword_10078C020);
  sub_10000DB18(v5, a4);
  sub_10000A61C(v5, a4);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for CGPoint(0);
  return sub_10075FDDC();
}

char *sub_100114984(double a1, double a2, double a3, double a4)
{
  v9 = sub_1007604EC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView(0);
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_10093F7D8;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
  isa = sub_10076FE3C().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_100115444(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100783DD0;
  *(v28 + 32) = sub_10076E88C();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v32);
  return v20;
}

uint64_t sub_100114D64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_1001162A4(v1 + v3, a1, v4);
}

double sub_100114DC0(uint64_t a1)
{
  v3 = sub_1007604EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v16 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_1001162A4(&v1[v16], v15, v17);
  sub_1001162A4(a1, v12, v18);
  sub_1001162A4(&v1[v16], v9, v19);
  swift_beginAccess();
  sub_100116308(v12, &v1[v16], v20);
  swift_endAccess();
  sub_1001907E8(v9);
  sub_10011636C(v9, v21);
  sub_10011636C(v12, v22);
  sub_1001162A4(&v1[v16], v12, v23);
  LOBYTE(v9) = sub_10019954C(v12, v15);
  sub_10011636C(v12, v24);
  if ((v9 & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v26], v3);
    sub_100115444(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_10011636C(a1, v25);
  sub_10011636C(v15, v27);
  return result;
}

void sub_10011503C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ArcadeHeaderView(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100116400;
  *(v3 + 24) = v2;
  v7[4] = sub_1000349FC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001C5148;
  v7[3] = &unk_1008894F8;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1001151B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_1001152EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1007604EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018E790(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_1001160F8(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_100115444(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = sub_1007604EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
    sub_10000A5D4(&unk_1009434B0, &unk_100785550);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100784500;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = sub_1007701AC().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = sub_10076FF6C();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000A5D4(&unk_1009434B0, &unk_100785550);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100784500;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = sub_1007701AC().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
        sub_10000A5D4(&unk_1009434B0, &unk_100785550);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_100784500;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = sub_1007701AC().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000A5D4(&unk_1009434B0, &unk_100785550);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100784500;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = sub_1007701AC().super.isa;

      [v42 setColors:v59];

      if (qword_10093F7E0 != -1)
      {
        swift_once();
      }

      v60 = sub_10000A5D4(&qword_1009494D0, qword_10078C020);
      sub_10000A61C(v60, qword_100949458);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      sub_10075FDCC();

      [v42 setStartPoint:{v84, v85}];
      if (qword_10093F7E8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v60, qword_100949470);
      v83 = v62;
      v63 = v62;
      sub_10075FDCC();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1001160F8(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_100115ED4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_effect;
  v2 = sub_1007604EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ArcadeHeaderView_gradientLayer);
}

id sub_100115F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView(uint64_t a1)
{
  result = qword_1009494C0;
  if (!qword_1009494C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100116054(uint64_t a1)
{
  result = sub_1007604EC();
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

uint64_t sub_1001160F8(uint64_t a1)
{
  v2 = sub_1007604EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_1000325F0();
      v8 = sub_100770E1C();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_1001162A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100116308(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011636C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001163C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100116418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_100116430(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor] = a1;
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
  [v14 setTag:{58236912, v28.receiver, v28.super_class}];
  [v14 setUserInteractionEnabled:0];
  v15 = [v14 layer];
  [v15 setBorderWidth:5.0];

  v16 = OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel] setNumberOfLines:0];
  v17 = *&v14[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 boldSystemFontOfSize:20.0];
  [v19 setFont:v20];

  [*&v14[v16] setTextColor:*&v14[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor]];
  v21 = *&v14[v16];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v14[v16];
  [v25 frame];
  Width = CGRectGetWidth(v29);
  [*&v14[v16] frame];
  [v25 setFrame:{10.0, 10.0, Width, CGRectGetHeight(v30)}];

  [v14 addSubview:*&v14[v16]];
  return v14;
}

void sub_100116730(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_100116BF0(a1, &v25 - v5);
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  v9 = sub_10076F7EC();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16) || (v10 = sub_100561E0C(0x6973736572706D69, 0xEF7865646E496E6FLL), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_10000CD08(*(v9 + 56) + 32 * v10, &v25);

  if (*(&v26 + 1))
  {
    sub_10000CD64(&v25, v27);
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_1007700CC(v28);
    sub_10077151C();
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_1007700CC(v29);
    v13 = sub_10076FF6C();

    [v12 setText:v13];

    sub_10000CD74(v27);
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_overlayColor];
    goto LABEL_10;
  }

LABEL_9:
  sub_10000CFBC(&v25, &unk_1009434C0, &qword_100783F60);
  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ImpressionMetricsDebugOverlay_metricsLabel];
  v15 = sub_10076FF6C();
  [v12 setText:v15];

  v14 = [objc_opt_self() yellowColor];
LABEL_10:
  v16 = v14;
  v17 = [v16 colorWithAlphaComponent:0.2];
  [v2 setBackgroundColor:v17];

  v18 = [v2 layer];
  v19 = [v16 colorWithAlphaComponent:0.2];

  v20 = [v19 CGColor];
  [v18 setBorderColor:v20];

  [v12 sizeToFit];
  v21 = [v12 layer];
  [v12 frame];
  Height = CGRectGetHeight(v30);
  [v12 frame];
  Width = CGRectGetWidth(v31);
  if (Width >= Height)
  {
    Width = Height;
  }

  [v21 setCornerRadius:{Width * 0.5, v25, v26}];

  v24 = [v12 layer];
  [v24 setMasksToBounds:1];
}

uint64_t sub_100116BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100116C60(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = sub_10077167C();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return sub_10077167C();
}

void sub_100116D8C(uint64_t a1, __n128 a2)
{
  sub_1007713FC();
  sub_10077008C();
  if (*(v2 + 80))
  {
    sub_10077177C(1u);

    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }
}

double sub_100116E1C()
{

  return result;
}

uint64_t sub_100116E4C()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100116EEC()
{
  result = qword_1009495E0;
  if (!qword_1009495E0)
  {
    sub_1007666DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009495E0);
  }

  return result;
}

uint64_t sub_100116F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076F50C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F3FC();
  sub_10076F64C();
  sub_10076FC1C();
  v6 = sub_1007666BC();
  v8 = v7;
  v9 = sub_1007666CC() & 1;
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  sub_10075F3CC(v13, v9);

  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v10 = sub_10076FC8C();

  return v10;
}

char *sub_1001170B4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = sub_10076BF6C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100784500;
  sub_1000325F0();
  v22 = v20;
  isa = sub_100770E4C(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = sub_100770E4C(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = sub_1007701AC().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_1001174F8()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_10077165C();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_1001175B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_10076BF6C();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_100117C64(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100117CD4(v11);
    v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    sub_10076BF0C();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = sub_10075FEDC();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    sub_10076BF3C();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(uint64_t a1)
{
  result = qword_100949620;
  if (!qword_100949620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100117B64(uint64_t a1)
{
  sub_100117C0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100117C0C(uint64_t a1)
{
  if (!qword_100949630)
  {
    sub_10076BF6C();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100949630);
    }
  }
}

uint64_t sub_100117C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117CD4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100117D3C(uint64_t a1)
{
  sub_10077008C();
  sub_10077008C();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = sub_10077158C();
    sub_10077176C(v7);
    v4 = sub_10077158C();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_10077176C(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_100117E4C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100117EB8()
{
  sub_10077175C();
  sub_100117D3C(v1);
  return sub_1007717AC();
}

Swift::Int sub_100117F20(uint64_t a1)
{
  sub_10077175C();
  sub_100117D3C(v2);
  return sub_1007717AC();
}

unint64_t sub_100117F70()
{
  result = qword_100949700;
  if (!qword_100949700)
  {
    type metadata accessor for DebugSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949700);
  }

  return result;
}

uint64_t sub_100117FC4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_10077167C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_1000CC978(v6, v7);
}

double sub_100118054(uint64_t a1, void *a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_10000A5D4(&unk_100958350, &qword_10078C2B8);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  sub_10076BC0C();
  sub_10011894C();
  sub_10076332C();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = sub_10075F78C();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = sub_1007628DC();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = sub_10076C54C();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1004D0A60(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10000CFBC(v12, &unk_100949290, &unk_10078BBF0);
    v27[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v27 setNeedsLayout];
    sub_10000CFBC(v15, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v18, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v21, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v24, &unk_100946760, &unk_100787A20);
    v33 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v35 = sub_10076BADC();
    if (!v35)
    {
      sub_1000325F0();
      v35 = sub_100770D1C();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    sub_10076BAEC();
    v38 = sub_1007663AC();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10000CFBC(v9, &unk_100958350, &qword_10078C2B8);
    }

    else
    {
      sub_10076639C();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_10000CF78(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = sub_10077165C();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_10000CD74(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        sub_10076BAEC();
        v51 = v40(v50, 1, v38) == 1;
        sub_10000CFBC(v50, &unk_100958350, &qword_10078C2B8);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];

        return result;
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001187AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100118808(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1001188D0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_10075FCEC(v4, v2);
}

unint64_t sub_10011894C()
{
  result = qword_100950870;
  if (!qword_100950870)
  {
    sub_10076BC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950870);
  }

  return result;
}

uint64_t sub_1001189A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v247 = a2;
  v238 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v238);
  v222 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v227 = &v209 - v6;
  v246 = sub_100763BBC();
  v237 = *(v246 - 8);
  __chkstk_darwin(v246);
  v231 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v243 = &v209 - v9;
  v10 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v10 - 8);
  v232 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v229 = (&v209 - v13);
  __chkstk_darwin(v14);
  v226 = &v209 - v15;
  __chkstk_darwin(v16);
  v241 = (&v209 - v17);
  v18 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v18 - 8);
  v230 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v223 = &v209 - v21;
  __chkstk_darwin(v22);
  v242 = &v209 - v23;
  __chkstk_darwin(v24);
  v233 = &v209 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v235 = *(v26 - 8);
  v236 = v26;
  __chkstk_darwin(v26);
  v221 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v220 = &v209 - v29;
  __chkstk_darwin(v30);
  v219 = &v209 - v31;
  __chkstk_darwin(v32);
  v228 = &v209 - v33;
  __chkstk_darwin(v34);
  v240 = &v209 - v35;
  __chkstk_darwin(v36);
  v225 = &v209 - v37;
  __chkstk_darwin(v38);
  v224 = &v209 - v39;
  __chkstk_darwin(v40);
  v239 = &v209 - v41;
  v42 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v42 - 8);
  v212 = &v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v211 = &v209 - v45;
  __chkstk_darwin(v46);
  v215 = &v209 - v47;
  __chkstk_darwin(v48);
  v214 = &v209 - v49;
  __chkstk_darwin(v50);
  v234 = &v209 - v51;
  __chkstk_darwin(v52);
  v210 = &v209 - v53;
  __chkstk_darwin(v54);
  v213 = &v209 - v55;
  __chkstk_darwin(v56);
  v218 = &v209 - v57;
  __chkstk_darwin(v58);
  v217 = &v209 - v59;
  __chkstk_darwin(v60);
  v216 = &v209 - v61;
  __chkstk_darwin(v62);
  v244 = &v209 - v63;
  v64 = sub_1007621EC();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v209 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v209 - v69;
  v71 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v245 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = &v209 - v72;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v74 = v251;
  if (v251)
  {
  }

  swift_getKeyPath();
  sub_10076F49C();

  v75 = v251;
  if (v251)
  {
    v76 = v250;

    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v76 & 0xFFFFFFFFFFFFLL;
    }

    v248 = v77 != 0;
  }

  else
  {
    v248 = 0;
  }

  swift_getKeyPath();
  v249 = v73;
  sub_10076F49C();

  if (v250)
  {
    v78 = sub_1007603BC();
  }

  else
  {
    v78 = 0;
  }

  swift_getKeyPath();
  sub_10076F49C();

  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v79 = sub_1007621DC();
  v80 = *(v65 + 8);
  v80(v67, v64);
  v80(v70, v64);
  v81 = sub_10011AB24(a1);
  if (sub_10011B5EC(a1))
  {
    if ((v79 & 1) == 0)
    {
      v82 = v78 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_1005706B8(v248, v247);
    return (*(v245 + 8))(v249, v71);
  }

  if (v79)
  {
    goto LABEL_15;
  }

  v82 = 0;
LABEL_17:
  v209 = v71;
  if (!v81)
  {
    LODWORD(v244) = v82;
    swift_getKeyPath();
    sub_10076F49C();

    if (v250)
    {
      v86 = v234;
      sub_10076035C();

      v87 = sub_10076034C();
      (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
    }

    else
    {
      v115 = sub_10076034C();
      (*(*(v115 - 8) + 56))(v234, 1, 1, v115);
    }

    v116 = v236;
    if (v78)
    {
      v117 = v229;
      *v229 = xmmword_10078C2C0;
      v118 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v119 = sub_100763BAC();
      v120 = *(v119 - 8);
      v121 = *(v120 + 104);
      v242 = (v119 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v121(v117, v118, v119);
      v122 = *(v120 + 56);
      v243 = v119;
      v122(v117, 0, 1, v119);
      if (qword_10093FC30 != -1)
      {
        swift_once();
      }

      v123 = sub_10000A61C(v116, qword_10099DF40);
      sub_10011BA50(v123, v228, v124);
      v125 = 10.0;
      v126 = v219;
      if (qword_10093FC60 != -1)
      {
        swift_once();
      }

      v127 = 1;
      v128 = qword_10099DFD0;
LABEL_107:
      v187 = v126;
LABEL_108:
      v188 = sub_10000A61C(v116, v128);
      sub_10011BA50(v188, v187, v189);
      v190 = v223;
      v191.n128_f64[0] = (*(v235 + 56))(v223, v127, 1, v116);
      v192 = v228;
      v193 = v220;
      sub_10011BA50(v228, v220, v191);
      v194 = v221;
      sub_10011BA50(v126, v221, v195);
      sub_100016E2C(v190, v230, &qword_100949718, &unk_10078CE10);
      v196 = v229;
      sub_100016E2C(v229, v232, &qword_100949710, "fc\a");
      v197 = v237;
      (*(v237 + 104))(v231, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v246);
      sub_1000325F0();
      v198 = sub_100770CDC();
      sub_10000CFBC(v196, &qword_100949710, "fc\a");
      sub_10000CFBC(v190, &qword_100949718, &unk_10078CE10);
      sub_10011BAB4(v126, v199);
      sub_10011BAB4(v192, v200);
      sub_10000CFBC(v234, &unk_10094BB80, &qword_100791CF0);
      (*(v245 + 8))(v249, v209);
      v201 = v238;
      v202 = *(v238 + 32);
      v203 = v222;
      sub_10011BB10(v193, v222, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10011BB10(v194, v203 + v201[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100023AD0(v230, v203 + v201[6], &qword_100949718, &unk_10078CE10);
      *(v203 + v201[7]) = v244 & 1;
      *(v203 + v202) = 0;
      v204 = v248;
      *(v203 + v201[9]) = v248;
      *(v203 + v201[14]) = v125;
      *(v203 + v201[12]) = 0;
      *(v203 + v201[13]) = v198;
      v205 = v232;
      (*(v197 + 32))(v203 + v201[11], v231, v246);
      sub_100763BAC();
      v206 = v243;
      v207 = *(v243 - 1);
      if ((*(v207 + 48))(v205, 1, v243) == 1)
      {
        sub_10000CFBC(v205, &qword_100949710, "fc\a");
        if (v204)
        {
          v208 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v208 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v207 + 104))(v203 + v201[10], *v208, v206);
      }

      else
      {
        (*(v207 + 32))(v203 + v201[10], v205, v206);
      }

      v175 = v203;
      return sub_10011BB10(v175, v247, type metadata accessor for TitleHeaderView.Style);
    }

    v129 = sub_100763BAC();
    v130 = *(*(v129 - 8) + 56);
    v242 = (v129 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v130(v229, 1, 1, v129);
    v243 = v129;
    if (v74)
    {
      if (!v248)
      {
        v148 = v215;
        sub_100016E2C(v234, v215, &unk_10094BB80, &qword_100791CF0);
        v149 = sub_10076034C();
        v150 = *(v149 - 8);
        if ((*(v150 + 48))(v148, 1, v149) == 1)
        {
          sub_10000CFBC(v148, &unk_10094BB80, &qword_100791CF0);
          v151 = 0;
        }

        else
        {
          v151 = sub_1007602EC();
          (*(v150 + 8))(v148, v149);
        }

        v126 = v219;
        sub_100286F40(v151, v228);

        v125 = 16.0;
        if (qword_10093FC58 != -1)
        {
          swift_once();
        }

        v127 = 1;
        v128 = qword_10099DFB8;
        goto LABEL_107;
      }

      v131 = v214;
      sub_100016E2C(v234, v214, &unk_10094BB80, &qword_100791CF0);
      v132 = sub_10076034C();
      v133 = *(v132 - 8);
      if ((*(v133 + 48))(v131, 1, v132) == 1)
      {
        sub_10000CFBC(v131, &unk_10094BB80, &qword_100791CF0);
        v134 = 0;
      }

      else
      {
        v134 = sub_1007602EC();
        (*(v133 + 8))(v131, v132);
      }

      v126 = v219;
      sub_100286F40(v134, v228);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v180 = qword_10099E000;
    }

    else
    {
      if (!v248)
      {
        v176 = v212;
        sub_100016E2C(v234, v212, &unk_10094BB80, &qword_100791CF0);
        v177 = sub_10076034C();
        v178 = *(v177 - 8);
        if ((*(v178 + 48))(v176, 1, v177) == 1)
        {
          sub_10000CFBC(v176, &unk_10094BB80, &qword_100791CF0);
          v179 = 0;
        }

        else
        {
          v179 = sub_1007602EC();
          (*(v178 + 8))(v176, v177);
        }

        v126 = v219;
        sub_100286F40(v179, v228);

        v125 = 16.0;
        if (qword_10093FC50 != -1)
        {
          swift_once();
        }

        v127 = 1;
        v128 = qword_10099DFA0;
        goto LABEL_107;
      }

      v144 = v211;
      sub_100016E2C(v234, v211, &unk_10094BB80, &qword_100791CF0);
      v145 = sub_10076034C();
      v146 = *(v145 - 8);
      if ((*(v146 + 48))(v144, 1, v145) == 1)
      {
        sub_10000CFBC(v144, &unk_10094BB80, &qword_100791CF0);
        v147 = 0;
      }

      else
      {
        v147 = sub_1007602EC();
        (*(v146 + 8))(v144, v145);
      }

      v126 = v219;
      sub_100286F40(v147, v228);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v180 = qword_10099DFE8;
    }

    v185 = sub_10000A61C(v116, v180);
    sub_10011BA50(v185, v126, v186);
    v125 = 16.0;
    if (qword_10093FC48 != -1)
    {
      swift_once();
    }

    v127 = 0;
    v128 = qword_10099DF88;
    v187 = v223;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_10076F49C();

  if (v250)
  {
    v84 = v244;
    sub_10076035C();

    v85 = sub_10076034C();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  }

  else
  {
    v88 = sub_10076034C();
    (*(*(v88 - 8) + 56))(v244, 1, 1, v88);
  }

  if (v78)
  {
    v89 = v241;
    *v241 = xmmword_10078C2C0;
    v90 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v91 = sub_100763BAC();
    v92 = *(v91 - 8);
    v93 = *(v92 + 104);
    v232 = (v91 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v93(v89, v90, v91);
    v94 = *(v92 + 56);
    v234 = v91;
    v94(v89, 0, 1, v91);
    if (qword_10093FC30 != -1)
    {
      swift_once();
    }

    v95 = v236;
    v96 = sub_10000A61C(v236, qword_10099DF40);
    sub_10011BA50(v96, v239, v97);
    v98 = 10.0;
    v99 = v224;
    if (qword_10093FC60 != -1)
    {
      swift_once();
    }

    v100 = 1;
    v101 = qword_10099DFD0;
  }

  else
  {
    v103 = sub_100763BAC();
    v104 = *(*(v103 - 8) + 56);
    v232 = (v103 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v104(v241, 1, 1, v103);
    v234 = v103;
    if (v248)
    {
      if (v81 == 1)
      {
        v105 = v216;
        sub_100016E2C(v244, v216, &unk_10094BB80, &qword_100791CF0);
        v106 = sub_10076034C();
        v107 = *(v106 - 8);
        v108 = (*(v107 + 48))(v105, 1, v106);
        v99 = v224;
        if (v108 == 1)
        {
          sub_10000CFBC(v105, &unk_10094BB80, &qword_100791CF0);
          v109 = 0;
        }

        else
        {
          v109 = sub_1007602EC();
          (*(v107 + 8))(v105, v106);
        }

        v95 = v236;
        sub_100286F40(v109, v239);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v152 = qword_10099E078;
      }

      else
      {
        v135 = v217;
        sub_100016E2C(v244, v217, &unk_10094BB80, &qword_100791CF0);
        v136 = sub_10076034C();
        v137 = *(v136 - 8);
        v138 = (*(v137 + 48))(v135, 1, v136);
        v99 = v224;
        if (v138 == 1)
        {
          sub_10000CFBC(v135, &unk_10094BB80, &qword_100791CF0);
          v139 = 0;
        }

        else
        {
          v139 = sub_1007602EC();
          (*(v137 + 8))(v135, v136);
        }

        v95 = v236;
        sub_100286F40(v139, v239);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v152 = qword_10099E048;
      }

      v153 = sub_10000A61C(v95, v152);
      sub_10011BA50(v153, v99, v154);
      v98 = 16.0;
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v100 = 0;
      v101 = qword_10099DF88;
      v102 = v233;
      goto LABEL_73;
    }

    if (v81 == 1)
    {
      v110 = v218;
      sub_100016E2C(v244, v218, &unk_10094BB80, &qword_100791CF0);
      v111 = sub_10076034C();
      v112 = *(v111 - 8);
      v113 = (*(v112 + 48))(v110, 1, v111);
      v95 = v236;
      v99 = v224;
      if (v113 == 1)
      {
        sub_10000CFBC(v110, &unk_10094BB80, &qword_100791CF0);
        v114 = 0;
      }

      else
      {
        v114 = sub_1007602EC();
        (*(v112 + 8))(v110, v111);
      }

      sub_100286F40(v114, v239);

      v98 = 16.0;
      if (qword_10093FC90 != -1)
      {
        swift_once();
      }

      v100 = 1;
      v101 = qword_10099E060;
    }

    else
    {
      v95 = v236;
      v99 = v224;
      if (v74)
      {
        v140 = v213;
        sub_100016E2C(v244, v213, &unk_10094BB80, &qword_100791CF0);
        v141 = sub_10076034C();
        v142 = *(v141 - 8);
        if ((*(v142 + 48))(v140, 1, v141) == 1)
        {
          sub_10000CFBC(v140, &unk_10094BB80, &qword_100791CF0);
          v143 = 0;
        }

        else
        {
          v143 = sub_1007602EC();
          (*(v142 + 8))(v140, v141);
        }

        sub_100286F48(v143, v239);

        v98 = 16.0;
        if (qword_10093FC80 != -1)
        {
          swift_once();
        }

        v100 = 1;
        v101 = qword_10099E030;
      }

      else
      {
        v181 = v210;
        sub_100016E2C(v244, v210, &unk_10094BB80, &qword_100791CF0);
        v182 = sub_10076034C();
        v183 = *(v182 - 8);
        if ((*(v183 + 48))(v181, 1, v182) == 1)
        {
          sub_10000CFBC(v181, &unk_10094BB80, &qword_100791CF0);
          v184 = 0;
        }

        else
        {
          v184 = sub_1007602EC();
          (*(v183 + 8))(v181, v182);
        }

        sub_100286F40(v184, v239);

        v98 = 16.0;
        if (qword_10093FC78 != -1)
        {
          swift_once();
        }

        v100 = 1;
        v101 = qword_10099E018;
      }
    }
  }

  v102 = v99;
LABEL_73:
  v155 = sub_10000A61C(v95, v101);
  sub_10011BA50(v155, v102, v156);
  v157 = v233;
  v158.n128_f64[0] = (*(v235 + 56))(v233, v100, 1, v95);
  v159 = v239;
  v160 = v225;
  sub_10011BA50(v239, v225, v158);
  sub_10011BA50(v99, v240, v161);
  sub_100016E2C(v157, v242, &qword_100949718, &unk_10078CE10);
  v162 = v241;
  v163 = v226;
  sub_100016E2C(v241, v226, &qword_100949710, "fc\a");
  v164 = v237;
  (*(v237 + 104))(v243, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v246);
  sub_1000325F0();
  v236 = sub_100770CDC();
  sub_10000CFBC(v162, &qword_100949710, "fc\a");
  sub_10000CFBC(v157, &qword_100949718, &unk_10078CE10);
  sub_10011BAB4(v99, v165);
  sub_10011BAB4(v159, v166);
  sub_10000CFBC(v244, &unk_10094BB80, &qword_100791CF0);
  (*(v245 + 8))(v249, v209);
  v167 = v238;
  v168 = *(v238 + 32);
  v169 = v227;
  sub_10011BB10(v160, v227, type metadata accessor for TitleHeaderView.TextConfiguration);
  v170 = v163;
  sub_10011BB10(v240, v169 + v167[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v242, v169 + v167[6], &qword_100949718, &unk_10078CE10);
  *(v169 + v167[7]) = 0;
  *(v169 + v168) = 0;
  v171 = v248;
  *(v169 + v167[9]) = v248;
  *(v169 + v167[14]) = v98;
  *(v169 + v167[12]) = 0;
  *(v169 + v167[13]) = v236;
  (*(v164 + 32))(v169 + v167[11], v243, v246);
  sub_100763BAC();
  v172 = v234;
  v173 = *(v234 - 8);
  if ((*(v173 + 48))(v170, 1, v234) == 1)
  {
    sub_10000CFBC(v170, &qword_100949710, "fc\a");
    if (v171)
    {
      v174 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v174 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v173 + 104))(v169 + v167[10], *v174, v172);
  }

  else
  {
    (*(v173 + 32))(v169 + v167[10], v170, v172);
  }

  v175 = v169;
  return sub_10011BB10(v175, v247, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_10011A8FC()
{
  sub_10000A5D4(&qword_100949720, qword_1007A2E70);
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10078B310;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_10017A63C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100949708 = v7;
  return result;
}

uint64_t sub_10011AB24(unint64_t a1)
{
  v96 = sub_10000A5D4(&qword_100949728, &unk_10078C3C0);
  __chkstk_darwin(v96);
  v99 = &v91 - v2;
  v3 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v102 = *(v3 - 8);
  __chkstk_darwin(v3);
  v95 = &v91 - v4;
  v5 = sub_1007621EC();
  v6 = *(v5 - 8);
  v97 = v5;
  v98 = v6;
  __chkstk_darwin(v5);
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = (&v91 - v9);
  __chkstk_darwin(v10);
  v92 = (&v91 - v11);
  __chkstk_darwin(v12);
  v103 = &v91 - v13;
  __chkstk_darwin(v14);
  v94 = &v91 - v15;
  __chkstk_darwin(v16);
  v100 = &v91 - v17;
  v18 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  __chkstk_darwin(v24);
  v26 = &v91 - v25;
  __chkstk_darwin(v27);
  v29 = &v91 - v28;
  __chkstk_darwin(v30);
  v32 = &v91 - v31;
  __chkstk_darwin(v33);
  v35 = &v91 - v34;
  v101 = a1;
  sub_10076463C();
  sub_10000CFBC(v29, &qword_1009499A0, &qword_1007848B0);
  v36 = v102;
  sub_100023AD0(v32, v35, &qword_1009499A0, &qword_1007848B0);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10000CFBC(v35, &qword_1009499A0, &qword_1007848B0);
LABEL_6:
    v40 = v103;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_10076F49C();

  v38 = v104;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_1007603BC();

  v40 = v103;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_10076463C();
  sub_10000CFBC(v20, &qword_1009499A0, &qword_1007848B0);
  sub_100023AD0(v23, v26, &qword_1009499A0, &qword_1007848B0);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v45 = v94;
    sub_10076F49C();

    v46 = *(v102 + 8);
    v46(v26, v3);
    v47 = v98;
    v48 = v100;
    v49 = v45;
    v50 = v97;
    (*(v98 + 32))(v100, v49, v97);
    v51 = v95;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v46(v51, v3);
    v52 = v96[12];
    v53 = v47[2];
    v54 = v99;
    v53(v99, v40, v50);
    v102 = v52;
    v53(&v54[v52], v48, v50);
    v55 = v47[11];
    v56 = v55(v54, v50);
    if (v56 == enum case for ShelfBackground.color(_:))
    {
      v57 = v56;
      v58 = v92;
      v53(v92, v54, v50);
      v59 = v47;
      v60 = v58;
      v94 = v59[12];
      (v94)(v58, v50);
      v96 = *v58;
      v61 = sub_10000A5D4(&unk_100950670, qword_100791450);
      v95 = *(v61 + 48);
      if (v55(&v54[v102], v50) == v57)
      {
        v62 = v95;
        v63 = v91;
        v53(v91, &v99[v102], v50);
        (v94)(v63, v50);
        v64 = *v63;
        v65 = *(v61 + 48);
        v66 = sub_10076461C();
        v67 = v96;
        v68 = [v96 resolvedColorWithTraitCollection:v66];

        v69 = sub_10076461C();
        v70 = [v64 resolvedColorWithTraitCollection:v69];

        sub_1000325F0();
        LOBYTE(v69) = sub_100770EEC();

        if ((v69 & 1) == 0)
        {
          v87 = *(v98 + 8);
          v87(v103, v50);
          v87(v100, v50);
          v88 = sub_1007659CC();
          v89 = *(*(v88 - 8) + 8);
          v89(v63 + v65, v88);
          v89(&v62[v92], v88);
          v90 = v99;
          v87(&v99[v102], v50);
          v87(v90, v50);
          return 2;
        }

        v71 = sub_1007659CC();
        v72 = *(*(v71 - 8) + 8);
        v72(v63 + v65, v71);
        v72(&v62[v92], v71);
      }

      else
      {
        v73 = sub_1007659CC();
        (*(*(v73 - 8) + 8))(&v95[v60], v73);
      }

      v47 = v98;
      v54 = v99;
    }

    v74 = enum case for ShelfBackground.none(_:);
    v75 = v47[13];
    v76 = v93;
    v77.n128_f64[0] = (v75)(v93, enum case for ShelfBackground.none(_:), v50);
    v101 = sub_10011BB7C(v77);
    v78 = sub_10076FF1C();
    v79 = v47[1];
    v79(v76, v50);
    if ((v78 & 1) == 0)
    {
      v75(v76, v74, v50);
      v80 = sub_1007621DC();
      v79(v76, v50);
      if (v80)
      {
        v79(v103, v50);
        v79(v100, v50);
        v81 = v102;
LABEL_20:
        v79(&v54[v81], v50);
        v79(v54, v50);
        return 2;
      }
    }

    v82 = v75;
    v75(v76, v74, v50);
    v83 = v103;
    v84 = sub_1007621DC();
    v79(v76, v50);
    if (v84)
    {
      v82(v76, v74, v50);
      v85 = v100;
      v86 = sub_10076FF1C();
      v79(v76, v50);
      v79(v83, v50);
      v79(v85, v50);
      v81 = v102;
      if ((v86 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v79(v83, v50);
      v79(v100, v50);
    }

    v42 = &qword_100949728;
    v43 = &unk_10078C3C0;
    v44 = v54;
    goto LABEL_23;
  }

  v42 = &qword_1009499A0;
  v43 = &qword_1007848B0;
  v44 = v26;
LABEL_23:
  sub_10000CFBC(v44, v42, v43);
  return 0;
}

uint64_t sub_10011B5EC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10076B5BC();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_10076034C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_10076035C(), , v22 = sub_10076032C(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_10076463C();
    sub_10000CFBC(v23, &qword_1009499A0, &qword_1007848B0);
    sub_100023AD0(v24, v8, &qword_1009499A0, &qword_1007848B0);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10000CFBC(v8, &qword_1009499A0, &qword_1007848B0);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_10076F49C();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_10093F7F0 != -1)
      {
        swift_once();
      }

      v30 = sub_10069358C(v28, qword_100949708);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

uint64_t sub_10011BA50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011BAB4(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011BB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10011BB7C(__n128 a1)
{
  result = qword_100949730;
  if (!qword_100949730)
  {
    sub_1007621EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949730);
  }

  return result;
}

char *sub_10011BBD4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_10076D3DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_itemLayoutContext;
  v20 = sub_10076341C();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v15, qword_1009A1060);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v25 = objc_allocWithZone(v24);
  *&v25[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v25[qword_10094E728] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  sub_100764BBC();
  sub_100764BEC();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell(0);
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_100244548(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_1002448C4();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_10011C2BC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    sub_10075FBBC();
  }
}

id sub_10011C344(void *a1)
{
  v2 = v1;
  v4 = sub_10076771C();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100244548(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_1002448C4();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow(0);
      v10 = v9;
      v11 = a1;
      v12 = sub_100770EEC();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_10011C54C()
{
  sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);
  v1 = sub_10077098C();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    sub_10075FC3C();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    sub_10075FC3C();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_10011C664()
{
  v1 = v0;
  v2 = sub_10076E21C();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell(0);
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_10011D2FC(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100016F40(0, &qword_100947240, UIButton_ptr), , v23 = sub_1007701EC(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow(0);
    sub_10076D2DC();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_10078C3E0;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_10078C3D0;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_10078C3F0;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView(0);
  sub_10076D2DC();
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
    sub_10075FD2C();
    sub_10076D2DC();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_10011E080(v91, v67);
  v29 = [v1 traitCollection];
  v30 = sub_1007706EC();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = sub_10077084C();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_100785070;
  v78 = xmmword_100785080;
  sub_100012498(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_10011E144();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_10011E028();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10000A570(v79, v36 + 112);
  sub_10011E080(v80, v36 + 152);
  sub_10011E080(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100012498(&v69, &v61);
  sub_10000CF78(&v61, *(&v62 + 1));
  sub_10076E0EC();

  sub_10000CD74(&v61);
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_10076E1CC();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_10011E0F0(&v73);
  return sub_10000CFBC(v91, &unk_10094B230, &qword_100791150);
}

double sub_10011CD60(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();
  v8[5] = a2;
  sub_10076D2DC();
  sub_10000CF78(v8, v8[3]);
  sub_10076E0FC();
  v6 = v5;
  sub_10000CD74(v8);
  return v6;
}

void sub_10011CE20(uint64_t a1, double a2, double a3)
{
  v6 = sub_10076B98C();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = 16 * v7 + 32;
  while (1)
  {
    if (v8 == v7)
    {

      sub_1004BDBB0(a1, v9, a2, a3);

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v11 = v10 + 16;
    ++v7;

    v12 = sub_10076B8EC();
    v14 = v13;

    v10 = v11;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10049D954(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_10049D954((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

id sub_10011CF88()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_10011DCEC(0);
  sub_10011C2BC(0);
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_10011C54C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_10011C344(v6);
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_10011D0D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell(uint64_t a1)
{
  result = qword_100949768;
  if (!qword_100949768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011D230(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011D2FC(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100016F40(0, &qword_1009560B0, UIImageSymbolConfiguration_ptr);

    v2 = sub_10077098C();
    if ((sub_10076BDDC() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (sub_10076BE0C())
    {
      v4 = sub_10076044C();
    }

    else
    {
      if ((sub_10076BDFC() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_1005A6008(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_10011D440(uint64_t a1, __int128 *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v80 = a3;
  v76 = a2;
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v70[-v11];
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10000A5D4(&qword_10094C340, &qword_10078C478);
  __chkstk_darwin(v17 - 8);
  v19 = &v70[-v18];
  sub_10076B97C();
  v20 = sub_1007607CC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000CFBC(v19, &qword_10094C340, &qword_10078C478);
  }

  else
  {
    v22 = sub_1007607BC();
    (*(v21 + 8))(v19, v20);
    v23 = 0.0;
    if (v22)
    {
      return v23;
    }
  }

  v24 = v80;
  [v80 pageMarginInsets];
  sub_1007704CC();
  sub_100770ACC();
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v13, qword_1009A1060);
  v26 = *(v14 + 16);
  v26(v16, v25, v13);
  v27 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v28 = objc_allocWithZone(v27);
  *&v28[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v28[qword_10094E728] = 0;
  v101.receiver = v28;
  v101.super_class = v27;
  v29 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26(v12, v16, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v30 = v29;
  sub_100764BBC();
  sub_100764BEC();

  v31 = v30;
  [v31 setSelectable:1];
  v32 = v31;
  [v32 setEditable:0];
  [v32 setScrollEnabled:0];
  [v32 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v32 setContentInsetAdjustmentBehavior:2];
  v33 = [objc_opt_self() clearColor];
  [v32 setBackgroundColor:v33];

  [v32 setDelegate:v32];
  [v32 _setInteractiveTextSelectionDisabled:1];

  (*(v14 + 8))(v16, v13);
  v34 = v32;
  sub_10076B9DC();
  v35 = sub_10076FF6C();

  [v34 setText:v35];

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v74 = v34;
  v37 = sub_10076B99C();
  v38 = [v24 traitCollection];
  v39 = sub_10011D2FC(v37);
  v73 = v40;
  v71 = v41;

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
  v42 = sub_1007701EC();

  v43 = 0;
  v44 = 0;
  if (v42)
  {

    v43 = sub_10011E248;
    v44 = a1;
  }

  v72 = v39;
  v78 = v44;
  v79 = v43;
  v77 = [v24 traitCollection];
  *(&v82 + 1) = &type metadata for DynamicSizePlaceholder;
  v45 = sub_10011DFD4();
  *&v83 = v45;
  *&v81 = sub_10011DFCC;
  *(&v81 + 1) = v36;
  v75 = v36;

  if (!sub_10076B99C())
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v50 = v78;
    v49 = v79;
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_12:
    v45 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_13;
  }

  v46 = sub_1007616FC();
  swift_allocObject();
  v47 = sub_1007616EC();
  v48 = sub_10011E1F0();
  v50 = v78;
  v49 = v79;
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v51 = &type metadata for DynamicSizePlaceholder;
  v52 = v50;
  v53 = v49;
LABEL_13:
  sub_10001CE50(v49, v50);
  v54 = v77;
  if (sub_1007706EC())
  {
    v55 = 1;
  }

  else
  {
    v56 = [v54 preferredContentSizeCategory];
    v55 = sub_10077084C();
  }

  v57 = v76[3];
  v92 = v76[2];
  v93 = v57;
  v58 = v76[5];
  v94 = v76[4];
  v95 = v58;
  v59 = v76[1];
  v90 = *v76;
  v91 = v59;
  sub_100012498(&v81, v96);
  v97[0] = v47;
  v97[1] = 0;
  v97[2] = 0;
  v97[3] = v46;
  v97[4] = v48;
  v61 = v72;
  v60 = v73;
  v97[5] = v72;
  v97[6] = v73;
  v62 = v71 & 1;
  v98 = v71 & 1;
  v99[0] = v53;
  v99[1] = v52;
  v99[2] = 0;
  v99[3] = v51;
  v99[4] = v45;
  v100 = v55 & 1;
  v63 = [v80 traitCollection];
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v81 = v90;
  v82 = v91;
  if (v55)
  {
    v88 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v89 = sub_10011E144();
  }

  else
  {
    v88 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v89 = sub_10011E028();
  }

  v64 = swift_allocObject();
  *&v87 = v64;
  sub_10000A570(v96, v64 + 112);
  sub_10011E080(v97, v64 + 152);
  sub_10011E080(v99, v64 + 216);
  v65 = v84;
  *(v64 + 48) = v83;
  *(v64 + 64) = v65;
  v66 = v86;
  *(v64 + 80) = v85;
  *(v64 + 96) = v66;
  v67 = v82;
  *(v64 + 16) = v81;
  *(v64 + 32) = v67;
  *(v64 + 192) = v61;
  *(v64 + 200) = v60;
  *(v64 + 208) = v62;
  sub_100012498(&v87, &v81);
  sub_10000CF78(&v81, *(&v82 + 1));
  sub_10076E0FC();

  sub_10000CD74(&v81);
  sub_100770AEC();
  v23 = v68;

  sub_1000167E0(v79, v78);

  sub_10011E0F0(&v90);
  return v23;
}

id sub_10011DCEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100244548(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_1002448C4();
  }

LABEL_18:
  sub_10011C54C();
  return [v2 setNeedsLayout];
}

uint64_t sub_10011DF94()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10011DFD4()
{
  result = qword_100949778;
  if (!qword_100949778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949778);
  }

  return result;
}

unint64_t sub_10011E028()
{
  result = qword_100949780;
  if (!qword_100949780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949780);
  }

  return result;
}

uint64_t sub_10011E080(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094B230, &qword_100791150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011E144()
{
  result = qword_100949788;
  if (!qword_100949788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949788);
  }

  return result;
}

uint64_t sub_10011E198()
{
  sub_10000CD74(v0 + 14);
  if (v0[22])
  {
    sub_10000CD74(v0 + 19);
  }

  if (v0[30])
  {
    sub_10000CD74(v0 + 27);
  }

  return _swift_deallocObject(v0, 256, 7);
}

unint64_t sub_10011E1F0()
{
  result = qword_1009680E0;
  if (!qword_1009680E0)
  {
    sub_1007616FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009680E0);
  }

  return result;
}

void sub_10011E250()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100940B78 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v5, qword_1009A1060);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_10094E720] = _swiftEmptyArrayStorage;
  *&v15[qword_10094E728] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  sub_100764BBC();
  sub_100764BEC();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10011E690@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_100224EB8(a1);
  v3 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v4 = sub_10076350C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009497B8;
  if (!qword_1009497B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10011E808(char *a1, int *a2)
{
  v60 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = sub_10076B5BC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_100382B5C(a1, a2);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    sub_10076463C();
    sub_10000CFBC(v32, &qword_1009499A0, &qword_1007848B0);
    v33 = v59;
    sub_10002AB4C(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10000CFBC(v33, &qword_1009499A0, &qword_1007848B0);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      sub_10076F49C();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_10002ABBC(v37, v61);
    sub_10002ABBC(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10000CFBC(v38, &unk_1009568A0, &qword_100784890);
      sub_10000CFBC(v37, &unk_1009568A0, &qword_100784890);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10000CFBC(v40, &unk_1009568A0, &qword_100784890);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_10002ABBC(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10000CFBC(v62, &unk_1009568A0, &qword_100784890);
      sub_10000CFBC(v63, &unk_1009568A0, &qword_100784890);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10000CFBC(v40, &qword_100942C28, &unk_1007898E0);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_100077514();
    v50 = sub_10076FF1C();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10000CFBC(v62, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v63, &unk_1009568A0, &qword_100784890);
    v51(v47, v18);
    sub_10000CFBC(v40, &unk_1009568A0, &qword_100784890);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_10011EF54(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_100120198(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_10011EF54(unint64_t *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_10076960C();

    if (v5)
    {
      v6 = sub_10076019C();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1005DC9F0(a2, v6, Strong);

  sub_1007708EC();
  v9 = sub_10076FF6C();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_10077149C();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = sub_10077158C();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = sub_10076FF9C();
    v19 = v18;

    if (v17 == sub_10076FF9C() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = sub_10077158C();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      sub_1007714EC();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = sub_10077149C();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = sub_10076FF9C();
          v34 = v33;

          if (v32 == sub_10076FF9C() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = sub_10077167C();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_10077167C();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  sub_10077019C();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  sub_10077021C();
LABEL_22:
  sub_10077025C();
}

double sub_10011F390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007708EC() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000A5D4(&qword_100942C18, &unk_10078C540);
    a5[4] = sub_100120048(&qword_100949980, &qword_100942C18, &unk_10078C540);
    sub_10000DB7C(a5);

    sub_1007708FC();
LABEL_6:
    sub_10076A3BC();
    return result;
  }

  v24 = v10;
  v14 = sub_10077167C();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007708EC() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10000A5D4(&qword_100949968, &qword_1007B2260);
    a5[4] = sub_100120048(&unk_100949970, &qword_100949968, &qword_1007B2260);
    v23[2] = sub_10000DB7C(a5);

    v23[1] = sub_1007708FC();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = sub_10077167C();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_10037E460(a1, a2, v22, a4, a5);
}

uint64_t sub_10011F6E0(uint64_t a1)
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

double sub_10011F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong() && (v8 = sub_10076960C(), , v8))
    {
      v9 = sub_10076019C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12 = sub_10011FA08();
    }

    else
    {
      v12 = 0;
    }

    sub_1005DB35C(a6, v9, v11, v12);
  }

  return result;
}

Class sub_10011FA08()
{
  v0 = sub_1007695EC();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = sub_10077158C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = sub_10077149C();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          sub_10076B8EC();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        sub_10076B8DC();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (sub_10076960C())
        {
          v22 = sub_1007601AC();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                sub_10077167C();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        sub_100770F1C();
        sub_10077019C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = sub_1007695FC();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100016F40(0, &unk_100949990, UIMenuElement_ptr);

    v18 = sub_10077157C();
  }

  else
  {

    sub_10077168C();
    sub_100016F40(0, &unk_100949990, UIMenuElement_ptr);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_100016F40(0, &qword_100946818, UIMenu_ptr);
  v28._countAndFlagsBits = v16;
  v28._object = v17;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v19.value = 0;
  return sub_100770B5C(v28, v29, v27, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v21).super.super.isa;
}

uint64_t sub_10011FE44()
{

  sub_10000CC8C(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10011FEB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10011FEE8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_10011FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10011F900(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100120048(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012009C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[3] = sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    v6[0] = a1;
    v5 = a1;
    sub_10076965C();

    return sub_10000CFBC(v6, &unk_1009434C0, &qword_100783F60);
  }

  return result;
}

uint64_t sub_10012014C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100120198(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = sub_10076461C();
  sub_100763FCC();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_1007708EC();
  sub_10076462C();
  sub_10076D17C();
  sub_10075FE7C();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = sub_10076FF6C();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  sub_10077019C();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return (*(v11 + 8))(v13, v30);
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;

  sub_10076B87C();
  sub_10012062C(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_100124E40(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10000CFBC(v5, &unk_10094A890, &unk_100786A70);
  }

  return result;
}

uint64_t sub_10012062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_10000A5D4(&qword_1009499A8, &qword_10078C588);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData(0);
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_1009499B0, &qword_10078C590);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = sub_10076B96C();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = sub_10075DB7C();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = sub_10076C15C();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination(0);
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  sub_10075F5FC();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      sub_10075F61C();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = sub_10076629C();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v103 = v304;
      if (v304)
      {

        v104 = sub_10076625C();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_10000A5D4(&qword_100949A00, qword_10078C5B0);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = sub_10075F5DC();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      sub_10075F61C();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      sub_1007656AC();
      sub_10075F62C();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_1009412E8 != -1)
        {
          swift_once();
        }

        v128 = sub_10076FD4C();
        sub_10000A61C(v128, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60, &unk_100784760);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v306 = v297;
        sub_10000DB7C(&v304);
        sub_10075F5FC();
        sub_10076F32C();
        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
        sub_10076FBDC();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_10000A5D4(&unk_100958DB0, &qword_10078C5A0);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      sub_10075F61C();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10000CFBC(v98, &unk_1009435D0, &qword_100785850);
        v92 = v302;
        if (qword_1009412E8 == -1)
        {
LABEL_15:
          v107 = sub_10076FD4C();
          sub_10000A61C(v107, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60, &unk_100784760);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100784500;
          sub_10076F27C();
          v306 = v297;
          sub_10000DB7C(&v304);
          sub_10075F5FC();
          sub_10076F32C();
          sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
          sub_10076FBDC();

LABEL_16:
          sub_10000CFBC(v92, &unk_1009434C0, &qword_100783F60);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      sub_10075F61C();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_10000A5D4(&qword_1009499F8, &unk_10078C7F0);
      (*(v115 + 16))(v95, v72, v99);
      sub_10075F60C();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v127 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_10000A5D4(&qword_100948B88, &qword_10078B570);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v127 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      sub_10075F61C();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = sub_10076B86C();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();
      if (v304)
      {
        v133 = sub_10076B84C();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_10000A5D4(&qword_1009499F0, &qword_10078C5A8) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      sub_10075F61C();
      v135 = sub_10075FFEC();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v136 = v304;
      v137 = *(sub_10000A5D4(&unk_100964150, &qword_1007869C0) + 48);
      *v95 = v136;
      sub_100023AD0(v134, v95 + v137, &unk_1009435D0, &qword_100785850);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      sub_10075F61C();
      v139 = sub_100769A8C();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v140 = v304;
      v141 = *(sub_10000A5D4(&qword_100958DA0, &unk_10078C7E0) + 48);
      *v95 = v140;
      sub_100023AD0(v138, v95 + v141, &unk_1009435D0, &qword_100785850);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      sub_10075F61C();
      v143 = sub_10076116C();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_10075F62C();

      v144 = v304;
      v145 = *(sub_10000A5D4(&qword_1009499E8, &unk_10078C7D0) + 48);
      *v95 = v144;
      sub_100023AD0(v142, v95 + v145, &unk_1009435D0, &qword_100785850);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      sub_10075F61C();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10000CFBC(v148, &unk_1009435D0, &qword_100785850);
      if (qword_1009412E8 == -1)
      {
LABEL_60:
        v149 = sub_10076FD4C();
        sub_10000A61C(v149, qword_1009A2600);
        sub_10000A5D4(&unk_100942A60, &unk_100784760);
        sub_10076F33C();
        *(swift_allocObject() + 16) = xmmword_100784500;
        sub_10076F27C();
        v306 = v297;
        sub_10000DB7C(&v304);
        sub_10075F5FC();
        sub_10076F32C();
        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
        sub_10076FBDC();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      sub_10075F61C();
      sub_10075FB0C();
      sub_10075F62C();
      sub_100016E2C(v302, &v304, &unk_1009434C0, &qword_100783F60);
      if (v306)
      {
        sub_10076C84C();
        swift_dynamicCast();
      }

      else
      {
        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
      }

      v154 = sub_10075FAFC();

      v155 = *(sub_10000A5D4(&qword_100958CE0, &unk_100786A90) + 48);
      *v95 = v154;
      sub_100023AD0(v288, v95 + v155, &unk_1009435D0, &qword_100785850);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_100016F40(0, &qword_1009499E0, AMSFamilyMember_ptr);
      sub_10075F62C();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      sub_10075F61C();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        sub_10075E7DC();
        sub_10075F62C();

        v160 = v304;
        v161 = *(sub_10000A5D4(&qword_100958CD0, &unk_10078C7A0) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      sub_10075F61C();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      sub_10075F62C();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_10000A5D4(&unk_100958CC0, &unk_10078DBB0) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10000CFBC(v283, &qword_100942A80, &unk_1007B5CE0);
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v167 = sub_10076FD4C();
      sub_10000A61C(v167, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      v306 = v297;
      sub_10000DB7C(&v304);
      sub_10075F5FC();
      sub_10076F32C();
      sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
      sub_10076FBDC();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = sub_1007601BC();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      sub_10075F62C();
      v163 = v304;
      if (!v304)
      {
        if (qword_1009412E8 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        sub_10075F61C();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        sub_10075F61C();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          sub_10075F76C();
          v177 = v276;
          sub_10075F62C();

          v178 = *(sub_10000A5D4(&qword_1009499D8, &unk_10078C790) + 48);
          v175(v95, v176, v174);
          sub_100023AD0(v177, v95 + v178, &qword_1009499B0, &qword_10078C590);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = sub_10075FFEC();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        sub_10075F62C();
        v163 = v304;
        if (!v304)
        {
          if (qword_1009412E8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_1009412E8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = sub_10076BCAC();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = sub_100760DEC();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            sub_10075F61C();
            sub_10075F52C();
            sub_10075F62C();
            v183 = v304;
            sub_10000A5D4(&qword_1009499D0, &unk_10078C7C0);
            *v95 = v183;
            sub_100016E2C(v182, v263, &unk_1009435D0, &qword_100785850);
            sub_100016E2C(v182, v266, &unk_1009435D0, &qword_100785850);
            sub_10076159C();

            sub_10000CFBC(v182, &unk_1009435D0, &qword_100785850);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            sub_100764A9C();
            sub_10075F62C();
            v184 = v304;
            v185 = sub_10000A5D4(&qword_1009499C8, qword_10078C800);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            sub_10075F61C();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              sub_10075F61C();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                sub_100765B8C();
                sub_10075F62C();

                v193 = v304;
                v194 = *(sub_10000A5D4(&qword_1009499C0, &qword_10078C598) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              sub_10075F61C();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_10000A5D4(&qword_1009499B8, &unk_10078C7B0);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                sub_100762FBC();
                sub_10075F62C();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = sub_100762FAC();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              sub_10075F62C();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_1009412E8 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              sub_10075F62C();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_100124E40(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_10000A5D4(&unk_100958C90, &unk_10078C780) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = sub_10075E11C();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10000CFBC(v271, &qword_1009499A8, &qword_10078C588);
              if (qword_1009412E8 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_10075F62C();
              v211 = v304;
              if (!v304)
              {
                if (qword_1009412E8 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  sub_10075F62C();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = sub_1007650DC();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  sub_10075F62C();
                  if (v304)
                  {
                    v214 = sub_1007650CC();
                    v215 = sub_1007650BC();
                    v217 = v216;
                    v218 = sub_1007650AC();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = sub_100762D9C();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      if (v304)
                      {
                        sub_10000A5D4(&qword_100958CB0, &qword_100786A88);
                        *v95 = sub_100762D5C();
                        v95[1] = sub_100762D4C();
                        sub_100762D2C();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_1009412E8 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      sub_10075F61C();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        sub_10075FFEC();
                        sub_10075F62C();

                        v233 = v304;
                        v234 = *(sub_10000A5D4(&unk_100964150, &qword_1007869C0) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      sub_10075F61C();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        sub_10075FFEC();
                        sub_10075F62C();

                        v239 = v304;
                        v240 = *(sub_10000A5D4(&unk_100964150, &qword_1007869C0) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = sub_10075EDEC();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0, &qword_100783F60);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = sub_100767F7C();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0, &qword_100783F60);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          sub_10075F62C();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = sub_100764E1C();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      sub_10075F62C();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_1009412E8 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016E2C(v302, &v304, &unk_1009434C0, &qword_100783F60);
                      if (v306)
                      {
                        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_100124E40(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = sub_10076A22C();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  sub_10075F62C();
                  if (v304)
                  {
                    v221 = sub_10076A21C();
                    v222 = sub_10076A20C();
                    v224 = v223;
                    v225 = sub_10076A1FC();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_1009412E8 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_10075F62C();
              v211 = v304;
              if (!v304)
              {
                if (qword_1009412E8 != -1)
                {
                  swift_once();
                }

                v219 = sub_10076FD4C();
                sub_10000A61C(v219, qword_1009A2600);
                sub_10000A5D4(&unk_100942A60, &unk_100784760);
                sub_10076F33C();
                *(swift_allocObject() + 16) = xmmword_100784500;
                sub_10076F27C();
                v306 = v297;
                sub_10000DB7C(&v304);
                sub_10075F5FC();
                sub_10076F32C();
                sub_10000CFBC(&v304, &unk_1009434C0, &qword_100783F60);
                sub_10076FBDC();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          sub_10076797C();
          sub_10075F62C();
          v163 = v304;
          if (!v304)
          {
            if (qword_1009412E8 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = sub_100760A4C();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  sub_10075F62C();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_100124E40(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10000CFBC(v92, &unk_1009434C0, &qword_100783F60);
}

double sub_100124E20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100124E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100124EE0()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075F21C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform])
  {

    sub_100760E3C();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v1[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v1[v11] = v10;
      v21 = v10;

      sub_100125194();
    }

    else
    {
      v17 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;

      sub_100125194();
      (*(v6 + 8))(v9, v5);
    }

    sub_1007601EC();

    sub_10007AFB4(v22, v4);

    sub_1001253E8(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *&v1[v14];
    }

    else
    {
      v16 = 0;
    }

    *&v1[v14] = 0;

    sub_100125194();
  }

  return result;
}

void sub_100125194()
{
  v1 = v0;
  v2 = sub_10075F21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      sub_100760E3C();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_10093F5B8 != -1)
        {
          swift_once();
        }

        v8 = qword_100945598;
      }

      else
      {
        if (qword_10093F5C0 != -1)
        {
          swift_once();
        }

        v8 = qword_1009455A0;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_10093F5C0;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_1009455A0;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_1001253E8(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_100125E2C(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
  sub_1007638EC();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  sub_1007638DC();

  [v2 setNeedsLayout];
  return sub_100125E90(a1);
}

char *sub_1001254B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v11 = sub_10000A61C(v10, qword_10099CB78);
  sub_100125EEC(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView(0);
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_100125714()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v8 - 8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BorderedScreenshotView(0);
  v40.receiver = v0;
  v40.super_class = v16;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_10076422C();
  CGRectGetWidth(v41);
  sub_10076422C();
  CGRectGetHeight(v42);
  sub_10076422C();
  CGRectGetMidX(v43);
  sub_10076422C();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
  sub_10075FC8C();

  sub_100125EEC(v17, v15);
  sub_100125E90(v15);
  v20 = *&v1[v18];
  sub_100125EEC(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_100125E90(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  sub_10075FD1C();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    sub_10076422C();
    [v26 setFrame:?];
  }

  v27 = *&v1[v24];
  if (*(v17 + 16))
  {
    if (v27)
    {
      [*&v1[v24] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v27)
  {
    v28 = v38;
    sub_100125EEC(v17, v38);
    v29 = v27;
    sub_10076422C();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_100125E90(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_100125E90(v28);
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      v32 = v36 * v35;
    }

    [v29 _setContinuousCornerRadius:v32];
  }
}

id sub_100125C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView(uint64_t a1)
{
  result = qword_100949A48;
  if (!qword_100949A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100125D80(uint64_t a1)
{
  result = type metadata accessor for ScreenshotDisplayConfiguration(319);
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

uint64_t sub_100125E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100125E90(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100125EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100125F50()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else
  {
    result = sub_10075F14C();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_artworkView);
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100769F0C();
  sub_10000A61C(v4, qword_1009A31E8);
  sub_100769E6C();
  [v3 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [v3 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();
  sub_10075FD2C();
  sub_10000D7F8();
  sub_100760B8C();
}

void *sub_10012613C()
{
  v0 = sub_10076BEDC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else if (!sub_10075F14C())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10076BEEC();
  sub_10076BE9C();
  (*(v1 + 8))(v3, v0);
  if (qword_1009414A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100769F0C();
  sub_10000A61C(v4, qword_1009A31E8);
  sub_100769E6C();
  sub_10076BFCC();

  sub_10077019C();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  return v7;
}

char *sub_100126330(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_100126610(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100126678(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v26 = a1;
  v27 = sub_10076997C();
  v12 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FAD8 != -1)
  {
    swift_once();
  }

  sub_1000367B4(&unk_10094DA80, v31);
  if ((a3 & 1) == 0)
  {
    sub_1000F00E0(v32);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940B80 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A1078);
  v16 = [a4 traitCollection];
  v17 = sub_100770B3C();

  sub_1000367B4(v31, v30);
  v18 = sub_10076DDDC();
  swift_allocObject();
  v19 = sub_10076DD9C();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = sub_10076C04C();
  v29[3] = v20;
  v29[4] = sub_10004C7BC();
  v21 = sub_10000DB7C(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  sub_10076C90C();
  sub_10000CD74(v29);

  sub_10076996C();
  sub_10076994C();
  (*(v12 + 8))(v14, v27);
  swift_allocObject();
  v23 = sub_10076DD9C();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_1007561B8(a4, v30, a5, a6);

  sub_100036810(v30);
  sub_100036864(v31);
  return v24;
}

double sub_100126AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v143 = a3;
  v124 = sub_10076201C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v121 = &v116 - v6;
  v7 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v7 - 8);
  v136 = &v116 - v8;
  v135 = sub_100768FEC();
  v130 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v116 - v10;
  v11 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v11 - 8);
  v129 = &v116 - v12;
  v13 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v13 - 8);
  v128 = &v116 - v14;
  v15 = sub_10076B96C();
  v16 = *(v15 - 8);
  v137 = v15;
  v138 = v16;
  __chkstk_darwin(v15);
  v125 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v116 - v19;
  v20 = sub_10075ECCC();
  v139 = *(v20 - 8);
  v140 = v20;
  __chkstk_darwin(v20);
  v126 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v127 = &v116 - v23;
  v24 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v24 - 8);
  v120 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v119 = &v116 - v27;
  v28 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v28 - 8);
  v30 = &v116 - v29;
  v31 = sub_1007611EC();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v33 - 8);
  v35 = &v116 - v34;
  v36 = sub_10076121C();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076481C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10075F25C();
  v141 = a1;
  v142 = v42;
  if (sub_10075F24C())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    sub_10076B84C();
    sub_10076BEFC();
    sub_10076D3AC();

    v43 = sub_10076D39C();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    sub_10076B85C();
    v44 = sub_10075DB7C();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v119;
    sub_10076B81C();
    v46 = v120;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_100127F60(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v47 = sub_100762EEC();
    sub_10000CFBC(v46, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v45, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v30, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(&v146, &qword_100943310, &unk_100784150);
    v48 = v145;
    sub_100443D5C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = [v48 contentView];
      [v51 addSubview:v50];

      [v48 setNeedsLayout];

      (*(v117 + 8))(v41, v118);
    }

    else
    {
      (*(v117 + 8))(v41, v118);
    }
  }

  v52 = v141;
  v53 = sub_10075F24C();
  if (v53)
  {
  }

  v54 = v145;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v53 == 0;
    v57 = v55;
    [v55 setHidden:v56];
  }

  [v54 setNeedsLayout];
  v58 = v127;
  sub_10075F23C();
  v59 = OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v139;
  v60 = v140;
  v62 = *(v139 + 24);
  v62(&v54[v59], v58, v140);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC20ProductPageExtension29AppShowcaseCollectionViewCell_lockupView];
  v64 = v126;
  (*(v61 + 16))(v126, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_10069583C();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  sub_10076BB6C();
  v68 = v67;
  sub_10075F22C();
  v140 = v69;
  v70 = sub_10076BB3C();
  v126 = sub_10076BA5C();
  v139 = v71;
  v120 = sub_10076BABC();
  v73 = v72;
  sub_10076BB7C();
  v74 = sub_1006993F4(v52);
  v141 = sub_10076BA2C();
  v75 = *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_titleLabel];
  v127 = v68;
  if (v68)
  {
    v76 = sub_10076FF6C();
  }

  else
  {
    v76 = 0;
  }

  v77 = v128;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_descriptionLabel];
  if (v140)
  {
    v79 = sub_10076FF6C();
  }

  else
  {
    v79 = 0;
  }

  v128 = v73;
  [v78 setText:v79];

  if (v74)
  {
    v80 = enum case for Wordmark.arcade(_:);
    v81 = sub_10076C43C();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_1000325F0();
    v83 = sub_100770CFC();
    sub_1006983AC(v77, v83, v84);
  }

  else
  {
    v85 = sub_10076C43C();
    v86.n128_f64[0] = (*(*(v85 - 8) + 56))(v77, 1, 1, v85);
    sub_1006983AC(v77, 0, v86);
  }

  v87 = v137;
  sub_10000CFBC(v77, &qword_1009622B0, qword_100787B30);
  v88 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v89 = v129;
  (*(*(v88 - 8) + 56))(v129, 1, 1, v88);
  v90 = v130;
  v91 = v135;
  (*(v130 + 104))(v132, enum case for OfferButtonSubtitlePosition.below(_:), v135);
  (*(v90 + 56))(v136, 1, 1, v91);
  sub_100127F60(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v92 = v131;
  sub_10076759C();
  sub_1001F12C8(v70, v141, 0, v89, v92, v143, 0, 0);
  (*(v133 + 8))(v92, v134);
  sub_10000CFBC(v89, &unk_100946760, &unk_100787A20);
  if (v139)
  {
    v93 = v87;
    v94 = v128;
    if (v128)
    {
      v95 = v125;
      (*(v138 + 16))(v125, v144, v93);
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076F64C();
      sub_10076FC1C();
      v96 = v146;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v97 = v63;
      v98 = v95;
      v99 = &off_100911000;
      v100 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v98, v126, v139, v120, v94, 0, v63, &off_10089F520, v96, *(&v96 + 1));
      v101 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v97[v101] = v100;

      goto LABEL_24;
    }
  }

  else
  {

    v93 = v87;
  }

  v102 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v102] = 0;

  sub_100698A4C(0, 0);
  v99 = &off_100911000;
LABEL_24:
  *&v63[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v103 = v121;
    sub_100766A8C();
    v104 = v123;
    v105 = v122;
    v106 = v124;
    (*(v123 + 104))(v122, enum case for OfferLabelStyle.none(_:), v124);
    sub_100127F60(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v107 = sub_10076FF1C();
    v108 = *(v104 + 8);
    v108(v105, v106);
    v108(v103, v106);
    if ((v107 & 1) == 0)
    {

      sub_100766ACC();
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076F64C();
      sub_10076FC1C();
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v110 = sub_100764E4C();
      swift_allocObject();
      v111 = sub_100764E2C();
      *(&v147 + 1) = v110;
      *&v146 = v111;
      v112 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100127EF0(&v146, &v63[v112]);
      swift_endAccess();
      v113 = objc_opt_self();
      v114 = [v113 areAnimationsEnabled];
      [v113 setAnimationsEnabled:0];
      sub_100127F60(&qword_100949AD8, type metadata accessor for AppShowcaseLockupView, &unk_1007B3400);
      swift_unknownObjectRetain();
      sub_100764E3C();
      [v63 layoutIfNeeded];
      [v113 setAnimationsEnabled:v114];

      goto LABEL_29;
    }
  }

  v146 = 0u;
  v147 = 0u;
  v109 = OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100127EF0(&v146, &v63[v109]);
  swift_endAccess();
  [v63 v99[194]];

LABEL_29:

  (*(v138 + 8))(v144, v93);
  [v145 v99[194]];

  return result;
}

uint64_t sub_100127EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434C0, &qword_100783F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100127FA8(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v62 = a3;
  v60 = sub_10076D39C();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_10076BF6C();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v52 = &v40[-v9];
  __chkstk_darwin(v10);
  v51 = &v40[-v11];
  v12 = sub_10075ECCC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  __chkstk_darwin(v18);
  v56 = &v40[-v19];
  __chkstk_darwin(v20);
  v49 = &v40[-v21];
  v22 = sub_10076B75C();
  v23 = *(v22 + 16);
  v58 = v22 + 32;
  v48 = (v13 + 32);
  v65 = (v13 + 88);
  v64 = enum case for AppShowcaseType.large(_:);
  v47 = enum case for AppShowcaseType.small(_:);
  v41 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v55 = (v13 + 8);
  v46 = enum case for Artwork.Style.roundedRect(_:);
  v45 = (v6 + 104);
  v44 = (v6 + 8);
  v43 = (v13 + 16);
  v42 = (v4 + 8);
  v59 = v22;

  v24 = 0;
  v50 = v17;
  v61 = v23;
  while (v24 == v23)
  {
    v75 = 0;
    v24 = v23;
    v73 = 0u;
    v74 = 0u;
LABEL_9:
    v71[0] = v73;
    v71[1] = v74;
    v72 = v75;
    if (!*(&v74 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012498(v71, &v70);
    sub_10000A570(&v70, v68);
    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_10075F26C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    sub_10000CD74(&v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      sub_10075F25C();
      v26 = sub_10076BB5C();

      if (v26)
      {
        v27 = v49;
        sub_10075F23C();
        v28 = v56;
        (*v48)(v56, v27, v12);
        v29 = (*v65)(v28, v12);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v12);
        }

        v30 = v52;
        sub_10076BF7C();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        sub_10076BF2C();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        sub_10076BF4C();
        sub_10076BFCC();
        sub_100760B9C();

        v34(v33, v32);
        v17 = v50;
        v24 = v63;
      }

      if (!sub_10075F24C())
      {

        goto LABEL_3;
      }

      sub_10076B84C();

      sub_10076BEFC();
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10075F23C();
      v35 = sub_10076D2FC();
      v36 = v57;
      (*v43)(v57, v17, v12);
      v37 = (*v65)(v36, v12);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_100940518 == -1)
        {
LABEL_29:
          sub_10000A61C(v60, qword_100957608);
          sub_10076D35C();
LABEL_30:
          (*v55)(v17, v12);
          goto LABEL_31;
        }

LABEL_32:
        swift_once();
        goto LABEL_29;
      }

      if (v37 == v47 || v37 == v41)
      {
        if (qword_100940518 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }

      v38 = *v55;
      (*v55)(v17, v12);
      v38(v57, v12);
LABEL_31:
      v39 = v66;
      sub_10076D36C();
      sub_10076BFCC();
      sub_100760B9C();

      (*v42)(v39, v60);
LABEL_3:
      v23 = v61;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v59 + 16))
    {
      goto LABEL_35;
    }

    sub_10000A570(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}