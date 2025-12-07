char *sub_3FAEF4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_75C840();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_396E8();
  v9 = sub_76A000();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

void sub_3FB0FC()
{
  v1 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_953E80, &qword_79C180);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v9 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_963BB0) isHidden])
  {
    sub_BD88(&qword_943A50, &qword_783318);
    sub_763CD0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
    v9 = v7;
    sub_3FC280(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60, &qword_783320);
    sub_273628();
    sub_76A5A0();
  }

  else
  {
    sub_75C790();
    sub_768B30();
    sub_3FC1FC();
    sub_768AF0();
    sub_BD88(&qword_943A50, &qword_783318);
    sub_763CD0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
    v9 = v8;
    sub_3FC280(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60, &qword_783320);
    sub_273628();
    sub_76A5A0();
    (*(v3 + 8))(v6, v2);
  }
}

void sub_3FB4F4(void *a1, double a2)
{
  v4 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  sub_2E380C(3, 0, 0, a1, a2, 0, 1, v4);
}

uint64_t sub_3FB564@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_3FB5C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_3FB6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3FC280(&qword_941648, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_79C0D0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3FB74C(uint64_t a1)
{
  result = sub_3FC280(&qword_953E60, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_79C0A8);
  *(a1 + 8) = result;
  return result;
}

double sub_3FB7EC(uint64_t a1)
{
  v38 = sub_7656C0();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_767030();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = sub_766D70();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_953E68, &qword_79C118);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  sub_75A2B0();
  sub_3FC280(&qword_953E70, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  sub_75C750();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_3FC1FC();
  v32[2] = a1;
  sub_75C780();
  sub_769030();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = sub_75A290();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_7670D0();
  swift_allocObject();
  v39 = sub_767090();
  sub_75A2A0();
  sub_767020();
  if (qword_93D6F0 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  sub_BE38(v19, qword_99ECC8);
  sub_766FF0();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  sub_767010();
  v20(v8, v22);
  sub_766D50();
  v23 = v40;
  sub_766D90();
  type metadata accessor for ProductEditorsChoiceView(0);
  v42[5] = v39;
  sub_7665D0();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_B1B4(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = sub_75A280();
  sub_7227BC((v27 & 1) == 0, v43);
  sub_BEB8(v42);
  sub_BEB8(v41);
  sub_B170(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  sub_75C7B0();

  sub_765630();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  sub_75C7B0();

  v29 = v42[0];
  sub_7673F0();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_BEB8(v43);
  return v16;
}

double sub_3FBE34(__n128 a1)
{
  v1 = sub_75B660();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  v7 = sub_BD88(&unk_94F1F0, &qword_782290);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  v10 = sub_BD88(&qword_953E68, &qword_79C118);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23[-v12];
  sub_75A2B0();
  sub_3FC280(&qword_953E70, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  sub_75C750();
  v15 = v32;
  if (v32)
  {
    v25 = v3;
    v26 = v1;
    v27 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_3FC1FC();
    sub_75C780();
    sub_769030();
    if (v31)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_75A290() ^ 1;
    }

    v24 = v16;
    (*(v11 + 8))(v13, v10);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    v17 = v29;
    sub_768750();

    (*(v28 + 8))(v9, v17);
    v18 = v30;
    v19 = v25;
    v20 = v26;
    (*(v30 + 104))(v25, enum case for ShelfBackground.editorsChoice(_:), v26);
    v21 = sub_75B650();
    v22 = *(v18 + 8);
    v22(v19, v20);
    v22(v6, v20);
    sub_692EEC(v15, v24 & 1, v21 & 1);
  }

  return result;
}

unint64_t sub_3FC1FC()
{
  result = qword_953E78;
  if (!qword_953E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E78);
  }

  return result;
}

uint64_t sub_3FC280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_3FC2DC()
{
  result = qword_953E88;
  if (!qword_953E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E88);
  }

  return result;
}

unint64_t sub_3FC334()
{
  result = qword_953E90;
  if (!qword_953E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E90);
  }

  return result;
}

uint64_t sub_3FC388@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_766690();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v9 = sub_75D510();
  sub_BE38(v9, qword_99D278);
  sub_75D500();
  sub_766660();
  (*(v6 + 8))(v8, v5);
  sub_7601D0();
  v10 = sub_7601F0();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

void sub_3FC528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_764D80();
    if (v9)
    {
      v10 = v9;
      v11 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

double sub_3FC6D8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v8 = sub_75D510();
  sub_BE38(v8, qword_99D278);
  sub_75D530();
  sub_3FDCAC(&qword_94F368, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v9 = sub_767510();
  sub_BE38(v9, qword_99D290);

  sub_769DD0();
  return result;
}

id sub_3FC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v178 = a3;
  v175 = sub_75CA40();
  v177 = *(v175 - 8);
  __chkstk_darwin(v175);
  v169 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v168 = &v159 - v8;
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v160 = &v159 - v10;
  v170 = sub_764CF0();
  v167 = *(v170 - 8);
  __chkstk_darwin(v170);
  v161 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v159 - v13;
  v15 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v15 - 8);
  v165 = &v159 - v16;
  v17 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v17 - 8);
  v174 = &v159 - v18;
  v19 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v19 - 8);
  v173 = &v159 - v20;
  v21 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v21 - 8);
  v172 = &v159 - v22;
  v23 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v23 - 8);
  v164 = &v159 - v24;
  v25 = sub_763750();
  v162 = *(v25 - 8);
  __chkstk_darwin(v25);
  v163 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v27 - 8);
  v176 = (&v159 - v28);
  v29 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v29 - 8);
  v31 = &v159 - v30;
  v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel];
  sub_75A200();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel];
  sub_75A1D0();
  if (v36)
  {
    v37 = sub_769210();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel];
  sub_75A210();
  if (v39)
  {
    v40 = sub_769210();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_75A1C0();
  sub_355FD4(v41);
  v42 = sub_75A1A0();
  v166 = v14;
  if (v42)
  {
    v179 = v42;
    sub_764C80();
    sub_768900();
    sub_3FDCAC(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_768820();

    v43 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_278AC(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_75A1F0())
  {
    v47 = sub_7651A0();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_4AA084();
  v50 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    sub_7688F0();
    v52 = v179;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_26CAC0(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_26CC24(v57);
  }

  v61 = sub_75A1E0();
  v62 = &unk_90D000;
  if (v61)
  {
    v63 = v61;
    v159 = v4;
    v64 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView];
    v65 = v162;
    v66 = *(v162 + 104);
    v66(v163, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v164;
    v66(v164, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_3FDCAC(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v68 = v176;
    sub_760940();
    v69 = sub_BD88(&unk_948740, &unk_784920);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    v71 = sub_764EE0();
    if (v71)
    {
    }

    v164 = v46;
    [v70 setHidden:v71 == 0];
    v163 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v73 = sub_758C70();
    v74 = v172;
    (*(*(v73 - 8) + 56))(v172, 1, 1, v73);
    v75 = sub_75BD30();
    v76 = v173;
    (*(*(v75 - 8) + 56))(v173, 1, 1, v75);
    v77 = sub_BD88(&unk_9457F0, qword_783FD0);
    v78 = v174;
    (*(*(v77 - 8) + 56))(v174, 1, 1, v77);
    v79 = sub_765870();
    v80 = v165;
    (*(*(v79 - 8) + 56))(v165, 1, 1, v79);
    sub_4A18A4(v63, v72, v176, v178, 1, 0, v74, v76, v80, v78);
    sub_10A2C(v80, &unk_9457D0, &unk_785630);
    v72[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1FD89C();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v171 = a1;
    v88 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden];
    v90 = v166;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10A2C(v174, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v173, &unk_9457E0, &qword_785640);
    sub_10A2C(v172, &unk_94A780, &unk_788DC0);
    sub_764F00();
    v94 = sub_764DE0();
    v96 = v95;
    v97 = sub_764E40();
    v99 = v98;
    v100 = sub_764E00();
    v174 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v173 = v94;
      v102 = v167;
      (*(v167 + 16))(v161, v90, v170);
      sub_BD88(&unk_944300, &qword_77DEE0);
      sub_768900();
      sub_768ED0();
      v172 = v97;
      v104 = v179;
      v103 = v180;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v161, v173, v96, v172, v99, v101 & 1, v64, &off_884798, v104, v103);
      (*(v102 + 8))(v90, v170);
      sub_10A2C(v176, &unk_948730, &qword_788DD0);
      v107 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v111 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v111) = 0;

      v112 = sub_11EE80(0, 0);
      (*(v167 + 8))(v90, v170, v112);
      sub_10A2C(v176, &unk_948730, &qword_788DD0);
    }

    v113 = v177;
    v114 = v163;
    v115 = *(*&v163[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
    if (v115)
    {
      v116 = qword_93D5A8;
      v117 = v115;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_7666D0();
      v119 = sub_BE38(v118, qword_99E908);
      v120 = *(v118 - 8);
      v121 = v160;
      (*(v120 + 16))(v160, v119, v118);
      (*(v120 + 56))(v121, 0, 1, v118);
      sub_75BA40();
    }

    v122 = v168;
    sub_75A1B0();
    v123 = sub_75CA20();
    v126 = *(v113 + 8);
    v125 = v113 + 8;
    v124 = v126;
    (v126)(v122, v175);
    v127 = *(*&v114[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    if (v123 == 2)
    {
      v128 = objc_opt_self();
      v129 = v127;
      v130 = [v128 whiteColor];
    }

    else
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v131 = v127;
      v130 = sub_76A0F0();
    }

    v132 = v130;
    [v127 setTintColor:v130];

    [v64 setHidden:0];
    v133 = v169;
    sub_75A1B0();
    v134 = sub_75CA20();
    v135 = v175;
    (v124)(v133, v175);
    [v64 setOverrideUserInterfaceStyle:v134];
    [*(*&v114[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v136 = *(*&v114[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v137 = v136;
    v138 = sub_769FD0();
    v176 = v124;
    v139 = v138;
    v140 = [v138 colorWithAlphaComponent:0.7];
    v177 = v125;
    v141 = v140;

    [v137 setTextColor:v141];
    v142 = *(*&v114[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    v143 = sub_769FD0();
    v144 = [v143 colorWithAlphaComponent:0.7];

    [v142 setTextColor:v144];
    v145 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
    v146 = sub_769FD0();
    v147 = [v146 colorWithAlphaComponent:0.7];

    [v145 setTextColor:v147];
    v62 = &unk_90D000;
    [v64 setNeedsLayout];
    v148 = swift_allocObject();
    v149 = v159;
    swift_unknownObjectWeakInit();
    v150 = swift_allocObject();
    v151 = v174;
    *(v150 + 2) = v148;
    *(v150 + 3) = v151;
    *(v150 + 4) = v178;
    v152 = &v149[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v153 = *&v149[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v154 = *&v149[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v152 = sub_3FDCA0;
    v152[1] = v150;

    sub_F704(v153, v154);

    v155 = v164;
    [v164 setHidden:0];
    sub_75A1B0();
    v156 = sub_75CA20();
    (v176)(v133, v135);
    v157 = v155;
    v4 = v149;
    [v157 setOverrideUserInterfaceStyle:v156];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v110 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_F704(v109, v110);
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_357860();
  return [v4 v62[463]];
}

uint64_t sub_3FDC20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3FDC58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3FDCAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_3FDCF4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v2 = sub_75D510();
  sub_BE38(v2, qword_99D278);
  sub_75D530();
  sub_3FDCAC(&qword_94F368, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v3 = sub_767510();
  sub_BE38(v3, qword_99D290);
  sub_769DD0();
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:v5];
  v10 = [v8 absoluteDimension:v7];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [objc_opt_self() itemWithLayoutSize:v11];
  v13 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77D9F0;
  *(v14 + 32) = v12;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v15 = v12;
  isa = sub_769450().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v11 subitems:isa];

  return v17;
}

uint64_t sub_3FDFBC@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_BD88(&qword_94B998, &qword_78EAE8);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_BD88(&qword_94B9A0, &unk_78EAF0);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_75B660();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_BD88(&qword_93F918, &unk_7926C0);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_BD88(&qword_951BE0, &unk_782280);
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
  v26 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_BD88(&unk_94F1F0, &qword_782290);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_764930();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_75DAA0();
  swift_getKeyPath();
  v143 = v45;
  sub_768750();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  (v46)(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_75DA50();
  sub_10A2C(v32, &qword_963790, qword_77EBC0);
  v142 = v35;
  sub_1ED18(v35, v48, &qword_963790, qword_77EBC0);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10A2C(v48, &qword_963790, qword_77EBC0);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_768750();

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
  sub_1ED18(v54, &v58[v57], &qword_951BE0, &unk_782280);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_75DAA0();
    swift_getKeyPath();
    v63 = v135;
    sub_768750();

    v134 = v46;
    (v46)(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_75B650();
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
      sub_10A2C(v145, &qword_951BE0, &unk_782280);
      sub_10A2C(v142, &qword_963790, qword_77EBC0);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10A2C(v71 + v59, &qword_951BE0, &unk_782280);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_1ED18(v71 + v59, v130, &qword_951BE0, &unk_782280);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_1ED18(v142, v123, &qword_963790, qword_77EBC0);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10A2C(v86, &qword_963790, qword_77EBC0);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_768750();

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
        sub_1ED18(v101, v125, &qword_94B9A0, &unk_78EAF0);
        sub_1ED18(v97, v102 + v100, &qword_94B9A0, &unk_78EAF0);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10A2C(v97, &qword_94B9A0, &unk_78EAF0);
          sub_10A2C(v131, &qword_94B9A0, &unk_78EAF0);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10A2C(v102, &qword_94B9A0, &unk_78EAF0);
LABEL_44:
            if (qword_93DD10 != -1)
            {
              swift_once();
            }

            v115 = sub_766CA0();
            v116 = sub_BE38(v115, qword_99FE78);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_B1B4(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_1ED18(v102, v120, &qword_94B9A0, &unk_78EAF0);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_401D54(&qword_9439F8, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
            LODWORD(v144) = sub_7691C0();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10A2C(v128, &qword_94B9A0, &unk_78EAF0);
            sub_10A2C(v104, &qword_94B9A0, &unk_78EAF0);
            v114(v105, v88);
            sub_10A2C(v102, &qword_94B9A0, &unk_78EAF0);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10A2C(v128, &qword_94B9A0, &unk_78EAF0);
          sub_10A2C(v104, &qword_94B9A0, &unk_78EAF0);
          (*(v138 + 8))(v105, v88);
        }

        sub_10A2C(v102, &qword_94B998, &qword_78EAE8);
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
    sub_10A2C(v145, &qword_951BE0, &unk_782280);
    sub_10A2C(v142, &qword_963790, qword_77EBC0);
    (*(v82 + 8))(v143, v83);
    return sub_10A2C(v71, &qword_93F918, &unk_7926C0);
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
      sub_1ED18(v71 + v59, v126, &qword_951BE0, &unk_782280);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10A2C(v145, &qword_951BE0, &unk_782280);
        sub_10A2C(v142, &qword_963790, qword_77EBC0);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_1ED18(v145, v129, &qword_951BE0, &unk_782280);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10A2C(v91, &qword_951BE0, &unk_782280);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_93E208 != -1)
      {
        swift_once();
      }

      if (sub_666CB0(v92, qword_9A0940))
      {
        if (qword_93DCF8 != -1)
        {
          swift_once();
        }

        v93 = sub_766CA0();
        v94 = sub_BE38(v93, qword_99FE30);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_B1B4(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10A2C(v90, &qword_951BE0, &unk_782280);
        sub_10A2C(v142, &qword_963790, qword_77EBC0);
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
    sub_1ED18(v71 + v57, v121, &qword_951BE0, &unk_782280);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10A2C(v71 + v59, &qword_951BE0, &unk_782280);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v108 = sub_766CA0();
  sub_BE38(v108, qword_99FE48);
  sub_766C80();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10A2C(v145, &qword_951BE0, &unk_782280);
  sub_10A2C(v142, &qword_963790, qword_77EBC0);
  return (v107)(v143, v81);
}

uint64_t sub_3FF1C4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v165 = a2;
  v4 = sub_75B660();
  v157 = *(v4 - 8);
  v158 = v4;
  __chkstk_darwin(v4);
  v156 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = &v143 - v7;
  v8 = sub_7656C0();
  v151 = *(v8 - 8);
  v152 = v8;
  __chkstk_darwin(v8);
  v150 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_BD88(&qword_93F918, &unk_7926C0);
  __chkstk_darwin(v164);
  v168 = &v143 - v10;
  v11 = sub_764930();
  v12 = *(v11 - 8);
  v166 = v11;
  v167 = v12;
  __chkstk_darwin(v11);
  v163 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_94F1F0, &qword_782290);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v155 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v143 - v18;
  v20 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v20 - 8);
  v22 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v143 - v24;
  __chkstk_darwin(v26);
  v28 = &v143 - v27;
  v29 = sub_BD88(&qword_951BE0, &unk_782280);
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
  sub_75DA50();
  sub_10A2C(v25, &qword_963790, qword_77EBC0);
  sub_2C88C(v22, v28);
  if ((*(v15 + 48))(v28, 1, v14) == 1)
  {
    sub_10A2C(v28, &qword_963790, qword_77EBC0);
    v56 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v15 + 8))(v28, v14);
    v56 = 0;
  }

  v57 = v167;
  v58 = v55;
  v59 = v55;
  v60 = v166;
  (*(v167 + 56))(v58, v56, 1, v166);
  sub_75DAA0();
  swift_getKeyPath();
  v61 = v163;
  sub_768750();

  v62 = *(v15 + 8);
  v62(v19, v14);
  v63 = v168;
  v64 = v61;
  v65 = *(v164 + 48);
  (*(v57 + 32))(v168, v64, v60);
  v164 = v59;
  sub_1ED18(v59, &v63[v65], &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v63[v65], v161, &qword_951BE0, &unk_782280);
      v73 = v66(v72, v60);
      v162 = v72;
      if (v73 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_93DD00 != -1)
        {
          swift_once();
        }

        v74 = sub_766CA0();
        sub_BE38(v74, qword_99FE48);
        sub_766C80();
        v75 = v165;
        *(v165 + 3) = &type metadata for CGFloat;
        *(v75 + 4) = &protocol witness table for CGFloat;
        *v75 = v76;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v139 = sub_766CA0();
    v140 = sub_BE38(v139, qword_99FE78);
    v141 = v165;
    *(v165 + 3) = v139;
    v141[4] = &protocol witness table for StaticDimension;
    v142 = sub_B1B4(v141);
    (*(*(v139 - 8) + 16))(v142, v140, v139);
    sub_10A2C(v164, &qword_951BE0, &unk_782280);
    v70 = &qword_93F918;
    v71 = &unk_7926C0;
    v69 = v63;
    return sub_10A2C(v69, v70, v71);
  }

  if (v67 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v57 + 48))(&v63[v65], 1, v60) == 1)
    {
      goto LABEL_85;
    }

    v77 = v159;
    sub_1ED18(&v63[v65], v159, &qword_951BE0, &unk_782280);
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
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v62(v89, v14);
    v91 = v156;
    v90 = v157;
    v92 = v158;
    (*(v157 + 104))(v156, enum case for ShelfBackground.editorsChoice(_:), v158);
    v93 = v160;
    v94 = sub_75B650();
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
      sub_1ED18(&v63[v65], v154, &qword_951BE0, &unk_782280);
      v98 = v66(v97, v60);
      if (v98 == enum case for Shelf.ContentType.ribbonFlow(_:) || v98 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10A2C(&v63[v65], &qword_951BE0, &unk_782280);
        (*(v57 + 8))(v63, v60);
        if (qword_93DD10 != -1)
        {
          swift_once();
        }

        v79 = sub_766CA0();
        v80 = v79;
        v81 = qword_99FE78;
        goto LABEL_19;
      }

      (*(v57 + 8))(v97, v60);
    }

LABEL_16:
    sub_10A2C(&v63[v65], &qword_951BE0, &unk_782280);
    (*(v57 + 8))(v63, v60);
    if (qword_93DCF8 != -1)
    {
      swift_once();
    }

    v79 = sub_766CA0();
    v80 = v79;
    v81 = qword_99FE30;
LABEL_19:
    v82 = sub_BE38(v79, v81);
    v83 = v165;
    *(v165 + 3) = v80;
    v83[4] = &protocol witness table for StaticDimension;
    v84 = sub_B1B4(v83);
    (*(*(v80 - 8) + 16))(v84, v82, v80);
    v70 = &qword_951BE0;
    v71 = &unk_782280;
    v69 = v164;
    return sub_10A2C(v69, v70, v71);
  }

  if (v67 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v85 = sub_75B680();
    v86 = v165;
    *(v165 + 3) = v85;
    v86[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_B1B4(v86);
    sub_75B670();
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
    sub_1ED18(&v63[v65], v153, &qword_951BE0, &unk_782280);
    v102 = v66(v101, v60);
    if (v102 == v100)
    {
      v103 = v150;
      sub_75DA20();
      sub_7655F0();
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
    sub_10A2C(v164, &qword_951BE0, &unk_782280);
    sub_10A2C(&v63[v65], &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v63[v65], v162, &qword_951BE0, &unk_782280);
    v109 = v66(v108, v60);
    if (v109 == v99)
    {
      if (qword_93DD00 != -1)
      {
        swift_once();
      }

      v110 = sub_766CA0();
      v111 = v110;
      v112 = qword_99FE48;
LABEL_53:
      v114 = sub_BE38(v110, v112);
      v115 = v165;
      *(v165 + 3) = v111;
      v115[4] = &protocol witness table for StaticDimension;
      v116 = sub_B1B4(v115);
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
    sub_1ED18(&v63[v65], v149, &qword_951BE0, &unk_782280);
    v109 = v66(v113, v60);
    v162 = v113;
LABEL_49:
    if (v109 != v107)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v110 = sub_766CA0();
    v111 = v110;
    v112 = qword_99FE60;
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
    sub_1ED18(&v63[v65], v148, &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v63[v65], v147, &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v63[v65], v146, &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v63[v65], v144, &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v63[v65], v143, &qword_951BE0, &unk_782280);
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

    sub_10A2C(&v63[v65], &qword_951BE0, &unk_782280);
    (*(v57 + 8))(v63, v60);
    v135 = sub_75B680();
    v136 = v165;
    *(v165 + 3) = v135;
    v136[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_B1B4(v136);
    sub_75B670();
    goto LABEL_6;
  }

  v57 = v167;
  v63 = v168;
  v60 = v166;
  if ((*(v167 + 48))(&v168[v65], 1, v166) == 1)
  {
LABEL_5:
    sub_10A2C(&v63[v65], &qword_951BE0, &unk_782280);
    (*(v57 + 8))(v63, v60);
    v68 = v165;
    *(v165 + 3) = &type metadata for Double;
    *(v68 + 4) = &protocol witness table for Double;
    *v68 = 0.0;
LABEL_6:
    v69 = v164;
    v70 = &qword_951BE0;
    v71 = &unk_782280;
    return sub_10A2C(v69, v70, v71);
  }

  v125 = v145;
  sub_1ED18(&v63[v124], v145, &qword_951BE0, &unk_782280);
  if (v66(v125, v60) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v60 = v166;
    v57 = v167;
    (*(v167 + 8))(v145, v166);
    v63 = v168;
    v65 = v124;
    goto LABEL_5;
  }

  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v126 = sub_766CA0();
  v127 = sub_BE38(v126, qword_99FE48);
  v128 = v165;
  *(v165 + 3) = v126;
  v128[4] = &protocol witness table for StaticDimension;
  v129 = sub_B1B4(v128);
  (*(*(v126 - 8) + 16))(v129, v127, v126);
  sub_10A2C(v164, &qword_951BE0, &unk_782280);
  v130 = v168;
  sub_10A2C(&v168[v124], &qword_951BE0, &unk_782280);
  return (*(v167 + 8))(v130, v166);
}

uint64_t sub_400874@<X0>(uint64_t *a1@<X8>)
{
  v149 = a1;
  v2 = sub_75B660();
  v143 = *(v2 - 8);
  v144 = v2;
  __chkstk_darwin(v2);
  v142 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v141 = &v132 - v5;
  v148 = sub_BD88(&qword_93F918, &unk_7926C0);
  __chkstk_darwin(v148);
  v152 = &v132 - v6;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  v150 = v7;
  v151 = v8;
  __chkstk_darwin(v7);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_94F1F0, &qword_782290);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v146 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  v17 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v17 - 8);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v132 - v21;
  __chkstk_darwin(v23);
  v25 = &v132 - v24;
  v26 = sub_BD88(&qword_951BE0, &unk_782280);
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
  sub_75DA50();
  sub_10A2C(v22, &qword_963790, qword_77EBC0);
  sub_2C88C(v19, v25);
  if ((*(v12 + 48))(v25, 1, v11) == 1)
  {
    sub_10A2C(v25, &qword_963790, qword_77EBC0);
    v51 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v12 + 8))(v25, v11);
    v51 = 0;
  }

  v52 = v150;
  v53 = v151;
  (*(v151 + 56))(v50, v51, 1, v150);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

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
  sub_1ED18(v54, &v59[v62], &qword_951BE0, &unk_782280);
  v63 = *(v61 + 88);
  v64 = v63(v59, v57);
  if (v64 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10A2C(&v59[v62], &qword_951BE0, &unk_782280);
    (*(v61 + 8))(v59, v57);
    if (qword_93DCF8 != -1)
    {
      swift_once();
    }

    v65 = sub_766CA0();
    v66 = v65;
    v67 = qword_99FE30;
LABEL_12:
    v68 = sub_BE38(v65, v67);
    v69 = v149;
    v149[3] = v66;
    v69[4] = &protocol witness table for StaticDimension;
    v70 = sub_B1B4(v69);
    (*(*(v66 - 8) + 16))(v70, v68, v66);
    v71 = &qword_951BE0;
    v72 = &unk_782280;
    v73 = v148;
    return sub_10A2C(v73, v71, v72);
  }

  if (v64 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10A2C(&v59[v62], &qword_951BE0, &unk_782280);
    (*(v61 + 8))(v59, v57);
    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v65 = sub_766CA0();
    v66 = v65;
    v67 = qword_99FE48;
    goto LABEL_12;
  }

  if (v64 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) != 1)
    {
      v75 = v145;
      sub_1ED18(&v59[v62], v145, &qword_951BE0, &unk_782280);
      v76 = v63(v75, v57);
      v147 = v75;
      if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v108 = sub_766CA0();
    v109 = sub_BE38(v108, qword_99FE78);
    v110 = v149;
    v149[3] = v108;
    v110[4] = &protocol witness table for StaticDimension;
    v111 = sub_B1B4(v110);
    (*(*(v108 - 8) + 16))(v111, v109, v108);
    sub_10A2C(v148, &qword_951BE0, &unk_782280);
    v71 = &qword_93F918;
    v72 = &unk_7926C0;
    v73 = v59;
    return sub_10A2C(v73, v71, v72);
  }

  if (v64 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
    {
      goto LABEL_53;
    }

    v77 = v140;
    sub_1ED18(&v59[v62], v140, &qword_951BE0, &unk_782280);
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
    sub_75DAA0();
    swift_getKeyPath();
    v80 = v62;
    v81 = v141;
    v82 = v146;
    sub_768750();

    v55(v82, v11);
    v84 = v142;
    v83 = v143;
    v85 = v144;
    (*(v143 + 104))(v142, enum case for ShelfBackground.editorsChoice(_:), v144);
    v86 = sub_75B650();
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
    sub_10A2C(v88, &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v59[v62], v139, &qword_951BE0, &unk_782280);
    if (v63(v91, v57) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v61 + 8))(v91, v57);
      goto LABEL_5;
    }

    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v92 = sub_766CA0();
    v93 = v92;
    v94 = qword_99FE78;
    goto LABEL_31;
  }

  if (v64 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v98 = sub_75B680();
    v99 = v149;
    v149[3] = v98;
    v99[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_B1B4(v99);
    sub_75B670();
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
    sub_1ED18(&v59[v62], v147, &qword_951BE0, &unk_782280);
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
        sub_10A2C(v148, &qword_951BE0, &unk_782280);
        v90 = &v59[v62];
LABEL_35:
        sub_10A2C(v90, &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v59[v62], v138, &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v59[v62], v137, &qword_951BE0, &unk_782280);
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
    sub_1ED18(&v59[v62], v136, &qword_951BE0, &unk_782280);
    v114 = v63(v113, v57);
    v147 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v92 = sub_766CA0();
    v93 = v92;
    v94 = qword_99FE60;
LABEL_31:
    v95 = sub_BE38(v92, v94);
    v96 = v149;
    v149[3] = v93;
    v96[4] = &protocol witness table for StaticDimension;
    v97 = sub_B1B4(v96);
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
    sub_1ED18(&v59[v62], v135, &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v59[v62], v133, &qword_951BE0, &unk_782280);
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
      sub_1ED18(&v59[v62], v132, &qword_951BE0, &unk_782280);
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

    sub_10A2C(&v59[v62], &qword_951BE0, &unk_782280);
    (*(v61 + 8))(v59, v57);
    v127 = sub_75B680();
    v128 = v149;
    v149[3] = v127;
    v128[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_B1B4(v128);
    sub_75B670();
LABEL_58:
    v73 = v148;
    v71 = &qword_951BE0;
    v72 = &unk_782280;
    return sub_10A2C(v73, v71, v72);
  }

  if ((*(v61 + 48))(&v59[v62], 1, v57) == 1)
  {
LABEL_57:
    sub_10A2C(&v59[v62], &qword_951BE0, &unk_782280);
    (*(v61 + 8))(v59, v57);
    v112 = v149;
    v149[3] = &type metadata for Double;
    v112[4] = &protocol witness table for Double;
    *v112 = 0;
    goto LABEL_58;
  }

  v117 = &v59[v62];
  v118 = v134;
  sub_1ED18(v117, v134, &qword_951BE0, &unk_782280);
  if (v63(v118, v57) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v57 = v150;
    v61 = v151;
    (*(v151 + 8))(v134, v150);
    v59 = v152;
    goto LABEL_57;
  }

  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v119 = sub_766CA0();
  v120 = sub_BE38(v119, qword_99FE48);
  v121 = v149;
  v149[3] = v119;
  v121[4] = &protocol witness table for StaticDimension;
  v122 = sub_B1B4(v121);
  (*(*(v119 - 8) + 16))(v122, v120, v119);
  sub_10A2C(v148, &qword_951BE0, &unk_782280);
  v123 = v152;
  sub_10A2C(&v152[v62], &qword_951BE0, &unk_782280);
  return (*(v151 + 8))(v123, v150);
}

uint64_t sub_401C80@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v4 = sub_75DA30();
  sub_7699D0();

  return sub_3FDFBC(a1, a2);
}

uint64_t sub_401CCC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_75DA30();
  v5 = sub_7699D0();

  if (v5)
  {

    return sub_3FF1C4(a1, a2);
  }

  else
  {

    return sub_400874(a2);
  }
}

uint64_t sub_401D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_401DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_75AB60();
  sub_36E518(v10, v11);
  v12 = sub_75AB50();

  return sub_36E524(v12, v13);
}

double sub_401EDC(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2.n128_f64[0];
  v48 = sub_75EAC0();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_75EAE0();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_762D10();
  v56 = *(v55 - 8);
  *&v11 = __chkstk_darwin(v55).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a6 pageMarginInsets];
  sub_769DA0();
  v14 = [a6 traitCollection];
  v15 = sub_7699D0();

  v16 = 4;
  if ((v15 & 1) == 0)
  {
    v16 = 1;
  }

  v53 = v16;
  v46 = a1;
  sub_75AB60();
  v45 = v17;
  v18 = sub_26F08();
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  sub_BE38(v19, qword_99D4F8);
  v20 = [a6 traitCollection];
  sub_769E10();

  v21 = sub_7653B0();
  v63 = v21;
  v22 = sub_40260C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v64 = v22;
  v23 = sub_B1B4(v62);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(v21 - 8);
  v44 = v18;
  v26 = *(v25 + 104);
  v26(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
  sub_765C30();
  v54 = a6;
  sub_BEB8(v62);
  sub_762D00();
  sub_762CE0();
  v27 = *(v56 + 8);
  v56 += 8;
  v27(v13, v55);
  v46 = sub_75AB50();
  v45 = v28;
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99D510);
  v29 = [v54 traitCollection];
  sub_769E10();

  v60 = v21;
  v61 = v22;
  v30 = sub_B1B4(v59);
  v26(v30, v24, v21);
  sub_765C30();
  sub_BEB8(v59);
  sub_762D00();
  sub_762CE0();
  v27(v13, v55);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_BE38(v48, qword_99D4E0);
  (*(v47 + 16))(v49, v32, v31);
  v33 = v63;
  v34 = v64;
  v35 = sub_B170(v62, v63);
  v58[3] = v33;
  v58[4] = *(v34 + 8);
  v36 = sub_B1B4(v58);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  v37 = v60;
  v38 = v61;
  v39 = sub_B170(v59, v60);
  v57[3] = v37;
  v57[4] = *(v38 + 8);
  v40 = sub_B1B4(v57);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v50;
  sub_75EAD0();
  sub_40260C(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v42 = v52;
  sub_7665A0();
  (*(v51 + 8))(v41, v42);
  sub_BEB8(v59);
  sub_BEB8(v62);
  return v7;
}

uint64_t sub_40260C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_402668()
{
  result = qword_953F38;
  if (!qword_953F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953F38);
  }

  return result;
}

uint64_t sub_4026BC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_7570A0();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_40277C, 0, 0);
}

id sub_40277C()
{
  if (sub_75C580())
  {
    v1 = sub_769240();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_13310((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_75C5A0())
  {
    v5 = sub_769240();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_13310((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 112), v5, v7, v8);
  }

  v9 = sub_75C590();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_769240();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_13310((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_7690E0().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_75C5B0();
    sub_757040(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_7687C0();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_402AAC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14FCC;

  return sub_4026BC(a1, v4);
}

unint64_t sub_402B50()
{
  result = qword_94FBE0;
  if (!qword_94FBE0)
  {
    sub_75C5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBE0);
  }

  return result;
}

uint64_t sub_402BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_402BFC();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_402BFC()
{
  result = qword_953F40;
  if (!qword_953F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953F40);
  }

  return result;
}

uint64_t sub_402C50(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

char *sub_402C60(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_759210();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_4033D0();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_93C328;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_32E2CC();
  sub_765470();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_93C330;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_765470();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_93C5A8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_765080();
  v28 = sub_BE38(v27, qword_99B658);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  sub_7591C0();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_3E30CC([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  sub_396E8();
  v36 = v35;
  v37 = sub_769FF0();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  sub_769240();
  v48 = sub_769210();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_4033D0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_30712C(&off_87DDD8);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_4034F8()
{
  v1 = v0;
  v2 = sub_75D850();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  if (qword_93C330 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (sub_769A00())
  {
    v12 = &xmmword_99AB20;
  }

  else
  {
    v12 = &xmmword_99A9B0;
  }

  sub_BE140(v12, v27);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v13 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v13 = qword_946938;
  }

  v14 = sub_BE38(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    sub_75D800();
    v16 = v15;
    sub_75D800();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_BE0EC(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  sub_759160();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

void sub_4038A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v105 = sub_765240();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v89 - v9;
  v11 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v11 - 8);
  v103 = &v89 - v12;
  v13 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v13 - 8);
  v102 = &v89 - v14;
  v15 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v15 - 8);
  v101 = &v89 - v16;
  v17 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v17 - 8);
  v100 = &v89 - v18;
  v19 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v19 - 8);
  v21 = &v89 - v20;
  v22 = sub_763750();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v98 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v25 - 8);
  v99 = &v89 - v26;
  v27 = sub_7652D0();
  __chkstk_darwin(v27 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A110();
  sub_768900();
  v104 = a3;
  sub_768ED0();
  v107 = a1;
  v108 = v109[0];
  v30 = sub_764160();
  if (v30)
  {
    v31 = v30;
    v90 = v10;
    v32 = [v3 traitCollection];
    sub_40482C(v106, v32);

    v33 = sub_765330();
    v34 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    sub_7652E0();
    v93 = v29;
    sub_7591B0();
    [v34 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    v106 = v31;
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    [v34 setContentMode:2];
    v35 = sub_759210();
    v36 = sub_404FD4(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v94 = v33;
    v91 = v36;
    v92 = v35;
    sub_75A050();
    v95 = v4;
    v37 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = sub_764170();
    v39 = *(v23 + 104);
    v39(v98, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_404FD4(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v40 = v99;
    sub_760940();
    v41 = sub_BD88(&unk_948740, &unk_784920);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_758C70();
    v43 = v100;
    (*(*(v42 - 8) + 56))(v100, 1, 1, v42);
    v44 = sub_75BD30();
    v45 = v101;
    (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
    v46 = sub_765870();
    v47 = v102;
    (*(*(v46 - 8) + 56))(v102, 1, 1, v46);
    v48 = sub_BD88(&unk_9457F0, qword_783FD0);
    v49 = v103;
    (*(*(v48 - 8) + 56))(v103, 1, 1, v48);
    sub_4A18A4(v38, v37, v40, v104, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_BD3C0();
    [v37 setNeedsLayout];
    sub_BD3C0();

    sub_10A2C(v49, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v47, &unk_9457D0, &unk_785630);
    sub_10A2C(v45, &unk_9457E0, &qword_785640);
    sub_10A2C(v43, &unk_94A780, &unk_788DC0);
    sub_10A2C(v40, &unk_948730, &qword_788DD0);
    v50 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_93D548;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_7666D0();
        v63 = sub_BE38(v62, qword_99E7E8);
        v64 = *(v62 - 8);
        v65 = v90;
        (*(v64 + 16))(v90, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_75BA40();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = sub_7651A0();
    if (v67)
    {
      v68 = v67;
      v69 = sub_76A0E0();

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
    v72 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    sub_759070();

    sub_764170();
    v80 = sub_764EE0();

    if (v80)
    {
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      sub_32E2CC();
      sub_765470();
      sub_BE0EC(v109);
      v81 = v96;
      sub_765250();
      sub_765210();
      (*(v97 + 8))(v81, v71);
      sub_765330();
      v82 = *&v37[v72];
      sub_7652E0();
      sub_7591B0();
      [v82 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      sub_75A050();
    }

    v4 = v95;
  }

  v84 = sub_4033D0();
  v85 = [v4 backgroundColor];
  v86 = sub_308200(v85);
  v88 = v87;

  sub_3068C8(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_40472C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_40482C(uint64_t a1, void *a2)
{
  v3 = sub_75D850();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  sub_765560();
  v11 = v10;
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_32E2CC();
  sub_765470();
  if (qword_93C330 != -1)
  {
    swift_once();
  }

  sub_765470();
  if (sub_769A00())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_BE140(v12, v20);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v13 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v13 = qword_946938;
  }

  v14 = sub_BE38(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_75D800();
    v16 = v15;
    sub_75D800();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_BE0EC(v20);
  sub_BE0EC(v24);
  sub_BE0EC(v25);
  return v11;
}

void sub_404B6C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764180();
  sub_404FD4(&qword_953F88, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground, &protocol conformance descriptor for MediumAdLockupWithAlignedRegionBackground);
  sub_75C750();
  if (v10)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765560();
    v4 = *(v1 + 8);
    v4(v3, v0);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_75C7B0();

    v5 = v10;
    sub_40482C(v3, v10);

    v4(v3, v0);
    v6 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage;
    if (sub_764160())
    {
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v6 = v11;
    }

    sub_764170();
    v7 = sub_764EE0();

    if (v7)
    {
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      sub_32E2CC();
      sub_765470();
      sub_BE0EC(&v10);
      sub_765330();

      sub_769440();
      if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v6 = v11;
    }

    v8._rawValue = v6;
    sub_75A070(v8);
  }
}

void sub_404F0C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_759210();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t sub_404FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_405070(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_75BF20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_1ED18(v1, v11 - v8, &unk_953FB8, &qword_79C660);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_40525C(uint64_t a1, uint64_t a2)
{
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_75C750();
  if (v12)
  {
    v4 = sub_405504(a1, a2);
    v5 = sub_75BFE0();
    sub_40B834(v5, v4);

    if (sub_75BFD0() & 1) != 0 && (swift_getKeyPath(), sub_75C7B0(), , v6 = sub_7699E0(), v12, (v6) && (swift_getKeyPath(), sub_75C7B0(), , v7 = sub_769A00(), v12, (v7))
    {
      sub_40B0E0();
      if (qword_93DCF0 != -1)
      {
        swift_once();
      }

      v8 = sub_766CA0();
      sub_BE38(v8, qword_99FE18);
      swift_getKeyPath();
      sub_75C7B0();

      sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_7671E0();
      sub_7666E0();
    }

    else
    {
    }
  }
}

double sub_405504(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = sub_BD88(&qword_953FB0, &qword_786B98);
  __chkstk_darwin(v3 - 8);
  v68 = &v68 - v4;
  v5 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v5 - 8);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = sub_7580D0();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_764CF0();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_7656A0();
  v14 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_7656C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_75C750();
  v29 = v87[0];
  if (v87[0])
  {
    v74 = v9;
    v85 = v22;
    v69 = v18;
    swift_getKeyPath();
    v70 = v29;
    sub_75C7B0();

    sub_765580();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v30(v25, v19);
    v31 = v69;
    v32 = v77;
    (*(v14 + 104))(v69, enum case for PageGrid.Direction.vertical(_:), v77);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v71 = v19;
    v73 = v20 + 8;
    v72 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v76, v31, v32);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v14 + 8))(v31, v32);
    sub_BD88(&unk_944300, &qword_77DEE0);
    v33 = *&v84;
    sub_768880();
    v34 = v87[0];
    swift_getObjectType();
    v35 = v78;
    v36 = v70;
    sub_75C010();
    v77 = v34;
    sub_758330();
    (*(v79 + 8))(v35, v80);
    swift_getObjectType();
    v37 = v81;
    sub_758220();
    v38 = sub_40B0E0();
    sub_405F98(v36, v37, a1, v33, v87, v38, v39);
    v40 = v83;
    v41 = *(v82 + 8);
    v41(v37, v83);
    sub_758220();
    v42 = v74;
    sub_75BF40();
    v41(v37, v40);
    v43 = sub_75BF20();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v75;
      sub_1ED18(v50, v75, &unk_953FB8, &qword_79C660);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_953FB8;
        v53 = &qword_79C660;
        v54 = v51;
      }

      else
      {
        v56 = v68;
        sub_75BF10();
        (*(v44 + 8))(v51, v43);
        v57 = sub_759C90();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v56, 1, v57) != 1)
        {
          v59 = sub_759C80();
          (*(v58 + 8))(v56, v57);
          v48 = v59 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_953FB0;
        v53 = &qword_786B98;
        v54 = v56;
      }

      sub_10A2C(v54, v52, v53);
      v48 = 1;
    }

LABEL_10:
    if (sub_75BFE0() && (, ((sub_75BFD0() | v48) & 1) == 0))
    {
      if (qword_93CBD0 != -1)
      {
        swift_once();
      }

      v61 = qword_99CE20;
    }

    else
    {
      if (sub_75BFE0())
      {

        v60 = 0.0;
LABEL_22:
        sub_B170(v87, v87[3]);
        v64 = v85;
        sub_765630();
        swift_getKeyPath();
        sub_75C7B0();

        sub_7665B0();
        v66 = v65;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v72(v64, v71);
        v55 = v60 + v66;
        sub_10A2C(v49, &unk_953FB8, &qword_79C660);
        sub_BEB8(v87);
        return v55;
      }

      v60 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_93CBD8 != -1)
      {
        swift_once();
      }

      v61 = qword_99CE48;
    }

    sub_B170(v61, v61[3]);
    swift_getKeyPath();
    sub_75C7B0();

    v62 = v86;
    sub_766710();
    v60 = v63;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_405F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v150 = a4;
  v151 = a2;
  v152 = a5;
  v13 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v13 - 8);
  v149 = &v124 - v14;
  v148 = sub_7623A0();
  v143 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_BD88(&unk_9457F0, qword_783FD0);
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - v16;
  v153 = sub_75D850();
  v142 = *(v153 - 8);
  __chkstk_darwin(v153);
  v141 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v140);
  v19 = (&v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v158 = &v124 - v21;
  v156 = sub_762D10();
  v157 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v23 - 8);
  v25 = &v124 - v24;
  v154 = sub_7656C0();
  v26 = *(v154 - 8);
  __chkstk_darwin(v154);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v159 = v28;
  sub_75C7B0();

  v29 = a1;
  sub_75BF40();
  v151 = v8;
  v160 = v8;
  v161 = a1;
  v162 = a3;
  v163 = v150;
  v30 = COERCE_DOUBLE(sub_405070(sub_40BCB0));
  LOBYTE(a1) = v31;
  sub_10A2C(v25, &unk_953FB8, &qword_79C660);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_40B554();
  if (sub_75BFD0())
  {
    v130 = v26;
    v129 = v29;
    sub_75C000();
    if (qword_93CB58 != -1)
    {
      swift_once();
    }

    v34 = sub_BD88(&unk_94E7B0, &qword_792B30);
    sub_BE38(v34, qword_99CCD8);
    swift_getKeyPath();
    sub_75C7B0();

    *&v165 = v172;
    sub_7592B0();
    swift_unknownObjectRelease();
    if (qword_93CCD0 != -1)
    {
      swift_once();
    }

    v35 = sub_BD88(&unk_94B6E0, &qword_78E688);
    sub_BE38(v35, qword_99D160);
    swift_getKeyPath();
    sub_75C7B0();

    v171 = v172;
    v139 = v35;
    sub_7592B0();
    swift_unknownObjectRelease();
    v36 = sub_7653B0();
    v173 = v36;
    v137 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v174 = v137;
    v37 = sub_B1B4(&v172);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v136 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v138 = v36;
    v135 = v39;
    v134 = v38 + 104;
    v39(v37);
    sub_765C30();
    sub_BEB8(&v172);
    v40 = v155;
    sub_762D00();
    sub_762CE0();
    v41 = *(v157 + 8);
    v157 += 8;
    v133 = v41;
    v41(v40, v156);
    sub_765630();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_527DE4();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_93CB28 != -1)
    {
      swift_once();
    }

    v46 = v140;
    v47 = sub_BE38(v140, qword_99CC78);
    v48 = v158;
    sub_40BD7C(v47, v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v150 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    v49 = a6;
    *(v48 + 24) = right;
    *v48 = 0;
    v169 = &type metadata for CGFloat;
    v170 = &protocol witness table for CGFloat;
    *&v168 = v32;
    v50 = v46[15];
    sub_BEB8((v48 + v50));
    sub_34698(&v168, v48 + v50);
    v169 = &type metadata for CGFloat;
    v170 = &protocol witness table for CGFloat;
    *&v168 = v33;
    v51 = v46[16];
    sub_BEB8((v48 + v51));
    sub_34698(&v168, v48 + v51);
    sub_765630();
    v53 = v52;
    v55 = v54;
    v56 = sub_527DE4();
    swift_getObjectType();
    v57 = sub_2D8CA0(&v172, v48, v56, v53, v55);
    swift_unknownObjectRelease();
    if (v57)
    {
      sub_765630();
      sub_527DE4();
      swift_unknownObjectRelease();
      sub_40BD7C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v58 = v150;
      v19[4] = v49;
      v19[5] = v58;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = v32;
      v59 = v46[15];
      sub_BEB8((v19 + v59));
      sub_34698(&v168, v19 + v59);
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = v33;
      v60 = v46[16];
      sub_BEB8((v19 + v60));
      sub_34698(&v168, v19 + v60);
      if (qword_93CC48 != -1)
      {
        swift_once();
      }

      v61 = sub_BD88(&qword_940AD0, &unk_78F910);
      v62 = sub_BE38(v61, qword_99CFC8);
      v63 = *(*(v61 - 8) + 24);
      v63(v19 + v46[7], v62, v61);
      if (qword_93CC38 != -1)
      {
        swift_once();
      }

      v64 = sub_BE38(v61, qword_99CF98);
      v63(v19 + v46[6], v64, v61);
      if (qword_93CC60 != -1)
      {
        swift_once();
      }

      v65 = sub_BE38(v61, qword_99D010);
      v63(v19 + v46[8], v65, v61);
      if (qword_93CC08 != -1)
      {
        swift_once();
      }

      v66 = sub_BD88(&qword_94E5D0, &qword_783580);
      v67 = sub_BE38(v66, qword_99CF08);
      (*(*(v66 - 8) + 24))(v19 + v46[13], v67, v66);
      v169 = &type metadata for CGFloat;
      v170 = &protocol witness table for CGFloat;
      *&v168 = 0x401C000000000000;
      v68 = v158;
      sub_40BD1C(v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v69 = v46[9];
      sub_BEB8((v19 + v69));
      sub_34698(&v168, v19 + v69);
      sub_C6154(v19, v68);
      sub_B170(&v172, v173);
      if (qword_93CB60 != -1)
      {
        swift_once();
      }

      sub_BE38(v34, qword_99CCF0);
      swift_getKeyPath();
      sub_75C7B0();

      v171 = v165;
      sub_7592B0();
      swift_unknownObjectRelease();
      sub_766A00();
    }

    if (qword_93CB70 != -1)
    {
      swift_once();
    }

    sub_BE38(v34, qword_99CD20);
    swift_getKeyPath();
    sub_75C7B0();

    v171 = v165;
    sub_7592B0();
    swift_unknownObjectRelease();
    v70 = v168;
    sub_75BF70();
    v71 = qword_93CCD8;
    v72 = v70;
    if (v71 != -1)
    {
      swift_once();
    }

    sub_BE38(v139, qword_99D178);
    swift_getKeyPath();
    v140 = v45;
    sub_75C7B0();

    v171 = v168;
    sub_7592B0();
    swift_unknownObjectRelease();
    v73 = v138;
    v169 = v138;
    v170 = v137;
    v74 = sub_B1B4(&v168);
    v135(v74, v136, v73);
    sub_765C30();
    sub_BEB8(&v168);
    v75 = v155;
    sub_762D00();
    sub_762CE0();
    v133(v75, v156);
    v76 = sub_7670D0();
    swift_allocObject();
    v77 = sub_7670B0();
    swift_allocObject();
    v78 = sub_7670B0();
    swift_allocObject();
    v79 = sub_7670B0();
    swift_allocObject();
    v151 = sub_7670B0();
    v80 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
    [v80 size];

    swift_allocObject();
    v127 = sub_7670B0();
    swift_allocObject();
    v126 = sub_7670B0();
    swift_allocObject();
    v124 = sub_7670B0();
    swift_allocObject();
    v125 = sub_7670B0();
    sub_75BF90();
    v128 = v72;
    v132 = v77;
    v131 = v78;
    if (v82 == 1 || (v83 = v81, , !v83))
    {
      v84 = v79;
      v167 = 0;
      v166 = 0u;
      v165 = 0u;
      v90 = v158;
    }

    else
    {
      v84 = v79;
      sub_26F08();
      if (qword_93D6C8 != -1)
      {
        swift_once();
      }

      v85 = sub_7666D0();
      sub_BE38(v85, qword_99EC50);
      swift_getKeyPath();
      sub_75C7B0();

      v86 = v165;
      sub_769E10();

      if (qword_93CCF0 != -1)
      {
        swift_once();
      }

      sub_BE38(v139, qword_99D1C0);
      swift_getKeyPath();
      sub_75C7B0();

      v164 = v165;
      sub_7592B0();
      swift_unknownObjectRelease();
      v87 = v138;
      *(&v166 + 1) = v138;
      v167 = v137;
      v88 = sub_B1B4(&v165);
      v135(v88, v136, v87);
      sub_765C30();
      sub_BEB8(&v165);
      v89 = v155;
      sub_762D00();
      sub_762CE0();
      v133(v89, v156);
      v90 = v158;
      v77 = v132;
      v78 = v131;
    }

    v96 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v97 = v152;
    v152[3] = v96;
    v97[4] = sub_40BCD4(&unk_953FE0, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
    v98 = sub_B1B4(v97);
    sub_40BD7C(v90, v98, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v99 = (v98 + v96[5]);
    v99[3] = v76;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v151;
    v100 = (v98 + v96[6]);
    v100[3] = v76;
    v100[4] = &protocol witness table for LayoutViewPlaceholder;
    *v100 = v78;
    v101 = (v98 + v96[7]);
    v101[3] = v76;
    v101[4] = &protocol witness table for LayoutViewPlaceholder;
    *v101 = v84;
    v102 = (v98 + v96[10]);
    v102[3] = v76;
    v102[4] = &protocol witness table for LayoutViewPlaceholder;
    *v102 = v77;
    swift_allocObject();

    v157 = v84;

    v103 = sub_7670B0();
    v104 = (v98 + v96[8]);
    v104[3] = v76;
    v104[4] = &protocol witness table for LayoutViewPlaceholder;
    *v104 = v103;
    sub_134D8(&v172, v98 + v96[9]);
    sub_134D8(&v168, v98 + v96[11]);
    v105 = v98 + v96[12];
    *(v105 + 4) = 0;
    *v105 = 0u;
    *(v105 + 1) = 0u;
    if (qword_93C470 != -1)
    {
      swift_once();
    }

    v106 = v153;
    v107 = sub_BE38(v153, qword_99B2D8);
    v108 = v142;
    v109 = v141;
    (*(v142 + 16))(v141, v107, v106);
    swift_getKeyPath();
    sub_75C7B0();

    v110 = v143;
    v111 = v148;
    (*(v143 + 104))(v145, enum case for OfferButtonSubtitlePosition.below(_:), v148);
    (*(v110 + 56))(v149, 1, 1, v111);
    sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v112 = v144;
    sub_760940();
    sub_75D820();
    swift_unknownObjectRelease();
    (*(v146 + 8))(v112, v147);
    (*(v108 + 8))(v109, v153);
    swift_allocObject();
    v113 = sub_7670B0();
    v114 = (v98 + v96[13]);
    v114[3] = v76;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;
    *v114 = v113;
    sub_1ED18(&v165, v98 + v96[14], &qword_9417D0, &unk_780EA0);
    v115 = v98 + v96[15];
    *(v115 + 4) = 0;
    *v115 = 0u;
    *(v115 + 1) = 0u;
    v116 = (v98 + v96[16]);
    v116[3] = v76;
    v116[4] = &protocol witness table for LayoutViewPlaceholder;
    *v116 = v127;
    v117 = (v98 + v96[17]);
    v117[3] = v76;
    v117[4] = &protocol witness table for LayoutViewPlaceholder;
    *v117 = v126;
    v118 = (v98 + v96[18]);
    v118[3] = v76;
    v118[4] = &protocol witness table for LayoutViewPlaceholder;
    *v118 = v124;
    v119 = (v98 + v96[19]);
    v119[3] = v76;
    v119[4] = &protocol witness table for LayoutViewPlaceholder;

    *v119 = v125;
    sub_10A2C(&v165, &qword_9417D0, &unk_780EA0);
    sub_BEB8(&v168);
    sub_40BD1C(v158, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v130 + 8))(v159, v154);
    return sub_BEB8(&v172);
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    v91 = v172;
    v92 = sub_769A00();

    if (v92)
    {
      v93 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v94 = v152;
      v152[3] = v93;
      v94[4] = sub_40BCD4(&unk_953FD0, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
      v95 = sub_B1B4(v94);
      sub_407F38(v29, a3, v95, a6, a7, v32, v33);
    }

    else
    {
      v121 = type metadata accessor for ProductLockupLayout(0);
      v122 = v152;
      v152[3] = v121;
      v122[4] = sub_40BCD4(&qword_953FC8, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
      v123 = sub_B1B4(v122);
      sub_409970(v29, a3, v123, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v159, v154);
  }
}

uint64_t sub_407880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v61 = a4;
  v57 = a3;
  v60 = a2;
  v5 = sub_7656C0();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v8 - 8);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = sub_75BF20();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = sub_75BFE0();
  if (v19)
  {
  }

  v20 = sub_75BFD0();
  sub_1ED18(v16, v13, &unk_953FB8, &qword_79C660);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_10A2C(v16, &unk_953FB8, &qword_79C660);
LABEL_5:
    v21 = 0;
    v16 = v13;
    goto LABEL_31;
  }

  sub_1ED18(v13, v10, &unk_953FB8, &qword_79C660);
  v22 = (*(v18 + 88))(v10, v17);
  if (v22 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v18 + 96))(v10, v17);
    v23 = *v10;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    if ((sub_75A770() & 1) == 0)
    {
      LODWORD(v57) = v19 == 0;
      v56 = sub_764D60();
      v34 = v33;
      v55 = v20 ^ 1;
      v54 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v35 = sub_527DE4();
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v37 = v36;
      v39 = v38;
      (*(v58 + 8))(v7, v59);
      ObjectType = swift_getObjectType();
      sub_12407C(v56, v34, v57 & v55, v35, v37, v39, v54, ObjectType);
      v21 = v41;

      swift_unknownObjectRelease();

      sub_10A2C(v16, &unk_953FB8, &qword_79C660);
      v16 = v13;
      goto LABEL_31;
    }
  }

  else
  {
    if (v22 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      sub_10A2C(v16, &unk_953FB8, &qword_79C660);
      (*(v18 + 8))(v10, v17);
      goto LABEL_5;
    }

    (*(v18 + 96))(v10, v17);
    v23 = *v10;
  }

  sub_10A2C(v13, &unk_953FB8, &qword_79C660);
  v24 = 0.0;
  if ((v20 & 1) == 0)
  {
    if (qword_93CBE0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CE70, qword_99CE88);
    swift_getKeyPath();
    sub_75C7B0();

    v25 = *&v62[0];
    sub_766710();
    v24 = v26;
  }

  v27 = sub_764D20();
  if (v27)
  {
  }

  sub_764D10();
  sub_BD88(&unk_954000, qword_786BA0);
  v28 = sub_769490();

  if (v20)
  {
    _Q3 = xmmword_786AD0;
    v30 = 17.0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v31 = 22.0;
    if (v27)
    {
      v31 = 15.0;
    }

    if (v28)
    {
      v32 = 15.0;
    }

    else
    {
      v32 = v31;
    }

    v30 = 9.0;
    if (v28)
    {
      v42 = 12.0;
    }

    else
    {
      v42 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v42;
  }

  v62[1] = _Q3;
  v62[0] = _Q3;
  v63 = v30;
  v64 = v31;
  v65 = v30;
  v66 = v32;
  v67 = xmmword_786B00;
  v68 = xmmword_786B10;
  v47 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v49 = v48;
  v51 = v50;
  (*(v58 + 8))(v7, v59);
  sub_13C170(v23, v62, v47, v24, 0.0, v24, 0.0, v49, v51);
  v21 = v52;
  swift_unknownObjectRelease();

LABEL_31:
  result = sub_10A2C(v16, &unk_953FB8, &qword_79C660);
  *v61 = v21;
  return result;
}

uint64_t sub_407F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = sub_7623A0();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0, qword_783FD0);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = sub_75D850();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_75AD00();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_BD88(&unk_953FA0, &qword_79C638);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = sub_762D10();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7666D0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26F08();
  if (qword_93CB98 != -1)
  {
    swift_once();
  }

  v29 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v29, qword_99CD78);
  swift_getKeyPath();
  sub_75C7B0();

  v182[0] = v183[0];
  v146 = v29;
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  v30 = v183[0];
  v157 = v28;
  v31 = sub_769E10();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  sub_75C000();
  v33 = qword_93CCC8;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_BE38(v35, qword_99D148);
  swift_getKeyPath();
  sub_75C7B0();

  v181[0] = v183[0];
  v156 = v35;
  sub_7592B0();
  swift_unknownObjectRelease();
  v36 = sub_7653B0();
  v183[3] = v36;
  *&v162 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v183[4] = v162;
  v37 = sub_B1B4(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = sub_765C30();
  sub_BEB8(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  sub_762D00();
  sub_762CE0();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_93CBA8 != -1)
  {
    swift_once();
  }

  sub_BE38(v146, qword_99CDA8);
  swift_getKeyPath();
  sub_75C7B0();

  v181[0] = v182[0];
  v42 = v147;
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  v43 = v182[0];
  v44 = sub_769E10();

  v145(v42, v158);
  v130 = sub_75BF70();
  v45 = qword_93CCD8;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_BE38(v156, qword_99D178);
  swift_getKeyPath();
  v127 = a2;
  sub_75C7B0();

  *&v178 = v182[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_B1B4(v182);
  v160(v48, v161, v47);
  sub_765C30();
  sub_BEB8(v182);
  v49 = v163;
  sub_762D00();
  sub_762CE0();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = sub_75BF30();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_75C7B0();

  v174 = v181[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_B1B4(v181);
  v160(v54, v161, v47);
  v55 = sub_765C30();
  sub_BEB8(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  sub_762D00();
  sub_762CE0();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_75BF50();
  if (v58)
  {
    if (qword_93CBB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v146, qword_99CDD8);
    swift_getKeyPath();
    sub_75C7B0();

    v174 = v178;
    v59 = v147;
    sub_7592B0();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_75C7B0();

    v60 = v178;
    v61 = sub_769E10();

    v145(v59, v158);
    v62 = qword_93CCE0;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D190);
    swift_getKeyPath();
    sub_75C7B0();

    *&v171 = v178;
    sub_7592B0();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_B1B4(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = sub_765C30();
    sub_BEB8(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    sub_762D00();
    sub_762CE0();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_29A844();
  sub_75C780();
  swift_getKeyPath();
  sub_769040();

  v68 = v174;
  swift_getKeyPath();
  sub_769040();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = sub_75BFB0();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_75BFA0())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_75FEA0();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_6643C4(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_93D900 != -1)
  {
    swift_once();
  }

  sub_BE38(v70, qword_99F2F8);
  swift_getKeyPath();
  sub_75C7B0();

  v81 = v174;
  sub_769E10();

  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  sub_BE38(v156, qword_99D1D8);
  swift_getKeyPath();
  sub_75C7B0();

  *&v168 = v174;
  sub_7592B0();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_B1B4(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = sub_765C30();
  sub_BEB8(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  sub_762D00();
  sub_762CE0();
  v154(v84, v57);
  sub_B170(&v174, v176);
  if (v69)
  {
  }

  sub_766550();
  sub_75BF90();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_93D6B8 != -1)
    {
      swift_once();
    }

    sub_BE38(v158, qword_99EC20);
    swift_getKeyPath();
    sub_75C7B0();

    v87 = v171;
    sub_769E10();

    if (qword_93CCE8 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D1A8);
    swift_getKeyPath();
    sub_75C7B0();

    v167 = v171;
    sub_7592B0();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_B1B4(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = sub_765C30();
    sub_BEB8(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    sub_762D00();
    sub_762CE0();
    v154(v90, v57);
  }

  sub_75BF90();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_93D6C0 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_BE38(v158, qword_99EC38);
    swift_getKeyPath();
    sub_75C7B0();

    v95 = v168;
    sub_769E10();

    if (qword_93CCF0 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D1C0);
    swift_getKeyPath();
    sub_75C7B0();

    v166 = v168;
    sub_7592B0();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_B1B4(&v168);
    v160(v97, v161, v96);
    v98 = sub_765C30();
    sub_BEB8(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    sub_762D00();
    sub_762CE0();
    v154(v99, v94);
  }

  v100 = sub_7670D0();
  swift_allocObject();
  v165 = sub_7670B0();
  swift_allocObject();
  v164 = sub_7670B0();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_93CB30 != -1)
  {
    swift_once();
  }

  v102 = sub_BE38(v131, qword_99CC90);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_40BCD4(&qword_94E5D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  sub_765470();
  swift_getKeyPath();
  sub_75C7B0();

  v104 = v167;
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v105 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v105 = qword_946938;
  }

  v106 = v137;
  v107 = sub_BE38(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_40BD7C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = sub_7670B0();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_134D8(v183, v111 + 40);
  sub_134D8(v181, v111 + 80);
  sub_134D8(v182, v111 + 120);
  sub_1ED18(&v178, v111 + 160, &qword_9417D0, &unk_780EA0);
  swift_getKeyPath();
  sub_75C7B0();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v115 = v135;
  sub_760940();
  v116 = v151;
  sub_75D820();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = sub_7670B0();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_B170(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_B1B4((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_1ED18(&v171, v111 + 320, &qword_9417D0, &unk_780EA0);
  sub_1ED18(&v168, v111 + 360, &qword_9417D0, &unk_780EA0);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_40BD1C(v153, v163);
  sub_10A2C(&v168, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v171, &qword_9417D0, &unk_780EA0);
  (*(v141 + 8))(v149, v150);
  sub_10A2C(&v178, &qword_9417D0, &unk_780EA0);
  sub_BEB8(v181);
  sub_BEB8(v182);
  sub_BEB8(v183);
  return sub_BEB8(&v174);
}

uint64_t sub_409970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = sub_7623A0();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0, qword_783FD0);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = sub_75D850();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = sub_75AD00();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_762D10();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_953FF0, &qword_792B18);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_75C7B0();

  v35 = v179[0];
  sub_34A75C(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_40BCD4(&qword_94E5E8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  sub_765470();

  sub_40BD1C(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10A2C(v27, &unk_953FF0, &qword_792B18);
  v150 = sub_75C000();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_75C7B0();

  v177[0] = v179[0];
  v39 = sub_BD88(&unk_94E7B0, &qword_792B30);
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  *&v174 = v179[0];
  v40 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_7592B0();
  swift_unknownObjectRelease();
  v41 = sub_7653B0();
  v179[3] = v41;
  v147 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v179[4] = v147;
  v42 = sub_B1B4(v179);
  v43 = *(v41 - 1);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  sub_765C30();
  sub_BEB8(v179);
  v45 = v149;
  sub_762D00();
  sub_762CE0();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  sub_75C7B0();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  sub_7592B0();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = sub_75BF70();
  v127 = v48;
  v49 = qword_93CCD8;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_BE38(v40, qword_99D178);
  swift_getKeyPath();
  sub_75C7B0();

  *&v174 = v178[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_B1B4(v178);
  (v151)(v54, v152, v52);
  sub_765C30();
  sub_BEB8(v178);
  v55 = v149;
  sub_762D00();
  sub_762CE0();
  v150(v55, v153);
  v127 = sub_75BF30();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_75C7B0();

  v171[0] = v177[0];
  v144 = v51;
  sub_7592B0();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_B1B4(v177);
  (v151)(v58, v152, v52);
  sub_765C30();
  sub_BEB8(v177);
  v127 = v57;
  sub_762D00();
  sub_762CE0();
  v59 = v153;
  v150(v55, v153);
  sub_75BF50();
  if (v60)
  {
    swift_getKeyPath();
    sub_75C7B0();

    *&v167 = v171[0];
    sub_7592B0();
    swift_unknownObjectRelease();
    v61 = qword_93CCE0;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D190);
    swift_getKeyPath();
    sub_75C7B0();

    *&v167 = v174;
    sub_7592B0();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_B1B4(&v174);
    (v151)(v64, v152, v63);
    sub_765C30();
    sub_BEB8(&v174);
    v65 = v149;
    sub_762D00();
    sub_762CE0();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = sub_75BFB0();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = sub_75BFA0();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = sub_75FEA0();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_6643C4(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_93CB80;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_BE38(v140, qword_99CD50);
  swift_getKeyPath();
  sub_75C7B0();

  *&v164 = v171[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_99D1D8);
  swift_getKeyPath();
  sub_75C7B0();

  v170 = v171[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_B1B4(v171);
  (v151)(v80, v152, v79);
  sub_765C30();
  sub_BEB8(v171);
  v81 = v149;
  sub_762D00();
  sub_762CE0();
  v150(v81, v59);
  sub_B170(v171, v172);
  sub_766550();
  sub_75BF90();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_26F08();
    if (qword_93D6B8 != -1)
    {
      swift_once();
    }

    v84 = sub_7666D0();
    sub_BE38(v84, qword_99EC20);
    swift_getKeyPath();
    sub_75C7B0();

    v85 = v167;
    sub_769E10();

    if (qword_93CCE8 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D1A8);
    swift_getKeyPath();
    sub_75C7B0();

    v170 = v167;
    sub_7592B0();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_B1B4(&v167);
    (v151)(v87, v152, v86);
    sub_765C30();
    sub_BEB8(&v167);
    v88 = v149;
    sub_762D00();
    sub_762CE0();
    v150(v88, v153);
  }

  sub_75BF90();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_26F08();
    if (qword_93D6C0 != -1)
    {
      swift_once();
    }

    v92 = sub_7666D0();
    sub_BE38(v92, qword_99EC38);
    swift_getKeyPath();
    sub_75C7B0();

    v93 = v164;
    sub_769E10();

    if (qword_93CCF0 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D1C0);
    swift_getKeyPath();
    sub_75C7B0();

    v163 = v164;
    sub_7592B0();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_B1B4(&v164);
    (v151)(v95, v152, v94);
    sub_765C30();
    sub_BEB8(&v164);
    v96 = v149;
    sub_762D00();
    sub_762CE0();
    v150(v96, v153);
  }

  v97 = sub_7670D0();
  swift_allocObject();
  v153 = sub_7670B0();
  swift_allocObject();
  v152 = sub_7670B0();
  swift_getKeyPath();
  sub_75C7B0();

  v98 = v170;
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v99 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v99 = qword_946938;
  }

  v100 = v143;
  v101 = sub_BE38(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_40BD7C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = sub_7670B0();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_134D8(v179, v104 + v106[6]);
  sub_134D8(v177, v104 + v106[7]);
  sub_134D8(v178, v104 + v106[8]);
  sub_1ED18(&v174, v104 + v106[9], &qword_9417D0, &unk_780EA0);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  sub_75C7B0();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v111 = v130;
  sub_760940();
  v112 = v142;
  sub_75D820();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = sub_7670B0();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_B170(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 1);
  v119 = sub_B1B4(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_1ED18(&v167, v104 + v106[13], &qword_9417D0, &unk_780EA0);
  sub_1ED18(&v164, v104 + v106[14], &qword_9417D0, &unk_780EA0);
  LOBYTE(v115) = sub_75BF80();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10A2C(&v164, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v167, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v174, &qword_9417D0, &unk_780EA0);
  sub_BEB8(v177);
  sub_BEB8(v178);
  sub_BEB8(v179);
  sub_40BD1C(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_BEB8(v171);
}

double sub_40B0E0()
{
  v0 = sub_BD88(&qword_94A330, qword_7AAD30);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_760F50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_75C750();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_75C7B0();

  v33 = v38;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_75BFD0())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_7699E0();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_769A00())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_7699E0() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_769A00() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_75C030();
  sub_760F40();
  v28 = v31;

  sub_10A2C(v26, &qword_94A330, qword_7AAD30);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_40B554()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v4 = sub_75BF60();
  if (v4)
  {
    v5 = v4;
    v6 = 0.0;
    if ((sub_75BFD0() & 1) == 0)
    {
      v28 = v0;
      if (qword_93CBE8 != -1)
      {
        swift_once();
      }

      sub_B170(qword_99CE98, qword_99CEB0);
      swift_getKeyPath();
      sub_75C7B0();

      v7 = *&v29[0];
      sub_766710();
      v6 = v8;

      v0 = v28;
    }

    v9 = sub_75BFD0();
    v10 = sub_764D20();
    if (v10)
    {
    }

    sub_764D10();
    sub_BD88(&unk_954000, qword_786BA0);
    v11 = sub_769490();

    if (v9)
    {
      _Q3 = xmmword_786AD0;
      v13 = 17.0;
      v14 = 0.0;
      v15 = 0.0;
    }

    else
    {
      v14 = 22.0;
      if (v10)
      {
        v14 = 15.0;
      }

      if (v11)
      {
        v15 = 15.0;
      }

      else
      {
        v15 = v14;
      }

      v13 = 9.0;
      if (v11)
      {
        v17 = 12.0;
      }

      else
      {
        v17 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v17;
    }

    v29[0] = _Q3;
    v29[1] = _Q3;
    v30 = v13;
    v31 = v14;
    v32 = v13;
    v33 = v15;
    v34 = xmmword_786B00;
    v35 = xmmword_786B10;
    v22 = sub_527DE4();
    sub_765630();
    sub_13C170(v5, v29, v22, v6, 0.0, 0.0, 0.0, v23, v24);
    v16 = v25;

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v16;
}

double sub_40B834(uint64_t a1, double a2)
{
  v4 = sub_7656C0();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_764590();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_BD88(&unk_953FA0, &qword_79C638);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_75C7B0();

  v18 = v43;
  v19 = sub_7699D0();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_29A844();
  sub_75C780();
  v41 = a1;
  sub_7645B0();
  swift_getKeyPath();
  v38 = v14;
  sub_769040();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_75C7B0();

  sub_7655A0();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_75C7B0();

  v24 = v43;
  v25 = sub_7699D0();

  if (v25)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v28 = v43;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_6260C4(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

uint64_t sub_40BCD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_40BD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_40BD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_40BE08()
{
  if (qword_93C430 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_40BEC8(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = sub_75ABC0();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75ABE0();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7654D0();
  v14 = sub_7654C0();
  sub_26F08();
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99E9F8);
  v35 = a6;
  v16 = [a6 traitCollection];
  v17 = sub_769E10();

  v18 = sub_7653B0();
  v41[3] = v18;
  v41[4] = sub_40C570(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v19 = sub_B1B4(v41);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v17;
  sub_765C30();
  sub_BEB8(v41);
  sub_762D00();
  sub_762CE0();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v21 = sub_7670D0();
    swift_allocObject();
    v22 = sub_7670B0();
    *(&v39 + 1) = v21;
    v40 = &protocol witness table for LayoutViewPlaceholder;
    *&v38 = v22;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  v23 = v35;
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v24 = v31;
  v25 = sub_BE38(v31, qword_99B278);
  (*(v30 + 16))(v32, v25, v24);
  sub_134D8(v41, v37);
  sub_6D310(&v38, v36);
  sub_75ABD0();
  [v23 pageMarginInsets];
  sub_769DA0();
  sub_40C570(&qword_951400, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v26 = v34;
  sub_7665A0();
  sub_769DC0();
  v28 = v27;

  (*(v33 + 8))(v9, v26);
  sub_BEB8(v41);
  sub_70550(&v38);
  return v28;
}

id sub_40C47C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
  v3 = sub_7654C0();
  v4 = v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
  v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v3 & 2) != 0;
  sub_14F5D4(v4);
  v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  sub_7654D0();
  v6 = sub_769210();

  [v5 setText:v6];

  [v2 setNeedsLayout];

  return [v1 setNeedsLayout];
}

uint64_t sub_40C570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_40C5B8(__n128 a1)
{
  v1 = a1.n128_f64[0];
  sub_765260();
  sub_765260();
  return v1;
}

uint64_t sub_40C688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_75DAB0();
  __chkstk_darwin(v0 - 8);
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  return sub_765660();
}

uint64_t sub_40C7B4()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_765610();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v56 = &v42 - v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v17 = *(sub_765540() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_780120;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  v21 = v11;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  v50 = v8;
  sub_7655D0();
  v52 = v20;
  v55 = v16;
  sub_765500();
  v58 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_765500();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  sub_7655D0();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v35 = v43;
  v36 = v32;
  sub_765500();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_7697A0();
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  sub_765500();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v40 = v43;
  sub_765500();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_99D918 = v47;
  return result;
}

uint64_t sub_40D170()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_765610();
  __chkstk_darwin(v3 - 8);
  v4 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v11 = *(sub_765540() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_780120;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x3FF0000000000000;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_765500();
  v20 = 0x3FF0000000000000;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  sub_7697A0();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v16[1] = v10;
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_99D920 = v17;
  return result;
}

uint64_t sub_40D9AC@<X0>(uint64_t (*a1)(void)@<X1>, double *a2@<X8>)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_75DA10();
  if (result)
  {
    if (a1())
    {
      if (qword_93DD00 != -1)
      {
        swift_once();
      }

      v9 = sub_766CA0();
      v10 = sub_BE38(v9, qword_99FE48);
      *(a2 + 3) = v9;
      *(a2 + 4) = &protocol witness table for StaticDimension;
      v11 = sub_B1B4(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_75DA20();
      sub_765570();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      *(a2 + 3) = &type metadata for CGFloat;
      *(a2 + 4) = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 0.0;
  }

  return result;
}

uint64_t sub_40DBB8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_766CA0();
  v3 = sub_BE38(v2, qword_99FE18);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_B1B4(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t sub_40DC7C(double a1)
{
  v2 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = sub_765610();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v18 = *(sub_765540() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_780120;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  sub_7655B0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  v44 = v9;
  sub_7655D0();
  v43 = v17;
  v37 = v12;
  sub_765500();
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  sub_7655B0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  sub_765500();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  sub_7697A0();
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4038000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4038000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  return v35;
}

id sub_40E660(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v82 = a3;
  v79 = a2;
  v70 = sub_757AA0();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  v17 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v75 = sub_7623A0();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_BD88(&unk_9457F0, qword_783FD0);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67 - v20;
  v21 = sub_BD88(&unk_948730, &qword_788DD0);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v67 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  sub_764EF0();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = sub_769210();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = sub_757B60();
  v33 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v34 = "inAppDescription";
  if (v32)
  {
    v34 = "ultType.Heading.InAppPurchase";
    v35._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v35._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v35._object = (v34 | 0x8000000000000000);
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_75B750(v35, v86);
  v36 = sub_769210();

  [v33 setText:v36];

  sub_757B90();
  v37 = sub_764EF0();
  v39 = v38;

  if (v39)
  {
    v85._countAndFlagsBits = 0xD000000000000035;
    v85._object = 0x80000000007D3DD0;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_75B750(v85, v87);
    sub_BD88(&unk_944E30, &unk_784930);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_77B6D0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_FA4CC();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_769270();

    v41 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v42 = sub_769210();

    [v41 setText:v42];

    [v41 setHidden:0];
  }

  else
  {
    v43 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v43 setText:0];
    [v43 setHidden:1];
  }

  [v29 setNeedsLayout];
  sub_757B70();
  v45 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v44)
  {
    v46 = sub_769210();
    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v45 setHidden:1];
  }

  [v29 setNeedsLayout];
  v47 = sub_764EC0();
  v69 = v26;
  v48 = sub_764DB0();
  v49 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
  v50 = v71;
  v51 = v75;
  (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
  (*(v50 + 56))(v77, 1, 1, v51);
  sub_239D44(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v52 = v73;
  sub_760940();
  sub_1DFEBC(v47, v48, 0, v24, v52, v79, 0, 0);

  (*(v74 + 8))(v52, v76);
  sub_35280C(v24);
  v68 = v29;
  v53 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v83.value.super.isa = 0;
  v83.is_nil = 0;
  sub_7591D0(v83, v54);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  sub_7591D0(v84, v55);
  sub_759210();
  sub_239D44(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v56 = v82;
  sub_75A0C0();
  sub_75A0C0();
  v79 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v57 = v81;
  sub_757B80();
  v58 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  v59 = v78;
  v60 = v70;
  (*(v78 + 24))(&v53[v58], v57, v70);
  swift_endAccess();
  v61 = *(v59 + 16);
  v62 = v80;
  v61(v80, &v53[v58], v60);
  sub_244454(v62);
  v63 = *(v59 + 8);
  v63(v62, v60);
  v63(v57, v60);
  v64 = v68;
  [v53 setBackgroundColor:v79];
  sub_6A9BFC(93.0, 93.0, v69, v53, v56);
  v61(v57, &v53[v58], v60);
  sub_244454(v57);
  v63(v57, v60);
  [v53 setNeedsLayout];
  sub_396E8();
  v65 = sub_76A000();
  [v64 setBackgroundColor:v65];

  return [v64 setNeedsLayout];
}

id sub_40F004(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_2C8CC8();
  v147 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_2C8DA4();
  v9 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_769240();
    v14 = v13;

    v15 = sub_764FE0();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_764FE0();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_75E120();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_764FE0();
    if (v22)
    {
      v23 = v22;
      v24 = sub_75E0D0();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_76A950();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_765010();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_769240();
  v30 = v29;

  v31 = sub_765010();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_765010();
    if (v35)
    {
      v36 = sub_769210();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_76A950();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_764FF0();
  sub_43B74C(v37);
  v38 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_769240();
    v43 = v42;

    v44 = sub_764FB0();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_764FB0();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_75E120();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_764FB0();
    if (v49)
    {
      v50 = v49;
      v51 = sub_75E0D0();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_76A950();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_769240();
    v57 = v56;

    v58 = sub_764FC0();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_764FC0();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_75E120();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_764FC0();
    if (v63)
    {
      v64 = v63;
      v65 = sub_75E0D0();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_76A950();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_765000();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_75E0D0();

  sub_769A60();
  v69 = sub_75E140();
  sub_75E0E0();
  v70 = objc_allocWithZone(v69);
  v71 = sub_75E150();
  v72 = *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_75E120();
      v81 = v80;

      v82 = sub_75E120();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_76A950();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_1A6B10(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_75E120();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_75E120();
    v76 = v75;

    v77 = sub_765000();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v145 = v74;
  }

  else
  {
    v77 = sub_765000();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v145 = 0;
  }

  v87 = v77;
  v88 = sub_75E120();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v145 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_76A950();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_765000();
    sub_1A6B10(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_765020())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse] = 0;
    sub_2C8B74(v105);
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel] setText:0];
    sub_1A5114(0, 0);
    goto LABEL_119;
  }

  v93 = sub_765700();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_75E0D0();

  v96 = v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse] = 1;
  sub_2C8B74(v96);
  v97 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_765710();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_769240();
  v102 = v101;

  v103 = sub_765710();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_765710();
    if (v118)
    {
      v119 = sub_769210();
    }

    else
    {
      v119 = 0;
    }

    [v97 setText:v119];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v141 = sub_76A950();

  if ((v141 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_769A60();
  v120 = sub_75E140();
  sub_75E0E0();
  v121 = objc_allocWithZone(v120);
  v122 = sub_75E150();
  v123 = *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v6[v147] != 1)
  {
    if (v123)
    {
      v130 = v123;
      v131 = sub_75E120();
      v133 = v132;

      v134 = sub_75E120();
      if (v133)
      {
        if (v131 == v134 && v133 == v135)
        {

          goto LABEL_119;
        }

        v142 = sub_76A950();

        if (v142)
        {
          goto LABEL_164;
        }

LABEL_151:
        v140 = v122;
        sub_1A6B10(v122);

        goto LABEL_119;
      }
    }

    else
    {
      sub_75E120();
    }

    goto LABEL_151;
  }

  if (v123)
  {
    v124 = v123;
    v125 = sub_75E120();
    v127 = v126;

    v128 = sub_765700();
    if (!v128)
    {
      if (v127)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v129 = v128;
    v148 = v95;
  }

  else
  {
    v136 = sub_765700();
    if (!v136)
    {
      goto LABEL_164;
    }

    v129 = v136;
    v148 = v95;
    v127 = 0;
    v125 = 0;
  }

  v137 = sub_75E120();
  v139 = v138;

  if (v127)
  {
    if (v139)
    {
      if (v125 == v137 && v127 == v139)
      {

        goto LABEL_119;
      }

      v144 = sub_76A950();

      v95 = v148;
      if (v144)
      {
        goto LABEL_164;
      }

LABEL_162:
      v143 = sub_765700();
      sub_1A6B10(v143);

      goto LABEL_119;
    }

    v95 = v148;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v148;
  if (v139)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_764FA0();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == &dword_0 + 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      v113 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler + 8];
      *v111 = sub_4115E4;
      v111[1] = v110;

      sub_F704(v112, v113);
      v114 = &v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      v115 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      v116 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler + 8];
      *v114 = sub_4115E4;
      v114[1] = v110;
      sub_F704(v115, v116);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_2C822C();

  return [v6 setNeedsLayout];
}

uint64_t sub_40FCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_268C8(v6);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_40FDE0(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v159 = a4;
  v152 = a3;
  v165 = a2;
  v6 = sub_BD88(&qword_9540B0, qword_792620);
  v161 = *(v6 - 8);
  v162 = v6;
  __chkstk_darwin(v6);
  v160 = v144 - v7;
  v8 = sub_7615B0();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v155 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7615D0();
  v11 = *(v10 - 8);
  v157 = v10;
  v158 = v11;
  __chkstk_darwin(v10);
  v156 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766D70();
  v163 = *(v13 - 8);
  v164 = v13;
  __chkstk_darwin(v13);
  v171 = v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v181 = v144 - v16;
  __chkstk_darwin(v17);
  v182 = v144 - v18;
  __chkstk_darwin(v19);
  v183 = v144 - v20;
  __chkstk_darwin(v21);
  v184 = v144 - v22;
  __chkstk_darwin(v23);
  v180 = v144 - v24;
  __chkstk_darwin(v25);
  v185 = v144 - v26;
  __chkstk_darwin(v27);
  v174 = v144 - v28;
  v29 = sub_767030();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v150 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v151 = v144 - v33;
  __chkstk_darwin(v34);
  v36 = v144 - v35;
  __chkstk_darwin(v37);
  v179 = v144 - v38;
  __chkstk_darwin(v39);
  v147 = v144 - v40;
  __chkstk_darwin(v41);
  v148 = v144 - v42;
  __chkstk_darwin(v43);
  v170 = v144 - v44;
  __chkstk_darwin(v45);
  v145 = v144 - v46;
  __chkstk_darwin(v47);
  v146 = v144 - v48;
  __chkstk_darwin(v49);
  v176 = v144 - v50;
  __chkstk_darwin(v51);
  v177 = v144 - v52;
  __chkstk_darwin(v53);
  v178 = v144 - v54;
  __chkstk_darwin(v55);
  v186 = v144 - v56;
  __chkstk_darwin(v57);
  v59 = v144 - v58;
  __chkstk_darwin(v60);
  v169 = v144 - v61;
  __chkstk_darwin(v62);
  v64 = v144 - v63;
  __chkstk_darwin(v65);
  v67 = v144 - v66;
  __chkstk_darwin(v68);
  v70 = v144 - v69;
  __chkstk_darwin(v71);
  v175 = v144 - v72;
  v73 = sub_765020();
  if (v73)
  {
  }

  v166 = v73;
  v172 = v59;
  v188 = a1;
  v168 = v36;
  sub_767020();
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v189 = sub_7666D0();
  sub_BE38(v189, qword_99ED70);
  sub_766FF0();
  v74 = v30;
  v76 = v30 + 8;
  v75 = *(v30 + 8);
  v75(v64, v29);
  v77 = v29;
  v78 = v165;
  v144[3] = ~v165;
  sub_767010();
  v75(v67, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v144[2] = v81;
  sub_767000();
  v191 = v76;
  v75(v70, v77);
  v82 = sub_764FE0();
  if (v82)
  {
    v83 = v82;
    sub_75E120();
  }

  v173 = v75;
  v84 = *(v74 + 16);
  v187 = v74 + 16;
  v190 = v84;
  v84(v64, v175, v77);
  sub_766D50();
  sub_766D90();
  v149 = sub_7670D0();
  swift_allocObject();
  v167 = sub_767090();
  v85 = v186;
  sub_767020();
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v86 = sub_BE38(v189, qword_99EDB8);
  v87 = v172;
  v144[1] = v86;
  sub_766FF0();
  v88 = v173;
  v173(v85, v80);
  sub_767010();
  v88(v87, v80);
  v89 = v169;
  sub_767000();
  v88(v64, v80);
  sub_765010();
  v90 = v89;
  v91 = v190;
  v190(v64, v90, v80);
  sub_766D50();
  v92 = v186;
  sub_766D90();
  sub_767020();
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  sub_BE38(v189, qword_99EDD0);
  sub_766FF0();
  v88(v92, v80);
  sub_767010();
  v88(v87, v80);
  sub_767000();
  v88(v64, v80);
  v93 = sub_764FB0();
  if (v93)
  {
    v94 = v93;
    sub_75E120();

    v91 = v190;
  }

  v91(v64, v178, v80);
  sub_766D50();
  sub_766D90();
  v95 = v186;
  sub_767020();
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  sub_BE38(v189, qword_99EDE8);
  v96 = v172;
  sub_766FF0();
  v88(v95, v80);
  sub_767010();
  v88(v96, v80);
  sub_767000();
  v88(v64, v80);
  v97 = sub_764FC0();
  if (v97)
  {
    v98 = v97;
    sub_75E120();

    v190(v64, v177, v80);
  }

  else
  {
    v91(v64, v177, v80);
  }

  sub_766D50();
  sub_766D90();
  sub_767020();
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v99 = sub_BE38(v189, qword_99EDA0);
  v100 = v145;
  v144[0] = v99;
  sub_766FF0();
  v88(v64, v80);
  v101 = v146;
  sub_767010();
  v88(v100, v80);
  sub_767000();
  v88(v101, v80);
  v102 = sub_765000();
  if (v102)
  {
    v103 = v102;
    sub_75E120();
  }

  v104 = v190;
  v190(v64, v176, v80);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v105 = v189;
  if (qword_93D730 != -1)
  {
    v143 = v189;
    swift_once();
    v105 = v143;
  }

  sub_BE38(v105, qword_99ED88);
  v106 = v147;
  sub_766FF0();
  v107 = v173;
  v173(v64, v80);
  v108 = v148;
  sub_767010();
  v107(v106, v80);
  v109 = v170;
  sub_767000();
  v107(v108, v80);
  v201._object = 0x80000000007D32E0;
  v201._countAndFlagsBits = 0xD000000000000012;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  sub_75B750(v201, v202);
  v104(v64, v109, v80);
  sub_766D50();
  sub_766D90();
  v110 = v186;
  sub_767020();
  v111 = v172;
  sub_766FF0();
  v107(v110, v80);
  sub_767010();
  v107(v111, v80);
  sub_767000();
  v107(v64, v80);
  v112 = sub_765020();
  v113 = v171;
  if (v112)
  {
    sub_765710();
  }

  v190(v64, v179, v80);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v114 = v150;
  sub_766FF0();
  v107(v64, v80);
  v115 = v151;
  sub_767010();
  v107(v114, v80);
  v116 = v168;
  sub_767000();
  v107(v115, v80);
  if (sub_765020())
  {
    v117 = sub_765700();

    if (v117)
    {
      sub_75E120();
    }
  }

  v190(v64, v116, v80);
  sub_766D50();
  sub_766D90();
  v118 = v113;
  if (qword_93C8C8 != -1)
  {
    swift_once();
  }

  v119 = v154;
  v120 = sub_BE38(v154, qword_99C700);
  (*(v153 + 16))(v155, v120, v119);
  v121 = v164;
  v200[3] = v164;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v122 = sub_B1B4(v200);
  v123 = v163;
  v124 = *(v163 + 16);
  v124(v122, v174, v121);
  v199[3] = v121;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_B1B4(v199);
  v124(v125, v185, v121);
  v198[3] = v121;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_B1B4(v198);
  v124(v126, v180, v121);
  v197[3] = v121;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_B1B4(v197);
  v124(v127, v184, v121);
  v196[3] = v121;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_B1B4(v196);
  v124(v128, v183, v121);
  v195[3] = v121;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_B1B4(v195);
  v124(v129, v182, v121);
  v194[3] = v121;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_B1B4(v194);
  v124(v130, v181, v121);
  v193[3] = v121;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_B1B4(v193);
  v124(v131, v118, v121);
  v192 = v167;
  sub_7665D0();
  v132 = v156;
  sub_7615C0();
  v133 = [v159 traitCollection];
  sub_2C96A0(v134);
  v135 = v160;
  v136 = v157;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v137 = v162;
  sub_7673F0();
  v139 = v138;

  (*(v161 + 8))(v135, v137);
  (*(v158 + 8))(v132, v136);
  v140 = *(v123 + 8);
  v140(v171, v121);
  v141 = v173;
  v173(v168, v80);
  v140(v181, v121);
  v141(v179, v80);
  v140(v182, v121);
  v141(v170, v80);
  v140(v183, v121);
  v141(v176, v80);
  v140(v184, v121);
  v141(v177, v80);
  v140(v180, v121);
  v141(v178, v80);
  v140(v185, v121);
  v141(v169, v80);
  v140(v174, v121);
  v141(v175, v80);
  return v139;
}

double sub_4111E4(void *a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C8E0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_BE38(v6, qword_99C728);
  v31 = a1;
  sub_7592B0();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_93C8D8 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_99C720;
  v33.value._rawValue = 0;
  isa = sub_7699C0(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_759930();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_759930();

  v17(v5, v2);
  sub_76A130();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

uint64_t sub_4115A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_4115EC(uint64_t a1, char a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_940590);

    sub_22AFB8();
    sub_413754(&qword_950A60, sub_22AFB8, &protocol conformance descriptor for UIImageView);
    sub_75A0C0();
  }

  sub_22AFB8();
  sub_413754(&qword_950A60, sub_22AFB8, &protocol conformance descriptor for UIImageView);
  sub_75A0C0();
  sub_3D3910(a1, a2 & 1);
  v9 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v11 = *(*(v9 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_413754(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_75A0C0();

  v13 = *(*(v9 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();

  v14 = *(*(v9 + v10) + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView];
    v16 = v14;
    v17 = v15;
    sub_75A0C0();

    v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView];
    sub_75A0C0();
  }
}

uint64_t sub_4118D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = sub_7623A0();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0, qword_783FD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_BD88(&qword_9533C8, &unk_79B340);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_3D3F0C(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
  if (sub_75B2F0())
  {
    v29 = sub_7658D0();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v31 = sub_75B2E0();
  v32 = sub_BD88(&unk_948740, &unk_784920);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = sub_75CA40();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = sub_758C70();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  sub_757BA0();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = sub_75BD30();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = sub_765870();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_4A18A4(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10A2C(v48, &unk_9457D0, &unk_785630);
    v41[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10A2C(v44, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v18, &unk_9457E0, &qword_785640);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = sub_757B90();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_4A18A4(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10A2C(v48, &unk_9457D0, &unk_785630);
    v50[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v50 setNeedsLayout];

    sub_10A2C(v44, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v18, &unk_9457E0, &qword_785640);
    v55 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = sub_764EE0();
    if (v57)
    {
    }

    sub_1FC9E8(v57 != 0);
    v58 = *&v50[v55];
    v59 = sub_764EC0();
    v60 = v56;

    v61 = sub_764DB0();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_413754(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v65 = v92;
    sub_760940();
    sub_1DFEBC(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10A2C(v62, &unk_948730, &qword_788DD0);
    v66 = v84;
    sub_59D3B4(v60, v84, v54);

    v23 = v86;
    sub_3D9820(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
    v68 = sub_75BD30();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = sub_765870();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_4A18A4(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10A2C(v71, &unk_9457D0, &unk_785630);
    v67[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v67 setNeedsLayout];
    sub_10A2C(v69, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v18, &unk_9457E0, &qword_785640);
    sub_3D9820(v30, v23);
  }

  sub_10A2C(v99, &unk_94A780, &unk_788DC0);
  sub_10A2C(v23, &qword_9533C8, &unk_79B340);
  return sub_10A2C(v35, &unk_948730, &qword_788DD0);
}

void sub_4124D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v154 = a3;
  v152 = a2;
  v8 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v8 - 8);
  v144 = v125 - v9;
  v143 = sub_7623A0();
  v140 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_9457F0, qword_783FD0);
  v148 = *(v11 - 8);
  v149 = v11;
  __chkstk_darwin(v11);
  v142 = v125 - v12;
  v13 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v13 - 8);
  v145 = v125 - v14;
  v15 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v15 - 8);
  v147 = v125 - v16;
  v17 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v17 - 8);
  v146 = v125 - v18;
  v19 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v19 - 8);
  v21 = v125 - v20;
  v22 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v22 - 8);
  v24 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v125 - v26;
  v28 = sub_BD88(&qword_9533C8, &unk_79B340);
  __chkstk_darwin(v28 - 8);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = sub_75CA40();
  v35 = *(v34 - 1);
  __chkstk_darwin(v34);
  v151 = v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v125 - v38;
  sub_761320();
  v40 = a1;
  if (swift_dynamicCastClass())
  {
    v150 = a1;

    v41 = sub_7612A0();
    v43 = v153;
    v42 = v154;
    sub_4118D4(v41, v154);

    v44 = *(v43 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v45 = sub_761300();
    v46 = sub_761310();
    sub_1ECF90(v45, v46, v42);

    v47 = *(v43 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView);
    v48 = [v44 backgroundColor];
    [v47 setBackgroundColor:v48];

    sub_7612B0();
    v49 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v50 = v151;
    (*(v35 + 16))(v151, v43 + v49, v34);
    swift_beginAccess();
    (*(v35 + 24))(v43 + v49, v39, v34);
    swift_endAccess();
    sub_425138(v50);
    v51 = *(v35 + 8);
    v51(v50, v34);
    v51(v39, v34);
    *(v43 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_7612E0() & 1;
    sub_427B84(0);
    sub_7612A0();

    v52 = sub_75B2E0();
    v53 = a4;
    v54 = a5;
    v55 = v152;
  }

  else
  {
    v135 = v33;
    v56 = v39;
    v57 = v153;
    v137 = v34;
    v134 = v24;
    v136 = v30;
    v139 = v27;
    v138 = v21;
    sub_75E230();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      return;
    }

    v59 = v58;
    v60 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v150 = v40;

    v61 = sub_1ED8D8(v59, v154);
    v62 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView);
    v63 = [v60 backgroundColor];
    [v62 setBackgroundColor:v63];

    sub_75E1C0();
    v64 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v65 = v35;
    v66 = *(v35 + 16);
    v67 = v151;
    v68 = v137;
    v66(v151, v57 + v64, v137);
    swift_beginAccess();
    (*(v65 + 24))(v57 + v64, v56, v68);
    swift_endAccess();
    sub_425138(v67);
    v69 = *(v65 + 8);
    v69(v67, v68);
    v69(v56, v68);
    *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_75E1F0() & 1;
    sub_427B84(0);
    v70 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
    if (sub_75E1A0())
    {
      v71 = sub_7658D0();
    }

    else
    {
      v71 = 0;
    }

    v72 = v135;
    [*(v70 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v71];

    v73 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
    v74 = sub_75E190();
    sub_75E1C0();
    v75 = *(v65 + 56);
    v75(v72, 0, 1, v68);
    sub_3D52FC(v74, v154, v72);

    sub_10A2C(v72, &qword_9533C8, &unk_79B340);
    v76 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
    sub_75E1B0();
    v77 = sub_769210();

    [v76 setTitle:v77 forState:0];

    v78 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (sub_75E1A0())
    {
      v79 = sub_7658D0();
    }

    else
    {
      v79 = 0;
    }

    v80 = v148;
    [v78 setAttributedText:v79];

    v81 = sub_75E190();
    v82 = v136;
    v151 = v59;
    sub_75E1C0();
    v75(v82, 0, 1, v137);
    v83 = v154;
    sub_3D52FC(v81, v154, v82);
    v84 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
    v153 = v81;
    v85 = sub_7657F0();
    v86 = sub_BD88(&unk_948740, &unk_784920);
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v139;
    v135 = (v87 + 56);
    v88(v139, 1, 1, v86);
    v90 = sub_758C70();
    v91 = v138;
    (*(*(v90 - 8) + 56))(v138, 1, 1, v90);
    sub_757BA0();
    v92 = swift_dynamicCastClass();
    v93 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
    if (v92)
    {
      v132 = v88;
      v133 = v86;
      v137 = v84;
      v94 = v92;
      v95 = v93;
      v128 = sub_75BD30();
      v96 = *(v128 - 8);
      v127 = *(v96 + 56);
      v129 = v96 + 56;
      v97 = v146;
      v127(v146, 1, 1, v128);
      v126 = *(v80 + 56);
      v98 = v147;
      v126(v147, 1, 1, v149);
      v99 = sub_765870();
      v100 = *(v99 - 8);
      v125[0] = *(v100 + 56);
      v125[1] = v100 + 56;
      v101 = v145;
      (v125[0])(v145, 1, 1, v99);
      swift_retain_n();
      sub_4A18A4(v94, v95, v89, v154, 1, 0, v138, v97, v101, v98);
      sub_10A2C(v101, &unk_9457D0, &unk_785630);
      v95[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      v130 = v95;
      [v95 setNeedsLayout];
      sub_10A2C(v98, &unk_94AC40, qword_78D7F0);
      sub_10A2C(v97, &unk_9457E0, &qword_785640);
      v102 = *&v137[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
      v131 = v94;
      v103 = sub_757B90();
      v127(v97, 1, 1, v128);
      v126(v98, 1, 1, v149);
      v104 = v99;
      v91 = v138;
      (v125[0])(v101, 1, 1, v104);
      sub_4A18A4(v103, v102, v89, v154, 0, 0, v91, v97, v101, v98);
      sub_10A2C(v101, &unk_9457D0, &unk_785630);
      v102[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      [v102 setNeedsLayout];

      sub_10A2C(v98, &unk_94AC40, qword_78D7F0);
      sub_10A2C(v97, &unk_9457E0, &qword_785640);
      v105 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
      [*&v102[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v102[v105] setUserInteractionEnabled:0];
      [v102 setHidden:1];
      v106 = sub_764EE0();
      if (v106)
      {
      }

      sub_1FC9E8(v106 != 0);
      v107 = *&v102[v105];
      v108 = sub_764EC0();

      v109 = sub_764DB0();

      v110 = v134;
      v132(v134, 1, 1, v133);
      v111 = v140;
      v112 = v143;
      (*(v140 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
      (*(v111 + 56))(v144, 1, 1, v112);
      sub_413754(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v113 = v142;
      sub_760940();
      v114 = v154;
      sub_1DFEBC(v108, v109, 0, v110, v113, v154, 0, 0);

      (*(v148 + 8))(v113, v149);
      sub_10A2C(v110, &unk_948730, &qword_788DD0);
      v115 = v137;
      sub_59D3B4(v85, v137, v114);

      v82 = v136;
      sub_3D9820(v115, v136);
      v116 = v152;
      v117 = v139;
    }

    else
    {
      [*&v84[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] setHidden:1];
      v118 = *&v84[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
      v119 = sub_75BD30();
      v120 = v146;
      (*(*(v119 - 8) + 56))(v146, 1, 1, v119);
      v121 = v147;
      (*(v80 + 56))(v147, 1, 1, v149);
      v122 = sub_765870();
      v123 = v145;
      (*(*(v122 - 8) + 56))(v145, 1, 1, v122);
      sub_4A18A4(v85, v118, v139, v83, 0, 0, v91, v120, v123, v121);
      v124 = v123;
      v117 = v139;
      sub_10A2C(v124, &unk_9457D0, &unk_785630);
      v118[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      [v118 setNeedsLayout];
      sub_10A2C(v121, &unk_94AC40, qword_78D7F0);
      sub_10A2C(v120, &unk_9457E0, &qword_785640);
      sub_3D9820(v84, v82);
      v116 = v152;
    }

    sub_10A2C(v91, &unk_94A780, &unk_788DC0);
    sub_10A2C(v117, &unk_948730, &qword_788DD0);
    sub_10A2C(v82, &qword_9533C8, &unk_79B340);
    sub_75E190();

    v52 = sub_7657F0();
    v53 = a4;
    v54 = a5;
    v55 = v116;
  }

  sub_3D70A4(v52, v55, v53, v54);
}

uint64_t sub_413754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *sub_41379C(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761370();
  sub_7688F0();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_768210();
  v30 = v36;
  v7 = v37;
  v33 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v8 = swift_allocObject();
  v32 = xmmword_77D9F0;
  *(v8 + 16) = xmmword_77D9F0;
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_76A1F0();
  v41.is_nil = 0;
  *(v8 + 32) = sub_769830(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_12CCE0;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_BD88(&qword_9540E0, &qword_79C870));
  v10 = sub_414358(&v36, 0x7363697274654DLL, 0xE700000000000000, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000000007E0800;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_414620;
  v12[13] = v11;

  *&v30 = v10;

  sub_7572D0();
  v13 = sub_7572B0();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_76A6E0();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000000007E0820;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x80000000007DDA30;
  *(v17 + 96) = 0;
  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_76A6E0();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77B6C0;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_7572D0();
  v24 = sub_7572B0();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

double sub_413C68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_761350();
  }

  return result;
}

uint64_t sub_413CC0(__n128 a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a4;
  v5 = sub_758B40();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v43 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_760280();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v11 - 8);
  v13 = v33 - v12;
  v14 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v14 - 8);
  v16 = v33 - v15;
  v17 = sub_765490();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v21 - 8);
  v23 = v33 - v22;
  v24 = sub_BD88(&unk_93F630, &unk_77E230);
  v44 = a3;
  sub_768860();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_268C8(v23);
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v27 = *(v18 + 104);
  v33[2] = v20;
  v27(v20, enum case for FlowPage.viewController(_:), v17);
  v28 = sub_7570A0();
  v29 = *(*(v28 - 8) + 56);
  v33[1] = v16;
  v29(v16, 1, 1, v28);
  v30 = sub_759E30();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v46 = sub_BD88(&qword_9540E0, &qword_79C870);
  v45 = v40;
  v31 = v40;
  sub_768790();
  (*(v34 + 104))(v35, enum case for FlowPresentationContext.push(_:), v36);
  (*(v38 + 104))(v37, enum case for FlowAnimationBehavior.infer(_:), v39);
  (*(v41 + 104))(v43, enum case for FlowOrigin.inapp(_:), v42);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v32 = sub_758AD0();
  sub_32AC14(v32, 1, v44, v23);

  return (*(v25 + 8))(v23, v24);
}

id sub_4142C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_414318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_414358(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 + *(&stru_20.nsects + (swift_isaMask & *v4));
  v26 = *(a1 + 1);
  v27 = *(a1 + 24);
  v8 = *(a1 + 1);
  v25 = *(a1 + 2);
  v7 = v25;
  v9 = a1[6];
  v10 = *(a1 + 1);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  *(v6 + 6) = v9;
  v20 = *a1;
  v21 = v10;
  v22 = *(a1 + 2);
  v23 = a1[6];
  v24 = v9;
  objc_allocWithZone(sub_BD88(&qword_9540E8, &qword_79C878));

  sub_B2F4C(&v25, v19);
  sub_1ED18(&v26, v19, &qword_9540F0, qword_79C880);
  sub_1ED18(&v24, v19, &qword_945EC0, &qword_786320);
  *(v4 + *&stru_68.sectname[swift_isaMask & *v4]) = sub_767EF0();
  v18.receiver = v4;
  v18.super_class = sub_BD88(&qword_9540E0, &qword_79C870);
  v11 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  v12 = [v11 navigationItem];
  if (a3)
  {
    v13 = sub_769210();
  }

  else
  {
    v13 = 0;
  }

  [v12 setTitle:v13];

  v14 = [v11 navigationItem];
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  isa = sub_769450().super.isa;

  [v14 setRightBarButtonItems:isa];

  v16 = [v11 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_4145E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_414628(uint64_t a1)
{
  v3 = sub_BD88(&unk_954810, qword_79C938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_60138C(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_762E10();
    if (v7)
    {
      v8 = sub_769210();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_4147B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_41585C(&qword_954800, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_41585C(&qword_954808, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider, &unk_7ADC90);

  return v2;
}

uint64_t sub_4148B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_7644D0();
  v4 = v3;
  sub_75A3C0();
  swift_allocObject();
  v5 = sub_75A3B0();
  swift_allocObject();
  v6 = sub_75A3B0();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_4157C8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_41497C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_415774();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_4149B0(uint64_t a1)
{
  v2 = sub_7570A0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_4156AC(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_415714(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50, &qword_782590);
  sub_109C4(&v9[*(v19 + 48)], v18, &unk_93FD30, qword_77F240);
  sub_75F250();
  v20 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30, qword_77F240);
  sub_1ED18(v18, &v6[v20], &unk_93FD30, qword_77F240);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30, qword_77F240);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_41585C(&qword_947410, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = sub_7691C0();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10A2C(v15, &unk_93FD30, qword_77F240);
      sub_10A2C(v18, &unk_93FD30, qword_77F240);
      v27(v12, v2);
      sub_10A2C(v6, &unk_93FD30, qword_77F240);
      return v23 & 1;
    }

    sub_10A2C(v15, &unk_93FD30, qword_77F240);
    sub_10A2C(v18, &unk_93FD30, qword_77F240);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30, qword_77F240);
  sub_10A2C(v18, &unk_93FD30, qword_77F240);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40, &unk_780300);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(uint64_t a1)
{
  result = qword_954120;
  if (!qword_954120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_414F64@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v61 = sub_75CFE0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v3 - 8);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v8 - 8);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v48 - v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v48 - v16;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v20 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v48 - v24;
  v26 = sub_759810();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v25, 1, 1, v26);
  v28 = sub_75CFD0();
  v54 = *(v28 - 8);
  v55 = v28;
  v29 = *(v54 + 56);
  v49 = v7;
  v29(v7, 1, 1);
  v50 = v25;
  sub_1ED18(v25, v22, &unk_948010, qword_789590);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_10A2C(v22, &unk_948010, qword_789590);
    v30 = 0;
  }

  else
  {
    v30 = sub_7597B0();
    (*(v27 + 8))(v22, v26);
  }

  sub_5E740C(v30, v19);

  if (qword_93DE58 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v12, qword_9A0220);
  if (qword_93DE30 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v12, qword_9A01A8);
  v33 = v53;
  sub_4156AC(v32, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v13 + 56))(v33, 0, 1, v12);
  v34 = v51;
  sub_4156AC(v19, v51, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v52;
  sub_4156AC(v31, v52, type metadata accessor for TitleHeaderView.TextConfiguration);
  v36 = v56;
  sub_1ED18(v33, v56, &qword_9439E0, &unk_787AB0);
  v37 = v49;
  v38 = v58;
  sub_1ED18(v49, v58, &qword_9439D8, &qword_799160);
  v39 = v59;
  (*(v59 + 104))(v60, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v61);
  sub_396E8();
  v48 = sub_769FB0();
  sub_10A2C(v37, &qword_9439D8, &qword_799160);
  sub_10A2C(v33, &qword_9439E0, &unk_787AB0);
  sub_415714(v19, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v50, &unk_948010, qword_789590);
  v40 = type metadata accessor for TitleHeaderView.Style(0);
  v41 = v40[8];
  v42 = v57;
  sub_15CEA0(v34, v57, v43);
  sub_15CEA0(v35, v42 + v40[5], v44);
  sub_109C4(v36, v42 + v40[6], &qword_9439E0, &unk_787AB0);
  *(v42 + v40[7]) = 0;
  *(v42 + v41) = 0;
  *(v42 + v40[9]) = 1;
  *(v42 + v40[14]) = 0x4030000000000000;
  *(v42 + v40[12]) = 0;
  *(v42 + v40[13]) = v48;
  (*(v39 + 32))(v42 + v40[11], v60, v61);
  v46 = v54;
  v45 = v55;
  if ((*(v54 + 48))(v38, 1, v55) != 1)
  {
    return (*(v46 + 32))(v42 + v40[10], v38, v45);
  }

  sub_10A2C(v38, &qword_9439D8, &qword_799160);
  return (*(v46 + 104))(v42 + v40[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v45);
}

uint64_t sub_4156AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_415714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_415774()
{
  result = qword_9547F0;
  if (!qword_9547F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9547F0);
  }

  return result;
}

unint64_t sub_4157C8()
{
  result = qword_9547F8;
  if (!qword_9547F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9547F8);
  }

  return result;
}

uint64_t sub_41581C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_41585C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_4158A4()
{
  v33 = sub_7664A0();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_75D1E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D250();
  sub_161DC(v6, qword_954820);
  v35 = sub_BE38(v6, qword_954820);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v40 = sub_BE38(v8, qword_99F658);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = sub_761250();
  v52[3] = v32;
  v14 = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_B1B4(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_761240();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_B1B4(v51);
  v21 = v15;
  sub_761240();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_782450;
  v55 = xmmword_782450;
  v56 = 0;
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_BE38(v34, qword_99E9F8);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = sub_766CA0();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  sub_766CB0();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v41);
  v26(v28, v18, v13);
  sub_766CB0();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return sub_75D230();
}

double sub_415EE0(double result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = [swift_unknownObjectRetain() traitCollection];
    sub_7699D0();

    sub_75D210();
    if (qword_93D078 != -1)
    {
      swift_once();
    }

    v4 = sub_BD88(&qword_944E50, qword_78AFE0);
    sub_BE38(v4, qword_99D928);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    sub_75D240();
    if (qword_93D068 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&qword_940AD0, &unk_78F910);
    sub_BE38(v5, qword_954838);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    sub_75D220();
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_4160C0()
{
  v0 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_161DC(v0, qword_954838);
  sub_BE38(v0, qword_954838);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592E0();
}

uint64_t sub_416158()
{
  v0 = sub_7664A0();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_954868 = sub_761250();
  qword_954870 = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_B1B4(qword_954850);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_761240();
}

uint64_t sub_4162A8()
{
  v0 = sub_BD88(&qword_944E50, qword_78AFE0);
  sub_161DC(v0, qword_99D928);
  sub_BE38(v0, qword_99D928);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for CGSize(0);
  return sub_7592D0();
}

UIFontTextStyle sub_416354()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99D940);
  v1 = sub_BE38(v0, qword_99D940);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_416410()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761250();
  sub_161DC(v4, qword_99D958);
  sub_BE38(v4, qword_99D958);
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99D940);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_761240();
}

char *sub_4165AC(double a1, double a2, double a3, double a4)
{
  v105 = sub_768C60();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C100();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = sub_761250();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_7666D0();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75A010();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = sub_75C840();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = sub_75A030();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_765770();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_10974(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_418748(v23, v36, v20, v27, v31, v32, 0.0, 0.0, 0.0, 0.0);
  sub_BEB8(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_BE38(v97, qword_99D940);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_93D088 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_BE38(v101, qword_99D958);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_418818(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  v53 = sub_75D250();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_93D078 != -1)
  {
    swift_once();
  }

  v62 = sub_BD88(&qword_944E50, qword_78AFE0);
  sub_BE38(v62, qword_99D928);
  *&v109 = v60;
  sub_7592B0();

  v63 = v112;
  sub_75C0B0();
  sub_75C0C0();
  sub_75C060();
  sub_75C0A0();
  v64 = v106;
  sub_75C0E0();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_BD88(&qword_954A10, qword_79CA80));
  v67 = sub_765950();
  v68 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v112, &unk_93FBD0, &qword_77DFA0);
  v102 = v69;
  sub_769E70();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v77 = v76;
  v78 = sub_76A040();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = sub_76A040();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = sub_76A090();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v112, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v112, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_417324()
{
  v1 = sub_7664F0();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_949ED8, qword_78B190);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_75D250();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v37.receiver = v0;
  v37.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v15 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_4193C4(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &qword_949ED8, qword_78B190);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    sub_75D1F0();
    [v0 layoutMargins];
    sub_75D1F0();
    [v0 layoutMargins];
    sub_75D200();
    (*(v8 + 16))(v10, v13, v7);
    v36[18] = sub_BD88(&qword_954A10, qword_79CA80);
    v36[19] = &protocol witness table for UIView;
    v36[15] = v18;
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView];
    v36[13] = sub_75A030();
    v36[14] = &protocol witness table for UIView;
    v36[10] = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView];
    v36[8] = type metadata accessor for CappedSizeRoundedTitledButton(0);
    v36[9] = &protocol witness table for UIView;
    v36[5] = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v36[4] = &protocol witness table for UIView;
    v36[3] = v23;
    v36[0] = v22;
    sub_75D270();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    sub_75D260();
    v27 = [v0 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();

    v28 = v31;
    sub_75D1D0();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v38);
    sub_75D650();
    if (Width == CGRectGetWidth(v39))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_41790C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_75C100();
  __chkstk_darwin(v4 - 8);
  if (qword_93D078 != -1)
  {
    swift_once();
  }

  v5 = sub_BD88(&qword_944E50, qword_78AFE0);
  sub_BE38(v5, qword_99D928);
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView;
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  if (!v7 || ((v8 = v7, v9 = sub_765960(), v8, swift_beginAccess(), v10 = *(v9 + 24), v11 = *(v9 + 32), , v28 == v10) ? (v12 = v29 == v11) : (v12 = 0), !v12))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v13 = swift_allocObject();
    *(v13 + 16) = 2;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = _swiftEmptyArrayStorage;
    *(v13 + 24) = v28;
    *(v13 + 32) = v29;
    sub_75C0B0();
    sub_75C0C0();
    sub_75C060();
    sub_75C0A0();
    sub_75C0E0();
    v14 = objc_allocWithZone(sub_BD88(&qword_954A10, qword_79CA80));
    v15 = sub_765950();
    v16 = *&v3[v6];
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = sub_76A1C0();

      v20 = *&v3[v6];
      if ((v19 & 1) == 0 && v20)
      {
        [*&v3[v6] removeFromSuperview];
        v20 = *&v3[v6];
      }
    }

    else
    {
      v20 = 0;
    }

    *&v3[v6] = v15;
    v21 = v15;

    v22 = *&v3[v6];
    if (v22)
    {
      if (v16)
      {
        v23 = v16;
        v24 = v22;
        v25 = sub_76A1C0();

        if (v25)
        {

          v22 = v24;
LABEL_22:

          return;
        }
      }

      else
      {
        v26 = v22;
      }

      v27 = [v3 contentView];
      [v27 addSubview:v22];

      if (v16)
      {
        sub_765980();
      }

      sub_765990();

      goto LABEL_22;
    }

    v22 = v16;
    goto LABEL_22;
  }
}

uint64_t sub_417CA8(uint64_t a1, uint64_t a2)
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  isa = sub_769630().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_74E4B8(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_93C428 != -1)
        {
          swift_once();
        }

        v13 = &qword_946638;
      }

      else
      {
        if (qword_93C420 != -1)
        {
          swift_once();
        }

        v13 = &qword_946630;
      }

      return [*&v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_418048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell(uint64_t a1)
{
  result = qword_9548A8;
  if (!qword_9548A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4181AC(uint64_t a1)
{
  sub_4182D4(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_4182D4(319, &qword_9548C0, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_4182D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_418328(unint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = sub_76A860();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_76A770();

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) > result)
  {

LABEL_7:
    v4 = sub_75F480();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_418404()
{

  return swift_deallocClassInstance();
}

void sub_4184A4(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_418538@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = sub_75E5B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_4185AC@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_418328(a1);
  *a2 = result;
  return result;
}

uint64_t sub_4185D4()
{
  sub_759210();
  v0 = sub_759020();
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  sub_76A090();
  sub_759070();
  return v0;
}

double sub_41863C(uint64_t a1)
{
  sub_759190();
  if (*(v1 + 56))
  {
    sub_759210();
    sub_418700(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_75A0C0();
  }

  return result;
}

uint64_t sub_418700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_418748(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v16[3] = a5;
  v16[4] = a6;
  v13 = sub_B1B4(v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = objc_allocWithZone(a4);
  return sub_75A000();
}

id sub_418818(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_761250();
  v26[3] = v12;
  v26[4] = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v13 = sub_B1B4(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_9435F8];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_134D8(v26, &a4[qword_9435F0]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_13D584(a3);
  v18 = sub_7666D0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  sub_75C540();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v21 = sub_76A080();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = sub_76A040();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_BEB8(v26);
  return v20;
}

void sub_418B14()
{
  v1 = sub_761250();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_7666D0();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75A010();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = sub_75C840();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = sub_75A030();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = sub_765770();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_10974(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_418748(v11, v24, v8, v15, v19, v20, 0.0, 0.0, 0.0, 0.0);
  sub_BEB8(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_BE38(v44, qword_99D940);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_93D088 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_BE38(v48, qword_99D958);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_418818(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  v41 = sub_75D250();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  sub_76A840();
  __break(1u);
}

id sub_419134()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = 0;
  if (qword_93C420 != -1)
  {
    swift_once();
  }

  result = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel) setTextColor:qword_946630];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8);

    v3(v5);

    return sub_F704(v3, v4);
  }

  return result;
}

void sub_41920C(uint64_t a1, void *a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [a2 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    sub_76A030();
  }

  sub_759070();
  if (*(v2 + 56))
  {
    sub_759210();
    sub_418700(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_75A050();
  }
}

uint64_t sub_4193C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_949ED8, qword_78B190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_419434(void *a1)
{
  sub_41ABAC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_4194E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_419538;
}

void sub_419538(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_41ABAC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_41ABAC();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_419660(double a1, double a2, double a3, double a4)
{
  v9 = sub_768C60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_75DB70();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_768C10();
  sub_10A2C(v28, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v29, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}