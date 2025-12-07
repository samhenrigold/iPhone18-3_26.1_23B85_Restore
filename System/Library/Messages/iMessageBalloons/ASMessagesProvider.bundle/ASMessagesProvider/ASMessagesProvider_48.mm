char *sub_55E4F0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_55E6B8(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_55E738;
}

void sub_55E738(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_55A7A8();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_55A7A8();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_55EA08()
{
  v1 = v0;
  v2 = sub_760840();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760D90();
  v142 = *(v6 - 8);
  v143 = v6;
  __chkstk_darwin(v6);
  v132 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v136 = *(v8 - 8);
  v137 = v8;
  __chkstk_darwin(v8);
  v135 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75D850();
  v146 = *(v10 - 8);
  v147 = v10;
  __chkstk_darwin(v10);
  v134 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v106 - v13;
  v150 = sub_760820();
  v144 = *(v150 - 8);
  __chkstk_darwin(v150);
  v140 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v106 - v16;
  v17 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v17 - 8);
  v131 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v148 = &v106 - v20;
  v21 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v149 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v189.receiver = v0;
  v189.super_class = v24;
  objc_msgSendSuper2(&v189, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
  sub_75D650();
  sub_12EE70();
  sub_75D650();
  sub_75D650();
  sub_769D20();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v126 = v5;
    v127 = v3;
    v128 = v2;
    sub_763F60();
    v27 = [v0 traitCollection];
    v28 = sub_7671D0();
    v123 = sub_BD88(&unk_93F5C0, &unk_77C600);
    v29 = swift_allocObject();
    v139 = xmmword_77D9F0;
    *(v29 + 16) = xmmword_77D9F0;
    *(v29 + 32) = v27;
    v30 = v27;
    v133 = v28;
    v31 = sub_7671E0();
    v121 = sub_24128();
    sub_7666E0();

    v33 = v149 + 8;
    v32 = *(v149 + 8);
    v125 = v21;
    v122 = v32;
    v32(v23, v21);
    sub_75D650();
    CGRectGetMinX(v190);
    [v25 frame];
    MaxY = CGRectGetMaxY(v191);
    v35 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8];
    v114 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    v113 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_769240();
      v115 = v40;
      v116 = v39;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_769240();
      v117 = v44;
      v118 = v43;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v141 = *(v45 + v46);

    v47 = v148;
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    (*(v142 + 56))(v47, 0, 1, v143);
    v48 = *(*&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);
    v107 = v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute];
    v138 = v48;

    sub_75D650();
    v50 = v49;
    v52 = v51;
    v53 = [v1 traitCollection];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v54 = v150;
    v55 = sub_BE38(v150, qword_99B150);
    v119 = *(v144 + 16);
    v120 = v144 + 16;
    v119(v151, v55, v54);
    v56 = sub_769A00();
    v129 = v1;
    v149 = v33;
    v124 = v23;
    if (v56)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v57 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v57 = qword_946938;
    }

    v58 = v147;
    v59 = sub_BE38(v147, v57);
    v60 = v146;
    v61 = v134;
    (*(v146 + 16))(v134, v59, v58);
    (*(v60 + 32))(v145, v61, v58);
    v62 = [v53 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v112 = sub_7670D0();
    swift_allocObject();
    v134 = sub_7670B0();
    v63 = objc_opt_self();
    v110 = v63;
    v64 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v65 = sub_7653B0();
    v188[3] = v65;
    v66 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v188[4] = v66;
    v109 = v66;
    v67 = sub_B1B4(v188);
    v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v69 = *(v65 - 8);
    v70 = *(v69 + 104);
    v111 = v69 + 104;
    v108 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v65);
    sub_765C30();
    v130 = v53;
    sub_BEB8(v188);
    v71 = v135;
    sub_762D00();
    sub_762CE0();
    v72 = v137;
    v136 = *(*&v136 + 8);
    (*&v136)(v71, v137);
    v73 = [v63 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v187[3] = v65;
    v187[4] = v66;
    v74 = sub_B1B4(v187);
    v70(v74, v68, v65);
    sub_765C30();
    sub_BEB8(v187);
    sub_762D00();
    sub_762CE0();
    v75 = v136;
    (*&v136)(v71, v72);
    v76 = [v110 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v186[3] = v65;
    v186[4] = v109;
    v77 = sub_B1B4(v186);
    v70(v77, v108, v65);
    sub_765C30();
    sub_BEB8(v186);
    sub_762D00();
    sub_762CE0();
    (*&v75)(v71, v72);
    v78 = v141;
    LODWORD(v137) = sub_246DC() & (v78 != 0);
    if (v137 == 1)
    {
      v79 = v112;
      v136 = MaxY;
      v80 = objc_allocWithZone(v133);
      v81 = v130;
      v82 = sub_7671C0();
      v83 = v131;
      sub_1ED18(v148, v131, &unk_94AE30, qword_7864D0);
      v85 = v142;
      v84 = v143;
      v86 = *(v142 + 48);
      if (v86(v83, 1, v143) == 1)
      {
        v87 = v132;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v86(v83, 1, v84) != 1)
        {
          sub_10A2C(v83, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v87 = v132;
        (*(v85 + 32))(v132, v83, v84);
      }

      v90 = v82;
      sub_2185C(v141, v87, v90, v50, v52);

      (*(v85 + 8))(v87, v84);
      v88 = v79;
      swift_allocObject();
      v89 = sub_7670A0();
    }

    else
    {
      v88 = v112;
      swift_allocObject();
      v89 = sub_7670B0();
    }

    v143 = v89;

    v91 = v138;
    if ((sub_246DC() & (v91 != 0)) == 1)
    {
      v92 = v130;
      sub_F7FC(v91, v107, v50, v52);
      swift_allocObject();
      v93 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v93 = sub_7670B0();
      v92 = v130;
    }

    v119(v140, v151, v150);
    v185 = &protocol witness table for LayoutViewPlaceholder;
    v184 = v88;
    v183 = v134;
    v182 = 0;
    *&v180[40] = 0u;
    v181 = 0u;
    sub_134D8(v188, v180);
    sub_134D8(v187, &v179);
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v175 = 0;
    v173 = 0u;
    v174 = 0u;

    v94 = sub_7670C0();
    v172 = &protocol witness table for LayoutViewPlaceholder;
    v171 = v88;
    v170 = v94;
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v160 = 0;
    v159 = 0u;
    *&v158[40] = 0u;
    sub_134D8(v186, v158);
    v156 = v88;
    v157 = &protocol witness table for LayoutViewPlaceholder;
    v154 = &protocol witness table for LayoutViewPlaceholder;
    v155 = v143;
    v153 = v88;
    v152 = v93;
    v95 = v126;
    sub_760830();
    v96 = swift_allocObject();
    *(v96 + 16) = v139;
    *(v96 + 32) = v92;
    v97 = v92;
    v98 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v99 = v128;
    sub_7665A0();

    (*(v127 + 8))(v95, v99);
    sub_BEB8(v186);
    sub_BEB8(v187);
    sub_BEB8(v188);
    (*(v146 + 8))(v145, v147);
    (*(v144 + 8))(v151, v150);
    v100 = v124;
    sub_763F60();
    v101 = swift_allocObject();
    *(v101 + 16) = v139;
    *(v101 + 32) = v97;
    v102 = v97;
    v103 = sub_7671E0();
    v104 = v125;
    sub_7666E0();

    v122(v100, v104);
    sub_10A2C(v148, &unk_94AE30, qword_7864D0);
    v105 = *&v129[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
    [v129 bounds];
    sub_769D20();
    return [v105 setFrame:?];
  }

  return result;
}

id sub_55FBBC()
{
  v1 = v0;
  sub_12F484();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
  result = sub_55AFC4(v3);
  v5 = v1[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v5 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_55FC60(uint64_t a1, char *a2)
{
  v3 = v2;
  v250 = a2;
  swift_getObjectType();
  v5 = sub_BD88(&qword_946D98, &qword_787F68);
  __chkstk_darwin(v5 - 8);
  v211 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v217 = &v199 - v8;
  v9 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v9 - 8);
  v228 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v229 = &v199 - v12;
  v13 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v13 - 8);
  v227 = &v199 - v14;
  v15 = sub_75A6B0();
  __chkstk_darwin(v15 - 8);
  v215 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v214 = &v199 - v18;
  __chkstk_darwin(v19);
  v221 = &v199 - v20;
  __chkstk_darwin(v21);
  v220 = &v199 - v22;
  v226 = sub_75A6E0();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v213 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v219 = &v199 - v25;
  v222 = sub_75DC30();
  v230 = *(v222 - 8);
  __chkstk_darwin(v222);
  v216 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v237 = &v199 - v28;
  v210 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v235 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v30 - 8);
  v32 = &v199 - v31;
  v224 = sub_766690();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v236 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_75C9A0();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_75C930();
  v244 = *(v242 - 8);
  __chkstk_darwin(v242);
  v208 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v199 - v37;
  __chkstk_darwin(v39);
  v238 = &v199 - v40;
  __chkstk_darwin(v41);
  v218 = &v199 - v42;
  __chkstk_darwin(v43);
  v241 = &v199 - v44;
  v45 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v45 - 8);
  v212 = &v199 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v240 = &v199 - v48;
  __chkstk_darwin(v49);
  v248 = &v199 - v50;
  v51 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v51 - 8);
  v53 = &v199 - v52;
  v54 = sub_7656C0();
  v249 = *(v54 - 8);
  __chkstk_darwin(v54);
  v253 = &v199 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_760770();
  v56 = *(v252 - 8);
  __chkstk_darwin(v252);
  v231 = &v199 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v199 - v59;
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  if (!v255[0])
  {
    return result;
  }

  v243 = v56;
  v247 = v54;
  v62 = v255[0];
  v63 = sub_7581B0();
  v251 = v60;
  v246 = v63;
  sub_75BCC0();
  v239 = v62;
  v64 = sub_7581A0();
  v65 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &unk_90D000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_7655F0();
  v68 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_75C840();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v246;
  sub_223E1C(v246, v53, v250);
  sub_10A2C(v53, &unk_93F620, &unk_77E220);
  v245 = v71;
  v73 = v71[v65];
  v74 = v247;
  v75 = v243;
  v76 = v251;
  if (v73 != 1 || (sub_760760() & 1) == 0)
  {
LABEL_150:
    [v245 setNeedsLayout];

    (*(v249 + 8))(v253, v74);
    return (*(v75 + 8))(v76, v252);
  }

  v77 = sub_75BC70();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_76A860();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v204 = 0;
    goto LABEL_14;
  }

  if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v204 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_79;
    }

    v204 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v245[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
  v205 = sub_75BCA0();
  v207 = sub_75BC80();
  v80 = sub_75BCF0();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_76A860();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v206 = 0;
    goto LABEL_22;
  }

  if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v206 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_81;
    }

    v206 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v84 = v255[0];
  sub_42B534(v248);

  a1 = sub_75BCA0();
  v53 = sub_75BC80();
  v85 = sub_75BC70();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_76A860();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_76A770();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_75BCF0();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_76A860();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_76A770();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_760760() & 1) == 0)
  {

    v53 = v244;
    v96 = v241;
    v84 = v242;
    (*(v244 + 104))(v241, enum case for LockupMediaLayout.DisplayType.none(_:), v242);
    v92 = v207;
LABEL_46:
    v38 = v204;
    goto LABEL_68;
  }

  v92 = v207;
  if (v53 | a1)
  {
    v97 = v218;
    sub_7666A0();

    v53 = v244;
    v84 = v242;
    (*(v244 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v242);
    v96 = v241;
    (*(v53 + 32))(v241, v97, v84);
    goto LABEL_46;
  }

  v93 = sub_55BABC(v72, v88, 0, 1, v91);
  v53 = v93;
  v84 = (v93 >> 62);
  if (v93 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v203 = i;
    v95 = v72 ? sub_759690() : 0;
    v98 = sub_55BE04(v95);

    v200 = v98;
    v99 = v72 ? sub_759690() : 0;
    v100 = v252;
    (*(v75 + 16))(v32, v251, v252);
    v101.n128_f64[0] = (*(v75 + 56))(v32, 0, 1, v100);
    a1 = sub_55C32C(v99, v32, v101);

    sub_10A2C(v32, &unk_94DF00, &unk_792100);
    if (v84 ? sub_76A860() : *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v103 = sub_765150();

      if (v103)
      {

        v53 = v244;
        v104 = v218;
        v84 = v242;
        (*(v244 + 104))(v218, enum case for LockupMediaLayout.DisplayType.landscape(_:), v242);
LABEL_66:
        v96 = v241;
        v92 = v207;
        v38 = v204;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v105 = a1;
    v106 = v244;
    v107 = v242;
    v202 = *(v244 + 104);
    v201 = v244 + 104;
    (v202)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v242);
    v108 = sub_75C920();
    v199 = *(v106 + 8);
    v199(v38, v107);
    if (((v203 >= v108) & v105) != 0 || ((v202)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v107), v109 = sub_75C920(), v199(v38, v107), ((v203 >= v109) & v200) != 0) || ((v202)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v107), v110 = sub_75C920(), v199(v38, v107), v203 >= v110))
    {

      v104 = v218;
      v202();
      v84 = v107;
      v53 = v244;
      goto LABEL_66;
    }

    (v202)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v107);
    sub_75C920();

    v199(v38, v107);
    v111 = v107;
    v104 = v218;
    v202();
    v53 = v244;
    v96 = v241;
    v92 = v207;
    v38 = v204;
    v84 = v111;
LABEL_67:
    (*(v53 + 32))(v96, v104, v84);
LABEL_68:
    v32 = v238;

    v255[3] = &type metadata for CGFloat;
    v255[4] = &protocol witness table for CGFloat;
    v255[0] = 0x4021000000000000;
    sub_134D8(v255, v254);
    v72 = v53 + 16;
    v112 = v96;
    a1 = *(v53 + 16);
    (a1)(v32, v112, v84);
    if (v92 | v205)
    {
      goto LABEL_86;
    }

    v85 = sub_55BABC(v38, v206, 0, 1, v113);
    if (v85 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      goto LABEL_74;
    }

    if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {

LABEL_74:

      sub_765260();
      sub_7666A0();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v114 = v85;
  v115 = sub_76A860();
  v85 = v114;
  if (v115)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_7666A0();
LABEL_87:
  sub_1ED18(v248, v240, &unk_948720, &unk_784970);
  v116 = v232;
  sub_75C970();
  sub_BEB8(v255);
  v117 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v118 = v233;
  v119 = &v67[v117];
  v120 = v234;
  (*(v233 + 24))(v119, v116, v234);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v118 + 8))(v116, v120);
  if (v38)
  {
    v121 = sub_759690();
  }

  else
  {
    v121 = 0;
  }

  sub_7596B0();
  v122 = v235;
  sub_6C14C(v121, v235);

  v123 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v122, &v67[v123]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v122);
  if (v38)
  {
    v124 = sub_759690();
  }

  else
  {
    v124 = 0;
  }

  v125 = v231;
  *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v124;

  sub_559DA4();

  v126 = v252;
  (*(v75 + 16))(v125, v251, v252);
  v127 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(&v67[v127], v125, v126);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v75 + 8))(v125, v126);
  if (v207)
  {
    (*(v225 + 104))(v219, enum case for VideoFillMode.scaleAspectFill(_:), v226);

    sub_764BC0();
    sub_765260();
    v128 = v240;
    sub_7666A0();

    (*(v223 + 56))(v128, 0, 1, v224);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v129 = v67;
    v130 = v227;
    sub_764BD0();
    v131 = sub_7570A0();
    (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
    v132 = v229;
    sub_764B90();
    v133 = v228;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v134 = sub_75C340();
    sub_10A2C(v133, &unk_948710, &qword_77FF90);
    sub_10A2C(v132, &unk_948710, &qword_77FF90);
    v135 = v130;
    v67 = v129;
    sub_10A2C(v135, &unk_93FD30, qword_77F240);
    sub_10A2C(v255, &unk_9443A0, &unk_77E240);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v244;
    if (Strong)
    {
      v137 = Strong;
      v138 = [Strong superview];
      if (!v138)
      {
        goto LABEL_99;
      }

      v139 = v138;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v140 = v129;
      v141 = sub_76A1C0();

      if (v141)
      {
        v142 = swift_unknownObjectWeakLoadStrong();
        if (v142)
        {
          v137 = v142;
          [v142 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v143 = swift_unknownObjectWeakLoadStrong();
    if (v143)
    {
      v144 = v143;
      [v67 addSubview:v143];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v145 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v146 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v75 = v243;
    v147 = v222;
    if (v146)
    {
      [v146 removeFromSuperview];
      v148 = *&v67[v145];
    }

    else
    {
      v148 = 0;
    }

    v74 = v247;
    *&v67[v145] = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v237, v147);
LABEL_148:
    v184 = v241;
LABEL_149:
    [v67 setNeedsLayout];

    (*(v53 + 8))(v184, v242);
    sub_10A2C(v248, &unk_948720, &unk_784970);
    v76 = v251;
    goto LABEL_150;
  }

  v53 = v244;
  if (!v206)
  {
    goto LABEL_135;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v187 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v188 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v188)
    {
      [v188 removeFromSuperview];
      v189 = *&v67[v187];
    }

    else
    {
      v189 = 0;
    }

    v74 = v247;
    *&v67[v187] = 0;

    [v67 setNeedsLayout];
    v190 = swift_unknownObjectWeakLoadStrong();
    if (v190)
    {
      v191 = v190;
      sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v192 = [v191 superview];
      if (v192)
      {
        v193 = v192;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v194 = v67;
        v195 = sub_76A1C0();

        v74 = v247;
        if (v195)
        {
          v196 = swift_unknownObjectWeakLoadStrong();
          if (v196)
          {
            v191 = v196;
            [v196 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v247;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v197 = swift_unknownObjectWeakLoadStrong();
    if (v197)
    {
      v198 = v197;
      [v67 addSubview:v197];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];
    goto LABEL_148;
  }

  v185 = result;
  v186 = sub_76A860();
  result = v185;
  if (!v186)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_76A770();
LABEL_110:
    v149 = v67;
    v204 = v38;

    v150 = v208;
    v151 = v242;
    (a1)(v208, v241, v242);
    v152 = (*(v53 + 88))(v150, v151);
    v153 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v150, v151);
    if (v152 == v153)
    {
      v154 = 1;
      v155 = v217;
    }

    else
    {
      v156 = sub_765740();
      v155 = v217;
      sub_6C14C(v156, v217);

      v154 = 0;
    }

    v157 = v229;
    v158 = v210;
    v159 = v226;
    v160 = v225;
    v161 = v209;
    v162 = v224;
    (*(v209 + 56))(v155, v154, 1, v210);
    (*(v160 + 104))(v213, enum case for VideoFillMode.scaleAspectFill(_:), v159);
    sub_764BC0();
    sub_765260();
    v163 = v212;
    sub_7666A0();

    (*(v223 + 56))(v163, 0, 1, v162);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    v164 = v155;
    v165 = v211;
    sub_1ED18(v164, v211, &qword_946D98, &qword_787F68);
    if ((*(v161 + 48))(v165, 1, v158) == 1)
    {
      sub_10A2C(v165, &qword_946D98, &qword_787F68);
    }

    else
    {
      sub_161D14(v165);
    }

    v67 = v149;
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v166 = v227;
    sub_764BD0();
    v167 = sub_7570A0();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    sub_764B90();
    v168 = v228;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v169 = sub_75C340();
    sub_10A2C(v168, &unk_948710, &qword_77FF90);
    sub_10A2C(v157, &unk_948710, &qword_77FF90);
    sub_10A2C(v166, &unk_93FD30, qword_77F240);
    sub_10A2C(v255, &unk_9443A0, &unk_77E240);
    v170 = swift_unknownObjectWeakLoadStrong();
    if (v170)
    {
      v171 = v170;
      v172 = [v170 superview];
      if (v172)
      {
        v173 = v172;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v174 = v67;
        v175 = sub_76A1C0();

        v75 = v243;
        if ((v175 & 1) == 0)
        {
          goto LABEL_124;
        }

        v176 = swift_unknownObjectWeakLoadStrong();
        if (!v176)
        {
          goto LABEL_124;
        }

        v171 = v176;
        [v176 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v177 = swift_unknownObjectWeakLoadStrong();
    if (v177)
    {
      v178 = v177;
      [v67 addSubview:v177];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v179 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v180 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v53 = v244;
    v181 = v241;
    if (v180)
    {
      [v180 removeFromSuperview];
      v182 = *&v67[v179];
    }

    else
    {
      v182 = 0;
    }

    v183 = v222;
    *&v67[v179] = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v216, v183);
    sub_10A2C(v217, &qword_946D98, &qword_787F68);
    v74 = v247;
    v184 = v181;
    goto LABEL_149;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_562068(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_75F4E0();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_F704(v5, v6);
  return sub_12F734(a1);
}

id sub_562128(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_562210()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_562264(void *a1)
{
  sub_5685E0(a1);
}

uint64_t (*sub_56229C(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_55E6B8(v2);
  return sub_21028;
}

double sub_56230C()
{
  swift_beginAccess();

  return result;
}

double sub_562354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_56240C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_562468(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

uint64_t sub_562528(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_568754(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView, &unk_77DA98);
  return sub_7633E0();
}

uint64_t sub_5625D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_562628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_562694(uint64_t *a1, uint64_t a2))()
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
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_562730(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_5628EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_568754(&qword_95ADD8, a2, type metadata accessor for AppSearchResultContentView, &unk_7A50D8);
  result = sub_568754(&unk_95ADE0, v3, type metadata accessor for AppSearchResultContentView, &unk_7A5108);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_562970(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v155 = *(v12 - 8);
  v156 = v12;
  __chkstk_darwin(v12);
  v154 = &v122 - v13;
  v14 = sub_760840();
  v152 = *(v14 - 8);
  v153 = v14;
  __chkstk_darwin(v14);
  v151 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_760D90();
  *&v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v144 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_762D10();
  v148 = *(v17 - 8);
  v149 = v17;
  __chkstk_darwin(v17);
  v147 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75D850();
  v162 = *(v19 - 8);
  v163 = v19;
  __chkstk_darwin(v19);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v161 = &v122 - v23;
  v165 = sub_760820();
  v160 = *(v165 - 8);
  __chkstk_darwin(v165);
  v150 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v166 = &v122 - v26;
  v27 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v27 - 8);
  v143 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v164 = &v122 - v30;
  v31 = sub_760770();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_7652D0();
  __chkstk_darwin(v35 - 8);
  sub_134D8(a1, v203);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_7581C0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v145 = v202[0];
  v146 = v34;
  sub_7581B0();

  if (sub_764EE0())
  {
    v140 = a2;
    v141 = v32;
    v139 = v31;
    v142 = v6;
    v37 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
    v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v39 = qword_93C668;
    v40 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = sub_75CF00();
    sub_BE38(v41, qword_99B898);
    sub_75CDD0();
    [v40 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v40 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    v42 = *(v37 + v38);
    sub_759210();
    sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v43 = v42;
    a2 = v140;
    sub_75A050();

    v32 = v141;
    v7 = v142;
    v31 = v139;
  }

  v44 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  sub_1BA288(a1, a2);

  v45 = v146;
  sub_75BCC0();
  if ((sub_7581A0() & 1) == 0 || (sub_760760() & 1) == 0)
  {

    goto LABEL_50;
  }

  v139 = v31;
  sub_764EF0();
  v127 = v46;
  v47 = sub_764F70();
  v128 = v48;
  v129 = v47;
  v49 = sub_764E90();

  if (v49 && (v50 = sub_75E5C0(), , v50))
  {
    v51 = sub_765720();
    v130 = v52;
    v131 = v51;
  }

  else
  {
    v130 = 0;
    v131 = 0;
  }

  v138 = sub_75BC90();
  v53 = v164;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (*(v157 + 56))(v53, 0, 1, v158);
  v137 = sub_75BCB0();
  v122 = sub_75BCD0();
  v54 = [v7 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v55 = v165;
  v56 = sub_BE38(v165, qword_99B150);
  v133 = *(v160 + 16);
  v134 = v160 + 16;
  v133(v166, v56, v55);
  v57 = sub_769A00();
  v140 = a2;
  v141 = v32;
  v142 = v7;
  if ((v57 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v58 = qword_946938;
    goto LABEL_23;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = qword_946920;
LABEL_23:
    v59 = v163;
    v60 = sub_BE38(v163, v58);
    v61 = v162;
    (*(v162 + 16))(v21, v60, v59);
    (*(v61 + 32))(v161, v21, v59);
    v62 = [v54 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v132 = sub_7670D0();
    swift_allocObject();
    v135 = sub_7670B0();
    v63 = objc_opt_self();
    v136 = v54;
    v64 = v63;
    v125 = v63;
    v65 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v66 = sub_7653B0();
    v203[3] = v66;
    v67 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v203[4] = v67;
    v124 = v67;
    v68 = sub_B1B4(v203);
    v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70 = *(v66 - 8);
    v71 = *(v70 + 104);
    v126 = v70 + 104;
    v123 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v71(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
    sub_765C30();
    sub_BEB8(v203);
    v72 = v147;
    sub_762D00();
    sub_762CE0();
    v73 = v149;
    v148 = *(v148 + 8);
    (v148)(v72, v149);
    v74 = [v64 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v202[3] = v66;
    v202[4] = v67;
    v75 = sub_B1B4(v202);
    v71(v75, v69, v66);
    sub_765C30();
    sub_BEB8(v202);
    sub_762D00();
    sub_762CE0();
    v76 = v148;
    (v148)(v72, v73);
    v77 = [v125 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v201[3] = v66;
    v201[4] = v124;
    v78 = sub_B1B4(v201);
    v71(v78, v123, v66);
    sub_765C30();
    sub_BEB8(v201);
    sub_762D00();
    sub_762CE0();
    v76(v72, v73);
    v79 = v138;
    LODWORD(v149) = sub_246DC() & (v79 != 0);
    if (v149 == 1)
    {
      v80 = objc_allocWithZone(sub_7671D0());
      v81 = v136;
      v82 = sub_7671C0();
      v83 = v143;
      sub_1ED18(v164, v143, &unk_94AE30, qword_7864D0);
      v84 = v157;
      v85 = *(v157 + 48);
      v86 = v158;
      if (v85(v83, 1, v158) == 1)
      {
        v87 = v144;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v85(v83, 1, v86) != 1)
        {
          sub_10A2C(v83, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v87 = v144;
        (*(v84 + 32))(v144, v83, v86);
      }

      v90 = v82;
      sub_2185C(v138, v87, v90, a5, a6);

      (*(v84 + 8))(v87, v86);
      v88 = v132;
      swift_allocObject();
      v89 = sub_7670A0();
    }

    else
    {
      v88 = v132;
      swift_allocObject();
      v89 = sub_7670B0();
    }

    v91 = v89;

    v92 = v137;
    if ((sub_246DC() & (v92 != 0)) == 1)
    {
      sub_F7FC(v92, v122 & 1, a5, a6);
      swift_allocObject();
      v93 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v93 = sub_7670B0();
    }

    v94 = v93;
    v133(v150, v166, v165);
    v200 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v88;
    v198 = v135;
    v197 = 0;
    *&v195[40] = 0u;
    v196 = 0u;
    sub_134D8(v203, v195);
    sub_134D8(v202, &v194);
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;

    v158 = v94;
    v95 = sub_7670C0();
    v187 = &protocol witness table for LayoutViewPlaceholder;
    v186 = v88;
    v185 = v95;
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v181 = 0;
    v179 = 0u;
    v180 = 0u;
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v175 = 0;
    v174 = 0u;
    *&v173[40] = 0u;
    sub_134D8(v201, v173);
    v171 = v88;
    v172 = &protocol witness table for LayoutViewPlaceholder;
    v169 = &protocol witness table for LayoutViewPlaceholder;
    v170 = v91;
    v168 = v88;
    v167 = v94;
    v96 = v151;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v97 = swift_allocObject();
    v157 = xmmword_77D9F0;
    *(v97 + 16) = xmmword_77D9F0;
    v98 = v136;
    *(v97 + 32) = v136;
    v54 = v98;
    v99 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v100 = v153;
    sub_7665A0();
    v102 = v101;

    (*(v152 + 8))(v96, v100);
    sub_BEB8(v201);
    sub_BEB8(v202);
    sub_BEB8(v203);
    (*(v162 + 8))(v161, v163);
    (*(v160 + 8))(v166, v165);
    v103 = v154;
    sub_763F60();
    v104 = swift_allocObject();
    *(v104 + 16) = v157;
    *(v104 + 32) = v54;
    v105 = v54;
    v106 = sub_7671E0();
    sub_24128();
    v107 = v156;
    sub_7666E0();
    v109 = v108;

    (*(v155 + 8))(v103, v107);
    sub_10A2C(v164, &unk_94AE30, qword_7864D0);
    v110 = v142;
    v21 = sub_75BCA0();
    v111 = sub_75BC80();
    v112 = sub_75BC70();
    if (v112 >> 62)
    {
      v114 = v112;
      v115 = sub_76A860();
      v112 = v114;
      v32 = v141;
      if (!v115)
      {
LABEL_40:

        v113 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = v141;
      if (!*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_40;
      }
    }

    if ((v112 & 0xC000000000000001) != 0)
    {
      v54 = v112;
      v113 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_55;
      }

      v54 = v112;
      v113 = *(v112 + 32);
    }

LABEL_41:
    v116 = sub_75BCF0();
    if (!(v116 >> 62))
    {
      if (!*(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_43;
    }

    v118 = v116;
    v119 = sub_76A860();
    v116 = v118;
    if (!v119)
    {
      break;
    }

LABEL_43:
    if ((v116 & 0xC000000000000001) != 0)
    {
      v117 = sub_76A770();
      goto LABEL_46;
    }

    if (*(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8)))
    {
      v117 = *(v116 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v117 = 0;
LABEL_49:
  v120 = [v110 traitCollection];
  v121 = v146;
  sub_1600F8(v21, v111, v113, v117, v120, v140, v146, a5, a6 - v102 - v109);

  v45 = v121;

  v31 = v139;
LABEL_50:

  return (*(v32 + 8))(v45, v31);
}

void *sub_563DA0(uint64_t a1)
{
  v2 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v2 - 8);
  v170 = &v167 - v3;
  v4 = sub_75C930();
  v197 = *(v4 - 8);
  v198 = v4;
  __chkstk_darwin(v4);
  v6 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v167 - v8;
  __chkstk_darwin(v9);
  v191 = &v167 - v10;
  v11 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v11 - 8);
  v13 = &v167 - v12;
  v14 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v195 = *(v14 - 8);
  v196 = v14;
  __chkstk_darwin(v14);
  v194 = &v167 - v15;
  v16 = sub_760840();
  v205 = *(v16 - 8);
  v206 = v16;
  __chkstk_darwin(v16);
  v204 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_760D90();
  *&v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v193 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_762D10();
  v201 = *(v19 - 8);
  v202 = v19;
  __chkstk_darwin(v19);
  v200 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75D850();
  v219 = *(v21 - 8);
  v220 = v21;
  __chkstk_darwin(v21);
  v23 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v218 = &v167 - v25;
  v222 = sub_760820();
  v217 = *(v222 - 1);
  __chkstk_darwin(v222);
  v203 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v223 = &v167 - v28;
  v29 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v29 - 8);
  v192 = &v167 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v221 = &v167 - v32;
  v33 = sub_75DAB0();
  __chkstk_darwin(v33 - 8);
  v34 = sub_7656C0();
  v199 = *(v34 - 8);
  __chkstk_darwin(v34);
  v216 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_760770();
  v207 = *(v36 - 8);
  v208 = v36;
  __chkstk_darwin(v36);
  v38 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  v40 = v260[0];
  if (!v260[0])
  {
    return result;
  }

  v168 = v6;
  v41 = sub_7581B0();
  v213 = v38;
  v214 = v41;
  sub_75BCC0();
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765630();
  v43 = v42;
  v45 = v44;
  v174 = v40;
  v46 = sub_7581A0();
  v175 = v34;
  if (v46)
  {
    v190 = sub_760760();
  }

  else
  {
    v190 = 0;
  }

  v47 = v211;

  v180 = sub_764EF0();
  v181 = v48;
  v49 = sub_764F70();
  v182 = v50;
  v183 = v49;
  v51 = sub_764E90();

  if (v51 && (v52 = sub_75E5C0(), , v52))
  {
    v53 = sub_765720();
    v184 = v54;
    v185 = v53;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  v55 = v212;
  v215 = sub_75BC90();
  v56 = v221;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (*(v47 + 56))(v56, 0, 1, v55);
  v210 = sub_75BCB0();
  v169 = sub_75BCD0();
  swift_getKeyPath();
  sub_75C7B0();

  v57 = v260[5];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v58 = v222;
  v59 = sub_BE38(v222, qword_99B150);
  v187 = *(v217 + 16);
  v188 = v217 + 16;
  v187(v223, v59, v58);
  v60 = sub_769A00();
  v172 = v13;
  v173 = a1;
  if (v60)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v61 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v61 = qword_946938;
  }

  v62 = v220;
  v63 = sub_BE38(v220, v61);
  v64 = v219;
  (*(v219 + 16))(v23, v63, v62);
  (*(v64 + 32))(v218, v23, v62);
  v65 = [v57 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v186 = sub_7670D0();
  swift_allocObject();
  v189 = sub_7670B0();
  v66 = objc_opt_self();
  v178 = v66;
  v67 = [v66 preferredFontForTextStyle:UIFontTextStyleBody];
  v68 = sub_7653B0();
  v260[3] = v68;
  v69 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v260[4] = v69;
  v177 = v69;
  v70 = sub_B1B4(v260);
  v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = *(v68 - 8);
  v73 = *(v72 + 104);
  v179 = v72 + 104;
  v176 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_765C30();
  sub_BEB8(v260);
  v74 = v200;
  sub_762D00();
  sub_762CE0();
  v209 = v57;
  v75 = v202;
  v201 = *(v201 + 8);
  (v201)(v74, v202);
  v76 = [v66 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v259[3] = v68;
  v259[4] = v69;
  v77 = sub_B1B4(v259);
  v73(v77, v71, v68);
  sub_765C30();
  sub_BEB8(v259);
  sub_762D00();
  sub_762CE0();
  v78 = v201;
  (v201)(v74, v75);
  v79 = [v178 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v258[3] = v68;
  v258[4] = v177;
  v80 = sub_B1B4(v258);
  v73(v80, v176, v68);
  sub_765C30();
  sub_BEB8(v258);
  sub_762D00();
  sub_762CE0();
  v78(v74, v75);
  v81 = v215;
  if ((sub_246DC() & (v81 != 0)) == 1)
  {
    v82 = objc_allocWithZone(sub_7671D0());
    v83 = v209;
    v84 = sub_7671C0();
    v85 = v192;
    sub_1ED18(v221, v192, &unk_94AE30, qword_7864D0);
    v86 = v211;
    v87 = *(v211 + 48);
    v88 = v212;
    if (v87(v85, 1, v212) == 1)
    {
      v89 = v193;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v87(v85, 1, v88) != 1)
      {
        sub_10A2C(v85, &unk_94AE30, qword_7864D0);
      }
    }

    else
    {
      v89 = v193;
      (*(v86 + 32))(v193, v85, v88);
    }

    v92 = v84;
    sub_2185C(v215, v89, v92, v43, v45);

    (*(v86 + 8))(v89, v88);
    v90 = v186;
    swift_allocObject();
    v91 = sub_7670A0();
  }

  else
  {
    v90 = v186;
    swift_allocObject();
    v91 = sub_7670B0();
  }

  v93 = v91;

  v94 = v210;
  if ((sub_246DC() & (v94 != 0)) == 1)
  {
    sub_F7FC(v94, v169 & 1, v43, v45);
    swift_allocObject();
    v95 = sub_7670A0();
  }

  else
  {
    swift_allocObject();
    v95 = sub_7670B0();
  }

  v96 = v95;
  v187(v203, v223, v222);
  v257 = &protocol witness table for LayoutViewPlaceholder;
  v256 = v90;
  v97 = v90;
  v98 = v189;
  v255 = v189;
  v254 = 0;
  *&v252[40] = 0u;
  v253 = 0u;
  sub_134D8(v260, v252);
  sub_134D8(v259, &v251);
  v250 = 0;
  v248 = 0u;
  v249 = 0u;
  v247 = 0;
  v245 = 0u;
  v246 = 0u;

  v99 = sub_7670C0();
  v244 = &protocol witness table for LayoutViewPlaceholder;
  v243 = v97;
  v242 = v99;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  v238 = 0;
  v236 = 0u;
  v237 = 0u;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v231 = 0u;
  *&v230[40] = 0u;
  sub_134D8(v258, v230);
  v229 = &protocol witness table for LayoutViewPlaceholder;
  v228 = v97;
  v226 = &protocol witness table for LayoutViewPlaceholder;
  v227 = v93;
  v225 = v97;
  v224 = v96;
  v100 = v204;
  sub_760830();
  v101 = sub_7671D0();
  v102 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v103 = swift_allocObject();
  v211 = xmmword_77D9F0;
  *(v103 + 16) = xmmword_77D9F0;
  v104 = v209;
  *(v103 + 32) = v209;
  v105 = v104;
  v212 = v101;
  v106 = sub_7671E0();
  sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v107 = v206;
  sub_7665A0();

  (*(v205 + 8))(v100, v107);
  sub_BEB8(v258);
  sub_BEB8(v259);
  sub_BEB8(v260);
  (*(v219 + 8))(v218, v220);
  (*(v217 + 8))(v223, v222);
  sub_10A2C(v221, &unk_94AE30, qword_7864D0);
  if ((v190 & 1) == 0)
  {

    (*(v199 + 8))(v216, v175);
    return (*(v207 + 8))(v213, v208);
  }

  v108 = v194;
  sub_763F60();
  swift_getKeyPath();
  v109 = v173;
  sub_75C7B0();

  v110 = v260[0];
  v111 = swift_allocObject();
  *(v111 + 16) = v211;
  *(v111 + 32) = v110;
  v112 = v110;
  v113 = sub_7671E0();
  sub_24128();
  v114 = v196;
  sub_7666E0();

  (*(v195 + 8))(v108, v114);
  v223 = sub_75BCA0();
  v115 = sub_75BC80();
  v116 = sub_75BC70();
  if (v116 >> 62)
  {
    v117 = v116;
    v118 = sub_76A860();
    v116 = v117;
    if (v118)
    {
      goto LABEL_34;
    }

LABEL_40:

    v102 = 0;
    goto LABEL_41;
  }

  if (!*(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v116 & 0xC000000000000001) != 0)
  {
    v102 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v116 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_76;
    }

    v102 = *(v116 + 32);
  }

LABEL_41:
  v119 = sub_75BCF0();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = sub_76A860();
    v119 = v120;
    if (v121)
    {
      goto LABEL_43;
    }

LABEL_48:

    v222 = 0;
    goto LABEL_49;
  }

  if (!*(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v119 & 0xC000000000000001) != 0)
  {
    v222 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_78;
    }

    v222 = *(v119 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v122 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v98 = v260[0];
  sub_42B534(v172);

  v109 = sub_75BCA0();
  v112 = sub_75BC80();
  v123 = sub_75BC70();
  if (v123 >> 62)
  {
    v124 = v123;
    v125 = sub_76A860();
    v123 = v124;
    v113 = v213;
    if (v125)
    {
LABEL_51:
      if ((v123 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_80;
        }

        v98 = *(v123 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v98 = sub_76A770();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v113 = v213;
    if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_51;
    }
  }

  v98 = 0;
LABEL_57:
  v126 = sub_75BCF0();
  if (v126 >> 62)
  {
    v129 = v126;
    v130 = sub_76A860();
    v126 = v129;
    v221 = v102;
    if (v130)
    {
LABEL_59:
      if ((v126 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
        {
          v128 = *(v126 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v219 = sub_76A860();
        if (v98)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v128 = sub_76A770();
      goto LABEL_62;
    }
  }

  else
  {
    v127 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
    v221 = v102;
    if (v127)
    {
      goto LABEL_59;
    }
  }

  v128 = 0;
LABEL_65:
  v131 = sub_760760();
  v220 = v115;
  if ((v131 & 1) == 0)
  {

    v135 = v197;
    v136 = v191;
    (*(v197 + 104))(v191, enum case for LockupMediaLayout.DisplayType.none(_:), v198);
LABEL_72:
    v139 = v172;
    v140 = v199;
LABEL_104:
    type metadata accessor for LockupMediaView(0);
    v165 = sub_527DE4();
    swift_getObjectType();
    v166 = v213;
    sub_161888(v223, v220, v221, v222, v139, v136, v165, v213, v43, v45);

    swift_unknownObjectRelease();

    (*(v135 + 8))(v136, v198);
    sub_10A2C(v139, &unk_948720, &unk_784970);
    (*(v140 + 8))(v216, v175);
    return (*(v207 + 8))(v166, v208);
  }

  if (v112 | v109)
  {
    v137 = v171;
    sub_7666A0();

    v135 = v197;
    v138 = v198;
    (*(v197 + 104))(v137, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v198);
    v136 = v191;
    (*(v135 + 32))(v191, v137, v138);
    goto LABEL_72;
  }

  v133 = sub_55BABC(v98, v128, 0, 1, v132);
  v112 = v133;
  v113 = (v133 >> 62);
  if (v133 >> 62)
  {
    goto LABEL_81;
  }

  v219 = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8));
  if (v98)
  {
LABEL_69:
    v134 = sub_759690();
    goto LABEL_83;
  }

LABEL_82:
  v134 = 0;
LABEL_83:
  v141 = sub_55BE04(v134);

  LODWORD(v217) = v141;
  if (v98)
  {
    v142 = sub_759690();
  }

  else
  {
    v142 = 0;
  }

  v144 = v207;
  v143 = v208;
  v145 = v170;
  (*(v207 + 16))(v170, v213, v208);
  v146.n128_f64[0] = (*(v144 + 56))(v145, 0, 1, v143);
  v147 = sub_55C32C(v142, v145, v146);

  sub_10A2C(v145, &unk_94DF00, &unk_792100);
  if (v113)
  {
    result = sub_76A860();
    v148 = v168;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8));
  v148 = v168;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v112 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_91:

    v149 = sub_765150();

    if (v149)
    {

      v135 = v197;
      v150 = v198;
      v151 = v171;
      (*(v197 + 104))(v171, enum case for LockupMediaLayout.DisplayType.landscape(_:), v198);
LABEL_103:
      v136 = v191;
      v164 = v172;
      v140 = v199;
      (*(v135 + 32))(v191, v151, v150);
      v139 = v164;
      goto LABEL_104;
    }

LABEL_95:
    v152 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v153 = v147;
    v154 = v197;
    v155 = v148;
    v156 = v148;
    v150 = v198;
    v218 = *(v197 + 104);
    (v218)(v155, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v198);
    v157 = sub_75C920();
    v215 = *(v154 + 8);
    v215(v156, v150);
    if (((v219 >= v157) & v153) != 0 || (v152 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v218)(v156, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v150), v158 = sub_75C920(), v159 = v215, v215(v156, v150), ((v219 >= v158) & v217) != 0) || (v152 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v218)(v156, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v150), v160 = sub_75C920(), v159(v156, v150), v219 >= v160))
    {
    }

    else
    {
      v152 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v218)(v156, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v150);
      v161 = sub_75C920();

      v159(v156, v150);
      if (v219 != v161)
      {
        v162 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v171;
        v163 = v171;
LABEL_102:
        (v218)(v163, v162, v150);
        v135 = v197;
        goto LABEL_103;
      }
    }

    v151 = v171;
    v163 = v171;
    v162 = v152;
    goto LABEL_102;
  }

  if (*(&dword_10 + (v112 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

void *sub_565968(uint64_t a1, uint64_t a2)
{
  v276 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v269 = &v216[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v5 - 8);
  v240 = &v216[-v6];
  v7 = sub_766690();
  v258 = *(v7 - 8);
  __chkstk_darwin(v7);
  v248 = &v216[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v257 = &v216[-v10];
  v11 = sub_75C9A0();
  v244 = *(v11 - 8);
  __chkstk_darwin(v11);
  v268 = &v216[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v13 - 8);
  v247 = &v216[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v272 = &v216[-v16];
  v17 = sub_75C930();
  v259 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v216[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v238 = &v216[-v21];
  __chkstk_darwin(v22);
  v262 = &v216[-v23];
  __chkstk_darwin(v24);
  v241 = &v216[-v25];
  __chkstk_darwin(v26);
  v271 = &v216[-v27];
  v28 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v255 = *(v28 - 8);
  v256 = v28;
  __chkstk_darwin(v28);
  v254 = &v216[-v29];
  v30 = sub_760840();
  v252 = *(v30 - 8);
  v253 = v30;
  __chkstk_darwin(v30);
  v251 = &v216[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_760D90();
  v260 = *(v32 - 1);
  v261 = v32;
  __chkstk_darwin(v32);
  v243 = &v216[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v273 = sub_762D10();
  v249 = *(v273 - 8);
  __chkstk_darwin(v273);
  v35 = &v216[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_75D850();
  v266 = *(v36 - 1);
  v267 = v36;
  __chkstk_darwin(v36);
  v38 = &v216[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v265 = &v216[-v40];
  v274 = sub_760820();
  v264 = *(v274 - 8);
  __chkstk_darwin(v274);
  v250 = &v216[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v275 = &v216[-v43];
  v44 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v44 - 8);
  v242 = &v216[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v270 = &v216[-v47];
  v48 = sub_75DAB0();
  __chkstk_darwin(v48 - 8);
  v49 = sub_7656C0();
  v245 = *(v49 - 8);
  v246 = v49;
  __chkstk_darwin(v49);
  v263 = &v216[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_760770();
  v278 = *(v51 - 8);
  v279 = v51;
  __chkstk_darwin(v51);
  v281 = &v216[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7581C0();
  sub_568754(&qword_95ADF0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  v280 = a1;
  result = sub_75C750();
  if (!v319[0])
  {
    return result;
  }

  v239 = v19;
  v236 = v11;
  v277 = v319[0];
  sub_7581B0();
  v323 = _swiftEmptyArrayStorage;

  if (sub_764EE0())
  {
    if (qword_93C668 != -1)
    {
      swift_once();
    }

    v54 = sub_75CF00();
    sub_BE38(v54, qword_99B898);
    sub_75CDD0();
    sub_765330();
    sub_769440();
    if (*(&dword_10 + (v323 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v323 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v237 = v7;
  v55 = sub_75BC90();
  swift_getKeyPath();
  sub_75C7B0();

  v56 = v319[0];
  v57 = sub_1BA624(v55, v319[0]);

  sub_10A0E4(v57);
  v58 = v281;
  sub_75BCC0();
  v59 = sub_75BC70();
  if (v59 >> 62)
  {
    v135 = sub_76A860();
    v58 = v281;

    if (v135)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_7581A0() & 1) == 0 || (sub_760760() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v280;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_765560();
  v63 = v62;
  sub_563DA0(v61);
  v65 = v64;
  v66 = sub_764EF0();
  v221 = v67;
  v222 = v66;
  v68 = sub_764F70();
  v223 = v69;
  v224 = v68;
  v70 = sub_764E90();

  if (v70)
  {
    v71 = sub_75E5C0();

    v73 = v260;
    v72 = v261;
    if (v71)
    {
      v74 = sub_765720();
      v225 = v75;
      v226 = v74;
    }

    else
    {
      v225 = 0;
      v226 = 0;
    }
  }

  else
  {
    v225 = 0;
    v226 = 0;
    v73 = v260;
    v72 = v261;
  }

  v234 = sub_75BC90();
  v76 = v270;
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  (v73[7])(v76, 0, 1, v72);
  v233 = sub_75BCB0();
  v77 = sub_75BCD0();
  swift_getKeyPath();
  sub_75C7B0();

  v78 = v322;
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v79 = v274;
  v80 = sub_BE38(v274, qword_99B150);
  v81 = v264 + 2;
  v82 = v264[2];
  v82(v275, v80, v79);
  v83 = sub_769A00();
  v235 = v17;
  v228 = v82;
  v229 = v81;
  v217 = v77;
  if ((v83 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v84 = qword_946938;
    goto LABEL_27;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v84 = qword_946920;
LABEL_27:
    v85 = v267;
    v86 = sub_BE38(v267, v84);
    v87 = v266;
    (*(v266 + 16))(v38, v86, v85);
    (*(v87 + 32))(v265, v38, v85);
    v88 = [v78 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v227 = sub_7670D0();
    swift_allocObject();
    v230 = sub_7670B0();
    v231 = objc_opt_self();
    v89 = [v231 preferredFontForTextStyle:UIFontTextStyleBody];
    v90 = sub_7653B0();
    v320 = v90;
    v91 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v321 = v91;
    v219 = v91;
    v92 = sub_B1B4(v319);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v90 - 8);
    v95 = *(v94 + 104);
    v220 = v94 + 104;
    v95(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v90);
    v218 = v95;
    sub_765C30();
    v232 = v78;
    sub_BEB8(v319);
    sub_762D00();
    sub_762CE0();
    v96 = *(v249 + 8);
    v96(v35, v273);
    v97 = [v231 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v318[3] = v90;
    v318[4] = v91;
    v98 = sub_B1B4(v318);
    v95(v98, v93, v90);
    sub_765C30();
    sub_BEB8(v318);
    sub_762D00();
    sub_762CE0();
    v96(v35, v273);
    v99 = [v231 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v317[3] = v90;
    v317[4] = v219;
    v100 = sub_B1B4(v317);
    v218(v100, v93, v90);
    sub_765C30();
    sub_BEB8(v317);
    sub_762D00();
    sub_762CE0();
    v96(v35, v273);
    v101 = v234;
    LODWORD(v273) = sub_246DC() & (v101 != 0);
    if (v273 == 1)
    {
      v102 = objc_allocWithZone(sub_7671D0());
      v103 = v232;
      v104 = sub_7671C0();
      v105 = v242;
      sub_1ED18(v270, v242, &unk_94AE30, qword_7864D0);
      v107 = v260;
      v106 = v261;
      v108 = v260[6];
      if (v108(v105, 1, v261) == 1)
      {
        v109 = v243;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v108(v105, 1, v106) != 1)
        {
          sub_10A2C(v105, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v109 = v243;
        (v107[4])(v243, v105, v106);
      }

      v112 = v104;
      sub_2185C(v234, v109, v112, v63, v65);

      (v107[1])(v109, v106);
      v110 = v227;
      swift_allocObject();
      v111 = sub_7670A0();
    }

    else
    {
      v110 = v227;
      swift_allocObject();
      v111 = sub_7670B0();
    }

    v113 = v111;

    v114 = v233;
    if ((sub_246DC() & (v114 != 0)) == 1)
    {
      sub_F7FC(v114, v217 & 1, v63, v65);
      swift_allocObject();
      v115 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v115 = sub_7670B0();
    }

    v116 = v115;
    v228(v250, v275, v274);
    v316 = &protocol witness table for LayoutViewPlaceholder;
    v315 = v110;
    v314 = v230;
    v313 = 0;
    *&v311[40] = 0u;
    v312 = 0u;
    sub_134D8(v319, v311);
    sub_134D8(v318, &v310);
    v309 = 0;
    v307 = 0u;
    v308 = 0u;
    v306 = 0;
    v304 = 0u;
    v305 = 0u;

    v261 = v116;
    v117 = sub_7670C0();
    v303 = &protocol witness table for LayoutViewPlaceholder;
    v302 = v110;
    v301 = v117;
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    v297 = 0;
    v295 = 0u;
    v296 = 0u;
    v294 = 0;
    v292 = 0u;
    v293 = 0u;
    v291 = 0;
    v290 = 0u;
    *&v289[40] = 0u;
    sub_134D8(v317, v289);
    v288 = &protocol witness table for LayoutViewPlaceholder;
    v287 = v110;
    v286 = v113;
    v285 = &protocol witness table for LayoutViewPlaceholder;
    v284 = v110;
    v283 = v116;
    v118 = v251;
    sub_760830();
    sub_7671D0();
    v119 = sub_BD88(&unk_93F5C0, &unk_77C600);
    v120 = swift_allocObject();
    v273 = xmmword_77D9F0;
    *(v120 + 16) = xmmword_77D9F0;
    v121 = v232;
    *(v120 + 32) = v232;
    v122 = v121;
    v123 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v124 = v253;
    sub_7665A0();

    (*(v252 + 8))(v118, v124);
    sub_BEB8(v317);
    sub_BEB8(v318);
    sub_BEB8(v319);
    (*(v266 + 8))(v265, v267);
    (v264[1])(v275, v274);
    v78 = v254;
    sub_763F60();
    v125 = swift_allocObject();
    *(v125 + 16) = v273;
    *(v125 + 32) = v122;
    v126 = v122;
    v38 = sub_7671E0();
    sub_24128();
    v127 = v256;
    sub_7666E0();

    (*(v255 + 8))(v78, v127);
    sub_10A2C(v270, &unk_94AE30, qword_7864D0);
    v128 = sub_75BCA0();
    v35 = sub_75BC80();
    v129 = sub_75BC70();
    if (v129 >> 62)
    {
      v38 = v129;
      v130 = sub_76A860();
      v129 = v38;
    }

    else
    {
      v130 = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8));
    }

    v131 = v271;
    v132 = v239;
    if (v130)
    {
      if ((v129 & 0xC000000000000001) != 0)
      {
        v38 = v129;
        v127 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v129;
        v127 = *(v129 + 32);
      }
    }

    else
    {

      v127 = 0;
    }

    v133 = sub_75BCF0();
    if (v133 >> 62)
    {
      v38 = v133;
      v137 = sub_76A860();
      v133 = v38;
      v270 = v35;
      if (!v137)
      {
LABEL_57:

        v275 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v134 = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8));
      v270 = v35;
      if (!v134)
      {
        goto LABEL_57;
      }
    }

    if ((v133 & 0xC000000000000001) != 0)
    {
      v38 = v133;
      v275 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_123:
        v141 = sub_76A770();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v133;
      v275 = *(v133 + 32);
    }

LABEL_58:
    v119 = sub_75BCA0();
    v78 = sub_75BC80();
    v129 = sub_75BC70();
    if (v129 >> 62)
    {
      v38 = v129;
      v138 = sub_76A860();
      v129 = v38;
      if (!v138)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v129 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v129;
        v38 = *(v129 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v129;
      v38 = sub_76A770();
LABEL_63:

      goto LABEL_66;
    }

    if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v139 = sub_75BCF0();
    if (v139 >> 62)
    {
      break;
    }

    v140 = *(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8));
    v274 = v127;
    if (!v140)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v139 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)))
    {
      v141 = *(v139 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v142 = v139;
  v143 = sub_76A860();
  v139 = v142;
  v274 = v127;
  if (v143)
  {
    goto LABEL_68;
  }

LABEL_73:

  v141 = 0;
LABEL_74:
  if ((sub_760760() & 1) == 0)
  {

    v141 = v259;
    v38 = v235;
    (*(v259 + 104))(v131, enum case for LockupMediaLayout.DisplayType.none(_:), v235);
LABEL_82:
    v148 = v237;
    v146 = v258;
    goto LABEL_110;
  }

  if (v78 | v119)
  {
    v150 = v241;
    sub_7666A0();

    v141 = v259;
    v38 = v235;
    (*(v259 + 104))(v150, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v235);
    (*(v141 + 32))(v131, v150, v38);
    goto LABEL_82;
  }

  v145 = sub_55BABC(v38, v141, 0, 1, v144);
  v131 = v145;
  v146 = v145 >> 62;
  if (v145 >> 62)
  {
    goto LABEL_175;
  }

  v147 = *(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8));
  while (2)
  {
    v148 = v237;
    *&v273 = v147;
    if (v38)
    {
      v149 = sub_759690();
    }

    else
    {
      v149 = 0;
    }

    LODWORD(v266) = sub_55BE04(v149);

    v256 = v128;
    if (v38)
    {
      v151 = sub_759690();
    }

    else
    {
      v151 = 0;
    }

    v152 = v278;
    v153 = v279;
    v154 = v240;
    (*(v278 + 16))(v240, v281, v279);
    v155.n128_f64[0] = (*(v152 + 56))(v154, 0, 1, v153);
    v132 = sub_55C32C(v151, v154, v155);

    sub_10A2C(v154, &unk_94DF00, &unk_792100);
    if (v146)
    {
      v157 = sub_76A860();
    }

    else
    {
      v157 = *(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8));
    }

    v146 = v258;
    v128 = v256;
    if (!v157)
    {

      goto LABEL_97;
    }

    if ((v131 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v158 = sub_765150();

    if ((v158 & 1) == 0)
    {
LABEL_97:
      v160 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v161 = v259;
      v162 = v235;
      v163 = v238;
      v267 = *(v259 + 104);
      v267(v238, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v235);
      v164 = v132;
      v165 = sub_75C920();
      v265 = *(v161 + 8);
      (v265)(v163, v162);
      if (((v273 >= v165) & v164) != 0)
      {

        v159 = v241;
        v166 = v241;
        v167 = v160;
      }

      else
      {
        v168 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v267(v163, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v162);
        v169 = sub_75C920();
        v170 = v265;
        (v265)(v163, v162);
        if (((v273 >= v169) & v266) == 0)
        {
          v171 = v163;
          v172 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v267(v163, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v162);
          v173 = sub_75C920();
          v170(v171, v162);
          v174 = v273 < v173;
          v175 = v171;
          v131 = v271;
          if (v174)
          {
            LODWORD(v266) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v267)(v175);
            v176 = sub_75C920();

            v170(v175, v162);
            if (v273 == v176)
            {
              v159 = v241;
              v177 = v241;
              v178 = v266;
            }

            else
            {
              v178 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v159 = v241;
              v177 = v241;
            }
          }

          else
          {

            v159 = v241;
            v177 = v241;
            v178 = v172;
          }

          v267(v177, v178, v162);
          v38 = v162;
          v141 = v259;
          goto LABEL_108;
        }

        v159 = v241;
        v166 = v241;
        v167 = v168;
      }

      v267(v166, v167, v162);
      v38 = v162;
      v141 = v259;
      v131 = v271;
LABEL_108:
      v148 = v237;
      v146 = v258;
      v128 = v256;
      goto LABEL_109;
    }

    v141 = v259;
    v159 = v241;
    v38 = v235;
    (*(v259 + 104))(v241, enum case for LockupMediaLayout.DisplayType.landscape(_:), v235);
    v131 = v271;
LABEL_109:
    (*(v141 + 32))(v131, v159, v38);
    v132 = v239;
LABEL_110:
    v179 = sub_527DE4();
    (*(v146 + 56))(v272, 1, 1, v148);
    v260 = v179;
    v261 = [v179 traitCollection];
    v320 = &type metadata for CGFloat;
    v321 = &protocol witness table for CGFloat;
    v319[0] = 0x4021000000000000;
    sub_134D8(v319, v318);
    v180 = *(v141 + 16);
    v280 = v141 + 16;
    *&v273 = v180;
    v180(v262, v131, v38);
    if (v270 | v128)
    {
      goto LABEL_129;
    }

    v182 = sub_55BABC(v274, v275, 0, 1, v181);
    if (!(v182 >> 62))
    {
      if (!*(&dword_10 + (v182 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v182 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v182 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_175:
          v147 = sub_76A860();
          continue;
        }
      }

      sub_765260();
      sub_7666A0();

      goto LABEL_130;
    }

    break;
  }

  v183 = v182;
  v184 = sub_76A860();
  v182 = v183;
  if (v184)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_7666A0();
LABEL_130:
  sub_1ED18(v272, v247, &unk_948720, &unk_784970);
  sub_75C970();
  sub_BEB8(v319);
  v185 = v248;
  sub_75C980();
  sub_766660();
  v186 = *(v146 + 8);
  v146 += 8;
  v186(v185, v148);
  if (v270)
  {
    v132 = v141;

    sub_764BC0();
    v187 = sub_765330();
    v188 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v146 = *(v188 + 2);
    v189 = *(v188 + 3);
    v190 = v146 + 1;
    if (v146 >= v189 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v128)
  {

    v192 = sub_765330();
    v188 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
    v194 = *(v188 + 2);
    v193 = *(v188 + 3);
    if (v194 >= v193 >> 1)
    {
      v188 = sub_7B220((v193 > 1), v194 + 1, 1, v188);
    }

    (*(v244 + 8))(v268, v236);
    sub_10A2C(v272, &unk_948720, &unk_784970);
    *(v188 + 2) = v194 + 1;
    v195 = &v188[2 * v194];
    *(v195 + 4) = v192;
    *(v195 + 40) = 0;
    goto LABEL_180;
  }

  v196 = sub_75C920();
  v198 = sub_55BABC(v274, v275, v196, 0, v197);
  sub_75C9C0();
  v156 = v198;
  if (!(v198 >> 62))
  {
    result = *(&dword_10 + (v198 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v244 + 8))(v268, v236);
    sub_10A2C(v272, &unk_948720, &unk_784970);
    v188 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v212 = v156;
  result = sub_76A860();
  v156 = v212;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v256 = v128;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v199 = 0;
  v267 = (v156 & 0xC000000000000001);
  v200 = (v141 + 88);
  LODWORD(v266) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v258) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v262 = (v141 + 8);
  v188 = _swiftEmptyArrayStorage;
  v264 = result;
  v265 = v156;
  while (2)
  {
    if (v267)
    {
      v190 = sub_76A770();
    }

    else
    {
      v190 = *(v156 + 8 * v199 + 32);
    }

    v201 = v235;
    (v273)(v132, v131, v235);
    v202 = (*v200)(v132, v201);
    if (v202 == v266)
    {
      (*v262)(v132, v201);
      goto LABEL_147;
    }

    if (v202 != v258)
    {
      v203 = sub_765150();
      (*v262)(v132, v235);
      if (v275)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v274)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v203 = 0;
    if (!v275)
    {
      goto LABEL_148;
    }

LABEL_151:
    v187 = v275;
    v205 = sub_765750();
    if (!(v205 >> 62))
    {
      if (*(&dword_10 + (v205 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v274)
      {
LABEL_162:
        v204 = 0;
LABEL_163:
        sub_7596B0();
        v209 = v269;
        sub_6C14C(v204, v269);

        sub_769DA0();
        v207 = sub_765330();
        sub_161D14(v209);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = sub_7B220(0, *(v188 + 2) + 1, 1, v188);
        }

        v146 = *(v188 + 2);
        v210 = *(v188 + 3);
        if (v146 >= v210 >> 1)
        {
          v188 = sub_7B220((v210 > 1), v146 + 1, 1, v188);
        }

        v199 = (v199 + 1);

        *(v188 + 2) = v146 + 1;
        v211 = &v188[2 * v146];
        *(v211 + 4) = v207;
        *(v211 + 40) = v203 & 1;
        v156 = v265;
        v132 = v239;
        if (v264 == v199)
        {

          (*(v244 + 8))(v268, v236);
          sub_10A2C(v272, &unk_948720, &unk_784970);
          v141 = v259;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v187 = v205;
  v208 = sub_76A860();
  v205 = v187;
  if (!v208)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v205 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_156;
  }

  v189 = *(&dword_10 + (v205 & 0xFFFFFFFFFFFFFF8));
  if (v189)
  {

LABEL_156:

    sub_765390();
    sub_764BC0();
    v206 = sub_7651E0();

    if (v206)
    {
      v207 = sub_765330();

      v131 = v271;
      goto LABEL_164;
    }

    v131 = v271;
    if (!v274)
    {
      goto LABEL_162;
    }

LABEL_149:
    v204 = sub_759690();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v188 = sub_7B220((v189 > 1), v190, 1, v188);
LABEL_132:

  (*(v244 + 8))(v268, v236);
  sub_10A2C(v272, &unk_948720, &unk_784970);
  *(v188 + 2) = v190;
  v191 = &v188[2 * v146];
  *(v191 + 4) = v187;
  *(v191 + 40) = 0;
  v141 = v132;
LABEL_180:
  v213 = *(v188 + 2);
  if (v213)
  {
    v319[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v214 = 32;
    do
    {

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v214 += 16;
      --v213;
    }

    while (v213);
    swift_unknownObjectRelease();

    (*(v141 + 8))(v271, v235);
    v215 = v319[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v141 + 8))(v131, v235);
    v215 = _swiftEmptyArrayStorage;
  }

  sub_10A0E4(v215);
  (*(v245 + 8))(v263, v246);
  v58 = v281;
LABEL_53:
  v136._rawValue = v323;
  sub_75A070(v136);

  return (*(v278 + 8))(v58, v279);
}

void sub_5680B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_76A860();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_568754(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v29);
    v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_7591D0(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_940590) setImage:0];
    type metadata accessor for VideoView(0);
    sub_568754(&qword_952550, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_7591D0(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_7591D0(v32, v25);
        sub_759210();
        sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A0C0();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_759210();
  sub_568754(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_75A0C0();
}

void sub_5684E8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_76A840();
  __break(1u);
}

id sub_5685E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v7 = v2;
    v8 = sub_76A1C0();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_55A7A8();

  return [v2 setNeedsLayout];
}

uint64_t sub_568754(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_5688A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99E5A8);
  v1 = sub_BE38(v0, qword_99E5A8);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000000007E8010;
  *(v1 + 16) = sub_568970;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_568D38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_95AEC8);
  v1 = sub_BE38(v0, qword_95AEC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E7FC0;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_568EA0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99E9C8);
  v1 = sub_BE38(v0, qword_99E9C8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000000007E7F40;
  *(v1 + 16) = sub_568F5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_568F5C(__n128 a1)
{
  v1 = sub_7573C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v5 = sub_757320();
  (*(v2 + 8))(v4, v1);
  v6 = &UIFontTextStyleTitle2;
  if (v5)
  {
    v6 = &UIFontTextStyleTitle3;
  }

  v7 = *v6;

  return v7;
}

uint64_t sub_569080(__n128 a1)
{
  v1 = sub_765900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_7666D0();
  sub_161DC(v8, qword_99EA10);
  v9 = sub_BE38(v8, qword_99EA10);
  (*(v2 + 104))(v7, enum case for Paragraph.Style.standard(_:), v1);
  v10 = *(v2 + 32);
  v10(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v10((v12 + v11), v4, v1);
  *v9 = 0x7061726761726170;
  *(v9 + 8) = 0xE900000000000068;
  *(v9 + 16) = sub_56DF64;
  *(v9 + 24) = v12;
  *(v9 + 32) = 0;
  return (*(*(v8 - 8) + 104))(v9, enum case for FontUseCase.dynamicPreferredFont(_:), v8);
}

uint64_t sub_56929C(__n128 a1)
{
  v1 = sub_765900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_7666D0();
  sub_161DC(v8, qword_99EA58);
  v9 = sub_BE38(v8, qword_99EA58);
  (*(v2 + 104))(v7, enum case for Paragraph.Style.article(_:), v1);
  v10 = *(v2 + 32);
  v10(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v10((v12 + v11), v4, v1);
  *v9 = 0xD000000000000010;
  *(v9 + 8) = 0x80000000007E7F60;
  *(v9 + 16) = sub_56E2DC;
  *(v9 + 24) = v12;
  *(v9 + 32) = 0;
  return (*(*(v8 - 8) + 104))(v9, enum case for FontUseCase.dynamicPreferredFont(_:), v8);
}

uint64_t sub_569514()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EAE8);
  v1 = sub_BE38(v0, qword_99EAE8);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x80000000007E7DD0;
  *(v1 + 16) = sub_5695DC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_5695E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EB00);
  v1 = sub_BE38(v0, qword_99EB00);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000000007E7DF0;
  *(v1 + 16) = sub_5696AC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_5698BC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99ECF8);
  v1 = sub_BE38(v0, qword_99ECF8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000000007E7F10;
  *(v1 + 16) = sub_569984;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_569990()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99ED10);
  v1 = sub_BE38(v0, qword_99ED10);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000000007E7EE0;
  *(v1 + 16) = sub_569A58;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_569C60()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF20);
  v1 = sub_BE38(v0, qword_99EF20);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000000007E7C00;
  *(v1 + 16) = sub_56DF68;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569D78()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF38);
  v1 = sub_BE38(v0, qword_99EF38);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x80000000007E7C60;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569E90()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF50);
  v1 = sub_BE38(v0, qword_99EF50);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x80000000007E7C80;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_569FA8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF68);
  v1 = sub_BE38(v0, qword_99EF68);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x80000000007E7CB0;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_56A0C0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF80);
  v1 = sub_BE38(v0, qword_99EF80);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x80000000007E7CE0;
  *(v1 + 16) = sub_56E2EC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_56A1D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EF98);
  v1 = sub_BE38(v0, qword_99EF98);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000000007E7C40;
  *(v1 + 16) = sub_56DFC8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_56A2CC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFB0);
  v1 = sub_BE38(v0, qword_99EFB0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x80000000007E7C20;
  *(v1 + 16) = sub_56DFAC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_56A3E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFC8);
  v1 = sub_BE38(v0, qword_99EFC8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000000007E80B0;
  *(v1 + 16) = sub_56E2F0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_56A4FC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFE0);
  v1 = sub_BE38(v0, qword_99EFE0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x80000000007E7D10;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56A5F0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99EFF8);
  v1 = sub_BE38(v0, qword_99EFF8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x80000000007E7D50;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56A6E4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F010);
  v1 = sub_BE38(v0, qword_99F010);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x80000000007E7D90;
  *(v1 + 16) = sub_56E2E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56AA54()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F298);
  v1 = sub_BE38(v0, qword_99F298);
  v2 = sub_56AB30(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_56AB30(double a1, double a2, double a3, double a4))()
{
  v8 = sub_7599A0();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  sub_BD88(&qword_95AEE0, &qword_7A52D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7A52B0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  sub_759CC0();
  v41 = v12;
  sub_759CB0();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  sub_759CC0();
  v26 = v41;
  sub_759CB0();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  sub_759CC0();
  v29 = v41;
  sub_759CB0();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_10CE38(inited);
  swift_setDeallocating();
  sub_BD88(&qword_95AEE8, &qword_7A52D8);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_56E2E8;
}

uint64_t sub_56B0D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2B0);
  v1 = sub_BE38(v0, qword_99F2B0);
  v2 = sub_56AB30(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7EC0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56B1B4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2C8);
  v1 = sub_BE38(v0, qword_99F2C8);
  v2 = sub_56AB30(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000000007E7EA0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56B298()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F2E0);
  v1 = sub_BE38(v0, qword_99F2E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A52C0;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_56DF24;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_56B3A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F310);
  v1 = sub_BE38(v0, qword_99F310);
  v2 = sub_56B484(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x80000000007E7E10;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_56B484(double a1, double a2, double a3, double a4))()
{
  v8 = sub_7599A0();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95D3A0, qword_7A11F0);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_BD88(&qword_95AEE0, &qword_7A52D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7A52B0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  sub_759CC0();
  v47 = v12;
  sub_759CB0();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  sub_759CC0();
  v25 = v47;
  sub_759CB0();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  sub_759CC0();
  v28 = v47;
  sub_759CB0();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  sub_759CC0();
  sub_759CB0();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  sub_759CC0();
  sub_759CB0();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  sub_759CC0();
  sub_759CB0();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_10CE38(inited);
  swift_setDeallocating();
  sub_BD88(&qword_95AEE8, &qword_7A52D8);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_56E008;
}

uint64_t sub_56BCB4()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F340);
  v1 = sub_BE38(v0, qword_99F340);
  v2 = sub_56B484(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x80000000007E7E70;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_56BE38()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F400);
  v1 = sub_BE38(v0, qword_99F400);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E7E50;
  *(v1 + 16) = sub_56BF00;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56BF00(uint64_t a1)
{
  v1 = sub_769240();
  v3 = v2;
  if (v1 == sub_769240() && v3 == v4)
  {

    return 13.0;
  }

  else
  {
    v6 = sub_76A950();

    result = 13.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_769240();
      v10 = v9;
      if (v8 == sub_769240() && v10 == v11)
      {

        return 15.0;
      }

      else
      {
        v13 = sub_76A950();

        result = 15.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_769240();
          v16 = v15;
          if (v14 == sub_769240() && v16 == v17)
          {

            return 18.0;
          }

          else
          {
            v18 = sub_76A950();

            result = 10.0;
            if (v18)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C138()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4A8);
  v1 = sub_BE38(v0, qword_99F4A8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000000007E7FA0;
  *(v1 + 16) = sub_56C200;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C200(uint64_t a1)
{
  v1 = sub_769240();
  v3 = v2;
  if (v1 == sub_769240() && v3 == v4)
  {

    return 16.0;
  }

  else
  {
    v6 = sub_76A950();

    result = 16.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_769240();
      v10 = v9;
      if (v8 == sub_769240() && v10 == v11)
      {

        return 18.0;
      }

      else
      {
        v13 = sub_76A950();

        result = 18.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_769240();
          v16 = v15;
          if (v14 == sub_769240() && v16 == v17)
          {

            return 20.0;
          }

          else
          {
            v18 = sub_76A950();

            result = 14.0;
            if (v18)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C3A8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4C0);
  v1 = sub_BE38(v0, qword_99F4C0);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x80000000007E8050;
  *(v1 + 16) = sub_56C470;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C470(uint64_t a1)
{
  v1 = sub_769240();
  v3 = v2;
  if (v1 == sub_769240() && v3 == v4)
  {

    return 11.0;
  }

  else
  {
    v6 = sub_76A950();

    result = 11.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_769240();
      v10 = v9;
      if (v8 == sub_769240() && v10 == v11)
      {

        return 13.0;
      }

      else
      {
        v13 = sub_76A950();

        result = 13.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_769240();
          v16 = v15;
          if (v14 == sub_769240() && v16 == v17)
          {

            return 15.0;
          }

          else
          {
            v18 = sub_76A950();

            result = 9.0;
            if (v18)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_56C618()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4D8);
  v1 = sub_BE38(v0, qword_99F4D8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E8070;
  *(v1 + 16) = sub_5695DC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56C6E0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F4F0);
  v1 = sub_BE38(v0, qword_99F4F0);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_56C7B0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C7B0(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_56C7D8()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F508);
  v1 = sub_BE38(v0, qword_99F508);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x80000000007E8030;
  *(v1 + 16) = sub_56C8A0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_56C8A0(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_7A52E0[Main - 1];
  }

  return result;
}

uint64_t sub_56C8F0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F538);
  v1 = sub_BE38(v0, qword_99F538);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x80000000007E7FE0;
  *(v1 + 16) = sub_56C9B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56C9F0(__n128 a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int a5)
{
  v8 = sub_765900();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  sub_161DC(v12, a3);
  v13 = sub_BE38(v12, a3);
  (*(v9 + 104))(v11, *a4, v8);
  v14 = sub_7658F0();
  (*(v9 + 8))(v11, v8);
  *v13 = v14;
  *(v13 + 8) = a5;
  return (*(*(v12 - 8) + 104))(v13, enum case for FontUseCase.preferredFont(_:), v12);
}

uint64_t sub_56CC18()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F640);
  v1 = sub_BE38(v0, qword_99F640);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000000007E7BE0;
  *(v1 + 16) = sub_56CCE0;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56CDFC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F760);
  v1 = sub_BE38(v0, qword_99F760);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7F80;
  *(v1 + 16) = sub_17E794;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56CFDC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99F880);
  v1 = sub_BE38(v0, qword_99F880);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000000007E8090;
  *(v1 + 16) = sub_568970;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56D258()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99FA18);
  v1 = sub_BE38(v0, qword_99FA18);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_56D328;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_56D330()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99FA30);
  v1 = sub_BE38(v0, qword_99FA30);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000000007E7E30;
  *(v1 + 16) = sub_56C9B8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_56D6F0(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_7666D0();
  sub_161DC(v7, a2);
  v8 = sub_BE38(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_56D7A8(__n128 a1)
{
  v1 = sub_7573C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v5 = sub_757320();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return sub_7658E0();
  }

  else
  {
    return sub_7658F0();
  }
}

double sub_56D890(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_56D930(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = sub_76A950();

  if (v11)
  {
    return a3;
  }

  v12 = sub_769240();
  v14 = v13;
  if (v12 == sub_769240() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_76A950();

  if (v17)
  {
    return a3;
  }

  v18 = sub_769240();
  v20 = v19;
  if (v18 == sub_769240() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = sub_76A950();

  if (v23)
  {
    return a3;
  }

  v24 = sub_769240();
  v26 = v25;
  if (v24 == sub_769240() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = sub_76A950();

  if (v28)
  {
    return a3;
  }

  v29 = sub_769240();
  v31 = v30;
  if (v29 == sub_769240() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = sub_76A950();

  if (v33)
  {
    return a3;
  }

  v34 = sub_769240();
  v36 = v35;
  if (v34 == sub_769240() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = sub_76A950();

  if (v38)
  {
    return a3;
  }

  v39 = sub_769240();
  v41 = v40;
  if (v39 == sub_769240() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = sub_76A950();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = sub_7699C0(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_56DCC4(uint64_t a1, double a2, double a3)
{
  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
    goto LABEL_13;
  }

  v10 = sub_76A950();

  if (v10)
  {
    return a2;
  }

  v11 = sub_769240();
  v13 = v12;
  if (v11 == sub_769240() && v13 == v14)
  {
    goto LABEL_13;
  }

  v16 = sub_76A950();

  if (v16)
  {
    return a2;
  }

  v17 = sub_769240();
  v19 = v18;
  if (v17 == sub_769240() && v19 == v20)
  {
    goto LABEL_13;
  }

  v22 = sub_76A950();

  if (v22)
  {
    return a2;
  }

  v23 = sub_769240();
  v25 = v24;
  if (v23 == sub_769240() && v25 == v26)
  {
    goto LABEL_13;
  }

  v27 = sub_76A950();

  if (v27)
  {
    return a2;
  }

  v28 = sub_769240();
  v30 = v29;
  if (v28 == sub_769240() && v30 == v31)
  {
LABEL_13:

    return a2;
  }

  v32 = sub_76A950();

  if ((v32 & 1) == 0)
  {
    return a3;
  }

  return a2;
}

uint64_t sub_56DF2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56DF74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56DFD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_56E00C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  if (*(v3 + 16))
  {
    v5 = sub_66523C();
    if (v6)
    {
      return *(*(v3 + 56) + 8 * v5);
    }
  }

  return v4;
}

uint64_t sub_56E05C(__n128 a1)
{
  v2 = sub_765900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_56E0E4(__n128 a1)
{
  sub_765900();

  return sub_56D7A8(v1);
}

UIContentSizeCategory sub_56E144(uint64_t a1)
{
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_76A950();

  if ((v7 & 1) == 0)
  {
    v8 = sub_769240();
    v10 = v9;
    if (v8 == sub_769240() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_76A950();

    if ((v13 & 1) == 0)
    {
      v14 = sub_769240();
      v16 = v15;
      if (v14 == sub_769240() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = sub_76A950();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

void sub_56E2F4(void *a1)
{
  v16 = [*(v1 + 16) view];
  if (v16)
  {
    [a1 _systemContentInset];
    v4 = v3;
    v6 = v5;
    [a1 contentOffset];
    v8 = v7;
    v10 = v9;
    [a1 contentInset];
    v12 = v6 + v8 + v11;
    v14 = v4 + v10 + v13;
    [a1 bounds];
    [v16 setFrame:{sub_56E3E0(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_56E3E0(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_311270(v8, v7, a3);

  type metadata accessor for ListTodayCardCollectionViewCell(0);
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_56E504()
{

  return swift_deallocClassInstance();
}

uint64_t sub_56E56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_95B078;
    v15 = qword_7A5480;
    v16 = sub_BD88(&qword_95B078, qword_7A5480);
    sub_16194(&qword_95B080, &qword_95B078, qword_7A5480, &unk_795B90);
    sub_16194(&qword_95B088, &qword_95B078, qword_7A5480, &unk_780C90);
    v17 = &unk_95B090;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v16 = sub_24DB68(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v16;
    }

    v14 = &qword_95B058;
    v15 = &qword_7A5478;
    v16 = sub_BD88(&qword_95B058, &qword_7A5478);
    sub_16194(&qword_95B060, &qword_95B058, &qword_7A5478, &unk_795B90);
    sub_16194(&qword_95B068, &qword_95B058, &qword_7A5478, &unk_780C90);
    v17 = &unk_95B070;
  }

  sub_16194(v17, v14, v15, &unk_795BC0);
  return v16;
}

id sub_56E900()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_95B098 = result;
  return result;
}

id sub_56E958(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_93DC58 != -1)
  {
    swift_once();
  }

  v6 = qword_95B098;
  v7 = a3;
  v8 = sub_769210();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v11 = sub_768FF0();
    sub_BE38(v11, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    sub_7685E0();
    sub_10A2C(&v13, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_56EBA8(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = sub_765120();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_7570A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765380();
  sub_765110();
  (*(v3 + 8))(v5, v2);
  sub_757090();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &unk_93FD30, qword_77F240);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_757070();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (sub_765180())
      {
        v17.value.super.super.isa = v22;
        v18 = sub_765170(v17);
        v19 = sub_56E958(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC18ASMessagesProviderE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

double sub_56EFFC(uint64_t a1, __n128 a2)
{
  v58 = sub_75EAC0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75EAE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_762D10();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AB70();
  sub_56F8AC(&qword_953EE8, &type metadata accessor for EditorialQuote, &protocol conformance descriptor for EditorialQuote);
  sub_75C750();
  v15 = v65[0];
  if (!v65[0])
  {
    return 0.0;
  }

  v51 = v4;
  v52 = v8;
  v53 = v6;
  v54 = v5;
  swift_getKeyPath();
  v16 = v15;
  sub_75C7B0();

  sub_765630();
  (*(v12 + 8))(v14, v11);
  swift_getKeyPath();
  sub_75C7B0();

  v17 = v65[0];
  v18 = sub_7699D0();

  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  v48 = sub_75AB60();
  v47 = v20;
  v21 = sub_26F08();
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  sub_BE38(v22, qword_99D4F8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v23 = sub_7653B0();
  v66 = v23;
  v50 = sub_56F8AC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v67 = v50;
  v24 = sub_B1B4(v65);
  v25 = *(v23 - 8);
  v46[1] = v21;
  v26 = *(v25 + 104);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v26(v24);
  sub_765C30();
  v59 = a1;
  sub_BEB8(v65);
  sub_762D00();
  sub_762CE0();
  v48 = v19;
  v27 = *(v55 + 8);
  v28 = v56;
  v27(v10, v56);
  v55 = v16;
  v47 = sub_75AB50();
  v46[0] = v29;
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v22, qword_99D510);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v63 = v23;
  v64 = v50;
  v30 = sub_B1B4(v62);
  (v26)(v30, v49, v23);
  sub_765C30();
  sub_BEB8(v62);
  sub_762D00();
  sub_762CE0();
  v27(v10, v28);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v31 = v58;
  v32 = sub_BE38(v58, qword_99D4E0);
  (*(v57 + 16))(v51, v32, v31);
  v33 = v66;
  v34 = v67;
  v35 = sub_B170(v65, v66);
  v61[3] = v33;
  v61[4] = *(v34 + 8);
  v36 = sub_B1B4(v61);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  v37 = v63;
  v38 = v64;
  v39 = sub_B170(v62, v63);
  v60[3] = v37;
  v60[4] = *(v38 + 8);
  v40 = sub_B1B4(v60);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v52;
  sub_75EAD0();
  swift_getKeyPath();
  sub_75C7B0();

  sub_56F8AC(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v42 = v54;
  sub_7665A0();
  v44 = v43;
  swift_unknownObjectRelease();

  (*(v53 + 8))(v41, v42);
  sub_BEB8(v62);
  sub_BEB8(v65);
  return v44;
}

uint64_t sub_56F8AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_56F8F4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media) = a1;
  if (a1)
  {
    v8 = a1;
    if (v4)
    {
      v7 = v4;
      sub_759DF0();
      sub_5752F8(&qword_95B248, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
      swift_retain_n();
      v5 = sub_7691C0();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:

    return result;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_56FA00(uint64_t a1)
{
  if (a1)
  {
    sub_761120();
    sub_768900();

    sub_768ED0();
    sub_7624B0();
    swift_allocObject();
    v2 = v6;
    sub_7624C0();
    sub_75FA30();
  }

  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_761120();
    sub_768900();

    sub_768ED0();
    v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_7624B0();
    swift_allocObject();
    v4 = v6;
    sub_7624C0();
    sub_75FA40();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_56FBC8()
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FE00);
  qword_95B168 = v0;
  unk_95B170 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_95B150);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_56FCC0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_75FA60());
  *&v4[v12] = sub_75FA50();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_769BD0();
  v29 = sub_769210();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_769BD0();
  v33 = sub_769210();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_570138()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v96 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v96);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108.receiver = v1;
  v108.super_class = ObjectType;
  objc_msgSendSuper2(&v108, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v104 = v17;

  v95 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView];
  v105 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_93DC78 != -1)
    {
      swift_once();
    }

    v25 = qword_99FD18;
    sub_B170(qword_99FD00, qword_99FD18);
    sub_33964(v25);
    sub_766700();
    v21 = v26;

    (*(v6 + 8))(v9, v5);
  }

  v98 = v20;
  v94 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView;
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView];
  v107 = 0.0;
  v28 = 0.0;
  if (v27)
  {
    v29 = v27;
    [v29 frame];
    v105 = v30;
    v107 = v31;
    if (qword_93DC70 != -1)
    {
      swift_once();
    }

    v32 = qword_95B1B8;
    sub_B170(qword_95B1A0, qword_95B1B8);
    sub_33964(v32);
    sub_766700();
    v28 = v33;

    (*(v6 + 8))(v9, v5);
  }

  v90 = v19;
  v99 = v28;
  v93 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v35 = 0.0;
  v103 = 0.0;
  v36 = 0.0;
  MinY = 0.0;
  v38 = 0.0;
  if (v34)
  {
    v39 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
    swift_beginAccess();
    sub_395C4(v34 + v39, v4);
    v40 = qword_93D2C8;
    v41 = v34;
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = floor(*&qword_99E200);
    sub_766470();
    sub_766CA0();
    sub_766700();
    v44 = v43;
    (*(v6 + 8))(v9, v5);
    v38 = v42 + v44;
    sub_572EE0(v4, type metadata accessor for DividerView.Style);
    v109.origin.x = v12;
    v109.origin.y = v14;
    v109.size.width = v16;
    v45 = v104;
    v109.size.height = v104;
    v36 = CGRectGetMaxX(v109) - v16;
    v110.origin.x = v12;
    v110.origin.y = v14;
    v110.size.width = v16;
    v110.size.height = v45;
    MinY = CGRectGetMinY(v110);

    v35 = v16;
  }

  v97 = v35;
  v106 = MinY;
  v46 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v101 = 0.0;
  v100 = 0.0;
  v102 = 0.0;
  if (v47)
  {
    v48 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
    swift_beginAccess();
    sub_395C4(v47 + v48, v4);
    v49 = qword_93D2C8;
    v50 = v47;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = floor(*&qword_99E200);
    sub_766470();
    sub_766CA0();
    sub_766700();
    v53 = v52;
    (*(v6 + 8))(v9, v5);
    v54 = v51 + v53;
    sub_572EE0(v4, type metadata accessor for DividerView.Style);
    v111.origin.x = v12;
    v111.origin.y = v14;
    v111.size.width = v16;
    v55 = v104;
    v111.size.height = v104;
    v103 = CGRectGetMaxX(v111) - v16;
    v112.origin.x = v12;
    v112.origin.y = v14;
    v112.size.width = v16;
    v112.size.height = v55;
    MaxY = CGRectGetMaxY(v112);

    v102 = v54;
    v101 = MaxY - ceil(v54);
    v100 = v16;
  }

  *&v96 = v16;
  v57 = v14;
  v58 = v94;
  if (*&v1[v94])
  {
    v59 = v12;
    if (qword_93DC60 != -1)
    {
      swift_once();
    }

    v60 = qword_95B168;
    sub_B170(qword_95B150, qword_95B168);
    sub_33964(v60);
    sub_766700();
    v62 = v61;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v59 = v12;
    v62 = 0.0;
  }

  if (qword_93DC68 != -1)
  {
    swift_once();
  }

  v63 = qword_95B190;
  sub_B170(qword_95B178, qword_95B190);
  sub_33964(v63);
  sub_766700();
  v65 = v64;
  (*(v6 + 8))(v9, v5);
  v91 = v62;
  v89 = v21;
  v66 = v98 + v107 + v21 + v99 + v62 + v65;
  v67 = v36;
  v113.origin.x = v36;
  v113.origin.y = v106;
  v68 = v97;
  v113.size.width = v97;
  v69 = v38;
  v113.size.height = v38;
  v70 = CGRectGetHeight(v113) + v66;
  v114.origin.x = v103;
  v114.origin.y = v101;
  v114.size.width = v100;
  v114.size.height = v102;
  v92 = CGRectGetHeight(v114) + v70;
  v115.origin.x = v59;
  v115.origin.y = v57;
  v71 = *&v96;
  *&v115.size.width = v96;
  v72 = v104;
  v115.size.height = v104;
  MinX = CGRectGetMinX(v115);
  v87 = v67;
  v116.origin.x = v67;
  v116.origin.y = v106;
  v116.size.width = v68;
  v88 = v69;
  v116.size.height = v69;
  v74 = v91 + CGRectGetMaxY(v116);
  v117.origin.x = v59;
  v117.origin.y = v57;
  v117.size.width = v71;
  v117.size.height = v72;
  v75 = CGRectGetMinX(v117);
  v91 = MinX;
  v118.origin.x = MinX;
  v86 = v74;
  v118.origin.y = v74;
  v118.size.width = v105;
  v118.size.height = v107;
  v76 = v99 + CGRectGetMaxY(v118);
  v119.origin.x = v59;
  v119.origin.y = v57;
  v119.size.width = v71;
  v119.size.height = v72;
  Width = CGRectGetWidth(v119);
  v120.origin.x = v59;
  v120.origin.y = v57;
  v120.size.width = v71;
  v120.size.height = v72;
  v78 = CGRectGetHeight(v120) - v92;
  v121.origin.x = v59;
  v121.origin.y = v57;
  v121.size.width = v71;
  v121.size.height = v72;
  v79 = CGRectGetMinX(v121);
  v122.origin.x = v75;
  v122.origin.y = v76;
  v122.size.width = Width;
  v122.size.height = v78;
  v80 = CGRectGetMaxY(v122);
  v81 = *&v1[v93];
  if (v81)
  {
    [v81 setFrame:{v87, v106, v97, v88}];
  }

  v82 = *&v1[v58];
  if (v82)
  {
    [v82 setFrame:{v91, v86, v105, v107}];
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView] setFrame:{v75, v76, Width, v78}];
  v83 = *&v1[v95];
  if (v83)
  {
    [v83 setFrame:{v79, v89 + v80, v90, v98}];
  }

  result = *&v1[v46];
  if (result)
  {
    return [result setFrame:{v103, v101, v100, v102}];
  }

  return result;
}

void sub_570B94(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_570CA4(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_570CA4(a2);
  }
}

id sub_570CA4(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_93D2D8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v3, qword_99E220);
  sub_395C4(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_572EE0(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_570ECC(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell(0);
    sub_769BD0();
    v10 = sub_769210();

    isa = sub_757550().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_759DD0();
  result = sub_7575C0();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_6:

    v5 = sub_75BEA0();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell(0);
      sub_769BD0();
      v6 = sub_769210();

      v7 = sub_757550().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = sub_759DE0();

      sub_4FD578();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_571340(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_57145C(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_759DD0();

  v4 = sub_7575C0();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_76A770();
LABEL_6:

  v5 = sub_75BEA0();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);

      v9 = sub_7575C0();
      v7(v6, v9);
      sub_F704(v7, v8);
    }

    isa = sub_757550().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell(uint64_t a1)
{
  result = qword_95B230;
  if (!qword_95B230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_57194C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_571A34(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v165 = a9;
  v155 = a8;
  v151 = a3;
  v150 = a2;
  v149 = sub_76A920();
  v152 = *(v149 - 8);
  __chkstk_darwin(v149);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = COERCE_DOUBLE(sub_758720());
  v147 = *(*&v148 - 8);
  __chkstk_darwin(*&v148);
  v156 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_766690();
  v160 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = &v147 - v20;
  __chkstk_darwin(v21);
  v23 = &v147 - v22;
  __chkstk_darwin(v24);
  v26 = &v147 - v25;
  v27 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v27 - 8);
  v162 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v167 = &v147 - v30;
  __chkstk_darwin(v31);
  v168 = &v147 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v33 - 8);
  v153 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_759DE0();
  v159 = a1;
  v35 = sub_759DD0();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_76A860();
  }

  else
  {
    v37 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
  }

  *&v170 = v26;
  v154 = v15;
  v169 = v23;
  v163 = a4;
  if (v37)
  {
    v26 = 0;
    v164 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v164)
      {
        sub_76A770();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_75BEA0())
      {
        v38 = sub_7650D0();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_75BEB0())
        {

          v161 = 1;
          a4 = v163;
          v15 = v154;
          goto LABEL_21;
        }

        sub_764BC0();
        v40 = sub_7650D0();

        v15 = v154;
        if (v40)
        {
LABEL_18:
          v161 = 1;
          a4 = v163;
LABEL_21:
          v23 = v169;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v169;
      if (v39 == v37)
      {
        v161 = 0;
        a4 = v163;
        goto LABEL_22;
      }
    }
  }

  v161 = 0;
LABEL_22:

  sub_7596B0();

  sub_6C14C(v41, v153);

  v42 = sub_759DD0();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = sub_76A860();
  }

  else
  {
    v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
  }

  v44 = v160;

  if (v43 >= 1)
  {
    v45 = sub_759DD0();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v110 = sub_76A860();
      v46 = v43;
      v47 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v147 = a5;
          v148 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v157 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v164 = (v44 + 32);
          v52 = (v44 + 48);
          v156 = (v44 + 16);
          v53 = (v44 + 8);
          v160 = v48;
          v159 = v47;
          do
          {
            if (v157)
            {
              sub_76A770();
            }

            else
            {
            }

            if (sub_75BEA0())
            {
              sub_765260();
              v57 = v167;
              sub_7666A0();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v168;
              (*v164)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v167, 1, 1, v17);
              if (sub_75BEB0())
              {
                sub_764BC0();

                sub_765260();
                v59 = v168;
                sub_7666A0();

                v61 = 0;
              }

              else
              {
                v59 = v168;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v167, 1, v17);
              v23 = v169;
              if (v62 != 1)
              {
                sub_10A2C(v167, &unk_948720, &unk_784970);
              }
            }

            v63 = sub_75A310();
            v64 = v59;
            v65 = v162;
            sub_29A8E8(v64, v162);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              sub_7666A0();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10A2C(v65, &unk_948720, &unk_784970);
              }
            }

            else
            {
              (*v164)(v170, v65, v17);
            }

            a4 = v163;
            if ((v161 & v63) != 0)
            {
              v67 = v170;
              if (sub_7665E0())
              {
                (*v156)(v23, v67, v17);
              }

              else
              {
                sub_766620();
              }

              v68 = 1;
            }

            else
            {
              (*v156)(v23, v170, v17);
              v68 = sub_7665E0();
            }

            v69 = [a4 traitCollection];
            v70 = sub_7699B0();

            if (v70)
            {
              if (v155 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v71 = 4.0;
                v72 = 2.0;
                v23 = v169;
                if (v84 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v85 < a7)
                  {
                    v71 = 5.0;
                  }

                  else
                  {
                    v71 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v71 = 5.0;
                v72 = 2.0;
                v23 = v169;
                if (v73 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v74 < a7)
                  {
                    v71 = 6.0;
                  }

                  else
                  {
                    v71 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v68)
              {
                v72 = 2.0;
              }

              else
              {
                v72 = 1.0;
              }

              if (v68)
              {
                v71 = 3.0;
              }

              else
              {
                v71 = 1.0;
              }

              v23 = v169;
            }

            [a4 pageMarginInsets];
            v76 = v75;
            [a4 pageMarginInsets];
            v78 = v76 + v77;
            PageTraitEnvironment.pageColumnMargin.getter();
            v80 = (v72 + -1.0) * v79 + v72 / v71 * (v165 - (v78 + (v71 + -1.0) * v79));
            v81 = [a4 traitCollection];
            v82 = sub_7699B0();

            if ((v82 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v80 < v83))
            {
              sub_766660();
            }

            ++v49;
            sub_766660();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v170, v17);
            sub_10A2C(v168, &unk_948720, &unk_784970);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v159 != v49);

          v15 = v154;
          a6 = v148;
          a5 = v147;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v86 = v156;
  sub_75A300();
  v87 = v147;
  v88 = v148;
  v89 = (*(*&v147 + 88))(v86, COERCE_DOUBLE(*&v148));
  v43 = ObjectType;
  v37 = v157;
  if (v89 == enum case for AppPlatform.phone(_:) || v89 == enum case for AppPlatform.pad(_:) || v89 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v89 == enum case for AppPlatform.watch(_:))
  {
    if (qword_93C250 == -1)
    {
LABEL_86:
      v91 = sub_BE38(v17, qword_99A2D8);
      (*(v44 + 16))(v37, v91, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v89 == enum case for AppPlatform.tv(_:) || v89 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_7666A0();
    goto LABEL_78;
  }

  sub_7666A0();
  (*(*&v87 + 8))(v156, COERCE_DOUBLE(*&v88));
LABEL_78:
  if (sub_75A310() & 1) != 0 && (sub_7665E0())
  {
    if (sub_7665E0())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      sub_766620();
    }

    v90 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v90 = sub_7665E0();
  }

  swift_getObjectType();
  v92 = [a4 traitCollection];
  v93 = sub_7699B0();

  if (v93)
  {
    v94.n128_f64[0] = a7;
    v95 = sub_319980(v94, v155);
    v97 = v96;
  }

  else
  {
    if (v90)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v90)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v165 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = sub_7699B0();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v103 < v107))
  {
    sub_766660();
  }

  sub_766660();
  v51 = v108;
  v109 = *(v44 + 8);
  v109(v106, v17);
  v109(v157, v17);
LABEL_110:
  sub_BD88(&qword_9419F0, &unk_781020);
  inited = swift_initStackObject();
  v170 = xmmword_77B6D0;
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = v51;
  v171 = inited;
  v112 = v149;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_77DC20;
    if (qword_93DC60 != -1)
    {
      swift_once();
    }

    v114 = qword_95B168;
    sub_B170(qword_95B150, qword_95B168);
    sub_33964(v114);
    sub_766700();
    v116 = v115;
    v117 = *(v152 + 8);
    v117(v15, v112);
    *(v113 + 32) = v116;
    *(v113 + 40) = a5;
    if (qword_93DC70 != -1)
    {
      swift_once();
    }

    v118 = qword_95B1B8;
    sub_B170(qword_95B1A0, qword_95B1B8);
    sub_33964(v118);
    sub_766700();
    v120 = v119;
    v117(v15, v112);
    *(v113 + 48) = v120;
    sub_10A0FC(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v121 = swift_initStackObject();
    *(v121 + 16) = xmmword_77E280;
    *(v121 + 32) = a6;
    if (qword_93DC78 != -1)
    {
      swift_once();
    }

    v122 = qword_99FD18;
    sub_B170(qword_99FD00, qword_99FD18);
    sub_33964(v122);
    sub_766700();
    v124 = v123;
    (*(v152 + 8))(v15, v112);
    *(v121 + 40) = v124;
    sub_10A0FC(v121);
  }

  v125 = swift_initStackObject();
  *(v125 + 16) = v170;
  if (qword_93DC68 != -1)
  {
    swift_once();
  }

  v126 = qword_95B190;
  sub_B170(qword_95B178, qword_95B190);
  swift_getObjectType();
  v127 = v154;
  sub_33964(v126);
  sub_766700();
  v129 = v128;
  (*(v152 + 8))(v127, v112);
  *(v125 + 32) = v129;
  sub_10A0FC(v125);
  v130 = swift_initStackObject();
  *(v130 + 16) = xmmword_77E280;
  v131 = 0.0;
  v132 = 0.0;
  if (v150)
  {
    type metadata accessor for DividerView(0);
    if (qword_93D2D8 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for DividerView.Style(0);
    v134 = sub_BE38(v133, qword_99E220);
    v132 = sub_50F450(v134, a4);
  }

  *(v130 + 32) = v132;
  if (v151)
  {
    type metadata accessor for DividerView(0);
    if (qword_93D2D8 != -1)
    {
      swift_once();
    }

    v135 = type metadata accessor for DividerView.Style(0);
    v136 = sub_BE38(v135, qword_99E220);
    v131 = sub_50F450(v136, a4);
  }

  *(v130 + 40) = v131;
  sub_10A0FC(v130);
  v137 = *(v171 + 16);
  if (!v137)
  {
    v138 = v153;
    goto LABEL_139;
  }

  v138 = v153;
  if (v137 <= 3)
  {
    v139 = 0;
    v140 = 0.0;
LABEL_137:
    v143 = v137 - v139;
    v144 = (v171 + 8 * v139 + 32);
    do
    {
      v145 = *v144++;
      v140 = v140 + v145;
      --v143;
    }

    while (v143);
    goto LABEL_139;
  }

  v139 = v137 & 0x7FFFFFFFFFFFFFFCLL;
  v141 = (v171 + 48);
  v140 = 0.0;
  v142 = v137 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v140 = v140 + *(v141 - 2) + *(v141 - 1) + *v141 + v141[1];
    v141 += 4;
    v142 -= 4;
  }

  while (v142);
  if (v137 != v139)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_572EE0(v138, type metadata accessor for ScreenshotDisplayConfiguration);

  return v165;
}

uint64_t sub_572EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_572F40(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_766690();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = sub_759DD0();
  v15 = result;
  if (result >> 62)
  {
    result = sub_76A860();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = sub_76A770();
        v20 = sub_75BEA0();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_75BEA0();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          sub_765260();
          sub_7666A0();
          v22 = sub_759D70();
          sub_7596B0();
          v23 = sub_759DE0();
          v24 = v65;
          sub_6C14C(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_572EE0(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = sub_7665E0();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              sub_766620();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = sub_7665E0();
          }

          v34 = [a2 traitCollection];
          v35 = sub_7699B0();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = sub_7699B0();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v45 < v48))
          {
            sub_766660();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          sub_766660();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_7B0D8(0, *(v18 + 2) + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = *(v18 + 2);
          v54 = *(v18 + 3);
          if (v55 >= v54 >> 1)
          {
            v18 = sub_7B0D8((v54 > 1), v55 + 1, 1, v18);
          }

          *(v18 + 2) = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (sub_75BEB0())
      {
        v69 = v19;
        v21 = sub_764BC0();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_5734EC(uint64_t a1)
{
  v2 = v1;
  sub_134D8(a1, v25);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_759DF0();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_10DC0C(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_897320;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_897320;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_7699B0();

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_572F40(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_759D70() & 1;
    v11 = sub_60406C(v10, v24);
    v12 = v11;
    v23 = *(v10 + 2);
    if (v23)
    {
      v13 = 0;
      v14 = (v10 + 6);
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < *(v10 + 2))
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_76A860();
        }

        else
        {
          v18 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_76A770();
        }

        else
        {
          if (v13 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_75A040();

        sub_10A2C(v25, &unk_9443A0, &unk_77E240);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_5738B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_75FA60());
  *(v1 + v3) = sub_75FA50();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_75C840();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_573A44(objc_class *a1, uint64_t a2)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_759DD0();
        v13 = v12 >> 62 ? sub_76A860() : *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));

        if (v13 > a2)
        {
          v14 = sub_759DD0();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_76A770();
LABEL_12:

          sub_BD88(&qword_95B250, "hq\b");
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_77E280;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_757540();
          isa = sub_757550().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell(0);
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_75BEA0())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_759140(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell(0);
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_75BEB0())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_940590) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_573DE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_573E1C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_573E5C()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_759DD0();

  if (v1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2;
}

void sub_573EF8(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_766690();
  v59 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v57 = v1;
  v20 = v18;
  v21 = sub_759DD0();
  v22 = sub_7575C0();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_76A770();
LABEL_8:

  v24 = sub_75BEA0();
  v58 = v23;
  if (v24)
  {
    sub_765260();
    sub_7666A0();

    v25 = v59;
    v26 = *(v59 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v56 = *(v59 + 56);
    v56(v8, 1, 1, v12);
    if (sub_75BEB0())
    {
      sub_764BC0();

      sub_765260();
      sub_7666A0();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v56(v11, v28, 1, v12);
    v25 = v59;
    v29 = *(v59 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10A2C(v8, &unk_948720, &unk_784970);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10A2C(v11, &unk_948720, &unk_784970);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_7596B0();
  v30 = sub_759DE0();
  sub_6C14C(v30, v5);

  v31 = sub_759D70();
  v32 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (sub_7665E0())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_766620();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = sub_7665E0();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = sub_7699B0();

  if (v40)
  {
    v41.n128_u64[0] = v35;
    v42 = sub_319980(v41, v37);
    v44 = v43;
  }

  else
  {
    if (v38)
    {
      v42 = 2.0;
    }

    else
    {
      v42 = 1.0;
    }

    if (v38)
    {
      v44 = 3.0;
    }

    else
    {
      v44 = 1.0;
    }
  }

  v45 = v59;
  [v32 pageMarginInsets];
  v47 = v46;
  [v32 pageMarginInsets];
  v49 = v47 + v48;
  PageTraitEnvironment.pageColumnMargin.getter();
  v51 = (v42 + -1.0) * v50 + v42 / v44 * (v20 - (v49 + (v44 + -1.0) * v50));
  v52 = [v32 traitCollection];
  v53 = sub_7699B0();

  if ((v53 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_766650(), v51 < v54))
  {
    sub_766660();
  }

  sub_766660();
  swift_unknownObjectRelease();

  v55 = *(v45 + 8);
  v55(v14, v12);
  sub_572EE0(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v55(v17, v12);
}

void sub_5745C0(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v4 - 8);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v70 - v8;
  v9 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v9 - 8);
  v79 = v70 - v10;
  v11 = sub_75A6B0();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v13 - 8);
  v15 = v70 - v14;
  v16 = sub_75A6E0();
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75DC30();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v74 = v6;
  v75 = v22;
  v76 = v20;
  v77 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v81 = v23;
  v24 = sub_759DD0();
  v25 = sub_7575C0();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_76A770();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_75BEA0();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v35 = sub_60D5C0(v31, v33, v34);

        if (v35)
        {
          v36 = *(*(v28 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
          v37 = v35;
          v38 = v36;
          v39 = sub_759180();

          if (v39)
          {
            sub_BE70(0, &qword_947630, UIImage_ptr);
            v41 = v37;
            v42 = sub_76A1C0();

            v43 = v42 ^ 1;
          }

          else
          {
            v43 = 1;
          }

          v84.is_nil = v43 & 1;
          v84.value.super.isa = v35;
          sub_7591D0(v84, v40);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell(0);
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v73 = v44;
  v45 = a1;
  v46 = sub_75BEB0();
  if (!v46)
  {

    goto LABEL_24;
  }

  v47 = v46;
  v72 = v26;
  if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v70[1] = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  v71 = v45;
  v48 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v48)
  {

    v49 = sub_764BC0();
    swift_beginAccess();
    v50 = *(v48 + 16);

    v52 = sub_60D5C0(v49, v50, v51);

    if (v52)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        [*(Strong + qword_940590) setImage:v52];
      }
    }
  }

  else
  {
  }

  (*(v78 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v55 = sub_766690();
  (*(*(v55 - 8) + 56))(v15, 0, 1, v55);
  sub_764B60();
  sub_764BA0();
  LODWORD(v78) = sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_759DE0();
  sub_75A350();
  v56 = v47;

  sub_75DC10();
  sub_75C360();
  sub_768880();
  sub_764B40();
  v57 = v79;
  sub_764BD0();
  v58 = sub_7570A0();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = v80;
  sub_764B90();
  v60 = v74;
  v78 = v56;
  sub_764B80();
  type metadata accessor for VideoView(0);
  sub_5752F8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  v61 = sub_75C340();
  sub_10A2C(v60, &unk_948710, &qword_77FF90);
  sub_10A2C(v59, &unk_948710, &qword_77FF90);
  sub_10A2C(v57, &unk_93FD30, qword_77F240);
  sub_10A2C(&v82, &unk_9443A0, &unk_77E240);
  v62 = v61;
  v63 = v73;
  sub_5B8AC0();
  swift_unknownObjectWeakAssign();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v63 contentView];
    [v66 addSubview:v65];

    [v63 setNeedsLayout];
  }

  sub_761120();
  sub_768900();
  sub_768ED0();
  v67 = v82;
  v68 = swift_unknownObjectWeakLoadStrong();
  sub_5752F8(&qword_95B258, type metadata accessor for VideoCollectionViewCell, &unk_7A7780);
  v69 = v71;
  sub_761100();

  (*(v75 + 8))(v77, v76);
}

void sub_574FE8(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_759190();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell(0);
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_761120();
      sub_768900();
      v6 = a1;

      sub_768ED0();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_5752F8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      }

      sub_5752F8(&qword_95B258, type metadata accessor for VideoCollectionViewCell, &unk_7A7780);
      v8 = v6;
      sub_7610C0();
    }
  }
}

void sub_5751F4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_5752F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_575340()
{
  result = sub_769210();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_93DC80 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_93DC80 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

uint64_t sub_575424(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_76A6C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (sub_76A950() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_7687E0();

  return v4 & 1;
}

uint64_t sub_57552C(uint64_t a1, __n128 a2)
{
  sub_76A6D0();

  return sub_769330();
}

double sub_575578()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
  v2 = sub_BD88(&qword_9526A0, &unk_7AD5B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_575604()
{
  sub_1EB60(v0 + 16);

  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StringPreferencesDebugSetting_key;
  v2 = sub_BD88(&qword_9526A0, &unk_7AD5B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting(uint64_t a1)
{
  result = qword_95B288;
  if (!qword_95B288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_575738(uint64_t a1)
{
  sub_5757D4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5757D4()
{
  if (!qword_95B298)
  {
    v0 = sub_7687F0();
    if (!v1)
    {
      atomic_store(v0, &qword_95B298);
    }
  }
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (sub_7699D0())
  {
    v8 = sub_769A00();

    if (v8)
    {
      sub_577F7C(v7, *(v4 + 960), v11);
      sub_B170(v11, v12);
      sub_7673F0();
      sub_BEB8(v11);
      return a2;
    }
  }

  else
  {
  }

  if (sub_7699D0())
  {
    sub_576290(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_576C98(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_B170(v11, v12);
  sub_7673F0();
  a2 = v9;
  sub_BEB8(v11);
  return a2;
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (sub_7699D0())
  {
    v12 = sub_769A00();

    if (v12)
    {

      return sub_577C38(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = sub_7699D0();
  sub_B170((v6 + 520), *(v6 + 544));
  sub_7673E0();
  if (v14)
  {
    sub_576290(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_576C98(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_B170(v15, v15[3]);
  sub_7673E0();
  return sub_BEB8(v15);
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_10914(a2, a9 + 520);
  sub_10914(a3, a9 + 560);
  sub_10914(a4, a9 + 600);
  sub_10914(a5, a9 + 640);
  sub_10914(a6, a9 + 680);
  sub_10914(a7, a9 + 720);
  sub_3D66E8(a8, a9 + 840);
  sub_10914(a10, a9 + 760);
  sub_3D66E8(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.kindLabelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 160));

  return sub_10914(a1, v1 + 160);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.titleLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 200));

  return sub_10914(a1, v1 + 200);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 240));

  return sub_10914(a1, v1 + 240);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 280));

  return sub_10914(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 320));

  return sub_10914(a1, v1 + 320);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 360));

  return sub_10914(a1, v1 + 360);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 400));

  return sub_10914(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 440));

  return sub_10914(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 480));

  return sub_10914(a1, v1 + 480);
}

uint64_t sub_576290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = sub_766880();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = sub_767340();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_766950();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  sub_766930();
  sub_579914(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  sub_766940();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_134D8(v7 + 680, v101);
  sub_867FC(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_10914(&v96, &v98);
    sub_766940();
    sub_BEB8(&v98);
    sub_8699C(v101);
    v42(v25, v41);
  }

  else
  {
    sub_8699C(v101);
    sub_8699C(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_579914(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  sub_766940();

  v42(v28, v41);
  sub_579914(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  sub_766940();

  v42(v46, v41);
  sub_579914(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_867FC(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_10914(&v96, &v98);
    v52 = v48;
    v53 = v83;
    sub_766940();

    sub_BEB8(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_8699C(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_867FC(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_10914(&v98, v101);
    sub_766940();
    sub_BEB8(v101);
    v51(v53, v41);
  }

  else
  {
    sub_8699C(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_867FC(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_10914(&v98, v101);
    sub_766940();
    sub_BEB8(v101);
    v51(v56, v41);
  }

  else
  {
    sub_8699C(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_B170((v7 + 80), *(v7 + 104));
  sub_766710();
  sub_134D8(v7 + 600, v101);
  v59 = v93;
  sub_767330();
  v60 = v85;
  sub_766850();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_B1B4(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  sub_766870();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_BEB8(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_B1B4(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  sub_766870();
  v66(v64, v67);
  sub_BEB8(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_B1B4(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_B1B4(v101);
  sub_767330();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = sub_7672F0();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_B1B4(v74);
  sub_7672D0();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_576C98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_7672E0();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = sub_767310();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_767340();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_767240();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_767250();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_766950();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  sub_766930();
  sub_579914(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  sub_766940();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_579914(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  sub_766940();
  v62 = v27;

  (v56)(v61, v27);
  sub_134D8((v7 + 85), v147);
  sub_867FC(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_10914(&v142, &v144);
    sub_766940();
    sub_BEB8(&v144);
    sub_8699C(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_8699C(v147);
    sub_8699C(&v142);
    v53[4](v137, v59, v27);
  }

  sub_579914(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  sub_766940();

  (v55)(v66, v27);
  sub_579914(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  sub_766940();

  (v55)(v65, v62);
  sub_579914(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_867FC((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_10914(&v142, &v144);
    v71 = v68;
    v72 = v140;
    sub_766940();
    v73 = v72;

    sub_BEB8(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_8699C(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_579914(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_867FC((v7 + 110), &v142);
  if (v143)
  {
    sub_10914(&v142, &v144);
    sub_7668F0();

    sub_BEB8(&v144);
  }

  else
  {

    sub_8699C(&v142);
  }

  sub_867FC((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_7668F0();
    sub_BEB8(v147);
  }

  else
  {
    sub_8699C(&v144);
  }

  v81 = v120;
  sub_766930();
  sub_867FC((v7 + 110), &v144);
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_766940();
    sub_BEB8(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_8699C(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_867FC((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_10914(&v144, v147);
    sub_766940();
    v82 = v139;
    sub_BEB8(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_8699C(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_B1B4(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_B1B4(&v144);
  v77(v84, v140, v62);
  sub_767260();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_B1B4(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  sub_767330();
  sub_7670E0();
  sub_579D88(&qword_95B358, &type metadata accessor for Margins, &protocol conformance descriptor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  sub_766C10();
  sub_579D88(&qword_95B360, &type metadata accessor for Margins.Placements, &protocol conformance descriptor for Margins.Placements);
  v90 = v131;
  sub_766DF0();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_B1B4(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_B1B4(v147);
    sub_767330();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = sub_7672F0();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_B1B4(v107);
    sub_767300();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_B1B4(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_B1B4(v96);
    sub_767330();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t sub_577C38(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_B170((v5 + 520), *(v5 + 544));
  sub_7673E0();
  sub_5787D4(a1, v19);
  sub_B170(v19, v19[3]);
  sub_7673E0();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_577F7C(a1, 1, v17);
    sub_B170(v17, v18);
    sub_7673E0();
    sub_BEB8(v17);
  }

  sub_577F7C(a1, v15, v17);
  sub_B170((v5 + 560), *(v5 + 584));
  sub_7673E0();
  sub_B170(v17, v18);
  sub_7673E0();
  sub_BEB8(v17);
  return sub_BEB8(v19);
}

uint64_t sub_577EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_B170((a2 + 240), *(a2 + 264));
  sub_766710();
  sub_7668B0();
  return sub_7668A0();
}

uint64_t sub_577F7C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v59 = a2;
  v63 = a3;
  v7 = sub_766950();
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v58[-v11];
  __chkstk_darwin(v13);
  v15 = &v58[-v14];
  __chkstk_darwin(v16);
  v64 = &v58[-v17];
  __chkstk_darwin(v18);
  v65 = &v58[-v19];
  __chkstk_darwin(v20);
  v60 = &v58[-v21];
  __chkstk_darwin(v22);
  v61 = &v58[-v23];
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = &v58[-v26];
  v28 = [a1 preferredContentSizeCategory];
  if (qword_93DC88 != -1)
  {
    swift_once();
  }

  v29 = sub_769B50();

  sub_766930();
  if (v29)
  {
    sub_134D8(v5 + 680, v70);
  }

  else
  {
    memset(v70, 0, 40);
  }

  v62 = v27;
  sub_867FC(v70, &v71);
  if (v72)
  {
    sub_10914(&v71, &v73);
    sub_766940();
    sub_BEB8(&v73);
    sub_8699C(v70);
    v30 = v66;
    (*(v66 + 8))(v9, v7);
  }

  else
  {
    sub_8699C(v70);
    sub_8699C(&v71);
    v30 = v66;
    (*(v66 + 32))(v12, v9, v7);
  }

  sub_579914(v5, v70);
  v31 = swift_allocObject();
  memcpy((v31 + 16), v70, 0x3C2uLL);
  *(v31 + 978) = v29 & 1;
  *(v31 + 984) = a1;
  v32 = a1;
  sub_766940();

  v33 = *(v30 + 8);
  v33(v12, v7);
  sub_579914(v5, v70);
  v34 = swift_allocObject();
  memcpy((v34 + 16), v70, 0x3C2uLL);
  *(v34 + 984) = v32;
  v35 = v32;
  sub_766940();

  v67 = v33;
  v33(v15, v7);
  v36 = v59;
  if (v59)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    sub_867FC(v5 + 840, &v73);
  }

  v38 = v60;
  v37 = v61;
  sub_579914(v5, v70);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v70, 0x3C2uLL);
  *(v39 + 984) = v35;
  sub_867FC(&v73, &v68);
  if (v69)
  {
    sub_10914(&v68, &v71);
    v40 = v35;
    v41 = v64;
    sub_766940();

    sub_BEB8(&v71);
    sub_8699C(&v73);
    v67(v41, v7);
    v42 = v66;
    if (v36)
    {
LABEL_14:
      sub_867FC(v5 + 800, &v73);
      goto LABEL_17;
    }
  }

  else
  {
    v43 = v35;

    sub_8699C(&v73);
    sub_8699C(&v68);
    v42 = v66;
    (*(v66 + 32))(v65, v64, v7);
    if (v36)
    {
      goto LABEL_14;
    }
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
LABEL_17:
  sub_579914(v5, v70);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v70, 0x3C2uLL);
  *(v44 + 984) = v35;
  sub_867FC(&v73, &v68);
  if (v69)
  {
    sub_10914(&v68, &v71);
    v45 = v35;
    v46 = v65;
    sub_766940();

    sub_BEB8(&v71);
    sub_8699C(&v73);
    v67(v46, v7);
  }

  else
  {
    v47 = v35;

    sub_8699C(&v73);
    sub_8699C(&v68);
    (*(v42 + 32))(v38, v65, v7);
  }

  sub_579914(v5, v70);
  v48 = swift_allocObject();
  memcpy((v48 + 16), v70, 0x3C2uLL);
  *(v48 + 984) = v35;
  sub_867FC(v5 + 880, &v71);
  if (v72)
  {
    sub_10914(&v71, &v73);
    v49 = v35;
    sub_766940();

    sub_BEB8(&v73);
    v50 = v38;
    v51 = v67;
    v67(v50, v7);
  }

  else
  {
    v52 = v35;

    sub_8699C(&v71);
    (*(v42 + 32))(v37, v38, v7);
    v51 = v67;
  }

  sub_867FC(v5 + 920, &v73);
  v53 = v62;
  if (*(&v74 + 1))
  {
    sub_10914(&v73, v70);
    sub_766940();
    sub_BEB8(v70);
    v51(v37, v7);
  }

  else
  {
    sub_8699C(&v73);
    (*(v42 + 32))(v53, v37, v7);
  }

  v70[3] = v7;
  v70[4] = &protocol witness table for VerticalStack;
  v54 = sub_B1B4(v70);
  (*(v42 + 16))(v54, v53, v7);
  v55 = sub_767340();
  v56 = v63;
  v63[3] = v55;
  v56[4] = &protocol witness table for Margins;
  sub_B1B4(v56);
  sub_767330();
  return (v51)(v53, v7);
}

uint64_t sub_5787D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v4;
  v75 = a2;
  v72 = sub_7672E0();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v68 = (&v56 - v9);
  __chkstk_darwin(v10);
  v67 = (&v56 - v11);
  __chkstk_darwin(v12);
  v65 = (&v56 - v13);
  v14 = sub_766880();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7672F0();
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_766950();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v57 = &v56 - v26;
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v61 = &v56 - v29;
  v30 = [a1 preferredContentSizeCategory];
  if (qword_93DC88 != -1)
  {
    swift_once();
  }

  v31 = sub_769B50();

  sub_766930();
  sub_579914(v5, v81);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v81, 0x3C2uLL);
  *(v32 + 984) = a1;
  v33 = a1;
  sub_766940();

  v60 = v19;
  v36 = *(v19 + 8);
  v34 = v19 + 8;
  v35 = v36;
  v36(v21, v18);
  sub_579914(v5, v81);
  v37 = swift_allocObject();
  *(v37 + 16) = (v31 & 1) == 0;
  memcpy((v37 + 24), v81, 0x3C2uLL);
  *(v37 + 992) = v33;
  v38 = v33;
  v39 = v57;
  sub_766940();

  v36(v24, v18);
  v66 = v5;
  v40 = v39;
  if (v31)
  {
    memset(v81, 0, 40);
  }

  else
  {
    sub_134D8(v5 + 680, v81);
  }

  sub_867FC(v81, &v76);
  v41 = v60;
  v42 = v61;
  v58 = v35;
  v59 = v34;
  if (v77)
  {
    sub_10914(&v76, v78);
    sub_766940();
    sub_BEB8(v78);
    sub_8699C(v81);
    v35(v40, v18);
  }

  else
  {
    sub_8699C(v81);
    sub_8699C(&v76);
    (*(v41 + 32))(v42, v40, v18);
  }

  v43 = v62;
  sub_766850();
  v79 = v18;
  v80 = &protocol witness table for VerticalStack;
  v44 = sub_B1B4(v78);
  (*(v41 + 16))(v44, v42, v18);
  v45 = v64;
  v81[3] = v64;
  v81[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v81);
  sub_766870();
  (*(v63 + 8))(v43, v45);
  sub_BEB8(v78);
  v46 = v65;
  *v65 = sub_579154;
  v46[1] = 0;
  v64 = v18;
  v47 = *(v70 + 104);
  v48 = v72;
  v47(v46, enum case for Resize.Rule.recalculated(_:), v72);
  v49 = enum case for Resize.Rule.unchanged(_:);
  v47(v67, enum case for Resize.Rule.unchanged(_:), v48);
  v47(v68, v49, v48);
  v47(v69, v49, v48);
  v50 = v71;
  sub_767300();
  v51 = v74;
  v79 = v74;
  v80 = &protocol witness table for Resize;
  v52 = sub_B1B4(v78);
  v53 = v73;
  (*(v73 + 16))(v52, v50, v51);
  v81[3] = sub_767340();
  v81[4] = &protocol witness table for Margins;
  sub_B1B4(v81);
  sub_767330();
  v54 = v75;
  v75[3] = v51;
  v54[4] = &protocol witness table for Resize;
  sub_B1B4(v54);
  sub_7672D0();
  (*(v53 + 8))(v50, v51);
  return v58(v42, v64);
}

uint64_t sub_578F98(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    sub_B170(a3 + 20, a3[23]);
    sub_766710();
  }

  return sub_7668C0();
}

uint64_t sub_579020(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_766840();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return sub_766800();
}

uint64_t sub_57915C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_7668A0();
  if (a3)
  {
    sub_B170((a2 + 240), *(a2 + 264));
    sub_766710();
  }

  return sub_7668B0();
}

uint64_t sub_579208(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 50, a2[53]);
  sub_766710();
  sub_7668B0();
  sub_B170(a2 + 55, a2[58]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_5792D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 60, a2[63]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_579358(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 5, a2[8]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_5793D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 20, a2[23]);
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_579458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_7668A0();
  sub_B170((a2 + 240), *(a2 + 264));
  sub_766710();
  return sub_7668B0();
}

uint64_t sub_5794F8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 35, a2[38]);
  sub_766710();
  return sub_7668B0();
}

uint64_t sub_579578(uint64_t a1, void *a2, uint64_t a3)
{
  sub_B170(a2 + 40, a2[43]);
  sub_766710();
  sub_7668B0();
  sub_B170(a2 + 45, a2[48]);
  sub_766710();
  return sub_7668C0();
}