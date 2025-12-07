uint64_t sub_223290(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_2234B4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_762760();
  __chkstk_darwin(v8 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762780();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_762D10();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FBE0();
  v15 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v47 = sub_7666D0();
  sub_BE38(v47, qword_99FA48);
  v16 = [a6 traitCollection];
  sub_769E10();

  v17 = sub_7653B0();
  v66[3] = v17;
  v46 = sub_223CF0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v66[4] = v46;
  v18 = sub_B1B4(v66);
  v19 = *(v17 - 8);
  v20 = *(v19 + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = v19 + 104;
  v44 = v20;
  v20(v18);
  sub_765C30();
  sub_BEB8(v66);
  sub_762D00();
  sub_762CE0();
  v42 = v15;
  v21 = *(v48 + 8);
  v21(v14, v49);
  sub_75FBF0();
  v48 = a1;
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v47, qword_99FA60);
  v22 = [a6 traitCollection];
  sub_769E10();

  v65[3] = v17;
  v65[4] = v46;
  v23 = sub_B1B4(v65);
  v44(v23, v45, v17);
  sub_765C30();
  sub_BEB8(v65);
  sub_762D00();
  sub_762CE0();
  v21(v14, v49);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v47, qword_99FA78);
  v24 = [a6 traitCollection];
  sub_769E10();

  v64[3] = v17;
  v64[4] = v46;
  v25 = sub_B1B4(v64);
  v44(v25, v45, v17);
  sub_765C30();
  sub_BEB8(v64);
  sub_762D00();
  sub_762CE0();
  v21(v14, v49);
  v26 = sub_7670D0();
  swift_allocObject();
  v27 = sub_7670A0();
  v28 = swift_allocObject();
  v28[2] = v48;
  v28[3] = a6;
  v28[4] = v37[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v29 = sub_767090();
  sub_48E270(a6, v38);
  v63 = 0;
  *&v61[40] = 0u;
  v62 = 0u;
  sub_134D8(v66, v61);
  sub_134D8(v65, &v60);
  sub_134D8(v64, &v59);
  v57 = v26;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v27;

  v30 = [a6 traitCollection];
  sub_767500();

  swift_allocObject();
  v31 = sub_7670B0();
  v54 = v26;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v31;
  v51 = v26;
  v50 = v29;

  v32 = v39;
  sub_762770();
  sub_223CF0(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v33 = v41;
  sub_7665A0();
  v35 = v34;

  (*(v40 + 8))(v32, v33);
  sub_BEB8(v64);
  sub_BEB8(v65);
  sub_BEB8(v66);
  return v35;
}

uint64_t sub_223C88(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_223CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_223D38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel];
  sub_75A240();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel];
  sub_75A230();
  if (v6)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

void sub_223E1C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = sub_760D90();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_BD88(&qword_94AC58, qword_78CCC0);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_BD88(&unk_95F4E0, &unk_790C40);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = sub_75B490();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = sub_763750();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_948730, &qword_788DD0);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = sub_769A00();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_225E00(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  sub_760940();
  v45 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = sub_758C70();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = sub_75BD30();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = sub_765870();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_BD88(&unk_9457F0, qword_783FD0);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_4A18A4(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10A2C(v51, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v49, &unk_9457D0, &unk_785630);
  sub_10A2C(v26, &unk_9457E0, &qword_785640);
  sub_10A2C(v29, &unk_94A780, &unk_788DC0);
  sub_10A2C(v40, &unk_948730, &qword_788DD0);
  sub_75BD00();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (sub_764E90() && (v61 = sub_75E5C0(), , v61))
  {
  }

  else
  {
    v62 = sub_7653B0();
    v177 = v62;
    v178 = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v63 = sub_B1B4(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = sub_765C30();
    sub_BEB8(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_useAdsLocale] = sub_764DC0() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includesMetadataInformationInLockup] = sub_75BC40() & 1;
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute] = sub_75BCD0() & 1;
    v66 = sub_7653B0();
    v177 = v66;
    v178 = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v67 = sub_B1B4(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = sub_765C30();
    sub_BEB8(v176);
    if (v66 & 1) != 0 && (sub_75BC40())
    {
      if (sub_764EC0())
      {
        v68 = v163;
        sub_75FE40();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        v72 = sub_7691C0();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_13026C(v139);

          goto LABEL_98;
        }
      }

      v74 = sub_764F10();
      if (v74)
      {
        v75 = v74;
        sub_764DA0();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_43B74C(v82);

          v83 = *&v44[v79];
          v84 = sub_769210();

          [v83 setText:v84];

          v85 = sub_764E10();
          v86 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_13026C(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = sub_764E10();
      v148 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_13026C(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_13026C(v87);
    v88 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (sub_764EC0())
    {
      sub_75FE40();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_1ED18(v56, v55, &unk_95F4E0, &unk_790C40);
    sub_1ED18(v98, v55 + v102, &unk_95F4E0, &unk_790C40);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10A2C(v98, &unk_95F4E0, &unk_790C40);
      v55 = v173;
      sub_10A2C(v56, &unk_95F4E0, &unk_790C40);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10A2C(v55, &unk_95F4E0, &unk_790C40);
LABEL_98:
        v149 = sub_75BCB0();
        if (v149)
        {
          v150 = v149;
          if (sub_101F5C(v149, 0))
          {
            v151 = sub_75BCD0();
            sub_DFF8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_1ED18(v55, v161, &unk_95F4E0, &unk_790C40);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        LODWORD(v170) = sub_7691C0();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10A2C(v166, &unk_95F4E0, &unk_790C40);
        sub_10A2C(v106, &unk_95F4E0, &unk_790C40);
        v111(v104, v99);
        sub_10A2C(v107, &unk_95F4E0, &unk_790C40);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10A2C(v166, &unk_95F4E0, &unk_790C40);
      sub_10A2C(v56, &unk_95F4E0, &unk_790C40);
      (*(v168 + 8))(v104, v99);
    }

    sub_10A2C(v55, &qword_94AC58, qword_78CCC0);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (sub_764EC0())
    {
      v112 = v163;
      sub_75FE40();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
      v116 = sub_7691C0();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_13026C(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!sub_764E90())
      {
        goto LABEL_104;
      }

      v118 = sub_75E5C0();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (sub_764E10())
    {
      v119 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_13026C(v121);
LABEL_108:
      [v44 setNeedsLayout];

      return;
    }

    v125 = sub_764F10();
    if (v125)
    {
      v126 = v125;
      sub_764DA0();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_13026C(v128);
        v129 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_43B74C(v134);

        v135 = *&v44[v131];
        v136 = sub_769210();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = sub_75BC90();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_101F5C(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (sub_75BC70() >> 62)
  {
    sub_76A860();
  }

  v93 = sub_75BCF0();
  v94 = v160;
  if (!(v93 >> 62))
  {
    if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_1ED18(v156, v94, &unk_93F620, &unk_77E220);
    v96 = sub_75C840();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10A2C(v94, &unk_93F620, &unk_77E220);
    }

    else
    {
      sub_75D360();
      sub_225E00(&qword_94AC60, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
      sub_75C770();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    sub_1B9620(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_13026C(v142);
    v143 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = v93;
  v155 = sub_76A860();
  v93 = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((v93 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_48:

    v95 = sub_765750();

    if (v95 >> 62)
    {
      sub_76A860();
    }

    goto LABEL_50;
  }

  if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_48;
  }

  __break(1u);
}

double sub_2257B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_1303C8([v6 init]);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_765730();
      sub_764C60();
      v11 = v10;

      if (v11)
      {
        v12 = sub_769210();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_95CDB8];
        v19 = *&v16[qword_95CDB8];
        v20 = *&v16[qword_95CDB8 + 8];
        *v18 = sub_225DF8;
        v18[1] = v17;

        v21 = v16;

        sub_F704(v19, v20);
      }
    }

    v22 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView];
    if (v22)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v23 = v22;
      v24 = sub_769FF0();
      [v23 setTintColor:v24];
    }

    v25 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v26 = sub_769FF0();
    [v25 setTextColor:v26];

    v27 = sub_7653B0();
    v40[3] = v27;
    v40[4] = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v28 = sub_B1B4(v40);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.search_tags(_:), v27);
    LOBYTE(v26) = sub_765C30();
    sub_BEB8(v40);
    v29 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel];
    if (v26)
    {
      v30 = sub_769FF0();
    }

    else
    {
      v30 = sub_769FE0();
    }

    v31 = v30;
    [v29 setTextColor:v30];

    sub_765720();
    v33 = v32;
    v34 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel];
    v35 = [v34 superview];
    if (!v35 || (v36 = v35, sub_BE70(0, &qword_93E550, UIView_ptr), v37 = v3, v38 = sub_76A1C0(), v36, v37, (v38 & 1) == 0))
    {
      [v3 addSubview:v34];
    }

    [v34 setHidden:v33 == 0];
    if (v33)
    {
      v39 = sub_769210();
    }

    else
    {
      v39 = 0;
    }

    [v34 setText:v39];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_130470();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_130470();
    v13 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_225C40(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980, &qword_77EDA0);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_225DB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_225E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AF0();
  *a1 = result;
  return result;
}

uint64_t sub_225E74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = sub_759880(), , (v10 & 1) != 0))
  {
    v11 = sub_75D400();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    v13 = v19[0];
    sub_769A00();

    sub_BD88(&unk_952540, &qword_7918A0);
    sub_75C760();
    if (v18)
    {
      sub_10914(&v17, v19);
      sub_B170(v19, v19[3]);
      if (sub_762A20())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        sub_75D3D0();
        v14 = 0;
      }

      v16 = sub_75D400();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_BEB8(v19);
    }

    else
    {
      sub_1AA11C(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      sub_75D3D0();
      v15 = sub_75D400();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t sub_226250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AF0();
  *a1 = result;
  return result;
}

double sub_2262CC(__n128 a1)
{
  v55 = sub_75ABC0();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_75ABE0();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_762D10();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v43 = &v42 - v4;
  v50 = sub_7656C0();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_75FA00();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_BD88(&qword_946810, &qword_783360);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_BD88(&unk_94F1F0, &qword_782290);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = sub_BD88(&unk_959540, &qword_784830);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v20 = v43;
  (*(v13 + 8))(v15, v12);

  sub_75C800();
  v51 = v7;
  sub_75C740();
  swift_getKeyPath();
  v21 = v44;
  sub_75C7B0();

  sub_765630();
  (*(v46 + 8))(v21, v50);
  v22 = sub_527DE4();
  sub_134D8(&v70, v69);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7654E0();
  swift_dynamicCast();
  v23 = *(v62 + 16);
  v50 = v11;
  v23(v45, v11, v63);
  sub_768FA0();
  v24 = v20;
  sub_769060();
  sub_7654D0();
  v25 = sub_7654C0();
  sub_26F08();
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v26 = sub_7666D0();
  sub_BE38(v26, qword_99E9F8);
  v27 = [v22 traitCollection];
  v28 = sub_769E10();

  v29 = sub_7653B0();
  v69[3] = v29;
  v69[4] = sub_226E44(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_B1B4(v69);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  sub_765C30();
  sub_BEB8(v69);
  v32 = v47;
  sub_762D00();
  sub_762CE0();
  (*(v48 + 8))(v32, v49);
  if ((v25 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v33 = sub_7670D0();
    swift_allocObject();
    v34 = sub_7670B0();
    *(&v67 + 1) = v33;
    v68 = &protocol witness table for LayoutViewPlaceholder;
    *&v66 = v34;
  }

  else
  {
    v68 = 0;
    v67 = 0u;
    v66 = 0u;
  }

  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v35 = v55;
  v36 = sub_BE38(v55, qword_99B278);
  (*(v54 + 16))(v56, v36, v35);
  sub_134D8(v69, v65);
  sub_6D310(&v66, v64);
  v37 = v59;
  sub_75ABD0();
  [v22 pageMarginInsets];
  sub_769DA0();
  sub_226E44(&qword_951400, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v38 = v61;
  sub_7665A0();
  sub_769DC0();
  v40 = v39;

  swift_unknownObjectRelease();
  (*(v60 + 8))(v37, v38);
  sub_BEB8(v69);
  (*(v57 + 8))(v24, v58);
  (*(v52 + 8))(v51, v53);
  (*(v62 + 8))(v50, v63);
  sub_BEB8(&v70);
  sub_70550(&v66);

  return v40;
}

uint64_t sub_226E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_226E8C()
{
  sub_BD88(&qword_94AD38, &qword_78CEC0);
  sub_16194(&qword_94AD40, &qword_94AD38, &qword_78CEC0, &unk_7A2710);
  sub_7639F0();
  sub_BD88(&unk_959660, &qword_78CEC8);
  sub_BD88(&qword_94AD48, &qword_78CED0);
  if (swift_dynamicCast())
  {
    sub_B170(&v2, *(&v3 + 1));
    sub_75B500();
    sub_BEB8(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10A2C(&v2, &unk_959670, &qword_78CED8);
  }

  type metadata accessor for TodayCardGridTracker();
  sub_768860();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_227014(uint64_t a1)
{
  v2 = sub_BD88(&unk_9595E0, &qword_7825E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_BD88(&qword_9495B8, &qword_78A428);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_1ED18(a1, &v16[-1] - v7, &qword_9495B8, &qword_78A428);
  v9 = sub_BD88(&unk_959560, &qword_7A2870);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &qword_9495B8, &qword_78A428);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_75B030();
    (*(v10 + 8))(v8, v9);
    v11 = sub_764440();
    (*(v3 + 8))(v5, v2);
    v12 = sub_BD88(&unk_959650, &qword_7A28C0);
    v13 = sub_16194(&qword_94AD30, &unk_959650, &qword_7A28C0, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_75E9E0();
  if (v17)
  {
    return sub_BEB8(v16);
  }

  return result;
}

void sub_2272A4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_227490()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_22767C()
{
  v1 = sub_BD88(&qword_9495B8, &qword_78A428);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_BD88(&qword_94AD20, &unk_78CEB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_7676A0();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_769EE0();
        sub_767650();
        sub_769EF0();

        sub_7689F0();
        sub_7689C0();
        if (qword_93D188 != -1)
        {
          swift_once();
        }

        v25 = sub_BE38(v4, qword_99DCE8);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_7686E0();
      }

      else
      {
        sub_767890();
        v28 = v11;
        sub_769EE0();
        sub_767690();
        sub_769EF0();

        sub_7689F0();
        sub_7689C0();
        if (qword_93D188 != -1)
        {
          swift_once();
        }

        v29 = sub_BE38(v4, qword_99DCE8);
        v35[3] = v4;
        v35[4] = sub_16194(&qword_94AD28, &qword_94AD20, &unk_78CEB0, &protocol conformance descriptor for PreferenceKey<A>);
        v30 = sub_B1B4(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_7689D0();

        sub_BEB8(v35);
      }

      sub_226E8C();
      v31 = sub_BD88(&unk_959560, &qword_7A2870);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_227014(v3);
      sub_10A2C(v3, &qword_9495B8, &qword_78A428);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

double sub_227C2C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_22767C();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_76A950();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  return result;
}

void sub_227D00()
{
  v1 = sub_76A270();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_76A3F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong view];

    if (v14)
    {
      if ((sub_4ACFD8(v15) & 1) != 0 && !*(v0 + 24))
      {
        v75 = v2;
        v26 = [v14 window];
        v72 = v6;
        v73 = v5;
        v74 = v8;
        if (v26 && (v27 = v26, v28 = [v26 windowScene], v27, v28))
        {
          v29 = [v28 screen];

          [v29 bounds];
          v31 = v30;
          v33 = v32;
        }

        else
        {
          [v14 bounds];
          v31 = v34;
          v33 = v35;
        }

        v36 = 0;
        v37 = _swiftEmptyArrayStorage;
        v38 = 19;
        if (v31 <= v33)
        {
          v31 = v33;
        }

        v76 = v0;
        aBlock[0] = _swiftEmptyArrayStorage;
        v39 = v75;
        v71 = v14;
LABEL_15:
        if (v36 > 0x13)
        {
          v38 = v36;
        }

        v40 = v38 + 1;
        v41 = (&off_87EB80 + 5 * v36);
        while (v36 != 19)
        {
          if (v40 == ++v36)
          {
            __break(1u);
            return;
          }

          v42 = (v41 + 5);
          v43 = *(v41 + 6);
          v44 = *(v41 + 64);
          v45 = v43;
          if (v44)
          {
            v45 = v31;
          }

          v41 += 5;
          if (v45 <= v31)
          {
            v46 = *(v42 + 26);
            v68 = *(v42 + 25);
            v69 = v46;
            v67 = v42[2];
            v48 = *(v42 - 1);
            v47 = *v42;
            v70 = sub_BE70(0, &qword_955FA0, UIAction_ptr);
            v49 = swift_allocObject();
            swift_weakInit();
            v50 = swift_allocObject();
            *(v50 + 16) = v49;
            *(v50 + 24) = v48;
            *(v50 + 32) = v47;
            *(v50 + 40) = v43;
            *(v50 + 48) = v67;
            *(v50 + 56) = v44;
            v51 = v69;
            *(v50 + 57) = v68;
            *(v50 + 58) = v51;
            swift_bridgeObjectRetain_n();
            sub_76A1F0();
            sub_769440();
            if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            v37 = aBlock[0];
            v39 = v75;
            v38 = 19;
            goto LABEL_15;
          }
        }

        sub_BE70(0, &qword_944338, UIMenu_ptr);
        v79._object = 0x80000000007D5F20;
        v79._countAndFlagsBits = 0xD000000000000011;
        v80.value._countAndFlagsBits = 0;
        v80.value._object = 0;
        v78.value.super.isa = 0;
        v78.is_nil = 0;
        v52.value = &stru_20;
        isa = sub_769E30(v79, v80, v78, v52, 0xFFFFFFFFFFFFFFFFLL, v37, v65).super.super.isa;
        v70 = isa;
        sub_76A3E0();
        sub_76A3C0();
        v54 = sub_769210();
        v55 = [objc_opt_self() systemImageNamed:v54];

        sub_76A390();
        sub_76A290();
        sub_76A2D0();
        (*(v39 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
        sub_76A280();
        v56 = objc_opt_self();
        v57 = [v56 systemBlueColor];
        sub_76A310();
        v58 = [v56 whiteColor];
        sub_76A320();
        v59 = swift_allocObject();
        swift_weakInit();
        sub_BE70(0, &qword_960F00, UIButton_ptr);
        v6 = v72;
        v5 = v73;
        (*(v72 + 16))(v74, v11, v73);
        v60 = sub_76A400();
        [v60 setMenu:isa];
        [v60 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_2290E8;
        aBlock[5] = v59;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_123860;
        aBlock[3] = &unk_889B58;
        v61 = _Block_copy(aBlock);

        v2 = v75;

        [v60 setConfigurationUpdateHandler:v61];
        _Block_release(v61);
        v62 = *(v76 + 24);
        *(v76 + 24) = v60;
        v63 = v60;

        v8 = v74;
        sub_2272A4();
        v0 = v76;

        v14 = v71;

        v64.n128_f64[0] = (*(v6 + 8))(v11, v5);
        if (sub_4ACFFC(v64))
        {
          goto LABEL_6;
        }
      }

      else if (sub_4ACFFC(v16))
      {
LABEL_6:
        if (!*(v0 + 32))
        {
          sub_76A3E0();
          v76 = v0;
          sub_76A3C0();
          v17 = sub_769210();
          v18 = [objc_opt_self() systemImageNamed:v17];

          sub_76A390();
          sub_76A290();
          sub_76A2D0();
          (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
          sub_76A280();
          v19 = objc_opt_self();
          v20 = [v19 systemRedColor];
          sub_76A310();
          v21 = [v19 whiteColor];
          sub_76A320();
          sub_BE70(0, &qword_960F00, UIButton_ptr);
          (*(v6 + 16))(v8, v11, v5);
          sub_BE70(0, &qword_955FA0, UIAction_ptr);
          sub_76A1F0();
          v22 = sub_76A400();
          v23 = *(v76 + 32);
          *(v76 + 32) = v22;
          v24 = v6;
          v25 = v22;

          sub_227490();
          (*(v24 + 8))(v11, v5);
          return;
        }
      }
    }
  }
}

double sub_228620(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_227C2C(v12);
  }

  return result;
}

uint64_t sub_2286D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_76A410();
  v8 = sub_76A3F0();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_1ED18(v7, v4, &unk_954ED0, &unk_77E060);
    sub_76A420();
    return sub_10A2C(v7, &unk_954ED0, &unk_77E060);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_76A3C0();
    return sub_76A420();
  }
}

void sub_228888()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_769210();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

void sub_228974()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_setSpeed_;
          v8 = &selRef_absoluteDimension_;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_93DD08 != -1)
            {
              swift_once();
            }

            v17 = sub_766CA0();
            sub_BE38(v17, qword_99FE60);
            sub_7671D0();
            sub_BD88(&unk_93F5C0, &unk_77C600);
            v18 = swift_allocObject();
            v67 = xmmword_77D9F0;
            *(v18 + 16) = xmmword_77D9F0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_7671E0();
            sub_7666E0();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_77D9F0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_7671E0();
            sub_7666E0();
            v31 = v30;

            v7 = &selRef_setSpeed_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &selRef_absoluteDimension_;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_93DCF8 != -1)
              {
                swift_once();
              }

              v43 = sub_766CA0();
              sub_BE38(v43, qword_99FE30);
              sub_7671D0();
              sub_BD88(&unk_93F5C0, &unk_77C600);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_77D9F0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_7671E0();
              sub_7666E0();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_93DD08 != -1)
              {
                swift_once();
              }

              v49 = sub_766CA0();
              sub_BE38(v49, qword_99FE60);
              sub_7671D0();
              sub_BD88(&unk_93F5C0, &unk_77C600);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_77D9F0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_7671E0();
              sub_7666E0();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_93DD08 != -1)
              {
                swift_once();
              }

              v61 = sub_766CA0();
              sub_BE38(v61, qword_99FE60);
              sub_7671D0();
              sub_BD88(&unk_93F5C0, &unk_77C600);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_77D9F0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_7671E0();
              sub_7666E0();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[478]];

            [v68 v8[305]];
          }
        }
      }
    }
  }
}

uint64_t sub_228FAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_229020()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_229058()
{

  return _swift_deallocObject(v0, 59, 7);
}

double sub_229098(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_228620(a1, v2, v8);
}

double sub_2290F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_22910C()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_229234();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_229234()
{
  v0 = sub_764A60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v8 + 8))(v10, v7);
  sub_75DA70();
  sub_764A20();
  sub_229558(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v11 = sub_76A520();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_93CD68 != -1)
    {
      swift_once();
    }

    v13 = qword_99D350;
  }

  else
  {
    if (qword_93CD70 != -1)
    {
      swift_once();
    }

    v13 = qword_99D368;
  }

  v14 = sub_759270();
  sub_BE38(v14, v13);
  sub_75DA40();
  sub_759290();
  sub_229558(&qword_94AD50, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  sub_766ED0();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_229558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_67958(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  *(v6 + 72) = sub_22A6B0;
  *(v6 + 80) = v8;

  sub_F704(v9, v10);

  return v6;
}

double sub_22967C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_22A78C();
  sub_75FA40();

  return result;
}

void sub_22970C(uint64_t a1, uint64_t a2)
{
  if (sub_229E60())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_22A760;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_6C6800;
      v19 = &unk_889D10;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_22A780;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_6C6800;
      v19 = &unk_889D60;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_66394(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double sub_2299A0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_65DEC();
    }

    else
    {
      v7 = [v2 transitionCoordinator];
      v8 = (*(a2 + 8))(a1, a2);
      if (v7)
      {
        v17 = sub_1C61A4;
        v18 = v8;
        v13 = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_6C6800;
        v16 = &unk_889C70;
        v9 = _Block_copy(&v13);

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        v11[2] = a1;
        v11[3] = a2;
        v11[4] = v10;
        v17 = sub_22A754;
        v18 = v11;
        v13 = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_6C6800;
        v16 = &unk_889CC0;
        v12 = _Block_copy(&v13);

        [v7 animateAlongsideTransition:v9 completion:v12];
        _Block_release(v12);
        _Block_release(v9);
        swift_unknownObjectRelease();
        return result;
      }

      sub_65DEC();
    }
  }

  return result;
}

void sub_229C38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_22A808;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_6C6800;
  v9[3] = &unk_889C48;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_229D44(char a1)
{
  v3 = (*&stru_B8.segname[(swift_isaMask & *v1) - 8])((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*(&stru_108.reserved2 + (swift_isaMask & *v1)))(v3), (v3))
  {
    v4 = (*&stru_B8.sectname[swift_isaMask & *v1])(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&stru_158.offset + (swift_isaMask & *v1));
  v6 = v4 & 1;

  return v5(v6);
}

BOOL sub_229E60()
{
  v1 = (*&stru_158.segname[(swift_isaMask & *v0) - 8])();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

void sub_229F20(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_7599A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*&stru_1A8.segname[swift_isaMask & *Strong])()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    sub_759960();
    sub_759990();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_22A6F4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_889BF8;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}

void sub_22A208(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*&stru_1A8.segname[(swift_isaMask & *Strong) + 8])(*&a2, 0);
  }
}

void sub_22A2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_3C80C();
      v11 = v8;
      v12 = sub_76A1C0();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_65DEC();
        }
      }
    }
  }
}

void sub_22A3BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = *(a2 + 48);

    v3(v5, 1.0, 0.0);
    sub_F704(v3, v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong navigationController];

    if (v8)
    {
      v9 = [v8 navigationBar];

      [v9 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_22A480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_3C80C();
        v11 = v8;
        v12 = sub_76A1C0();

        if ((v12 & 1) != 0 && sub_229E60())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_66394(v13);
        }
      }
    }
  }
}

void sub_22A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_66394(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22A678()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22A6BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_22A704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_22A71C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_22A78C()
{
  result = qword_9495C8;
  if (!qword_9495C8)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9495C8);
  }

  return result;
}

double sub_22A820(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_75CC20();
  v13 = v12;
  v14 = sub_75CC40();
  v15 = sub_75CC30();
  swift_getObjectType();
  v16.n128_f64[0] = a2;
  v17 = sub_35BEE0(v11, v13, v14, v15, a8, v16, a3);

  return v17;
}

void sub_22A974(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1439F8(0, v3, 0);
    v36 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = sub_76A5B0();
    v6 = 0;
    v7 = *(a1 + 36);
    v31 = v3;
    v32 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v11 = (*(a1 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v5);

      v15 = a2(v12, v13, v14);
      v34 = v17;
      v35 = v16;
      v19 = v18;

      v20 = v36;
      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1439F8((v21 > 1), v22 + 1, 1);
        v20 = v36;
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[4 * v22];
      *(v23 + 4) = v15;
      *(v23 + 5) = v35;
      *(v23 + 6) = v34;
      *(v23 + 7) = v19;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v4 = a1 + 64;
      v24 = *(a1 + 64 + 8 * v10);
      if ((v24 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v36 = v20;
      v7 = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v5 & 0x3F));
      if (v25)
      {
        v8 = __clz(__rbit64(v25)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v31;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v9 = v31;
        v28 = (a1 + 72 + 8 * v10);
        while (v27 < (v8 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1F38B4(v5, v32, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1F38B4(v5, v32, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id sub_22AC08(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
  sub_75CC20();
  v4 = sub_769210();

  [v3 setText:v4];

  sub_75CC40();
  v5 = sub_75CC10();
  v6 = sub_759CF0();
  sub_22A974(v6, sub_30AE4);
  v8 = v7;

  v9 = sub_759CE0();
  sub_4ED3B8(v9, v5, v8);

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
  v11 = sub_75CC00();
  [v10 setTintColor:v11];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = sub_75CC30();

  return [v2 setNeedsLayout];
}

double sub_22ADA0(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon);
  if (v2)
  {

    if (sub_765160())
    {
      v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView);
      if (sub_765190())
      {
        v4 = sub_759910();
      }

      else if (sub_765180())
      {
        v4 = sub_56EBA8(v2, 0);
      }

      else
      {
        v4 = 0;
      }

      [v3 setImage:v4];
    }

    else
    {
      v5 = qword_93CD88;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_759910();
      if (v6)
      {
        v7 = v6;
        [v6 size];
      }

      sub_765320();
      sub_22AFB8();
      sub_22B004(&qword_950A60, sub_22AFB8, &protocol conformance descriptor for UIImageView);
      sub_75A050();
    }
  }

  return v8;
}

unint64_t sub_22AFB8()
{
  result = qword_949D90;
  if (!qword_949D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_949D90);
  }

  return result;
}

uint64_t sub_22B004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_22B04C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_22B0B0;
}

void sub_22B0B0(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v7 = v26;
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
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_55A7A8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
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
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_55A7A8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_22B374(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22B3D8;
}

id sub_22B3D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_22B488(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_22B6DC()
{
  v1 = v0;
  v2 = sub_760840();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_760D90();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_762D10();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_75D850();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = sub_760820();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  sub_75D650();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  sub_12EE70();
  sub_769D20();
  [v32 setFrame:?];
  sub_763F60();
  v33 = [v0 traitCollection];
  v34 = sub_7671D0();
  v136 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v35 = swift_allocObject();
  v150 = xmmword_77D9F0;
  *(v35 + 16) = xmmword_77D9F0;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = sub_7671E0();
  v133 = sub_24128();
  sub_7666E0();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = sub_769240();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = sub_769240();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_BE38(v157, qword_99B150);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = sub_769A00();
  v144 = v1;
  if (v58)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v59 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v59 = qword_946938;
  }

  v60 = v154;
  v61 = sub_BE38(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v120 = sub_7670D0();
  swift_allocObject();
  v127 = sub_7670B0();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = sub_7653B0();
  v195[3] = v67;
  v68 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_B1B4(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_765C30();
  sub_BEB8(v195);
  v73 = v129;
  sub_762D00();
  sub_762CE0();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_B1B4(v194);
  v72(v76, v70, v67);
  sub_765C30();
  sub_BEB8(v194);
  sub_762D00();
  sub_762CE0();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_B1B4(v193);
  v72(v79, v114, v67);
  sub_765C30();
  sub_BEB8(v193);
  sub_762D00();
  sub_762CE0();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_246DC() & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = sub_7671C0();
    v85 = v112;
    sub_1ED18(v156, v112, &unk_94AE30, qword_7864D0);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10A2C(v85, &unk_94AE30, qword_7864D0);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_2185C(v155, v89, v91, v29, v31);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = sub_7670A0();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = sub_7670B0();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_246DC() & (v93 != 0)) == 1)
  {
    sub_F7FC(v93, v111, v29, v31);
    swift_allocObject();
    v94 = sub_7670A0();
  }

  else
  {
    swift_allocObject();
    v94 = sub_7670B0();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_134D8(v195, v187);
  sub_134D8(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = sub_7670C0();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_134D8(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  sub_760830();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = sub_7671E0();
  sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v102 = v143;
  sub_7665A0();

  (*(v142 + 8))(v97, v102);
  sub_BEB8(v193);
  sub_BEB8(v194);
  sub_BEB8(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10A2C(v156, &unk_94AE30, qword_7864D0);
  v103 = v138;
  sub_763F60();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = sub_7671E0();
  v107 = v140;
  sub_7666E0();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  sub_769D20();
  return [v108 setFrame:?];
}

void sub_22C85C(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v6 - 8);
  v115 = &v99 - v7;
  v8 = sub_760770();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v99 - v12;
  v13 = sub_75C930();
  v122 = *(v13 - 8);
  __chkstk_darwin(v13);
  v120 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v99 - v16;
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  v20 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v20 - 8);
  v123 = &v99 - v21;
  v22 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v22 - 8);
  v24 = &v99 - v23;
  v25 = sub_7656C0();
  v119 = *(v25 - 8);
  __chkstk_darwin(v25);
  v124 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7634F0();
  sub_7688F0();
  v27 = v126;
  if (!v126)
  {
    return;
  }

  v117 = a1;
  v28 = sub_7634C0();
  if (!v28)
  {
LABEL_13:

    return;
  }

  v112 = v19;
  v114 = v27;
  v29 = v28;
  sub_7609E0();
  sub_BD88(&qword_9498C0, &qword_78D270);
  sub_75BD00();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v107 = v29;
  v113 = v9;
  v108 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_765560();
  v30 = *&KeyPath[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  *(v30 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing) = v31;
  [v30 setNeedsLayout];
  sub_765630();
  v33 = v32;
  v35 = v34;
  v36 = sub_75C840();
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);

  v111 = a2;
  sub_223E1C(v37, v24, a2);
  sub_10A2C(v24, &unk_93F620, &unk_77E220);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v38 = sub_76A000();
  [KeyPath setBackgroundColor:v38];

  v39 = sub_75BC70();
  if (v39 >> 62)
  {
    v59 = v39;
    v40 = sub_76A860();
    v39 = v59;
  }

  else
  {
    v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
  }

  v41 = v121;
  v121 = v8;
  if (v40)
  {
    v42 = v120;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v110 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_53;
      }

      v110 = *(v39 + 32);
    }
  }

  else
  {

    v110 = 0;
    v42 = v120;
  }

  v104 = *&KeyPath[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  a1 = sub_75BCA0();
  v103 = sub_75BC80();
  v43 = sub_75BCF0();
  if (v43 >> 62)
  {
    v60 = v43;
    v44 = sub_76A860();
    v43 = v60;
  }

  else
  {
    v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
  }

  v106 = KeyPath;
  v105 = v30;
  v120 = a1;
  if (v44)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v102 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_55;
      }

      v102 = *(v43 + 32);
    }
  }

  else
  {

    v102 = 0;
  }

  v45 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  sub_75C7B0();

  v46 = v126;
  sub_3B9960(v123);

  v30 = sub_75BCA0();
  a1 = sub_75BC80();
  v47 = sub_75BC70();
  if (v47 >> 62)
  {
    v61 = v47;
    v48 = sub_76A860();
    v47 = v61;
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
  }

  v24 = v113;
  if (v48)
  {
    if ((v47 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v47 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = sub_76A770();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v49 = sub_75BCF0();
  if (v49 >> 62)
  {
    v62 = v49;
    v50 = sub_76A860();
    v49 = v62;
  }

  else
  {
    v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
  }

  v109 = v13;
  if (v50)
  {
    if ((v49 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)))
      {
        v51 = *(v49 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v51 = sub_76A770();
    goto LABEL_37;
  }

  v51 = 0;
LABEL_39:
  sub_75BCC0();
  if (sub_760760())
  {
    if (!(a1 | v30))
    {
      v53 = sub_55BABC(KeyPath, v51, 0, 1, v52);
      v30 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (KeyPath)
        {
LABEL_43:
          v54 = sub_759690();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v100 = sub_55BE04(v54);

        v117 = KeyPath;
        v63 = v42;
        if (KeyPath)
        {
          v64 = sub_759690();
        }

        else
        {
          v64 = 0;
        }

        v65 = v115;
        v66 = v121;
        (*(v24 + 2))(v115, v41, v121);
        v67.n128_f64[0] = (*(v24 + 7))(v65, 0, 1, v66);
        v101 = sub_55C32C(v64, v65, v67);

        sub_10A2C(v65, &unk_94DF00, &unk_792100);
        if (a1)
        {
          v68 = sub_76A860();
        }

        else
        {
          v68 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
        }

        v69 = v63;
        if (v68)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return;
            }
          }

          v70 = sub_765150();

          if (v70)
          {

            v71 = *(v24 + 1);
            v71(v41, v121);
            v55 = v122;
            v72 = v116;
            v73 = v109;
            (*(v122 + 104))(v116, enum case for LockupMediaLayout.DisplayType.landscape(_:), v109);
LABEL_81:
            ObjectType = v71;
            v56 = v112;
            (*(v55 + 32))(v112, v72, v73);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v74 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v75 = v122;
        v73 = v109;
        v115 = *(v122 + 104);
        (v115)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v109);
        v76 = sub_75C920();
        v77 = *(v75 + 8);
        v77(v69, v73);
        if (((ObjectType >= v76) & v101) != 0 || (v74 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v115)(v69, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v73), v78 = sub_75C920(), v77(v69, v73), ((ObjectType >= v78) & v100) != 0) || (v74 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v115)(v69, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v73), v79 = sub_75C920(), v77(v69, v73), ObjectType >= v79))
        {

          v71 = *(v113 + 1);
          v71(v41, v121);
        }

        else
        {
          v74 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v115)(v69, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v73);
          v80 = sub_75C920();

          v77(v69, v73);
          v71 = *(v113 + 1);
          v71(v41, v121);
          if (ObjectType != v80)
          {
            v81 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v72 = v116;
            v82 = v116;
LABEL_80:
            (v115)(v82, v81, v73);
            v55 = v122;
            goto LABEL_81;
          }
        }

        v72 = v116;
        v82 = v116;
        v81 = v74;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = sub_76A860();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v116;
    sub_7666A0();

    ObjectType = *(v24 + 1);
    ObjectType(v41, v121);
    v55 = v122;
    v58 = v109;
    (*(v122 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v109);
    v56 = v112;
    (*(v55 + 32))(v112, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v41, v121);
    v55 = v122;
    v56 = v112;
    (*(v122 + 104))(v112, enum case for LockupMediaLayout.DisplayType.none(_:), v109);
  }

LABEL_82:
  v83 = v118;
  sub_75BCC0();
  v84 = ASKDeviceTypeGetCurrent();
  v85 = v123;
  sub_161EE4(v120, v103, v110, v102, v123, v56, v83, v111, v86, v87, v88, v89, v90, v91, v92, v93, v33, v35, 0);

  ObjectType(v83, v121);
  (*(v55 + 8))(v56, v109);
  sub_10A2C(v85, &unk_948720, &unk_784970);
  v94 = sub_764E90();

  if (v94)
  {
    v95 = sub_75E5C0();

    v96 = v106;
    if (v95)
    {
      v97 = [objc_opt_self() clearColor];
      [v96 setBackgroundColor:v97];
    }
  }

  else
  {
    v95 = 0;
    v96 = v106;
  }

  v98 = v119;
  [v96 setNeedsLayout];

  [v96 setNeedsLayout];

  (*(v98 + 8))(v124, v108);
}

void sub_22D838(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v191 = &v156 - v13;
  v14 = sub_760840();
  v190 = *(v14 - 8);
  __chkstk_darwin(v14);
  v189 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_760D90();
  v193 = *(v16 - 8);
  *&v194 = v16;
  __chkstk_darwin(v16);
  v183 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_762D10();
  v186 = *(v18 - 8);
  v187 = v18;
  __chkstk_darwin(v18);
  v185 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75D850();
  v197 = *(v20 - 8);
  v198 = v20;
  __chkstk_darwin(v20);
  v184 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v196 = &v156 - v23;
  v201 = sub_760820();
  v195 = *(v201 - 8);
  __chkstk_darwin(v201);
  v188 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v200 = &v156 - v26;
  v27 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v27 - 8);
  v182 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v199 = &v156 - v30;
  v202 = sub_760770();
  v31 = *(v202 - 8);
  __chkstk_darwin(v202);
  v33 = (&v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v36 = &v156 - v35;
  v37 = sub_7652D0();
  __chkstk_darwin(v37 - 8);
  v192 = &v156 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7634F0();
  sub_7688F0();
  if (!v242[0])
  {
    return;
  }

  v179 = v12;
  v180 = v11;
  v204 = v242[0];
  v181 = a1;
  sub_134D8(a1, v242);
  sub_BD88(&unk_93F520, &unk_77E560);
  v39 = sub_75DDB0();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v178 = v14;
  v40 = v241[0];
  v243 = v39;
  v244 = sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v242[0] = v40;

  v41 = sub_7634B0();
  sub_BEB8(v242);
  if (!v41)
  {

    return;
  }

  sub_7609E0();
  sub_BD88(&qword_9498C0, &qword_78D270);
  sub_75BD00();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v172 = v41;
  v173 = v31;
  v169 = v33;
  v176 = v36;
  v42 = v241[0];
  v43 = v203;
  v44 = *&v203[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v175 = v44;
  v46 = *(v44 + v45);
  if (v46 >> 62)
  {
    v47 = sub_76A860();
  }

  else
  {
    v47 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
  }

  v205 = a2;
  v177 = v40;
  v174 = v42;
  if (v47)
  {
    if (v47 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v48 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = sub_76A770();
      }

      else
      {
        v49 = *(v46 + v48 + 4);
      }

      v50 = v49;
      ++v48;
      v241[0] = v49;
      type metadata accessor for BorderedScreenshotView(0);
      sub_234E24(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v51 = v50;
      sub_76A6E0();
      a2 = v205;
      sub_75A0B0();
      sub_1EB60(v242);
      v52 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v245.value.super.isa = 0;
      v245.is_nil = 0;
      sub_7591D0(v245, v53);
    }

    while (v47 != v48);

    v43 = v203;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    [*(Strong + qword_940590) setImage:0];
    v241[0] = v55;
    type metadata accessor for VideoView(0);
    sub_234E24(&qword_952550, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v56 = v55;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v242);
  }

  v43 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v57 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v246.value.super.isa = 0;
  v246.is_nil = 0;
  sub_7591D0(v246, v58);

  v59 = *&v43[v31];
  v60 = sub_759210();
  v61 = sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v62 = v59;
  v170 = v61;
  v171 = v60;
  sub_75A0C0();

  v63 = sub_764EE0();
  v64 = v202;
  if (!v63)
  {
    goto LABEL_25;
  }

  v65 = qword_93C668;
  v46 = *&v43[v31];
  if (v65 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v66 = sub_75CF00();
  sub_BE38(v66, qword_99B898);
  sub_75CDD0();
  [v46 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [v46 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    sub_76A030();
  }

  sub_759070();
  v67 = *&v43[v31];
  sub_75A050();

  v64 = v202;
LABEL_25:
  v68 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  sub_1BA288(v181, a2);

  v69 = v176;
  sub_75BCC0();
  if ((sub_760760() & 1) == 0)
  {

    (*(v173 + 8))(v69, v64);
    return;
  }

  v70 = sub_764EF0();
  v159 = v71;
  v160 = v70;
  v72 = sub_764F70();
  v74 = v73;
  v75 = sub_764E90();

  v161 = v74;
  v162 = v72;
  if (v75)
  {
    v76 = sub_75E5C0();

    v77 = v200;
    v78 = v193;
    v79 = v184;
    if (v76)
    {
      v80 = sub_765720();
      v163 = v81;
      v164 = v80;
    }

    else
    {
      v163 = 0;
      v164 = 0;
    }

    v82 = v194;
  }

  else
  {
    v163 = 0;
    v164 = 0;
    v77 = v200;
    v78 = v193;
    v82 = v194;
    v79 = v184;
  }

  v192 = sub_75BC90();
  v184 = sub_75BCB0();
  v83 = sub_75BCD0();
  v84 = [v203 traitCollection];
  (*(v78 + 56))(v199, 1, 1, v82);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v85 = v201;
  v86 = sub_BE38(v201, qword_99B150);
  v87 = v195 + 16;
  v88 = *(v195 + 16);
  v88(v77, v86, v85);
  v89 = sub_769A00();
  LODWORD(v156) = v83;
  v166 = v88;
  v167 = v87;
  if ((v89 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v90 = qword_946938;
    goto LABEL_41;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v90 = qword_946920;
LABEL_41:
    v91 = v198;
    v92 = sub_BE38(v198, v90);
    v93 = v197;
    (*(v197 + 16))(v79, v92, v91);
    (*(v93 + 32))(v196, v79, v91);
    v94 = [v84 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v165 = sub_7670D0();
    swift_allocObject();
    v181 = sub_7670B0();
    v95 = objc_opt_self();
    v157 = v95;
    v96 = [v95 preferredFontForTextStyle:UIFontTextStyleBody];
    v97 = sub_7653B0();
    v243 = v97;
    v170 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v244 = v170;
    v98 = sub_B1B4(v242);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v100 = *(v97 - 8);
    v158 = *(v100 + 104);
    v168 = v100 + 104;
    HIDWORD(v156) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v158(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
    sub_765C30();
    sub_BEB8(v242);
    v101 = v185;
    sub_762D00();
    sub_762CE0();
    v102 = v187;
    v171 = v84;
    v103 = *(v186 + 8);
    v103(v101, v187);
    v104 = [v95 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v241[3] = v97;
    v241[4] = v170;
    v105 = sub_B1B4(v241);
    v106 = v99;
    v107 = v158;
    v158(v105, v106, v97);
    sub_765C30();
    sub_BEB8(v241);
    sub_762D00();
    sub_762CE0();
    v103(v101, v102);
    v108 = [v157 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v240[3] = v97;
    v240[4] = v170;
    v109 = sub_B1B4(v240);
    v107(v109, HIDWORD(v156), v97);
    sub_765C30();
    sub_BEB8(v240);
    sub_762D00();
    sub_762CE0();
    v103(v101, v102);
    v110 = v192;
    LODWORD(v187) = sub_246DC() & (v110 != 0);
    if (v187 == 1)
    {
      v111 = objc_allocWithZone(sub_7671D0());
      v112 = v171;
      v113 = sub_7671C0();
      v114 = v182;
      sub_1ED18(v199, v182, &unk_94AE30, qword_7864D0);
      v116 = v193;
      v115 = v194;
      v117 = *(v193 + 48);
      if (v117(v114, 1, v194) == 1)
      {
        v118 = v183;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v117(v114, 1, v115) != 1)
        {
          sub_10A2C(v114, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v118 = v183;
        (*(v116 + 32))(v183, v114, v115);
      }

      v121 = v113;
      sub_2185C(v192, v118, v121, a6, a7);

      (*(v116 + 8))(v118, v115);
      v119 = v165;
      swift_allocObject();
      v120 = sub_7670A0();
    }

    else
    {
      v119 = v165;
      swift_allocObject();
      v120 = sub_7670B0();
    }

    v122 = v120;

    v123 = v184;
    v124 = sub_246DC() & (v123 != 0);
    v125 = v166;
    if (v124 == 1)
    {
      sub_F7FC(v123, v156 & 1, a6, a7);
      swift_allocObject();
      v126 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v126 = sub_7670B0();
    }

    v127 = v126;
    v125(v188, v200, v201);
    v239 = &protocol witness table for LayoutViewPlaceholder;
    v238 = v119;
    v237 = v181;
    v236 = 0;
    *&v234[40] = 0u;
    v235 = 0u;
    sub_134D8(v242, v234);
    sub_134D8(v241, &v233);
    v232 = 0;
    v230 = 0u;
    v231 = 0u;
    v229 = 0;
    v227 = 0u;
    v228 = 0u;

    v128 = sub_7670C0();
    v226 = &protocol witness table for LayoutViewPlaceholder;
    v225 = v119;
    v224 = v128;
    v223 = 0;
    v221 = 0u;
    v222 = 0u;
    v220 = 0;
    v218 = 0u;
    v219 = 0u;
    v217 = 0;
    v215 = 0u;
    v216 = 0u;
    v214 = 0;
    v213 = 0u;
    *&v212[40] = 0u;
    sub_134D8(v240, v212);
    v210 = v119;
    v211 = &protocol witness table for LayoutViewPlaceholder;
    v208 = &protocol witness table for LayoutViewPlaceholder;
    v209 = v122;
    v207 = v119;
    v206 = v127;
    v129 = v189;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v130 = swift_allocObject();
    v194 = xmmword_77D9F0;
    *(v130 + 16) = xmmword_77D9F0;
    v131 = v171;
    *(v130 + 32) = v171;
    v79 = v131;
    v132 = sub_7671E0();
    sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v133 = v178;
    sub_7665A0();
    v135 = v134;

    (*(v190 + 8))(v129, v133);
    sub_BEB8(v240);
    sub_BEB8(v241);
    sub_BEB8(v242);
    (*(v197 + 8))(v196, v198);
    (*(v195 + 8))(v200, v201);
    sub_10A2C(v199, &unk_94AE30, qword_7864D0);
    v84 = v191;
    sub_763F60();
    v136 = swift_allocObject();
    *(v136 + 16) = v194;
    *(v136 + 32) = v79;
    v137 = v79;
    v138 = sub_7671E0();
    sub_24128();
    v139 = v180;
    sub_7666E0();
    v141 = v140;

    (*(v179 + 8))(v84, v139);
    v142 = sub_75BCA0();
    v143 = sub_75BC80();
    v144 = sub_75BC70();
    if (v144 >> 62)
    {
      v146 = v144;
      v147 = sub_76A860();
      v144 = v146;
      v145 = v173;
      if (!v147)
      {
LABEL_61:

        v79 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v145 = v173;
      if (!*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_61;
      }
    }

    if ((v144 & 0xC000000000000001) != 0)
    {
      v79 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_75;
      }

      v79 = *(v144 + 32);
    }

LABEL_62:
    v148 = sub_75BCF0();
    if (!(v148 >> 62))
    {
      if (!*(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_64;
    }

    v150 = v148;
    v151 = sub_76A860();
    v148 = v150;
    if (!v151)
    {
      break;
    }

LABEL_64:
    if ((v148 & 0xC000000000000001) != 0)
    {
      v149 = sub_76A770();
      goto LABEL_67;
    }

    if (*(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)))
    {
      v149 = *(v148 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v149 = 0;
LABEL_70:
  v152 = [v203 traitCollection];
  v153 = v169;
  sub_75BCC0();
  sub_1600F8(v142, v143, v79, v149, v152, v205, v153, a6, a7 - v135 - v141);

  v154 = *(v145 + 8);
  v155 = v202;
  v154(v153, v202);
  v154(v176, v155);
}

uint64_t sub_22F090(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_75F4E0();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_F704(v5, v6);
  return sub_12F734(a1);
}

id sub_22F150(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_22F2A8(void *a1)
{
  sub_2346A8(a1);
}

uint64_t (*sub_22F2E0(uint64_t **a1))()
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
  v2[4] = sub_22B04C(v2);
  return sub_21028;
}

uint64_t sub_22F360(uint64_t a1, uint64_t a2)
{
  sub_23481C(a1, a2);

  return sub_F704(a1, a2);
}

uint64_t (*sub_22F3A8(uint64_t *a1))()
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
  *(v2 + 32) = sub_22B374(v2);
  return sub_246E0;
}

double sub_22F418()
{
  swift_beginAccess();

  return result;
}

double sub_22F460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F524(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_F714(*v4, v4[1]);
  return v5;
}

uint64_t sub_22F57C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

uint64_t sub_22F63C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_234E24(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView, &unk_77DA98);
  return sub_7633E0();
}

uint64_t sub_22F6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_22F738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_22F7A4(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_22F840(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
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

uint64_t sub_22F9FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_234E24(&qword_94AE18, a2, type metadata accessor for AdvertsSearchResultContentView, &unk_78D19C);
  result = sub_234E24(&unk_94AE20, v3, type metadata accessor for AdvertsSearchResultContentView, &unk_78D0CC);
  *(a1 + 32) = result;
  return result;
}

void sub_22FA80(unint64_t a1)
{
  v4 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v4 - 8);
  v6 = &v171 - v5;
  v7 = sub_75C930();
  v199 = *(v7 - 8);
  __chkstk_darwin(v7);
  v194 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v171 - v10;
  __chkstk_darwin(v12);
  v14 = &v171 - v13;
  v15 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v15 - 8);
  v17 = &v171 - v16;
  v18 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v196 = *(v18 - 8);
  v197 = v18;
  __chkstk_darwin(v18);
  v195 = &v171 - v19;
  v20 = sub_760840();
  v212 = *(v20 - 8);
  v213 = v20;
  __chkstk_darwin(v20);
  v211 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_760D90();
  *&v216 = *(v217 - 1);
  __chkstk_darwin(v217);
  v201 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_762D10();
  v208 = *(v23 - 8);
  v209 = v23;
  __chkstk_darwin(v23);
  v207 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75D850();
  v221 = *(v25 - 1);
  v222 = v25;
  __chkstk_darwin(v25);
  v27 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v220 = &v171 - v29;
  v224 = sub_760820();
  v219 = *(v224 - 8);
  __chkstk_darwin(v224);
  v210 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v226 = &v171 - v32;
  v33 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v33 - 8);
  v200 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v223 = &v171 - v36;
  v37 = sub_75DAB0();
  __chkstk_darwin(v37 - 8);
  v39 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_7656C0();
  v205 = *(v40 - 8);
  v206 = v40;
  __chkstk_darwin(v40);
  v218 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_760770();
  v214 = *(v42 - 8);
  v215 = v42;
  __chkstk_darwin(v42);
  v225 = &v171 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DDB0();
  sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!v263[0])
  {
    return;
  }

  v202 = v263[0];
  v44 = sub_75DDA0();
  if (!(v44 >> 62))
  {
    if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_51:

    return;
  }

  v112 = v44;
  v113 = sub_76A860();
  v44 = v112;
  if (!v113)
  {
    goto LABEL_51;
  }

LABEL_4:
  v172 = v6;
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = sub_76A770();
LABEL_7:
    v177 = v17;

    sub_75BCC0();
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765630();
    v1 = v46;
    v2 = v47;

    v48 = sub_764EF0();
    v183 = v49;
    v184 = v48;
    v50 = sub_764F70();
    v185 = v51;
    v186 = v50;
    v52 = sub_764E90();
    v203 = v45;

    if (v52)
    {
      v53 = sub_75E5C0();

      v54 = v216;
      if (v53)
      {
        v55 = sub_765720();
        v187 = v56;
        v188 = v55;
      }

      else
      {
        v187 = 0;
        v188 = 0;
      }

      v57 = v217;
    }

    else
    {
      v187 = 0;
      v188 = 0;
      v57 = v217;
      v54 = v216;
    }

    v204 = sub_75BC90();
    (*(v54 + 56))(v223, 1, 1, v57);
    v58 = sub_75BCB0();
    v175 = sub_75BCD0();
    swift_getKeyPath();
    sub_75C7B0();

    v6 = v263[5];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v59 = v224;
    v60 = sub_BE38(v224, qword_99B150);
    v61 = v219 + 16;
    v189 = *(v219 + 16);
    v189(v226, v60, v59);
    v62 = sub_769A00();
    v176 = v7;
    v192 = a1;
    v173 = v11;
    v174 = v14;
    v198 = v58;
    v190 = v61;
    if ((v62 & 1) == 0)
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v63 = qword_946938;
      goto LABEL_24;
    }

    if (qword_93C440 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v63 = qword_946920;
LABEL_24:
      v64 = v222;
      v65 = sub_BE38(v222, v63);
      v66 = v221;
      (*(v221 + 16))(v27, v65, v64);
      (*(v66 + 32))(v220, v27, v64);
      v67 = [v6 preferredContentSizeCategory];
      sub_769B20();

      sub_75D800();
      sub_75D830();
      sub_760810();
      sub_760800();
      v182 = sub_7670D0();
      swift_allocObject();
      v191 = sub_7670B0();
      v68 = objc_opt_self();
      v180 = v68;
      v69 = [v68 preferredFontForTextStyle:UIFontTextStyleBody];
      v193 = v6;
      v70 = sub_7653B0();
      v263[3] = v70;
      v71 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v263[4] = v71;
      v179 = v71;
      v72 = sub_B1B4(v263);
      v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = *(v70 - 8);
      v75 = *(v74 + 104);
      v181 = v74 + 104;
      v178 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v75(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
      sub_765C30();
      sub_BEB8(v263);
      v76 = v207;
      sub_762D00();
      sub_762CE0();
      v77 = v209;
      v208 = *(v208 + 8);
      (v208)(v76, v209);
      v78 = [v68 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v262[3] = v70;
      v262[4] = v71;
      v79 = sub_B1B4(v262);
      v75(v79, v73, v70);
      sub_765C30();
      sub_BEB8(v262);
      sub_762D00();
      sub_762CE0();
      v80 = v208;
      (v208)(v76, v77);
      v81 = [v180 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v261[3] = v70;
      v261[4] = v179;
      v82 = sub_B1B4(v261);
      v75(v82, v178, v70);
      sub_765C30();
      sub_BEB8(v261);
      sub_762D00();
      sub_762CE0();
      v80(v76, v77);
      v83 = v204;
      LODWORD(v209) = sub_246DC() & (v83 != 0);
      if (v209 == 1)
      {
        v84 = v182;
        v85 = objc_allocWithZone(sub_7671D0());
        v86 = v193;
        v87 = sub_7671C0();
        v88 = v200;
        sub_1ED18(v223, v200, &unk_94AE30, qword_7864D0);
        v89 = v216;
        v90 = *(v216 + 48);
        v91 = v217;
        v92 = v90(v88, 1, v217);
        v93 = v189;
        if (v92 == 1)
        {
          v94 = v201;
          _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
          if (v90(v88, 1, v91) != 1)
          {
            sub_10A2C(v88, &unk_94AE30, qword_7864D0);
          }
        }

        else
        {
          v94 = v201;
          (*(v89 + 32))(v201, v88, v91);
        }

        v98 = v87;
        sub_2185C(v204, v94, v98, v1, v2);

        (*(v89 + 8))(v94, v91);
        v95 = v84;
        swift_allocObject();
        v96 = sub_7670A0();
        v97 = v193;
      }

      else
      {
        v95 = v182;
        swift_allocObject();
        v96 = sub_7670B0();
        v97 = v193;
        v93 = v189;
      }

      v99 = v198;
      if ((sub_246DC() & (v99 != 0)) == 1)
      {
        sub_F7FC(v99, v175 & 1, v1, v2);
        swift_allocObject();
        v100 = sub_7670A0();
      }

      else
      {
        swift_allocObject();
        v100 = sub_7670B0();
      }

      v101 = v100;
      v93(v210, v226, v224);
      v260 = &protocol witness table for LayoutViewPlaceholder;
      v259 = v95;
      v11 = v191;
      v258 = v191;
      v257 = 0;
      *&v255[40] = 0u;
      v256 = 0u;
      sub_134D8(v263, v255);
      sub_134D8(v262, &v254);
      v253 = 0;
      v251 = 0u;
      v252 = 0u;
      v250 = 0;
      v248 = 0u;
      v249 = 0u;

      v102 = sub_7670C0();
      v247 = &protocol witness table for LayoutViewPlaceholder;
      v246 = v95;
      v245 = v102;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;
      v241 = 0;
      v239 = 0u;
      v240 = 0u;
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v235 = 0;
      v234 = 0u;
      *&v233[40] = 0u;
      sub_134D8(v261, v233);
      v232 = &protocol witness table for LayoutViewPlaceholder;
      v231 = v95;
      v229 = &protocol witness table for LayoutViewPlaceholder;
      v230 = v96;
      v228 = v95;
      v227 = v101;
      v103 = v211;
      sub_760830();
      v104 = sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v105 = swift_allocObject();
      v216 = xmmword_77D9F0;
      *(v105 + 16) = xmmword_77D9F0;
      *(v105 + 32) = v97;
      v106 = v97;
      v217 = v104;
      v107 = sub_7671E0();
      sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
      v27 = v213;
      sub_7665A0();

      (*(v212 + 8))(v103, v27);
      sub_BEB8(v261);
      sub_BEB8(v262);
      sub_BEB8(v263);
      (*(v221 + 8))(v220, v222);
      (*(v219 + 8))(v226, v224);
      sub_10A2C(v223, &unk_94AE30, qword_7864D0);
      v108 = sub_75BC70();
      if (v108 >> 62)
      {
        v39 = sub_76A860();
      }

      else
      {
        v39 = *(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8));
      }

      a1 = sub_75BCA0();
      if (a1)
      {
      }

      v6 = sub_75BC80();
      if (v6)
      {
      }

      v109 = sub_75BCF0();
      if (v109 >> 62)
      {
        v114 = v109;
        v115 = sub_76A860();
        v109 = v114;
        if (!v115)
        {
LABEL_55:

          v111 = a1 | v39;
          goto LABEL_56;
        }
      }

      else if (!*(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_55;
      }

      if ((v109 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8)))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
  {
    v45 = *(v44 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  sub_76A770();
LABEL_45:

  v110 = sub_765750();

  if (v110 >> 62)
  {
    v111 = sub_76A860();
  }

  else
  {
    v111 = *(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8));
  }

  if (a1 | v39)
  {
    if ((sub_760760() & 1) == 0)
    {
LABEL_64:

      (*(v205 + 8))(v218, v206);
      (*(v214 + 8))(v225, v215);
      return;
    }
  }

  else
  {
LABEL_56:
    if ((sub_760760() & 1) == 0 || !(v111 | v6))
    {
      goto LABEL_64;
    }
  }

  v116 = v195;
  sub_763F60();
  swift_getKeyPath();
  sub_75C7B0();

  v117 = v263[0];
  v118 = swift_allocObject();
  *(v118 + 16) = v216;
  *(v118 + 32) = v117;
  v119 = v117;
  v120 = sub_7671E0();
  sub_24128();
  v121 = v197;
  sub_7666E0();

  (*(v196 + 8))(v116, v121);
  v122 = sub_75BCA0();
  v123 = sub_75BC80();
  v124 = sub_75BC70();
  if (v124 >> 62)
  {
    v127 = v124;
    v128 = sub_76A860();
    v124 = v127;
    v125 = v177;
    if (v128)
    {
      goto LABEL_60;
    }

LABEL_71:

    v126 = 0;
    goto LABEL_72;
  }

  v125 = v177;
  if (!*(&dword_10 + (v124 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v124 & 0xC000000000000001) != 0)
  {
    v126 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v124 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_107;
    }

    v126 = *(v124 + 32);
  }

LABEL_72:
  v129 = sub_75BCF0();
  if (v129 >> 62)
  {
    v133 = v129;
    v130 = sub_76A860();
    v129 = v133;
  }

  else
  {
    v130 = *(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8));
  }

  v226 = v122;
  v223 = v123;
  v224 = v126;
  if (v130)
  {
    if ((v129 & 0xC000000000000001) != 0)
    {
      v222 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_109;
      }

      v222 = *(v129 + 32);
    }
  }

  else
  {

    v222 = 0;
  }

  v131 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v123 = v263[0];
  sub_3B9960(v125);

  v11 = sub_75BCA0();
  v122 = sub_75BC80();
  v132 = sub_75BC70();
  if (v132 >> 62)
  {
    v134 = v132;
    v135 = sub_76A860();
    v132 = v134;
    if (v135)
    {
LABEL_82:
      if ((v132 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v132 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = sub_76A770();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v136 = sub_75BCF0();
  if (v136 >> 62)
  {
    v138 = v136;
    v139 = sub_76A860();
    v136 = v138;
    if (v139)
    {
LABEL_91:
      if ((v136 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
        {
          v137 = *(v136 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v221 = sub_76A860();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v142 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v137 = sub_76A770();
      goto LABEL_94;
    }
  }

  else if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_91;
  }

  v137 = 0;
LABEL_97:
  if ((sub_760760() & 1) == 0)
  {

    v143 = v199;
    v144 = v174;
    (*(v199 + 104))(v174, enum case for LockupMediaLayout.DisplayType.none(_:), v176);
LABEL_136:
    type metadata accessor for LockupMediaView(0);
    v168 = sub_527DE4();
    swift_getObjectType();
    v169 = v225;
    v170 = v177;
    sub_161888(v226, v223, v224, v222, v177, v144, v168, v225, v1, v2);

    swift_unknownObjectRelease();

    (*(v143 + 8))(v144, v176);
    sub_10A2C(v170, &unk_948720, &unk_784970);
    (*(v205 + 8))(v218, v206);
    (*(v214 + 8))(v169, v215);
    return;
  }

  if (v122 | v11)
  {
    v145 = v173;
    sub_7666A0();

    v143 = v199;
    v146 = v176;
    (*(v199 + 104))(v145, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v176);
    v144 = v174;
    (*(v143 + 32))(v174, v145, v146);
    goto LABEL_136;
  }

  v141 = sub_55BABC(a1, v137, 0, 1, v140);
  v122 = v141;
  v123 = (v141 >> 62);
  if (v141 >> 62)
  {
    goto LABEL_112;
  }

  v221 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v142 = sub_759690();
LABEL_114:
  v147 = sub_55BE04(v142);

  LODWORD(v219) = v147;
  if (a1)
  {
    v148 = sub_759690();
  }

  else
  {
    v148 = 0;
  }

  v150 = v214;
  v149 = v215;
  v151 = v172;
  (*(v214 + 16))(v172, v225, v215);
  v152.n128_f64[0] = (*(v150 + 56))(v151, 0, 1, v149);
  v153 = sub_55C32C(v148, v151, v152);

  sub_10A2C(v151, &unk_94DF00, &unk_792100);
  if (v123)
  {
    v154 = sub_76A860();
  }

  else
  {
    v154 = *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8));
  }

  v155 = v194;
  if (!v154)
  {

    goto LABEL_127;
  }

  if ((v122 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_124:

    v156 = sub_765150();

    if (v156)
    {

      v143 = v199;
      v157 = v173;
      v158 = v176;
      (*(v199 + 104))(v173, enum case for LockupMediaLayout.DisplayType.landscape(_:), v176);
LABEL_135:
      v144 = v174;
      (*(v143 + 32))(v174, v157, v158);
      goto LABEL_136;
    }

LABEL_127:
    v159 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v160 = v199;
    v158 = v176;
    v220 = *(v199 + 104);
    (v220)(v155, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v176);
    v161 = sub_75C920();
    v217 = *(v160 + 8);
    (v217)(v155, v158);
    if (((v221 >= v161) & v153) != 0 || (v159 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v220)(v155, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v158), v162 = sub_75C920(), v163 = v217, (v217)(v155, v158), ((v221 >= v162) & v219) != 0) || (v159 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v220)(v155, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v158), v164 = sub_75C920(), v163(v155, v158), v221 >= v164))
    {
    }

    else
    {
      v159 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v220)(v155, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v158);
      v165 = sub_75C920();

      v163(v155, v158);
      if (v221 != v165)
      {
        v166 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v157 = v173;
        v167 = v173;
LABEL_134:
        (v220)(v167, v166, v158);
        v143 = v199;
        goto LABEL_135;
      }
    }

    v157 = v173;
    v167 = v173;
    v166 = v159;
    goto LABEL_134;
  }

  if (*(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_124;
  }

  __break(1u);
}

void (**sub_231844(void (**a1)(uint64_t, uint64_t, __n128), uint64_t a2))(uint64_t, uint64_t, __n128)
{
  v254 = a2;
  v347 = sub_758720();
  v3 = *(v347 - 8);
  __chkstk_darwin(v347);
  v301 = &v244 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v319 = &v244 - v6;
  __chkstk_darwin(v7);
  v318 = &v244 - v8;
  __chkstk_darwin(v9);
  v317 = &v244 - v10;
  v322 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v322);
  v321 = &v244 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v12 - 8);
  v256 = &v244 - v13;
  v323 = sub_766690();
  v356 = *(v323 - 8);
  __chkstk_darwin(v323);
  v282 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v283 = (&v244 - v16);
  v280 = sub_75C9A0();
  v355 = *(v280 - 8);
  __chkstk_darwin(v280);
  v320 = &v244 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v18 - 8);
  v281 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v337 = &v244 - v21;
  v341 = sub_75C930();
  v22 = *(v341 - 8);
  __chkstk_darwin(v341);
  v344 = (&v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v262 = &v244 - v25;
  __chkstk_darwin(v26);
  v311 = &v244 - v27;
  __chkstk_darwin(v28);
  v263 = &v244 - v29;
  __chkstk_darwin(v30);
  v349 = &v244 - v31;
  v290 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v354 = *(v290 - 8);
  __chkstk_darwin(v290);
  v289 = &v244 - v32;
  v288 = sub_760840();
  v353 = *(v288 - 8);
  __chkstk_darwin(v288);
  v287 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_760D90();
  v34 = *(v303 - 8);
  __chkstk_darwin(v303);
  v265 = &v244 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_762D10();
  v352 = *(v314 - 8);
  __chkstk_darwin(v314);
  v286 = &v244 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_75D850();
  v37 = *(v313 - 8);
  __chkstk_darwin(v313);
  v285 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v312 = &v244 - v40;
  v338 = sub_760820();
  v41 = *(v338 - 8);
  __chkstk_darwin(v338);
  v284 = &v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v346 = &v244 - v44;
  v45 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v45 - 8);
  v264 = &v244 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v324 = &v244 - v48;
  v296 = sub_760770();
  v49 = *(v296 - 8);
  __chkstk_darwin(v296);
  v302 = &v244 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_75DAB0();
  __chkstk_darwin(v51 - 8);
  v52 = sub_7656C0();
  v252 = *(v52 - 8);
  v253 = v52;
  __chkstk_darwin(v52);
  v257 = &v244 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DDB0();
  sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  if (!v394[0])
  {
    return result;
  }

  v351 = v3;
  v255 = v394[0];
  v398 = _swiftEmptyArrayStorage;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  sub_765660();
  sub_765560();
  v56 = v55;
  v350 = a1;
  sub_22FA80(a1);
  v58 = v57;
  v59 = sub_75DDA0();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v291 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
    if (!v291)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v291 = sub_76A860();
  if (v291)
  {
LABEL_5:
    v308 = (v41 + 2);
    v278 = (v37 + 16);
    v279 = (v34 + 56);
    v277 = (v37 + 32);
    v276 = UIFontTextStyleBody;
    v275 = (v352 + 8);
    v307 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v251 = (v34 + 32);
    v259 = (v34 + 8);
    v260 = (v34 + 48);
    v273 = (v353 + 1);
    v274 = UIFontTextStyleFootnote;
    v271 = (v41 + 1);
    v272 = (v37 + 8);
    v270 = v354 + 1;
    v261 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v294 = (v22 + 104);
    v258 = (v22 + 32);
    v249 = (v49 + 56);
    v250 = (v49 + 16);
    v345 = (v22 + 8);
    v343 = (v22 + 16);
    v267 = (v356 + 8);
    v268 = (v356 + 56);
    v266 = v355 + 1;
    v332 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v298 = bottom;
    v306 = xmmword_77D9F0;
    v353 = (v351 + 88);
    v333 = (v351 + 8);
    v336 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v295 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v248 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v246 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v245 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v352) = enum case for AppPlatform.watch(_:);
    v339 = v60 & 0xC000000000000001;
    v292 = v60 + 32;
    v293 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v302;
    v34 = v303;
    v62 = v296;
    v316 = v56;
    v315 = v58;
    v310 = v60;
    v37 = v291;
    v269 = a1;
    v247 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v339)
      {
        v41 = sub_76A770();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v293 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v292 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = sub_764EE0();
      v357 = v41;
      if (v64)
      {
        if (qword_93C668 != -1)
        {
          swift_once();
        }

        v65 = sub_75CF00();
        sub_BE38(v65, qword_99B898);
        sub_75CDD0();
        sub_765330();
        sub_769440();
        if (*(&dword_10 + (v398 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v398 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
          a1 = v269;
        }

        sub_769500();
      }

      v66 = sub_75BC90();
      swift_getKeyPath();
      sub_75C7B0();

      v67 = v394[0];
      v68 = sub_1BA624(v66, v394[0]);

      v69 = v68;
      v41 = v357;
      sub_10A0E4(v69);
      sub_75BCC0();
      v70 = sub_75BC70();
      if (v70 >> 62)
      {
        v136 = sub_76A860();

        if (!v136)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v71 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));

        if (!v71)
        {
          goto LABEL_6;
        }
      }

      if (sub_760760())
      {
        v72 = v34;
        v73 = sub_764EF0();
        v75 = v74;
        v76 = sub_764F70();
        v78 = v77;
        v79 = sub_764E90();

        v335 = v76;
        v334 = v78;
        v331 = v75;
        v328 = v73;
        if (v79 && (v80 = sub_75E5C0(), , v80))
        {
          v342 = sub_765720();
          v340 = v81;
        }

        else
        {
          v342 = 0;
          v340 = 0;
        }

        v356 = sub_75BC90();
        v355 = sub_75BCB0();
        v326 = sub_75BCD0();
        swift_getKeyPath();
        sub_75C7B0();

        v82 = v397;
        (*v279)(v324, 1, 1, v72);
        if (qword_93C3F8 != -1)
        {
          swift_once();
        }

        v83 = v338;
        v84 = sub_BE38(v338, qword_99B150);
        v348 = *v308;
        (v348)(v346, v84, v83);
        v85 = sub_769A00();
        v305 = v49;
        if (v85)
        {
          v86 = qword_946920;
          if (qword_93C440 != -1)
          {
            swift_once();
            v86 = qword_946920;
          }
        }

        else
        {
          v86 = qword_946938;
          if (qword_93C448 != -1)
          {
            swift_once();
            v86 = qword_946938;
          }
        }

        v87 = v313;
        v88 = sub_BE38(v313, v86);
        v89 = v285;
        (*v278)(v285, v88, v87);
        (*v277)(v312, v89, v87);
        v90 = [v82 preferredContentSizeCategory];
        sub_769B20();

        sub_75D800();
        sub_75D830();
        sub_760810();
        sub_760800();
        v330 = sub_7670D0();
        swift_allocObject();
        v351 = sub_7670B0();
        v91 = objc_opt_self();
        v329 = v82;
        v92 = v91;
        v327 = v91;
        v93 = [v91 preferredFontForTextStyle:v276];
        v94 = sub_7653B0();
        v395 = v94;
        v354 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v396 = v354;
        v95 = sub_B1B4(v394);
        v96 = *(*(v94 - 8) + 104);
        v97 = v307;
        v96(v95, v307, v94);
        sub_765C30();
        sub_BEB8(v394);
        v98 = v286;
        sub_762D00();
        sub_762CE0();
        v331 = *v275;
        v331(v98, v314);
        v99 = v274;
        v100 = [v92 preferredFontForTextStyle:v274];
        v393[3] = v94;
        v393[4] = v354;
        v101 = sub_B1B4(v393);
        v96(v101, v97, v94);
        sub_765C30();
        sub_BEB8(v393);
        sub_762D00();
        sub_762CE0();
        v102 = v314;
        v103 = v331;
        v331(v98, v314);
        v104 = [v327 preferredFontForTextStyle:v99];
        v392[3] = v94;
        v392[4] = v354;
        v105 = sub_B1B4(v392);
        v96(v105, v307, v94);
        sub_765C30();
        sub_BEB8(v392);
        sub_762D00();
        sub_762CE0();
        v103(v98, v102);
        v106 = v356;
        LODWORD(v354) = sub_246DC() & (v106 != 0);
        if (v354 == 1)
        {
          v107 = v330;
          v108 = objc_allocWithZone(sub_7671D0());
          v109 = v329;
          v110 = v329;
          v111 = sub_7671C0();
          v112 = v264;
          sub_1ED18(v324, v264, &unk_94AE30, qword_7864D0);
          v113 = *v260;
          v114 = v303;
          if ((*v260)(v112, 1, v303) == 1)
          {
            v115 = v265;
            _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
            if (v113(v112, 1, v114) != 1)
            {
              sub_10A2C(v112, &unk_94AE30, qword_7864D0);
            }
          }

          else
          {
            v115 = v265;
            (*v251)(v265, v112, v114);
          }

          v118 = v111;
          sub_2185C(v356, v115, v118, v56, v58);

          (*v259)(v115, v114);
          v116 = v107;
          swift_allocObject();
          v117 = sub_7670A0();
        }

        else
        {
          v116 = v330;
          swift_allocObject();
          v117 = sub_7670B0();
          v109 = v329;
        }

        v34 = v117;

        v119 = v355;
        if ((sub_246DC() & (v119 != 0)) == 1)
        {
          sub_F7FC(v119, v326 & 1, v56, v58);
          swift_allocObject();
          v120 = sub_7670A0();
        }

        else
        {
          swift_allocObject();
          v120 = sub_7670B0();
        }

        v121 = v120;
        (v348)(v284, v346, v338);
        v391 = &protocol witness table for LayoutViewPlaceholder;
        v390 = v116;
        v389 = v351;
        v388 = 0;
        *&v386[40] = 0u;
        v387 = 0u;
        sub_134D8(v394, v386);
        sub_134D8(v393, &v385);
        v384 = 0;
        v382 = 0u;
        v383 = 0u;
        v381 = 0;
        v379 = 0u;
        v380 = 0u;

        v122 = sub_7670C0();
        v378 = &protocol witness table for LayoutViewPlaceholder;
        v377 = v116;
        v376 = v122;
        v375 = 0;
        v373 = 0u;
        v374 = 0u;
        v372 = 0;
        v370 = 0u;
        v371 = 0u;
        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v366 = 0;
        v365 = 0u;
        *&v364[40] = 0u;
        sub_134D8(v392, v364);
        v363 = &protocol witness table for LayoutViewPlaceholder;
        v362 = v116;
        v361 = v34;
        v360 = &protocol witness table for LayoutViewPlaceholder;
        v359 = v116;
        v358 = v121;
        v123 = v287;
        sub_760830();
        v354 = sub_7671D0();
        sub_BD88(&unk_93F5C0, &unk_77C600);
        v124 = swift_allocObject();
        *(v124 + 16) = v306;
        *(v124 + 32) = v109;
        v125 = v109;
        v126 = sub_7671E0();
        sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
        v127 = v288;
        sub_7665A0();

        (*v273)(v123, v127);
        sub_BEB8(v392);
        sub_BEB8(v393);
        sub_BEB8(v394);
        (*v272)(v312, v313);
        (*v271)(v346, v338);
        sub_10A2C(v324, &unk_94AE30, qword_7864D0);
        v128 = v289;
        sub_763F60();
        v129 = swift_allocObject();
        *(v129 + 16) = v306;
        *(v129 + 32) = v125;
        v130 = v125;
        v131 = sub_7671E0();
        sub_24128();
        v49 = v290;
        sub_7666E0();

        (*v270)(v128, v49);
        v41 = sub_75BCA0();
        v348 = sub_75BC80();
        v132 = sub_75BC70();
        if (v132 >> 62)
        {
          v137 = v132;
          v133 = sub_76A860();
          v132 = v137;
        }

        else
        {
          v133 = *(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8));
        }

        v37 = v341;
        a1 = v344;
        v134 = v349;
        v22 = v302;
        if (v133)
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v354 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_205;
            }

            v354 = *(v132 + 32);
          }
        }

        else
        {

          v354 = 0;
        }

        v135 = sub_75BCF0();
        if (v135 >> 62)
        {
          v138 = v135;
          v139 = sub_76A860();
          v135 = v138;
          if (!v139)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v135 & 0xC000000000000001) != 0)
          {
            v355 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_206;
            }

            v355 = *(v135 + 32);
          }
        }

        else
        {
          if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_54;
          }

LABEL_62:

          v355 = 0;
        }

        v140 = sub_75BCA0();
        v34 = sub_75BC80();
        v141 = sub_75BC70();
        if (v141 >> 62)
        {
          v143 = v141;
          v144 = sub_76A860();
          v141 = v143;
          v340 = v41;
          if (!v144)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v141 & 0xC000000000000001) != 0)
          {
            v41 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_207;
            }

            v41 = *(v141 + 32);
          }
        }

        else
        {
          v142 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
          v340 = v41;
          if (v142)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v145 = sub_75BCF0();
        if (v145 >> 62)
        {
          v147 = v145;
          v148 = sub_76A860();
          v145 = v147;
          if (!v148)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v145 & 0xC000000000000001) != 0)
          {
            v146 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_208;
            }

            v146 = *(v145 + 32);
          }
        }

        else
        {
          if (*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_73;
          }

LABEL_78:

          v146 = 0;
        }

        if (sub_760760())
        {
          if (!(v34 | v140))
          {
            v150 = sub_55BABC(v41, v146, 0, 1, v149);
            v151 = v150;
            v152 = v150 >> 62;
            if (v150 >> 62)
            {
              v356 = sub_76A860();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v153 = sub_759690();
            }

            else
            {
              v356 = *(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8));
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v153 = 0;
            }

            v155 = sub_55BE04(v153);

            if (v41)
            {
              v156 = sub_759690();
            }

            else
            {
              v156 = 0;
            }

            v157 = v256;
            v158 = v296;
            (*v250)(v256, v22, v296);
            v159.n128_f64[0] = (*v249)(v157, 0, 1, v158);
            v160 = sub_55C32C(v156, v157, v159);

            sub_10A2C(v157, &unk_94DF00, &unk_792100);
            if (v152)
            {
              result = sub_76A860();
            }

            else
            {
              result = *(&dword_10 + (v151 & 0xFFFFFFFFFFFFFF8));
            }

            v37 = v341;
            v34 = v262;
            a1 = v344;
            if (result)
            {
              if ((v151 & 0xC000000000000001) == 0)
              {
                if (*(&dword_10 + (v151 & 0xFFFFFFFFFFFFFF8)))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              sub_76A770();
LABEL_103:

              v161 = sub_765150();

              v34 = v262;
              if (v161)
              {

                v162 = v263;
                (*v294)(v263, v295, v37);
                v41 = v283;
                v22 = v302;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v342) = v155;
            v163 = v248;
            v351 = *v294;
            (v351)(v34, v248, v37);
            v164 = sub_75C920();
            v165 = *v345;
            (*v345)(v34, v37);
            if (((v356 >= v164) & v160) != 0)
            {

              v162 = v263;
              (v351)(v263, v163, v37);
              v41 = v283;
              a1 = v344;
              v22 = v302;
              goto LABEL_116;
            }

            (v351)(v34, v247, v37);
            v166 = sub_75C920();
            v167 = v165;
            v165(v34, v37);
            v22 = v302;
            if (((v356 >= v166) & v342) == 0)
            {
              v170 = v246;
              (v351)(v34, v246, v37);
              v171 = sub_75C920();
              v167(v34, v37);
              if (v356 >= v171)
              {
              }

              else
              {
                v170 = v245;
                (v351)(v34, v245, v37);
                v172 = sub_75C920();

                v167(v34, v37);
                if (v356 != v172)
                {
                  v162 = v263;
                  v168 = v263;
                  v169 = v261;
                  goto LABEL_115;
                }
              }

              v162 = v263;
              v168 = v263;
              v169 = v170;
              goto LABEL_115;
            }

            v162 = v263;
            v168 = v263;
            v169 = v247;
LABEL_115:
            (v351)(v168, v169, v37);
            v41 = v283;
            a1 = v344;
LABEL_116:
            v49 = v305;
            v134 = v349;
            (*v258)(v349, v162, v37);
LABEL_117:
            v173 = sub_527DE4();
            (*v268)(v337, 1, 1, v323);
            v304 = v173;
            v309 = [v173 traitCollection];
            v396 = &protocol witness table for CGFloat;
            v395 = &type metadata for CGFloat;
            v394[0] = 0x4021000000000000;
            sub_134D8(v394, v393);
            v342 = *v343;
            v342(v311, v134, v37);
            if (v348 | v340)
            {
              goto LABEL_127;
            }

            v175 = sub_55BABC(v354, v355, 0, 1, v174);
            if (v175 >> 62)
            {
              v176 = v175;
              v177 = sub_76A860();
              v175 = v176;
              if (!v177)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v175 & 0xC000000000000001) != 0)
              {
                sub_76A770();
              }

              else
              {
                if (!*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_209;
                }
              }

              sub_765260();
              sub_7666A0();
            }

            else
            {
              if (*(&dword_10 + (v175 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              sub_7666A0();
            }

            sub_1ED18(v337, v281, &unk_948720, &unk_784970);
            sub_75C970();
            sub_BEB8(v394);
            v178 = v282;
            sub_75C980();
            sub_766660();
            (*v267)(v178, v323);
            if (v348)
            {

              sub_764BC0();
              v179 = sub_765330();
              v41 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
              v181 = *(v41 + 2);
              v180 = *(v41 + 3);
              if (v181 >= v180 >> 1)
              {
                v41 = sub_7B220((v180 > 1), v181 + 1, 1, v41);
              }

              (*v266)(v320, v280);
              sub_10A2C(v337, &unk_948720, &unk_784970);
              *(v41 + 2) = v181 + 1;
              v182 = &v41[2 * v181];
              *(v182 + 4) = v179;
              *(v182 + 40) = 0;
LABEL_132:
              v183 = v345;
              v184 = *(v41 + 2);
              if (v184)
              {
LABEL_133:
                v394[0] = _swiftEmptyArrayStorage;
                sub_76A7C0();
                v185 = 32;
                do
                {

                  sub_76A7A0();
                  sub_76A7D0();
                  sub_76A7E0();
                  sub_76A7B0();
                  v185 += 16;
                  --v184;
                }

                while (v184);
                swift_unknownObjectRelease();

                (*v345)(v349, v37);
                v186 = v394[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v183)(v134, v37);
              v186 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_10A0E4(v186);
              v34 = v303;
              v62 = v296;
              v37 = v291;
              a1 = v269;
              v41 = v357;
              goto LABEL_7;
            }

            if (v340)
            {
              v187 = v49;

              v188 = sub_765330();
              v189 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
              v191 = *(v189 + 2);
              v190 = *(v189 + 3);
              if (v191 >= v190 >> 1)
              {
                v189 = sub_7B220((v190 > 1), v191 + 1, 1, v189);
              }

              v183 = v345;

              (*v266)(v320, v280);
              sub_10A2C(v337, &unk_948720, &unk_784970);
              *(v189 + 2) = v191 + 1;
              v192 = &v189[2 * v191];
              *(v192 + 4) = v188;
              *(v192 + 40) = 0;
              v49 = v187;
              v184 = *(v189 + 2);
              if (v184)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v193 = sub_75C920();
            v195 = sub_55BABC(v354, v355, v193, 0, v194);
            sub_75C9C0();
            v335 = v196;
            v334 = v197;
            if (!(v195 >> 62))
            {
              result = *(&dword_10 + (v195 & 0xFFFFFFFFFFFFFF8));
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = sub_76A860();
            if (!result)
            {
LABEL_200:

              (*v266)(v320, v280);
              sub_10A2C(v337, &unk_948720, &unk_784970);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v331 = (v195 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v330 = v195;
            v329 = result;
            while (2)
            {
              if (v331)
              {
                v22 = sub_76A770();
              }

              else
              {
                v22 = *(v195 + 8 * v49 + 32);
              }

              v342(a1, v134, v37);
              v198 = (*v332)(a1, v37);
              if (v198 == v336)
              {
                (*v345)(a1, v37);
                LODWORD(v351) = 0;
                v199 = v354;
              }

              else
              {
                v199 = v354;
                if (v198 == v295)
                {
                  LODWORD(v351) = 0;
                }

                else
                {
                  v200 = sub_765150();
                  (*v345)(a1, v37);
                  LODWORD(v351) = v200;
                }
              }

              v356 = v22;
              if (v355)
              {
                v201 = sub_765750();
                if (!(v201 >> 62))
                {
                  if (*(&dword_10 + (v201 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v199)
                  {
LABEL_186:
                    if (qword_93C268 != -1)
                    {
                      swift_once();
                    }

                    v225 = qword_940CC0;
                    v233 = 0;
                    v232 = 0;
                    v209 = 5.0;
                    v235 = 1;
                    v208 = 1.0;
                    v228 = left;
                    v229 = top;
                    v231 = right;
                    v230 = v298;
                    v236 = 1;
LABEL_189:
                    v239 = v321;
                    sub_7666A0();

                    *v239 = v209;
                    *(v239 + 8) = v232;
                    *(v239 + 16) = v236 & 1;
                    *(v239 + 24) = v233;
                    *(v239 + 32) = v235 & 1;
                    *(v239 + 40) = v208;
                    *(v239 + 48) = v225;
                    *(v239 + 56) = v229;
                    *(v239 + 64) = v228;
                    *(v239 + 72) = v230;
                    *(v239 + 80) = v231;
                    sub_769DA0();
                    v203 = sub_765330();
                    sub_161D14(v239);
                    v56 = v316;
                    v58 = v315;
                    v37 = v341;
                    a1 = v344;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_7B220(0, *(v41 + 2) + 1, 1, v41);
                    }

                    v134 = v349;
                    v34 = *(v41 + 2);
                    v240 = *(v41 + 3);
                    if (v34 >= v240 >> 1)
                    {
                      v41 = sub_7B220((v240 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    *(v41 + 2) = v34 + 1;
                    v241 = &v41[2 * v34];
                    *(v241 + 4) = v203;
                    *(v241 + 40) = v351 & 1;
                    v195 = v330;
                    if (v329 == v49)
                    {

                      (*v266)(v320, v280);
                      sub_10A2C(v337, &unk_948720, &unk_784970);
                      v22 = v302;
                      v49 = v305;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  sub_759690();

                  v204 = v317;
                  sub_75A300();

                  v205 = *v353;
                  v206 = v347;
                  v207 = (*v353)(v204, v347);
                  v208 = 0.0;
                  v209 = 0.0;
                  if (v207 != v352)
                  {
                    (*v333)(v317, v206);
                    v209 = 5.0;
                  }

                  v328 = sub_75A350();
                  v325 = v210;
                  v211 = sub_75A340();
                  v213 = v212;

                  v214 = v318;
                  sub_75A300();
                  v215 = v347;

                  v216 = v205(v214, v215);
                  if (v216 != v352)
                  {
                    (*v333)(v318, v215);
                    v208 = 1.0;
                  }

                  v217 = v319;
                  sub_75A300();
                  v218 = v347;
                  v219 = v205(v217, v347);
                  v327 = v211;
                  v326 = v213;
                  if (v219 == v352)
                  {
                    if (qword_93C260 != -1)
                    {
                      swift_once();
                    }

                    v220 = qword_940CB8;
                  }

                  else
                  {
                    if (qword_93C268 != -1)
                    {
                      swift_once();
                    }

                    v220 = qword_940CC0;

                    (*v333)(v319, v218);
                  }

                  v221 = v301;
                  sub_75A300();
                  v222 = v205(v221, v218);
                  if (v222 == v352)
                  {
                    *&v223 = COERCE_DOUBLE(sub_75A340());
                    if (v224)
                    {
                      v225 = v220;
                      if (qword_93C250 != -1)
                      {
                        swift_once();
                      }

                      sub_BE38(v323, qword_99A2D8);
                      sub_766630();
                      v227 = v226;

                      v228 = 15.0;
                      v229 = v227 * 15.0;
                      v230 = v227 * 15.0;
                      v231 = 15.0;
                      v232 = v328;
                      v233 = v327;
                      goto LABEL_183;
                    }

                    v234 = *&v223;

                    v229 = v234;
                    v228 = v234;
                    v230 = v234;
                    v231 = v234;
                  }

                  else
                  {

                    (*v333)(v221, v218);
                    v228 = left;
                    v229 = top;
                    v231 = right;
                    v230 = v298;
                  }

                  v232 = v328;
                  v233 = v327;
                  v225 = v220;
LABEL_183:
                  v235 = v326;
                  v236 = v325;
                  goto LABEL_189;
                }

                v237 = v201;
                v238 = sub_76A860();
                v201 = v237;
                if (!v238)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v201 & 0xC000000000000001) != 0)
                {
                  sub_76A770();
                }

                else
                {
                  if (!*(&dword_10 + (v201 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_204;
                  }
                }

                sub_765390();
                sub_764BC0();
                v202 = sub_7651E0();

                if (v202)
                {
                  v203 = sub_765330();

                  goto LABEL_190;
                }

                v199 = v354;
              }

              break;
            }

            if (!v199)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v154 = v263;
          sub_7666A0();

          (*v294)(v154, v336, v37);
          (*v258)(v134, v154, v37);
        }

        else
        {

          (*v294)(v134, v261, v37);
        }

        v41 = v283;
        v49 = v305;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v242 = v398;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v242 = _swiftEmptyArrayStorage;
LABEL_213:
  v243._rawValue = v242;
  sub_75A070(v243);

  return (*(v252 + 8))(v257, v253);
}

id sub_2346A8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
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

id sub_23481C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v9 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton);
  if (v9)
  {
    [v9 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return [*(v8 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
}

void sub_2348F8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_2349F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
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
    sub_234E24(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
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
    sub_234E24(&qword_952550, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        sub_7591D0(v31, v22);
        sub_759210();
        sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A0C0();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  sub_7591D0(v32, v25);

  v26 = *(v15 + v23);
  sub_759210();
  sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_75A0C0();
}

uint64_t sub_234E24(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_234E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_234EA4(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_234EFC;
}

void sub_234EFC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_29D090(v2);
  }

  else
  {
    sub_29D090(*a1);
  }
}

uint64_t sub_234FC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_235194(&qword_94AE50, type metadata accessor for LargeLockupCollectionViewCell, &unk_78D2B0);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_23507C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_235194(&qword_94AE50, type metadata accessor for LargeLockupCollectionViewCell, &unk_78D2B0);

  return a3(ObjectType, v4);
}

uint64_t sub_235194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2351EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a6@<D6>, double a7@<D7>, double a8, double a9)
{
  v33[3] = a3;
  v13 = sub_764930();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7656A0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v34 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v33 - v21;
  v23 = sub_BD88(&qword_9438F8, &unk_787C30);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v25 = a1;
  v27 = v33 - v26;
  sub_235D60(v25, v33 - v26);
  sub_235D60(a2, &v27[*(v24 + 56)]);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v28 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v35)
  {
    v28 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v18 + 104))(v22, *v28, v17);
  swift_getKeyPath();
  sub_768750();

  v29 = (*(v14 + 88))(v16, v13);
  *&v33[1] = a6;
  *&v33[2] = a7;
  if (v29 == enum case for Shelf.ContentType.footnote(_:) || v29 == enum case for Shelf.ContentType.quote(_:) || v29 == enum case for Shelf.ContentType.framedArtwork(_:) || v29 == enum case for Shelf.ContentType.appShowcase(_:) || v29 == enum case for Shelf.ContentType.framedVideo(_:) || v29 == enum case for Shelf.ContentType.banner(_:) || v29 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_18;
  }

  if (v29 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    (*(v18 + 16))(v34, v22, v17);
    if (qword_93C230 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v29 == enum case for Shelf.ContentType.arcadeFooter(_:) || v29 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
LABEL_18:
    (*(v18 + 16))(v34, v22, v17);
    if (qword_93CF58 == -1)
    {
LABEL_19:

      sub_765670();
      (*(v18 + 8))(v22, v17);
      return sub_235DD4(v27);
    }

LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v30 = enum case for Shelf.ContentType.appPromotion(_:);
  v31 = v29;
  (*(v18 + 16))(v34, v22, v17);
  if (v31 == v30)
  {
    if (qword_93C6E0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_40DC7C(0.0);
  sub_765670();
  (*(v18 + 8))(v22, v17);
  sub_235DD4(v27);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_235890(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, double a12, double a13)
{
  v15 = sub_7656A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v28[-v20];
  v22 = sub_BD88(&qword_9438F8, &unk_787C30);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v28[-v24];
  sub_235D60(a10, &v28[-v24]);
  sub_235D60(a11, &v25[*(v23 + 56)]);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v26 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v28[15])
  {
    v26 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v16 + 104))(v21, *v26, v15);
  (*(v16 + 16))(v18, v21, v15);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v16 + 8))(v21, v15);
  return sub_235DD4(v25);
}

uint64_t sub_235B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_235D0C();

  return sub_75B530();
}

uint64_t sub_235C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_235D0C();

  return sub_75B520();
}

unint64_t sub_235D0C()
{
  result = qword_94AE58;
  if (!qword_94AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AE58);
  }

  return result;
}

uint64_t sub_235D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_963790, qword_77EBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_235DD4(uint64_t a1)
{
  v2 = sub_BD88(&qword_9438F8, &unk_787C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_235E40@<X0>(char a1@<W0>, char a2@<W2>, double *a3@<X8>)
{
  v6 = sub_75D850();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_940AD0, &unk_78F910);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_7664A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 166.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 238.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 24.0;
      *(a3 + 18) = &type metadata for Double;
      *(a3 + 19) = &protocol witness table for Double;
      a3[15] = 11.0;
      *(a3 + 23) = &type metadata for Double;
      *(a3 + 24) = &protocol witness table for Double;
      a3[20] = 24.0;
      *(a3 + 28) = &type metadata for Double;
      *(a3 + 29) = &protocol witness table for Double;
      a3[25] = 15.0;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v16 = sub_BE38(v6, qword_99B2A8);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_75D830();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v19;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      *(a3 + 48) = &type metadata for Double;
      *(a3 + 49) = &protocol witness table for Double;
      a3[45] = 12.0;
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_78D480;
      a3[38] = 24.0;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 200.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 330.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 21.0;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v37 = sub_7666D0();
      v77 = sub_BE38(v37, qword_99F9E8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_766CA0();
      *(a3 + 18) = v70;
      *(a3 + 19) = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_B1B4(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_766CB0();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_BD88(&qword_93FBE0, &unk_77EA70);
      v42 = v72;
      sub_7592E0();
      sub_759310();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      *(a3 + 28) = v70;
      *(a3 + 29) = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_B1B4(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_766CB0();
      v71 = v41;
      v41(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_BE38(v79, qword_99B2A8);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_75D830();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v52;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      *(a3 + 48) = v43;
      *(a3 + 49) = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_B1B4(v87);
      v46(v53, v15, v12);
      sub_766CB0();
      result = v71(v15, v12);
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_78D480;
      a3[38] = 24.0;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v21 = sub_7666D0();
      v77 = sub_BE38(v21, qword_99F9E8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_766CA0();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_B1B4(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_766CB0();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_BD88(&qword_93FBE0, &unk_77EA70);
      sub_7592E0();
      sub_759310();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_B1B4(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_766CB0();
      v70 = v25;
      v25(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_BE38(v79, qword_99B2A8);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_75D830();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_B1B4(v84);
      (v72)(v35, v15, v12);
      sub_766CB0();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v54 = sub_7666D0();
      v81 = sub_BE38(v54, qword_99F9E8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_766CA0();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_B1B4(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_766CB0();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_B1B4(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_766CB0();
      v60(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_BE38(v79, qword_99B2A8);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_75D830();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_B1B4(v84);
      v59(v67, v15, v12);
      sub_766CB0();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_78D490;
    *&v87[37] = xmmword_78D490;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_236D58@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_75D850();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v32 = sub_BE38(v8, qword_99B2A8);
      (*(v9 + 16))(v11, v32, v8);
      sub_75D830();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_10914(&v36, a3);
      *(a3 + 80) = xmmword_78D4E0;
      *(a3 + 96) = xmmword_78D4F0;
      v21 = xmmword_78D490;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v23 = sub_BE38(v8, qword_99B2A8);
    (*(v9 + 16))(v11, v23, v8);
    sub_75D830();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_78D500;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_78D4D0;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v27 = sub_BE38(v8, qword_99B2A8);
    (*(v9 + 16))(v11, v27, v8);
    sub_75D830();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_78D4C0;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_93C460 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v8, qword_99B2A8);
  (*(v9 + 16))(v11, v12, v8);
  sub_75D830();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_78D4A0;
  v21 = xmmword_78D4B0;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_237250(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = sub_BD88(&unk_95CF90, &unk_784980);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_93CA80 != -1)
    {
      swift_once();
    }

    v22 = qword_99CAA8;
  }

  else
  {
    if (qword_93CA78 != -1)
    {
      swift_once();
    }

    v22 = qword_99CA90;
  }

  v23 = a1;
  v24 = sub_BE38(v11, v22);
  sub_FCD60(v24, v13, v25);
  sub_2396A8(v13, v16, v26);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592F0();
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView] = sub_637704(v19);
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton] = sub_1DD00C(0);
  sub_75C560();
  v29 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_93D918 != -1)
    {
      swift_once();
    }

    v30 = qword_99F340;
  }

  else
  {
    if (qword_93D908 != -1)
    {
      swift_once();
    }

    v30 = qword_99F310;
  }

  v31 = sub_BE38(v5, v30);
  v32 = v40;
  (*(v6 + 16))(v40, v31, v5);
  (*(v6 + 32))(v10, v32, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_75C540();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton] = v29;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView;
  [*&v36[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v36 addSubview:*&v36[v38]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton]];
  [*&v36[v38] addSubview:v33];

  return v36;
}

uint64_t sub_237848()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_769A00();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_7699D0();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_235E40(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_BE70(0, &qword_93E550, UIView_ptr);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
      v84 = sub_75C560();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_239760(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_7699D0();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_236D58(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_BE70(0, &qword_93E550, UIView_ptr);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
      v54 = sub_75C560();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_23970C(v67);
    }

    sub_7664D0();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_237E40(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton);

    [v5 setAlpha:a2];
  }
}

id sub_237EC8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v152 = a8;
  v136 = a7;
  v151 = a6;
  v138 = a5;
  v137 = a4;
  v12 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v12 - 8);
  v131 = &v120 - v13;
  v132 = sub_768AB0();
  v133 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_765240();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_766690();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7652D0();
  __chkstk_darwin(v17 - 8);
  v150 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75DE30();
  v154 = *(v19 - 8);
  v155 = v19;
  __chkstk_darwin(v19);
  v153 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_7666D0();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v22 - 8);
  v148 = &v120 - v23;
  v145 = sub_7623A0();
  v141 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_9457F0, qword_783FD0);
  v146 = *(v25 - 8);
  v147 = v25;
  __chkstk_darwin(v25);
  v144 = &v120 - v26;
  v27 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v27 - 8);
  v142 = &v120 - v28;
  v29 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v29 - 8);
  v134 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v124 = &v120 - v32;
  v33 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v33 - 8);
  v35 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v120 - v37;
  v39 = sub_758ED0();
  v149 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v42 - 8);
  v44 = &v120 - v43;
  v45 = sub_75DE90();
  if (v45)
  {
    v46 = v45;
    v47 = sub_BD88(&unk_95CF90, &unk_784980);
    v48.n128_f64[0] = (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_5F8FA0(v48, v46, v44, v152);

    sub_10A2C(v44, &qword_944EA0, &unk_78A060);
  }

  sub_75DE40();
  if (!v49)
  {
    v149 = sub_75DE50();
    v122 = sub_75DE80();
    sub_75DE60();
    v54 = sub_75DE70();
    v55 = &v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
    v56 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
    v57 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock + 8];
    v58 = v138;
    *v55 = v137;
    v55[1] = v58;
    sub_F704(v56, v57);
    v59 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];

    v60 = sub_769210();

    [v59 setTitle:v60 forState:0];

    [v59 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v121 = v54;
    if (v54)
    {
      sub_75FE30();
      v61 = sub_75BD30();
      v62 = *(v61 - 8);
      (*(v62 + 56))(v38, 0, 1, v61);
      sub_239D8C(v38, v35);
      if ((*(v62 + 88))(v35, v61) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_93D918 != -1)
        {
          swift_once();
        }

        v63 = v140;
        v64 = sub_BE38(v140, qword_99F340);
        v65 = v139;
        v66 = v124;
        (*(v139 + 16))(v124, v64, v63);
        (*(v65 + 56))(v66, 0, 1, v63);
        sub_75C540();
        v68 = v152;
        v67 = v153;
LABEL_28:
        v83 = sub_BD88(&unk_948740, &unk_784920);
        v84 = v142;
        (*(*(v83 - 8) + 56))(v142, 1, 1, v83);
        v85 = v141;
        v86 = v145;
        (*(v141 + 104))(v143, enum case for OfferButtonSubtitlePosition.below(_:), v145);
        (*(v85 + 56))(v148, 1, 1, v86);
        sub_239D44(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v87 = v144;
        sub_760940();
        sub_1DFEBC(v121, v149, v122, v84, v87, v68, 0, 0);

        (*(v146 + 8))(v87, v147);
        sub_10A2C(v84, &unk_948730, &qword_788DD0);
        v75 = v154;
        goto LABEL_29;
      }

      (*(v62 + 8))(v35, v61);
    }

    else
    {
      v76 = sub_75BD30();
      (*(*(v76 - 8) + 56))(v38, 1, 1, v76);
      sub_10A2C(v38, &unk_9457E0, &qword_785640);
    }

    v67 = v153;
    if (v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] == 1)
    {
      v68 = v152;
      if (qword_93D918 != -1)
      {
        swift_once();
      }

      v77 = qword_99F340;
    }

    else
    {
      v68 = v152;
      if (qword_93D908 != -1)
      {
        swift_once();
      }

      v77 = qword_99F310;
    }

    v78 = v140;
    v79 = sub_BE38(v140, v77);
    v80 = v139;
    v81 = v135;
    (*(v139 + 16))(v135, v79, v78);
    v82 = v134;
    (*(v80 + 32))(v134, v81, v78);
    (*(v80 + 56))(v82, 0, 1, v78);
    sub_75C540();
    goto LABEL_28;
  }

  v50 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView;
  v52 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
  if (v52)
  {
    [v52 removeFromSuperview];
    v53 = *&v8[v51];
  }

  else
  {
    v53 = 0;
  }

  *&v8[v51] = v50;
  v69 = v50;

  if (v69)
  {
    [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v69];
  }

  v70 = *&v8[v51] != 0;
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton] setHidden:v70];
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton] setHidden:v70];
  [v8 setNeedsLayout];

  v71 = *&v8[v51];
  if (v71)
  {
    v72 = *(v71 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
    (*(v149 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_758EE0();
    swift_allocObject();
    v73 = v72;
    v74 = sub_758EA0();
    sub_4ED3B8(v74, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v67 = v153;
  v75 = v154;
LABEL_29:
  v88 = sub_2397B4(v9, v9, a1, a2);
  v90 = v89;
  sub_75DEA0();
  v91 = v155;
  v92 = (*(v75 + 88))(v67, v155);
  if (v92 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v75 + 96))(v67, v91);
    v93 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v93 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    sub_239D44(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
    v94 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v95 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v96 = v93;
    if (v95)
    {
      [v95 removeFromSuperview];
      v97 = *&v9[v94];
    }

    else
    {
      v97 = 0;
    }

    *&v9[v94] = v93;
    v112 = v93;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v92 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v75 + 96))(v67, v91);
    v98 = *v67;
    v99 = v67[1];
    v100 = v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] == 1;
    v101 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v102 = sub_4F28A4(v100);
    v103 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v104 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v105 = v102;
    if (v104)
    {
      [v104 removeFromSuperview];
      v104 = *&v9[v103];
    }

    *&v9[v103] = v102;
    v112 = v102;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

    *&v112[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_impressionsCalculator] = v136;

    *&v112[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon] = v98;

    v113 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v112[v113] = v99;

    *&v112[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader] = v151;

    sub_4F2E74(v88, v90);

    goto LABEL_47;
  }

  if (v92 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v75 + 96))(v67, v91);
    sub_75F470();
    v106 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_765260();
    v107 = v125;
    sub_7666A0();
    sub_766650();
    (*(v126 + 8))(v107, v127);
    v108 = v128;
    sub_765250();
    sub_765210();
    (*(v129 + 8))(v108, v130);
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v106 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    sub_239D44(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
    v109 = v131;
    sub_75F460();
    v110 = v133;
    v111 = v132;
    if ((*(v133 + 48))(v109, 1, v132) == 1)
    {
      sub_10A2C(v109, &unk_93FF30, &unk_77DB10);
    }

    else
    {
      v115 = v123;
      (*(v110 + 32))();
      if (v136)
      {
        sub_75F4B0();
      }

      (*(v133 + 8))(v115, v111);
    }

    v116 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v117 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v118 = v106;
    if (v117)
    {
      [v117 removeFromSuperview];
      v119 = *&v9[v116];
    }

    else
    {
      v119 = 0;
    }

    *&v9[v116] = v106;
    v112 = v106;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v112];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v75 + 8))(v67, v91);
  return [v9 setNeedsLayout];
}

unint64_t sub_239654()
{
  result = qword_94AEC8;
  if (!qword_94AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AEC8);
  }

  return result;
}

uint64_t sub_2396A8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2397B4(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_769A00();

  if (v14)
  {
    v64 = v9;
    v15 = a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_7699D0();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v88);
        [a2 bounds];
        v21 = CGRectGetWidth(v89);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_235E40(v18, v15, v68);
    v29 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v67 = type metadata accessor for LinkableHeaderView();
      v63 = &protocol witness table for UIView;
    }

    else
    {
      v67 = 0;
      v63 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v65 = v8;
    v66 = a1;
    if (v33)
    {
      v62 = sub_BE70(0, &qword_93E550, UIView_ptr);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v62 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v81 = &protocol witness table for UIView;
    v80 = v48;
    v79 = v47;
    v49 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
    v83 = type metadata accessor for OfferButton();
    v84 = &protocol witness table for UIView;
    v82 = v49;
    v50 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
    v86 = sub_75C560();
    v87 = &protocol witness table for UIView;
    v85 = v50;
    memcpy(v69, v68, 0x190uLL);
    v69[50] = v29;
    v70 = 0;
    v71 = 0;
    v72 = v67;
    v73 = v63;
    v74 = v33;
    v76 = 0;
    v75 = 0;
    v77 = v62;
    v78 = v34;
    v51 = v69[3];
    sub_B170(v69, v69[3]);
    v52 = v33;
    v53 = v47;
    v54 = v49;
    v55 = v50;
    v56 = v29;
    sub_33964(v51);
    v57 = v66;
    sub_766700();
    v58 = v65;
    v59 = *(v64 + 8);
    v59(v12, v65);
    sub_239DFC(v57, v69, a3, a4);
    v60 = v69[8];
    sub_B170(&v69[5], v69[8]);
    sub_33964(v60);
    sub_766700();
    v59(v12, v58);
    sub_239760(v69);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_7699D0();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v90);
        [a2 bounds];
        v28 = CGRectGetWidth(v91);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_236D58(v25, v22, v68, a3);
    v30 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_7670D0();
    v36 = v30;
    v37 = sub_7670C0();
    v69[42] = &protocol witness table for LayoutViewPlaceholder;
    v69[41] = v35;
    v69[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v69[47] = &protocol witness table for UIView;
    v69[46] = v39;
    v69[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v71 = &protocol witness table for UIView;
    v70 = v41;
    v69[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
    v43 = sub_75C560();
    v76 = &protocol witness table for UIView;
    v75 = v43;
    v72 = v42;
    memcpy(v69, v68, 0x108uLL);
    v69[33] = v30;
    v69[34] = 0;
    v69[35] = 0;
    v69[36] = v31;
    v69[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_23A184(a1, v69, a3, a4);
    sub_23970C(v69);
  }

  return a3;
}

uint64_t sub_239D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_239D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_9457E0, &qword_785640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_239DFC(uint64_t a1, void *a2, double a3, double a4)
{
  *&v32 = a2 + 35;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[23];
  sub_B170(a2 + 20, v12);
  sub_33964(v12);
  sub_766700();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = a2[18];
  sub_B170(a2 + 15, v16);
  sub_33964(v16);
  sub_766700();
  v18 = v17;
  v15(v11, v8);
  v19 = a2[28];
  sub_B170(a2 + 25, v19);
  sub_33964(v19);
  sub_766700();
  v21 = v20;
  v15(v11, v8);
  sub_134D8((a2 + 30), v41);
  LOBYTE(v19) = *(v32 + 32);
  v22 = *(v32 + 16);
  v31 = *v32;
  v32 = v22;
  sub_134D8((a2 + 40), &v44);
  sub_134D8((a2 + 45), &v45);
  v40[0] = v18;
  v40[1] = v14;
  v40[2] = v21;
  v40[3] = v14;
  v42 = v32;
  *&v41[40] = v31;
  v43 = v19;
  sub_23A450(v40, v36);
  sub_134D8((a2 + 60), &v37);
  sub_134D8((a2 + 65), &v38);
  sub_134D8((a2 + 70), &v39);
  v23 = a2[13];
  sub_B170(a2 + 10, v23);
  sub_33964(v23);
  sub_766700();
  v25 = v24;
  v15(v11, v8);
  sub_23A7B4(a1, v36, a3, a4);
  v27 = a4 - v25 - v26;
  sub_6D310((a2 + 50), &v33);
  if (v34)
  {
    sub_10914(&v33, v35);
    sub_B170(v35, v35[3]);
    sub_7665B0();
    v29 = v28;
    sub_23AABC(v36);
    sub_23AB10(v40);
    v27 = v27 - v29;
    sub_BEB8(v35);
  }

  else
  {
    sub_23AABC(v36);
    sub_23AB10(v40);
    sub_10A2C(&v33, &unk_943B10, &qword_77E080);
  }

  return v27;
}

double sub_23A184(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 80);
  v20 = *(a2 + 96);
  v21 = v12;
  sub_134D8(a2 + 112, v30);
  v13 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = v13;
  sub_134D8(a2 + 184, &v32);
  sub_134D8(a2 + 224, &v33);
  v29[1] = v20;
  v29[0] = v21;
  v31 = v18;
  *&v30[40] = v19;
  sub_23AB64(v29, v25);
  sub_134D8(a2 + 344, &v26);
  sub_134D8(a2 + 384, &v27);
  sub_134D8(a2 + 424, &v28);
  v14 = *(a2 + 24);
  sub_B170(a2, v14);
  sub_33964(v14);
  sub_766700();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_23A4AC(a1, v25, a3, a4);
  sub_6D310(a2 + 264, &v22);
  if (v23)
  {
    sub_10914(&v22, v24);
    sub_B170(v24, v24[3]);
    sub_7665B0();
    sub_BEB8(v24);
  }

  else
  {
    sub_10A2C(&v22, &unk_943B10, &qword_77E080);
  }

  v16 = *(a2 + 64);
  sub_B170((a2 + 40), v16);
  sub_33964(v16);
  sub_766700();
  v15(v11, v8);
  sub_23ABC0(v25);
  sub_23AC14(v29);
  return a3;
}

double sub_23A4AC(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 23, a2[26]);
  sub_7665B0();
  v10 = a2[21];
  sub_B170(a2 + 18, v10);
  sub_33964(v10);
  sub_766700();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_B170(a2 + 28, a2[31]);
  if ((sub_766540() & 1) == 0)
  {
    v12 = a2[7];
    sub_B170(a2 + 4, v12);
    sub_33964(v12);
    sub_766700();
    v11(v9, v6);
  }

  sub_B170(a2 + 33, a2[36]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 33, a2[36]);
    sub_7665B0();
  }

  sub_B170(a2 + 28, a2[31]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 33, a2[36]);
    if ((sub_766540() & 1) == 0)
    {
      v13 = a2[16];
      sub_B170(a2 + 13, v13);
      sub_33964(v13);
      sub_766700();
      v11(v9, v6);
    }
  }

  return a3;
}

double sub_23A7B4(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 24, a2[27]);
  sub_7665B0();
  v10 = a2[22];
  sub_B170(a2 + 19, v10);
  sub_33964(v10);
  sub_766700();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_B170(a2 + 29, a2[32]);
  if ((sub_766540() & 1) == 0)
  {
    v12 = a2[7];
    sub_B170(a2 + 4, v12);
    sub_33964(v12);
    sub_766700();
    v11(v9, v6);
  }

  sub_B170(a2 + 34, a2[37]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 34, a2[37]);
    sub_7665B0();
  }

  sub_B170(a2 + 29, a2[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 34, a2[37]);
    if ((sub_766540() & 1) == 0)
    {
      v13 = a2[17];
      sub_B170(a2 + 14, v13);
      sub_33964(v13);
      sub_766700();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_23AC68()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BAD0);
  sub_BE38(v4, qword_99BAD0);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F310);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_23AE40(uint64_t a1)
{
  v36 = a1;
  v2 = sub_766CA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton(0);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v6, qword_99F310);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_93C718 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_BE38(v2, qword_99BAD0);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton) = sub_4FF328(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton) = sub_4FF328(v9, v5);
  v15 = v36;
  sub_23BD1C(v36, v37);
  v16 = sub_51D0AC(v37);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v24 = v23;
  v25 = sub_76A0F0();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton];
  v31 = sub_76A0F0();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_23BD78(v15);
  return v20;
}

id sub_23B2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton];
  sub_75E910();
  sub_764C60();
  v8 = v7;

  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_99E150];
  v12 = *&v6[qword_99E150];
  v13 = *&v6[qword_99E150 + 8];
  *v11 = sub_23B9A0;
  v11[1] = v10;

  sub_F704(v12, v13);

  v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView];
  sub_6E2930(v6, 0x4072C00000000000, 0);
  v15 = &unk_90D000;
  [v3 setNeedsLayout];
  v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v18 = *&v14[v17];

  v19 = sub_6E2D34(v16, v18);

  if (v19)
  {
    v20 = swift_beginAccess();
    __chkstk_darwin(v20);
    result = sub_23B9D8(&v14[v17], sub_23BDCC);
    v22 = *(*&v14[v17] + 16);
    if (v22 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_4A7D30(result, v22);
    swift_endAccess();
    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      v25 = a2;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v26 = v14;
      v27 = sub_76A1C0();

      if (v27)
      {
        [v16 removeFromSuperview];
      }

      a2 = v25;
      v15 = &unk_90D000;
    }
  }

  [v3 v15[463]];
  if (sub_75E900())
  {
    sub_764C60();
    v28 = a2;
    if (v29)
    {
      v30 = sub_769210();
    }

    else
    {
      v30 = 0;
    }

    [v16 setTitle:v30 forState:0];

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = &v16[qword_99E150];
    v41 = *&v16[qword_99E150];
    v42 = *&v16[qword_99E150 + 8];
    *v40 = sub_23BBA4;
    v40[1] = v39;

    sub_F704(v41, v42);

    sub_6E2930(v16, 0x4072C00000000000, 0);
    [v3 v15[463]];

    a2 = v28;
    goto LABEL_21;
  }

  v31 = *&v14[v17];

  v32 = sub_6E2D34(v16, v31);

  if (!v32)
  {
LABEL_18:
    [v3 v15[463]];
LABEL_21:
    sub_5D0ACC(a1, a2);
    return [v3 v15[463]];
  }

  v33 = swift_beginAccess();
  __chkstk_darwin(v33);
  result = sub_23B9D8(&v14[v17], sub_23B9D0);
  v34 = *(*&v14[v17] + 16);
  if (v34 >= result)
  {
    sub_4A7D30(result, v34);
    swift_endAccess();
    v35 = [v16 superview];
    if (v35)
    {
      v36 = v35;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v37 = v14;
      v38 = sub_76A1C0();

      if (v38)
      {
        [v16 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_23B7E8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23B878()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_delegate;

  return sub_13238(v1);
}

uint64_t sub_23B968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_23B9D8(double **a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1 + 2);
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(*&v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_23BBD4(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_23BC44(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_23BBD4(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_23BBD4(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_45D588(v4);
          }

          result = sub_23BCAC(v16, &v4[11 * v3 + 4]);
          if (v11 >= *(v4 + 2))
          {
            goto LABEL_29;
          }

          result = sub_23BCAC(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = (v4 + 2);
      v12 = *(v4 + 2);
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941A68, &qword_781088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC44(uint64_t a1)
{
  v2 = sub_BD88(&qword_941A68, &qword_781088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BCAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941A68, &qword_781088);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_23BDD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_75AC60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_75AC20() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  sub_75AC80();
  v15 = [a7 traitCollection];
  sub_75AC40();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_23BF0C()
{
  v0 = sub_75AC60();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AC80();
  sub_21F164(v2);
  v3 = sub_75AC70();
  sub_21FC90(v3);
}

uint64_t sub_23C044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C08C(uint64_t a1)
{
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_78D690;
  *(v2 + 32) = sub_23CE20();
  *(v2 + 40) = sub_23C1FC(a1);
  *(v2 + 48) = sub_23D2B0();
  return v2;
}

void sub_23C104(char a1)
{
  byte_94AF68 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_23C1D0(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23C1FC(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6C0;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_23C520;
  *(v8 + 112) = 0;
  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  sub_76A6E0();
  *(v7 + 32) = v8;
  v14 = v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  strcpy((v17 + 56), "Show Recents");
  *(v17 + 69) = 0;
  *(v17 + 70) = -5120;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = sub_23D948;
  *(v17 + 104) = v16;

  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  sub_76A6E0();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v13(v5, v27);
  *(v21 + 16) = v22;
  *(v21 + 24) = v24;
  strcpy((v21 + 32), "Search Focus");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = v14;
  return v21;
}

void sub_23C520(__n128 a1)
{
  sub_762840();
  sub_768880();
  sub_762830();
}

void sub_23C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23D950(a3);
  }
}

uint64_t sub_23C5C4()
{
  if (qword_93C720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_94AF80;
  v9 = *&qword_94AF90;
  v7 = xmmword_94AF70;
  v10 = qword_94AFA0;
  v11 = xmmword_94AF70;
  v0 = qword_94AF90;
  sub_B2F4C(&v11, &v6);
  v1 = v0;

  v2 = sub_23CBB4();
  v4 = v3;
  sub_B2FFC(&v11);

  if (v4)
  {
    return 0x20746C7561666544;
  }

  v6 = v2;
  return sub_76A910();
}

void sub_23C6DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        sub_6A8C20(a2, a3, 10);
        v9 = v29;
        v13 = v30;

LABEL_65:
        if (v13)
        {
          v9 = 0;
        }

        goto LABEL_67;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v31[0] = a2;
        v31[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v20 = v31 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v25 = v31;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v14 = v31 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_76A790();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v17 = v7 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v9 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v4)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v23 = *v7 - 48;
                if (v23 > 9)
                {
                  goto LABEL_63;
                }

                v24 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_63;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v9 = 0;
          LOBYTE(v4) = 1;
          goto LABEL_64;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_63;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_63;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v4) = 0;
LABEL_64:
            v13 = v4;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v9 = 0;
  v13 = 1;
LABEL_67:
  if (qword_93C720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23CCBC(v9, v13 & 1);
  swift_endAccess();
}