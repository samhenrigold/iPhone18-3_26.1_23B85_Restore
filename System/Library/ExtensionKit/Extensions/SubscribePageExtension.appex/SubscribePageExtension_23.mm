id sub_100283148()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v9 = v1;
    v10 = sub_100753FC4();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_100287578(0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
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

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
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

  return [v1 setNeedsLayout];
}

double sub_100283358(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v12 = sub_100281784();
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    if (qword_100920740 != -1)
    {
      swift_once();
    }

    v13 = sub_100750534();
    sub_10000D0FC(v13, qword_10097EC38);
    v14 = [v1 traitCollection];
    v15 = sub_100753C14();

    v16 = [objc_opt_self() configurationWithFont:v15];
    [v12 setPreferredSymbolConfiguration:v16];

    return result;
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {

    return result;
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_100283620(uint64_t a1, uint64_t a2)
{
  v3 = sub_100746BA4();
  v182 = *(v3 - 8);
  __chkstk_darwin(v3);
  v181 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v180 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10074F284();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v8 - 8);
  v193 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v192 = v174 - v11;
  v12 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v12 - 8);
  v191 = v174 - v13;
  v14 = sub_100744864();
  __chkstk_darwin(v14 - 8);
  v190 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v189 = v174 - v17;
  v18 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v18 - 8);
  v188 = v174 - v19;
  v187 = sub_100744894();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100747D94();
  v194 = *(v21 - 8);
  __chkstk_darwin(v21);
  v199 = v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_10074ED34();
  v208 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10092FB70, &qword_1007B6070);
  __chkstk_darwin(v24 - 8);
  v197 = v174 - v25;
  v201 = sub_100745334();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v183 = v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = v174 - v28;
  v29 = sub_10074B3E4();
  v210 = *(v29 - 8);
  v211 = v29;
  __chkstk_darwin(v29);
  v207 = v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v203 = v174 - v32;
  __chkstk_darwin(v33);
  v35 = v174 - v34;
  v206 = sub_1007504F4();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v37 = v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100750D14();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493C4();
  sub_100287AD4(&qword_100936A50, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (!*&v215[0])
  {
    return;
  }

  v176 = v21;
  v202 = *&v215[0];
  v175 = v3;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v204 = *&v215[0];
  sub_100747474();
  v195 = a2;
  sub_100752754();
  v42 = *&v215[0];
  v43 = v209;
  if (*&v215[0])
  {
    *&v214 = v209;
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v44, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v45 = v43;
    sub_1007544E4();
    sub_100747464();

    sub_100016994(v215);
  }

  v198 = v42;
  v174[1] = type metadata accessor for EditorialSearchResultContentView();
  sub_1007477B4();
  swift_getKeyPath();
  sub_100746914();

  v46 = *&v215[0];
  if (qword_100920728 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v47 = v206;
    v48 = sub_10000D0FC(v206, qword_10097EC10);
    v205[2](v37, v48, v47);
    sub_100750D24();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007A5CF0;
    *(v49 + 32) = v46;
    v50 = v46;
    v51 = sub_100751044();
    sub_100750404();
    v53 = v52;
    v55 = v54;

    (*(v39 + 8))(v41, v38);
    v38 = v202;
    sub_100749384();
    v56 = (*(v210 + 88))(v35, v211);
    v57 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v184 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v56 == enum case for EditorialSearchResultType.category(_:) || v56 == enum case for EditorialSearchResultType.collection(_:) || v56 == enum case for EditorialSearchResultType.story(_:) || v56 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v43[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v59 = sub_100281784();
      [v59 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
    }

    else
    {
      v43[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v58 = sub_100281784();
      [v58 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
      (*(v210 + 8))(v35, v211);
    }

    v60 = sub_100749334();
    sub_1002816A0(v60, v61);
    sub_100749394();
    v63 = v62;
    v64 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_titleLabel];
    v65 = v62 ? sub_100753064() : 0;
    [v64 setText:v65];

    [v64 setHidden:v63 == 0];
    [v43 setNeedsLayout];
    sub_1007493A4();
    v67 = v66;
    v68 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel];
    v69 = v66 ? sub_100753064() : 0;
    [v68 setText:v69];

    [v68 setHidden:v67 == 0];
    [v43 setNeedsLayout];
    v70 = sub_100749354();
    if (!v70)
    {
      break;
    }

    v71 = v70;
    v72 = v197;
    sub_100749324();
    v73 = v200;
    v46 = v201;
    if ((*(v200 + 48))(v72, 1, v201) == 1)
    {

      sub_10000C8CC(v72, &qword_10092FB70, &qword_1007B6070);
      break;
    }

    v93 = v196;
    (*(v73 + 32))(v196, v72, v46);
    v94 = v183;
    (*(v73 + 16))(v183, v93, v46);
    v95 = (*(v73 + 88))(v94, v46);
    if (v95 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v95 == enum case for ArtworkGridType.large(_:))
    {
      v96 = 1;
    }

    else if (v95 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v96 = 2;
    }

    else
    {
      if (v95 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v73 + 8))(v94, v46);
LABEL_32:
        v96 = 0;
        goto LABEL_50;
      }

      v96 = 3;
    }

LABEL_50:
    v109 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v110 = sub_100602928(v96, 0.0, 0.0, 0.0, 0.0);
    sub_100496C30();
    v111 = v110[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
    v112.f64[0] = v53;
    v113 = sub_100602310(v111, v112, v55);
    v35 = *(v71 + 2);
    if (v113 < v35)
    {
      v114.f64[0] = v53;
      v115 = sub_100602310(v111, v114, v55);
      if ((v115 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v115)
      {
        if (v35 == v115)
        {
LABEL_67:
          v41 = v71;
        }

        else
        {
          v199 = v110;
          sub_1006315C0(v71, &v71[(*(v208 + 80) + 32) & ~*(v208 + 80)], 0, (2 * v115) | 1);
          v41 = v116;
LABEL_55:

          v43 = v209;
          v110 = v199;
        }

        *&v110[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_100602764();
        if (v198)
        {
          v121 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v122 = swift_allocObject();
          v122[2] = v110;
          v122[3] = v121;
          v123 = v204;
          v122[4] = v204;
          v124 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v125 = swift_allocObject();
          v125[2] = v110;
          v125[3] = v124;
          v125[4] = v123;
          *&v215[0] = v43;
          sub_100287AD4(&qword_10092FB68, v126, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
          v127 = v43;
          v128 = v110;
          swift_retain_n();

          v129 = v127;
          v130 = v128;
          sub_1007544E4();
          sub_100747444();

          sub_10000C8CC(&v214, &unk_1009276E0, &unk_1007A5C70);
        }

        else
        {

          v216 = 0;
          memset(v215, 0, sizeof(v215));
        }

        v101 = v203;
        sub_10000C8CC(v215, &unk_1009276E0, &unk_1007A5C70);
        v131 = v110;
        sub_100287740(v110);

        (*(v200 + 8))(v196, v201);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v113 <= v35)
    {
      goto LABEL_67;
    }

    v206 = v113 - v35;
    if (v113 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v199 = v110;

      v41 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_10025572C(0, (v35 + 1), 1, v71);
LABEL_60:
    v117 = 0;
    v39 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v205 = &v71[v39];
    v43 = (v208 + 16);
    v37 = (v208 + 32);
    while (1)
    {
      v118 = v117 % v35;
      if (v117 % v35 < 0)
      {
        break;
      }

      if (v118 >= *(v71 + 2))
      {
        goto LABEL_103;
      }

      v46 = v71;
      v119 = *(v208 + 72);
      (*(v208 + 16))(v212, v205 + v119 * v118, v213);
      v38 = *(v41 + 2);
      v120 = *(v41 + 3);
      if (v38 >= v120 >> 1)
      {
        v41 = sub_10025572C((v120 > 1), v38 + 1, 1, v41);
      }

      ++v117;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v119], v212, v213);
      v71 = v46;
      if (v206 == v117)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (sub_100749314())
  {
    (*(v186 + 104))(v185, enum case for VideoFillMode.scaleAspectFill(_:), v187);
    sub_10074EC14();
    sub_10074F2A4();
    v74 = v188;
    sub_100750504();

    (v205[7])(v74, 0, 1, v206);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v75 = v191;
    sub_10074EC24();
    v76 = sub_100741264();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = v192;
    sub_10074EBE4();
    v78 = v193;
    sub_10074EBD4();
    v79 = type metadata accessor for VideoView(0);
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v213 = v79;
    v80 = sub_1007464A4();
    sub_10000C8CC(v78, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v77, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v75, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v215, &unk_1009276E0, &unk_1007A5C70);
    v81 = v209;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = Strong;
      v84 = [Strong superview];
      if (!v84)
      {
        goto LABEL_26;
      }

      v85 = v84;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v86 = v81;
      v87 = sub_100753FC4();

      if (v87)
      {
        v88 = swift_unknownObjectWeakLoadStrong();
        if (v88)
        {
          v83 = v88;
          [v88 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v89 = swift_unknownObjectWeakLoadStrong();
    if (v89)
    {
      v90 = v89;
      [v81 addSubview:v89];
    }

    [v81 setNeedsLayout];

    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91)
    {
      v92 = v91;
      sub_10074EC14();
      sub_10074F374();

      sub_100287AD4(&unk_100923110, 255, type metadata accessor for VideoView, &unk_1007BAFA8);
      sub_100744204();

      (*(v194 + 8))(v199, v176);
    }

    else
    {
      (*(v194 + 8))(v199, v176);
    }

    v101 = v203;
  }

  else if (sub_100749344())
  {
    sub_1007433C4();
    v97 = sub_1007431C4();
    [v97 setContentMode:2];
    sub_10074F364();
    sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
    v98 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v99 = v209;
    v100 = *&v209[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
    v101 = v203;
    v102 = v97;
    if (v100)
    {
      [v100 removeFromSuperview];
      v103 = *&v99[v98];
    }

    else
    {
      v103 = 0;
    }

    *&v99[v98] = v97;
    v108 = v97;

    [v99 addSubview:v108];
    [v99 setNeedsLayout];
  }

  else
  {
    v104 = sub_100749304();
    v101 = v203;
    if (v104)
    {
      v105 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10074F2A4();
      sub_100750504();
      sub_100750474();
      (v205[1])(v37, v206);
      v106 = v177;
      sub_10074F294();
      sub_10074F254();
      (*(v178 + 8))(v106, v179);
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v105 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
      v107 = v105;
      sub_100287578(v105);
    }
  }

LABEL_72:
  sub_100749384();
  (*(v210 + 104))(v207, v184, v211);
  sub_100287AD4(&qword_10092FB78, 255, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  sub_100753274();
  sub_100753274();
  if (v215[0] == v214)
  {
    v132 = v211;
    v133 = *(v210 + 8);
    v133(v207, v211);
    v133(v101, v132);

LABEL_75:
    v138 = sub_100749374();
    if (v138 >> 62)
    {
      v139 = sub_100754664();
    }

    else
    {
      v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = v209;
    if (v139)
    {
      v140 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v141 = *&v209[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v141)
      {
        goto LABEL_79;
      }

      v151 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v152 = *&v137[v140];
      if (v152)
      {
        [v152 removeFromSuperview];
        v153 = *&v137[v140];
      }

      else
      {
        v153 = 0;
      }

      *&v137[v140] = v151;
      v164 = v151;

      if (v164)
      {
        v165 = v164[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
        v164[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1000C95D0(v165);
        [v137 addSubview:v164];
      }

      [v137 setNeedsLayout];

      v166 = *&v137[v140];
      if (v166)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v167 = v166;
        sub_100752754();
        v168 = *&v215[0];
        v169 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v170 = *&v167[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v171 = v170;
        sub_1000CAC84(v168);
        v172 = *&v167[v169];
        *&v167[v169] = v168;
        v173 = v168;

        sub_1000CADE8(v170);
        v141 = *&v137[v140];
        if (v141)
        {
LABEL_79:
          v142 = v141;
          [v137 bringSubviewToFront:v142];
          v143 = sub_100749374();
          sub_1000C94C4(v143);
        }
      }
    }

    v144 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v145 = *&v137[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v145)
    {
      v146 = v145;
      v147 = sub_1007493B4();
      v148 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v149 = *&v146[v148];
      if (v149)
      {
        v150 = v149;
        [v150 setBackgroundColor:v147];
      }

      else
      {

        v146 = v147;
      }

      v154 = *&v137[v144];
      if (v154)
      {
        v155 = v154;
        v156 = v181;
        sub_100749364();
        v157 = sub_100746B84();
        (*(v182 + 8))(v156, v175);
        [v155 setOverrideUserInterfaceStyle:v157];
      }
    }

    v158 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v159 = *&v137[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
    if (v159)
    {
      v160 = v159;
      sub_100746E74();

      v161 = *&v137[v158];
      if (v161)
      {
        v162 = v161;
        if (!sub_1007493B4())
        {
          v163 = [objc_opt_self() clearColor];
        }

        sub_100746E64();
      }
    }
  }

  else
  {
    v134 = sub_100754754();
    v135 = v211;
    v136 = *(v210 + 8);
    v136(v207, v211);
    v136(v101, v135);

    v137 = v209;
    if (v134)
    {
      goto LABEL_75;
    }
  }

  [v137 setNeedsLayout];
}

void sub_1002854F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10074F284();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10074F294();
        sub_10074F254();
        (*(v6 + 8))(v8, v17);
        sub_10074F374();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_1007441F4();

        sub_10000C8CC(v20, &unk_1009276E0, &unk_1007A5C70);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_100285710(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v72 = a2;
  v8 = sub_10074F314();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10074F284();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10074ED34();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007504F4();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100750D14();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v79);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_1007493C4();
  if (!swift_dynamicCast())
  {
    return;
  }

  v67 = v10;
  v68 = v9;
  v20 = v78;
  sub_100747474();
  sub_100752754();
  v70 = v6;
  v71 = *&v79[0];
  v21 = [v6 traitCollection];
  if (qword_100920728 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v22 = v74;
    v23 = sub_10000D0FC(v74, qword_10097EC10);
    (*(v73 + 2))(v15, v23, v22);
    sub_100750D24();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007A5CF0;
    *(v24 + 32) = v21;
    v25 = v21;
    v26 = sub_100751044();
    sub_100750404();
    v28 = v27;
    v30 = v29;

    (*(v17 + 8))(v19, v16);
    v31 = sub_100749354();
    v33 = v70;
    if (!v31)
    {
      goto LABEL_11;
    }

    v17 = v31;
    v34 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
    if (!v34)
    {

LABEL_11:
      if (sub_100749314())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = Strong;
          sub_10074EC14();
          sub_10074F374();

          type metadata accessor for VideoView(0);
          v46 = &unk_100923110;
          v47 = type metadata accessor for VideoView;
          v48 = &unk_1007BAFA8;
LABEL_40:
          sub_100287AD4(v46, 255, v47, v48);
          sub_100744204();

          goto LABEL_41;
        }
      }

      if (sub_100749344())
      {
        v55 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
        if (v55)
        {
          v56 = v55;
          [v56 setContentMode:2];
          sub_10074F364();
          sub_1007433C4();
          sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          sub_100744204();

          goto LABEL_41;
        }
      }

      if (!sub_100749304())
      {
LABEL_42:

        return;
      }

      v65 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
      if (v65)
      {
        v45 = v65;
        sub_10074F2A4();
        sub_100750504();
        sub_100750474();
        (*(v73 + 1))(v15, v74);
        v66 = v69;
        sub_10074F294();
        sub_10074F254();
        (*(v67 + 8))(v66, v68);
        sub_10074F374();
        sub_10074F324();
        sub_100743364();
        [v45 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          sub_100753E34();
        }

        sub_100743224();
        sub_1007433C4();
        v46 = &qword_100925570;
        v47 = &type metadata accessor for ArtworkView;
        v48 = &protocol conformance descriptor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v35 = v34[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
    v32.f64[0] = v28;
    v36 = sub_100602310(v35, v32, v30);
    v19 = *(v17 + 16);
    if (v36 < v19)
    {
      break;
    }

    v40 = v71;
    v39 = v72;
    if (v36 <= v19)
    {
      goto LABEL_25;
    }

    v74 = v36 - v19;
    if (v36 - v19 < 0)
    {
      goto LABEL_49;
    }

    if (v19)
    {
      v69 = v20;
      v68 = v34;
      v49 = v34;

      v42 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v42 = sub_10025572C(0, v19 + 1, 1, v17);
LABEL_18:
    v50 = 0;
    v15 = ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v73 = &v15[v17];
    v21 = (v75 + 16);
    v20 = (v75 + 32);
    while (1)
    {
      v51 = v50 % v19;
      if (v50 % v19 < 0)
      {
        break;
      }

      if (v51 >= *(v17 + 16))
      {
        goto LABEL_45;
      }

      v52 = *(v75 + 72);
      (*(v75 + 16))(v76, &v73[v52 * v51], v77);
      v16 = *(v42 + 16);
      v53 = *(v42 + 24);
      if (v16 >= v53 >> 1)
      {
        v42 = sub_10025572C((v53 > 1), v16 + 1, 1, v42);
      }

      ++v50;
      *(v42 + 16) = v16 + 1;
      (*v20)(&v15[v42 + v16 * v52], v76, v77);
      if (v74 == v50)
      {

        v40 = v71;
        v39 = v72;
        v33 = v70;
        v34 = v68;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v37.f64[0] = v28;
  v38 = sub_100602310(v35, v37, v30);
  v40 = v71;
  v39 = v72;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v19 < v38)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v19 == v38)
  {
LABEL_25:
    v54 = v34;
    v42 = v17;
  }

  else
  {
    sub_1006315C0(v17, v17 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), 0, (2 * v38) | 1);
    v42 = v41;
    v43 = v34;
  }

LABEL_30:
  *&v34[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v42 + 16);
  sub_100602764();
  if (v40)
  {
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = swift_allocObject();
    v58[2] = v34;
    v58[3] = v57;
    v58[4] = v39;
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v34;
    v60[3] = v59;
    v60[4] = v39;
    *&v79[0] = v33;
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v61, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
    v62 = v34;
    swift_retain_n();
    v63 = v62;

    v64 = v33;
    sub_1007544E4();
    sub_100747444();

    sub_10000C8CC(&v78, &unk_1009276E0, &unk_1007A5C70);
  }

  else
  {

    v80 = 0;
    memset(v79, 0, sizeof(v79));
  }

  sub_10000C8CC(v79, &unk_1009276E0, &unk_1007A5C70);
}

id sub_10028627C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002863C0(void *a1)
{
  sub_100287314();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_10028644C(uint64_t **a1))()
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
  v2[4] = sub_1002819AC(v2);
  return sub_1000181A8;
}

uint64_t sub_1002864C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100286514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100286580(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100286740(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100287AD4(&qword_10092FB58, a2, type metadata accessor for EditorialSearchResultContentView, &unk_1007B5FA0);
  result = sub_100287AD4(&qword_10092FB60, v3, type metadata accessor for EditorialSearchResultContentView, &unk_1007B5FD0);
  *(a1 + 16) = result;
  return result;
}

void *sub_1002867C4()
{
  v0 = sub_100754724();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100750B04();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100747C14();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074F704();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493C4();
  sub_100287AD4(&qword_100936A50, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  v45 = v47[0];
  if (v47[0])
  {
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    v36 = v0;

    sub_10074F6A4();
    v35[2] = sub_100749334();
    v42 = v13;
    v35[0] = sub_100749394();
    v15 = v14;
    v35[1] = sub_1007493A4();
    v43 = v16;
    v17 = sub_10007DC04();
    sub_10074F674();
    sub_100753BA4();
    if (qword_100920748 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097EC50);
    if (qword_100920760 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_10097EC98);
    v41 = v15;
    if (v15)
    {
      v18 = sub_10074F3F4();
      v48 = v18;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_10000D134(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10074FC74();
      sub_10000C620(v47);
      sub_10074CCB4();
      sub_100750584();
    }

    v20 = v43;
    v21 = v37;
    if (qword_100920750 != -1)
    {
      swift_once();
    }

    v22 = sub_10000D0FC(v6, qword_10097EC68);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_100920768 != -1)
    {
      swift_once();
    }

    v23 = sub_10000D0FC(v3, qword_10097ECB0);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = sub_10074F3F4();
      v48 = v24;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v25 = sub_10000D134(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10074FC74();
      sub_10000C620(v47);
      v26 = v44;
      sub_10074CCB4();
      sub_100750584();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_100920740 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097EC38);
    v27 = v42;
    if (qword_100920758 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_10097EC80);
    if (v27)
    {
      v28 = sub_10074F3F4();
      v48 = v28;
      v49 = sub_100287AD4(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v29 = sub_10000D134(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      sub_10074FC74();
      sub_10000C620(v47);
      sub_10074CCB4();
      sub_100750584();
    }

    v30 = [v17 traitCollection];
    sub_1007502D4();
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    v31 = sub_100753C14();
    sub_100750AD4();
    sub_100753C24();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v3, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    v32(v2, v33);
    if (qword_100920728 != -1)
    {
      swift_once();
    }

    v34 = sub_1007504F4();
    sub_10000D0FC(v34, qword_10097EC10);
    sub_1007504B4();
    sub_1007504C4();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

void sub_100287314()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v4 = v0;
      v5 = sub_100753FC4();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

id sub_10028744C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
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
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_100920738 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10097EC30];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_100287578(void *a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    sub_100746ED4();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = sub_100746EC4();
    sub_10028744C(v13);

    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_100287740(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
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
    v6[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_100920730 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10097EC28];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

void sub_10028787C()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  sub_100754644();
  __break(1u);
}

double sub_100287940(uint64_t a1)
{
  sub_100747474();
  sub_100752754();
  if (v7[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v2, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v3 = v1;
    sub_1007544E4();
    sub_100747464();

    sub_100016994(v7);
  }

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    v5 = v4;
    sub_100496C30();
  }

  return result;
}

uint64_t sub_100287A48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100287A90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100287AD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100287B1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100287B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009233B8, &unk_1007A63E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100287BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009233B8, &unk_1007A63E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100287CC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell(uint64_t a1)
{
  result = qword_10092FBA8;
  if (!qword_10092FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100287D8C(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell(0);
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_100752A34();
  sub_10000C8CC(v24, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v25, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v19;
}

double sub_100288140()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3, v4);
  v5 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler);
  v6 = *v5;
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  sub_1000164A8(v6, v7);
  v8 = *v2;
  v9 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v8, v9);
  v10 = *v5;
  v11 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  return sub_1000164A8(v10, v11);
}

id sub_100288224()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_10028836C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView] + *a4;
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    sub_1000164A8(v9, v10);
  }

  return sub_10000C8CC(v13, &unk_100923520, &qword_1007A5A70);
}

id sub_10028852C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell(uint64_t a1)
{
  result = qword_10092FBE0;
  if (!qword_10092FBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100288614()
{
  v1 = [v0 contentView];

  return v1;
}

double sub_10028864C()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007428D4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform])
  {

    sub_1007444B4();
    if ((*(v6 + 88))(v9, v5) == enum case for AppPlatform.watch(_:))
    {
      v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v11 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
      v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
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
      v22 = v10;

      sub_100288900(v23);
    }

    else
    {
      v17 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
      v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
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

      sub_100288900(v24);
      (*(v6 + 8))(v9, v5);
    }

    sub_100743864();

    sub_1002898DC(v25, v4, v26);

    sub_100288B54(v4);
    [v1 setNeedsLayout];
  }

  else
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
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

    sub_100288900(v20);
  }

  return result;
}

void sub_100288900(__n128 a1)
{
  v2 = v1;
  v3 = sub_1007428D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
  if (v7)
  {
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v8 = v7;
      sub_1007444B4();
      if ((*(v4 + 88))(v6, v3) == enum case for AppPlatform.watch(_:))
      {
        if (qword_100920780 != -1)
        {
          swift_once();
        }

        v9 = qword_10092FC40;
      }

      else
      {
        if (qword_100920788 != -1)
        {
          swift_once();
        }

        v9 = qword_10092FC48;

        (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      v10 = qword_100920788;
      v11 = v7;
      if (v10 != -1)
      {
        swift_once();
      }

      v9 = qword_10092FC48;
    }

    [v7 setBackgroundColor:v9];

    [v2 insertSubview:v7 belowSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_100288B54(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1000243DC(a1, v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
  sub_100746E74();

  v7 = *(v4 + 48);
  v8 = *&v2[v5];
  v9 = v7;
  sub_100746E64();

  [v2 setNeedsLayout];
  return sub_100024440(a1);
}

char *sub_100288C24(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  if (qword_100920778 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v11 = sub_10000D0FC(v10, qword_10097ECF8);
  sub_100289598(v11, &v4[v9]);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BorderedScreenshotView(0);
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView]];

  return v16;
}

void sub_100288E80()
{
  v1 = v0;
  v2 = sub_100743584();
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
  v17 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1007477B4();
  CGRectGetWidth(v41);
  sub_1007477B4();
  CGRectGetHeight(v42);
  sub_1007477B4();
  CGRectGetMidX(v43);
  sub_1007477B4();
  CGRectGetMidY(v44);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
  sub_100743324();

  sub_100289598(v17, v15);
  sub_100024440(v15);
  v20 = *&v1[v18];
  sub_100289598(v17, v12);
  LODWORD(v18) = v12[16];
  v21 = v20;
  sub_100024440(v12);
  v22 = &enum case for CornerStyle.arc(_:);
  if (!v18)
  {
    v22 = &enum case for CornerStyle.continuous(_:);
  }

  v23 = v39;
  (*(v3 + 104))(v39, *v22, v2);
  (*(v3 + 32))(v7, v23, v2);
  sub_1007433B4();

  (*(v3 + 8))(v7, v2);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_chromeBorderView];
  if (v25)
  {
    v26 = v25;
    sub_1007477B4();
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
    sub_100289598(v17, v38);
    v29 = v27;
    sub_1007477B4();
    if (*(v28 + 16))
    {
      v32 = *v28;
      sub_100024440(v28);
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = *(v28 + 8);
      sub_100024440(v28);
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

id sub_1002893F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView(uint64_t a1)
{
  result = qword_10092FC30;
  if (!qword_10092FC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002894EC(uint64_t a1)
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

uint64_t sub_100289598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100289610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002896D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration(uint64_t a1)
{
  result = qword_10092FCC8;
  if (!qword_10092FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002897C0(uint64_t a1)
{
  sub_10028988C();
  if (v1 <= 0x3F)
  {
    sub_10000D198();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        sub_1007504F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10028988C()
{
  if (!qword_10092FCD8)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092FCD8);
    }
  }
}

__n128 sub_1002898DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = sub_1007428D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  if (a1)
  {
    v47 = v14;

    sub_1007444B4();

    v51 = v6;
    v17 = *(v6 + 88);
    v18 = v17(v16, v5);
    v19 = enum case for AppPlatform.watch(_:);
    v20 = 0.0;
    v21 = 0.0;
    if (v18 != enum case for AppPlatform.watch(_:))
    {
      (*(v51 + 8))(v16, v5);
      v21 = 5.0;
    }

    v50 = sub_100744504();
    v48 = v22;
    v49 = sub_1007444F4();
    v53.n128_u32[0] = v23;

    sub_1007444B4();

    if (v17(v12, v5) != v19)
    {
      (*(v51 + 8))(v12, v5);
      v20 = 1.0;
    }

    sub_1007444B4();
    if (v17(v9, v5) == v19)
    {
      if (qword_100920780 != -1)
      {
        swift_once();
      }

      v24 = qword_10092FC40;
    }

    else
    {
      if (qword_100920788 != -1)
      {
        swift_once();
      }

      v24 = qword_10092FC48;

      (*(v51 + 8))(v9, v5);
    }

    v31 = v53.n128_u8[0];

    v32 = v47;
    sub_1007444B4();
    if (v17(v32, v5) == v19)
    {
      v33 = sub_1007444F4();
      v26 = v24;
      if (v34)
      {
        v29 = v31;
        if (qword_100920770 != -1)
        {
          swift_once();
        }

        v35 = sub_1007504F4();
        sub_10000D0FC(v35, qword_10097ECE0);
        sub_100750494();
        v37 = v36;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v37 * 15.0;
        v52 = _Q1;
        v53 = _Q1;
        v27 = v49;
        v28 = v50;
        goto LABEL_24;
      }

      v44 = v33;

      v52 = vdupq_n_s64(v44);
      v53 = v52;
      v27 = v49;
      v28 = v50;
    }

    else
    {
      v43 = *&UIEdgeInsetsZero.top;
      v52 = *&UIEdgeInsetsZero.bottom;
      v53 = v43;

      (*(v51 + 8))(v32, v5);
      v27 = v49;
      v28 = v50;
      v26 = v24;
    }

    v29 = v31;
LABEL_24:
    v30 = v48;
    goto LABEL_25;
  }

  if (qword_100920788 != -1)
  {
    swift_once();
  }

  v25 = *&UIEdgeInsetsZero.top;
  v52 = *&UIEdgeInsetsZero.bottom;
  v53 = v25;
  v26 = qword_10092FC48;
  v27 = 0;
  v28 = 0;
  v21 = 5.0;
  v29 = 1;
  v20 = 1.0;
  v30 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration(0);
  sub_100750504();
  *a2 = v21;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v29 & 1;
  *(a2 + 40) = v20;
  *(a2 + 48) = v26;
  result = v53;
  *(a2 + 72) = v52;
  *(a2 + 56) = result;
  return result;
}

double sub_100289DB4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097ECE0);
  sub_10000D0FC(v0, qword_10097ECE0);
  sub_100750504();
  return result;
}

uint64_t sub_100289E08()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  sub_100039C50(v4, qword_10097ECF8);
  v5 = sub_10000D0FC(v4, qword_10097ECF8);
  if (qword_100920788 != -1)
  {
    swift_once();
  }

  v6 = qword_100920790;
  v7 = qword_10092FC48;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_10092FC60;
  v11 = xmmword_10092FC50;
  sub_100750504();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_100289FC4()
{
  result = [objc_opt_self() blackColor];
  qword_10092FC40 = result;
  return result;
}

uint64_t sub_10028A000()
{
  sub_10000D198();
  result = sub_100753DC4();
  qword_10092FC48 = result;
  return result;
}

__n128 sub_10028A034()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_10092FC50 = *&UIEdgeInsetsZero.top;
  unk_10092FC60 = v1;
  return result;
}

double sub_10028A050()
{
  v0 = sub_10000C518(&qword_10092DF08, qword_1007B28E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100752854();
  sub_100752844();
  if (qword_1009207A0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_10092FD38);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  sub_100752544();

  if (qword_100920798 != -1)
  {
    swift_once();
  }

  v5 = sub_100752E44();
  sub_10000D0FC(v5, qword_10092FD20);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  sub_100752844();
  sub_100752534();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  sub_100752424();
  sub_1000277BC(&v8);
  sub_100752CE4();

  return result;
}

uint64_t sub_10028A33C()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_10092FD20);
  sub_10000D0FC(v4, qword_10092FD20);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t sub_10028A490()
{
  v0 = sub_10000C518(&qword_10092DF08, qword_1007B28E0);
  sub_100039C50(v0, qword_10092FD38);
  sub_10000D0FC(v0, qword_10092FD38);
  return sub_100752664();
}

uint64_t sub_10028A508()
{
  if (sub_10074C474())
  {
    if (qword_100920798 == -1)
    {
LABEL_3:
      v0 = sub_100752E44();
      sub_10000D0FC(v0, qword_10092FD20);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  sub_100752854();
  sub_100752844();
  if (qword_1009207A0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C518(&qword_10092DF08, qword_1007B28E0);
  sub_10000D0FC(v1, qword_10092FD38);
  sub_100752534();

  if (v11 != 1 && v10 > 0 || (sub_1007449B4() & 1) == 0)
  {
    if (qword_100920798 != -1)
    {
      swift_once();
    }

    v5 = sub_100752E44();
    sub_10000D0FC(v5, qword_10092FD20);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    sub_100752844();
    sub_100752534();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    sub_100752424();
    sub_1000277BC(&v10);
    sub_100752CE4();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_100920798 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_100920798 != -1)
      {
        swift_once();
      }

      v8 = sub_100752E44();
      sub_10000D0FC(v8, qword_10092FD20);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_1007523A4();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = sub_100744944() & 1;
      sub_100752424();
      sub_1000277BC(&v10);
      sub_100752CE4();

      v4 = sub_100744944();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_100920798 == -1)
        {
LABEL_31:
          v9 = sub_100752E44();
          sub_10000D0FC(v9, qword_10092FD20);
          sub_10000C518(&qword_100923930, &qword_1007A6B60);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752CE4();

          sub_10028A050();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_100920798 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_100920798 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

Swift::Int sub_10028AEAC(uint64_t a1, uint64_t a2)
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_10028AF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F724();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10028AF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_10028AFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000F724();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10028AFF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10028B040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10028B0A0()
{
  result = qword_10092FD50;
  if (!qword_10092FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD50);
  }

  return result;
}

unint64_t sub_10028B0F8()
{
  result = qword_10092FD58;
  if (!qword_10092FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD58);
  }

  return result;
}

uint64_t sub_10028B15C(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v4 = v3;
  sub_10000C518(&qword_100923948, &qword_1007A6B78);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000C888(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000C620(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000C8CC(&v9, &unk_100923950, &unk_1007A6B80);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028B260(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v4 = v3;
  sub_10000C518(&qword_100923938, &qword_1007A6B68);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000C888(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000C620(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000C8CC(&v9, &qword_100923940, &qword_1007A6B70);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028B36C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_10074A304();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v26 - v6;
  v7 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for FlowDestination(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v26 - v18;

  sub_10074EC44();
  sub_1001362FC(a1, v32, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10000C8CC(v12, &unk_100925750, &unk_1007A7C60);
    }
  }

  else
  {
    sub_100068B98(v12, v19);
  }

  sub_100068C18(v19, v16);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_100068C7C(v19, type metadata accessor for FlowDestination);
    v21 = 1;
  }

  else
  {
    sub_100742C54();
    sub_100742C44();
    sub_1006C1C84(v29);
    v23 = v27;
    v22 = v28;
    (*(v28 + 104))(v27, enum case for FlowPresentationContext.select(_:), v3);
    sub_10028D0B4();
    sub_100753274();
    sub_100753274();
    if (v32[0] == v30 && v32[1] == v31)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_100754754();
    }

    v24 = *(v22 + 8);
    v24(v23, v3);
    v24(v29, v3);
    sub_100068C7C(v9, type metadata accessor for FlowPresentationHints);
    sub_100068C7C(v19, type metadata accessor for FlowDestination);
  }

  sub_100068C7C(v16, type metadata accessor for FlowDestination);
  return v21 & 1;
}

void sub_10028B7B8(void *a1)
{
  v2 = sub_10000C518(&qword_10093D4E0, &unk_1007B6390);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_100744574();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 tabBar];
  v17 = [v16 items];

  if (!v17)
  {
    return;
  }

  v26 = v4;
  sub_100016C60(0, &unk_1009403B0, UITabBarItem_ptr);
  v18 = sub_1007532A4();

  if ((sub_1007532D4() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == sub_100740E44()))
  {

    return;
  }

  v20 = [a1 selectedIndex];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = sub_100754574();
  v21 = v9;
LABEL_11:

  [v22 tag];

  sub_100744544();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &qword_10092FD68, &unk_1007B6380);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    sub_100745584();
    sub_100745564();
    sub_100744524();
    sub_1007454D4();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    sub_100742984();
    sub_1006FE868(v24);

    sub_100742B14();
    sub_100752754();
    v25 = v27;
    if (v27)
    {
      sub_100742AF4();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_10028BBD8(uint64_t a1, void *a2, uint64_t a3)
{
  v141 = sub_10000C518(&qword_10092FD60, &unk_1007B6370);
  __chkstk_darwin(v141);
  v144 = &v126 - v6;
  v143 = sub_1007493D4();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v8 - 8);
  v139 = &v126 - v9;
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092FD68, &unk_1007B6380);
  __chkstk_darwin(v12 - 8);
  v131 = &v126 - v13;
  v132 = sub_100744574();
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v126 - v16;
  v17 = sub_100752624();
  v148 = *(v17 - 8);
  v149 = v17;
  __chkstk_darwin(v17);
  v147 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v19 - 8);
  v129 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v133 = &v126 - v22;
  v23 = sub_10074A304();
  v150 = *(v23 - 8);
  __chkstk_darwin(v23);
  v155 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v25);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v28 - 8);
  v137 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v126 - v31;
  v154 = type metadata accessor for FlowDestination(0);
  v33 = *(v154 - 8);
  __chkstk_darwin(v154);
  v138 = (&v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = (&v126 - v36);
  __chkstk_darwin(v38);
  v40 = &v126 - v39;
  objc_opt_self();
  v156 = swift_dynamicCastObjCClass();
  v153 = a2;
  if (v156)
  {
    v41 = a2;
  }

  else
  {
    v156 = [a2 tabBarController];
    if (!v156)
    {
      sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
      sub_10028D020();
      swift_allocError();
      return sub_100752D74();
    }
  }

  v145 = a3;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v146 = sub_100752DE4();

  sub_10074EC44();
  sub_1001362FC(a1, v158, v32);
  v42 = *(v33 + 48);
  v43 = v154;
  v44 = v42(v32, 1, v154);
  v136 = v33 + 48;
  v135 = v42;
  if (v44 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v45 = v42(v32, 1, v43);
    v46 = v23;
    if (v45 != 1)
    {
      sub_10000C8CC(v32, &unk_100925750, &unk_1007A7C60);
    }
  }

  else
  {
    sub_100068B98(v32, v40);
    v46 = v23;
  }

  sub_100742C54();
  sub_100742C44();
  v47 = [v153 traitCollection];
  sub_1006C1C84(v155);

  v48 = [v156 viewControllers];
  v49 = v151;
  v152 = v46;
  if (v48)
  {
    v50 = v48;
    v51 = v27;
    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v52 = sub_1007532A4();

    __chkstk_darwin(v53);
    *(&v126 - 2) = v40;
    v54 = sub_100150880(sub_10028D094, (&v126 - 4), v52);

    if (v54)
    {
      v55 = v156;
      [v156 setTransientViewController:0 animated:0];
      [v55 setSelectedViewController:v54];
      v56 = v145;
      sub_10028B7B8(v55);
      v57 = v40;
      sub_100068C18(v40, v37);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = v51;
        v59 = v146;
        if (*v37)
        {
          v60 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

          v61 = v133;
          sub_1007526C4();
          v62 = *(v60 - 8);
          v63 = (*(v62 + 48))(v61, 1, v60);
          v64 = v152;
          if (v63 == 1)
          {

            (*(v150 + 8))(v155, v64);
            sub_100068C7C(v58, type metadata accessor for FlowPresentationHints);
            sub_10000C8CC(v61, &unk_100923960, &qword_1007A6240);
LABEL_32:
            v85 = v57;
LABEL_56:
            sub_100068C7C(v85, type metadata accessor for FlowDestination);
            return v59;
          }

          sub_1003C1388(v86, 1, v56, v61);

          (*(v62 + 8))(v61, v60);
          sub_100752D54();

          (*(v150 + 8))(v155, v64);
LABEL_31:
          sub_100068C7C(v58, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_100068C7C(v37, type metadata accessor for FlowDestination);
        v58 = v51;
        v59 = v146;
      }

      v83 = v147;
      v82 = v148;
      v84 = v149;
      (*(v148 + 104))(v147, enum case for ActionOutcome.performed(_:), v149);
      sub_100752DB4();

      (*(v82 + 8))(v83, v84);
      (*(v150 + 8))(v155, v152);
      goto LABEL_31;
    }

    v27 = v51;
    v46 = v152;
  }

  v65 = [v156 viewControllers];
  v130 = v40;
  if (!v65)
  {
    goto LABEL_40;
  }

  v66 = v65;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v67 = sub_1007532A4();

  __chkstk_darwin(v68);
  *(&v126 - 2) = v40;
  v69 = sub_100150880(sub_10028D074, (&v126 - 4), v67);

  if (!v69)
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {

    goto LABEL_40;
  }

  v71 = [v70 viewControllers];
  v72 = sub_1007532A4();

  if (v72 >> 62)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v134;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = sub_100754574();
LABEL_25:
    v76 = v75;

    type metadata accessor for TabPlaceholderViewController(0);
    if (swift_dynamicCastClass())
    {
      v78 = sub_1002D7360(v77);
      if (v78)
      {
        v134 = v76;
        v79 = v78;
        [v78 tag];
        v80 = v131;
        sub_100744544();

        v81 = v132;
        if ((v74[6])(v80, 1, v132) != 1)
        {
          (v74)[4](v49, v80, v81);
          (v74)[2](v127, v49, v81);
          sub_10000C518(&unk_1009231A0, qword_1007A5810);
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_1007A5CF0;
          *(v117 + 32) = a1;

          sub_1007525F4();
          sub_100745824();
          swift_allocObject();
          sub_1007457E4();
          v118 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
          v119 = v129;
          v120 = v145;
          sub_1007526C4();
          v121 = v74;
          v122 = *(v118 - 8);
          if ((*(v122 + 48))(v119, 1, v118) == 1)
          {

            (v121[1])(v49, v132);
            (*(v150 + 8))(v155, v46);
            sub_100068C7C(v27, type metadata accessor for FlowPresentationHints);
            sub_10000C8CC(v119, &unk_100923960, &qword_1007A6240);
            v85 = v130;
            v59 = v146;
            goto LABEL_56;
          }

          sub_1003C13BC(v123, 1, v120, v119);

          (*(v122 + 8))(v119, v118);
          v124 = v146;
          sub_100752D54();

          (v121[1])(v49, v132);
          v125 = v46;
          v59 = v124;
          (*(v150 + 8))(v155, v125);
          sub_100068C7C(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v80 = v131;
        (v74[7])(v131, 1, 1, v132);
      }

      sub_10000C8CC(v80, &qword_10092FD68, &unk_1007B6380);
    }

    else
    {
    }

LABEL_40:
    v87 = v153;
    v88 = sub_1003787A4(v153);
    if (!v88 || (v157 = v88, sub_100016C60(0, &qword_100924658, UINavigationController_ptr), sub_10000C518(&qword_100924660, &qword_1007A7C70), (swift_dynamicCast() & 1) == 0))
    {
      v159 = 0;
      memset(v158, 0, sizeof(v158));
    }

    v89 = [v87 traitCollection];

    sub_10074EC44();
    v90 = v137;
    sub_1001362FC(a1, &v157, v137);
    v91 = v154;
    v92 = v135;
    if (v135(v90, 1, v154) == 1)
    {
      v93 = v138;
      swift_storeEnumTagMultiPayload();
      if (v92(v90, 1, v91) != 1)
      {
        sub_10000C8CC(v90, &unk_100925750, &unk_1007A7C60);
      }
    }

    else
    {
      v93 = v138;
      sub_100068B98(v90, v138);
    }

    v94 = sub_100742C14();
    v96 = v95;
    v97 = v139;
    sub_100742C34();
    v98 = sub_100470520(v93, v89, v94, v96, v97, v158, v145, 1);

    sub_10000C8CC(v97, &qword_10092C1F0, &unk_1007A8F60);
    sub_100068C7C(v93, type metadata accessor for FlowDestination);
    v99 = v140;
    sub_100742C44();
    v100 = *(v141 + 48);
    v101 = v142;
    v102 = v144;
    v103 = v143;
    (*(v142 + 32))(v144, v99, v143);
    v104 = v150;
    v105 = v152;
    (*(v150 + 16))(v102 + v100, v155, v152);
    v106 = (*(v101 + 88))(v102, v103);
    v107 = v27;
    if (v106 == enum case for FlowAnimationBehavior.infer(_:))
    {
      v108 = (*(v104 + 88))(v102 + v100, v105);
      v109 = v146;
      if (v108 != enum case for FlowPresentationContext.presentModal(_:))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v109 = v146;
      if (v106 != enum case for FlowAnimationBehavior.always(_:))
      {
LABEL_53:
        v110 = v105;
        sub_10000C8CC(v102, &qword_10092FD60, &unk_1007B6370);
        v111 = 0;
        goto LABEL_54;
      }

      (*(v104 + 8))(v102 + v100, v105);
    }

    v110 = v105;
    (*(v101 + 8))(v102, v103);
    v111 = 1;
LABEL_54:
    v112 = v156;
    [v156 setTransientViewController:v98 animated:v111];
    v114 = v147;
    v113 = v148;
    v115 = v149;
    (*(v148 + 104))(v147, enum case for ActionOutcome.performed(_:), v149);
    sub_100752DB4();

    v116 = v114;
    v59 = v109;
    (*(v113 + 8))(v116, v115);
    (*(v104 + 8))(v155, v110);
    sub_100068C7C(v107, type metadata accessor for FlowPresentationHints);
    sub_10000C8CC(v158, &unk_100925760, &unk_1007A8F70);
LABEL_55:
    v85 = v130;
    goto LABEL_56;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_10028D020()
{
  result = qword_10092FD70;
  if (!qword_10092FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD70);
  }

  return result;
}

unint64_t sub_10028D0B4()
{
  result = qword_100925248;
  if (!qword_100925248)
  {
    sub_10074A304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925248);
  }

  return result;
}

unint64_t sub_10028D120()
{
  result = qword_10092FD78;
  if (!qword_10092FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FD78);
  }

  return result;
}

void sub_10028D374(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 contentView];
    [v6 addSubview:v5];

    [v1 setNeedsLayout];
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1000F1DFC;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086EAF0;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    [v7 performWithoutAnimation:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    [isEscapingClosureAtFileLocation removeFromSuperview];
  }
}

void sub_10028D564()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

void sub_10028D688(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
    swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v7;
      if (v7 != v9)
      {
        [v8 setNeedsLayout];
      }
    }
  }
}

uint64_t type metadata accessor for UberCollectionViewCell(uint64_t a1)
{
  result = qword_10092FDA8;
  if (!qword_10092FDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028D870(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_10028D908()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_10028D958()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10028D9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10028D9B8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_100749A94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_100749A14();
  sub_10028E208(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = sub_100754324();
  (*(v11 + 8))(v13, v10);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_1004368B8(v14, v15 & 1, v15 & 1, a7, a2);
}

id sub_10028DB18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_100749A94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_100749A14();
  sub_10028E208(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = sub_100754324();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_100435ADC(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_10028DD44(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = sub_100754724();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074E984();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_100028D40(a1, v13);
  sub_100028D40(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_100028D40(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_10028E208(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v24 = sub_100753014();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
      v25(v16, v6);
      sub_10000C8CC(v13, &unk_100933370, &unk_1007A8CE0);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10000C8CC(v13, &qword_10092C380, &unk_1007B0E90);
    return 0;
  }

  sub_10000C8CC(v20, &unk_100933370, &unk_1007A8CE0);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10000C8CC(v13, &unk_100933370, &unk_1007A8CE0);
LABEL_9:
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v26 = sub_100750B04();
  sub_10000D0FC(v26, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_10028E208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028E25C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

double sub_10028E2A4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_100749A94();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100927FD8, &qword_1007AB6D8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = sub_100744604();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100744624();
  sub_10028FAA8(&qword_100927FE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_1007468B4();
  if (v46)
  {
    sub_100744614();
    v20 = (*(v16 + 88))(v18, v15);
    if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
    {

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      if (v20 == enum case for ProductReview.ReviewSource.user(_:))
      {
        (*(v16 + 96))(v18, v15);
        v41 = *v18;
        v21 = v45;
        v22 = sub_1000300D4();
        sub_100746964();
        sub_100752EB4();
        swift_getKeyPath();
        sub_100746914();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_10028F878();
        v26 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_1000E9564();
        v27 = v44;
        sub_100752E84();
        v28 = sub_10028F604(a1, v46);
        swift_getKeyPath();
        sub_100752E94();

        v29 = v46;
        v30 = sub_10007DC04();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_100435ADC(v41, v31 | v28 & 1, v29, v30, v42);
        swift_unknownObjectRelease();
        [v22 setHidden:0];

        (*(v43 + 8))(v14, v27);
      }

      else
      {
        if (v20 == enum case for ProductReview.ReviewSource.reviewSummary(_:))
        {
          (*(v16 + 96))(v18, v15);
          v42 = *v18;
          v32 = sub_1000300F4();
          sub_100746964();
          sub_100752EB4();
          swift_getKeyPath();
          sub_1000E9564();
          v33 = v44;
          sub_100752E94();

          v34 = v46;
          if (v46 == 2)
          {
            sub_1007468A4();
            v35 = v39;
            sub_100749A14();
            sub_10028FAA8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
            v36 = v41;
            v37 = sub_100754324();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_100690144(v42, v34 & 1, 0, 0);
          [v32 setHidden:0];

          (*(v43 + 8))(v11, v33);
        }

        else
        {
          (*(v16 + 8))(v18, v15);
        }

        v21 = v45;
      }

      [v21 setNeedsLayout];
    }
  }

  return result;
}

void sub_10028E990(uint64_t a2@<X8>)
{
  v3 = sub_10074EAB4();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v9 - 8);
  v42 = sub_10000C518(&unk_100929040, qword_1007ACA98);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v36 - v12;
  v13 = sub_10000C518(&qword_10092FE08, &qword_1007B6660);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  sub_100744624();
  sub_10028FAA8(&qword_100927FE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_1007468B4();
  if (!v43)
  {
    v22 = sub_100744604();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    sub_10000C8CC(v18, &qword_10092FE08, &qword_1007B6660);
    goto LABEL_15;
  }

  v40 = a2;

  sub_100744614();

  v19 = sub_100744604();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_10028FA14(v18, v15);
  v21 = (*(v20 + 88))(v15, v19);
  if (v21 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v20 + 8))(v15, v19);
LABEL_15:
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
    v43 = v32;
    sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078, &qword_1007AF410);
    sub_100169778();
    sub_1007543A4();

    return;
  }

  if (v21 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v21;
    (*(v20 + 8))(v15, v19);
    if (v28 == v27)
    {
      swift_getKeyPath();
      sub_100746914();

      v29 = v43;
      v30 = sub_1007537D4();

      if (v30)
      {
        v31 = sub_1000300F4();
        if (([*(*&v31[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          sub_1007468F4();
          v33 = v37;
          sub_100752994();
          sub_1000E9564();
          v34 = v42;
          sub_100752954();
          sub_10000C518(&qword_10092A068, &qword_1007AE538);
          sub_10074DCB4();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1007A5620;
          sub_10074DCA4();
          sub_10074DC94();
          sub_10074DC84();
          v43 = v35;
          sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
          sub_10000C518(&qword_10092A078, &qword_1007AF410);
          sub_100169778();
          sub_1007543A4();

          (*(v39 + 8))(v33, v34);
          return;
        }
      }
    }

    goto LABEL_15;
  }

  (*(v20 + 8))(v15, v19);
  sub_1007468F4();
  sub_100752994();
  swift_getKeyPath();
  sub_1000E9564();
  sub_100752974();

  v23 = v43;
  if (!sub_10028F878())
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074EA54();
    sub_10028FAA8(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v24 = sub_100754324();
    v25 = *(v38 + 8);
    v25(v5, v3);
    v25(v8, v3);
    if (v24)
    {
      if ((v23 == 2) | v23 & 1)
      {
        sub_100752954();
      }
    }
  }

  sub_10000C518(&qword_10092A068, &qword_1007AE538);
  sub_10074DCB4();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007A5620;
  sub_10074DCA4();
  sub_10074DC94();
  sub_10074DC84();
  v43 = v26;
  sub_10028FAA8(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078, &qword_1007AF410);
  sub_100169778();
  sub_1007543A4();

  (*(v39 + 8))(v41, v42);
}

uint64_t sub_10028F3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10028F434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10028F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10028F5AC(uint64_t a1)
{
  result = sub_10028FAA8(&qword_10092FE00, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007B6500);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F604(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100749A94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  sub_1007468A4();
  sub_100749A14();
  sub_10028FAA8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v13 = sub_100754324();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_10028F878()
{
  v0 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  sub_100746944();
  sub_1007525C4();
  (*(v1 + 8))(v3, v0);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_100927558, &qword_1007AABB8);
  if (swift_dynamicCast())
  {
    sub_100012160(v7, v9);
    sub_10000C888(v9, v9[3]);
    v4 = sub_100744C74();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_10000C620(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10000C8CC(v7, &qword_100927560, &unk_1007AABC0);
    return 0;
  }

  return v5;
}

uint64_t sub_10028FA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FE08, &qword_1007B6660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028FAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5StateVwet_0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10028FC64()
{
  result = qword_10092FE10;
  if (!qword_10092FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FE10);
  }

  return result;
}

unint64_t sub_10028FCBC()
{
  result = qword_10092FE18;
  if (!qword_10092FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FE18);
  }

  return result;
}

uint64_t sub_10028FD28@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  __chkstk_darwin(v6 - 8);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750504();
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981A88);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v36 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v38 = v3[13];
  v38(v5);
  v45 = sub_100750B04();
  v58[3] = v45;
  v58[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v2;
  v57 = &protocol witness table for FontSource;
  v14 = sub_10000D134(&v55);
  v37 = v3[2];
  v43 = v3 + 2;
  v37(v14, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v44 = v3 + 1;
  v34 = v15;
  v15(v5, v2);
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v8, qword_100981AA0);
  (v11)(v5, v35, v8);
  v42 = v13;
  v16 = v13;
  v17 = v38;
  (v38)(v5, v16, v2);
  v56 = v45;
  v33 = v3 + 13;
  v31 = v8;
  v57 = &protocol witness table for StaticDimension;
  sub_10000D134(&v55);
  v30 = v12;
  v32 = v11;
  v53 = v2;
  v54 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v52);
  v19 = v37;
  v37(v18, v5, v2);
  sub_100750B14();
  v20 = v34;
  v34(v5, v2);
  (v11)(v5, v36, v8);
  (v17)(v5, v42, v2);
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v21 = v20;
  v22 = v39;
  v23.super.isa = v39;
  isa = sub_1007502F4(v23).super.isa;
  [(objc_class *)isa lineHeight];
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v49);
  v19(v25, v5, v2);
  sub_100750B14();

  v21(v5, v2);
  v32(v5, v35, v31);
  (v17)(v5, v42, v2);
  v50 = v45;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(v49);
  v26.super.isa = v22;
  v27 = sub_1007502F4(v26).super.isa;
  [(objc_class *)v27 lineHeight];
  v47 = v2;
  v48 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v46);
  v19(v28, v5, v2);
  sub_100750B14();

  v21(v5, v2);
  v47 = sub_1007507D4();
  v48 = &protocol witness table for ZeroDimension;
  sub_10000D134(v46);
  sub_1007507C4();
  return sub_100748E74();
}

char *sub_100290320(double a1, double a2, double a3, double a4)
{
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_1007469A4();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981A88);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = sub_100745C84();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = sub_100745C74();
  v51 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v18, qword_100981AA0);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = sub_100745C74();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = sub_10074F704();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v38 = v37;
  v39 = sub_100753E34();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = sub_100753DF4();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

uint64_t sub_10029095C(uint64_t a1)
{
  v3 = sub_100748E94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = sub_100745C84();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return sub_100748E44();
}

id sub_100290AC4()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100748EA4();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100748E94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_10028FD28(v15, v12);

    sub_10029095C(v12);
    v17 = [v1 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();

    sub_100748E54();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void *sub_100290DF8(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  sub_100746914();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(v12, v2 + v13, &unk_100926C40, qword_1007B9FE0);
  swift_endAccess();
  sub_10074FBB4();
  sub_100292258(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = sub_1007468B4();
  v15 = v17;
  if (v17)
  {
    sub_100016B4C(v2 + v13, v9, &unk_100926C40, qword_1007B9FE0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10000C8CC(v9, &unk_100926C40, qword_1007B9FE0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*((swift_isaMask & *v2) + 0xD8))(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_100291110()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_1002912D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_100753094();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100753094();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1002554F8(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1002554F8((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
  swift_arrayDestroy();
  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10010ABC4();
  v19 = sub_100752FF4();

  return v19;
}

id sub_1002915B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_10092FE58;
  if (!qword_10092FE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002916E8(uint64_t a1)
{
  sub_100291800(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_100291800(319, qword_1009265D0, &type metadata accessor for PageGrid);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100291800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100291854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1002918D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200, &unk_1007A5C50);
}

uint64_t sub_100291940(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100923200, &unk_1007A5C50);
  return swift_endAccess();
}

double sub_100291A90()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747B94();
  sub_10028FD28(v8, v7);

  sub_100747B84();
  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  v9 = sub_100747B94();
  sub_100748E64();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_100291CA4()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = sub_1007469A4();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_100921470 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981A88);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = sub_100745C84();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = sub_100745C74();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_100921478 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v11, qword_100981AA0);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = sub_100745C74();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = sub_10074F704();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1002920B8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_headingLabel];
  sub_10074FA84();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  sub_10074F5C4();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_descriptionLabel];
  sub_10074FAA4();
  if (v15)
  {
    v16 = sub_100753064();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

uint64_t sub_100292258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002922A0()
{
  sub_10000C4F0(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_100292308@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (sub_1007539E4())
  {

    sub_1007539D4();
    *(a3 + 24) = sub_10000C518(&qword_10092FF68, qword_1007B69C8);
    *(a3 + 32) = sub_1002923DC();
    sub_10000D134(a3);
    sub_10074D744();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1002923DC()
{
  result = qword_10092FF70;
  if (!qword_10092FF70)
  {
    sub_10000C724(&qword_10092FF68, qword_1007B69C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FF70);
  }

  return result;
}

id sub_100292440(uint64_t a1)
{
  v36[1] = *v1;
  v2 = sub_10074F704();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v5 - 8);
  v7 = v36 - v6;
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v36 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v17 = Strong;
  v36[0] = v2;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_1000E061C(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_100746994();
    v18 = sub_100741714();
    v19 = *(v9 + 8);
    v19(v11, v8);
    if (v18)
    {
      v16 = sub_1000E0A6C(v17);
      swift_unknownObjectRelease();

      v19(v14, v8);
      goto LABEL_9;
    }

    v19(v14, v8);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10000C8CC(v7, &unk_100923C00, qword_1007AB3D0);
LABEL_9:
  v2 = v36[0];
LABEL_10:
  v20 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v16}];
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension:1.0];
  v23 = [v21 fractionalHeightDimension:1.0];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v25 = v24;
  sub_1007539F4();
  v26 = v20;
  v27 = sub_100753064();

  v28 = [objc_opt_self() supplementaryItemWithLayoutSize:v25 elementKind:v27 containerAnchor:v26];

  sub_100742574();
  sub_100292C88();
  sub_1007468B4();
  if (v38)
  {
    v29 = sub_100462320();

    v30 = v29 + -10.0;
  }

  else
  {
    v30 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10074F664();
  v32 = v31;
  v34 = v33;
  (*(v37 + 8))(v4, v2);
  [v28 setContentInsets:{v30, v32 + -10.0, -10.0, v34 + -10.0}];
  [v28 setZIndex:-1];

  return v28;
}

void *sub_10029296C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = sub_100744E64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18[-1] - v10;
  sub_10000C518(&qword_100923570, &qword_1007AAB70);
  sub_1007468C4();
  if (!v19)
  {
    sub_10000C8CC(v18, &qword_100923578, &qword_1007A67F0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_10000C888(v18, v19);
  sub_10074A4F4();
  sub_10000C620(v18);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_10000C8CC(v4, &unk_100925330, &unk_1007A67B0);
    return _swiftEmptyArrayStorage;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = *(v6 + 8);
  if (v12 == enum case for ItemBackground.condensedSearch(_:))
  {
    v13(v8, v5);
    v14 = sub_100292440(a1);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007A5CF0;
    *(v15 + 32) = v14;
    v13(v11, v5);
    return v15;
  }

  v13(v11, v5);
  v13(v8, v5);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_100292C88()
{
  result = qword_100923190;
  if (!qword_100923190)
  {
    sub_100742574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923190);
  }

  return result;
}

char *sub_100292D48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v49 = swift_isaMask & *v4;
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = &v5[qword_10097ED50];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_10097ED58];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_1009817B8);
  v25 = *(v23 - 8);
  v48 = *(v25 + 16);
  v48(v20, v24, v23);
  v47 = *(v25 + 56);
  v47(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v42 = v15 + 104;
  v46 = enum case for DirectionalTextAlignment.none(_:);
  v45 = v26;
  v26(v17);
  v44 = sub_100745C84();
  v27 = objc_allocWithZone(v44);
  v43 = v14;
  v28 = sub_100745C74();
  *&v5[qword_10097ED40] = v28;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v28;
  sub_100752A74();
  sub_10000C8CC(&v53, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v55, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v30 = *(v51 + 8);
  v51 += 8;
  v30(v13, v50);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v23, qword_1009817D0);
  v48(v20, v31, v23);
  v47(v20, 0, 1, v23);
  v45(v17, v46, v43);
  v32 = objc_allocWithZone(v44);
  v33 = sub_100745C74();
  *&v5[qword_10097ED48] = v33;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v33;
  sub_100752A74();
  sub_10000C8CC(&v53, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v55, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v30(v13, v50);
  v37 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v49 + 640), v35, v36);
  v52.receiver = v5;
  v52.super_class = v37;
  v38 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v39 = [v38 contentView];
  [v39 addSubview:*&v38[qword_10097ED40]];

  v40 = [v38 contentView];
  [v40 addSubview:*&v38[qword_10097ED48]];

  return v38;
}

uint64_t sub_100293388(uint64_t result, char a2)
{
  v3 = v2 + qword_10097ED50;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1002933A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_10097ED58);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_1002933D0()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_100039CB4(v6, v0);
  }

  else
  {
    if (qword_10091FE08 != -1)
    {
      swift_once();
    }

    v8 = sub_100750B04();
    sub_10000D0FC(v8, qword_10097CA38);
    sub_1007502D4();
    sub_100750564();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_100293558()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10091FE18 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_10097CA68);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_100293698()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - v9 + 16;
  v13 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((v3 & v2) + 0x280), v11, v12);
  v39.receiver = v1;
  v39.super_class = v13;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36[0] = v16;
  v36[1] = v18;
  v37 = v20;
  v38 = v22;
  sub_100293A9C(v36);
  v23 = [v1 contentView];
  [v23 layoutMargins];
  v25 = v24;
  v27 = v26;

  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v28 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037990(v1 + v28, v10);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_10000C8CC(v10, &unk_100926C40, qword_1007B9FE0);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_10000C8CC(v10, &unk_100926C40, qword_1007B9FE0);
      v29 = [v1 traitCollection];
      sub_10074F694();
      sub_10074F694();
      [v29 layoutDirection];
      sub_1007539B4();
      v25 = v30;
      v27 = v31;

      (*(v5 + 8))(v7, v4);
    }
  }

  v36[0] = v16 + v25;
  v37 = v20 - (v27 + v25);
  v32.n128_f64[0] = sub_100293F08(v36);
  v33 = (*((swift_isaMask & *v1) + 0x338))(v36, v32);
  return (*((swift_isaMask & *v1) + 0x1A8))(v33);
}

void sub_100293A54(void *a1)
{
  v1 = a1;
  sub_100293698();
}

void sub_100293A9C(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_10097ED58])
  {
    v7 = *&v1[qword_10097ED58 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_1005F4B04();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_100037990(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_1005F6CA0(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10000C8CC(v6, &unk_100926C40, qword_1007B9FE0);
        }

        v33 = [v2 traitCollection];
        v34 = sub_1007537F4();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100037990(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_1005F7760(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10000C8CC(v6, &unk_100926C40, qword_1007B9FE0);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_100293F08(CGFloat *a1)
{
  v3 = sub_1002933D0();
  v36 = sub_100293558();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_1005F4B04();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_10097ED40];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  sub_100753B24();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_10097ED48];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  sub_100753B24();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

uint64_t sub_100294198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "prepareForReuse");
  return sub_10044F1CC(v5, &off_10086ECE8);
}

void sub_100294210(void *a1)
{
  v4 = a1;
  sub_100294198(v4, v1, v2, v3);
}

void sub_100294258(__n128 a1)
{
  sub_1005F6EC0();
  if (*(v1 + qword_10097ED58))
  {
    v2 = *(v1 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_10097ED58))
  {
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = *(v1 + qword_10097ED58 + 8);
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

id sub_1002943C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v7 = a2;
  v57 = swift_isaMask & *v4;
  v9 = sub_10074FB54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v59 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037710(v15, &v5[v19]);
  swift_endAccess();
  sub_1005F3E54(v7);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10074FA74();
    if (!v22)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v22 = sub_100753E64();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v58 = v7;
  v24 = *&v5[qword_10097ED40];
  sub_10074FB94();
  if (v25)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_10074FB74();
  v27 = sub_10074FB14();
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_10097ED48];
  v32 = v29;
  sub_10074FB84();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  v35 = v58;
  [v31 setText:v34];

  sub_10074FB74();
  v36 = sub_10074FB04();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v59;
  if (v37)
  {
    v39 = v37;
    v40 = sub_10074FA74();
    if (!v40)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v40 = sub_100753E64();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v43 layoutDirection];
  sub_1007539B4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v54 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v57 + 640), v52, v53);
  return [v5 setNeedsLayout];
}

void sub_100294930(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_10097ED58);
    if (v18 && *&v4[qword_10097ED58])
    {
      v46 = *(v16 + qword_10097ED58 + 8);
      v19 = *&v4[qword_10097ED58 + 8];
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_10097ED40;
    v25 = *&v4[qword_10097ED40];
    v26 = [*&v17[qword_10097ED40] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_10097ED48;
    v29 = *&v4[qword_10097ED48];
    v30 = [*&v17[qword_10097ED48] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

double sub_100294D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C824(a1, v9);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    v5 = sub_10074FBA4();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_10097ED58);
      if (v7)
      {
        v9[3] = sub_1007463B4();
        v9[4] = sub_100295B84();
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        sub_1007430A4();
        swift_unknownObjectRelease();

        sub_10000C620(v8);
        sub_10000C8CC(v9, &unk_1009297F0, &unk_1007AD7A0);
        return result;
      }
    }
  }

  return result;
}

double sub_100294EB8(uint64_t a1)
{
  if (*(v1 + qword_10097ED58))
  {
    v3 = *(v1 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100294F5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v7 = [v4 traitCollection];
  v8 = [v7 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v8 != result))
  {
    if (qword_10091FE10 != -1)
    {
      swift_once();
    }

    v10 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v10, qword_10097CA50);
    v11 = v4;
    sub_100743464();

    sub_100753F54();
    if (qword_10091FE20 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v10, qword_10097CA80);
    v12 = v11;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

void sub_100295130(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_100294F5C(a3, v8, v6, v7);
}

void sub_10029519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef_viewSafeAreaInsetsDidChange;
  v9 = &stru_1008F2000;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &stru_1008F2000;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef_viewSafeAreaInsetsDidChange;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[452]];
    v24 = [v22 v9[67].name];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

void sub_1002953BC()
{
  sub_1005F48BC();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_10097ED40] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100753094();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_10097ED48] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100753094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_10097ED58])
  {
    v12 = *&v0[qword_10097ED58 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_100753094();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70, &unk_1007AC470);
      sub_10010ABC4();
      sub_100752FF4();

      v31 = sub_100753064();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1002554F8(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1002554F8((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Class sub_1002956C4(void *a1)
{
  v1 = a1;
  v2 = sub_100295734();

  if (v2)
  {
    v3.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_100295734()
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016C60(0, &qword_100922300, UIView_ptr);
  *(v1 + 32) = v2;
  if (*&v0[qword_10097ED58] && (v3 = *&v0[qword_10097ED58 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_1004A0110(v7);
  return v1;
}

void sub_100295854(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1007532A4();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_1002958CC(v4, v7, v5, v6);
}

void sub_1002958CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_isaMask & *v4;
  if (a1)
  {
    v6.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v5 + 640), a3, a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", v6.super.isa);
}

uint64_t sub_100295984()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_1002959E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100295A40(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

double sub_100295B1C(uint64_t a1, __n128 a2)
{
  sub_100295B70(a1, a2);

  return result;
}

unint64_t sub_100295B84()
{
  result = qword_100930000;
  if (!qword_100930000)
  {
    sub_1007463B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930000);
  }

  return result;
}

__n128 sub_100295BDC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100295C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100295C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100295CF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100295D18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

uint64_t sub_100295D64(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = CGRectGetWidth(*&a2) * *(v5 + 56);
  v12 = v11 * *(v5 + 16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v13 = *(v5 + 64) + v11 + (CGRectGetWidth(v17) - v11) * 0.5 - v12;
  v14 = *(v5 + 32);
  v18.origin.x = v13;
  v18.origin.y = v14;
  v18.size.width = v12;
  v18.size.height = v12;
  CGRectGetMidX(v18);
  v19.origin.x = v13;
  v19.origin.y = v14;
  v19.size.width = v12;
  v19.size.height = v12;
  CGRectGetMidY(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  sub_10000C888((v5 + 72), *(v5 + 96));
  sub_100751244();
  sub_10000C888(v6 + 24, v6[27]);
  sub_100751244();
  sub_10000C888(v6 + 14, v6[17]);
  sub_100751244();
  sub_10000C888(v6 + 19, v6[22]);
  return sub_100751244();
}

__n128 sub_100295F68@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100295F84(void *a1)
{
  if (*v1 == *a1 && (sub_1007544C4() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (sub_100754754() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (sub_100754754() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_100296084(uint64_t a1, __n128 a2)
{
  sub_1007544D4();
  sub_100753174();
  sub_100753174();
  sub_100754854(*(v2 + 88));
}

uint64_t sub_1002960DC()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_100296168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView;
  *&v3[v10] = [objc_allocWithZone(sub_10000C518(&unk_10093EC20 qword_1007B6C40))];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_objectGraph] = a2;
  v11 = *(sub_10000C518(&qword_1009262D8, &unk_1007A99A0) + 48);
  *v9 = 1;
  v12 = sub_100742A34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v40 = a1;
  v14(&v9[v11], a1, v12);
  (*(v13 + 56))(&v9[v11], 0, 1, v12);
  swift_storeEnumTagMultiPayload();

  sub_10050A2DC(v15);
  v17 = v16;
  sub_10007A554(v9);
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor:v20];

  v21 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesButton(0));

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton] = sub_100555D88(v22);
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = sub_10074F3E4();
  v41[3] = v24;
  v41[4] = sub_1002968B4();
  v25 = sub_10000D134(v41);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_see_all_games_uplift_navigation_bar_Future(_:), v24);
  v26 = v23;
  LOBYTE(v23) = sub_10074FC74();
  sub_10000C620(v41);
  if (v23)
  {
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_seeAllGamesButton]];
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_stackView] addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton]];
  v29 = *&v26[v27];
  *&v29[qword_10093A0F0] = 0;
  [v29 setNeedsLayout];
  v30 = *&v26[v27];
  *&v30[qword_10093A0F8] = 3;
  [v30 setNeedsLayout];
  v31 = *&v26[v27];
  *&v31[qword_10093A100] = 0x4034000000000000;
  [v31 setNeedsLayout];
  v32 = *&v26[v27];
  v33 = v26;
  [v33 addSubview:v32];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v34 = swift_allocObject();
  v39 = xmmword_1007A5A00;
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_1007519E4();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D24();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = v39;
  *(v35 + 32) = sub_1007516F4();
  *(v35 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753D24();
  swift_unknownObjectRelease();

  v36 = *&v26[v28];
  v37 = [v33 traitCollection];
  LOBYTE(v35) = sub_1007537B4();

  [v36 setHidden:v35 & 1];

  (*(v13 + 8))(v40, v12);

  return v33;
}

unint64_t sub_1002968B4()
{
  result = qword_100926D40;
  if (!qword_100926D40)
  {
    sub_10074F3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926D40);
  }

  return result;
}

double sub_100296994()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = *((v2 & v1) + 0x3E0);
  v8 = *((v2 & v1) + 0x408);
  v9 = sub_1007450A4();
  v10 = [v0 collectionView];
  [v10 reloadData];

  v11 = *((v2 & v1) + 0x3F8);
  if (sub_100748C04())
  {
    sub_100746BF4();
  }

  v12 = sub_10029AA28();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 2) = v7;
    *(v15 + 3) = v3[125];
    *(v15 + 4) = v3[126];
    *(v15 + 5) = v11;
    *(v15 + 6) = v3[128];
    *(v15 + 7) = v8;
    *(v15 + 8) = v14;
    v16 = &v13[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v17 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v18 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v16 = sub_10029CBA8;
    v16[1] = v15;

    sub_1000164A8(v17, v18);
  }

  v19 = sub_10029AA28();
  v20 = sub_1007416B4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_1005E5678(v6);

  sub_10000C8CC(v6, &qword_10092AB88, qword_1007B6E20);
  sub_100748BF4();

  return result;
}

void sub_100296C50(uint64_t a1, uint64_t a2)
{
  v3 = sub_100741454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_100930170))
  {

    sub_100741444();
    sub_1007456D4();

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100296D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100741454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742964();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v3 + v12, v16);
  if (v17)
  {
    sub_10000C824(v16, v15);
    sub_10000C8CC(v16, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v15, v15[3]);
    (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v8);
    sub_100742974();
    (*(v9 + 8))(v11, v8);
    result = sub_10000C620(v15);
  }

  else
  {
    result = sub_10000C8CC(v16, &unk_100930240, qword_1007A56E0);
  }

  if (*(v3 + qword_100930170))
  {

    sub_100741444();
    sub_1007456C4();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_100296FB0(uint64_t a1)
{
  *(v1 + qword_100930170) = a1;

  return result;
}

uint64_t sub_100296FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_10074E994();
  v14 = sub_10034E47C();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (sub_100745064())
    {
      v25 = sub_1005E5ABC(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = sub_10074E9C4();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_1005D5EE4(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

void *sub_10029742C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_1007457B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v11 = (*(v1 + 1240))(v7);
  v12 = sub_10017C0B8(v11);
  if (v12)
  {
    v13 = v12;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v10 = v35;
  }

  v14 = sub_1005D8C3C(v0);
  if (v14)
  {
    v15 = v14;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v10 = v35;
  }

  if (sub_1007450A4() < 1)
  {
    goto LABEL_14;
  }

  sub_100745074();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v16 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
  v17 = sub_100748E34();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_100753064();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v9 = v23;
  sub_100753284();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_100753344();

    v10 = v35;
LABEL_14:
    if (sub_1007450A4() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_1007450A4(), 1))
    {
      sub_100745074();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v24 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
        v25 = sub_100748E34();
        (*(*(v25 - 8) + 8))(v5 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_100753064();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        return v35;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    sub_100753304();
  }

  return v10;
}

void sub_100297B04(__n128 a1)
{
  v1 = sub_10029AA28();
  if (v1)
  {
    v5 = v1;
    v2 = [v5 configuration];
    sub_100016C60(0, &unk_100930230, UICollectionViewCompositionalLayoutConfiguration_ptr);
    v3 = sub_100754244();

    sub_10029742C();
    sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_100753294().super.isa;

    [v3 setBoundarySupplementaryItems:isa];

    [v5 setConfiguration:v3];
  }
}

void sub_100297C20()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();

        sub_100599B24();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100297D34(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_1005E5B78(a1, v3);

  sub_100297B04(v4);
}

uint64_t sub_100297DEC(uint64_t a1)
{
  v3 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_10000C518(&unk_1009405F0, &qword_1007A6410);
    v12 = sub_1007417F4();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007A5A00;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = sub_100753294().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_10029AA28();
  v18 = sub_1007416B4();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1005E5678(v6);

  return sub_10000C8CC(v6, &qword_10092AB88, qword_1007B6E20);
}

void sub_100298040(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v27 = swift_isaMask & *v1;
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = v5;
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v25 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_10029AA28();
  v14 = *(v4 + 16);
  v15 = v28;
  v14(v9, v28, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_1005E5678(v9);

  sub_10000C8CC(v9, &qword_10092AB88, qword_1007B6E20);
  v16 = objc_opt_self();
  v17 = v26;
  v14(v26, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = *(v27 + 992);
  *(v19 + 32) = *(v20 + 1008);
  *(v19 + 40) = *(v20 + 1016);
  *(v19 + 56) = *(v20 + 1032);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10029CEDC;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1000C0C28;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_10086F128;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1002983FC(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x3E0);
  v5 = *(v3 + 0x408);
  if (sub_1007450A4())
  {
    if (qword_100921ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_100983300);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    v26 = v4;
    v27 = *(v3 + 1000);
    v28 = *(v3 + 1016);
    v29 = v5;
    *&v28 = type metadata accessor for BaseShelfViewController(0, &v26);
    v26 = v1;
    v7 = v1;
    sub_100752424();
    sub_10000C8CC(&v26, &unk_100923520, &qword_1007A5A70);
    sub_1007523A4();
    swift_getErrorValue();
    *&v28 = v25;
    v8 = sub_10000D134(&v26);
    (*(*(v25 - 8) + 16))(v8);
    sub_100752444();
    sub_10000C8CC(&v26, &unk_100923520, &qword_1007A5A70);
    sub_100752D04();
  }

  else
  {
    sub_100751094();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v9 = sub_100751054();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    v12 = v9;
    sub_10074B974();

    v13 = *&v2[v10];
    *&v2[v10] = v9;
    v24 = v12;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v26 = v17;
      *&v27 = v19;
      *(&v27 + 1) = v21;
      *&v28 = v23;
      BYTE8(v28) = 0;
      sub_10074B964();

      sub_100599B24();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002987F4()
{
  v1 = [v0 collectionView];
  sub_1005E5F88();

  sub_100297B04(v2);
}

void sub_10029885C()
{
  v1 = [v0 collectionView];
  sub_1005D61E0(v1);

  sub_100297B04(v2);
}

double sub_1002988C4(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v3 = sub_100752E44();
  sub_10000D0FC(v3, qword_100983300);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  v4 = v2[63];
  v9 = v2[62];
  v10 = v4;
  v11 = v2[64];
  *(&v10 + 1) = type metadata accessor for BaseShelfViewController(0, &v9);
  *&v9 = v1;
  v5 = v1;
  sub_100752424();
  sub_10000C8CC(&v9, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  swift_getErrorValue();
  *(&v10 + 1) = v8;
  v6 = sub_10000D134(&v9);
  (*(*(v8 - 8) + 16))(v6);
  sub_100752444();
  sub_10000C8CC(&v9, &unk_100923520, &qword_1007A5A70);
  sub_100752D04();

  return result;
}

uint64_t sub_100298B28(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_100298C78(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    sub_100745704();
    swift_allocObject();

    *(v1 + qword_100930170) = sub_1007456F4();

    if (!*(v1 + qword_100930170))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 992);
    *(v5 + 32) = *(v2 + 1008);
    *(v5 + 40) = *(v2 + 1016);
    *(v5 + 56) = *(v2 + 1032);
    *(v5 + 64) = v4;

    sub_1007456A4();
  }

  else
  {
    *(v1 + qword_100930170) = 0;
  }

  return result;
}

uint64_t sub_100298DF8()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = sub_1007521E4();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100752244();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_100930138);
  swift_unknownObjectRetain();
  sub_100746BD4();
  v13 = *((v2 & v1) + 0x3E0);
  v14 = *((v2 & v1) + 0x3E8);
  sub_1007474D4();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_100930140) + 112))
  {

    sub_100749574();
  }

  sub_10029C698();
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v25 = sub_100753774();
  sub_100752234();
  sub_100746BE4();
  sub_1007522B4();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1008);
  *(v17 + 40) = *(v18 + 1016);
  *(v17 + 56) = *(v18 + 1032);
  *(v17 + 64) = v16;
  aBlock[4] = sub_10029CD88;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086F088;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10029CD9C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750, &qword_1007A6920);
  v21 = v32;
  v22 = v34;
  sub_1007543A4();
  v23 = v25;
  sub_100753734();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_1002992DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask & *v0;
  v4 = *(v3 + 0x3F0);
  v5 = *((swift_isaMask & v2) + 0x408);
  v23 = *(v3 + 992);
  v24 = v23;
  v25 = v4;
  v22 = *(v3 + 1016);
  v26 = v22;
  v27 = v5;
  v6 = type metadata accessor for BaseShelfViewController(0, &v24);
  v28.receiver = v1;
  v28.super_class = v6;
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v7 = *&v1[qword_100930168];
  if (v7)
  {
    sub_100016C60(0, &qword_100930228, UIContextMenuInteraction_ptr);
    type metadata accessor for FlowPreviewing(0, v23, v4, v8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v7;
    v11 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v10];
    v12 = [v1 collectionView];
    if (!v12)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 addInteraction:v11];
  }

  v14 = [v1 collectionView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = sub_100299550();
  [v15 setCollectionViewLayout:v16];

  sub_100747CC4();
  v17 = [v1 collectionView];
  if (v17)
  {
    v18 = v17;
    [v17 setAlwaysBounceVertical:1];
  }

  v19 = [v1 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 setPrefetchDataSource:v1];
  }

  v21 = [v1 collectionView];
  sub_1002C2870(v21);
}

id sub_100299550()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_10029742C();
  sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = sub_100753294().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v6 = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 992);
  *(v8 + 32) = *((v2 & v1) + 0x3F0);
  *(v8 + 40) = *(v3 + 1016);
  *(v8 + 56) = *((v2 & v1) + 0x408);
  *(v8 + 64) = v7;
  v9 = objc_allocWithZone(v6);
  v13[4] = sub_10029CD54;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002B6430;
  v13[3] = &unk_10086F038;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithSectionProvider:v10 configuration:v4];

  _Block_release(v10);

  return v11;
}

void sub_100299774(void *a1)
{
  v1 = a1;
  sub_1002992DC();
}

double sub_1002997BC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x3F0);
  v3 = *(v1 + 0x408);
  v6 = *(v1 + 0x3E0);
  v7 = v2;
  v8 = *(v1 + 1016);
  v9 = v3;
  v4 = type metadata accessor for BaseShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewDidBecomeFullyVisible");
  if (*(*(v0 + qword_100930140) + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100748C44();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  return result;
}

void sub_100299928(void *a1)
{
  v1 = a1;
  sub_1002997BC();
}

id sub_100299970(uint64_t a1, uint64_t a2)
{
  v3 = (swift_isaMask & *v2);
  v4 = sub_100741454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[63];
  v11[0] = v3[62];
  v11[1] = v8;
  v11[2] = v3[64];
  v9 = type metadata accessor for BaseShelfViewController(0, v11);
  v12.receiver = v2;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible");
  if (*(v2 + qword_100930170))
  {

    sub_100741444();
    sub_1007456B4();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_100299ACC(void *a1)
{
  v2 = a1;
  sub_100299970(v2, v1);
}

id sub_100299B14(char a1, uint64_t a2)
{
  v4 = (swift_isaMask & *v2);
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[63];
  v12[0] = v4[62];
  v12[1] = v9;
  v12[2] = v4[64];
  v10 = type metadata accessor for BaseShelfViewController(0, v12);
  v13.receiver = v2;
  v13.super_class = v10;
  result = objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  if (*(v2 + qword_100930170))
  {

    sub_100741444();
    sub_1007456B4();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_100299C78(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100299B14(a3, v4);
}

void sub_100299CCC(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v3;
  v8 = sub_100741454();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v6 & v5) + 0x3F0);
  v13 = *((v6 & v5) + 0x408);
  v16 = *(v7 + 992);
  v17 = v16;
  v18 = v12;
  v15 = *(v7 + 1016);
  v19 = v15;
  v20 = v13;
  v14 = type metadata accessor for BaseShelfViewController(0, &v17);
  v21.receiver = v3;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  if (sub_100748C04())
  {
    sub_100741444();
    sub_100741424();
    (*(v9 + 8))(v11, v8);
    sub_100746C04();
  }

  if (*(*(v3 + qword_100930140) + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100748C44();
  sub_100745544();
}

void sub_100299F20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100299CCC(a3, v4);
}

void sub_100299F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = (swift_isaMask & *v2);
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[63];
  v11[0] = v4[62];
  v11[1] = v9;
  v11[2] = v4[64];
  v10 = type metadata accessor for BaseShelfViewController(0, v11);
  v12.receiver = v3;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  if (*(*&v3[qword_100930140] + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  if (*&v3[qword_100930170])
  {

    sub_100741444();
    sub_1007456E4();

    (*(v6 + 8))(v8, v5);
  }
}

void sub_10029A148(void *a1)
{
  v2 = a1;
  sub_100299F74(v2, v1);
}

void sub_10029A190(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v3;
  v8 = sub_100741454();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752BC4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10000C518(&qword_100930220, &unk_1007BD870);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = *((v6 & v5) + 0x3F0);
  v17 = *((v6 & v5) + 0x408);
  v22 = *(v7 + 992);
  v23 = v22;
  v24 = v16;
  v21 = *(v7 + 1016);
  v25 = v21;
  v26 = v17;
  v18 = type metadata accessor for BaseShelfViewController(0, &v23);
  v27.receiver = v3;
  v27.super_class = v18;
  objc_msgSendSuper2(&v27, "viewWillDisappear:", a1 & 1);
  if (sub_100748C04())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v9 + 8))(v11, v8);
    sub_100746C24();
    v19 = sub_100746C34();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    sub_100746C14();
  }

  if (*(v3 + qword_100930158) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v20 = v23;
    sub_10074B0D4();
  }

  if (*(*(v3 + qword_100930140) + 112))
  {

    sub_1007495A4();
  }

  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  if (*(v3 + qword_100930170))
  {

    sub_100741444();
    sub_1007456E4();

    (*(v9 + 8))(v11, v8);
  }
}

void sub_10029A570(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10029A190(a3, v4);
}

void sub_10029A5C4()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[63];
  v5[0] = v1[62];
  v5[1] = v2;
  v5[2] = v1[64];
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_100930158) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v4 = *&v5[0];
    sub_10074B0D4();
  }
}

void sub_10029A6A8(void *a1)
{
  v1 = a1;
  sub_10029A5C4();
}

void sub_10029A6F0(uint64_t a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3[63];
  v8[0] = v3[62];
  v8[1] = v4;
  v8[2] = v3[64];
  v5 = type metadata accessor for BaseShelfViewController(0, v8);
  v9.receiver = v1;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    sub_100297B04(v6);
    v7 = [v1 collectionView];
    sub_1005E60B0(v7);
  }
}

void sub_10029A7D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10029A6F0(a3);
}

void sub_10029A844(uint64_t a1, double a2, double a3)
{
  v7 = (swift_isaMask & *v3);
  v8 = v7[63];
  v17[0] = v7[62];
  v17[1] = v8;
  v17[2] = v7[64];
  v9 = type metadata accessor for BaseShelfViewController(0, v17);
  v18.receiver = v3;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v10 = [v3 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v16.receiver = v12;
    v16.super_class = v11;
    v14 = objc_msgSendSuper2(&v16, "init");
    v15 = [v3 collectionView];
    sub_1005E60F0(v15);
  }
}

void sub_10029A9A8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10029A844(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_10029AA28()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    result = 0;
    if (v3)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_10029AAA4(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        v11 = sub_100745154();
        sub_100296FC8(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_10029AC58(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1007417F4();
  v6 = sub_1007532A4();
  v7 = a3;
  v8 = a1;
  sub_10029C4C4(v6);

  return result;
}

id sub_10029ACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;

  v6 = v5;
  result = [v6 collectionView];
  if (result)
  {
    v8 = result;
    v9 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];

    v10 = sub_1005D6620(a1, v8, v6, v9);

    return v10;
  }

  __break(1u);
  return result;
}

double sub_10029ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_100725158();
    sub_10029AAA4(v8);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v11 = v9;
    swift_unknownObjectRetain();

    v12 = sub_100748C04();
    swift_unknownObjectRelease();
    if (v12)
    {
      sub_100746BF4();
    }
  }

  return result;
}

void sub_10029AEB8(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v3 = v1;
    sub_100741674(v2);
    v5 = v4;
    [v3 reloadSections:v4];
  }
}

void sub_10029AF40(void *a1, uint64_t a2)
{
  v4 = sub_1007416B4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 collectionView];
  if (v9)
  {
    v10 = v9;
    sub_10000C518(&qword_1009253E0, &qword_1007A6970);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5A00;
    *(v11 + 32) = a2;
    v15[1] = v11;
    sub_10029CD9C(&qword_100930200, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_10000C518(&qword_100930208, &qword_1007B6E18);
    sub_1000D83A4(&unk_100930210, &qword_100930208, &qword_1007B6E18);
    sub_1007543A4();
    sub_100741674(v12);
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    [v10 reloadSections:v14];
  }
}

void sub_10029B11C(void *a1)
{
  v1 = a1;
  sub_1002987F4();
}

void sub_10029B164(void *a1)
{
  v1 = a1;
  sub_10029885C();
}

void sub_10029B1AC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_1002988C4(v5);
}

uint64_t sub_10029B204(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_10029CC20();

  return v6;
}

uint64_t sub_10029B250(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_10029CC4C(a4);

  return v8;
}

void sub_10029B2A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100298DF8();
  }
}

double sub_10029B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_unknownObjectRetain();

    sub_100747CB4();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10029B390(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  LOBYTE(a5) = sub_10029CBC0(a5);

  return a5 & 1;
}

double sub_10029B3FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_10029CBF0(a5);

  return v11;
}

id sub_10029B4D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a3;
  v15 = a1;
  v16 = sub_10029B490(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

uint64_t sub_10029B610(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100753094();
  v15 = v14;
  sub_100741744();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_10029CC78(v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

id sub_10029B788(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = a1;
  v12 = sub_10029B750(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

uint64_t sub_10029B8FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_10029B89C(v12, v13, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10029BA14(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100741744();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_10029CD04(v13, v11);

  return (*(v9 + 8))(v11, v8);
}

BOOL sub_10029BB28(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = a1;
  isa = sub_100741704().super.isa;
  v13 = [v10 cellForItemAtIndexPath:isa];

  if (v13)
  {
    swift_getObjectType();
    v14 = swift_conformsToProtocol2() == 0;

    v10 = v11;
    v11 = v13;
  }

  else
  {
    v14 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_10029BCD8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a3;
  v11 = a1;
  sub_10029BC90(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_10029BDF0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BDD4(v4);
}

void sub_10029BE74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BE58(v4);
}

id sub_10029BEDC(uint64_t a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3[63];
  v7[0] = v3[62];
  v7[1] = v4;
  v7[2] = v3[64];
  v5 = type metadata accessor for BaseShelfViewController(0, v7);
  v8.receiver = v1;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "scrollViewDidScroll:", a1);
  return [*(v1 + qword_100930148) scrollViewDidScroll:a1];
}

void sub_10029BF8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BEDC(v4);
}

void sub_10029C010(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10029BFF4(v4);
}

void sub_10029C09C(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_10029C078(v6, a4);
}

void sub_10029C10C(void *a1)
{
  v2 = a1;
  sub_100296C50(v2, v1);
}

void sub_10029C154(void *a1)
{
  v2 = a1;
  sub_100296D38(v2, v1);
}

double sub_10029C19C()
{
  swift_unknownObjectRelease();

  return result;
}

id sub_10029C22C()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[63];
  v5[0] = v1[62];
  v5[1] = v2;
  v5[2] = v1[64];
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_10029C2AC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_10029C450(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100753494();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001A7328(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

double sub_10029C4C4(uint64_t a1)
{
  v22 = sub_1007417F4();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v19[1] = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_10001E5D4(0, v6, 0);
    v7 = v23;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v20 = *(v8 + 56);
    v21 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v22;
      v13 = v8;
      v21(v5, v10, v22);
      v14 = sub_100741784();
      (*v11)(v5, v12);
      v23 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_10001E5D4((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      v7[2] = v16 + 1;
      v7[v16 + 4] = v14;
      v10 += v20;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  v17 = sub_10029C450(v7);

  sub_10029AAA4(v17);

  return result;
}

void sub_10029C698()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007450A4();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (!v3)
  {
    if (v5)
    {
      sub_100750FC4();
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    sub_100748BF4();
    sub_100750F94();
    v10 = objc_allocWithZone(sub_100750FC4());
    v11 = sub_100750FB4();
    v12 = *&v1[v4];
    v13 = v11;
    sub_10074B974();

    v14 = *&v1[v4];
    *&v1[v4] = v11;
    v15 = v13;

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];

      sub_10074B964();
      sub_100599B24();

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_10074B974();

  v7 = *&v1[v4];
  *&v1[v4] = 0;

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 bounds];

  sub_10074B964();

  sub_100599B24();
}

void sub_10029C96C(void *a1)
{
  if (a1)
  {
    v2 = [a1 integerValue];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10029CB18;
    *(v5 + 24) = v4;
    v9[4] = sub_100045E0C;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10011B528;
    v9[3] = &unk_10086EF98;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_10029CAE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10029CB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10029CB38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029CB70()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10029CC78(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_100741794() < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_100741784();
  }

  sub_1005DD194(a1, a2, a3, v7, v3, *&v3[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
}

uint64_t sub_10029CD9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10029CE18()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10029CEDC()
{
  sub_1007416B4();
  v1 = *(v0 + 64);

  sub_10029AEB8(v1);
}

uint64_t sub_10029CF78(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

char *sub_10029CF88(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_1007433C4();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_10029D6F8();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_100920850;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10029F304();
  sub_10074F4B4();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_100055DA8(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_100920858;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_10074F4B4();
  v24 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055DA8(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_1009204F8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_10074F0C4();
  v28 = sub_10000D0FC(v27, qword_10097E2A8);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  sub_100743374();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_1005A3470([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  sub_10000D198();
  v36 = v35;
  v37 = sub_100753DF4();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  sub_100753094();
  v48 = sub_100753064();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_10029D6F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_1000F744C(&off_100861958);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10029D820()
{
  v1 = v0;
  v2 = sub_1007479B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (sub_100753804())
  {
    v12 = &xmmword_10097F540;
  }

  else
  {
    v12 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v12, v27);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF58;
  }

  v14 = sub_10000D0FC(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_100055D54(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  sub_100743314();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

void sub_10029DBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v105 = sub_10074F284();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = &v89 - v9;
  v11 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v11 - 8);
  v103 = &v89 - v12;
  v13 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v13 - 8);
  v102 = &v89 - v14;
  v15 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v15 - 8);
  v101 = &v89 - v16;
  v17 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v17 - 8);
  v100 = &v89 - v18;
  v19 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v19 - 8);
  v21 = &v89 - v20;
  v22 = sub_10074D734();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v98 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v25 - 8);
  v99 = &v89 - v26;
  v27 = sub_10074F314();
  __chkstk_darwin(v27 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007442C4();
  sub_100752764();
  v104 = a3;
  sub_100752D34();
  v107 = a1;
  v108 = v109[0];
  v30 = sub_10074E144();
  if (v30)
  {
    v31 = v30;
    v90 = v10;
    v32 = [v3 traitCollection];
    sub_10029EB54(v106, v32);

    v33 = sub_10074F374();
    v34 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    sub_10074F324();
    v93 = v29;
    sub_100743364();
    [v34 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    v106 = v31;
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    [v34 setContentMode:2];
    v35 = sub_1007433C4();
    v36 = sub_10029F358(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v94 = v33;
    v91 = v36;
    v92 = v35;
    sub_100744204();
    v95 = v4;
    v37 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = sub_10074E154();
    v39 = *(v23 + 104);
    v39(v98, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_10029F358(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v40 = v99;
    sub_10074A9C4();
    v41 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_100742E24();
    v43 = v100;
    (*(*(v42 - 8) + 56))(v100, 1, 1, v42);
    v44 = sub_100745E94();
    v45 = v101;
    (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
    v46 = sub_10074F8B4();
    v47 = v102;
    (*(*(v46 - 8) + 56))(v102, 1, 1, v46);
    v48 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v49 = v103;
    (*(*(v48 - 8) + 56))(v103, 1, 1, v48);
    sub_100656038(v38, v37, v40, v104, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1002F3D3C();
    [v37 setNeedsLayout];
    sub_1002F3D3C();

    sub_10000C8CC(v49, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v47, &unk_100925520, &unk_1007A8120);
    sub_10000C8CC(v45, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v43, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v40, &unk_100925540, &qword_1007A8140);
    v50 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_100920F28;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_100750534();
        v63 = sub_10000D0FC(v62, qword_100980AC8);
        v64 = *(v62 - 8);
        v65 = v90;
        (*(v64 + 16))(v90, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_100745BA4();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = sub_10074F1E4();
    if (v67)
    {
      v68 = v67;
      v69 = sub_100753EE4();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v105;
    v72 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    sub_100743224();

    sub_10074E154();
    v80 = sub_10074EF24();

    if (v80)
    {
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      sub_10029F304();
      sub_10074F4B4();
      sub_100055D54(v109);
      v81 = v96;
      sub_10074F294();
      sub_10074F254();
      (*(v97 + 8))(v81, v71);
      sub_10074F374();
      v82 = *&v37[v72];
      sub_10074F324();
      sub_100743364();
      [v82 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      sub_100744204();
    }

    v4 = v95;
  }

  v84 = sub_10029D6F8();
  v85 = [v4 backgroundColor];
  v86 = sub_1000F86DC(v85);
  v88 = v87;

  sub_1000F6CC8(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_10029EA54(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10029EB54(uint64_t a1, void *a2)
{
  v3 = sub_1007479B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  sub_10074F5A4();
  v11 = v10;
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_10029F304();
  sub_10074F4B4();
  if (qword_100920858 != -1)
  {
    swift_once();
  }

  sub_10074F4B4();
  if (sub_100753804())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_100055CF8(v12, v20);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF58;
  }

  v14 = sub_10000D0FC(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_100055D54(v20);
  sub_100055D54(v24);
  sub_100055D54(v25);
  return v11;
}

void sub_10029EE94()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_1007433C4();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100754644();
  __break(1u);
}

void sub_10029EF5C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E164();
  sub_10029F358(&qword_100930290, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground, &protocol conformance descriptor for MediumAdLockupWithAlignedRegionBackground);
  sub_1007468B4();
  if (v10)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5A4();
    v4 = *(v1 + 8);
    v4(v3, v0);
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    v5 = v10;
    sub_10029EB54(v3, v10);

    v4(v3, v0);
    v6 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage;
    if (sub_10074E144())
    {
      sub_10074F374();
      sub_100753284();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v6 = v11;
    }

    sub_10074E154();
    v7 = sub_10074EF24();

    if (v7)
    {
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      sub_10029F304();
      sub_10074F4B4();
      sub_100055D54(&v10);
      sub_10074F374();

      sub_100753284();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v6 = v11;
    }

    v8._rawValue = v6;
    sub_100744224(v8);
  }
}

unint64_t sub_10029F304()
{
  result = qword_100930298;
  if (!qword_100930298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930298);
  }

  return result;
}

uint64_t sub_10029F358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10029F49C(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView];
  [v1 bounds];
  [v2 sizeThatFits:{CGRectGetWidth(v11), 1.79769313e308}];
  v4 = v3;
  v6 = v5;
  [v1 bounds];
  Width = CGRectGetWidth(v12);
  if (Width < v4)
  {
    v4 = Width;
  }

  [v1 bounds];
  v8 = CGRectGetMidX(v13) - v4 * 0.5;
  [v1 bounds];
  return [v2 setFrame:{v8, CGRectGetMidY(v14) - v6 * 0.5, v4, v6}];
}

id sub_10029F628(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10029F690(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5CF0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100751044();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_10029F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t, uint64_t)@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v57 = a3;
  v50 = a2;
  v49 = sub_100746CC4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100745FF4();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100754724();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v53 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100750B04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009207C0 != -1)
  {
    swift_once();
  }

  v20 = sub_100746D34();
  v21 = sub_10000D0FC(v20, qword_10097ED68);
  v22 = *(*(v20 - 8) + 16);
  v54 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (sub_10074F1A4())
  {
    if (qword_1009207B0 != -1)
    {
      swift_once();
    }

    v23 = qword_1009302D8;
    if (sub_10074F1D4())
    {
      v24 = sub_100743AC4();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((sub_10074F1C4() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_10056028C(v25, a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v26 = v54;
    sub_100746D24();
    sub_100753F34();
    sub_100746C84();
    v27 = v26;

    v28 = v53;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_100921250 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100981428);
  (*(*(v29 - 8) + 16))(v15, v30, v29);
  v28 = v53;
  v53[13](v15, enum case for FontSource.useCase(_:), v13);
  v62 = v13;
  v63 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v61);
  (v28)[2](v31, v15, v13);
  sub_100750B14();
  (v28[1])(v15, v13);
  sub_1007502D4();
  sub_100750564();
  v55[1](v12, v56);
  v27 = v54;
  sub_100746D24();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v32 = v51;
  v33 = v52;
  (*(v51 + 16))(v9, v50, v52);
  v34 = (*(v32 + 88))(v9, v33);
  if (v34 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_1002A3144(v27, v57);
  }

  if (v34 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v34 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v62 = &type metadata for Double;
    v63 = &protocol witness table for Double;
    v61[0] = 0;
    sub_100746CD4();
    if (qword_100921710 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v16, qword_1009820B0);
    sub_1007502D4();
    sub_100750564();
    v37 = v36;
    v55[1](v12, v56);
    v62 = &type metadata for CGFloat;
    v63 = &protocol witness table for CGFloat;
    v61[0] = v37;
    sub_100746D04();
    (*(v48 + 104))(v47, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v49);
    sub_100746CF4();
    if (qword_1009207A8 != -1)
    {
      swift_once();
    }

    v38 = qword_1009302D0;
    *v15 = qword_1009302D0;
    v57 = v28[13];
    (v57)(v15, enum case for FontSource.textStyle(_:), v13);
    v62 = v16;
    v63 = &protocol witness table for StaticDimension;
    sub_10000D134(v61);
    v59 = v13;
    v60 = &protocol witness table for FontSource;
    v39 = sub_10000D134(v58);
    v56 = v28[2];
    v56(v39, v15, v13);
    v40 = v38;
    sub_100750B14();
    v55 = v28[1];
    (v55)(v15, v13);
    sub_100746C94();
    if (qword_100921260 != -1)
    {
      swift_once();
    }

    v41 = sub_100750534();
    v42 = sub_10000D0FC(v41, qword_100981458);
    v54 = *(*(v41 - 8) + 16);
    v54(v15, v42, v41);
    v43 = enum case for FontSource.useCase(_:);
    (v57)(v15, enum case for FontSource.useCase(_:), v13);
    v62 = v16;
    v63 = &protocol witness table for StaticDimension;
    sub_10000D134(v61);
    v53 = v16;
    v59 = v13;
    v60 = &protocol witness table for FontSource;
    v44 = sub_10000D134(v58);
    v56(v44, v15, v13);
    sub_100750B14();
    (v55)(v15, v13);
    sub_100746CA4();
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    v45 = sub_10000D0FC(v41, qword_100981470);
    v54(v15, v45, v41);
    (v57)(v15, v43, v13);
    v62 = v53;
    v63 = &protocol witness table for StaticDimension;
    sub_10000D134(v61);
    v59 = v13;
    v60 = &protocol witness table for FontSource;
    v46 = sub_10000D134(v58);
    v56(v46, v15, v13);
    sub_100750B14();
    (v55)(v15, v13);
    return sub_100746CB4();
  }

  else
  {
    sub_1002A3144(v27, v57);
    return (*(v32 + 8))(v9, v33);
  }
}

void sub_1002A0224()
{
  if (qword_1009207A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1009302D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_1009302D8 = v3;
}

void sub_1002A02BC()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_1009302E0 = sub_100753EC4(v3, v2).super.isa;
}

uint64_t sub_1002A0350()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100746CC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100746D34();
  sub_100039C50(v8, qword_10097ED68);
  v33 = sub_10000D0FC(v8, qword_10097ED68);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_1009207A8 != -1)
  {
    swift_once();
  }

  v10 = qword_1009302D0;
  *v3 = qword_1009302D0;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = sub_100750B04();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  sub_100750B14();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_100921258 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100981440);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v61);
  v37(v20, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  if (qword_100921268 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v16, qword_100981470);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_10000D134(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  sub_100750B14();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  sub_100750B14();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return sub_100746CE4();
}

id sub_1002A0934()
{
  v1 = v0;
  v25 = sub_10074AB44();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100745FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v23[-v11];
  v13 = [v0 traitCollection];
  v14 = sub_100753804();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    v16.n128_f64[0] = (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_1002A3A68(v16);
    sub_100753274();
    sub_100753274();
    if (v28 == v26 && v29 == v27)
    {
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);
    }

    else
    {
      v24 = sub_100754754();
      v18 = *(v6 + 8);
      v18(v8, v5);
      v18(v12, v5);

      if ((v24 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v19 = enum case for DirectionalTextAlignment.leading(_:);
  v20 = *(v2 + 104);
  v21 = v25;
  v20(v4, enum case for DirectionalTextAlignment.leading(_:), v25);
  sub_100745BF4();
  v20(v4, v19, v21);
  sub_100745BF4();
  return [v1 setNeedsLayout];
}