double sub_2A4304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98, &qword_B08128);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v78 - v3;
  v5 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v6 = v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text);
  v8 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8);
  v9 = *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16))
  {
LABEL_5:
    sub_23732C(*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), v9);
    goto LABEL_7;
  }

  sub_23732C(*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text), *(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8), 1);
  v10 = [v7 string];
  v11 = sub_AB92A0();
  v81 = v6;
  v12 = v4;
  v13 = v1;
  v14 = v2;
  v15 = v5;
  v16 = v11;
  v18 = v17;

  sub_2372F0(v7, v8, 1);
  v7 = v16;
  v5 = v15;
  v2 = v14;
  v1 = v13;
  v4 = v12;
  v6 = v81;
  v8 = v18;
LABEL_7:
  if (*(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite) != 1 || (*(v5 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) != 0 || *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout) == 2)
  {
    v19 = *v6;
    v20 = *(v6 + 8);
    v21 = *(v6 + 16);
    if (v21 || (v7 == v19 ? (v22 = v20 == v8) : (v22 = 0), !v22 && (sub_ABB3C0() & 1) == 0))
    {
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = 0;

      sub_2372F0(v19, v20, v21);
      sub_2366F4();
    }

    v23 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    type metadata accessor for TextViewLabel();

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v24, v25, v28, v26, v27);
    return result;
  }

  v79 = v5;
  v30 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol);
  if (v30)
  {
    v84 = v7;
    v85 = v8;
    sub_36A00(&qword_DFCBA0, &qword_DFCB98, &qword_B08128, &protocol conformance descriptor for Regex<A>);
    v80 = v30;
    sub_AB48B0();
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_2A9810();
    sub_2A9864();
    v81 = v0;
    sub_AB9D90();
    (*(v2 + 8))(v4, v1);

    v31 = objc_allocWithZone(NSMutableAttributedString);
    v32 = sub_AB9260();
    v33 = [v31 initWithString:v32];

    String.nonBreakingSpace.unsafeMutableAddressor();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    v35 = objc_opt_self();

    v36 = NSFontAttributeName;
    v37 = [v35 preferredFontForTextStyle:UIFontTextStyleBody];
    *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    *(inited + 40) = v37;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
    v38 = objc_allocWithZone(NSAttributedString);
    v39 = sub_AB9260();
    type metadata accessor for Key(0);
    sub_2A98B8(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
    isa = sub_AB8FD0().super.isa;

    v41 = [v38 initWithString:v39 attributes:isa];

    [v33 appendAttributedString:v41];
    v42 = sub_2A0C50();
    v43 = v81;
    v44 = v42;
    v45 = *(v81 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor);
    if (v45 == 2)
    {
      v46 = [objc_opt_self() tintColor];
    }

    else
    {
      v47 = objc_opt_self();
      v48 = &selRef_systemWhiteColor;
      if ((v45 & 1) == 0)
      {
        v48 = &selRef_systemBlackColor;
      }

      v49 = [v47 *v48];
      v46 = [v49 colorWithAlphaComponent:0.6];
    }

    v51 = v79;
    v50 = v80;
    v52 = [v80 imageWithTintColor:v46];

    [v44 setImage:v52];
    v53 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment;
    v54 = *(v51 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font);
    v55 = *(v43 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment);
    [v54 capHeight];
    v57 = v56;
    [v50 size];
    v59 = round(v57 - v58) * 0.5;
    [v50 size];
    [v55 setBounds:{0.0, v59, v60, v61}];

    v62 = [objc_opt_self() attributedStringWithAttachment:*(v43 + v53)];
    [v33 appendAttributedString:v62];

    v63 = *(v6 + 16);
    if (v63 == 1)
    {
      v65 = *v6;
      v64 = *(v6 + 8);
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v66 = v33;
      sub_258078(v65, v64, 1);
      v67 = sub_ABA790();
      sub_2372F0(v65, v64, 1);
      if (v67)
      {
LABEL_32:

        v72 = AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor();
        v73 = *v72;
        v74 = v72[1];
        v75 = v72[2];
        v76 = v72[3];
        type metadata accessor for TextViewLabel();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v73, v74, v77, v75, v76);

        return result;
      }

      LOBYTE(v63) = *(v6 + 16);
    }

    else
    {
      v68 = v33;
    }

    v69 = *v6;
    v70 = *(v6 + 8);
    *v6 = v33;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    v71 = v33;
    sub_2372F0(v69, v70, v63);
    sub_2366F4();
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_2A4B50@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_AB3AE0();
  v61 = *(v53 - 8);
  __chkstk_darwin();
  v51 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBB8, &qword_B08130);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v41 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98, &qword_B08128);
  v60 = *(v56 - 8);
  __chkstk_darwin();
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v41 - v10;
  __chkstk_darwin();
  v49 = &v41 - v12;
  v57 = sub_AB4880();
  v59 = *(v57 - 8);
  __chkstk_darwin();
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBC0, &qword_B08138);
  __chkstk_darwin();
  v16 = &v41 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBC8, &unk_B08140);
  v58 = *(v48 - 8);
  __chkstk_darwin();
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v41 - v19;
  v20 = sub_AB4890();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  sub_AB3AC0();
  sub_AB3B00();
  sub_36A00(&qword_DFCBD0, &qword_DFCBB8, &qword_B08130, &protocol conformance descriptor for ChoiceOf<A>);
  sub_AB3AA0();
  v21 = *(v4 + 8);
  v21(v6, v3);
  sub_AB3AB0();
  v21(v8, v3);
  v43 = sub_36A00(&qword_DFCBA0, &qword_DFCB98, &qword_B08128, &protocol conformance descriptor for Regex<A>);
  v44 = v11;
  v22 = v49;
  v23 = v11;
  v24 = v56;
  sub_AB4870();
  v46 = *(v60 + 8);
  v60 += 8;
  v46(v23, v24);
  v25 = *(v59 + 8);
  v59 += 8;
  v47 = v25;
  v25(v14, v57);
  sub_12E1C(v16, &qword_DFCBC0, &qword_B08138);
  v26 = v22;
  sub_AB3B10();
  sub_36A00(&qword_DFCBD8, &qword_DFCBC8, &unk_B08140, &protocol conformance descriptor for OneOrMore<A>);
  v27 = v48;
  sub_AB3AA0();
  v28 = *(v58 + 8);
  v58 += 8;
  v45 = v28;
  v29 = v18;
  v30 = v27;
  v28(v29, v27);
  v31 = v51;
  sub_AB3AD0();
  sub_2A98B8(&qword_DFCBE0, &type metadata accessor for Anchor, &protocol conformance descriptor for Anchor);
  v32 = v52;
  v33 = v53;
  sub_AB3AA0();
  v34 = *(v61 + 8);
  v61 += 8;
  v42 = v34;
  v34(v31, v33);
  v35 = v26;
  sub_AB3AB0();
  sub_AB3AC0();
  v36 = v44;
  v37 = v56;
  sub_AB4860();
  v38 = v50;
  sub_AB4860();
  sub_AB4840();
  v39 = v46;
  v46(v38, v37);
  v39(v36, v37);
  v47(v14, v57);
  v39(v35, v37);
  v42(v32, v33);
  return v45(v55, v30);
}

uint64_t sub_2A52F4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_AB4880();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCBB8, &qword_B08130);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCB98, &qword_B08128);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v19 - v12;
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_AB48A0();
  sub_36A00(&qword_DFCBA0, &qword_DFCB98, &qword_B08128, &protocol conformance descriptor for Regex<A>);
  sub_AB3A80();
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_AB48A0();
  sub_AB3A80();
  v16(v11, v8);
  sub_AB3A90();
  sub_AB3AC0();
  sub_36A00(&qword_DFCBD0, &qword_DFCBB8, &qword_B08130, &protocol conformance descriptor for ChoiceOf<A>);
  v17 = v20;
  sub_AB4850();
  (*(v22 + 8))(v3, v23);
  sub_AB3AF0();
  (*(v21 + 8))(v7, v17);
  v16(v13, v8);
  return (v16)(v15, v8);
}

void sub_2A56B8()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DetailHeader.DetailsView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = &v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v4 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 8];
  v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper + 24];
  v6 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView];
  v7 = *(v2 + 8);
  v8 = v3;
  v9 = v4;
  [v6 bounds];
  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v20[3] = v13;
  v21 = 0;
  PlayIntentLayoutHelper.layout(in:rect:)(v6, v20, v8, v9, v7, v5);

  v14 = sub_2A0CD0();
  [*v2 intrinsicContentSize];
  [v14 setConstant:v15];

  v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  sub_235318();
  v18 = (v17 & 1) != 0 && (*(v16 + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_isEnabled) & 1) == 0 && v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout] < 2u;
  sub_2A5854(v18);
  sub_2A3DB0();
  sub_2A4304();
}

void sub_2A5854(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel];
  v4 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v5 = *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v6 = v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v6 <= 1)
  {
    if (v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16])
    {
      sub_23732C(*&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], 1);
      v7 = [v4 string];
      sub_AB92A0();

      goto LABEL_6;
    }

LABEL_5:
    sub_23732C(*&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text], *&v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8], v3[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16]);
    sub_23732C(v4, v5, v6);
LABEL_6:
    v8 = sub_AB9260();
    v9 = [v8 _isNaturallyRTL];

    sub_2372F0(v4, v5, v6);
    v10 = v9;
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer] = 0;

    v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = 0;

    v17 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer] = 0;

    v32 = [v3 layer];
    [v32 setMask:0];
LABEL_14:

    return;
  }

  if (v6 == 2)
  {
    goto LABEL_5;
  }

  v10 = [v1 effectiveUserInterfaceLayoutDirection];
  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v11 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer;
  v12 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer];
  if (v12)
  {
    v13 = v12;
    sub_2A5C14(v13, v10);
  }

  v14 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer;
  if (!*&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer])
  {
    v18 = [objc_allocWithZone(CALayer) init];
    v19 = objc_opt_self();
    v20 = [v19 blackColor];
    v21 = [v20 CGColor];

    [v18 setBackgroundColor:v21];
    v22 = *&v1[v14];
    *&v1[v14] = v18;

    v23 = [objc_allocWithZone(CALayer) init];
    v24 = [v19 blackColor];
    v25 = [v24 CGColor];

    [v23 setBackgroundColor:v25];
    [v23 setCompositingFilter:kCAFilterDestOut];
    v26 = *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer];
    *&v1[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = v23;
    v27 = v23;

    v28 = sub_2A5D74(v10);
    v29 = *&v1[v11];
    *&v1[v11] = v28;
    v30 = v28;

    [v27 addSublayer:v30];
    [*&v1[v14] addSublayer:v27];
    v32 = [v3 layer];
    v31 = *&v1[v14];
    [v32 setMask:v31];

    goto LABEL_14;
  }
}

void sub_2A5C14(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85F0;
  v5 = objc_opt_self();
  v6 = v5;
  if (a2)
  {
    v7 = &selRef_clearColor;
  }

  else
  {
    v7 = &selRef_blackColor;
  }

  if (a2)
  {
    v8 = &selRef_blackColor;
  }

  else
  {
    v8 = &selRef_clearColor;
  }

  v9 = [v5 *v7];
  v10 = [v9 CGColor];
  type metadata accessor for CGColor(0);
  v12 = v11;
  *(v4 + 56) = v11;
  *(v4 + 32) = v10;

  v13 = [v6 *v8];
  v14 = [v13 CGColor];
  *(v4 + 88) = v12;
  *(v4 + 64) = v14;

  isa = sub_AB9740().super.isa;

  [a1 setColors:isa];
}

id sub_2A5D74(uint64_t a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_AF82E0;
  sub_13C80(0, &qword_DF1300, NSNumber_ptr);
  *(v3 + 32) = sub_ABA770(0);
  *(v3 + 40) = sub_ABA770(1);
  *(v3 + 48) = sub_ABA770(0);
  isa = sub_AB9740().super.isa;

  [v2 setLocations:isa];

  [v2 setCompositingFilter:kCAFilterDestOut];
  sub_2A5C14(v2, a1);
  return v2;
}

id sub_2A5EB0(int a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor] = 2;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor] = 0;
  v11 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer;
  _s6SpacerCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = UIView.forAutolayout.getter();

  *&v6[v11] = v14;
  v15 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer;
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = UIView.forAutolayout.getter();

  *&v6[v15] = v17;
  v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
  type metadata accessor for TextViewLabel();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(v19) init];
  v21 = UIView.forAutolayout.getter();

  v22 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];

  v27 = UIView.withAccessibilityIdentifier(_:)(v23, v24, v25, v26);

  *&v6[v18] = v27;
  v28 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  v29 = [objc_allocWithZone(type metadata accessor for TextButton()) init];
  v30 = UIView.forAutolayout.getter();

  v31 = AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];

  v36 = UIView.withAccessibilityIdentifier(_:)(v32, v33, v34, v35);

  *&v6[v28] = v36;
  v37 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  v38 = [objc_allocWithZone(UILabel) init];
  v39 = UIView.forAutolayout.getter();

  v40 = AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];

  v45 = UIView.withAccessibilityIdentifier(_:)(v41, v42, v43, v44);

  *&v6[v37] = v45;
  v46 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer;
  v47 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v48 = UIView.forAutolayout.getter();

  *&v6[v46] = v48;
  v49 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
  v50 = [objc_allocWithZone(v19) init];
  v51 = UIView.forAutolayout.getter();

  v52 = AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor();
  v53 = *v52;
  v54 = v52[1];
  v55 = v52[2];
  v56 = v52[3];

  v57 = UIView.withAccessibilityIdentifier(_:)(v53, v54, v55, v56);

  *&v6[v49] = v57;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___descriptionLabelHeightConstraint] = 0;
  v58 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton;
  *&v6[v58] = [objc_allocWithZone(type metadata accessor for MoreButton()) init];
  v59 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v60 = qword_E71438;
  *&v6[v59] = qword_E71438;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_curatorsTitleView] = 0;
  v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite] = 0;
  v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls] = 0;
  v61 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper];
  v62 = v60;
  *v61 = PlayIntentLayoutHelper.init()();
  *(v61 + 1) = v63;
  v61[16] = v64;
  v61[17] = v65;
  *(v61 + 3) = v66;
  v67 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView;
  v68 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v69 = UIView.forAutolayout.getter();

  *&v6[v67] = v69;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___actionsHeightConstraint] = 0;
  v70 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch;
  v71 = [objc_allocWithZone(type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v72 = UIView.forAutolayout.getter();

  *&v6[v70] = v72;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer] = 0;
  *&v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer] = 0;
  v73 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_layout];
  *v73 = a1;
  v73[1] = BYTE1(a1) & 1;
  v73[2] = BYTE2(a1) & 1;
  v77.receiver = v6;
  v77.super_class = type metadata accessor for DetailHeader.DetailsView();
  v74 = objc_msgSendSuper2(&v77, "initWithFrame:", a2, a3, a4, a5);
  sub_2A1428();
  sub_2A1A4C();

  return v74;
}

id sub_2A690C(__n128 a1)
{
  v1[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TextButton();
  v2 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 _setWantsContentAwareTypesettingLanguage:1];
  }

  v5 = [v2 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setAdjustsFontForContentSizeCategory:1];
  }

  v7 = [v2 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setNumberOfLines:0];
  }

  v9 = [v2 titleLabel];

  v10 = v2;
  if (v9)
  {
    [v9 setLineBreakMode:4];

    v10 = v9;
  }

  return v2;
}

void sub_2A6A7C()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 font];
    if (!v3)
    {

      return;
    }

    v4 = v3;
    [v0 frame];
    v6 = v5;
    v7 = [v2 text];
    if (v7)
    {
      v8 = v7;
      sub_AB92A0();
    }

    v9 = sub_AB9260();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    *(inited + 40) = v4;
    v11 = NSFontAttributeName;
    v12 = v4;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
    type metadata accessor for Key(0);
    sub_2A98B8(&qword_DE6EF0, type metadata accessor for Key, &unk_AF674C);
    isa = sub_AB8FD0().super.isa;

    [v9 boundingRectWithSize:1 options:isa attributes:0 context:{v6, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    Height = CGRectGetHeight(v26);
    [v12 lineHeight];
    v24 = v23;

    v25 = ceil(Height / v24);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2A6D98(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v8 = sub_AB9260();
    v10.receiver = v4;
    v10.super_class = type metadata accessor for TextButton();
    objc_msgSendSuper2(&v10, "setTitle:forState:", v8, a3);

    result = String.containsExcessiveHeightCharacters.getter(a1, a2);
  }

  else
  {
    v10.receiver = v4;
    v10.super_class = type metadata accessor for TextButton();
    objc_msgSendSuper2(&v10, "setTitle:forState:", 0, a3);
    result = 0;
  }

  *(v4 + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters) = result & 1;
  return result;
}

id sub_2A70A4()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = &v0[OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710MoreButton_hitArea];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[32] = 1;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for MoreButton();
  v2 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 labelColor];
  [v4 setTitleColor:v5 forState:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v6 = sub_AB9260();
  [v4 setTitle:v6 forState:0];

  v7 = [v4 titleLabel];
  if (v7)
  {
    [v7 setAdjustsFontForContentSizeCategory:1];
  }

  v8 = [v4 titleLabel];

  if (v8)
  {
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    v9 = sub_ABA550();
    [v8 setFont:v9];
  }

  [v4 setHidden:1];
  v10 = AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v15, v13, v14);
  [v4 setContentEdgeInsets:{0.0, 0.0, 0.01, 0.01}];

  return v4;
}

char *sub_2A755C(double a1, double a2, double a3, double a4)
{
  v9 = [objc_opt_self() effectWithStyle:1];
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v9];

  *&v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView] = v10;
  v11 = [objc_opt_self() buttonWithType:0];
  *&v4[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button] = v11;
  v37.receiver = v4;
  v37.super_class = type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView();
  v12 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setClipsToBounds:0];
  v16 = [v14 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = [v14 layer];
  [v17 setAllowsGroupBlending:0];

  UIView.Shadow.init(color:opacity:radius:offset:)([v13 blackColor], v38, 0.4, 10.0, 0.0, 4.0);
  UIView.shadow.setter(v38);

  v18 = OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView;
  v19 = [*&v14[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView] contentView];
  v20 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.6];
  [v19 setBackgroundColor:v20];

  v21 = [*&v14[v18] layer];
  [v21 setMasksToBounds:1];

  v22 = OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button;
  v23 = *&v14[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];
  v24 = sub_AB9260();
  v25 = [objc_opt_self() systemImageNamed:v24];

  [v23 setImage:v25 forStates:0];
  v26 = *&v14[v22];
  v27 = objc_allocWithZone(UIColor);
  v28 = v26;
  v29 = [v27 initWithWhite:0.0 alpha:0.5];
  [v28 setTintColor:v29];

  v30 = [*&v14[v22] imageView];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 layer];

    [v32 setCompositingFilter:kCAFilterPlusD];
  }

  v33 = [*&v14[v22] imageView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentMode:1];
  }

  v35 = [*&v14[v18] contentView];
  [v35 addSubview:*&v14[v22]];

  [v14 addSubview:*&v14[v18]];
  return v14;
}

void sub_2A7AE8()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_visualEffectView];
  [v9 setFrame:?];
  v10 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];
  [v9 bounds];
  [v10 setFrame:?];
  v11 = [v9 layer];
  [v9 frame];
  Width = CGRectGetWidth(v20);
  [v9 frame];
  Height = CGRectGetHeight(v21);
  if (Height >= Width)
  {
    Height = Width;
  }

  [v11 setCornerRadius:Height * 0.5];

  v14 = [v0 layer];
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  v15 = CGRectGetWidth(v22);
  v23.origin.x = v2;
  v23.origin.y = v4;
  v23.size.width = v6;
  v23.size.height = v8;
  v16 = CGRectGetHeight(v23);
  if (v16 >= v15)
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, v16 * 0.5}];
  v18 = [v17 CGPath];

  [v14 setShadowPath:v18];
}

void sub_2A7E8C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v6[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents];
  *v12 = sub_2A8FBC();
  v12[1] = v13;
  v14 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton;
  *&v6[v14] = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  type metadata accessor for TextStackView();
  *&v6[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32.receiver = v6;
  v32.super_class = type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView();
  v16 = objc_msgSendSuper2(&v32, "initWithFrame:", a3, a4, a5, a6);
  v17 = *&v16[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton];
  v18 = v16;
  [v18 addSubview:v17];
  v19 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView]];
  v20 = *&v18[v19];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v21 = v20;
  v22 = TextDrawing.Cache.init()();
  v23 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v24 = *&v21[v23];
  *&v21[v23] = v22;

  sub_2E6210(v24);

  v25 = *&v18[v19];
  v26 = *&v18[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents + 8];
  if (!(v26 >> 62))
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  v27 = sub_ABB060();
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v27 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v25;

    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = sub_36003C(i, v26, v29);
      }

      else
      {
        v31 = *(v26 + 8 * i + 32);
      }

      TextStackView.add(_:)(v31);
    }
  }
}

void sub_2A8150()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 effectiveUserInterfaceLayoutDirection];
  v9 = [v0 traitCollection];
  [v9 displayScale];
  v10 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  CGRectGetMaxX(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v12;
  v18.size.height = v14;
  CGRectGetWidth(v18);
  sub_ABA470();
  CGRectGetWidth(v19);
  v15 = *&v0[OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView];
  sub_ABA490();
  [v15 setFrame:*&v14];
  sub_ABA490();
  [v10 setFrame:?];
}

id sub_2A83B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for DetailHeader.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailHeader.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2A85C4()
{
  result = qword_DFCB88;
  if (!qword_DFCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCB88);
  }

  return result;
}

double sub_2A8640@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23 = Int.seconds.getter(7);
  v22 = Int.seconds.getter(300);
  v5 = Int.seconds.getter(34);
  v21 = Int.seconds.getter(42);
  v20 = Int.seconds.getter(44);
  v6 = Int.seconds.getter(26);
  v7 = Int.seconds.getter(25);
  v8 = Int.seconds.getter(20);
  v9 = Int.seconds.getter(16);
  v10 = Int.seconds.getter(12);
  v11 = Int.seconds.getter(48);
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v12 = sub_ABA550();
  v13 = objc_opt_self();
  v14 = [v13 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v15 = sub_ABA550();
  v16 = [v13 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v17 = sub_ABA550();
  v18 = [objc_opt_self() configurationWithFont:v17 scale:1];

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5;
  *(a2 + 24) = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v6;
  result = a3;
  *(a2 + 48) = a3;
  *(a2 + 56) = a1;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = v8;
  *(a2 + 88) = v5;
  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v11;
  *(a2 + 128) = 4;
  *(a2 + 136) = v12;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v18;
  return result;
}

void sub_2A8864(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [*(*(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView) layoutManager];
  v5 = [v4 numberOfGlyphs];
  v32[0] = 0uLL;
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      [v4 lineFragmentRectForGlyphAtIndex:v8 effectiveRange:v32];
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v8 = *(&v32[0] + 1) + *&v32[0];
      ++v7;
      if (*(&v32[0] + 1) + *&v32[0] >= v6)
      {

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
LABEL_7:
  sub_2A6A7C();
  v11 = v10;
  v12 = *(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel);
  v13 = OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font;
  [*&v12[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_font] ascender];
  v15 = v14;
  [v12 bounds];
  Height = CGRectGetHeight(v33);
  [*&v12[v13] descender];
  v18 = v17;
  v19 = [*(a1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel) font];
  if (!v19)
  {
LABEL_18:
    __break(1u);
  }

  v20 = v19;
  v21 = 80.0;
  if (v9 > 1 && v11 > 1)
  {
    v21 = 54.0;
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  if (v11 == 1 && v9 == 1)
  {
    v21 = 90.0;
  }

  v24 = v21 + v15 - (Height + v18);
  [v19 descender];
  v26 = v24 - v25;

  sub_2A8640(v22, v32, v26);
  v27 = v32[9];
  a2[8] = v32[8];
  a2[9] = v27;
  a2[10] = v32[10];
  v28 = v32[5];
  a2[4] = v32[4];
  a2[5] = v28;
  v29 = v32[7];
  a2[6] = v32[6];
  a2[7] = v29;
  v30 = v32[1];
  *a2 = v32[0];
  a2[1] = v30;
  v31 = v32[3];
  a2[2] = v32[2];
  a2[3] = v31;
}

double sub_2A8ACC@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v23 = Int.seconds.getter(7);
  v22 = Int.seconds.getter(144);
  v21 = Int.seconds.getter(72);
  v20 = Int.seconds.getter(37);
  v19 = Int.seconds.getter(26);
  v3 = Int.seconds.getter(32);
  v4 = Int.seconds.getter(20);
  v5 = Int.seconds.getter(19);
  v6 = Int.seconds.getter(44);
  v7 = Int.seconds.getter(14);
  v8 = Int.seconds.getter(12);
  v9 = Int.seconds.getter(22);
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v10 = sub_ABA550();
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v13 = sub_ABA550();
  v14 = sub_ABA550();
  v15 = [v11 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v16 = sub_ABA550();
  v17 = [objc_opt_self() configurationWithFont:v16 scale:1];

  *a1 = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  *(a1 + 32) = v19;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v4;
  result = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = v8;
  *(a1 + 112) = 2;
  *(a1 + 120) = v4;
  *(a1 + 128) = v9;
  *(a1 + 136) = v4;
  *(a1 + 144) = v4;
  *(a1 + 152) = 1;
  *(a1 + 160) = v10;
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  *(a1 + 184) = v14;
  *(a1 + 192) = v15;
  *(a1 + 200) = v17;
  return result;
}

unint64_t sub_2A8D28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF12F0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_2A8DA4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_showsArtwork) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_hiddenHeaderElements) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_textColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_editingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_supportsShuffle) = 1;
  v3 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_visibilitySeparator;
  _s9SeparatorCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_descriptionSeparator;
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v6) = swift_allocObject();
  v7 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v9 = sub_80104(v8);

  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_shouldHideHeaderControls) = 0;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___detailsConstraints);
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkContainerView) = 0;
  v11 = v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_calculatedShadowSize;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkShadowView) = 0;
  v12 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_radiosityShadow;
  *(v1 + v12) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader____lazy_storage___artworkEditingOverlayView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_2A8FBC()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v14[0] = v1;
  *(&v14[0] + 1) = v4;
  v14[1] = xmmword_AF7C20;
  v15 = 0;
  v16 = 0;
  v17 = v0;
  v18 = 1;
  v19 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v14);
  v6 = v3;
  v7 = v4;
  v8 = v0;
  sub_2F118(v14, v20);

  sub_AB91E0();
  sub_AB3550();
  v9 = sub_AB9320();
  v11 = v10;
  swift_beginAccess();
  *(v5 + 112) = v9;
  *(v5 + 120) = v11;

  sub_2EB704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  *(v12 + 32) = v5;

  v20[0] = v1;
  v20[1] = v4;
  v21 = xmmword_AF7C20;
  v22 = 0;
  v23 = 0;
  v24 = v0;
  v25 = 1;
  v26 = xmmword_AF7C30;
  sub_2F174(v20);
  return v5;
}

void sub_2A92AC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_artworkProminentColor) = 2;
  *(v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_textColor) = 0;
  v2 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_topSpacer;
  _s6SpacerCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_bottomSpacer;
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = UIView.forAutolayout.getter();

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField;
  type metadata accessor for TextViewLabel();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(v10) init];
  v12 = UIView.forAutolayout.getter();

  v13 = AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];

  v18 = UIView.withAccessibilityIdentifier(_:)(v14, v15, v16, v17);

  *(v1 + v9) = v18;
  v19 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton;
  v20 = [objc_allocWithZone(type metadata accessor for TextButton()) init];
  v21 = UIView.forAutolayout.getter();

  v22 = AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor();
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];

  v27 = UIView.withAccessibilityIdentifier(_:)(v23, v24, v25, v26);

  *(v1 + v19) = v27;
  v28 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  v29 = [objc_allocWithZone(UILabel) init];
  v30 = UIView.forAutolayout.getter();

  v31 = AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];

  v36 = UIView.withAccessibilityIdentifier(_:)(v32, v33, v34, v35);

  *(v1 + v28) = v36;
  v37 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailEmptyTextSpacer;
  v38 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v39 = UIView.forAutolayout.getter();

  *(v1 + v37) = v39;
  v40 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel;
  v41 = [objc_allocWithZone(v10) init];
  v42 = UIView.forAutolayout.getter();

  v43 = AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor();
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v47 = v43[3];

  v48 = UIView.withAccessibilityIdentifier(_:)(v44, v45, v46, v47);

  *(v1 + v40) = v48;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___descriptionLabelHeightConstraint) = 0;
  v49 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_moreButton;
  *(v1 + v49) = [objc_allocWithZone(type metadata accessor for MoreButton()) init];
  v50 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_favoriteSymbol;
  if (qword_DE6A70 != -1)
  {
    swift_once();
  }

  v51 = qword_E71438;
  *(v1 + v50) = qword_E71438;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___favoriteSymbolAttachment) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_curatorsTitleView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_isFavorite) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_shouldHideHeaderControls) = 0;
  v52 = v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionStackLayoutHelper;
  v53 = v51;
  *v52 = PlayIntentLayoutHelper.init()();
  *(v52 + 8) = v54;
  *(v52 + 16) = v55;
  *(v52 + 17) = v56;
  *(v52 + 24) = v57;
  v58 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionsContainerView;
  v59 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = UIView.forAutolayout.getter();

  *(v1 + v58) = v60;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView____lazy_storage___actionsHeightConstraint) = 0;
  v61 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_visibilitySwitch;
  v62 = [objc_allocWithZone(type metadata accessor for DetailHeader.PlaylistVisibilitySwitchContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v63 = UIView.forAutolayout.getter();

  *(v1 + v61) = v63;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_glideActionIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelMaskLayer) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelContainerSublayer) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabelGradientSublayer) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_2A972C()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textComponents);
  *v2 = sub_2A8FBC();
  v2[1] = v3;
  v4 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_switchButton;
  *(v0 + v4) = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader37PlaylistVisibilitySwitchContainerView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_2A9810()
{
  result = qword_DFCBA8;
  if (!qword_DFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBA8);
  }

  return result;
}

unint64_t sub_2A9864()
{
  result = qword_DFCBB0;
  if (!qword_DFCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBB0);
  }

  return result;
}

uint64_t sub_2A98B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2A9930(uint64_t a1)
{
  result = *(*(v1 + 16) + 88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2A9940()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2A99C0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
  }
}

id sub_2A9A30(id result, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (result)
  {
    v10 = result;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;

    return a6;
  }

  return result;
}

uint64_t sub_2A9AA0()
{

  return swift_deallocObject();
}

id sub_2A9AEC()
{
  v1 = *(v0 + 16);
  [v1 frame];
  [v1 setFrame:?];
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2A9BB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A9BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
      *(result + 208) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2A9CB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2A9CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2A9D98()
{
  result = qword_DFCBF0;
  if (!qword_DFCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBF0);
  }

  return result;
}

unint64_t sub_2A9DF0()
{
  result = qword_DFCBF8;
  if (!qword_DFCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCBF8);
  }

  return result;
}

void sub_2A9E7C(void **a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v4 = &v192 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v6 = &v192 - v5;
  sub_15F84((a1 + 3), &v223, &unk_DE8E40, &unk_AF8050);
  if (!*(&v224 + 1))
  {
    sub_12E1C(&v223, &unk_DE8E40, &unk_AF8050);
    v14 = _s23MusicPerformanceContextVMa(0);
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    goto LABEL_9;
  }

  v7 = _s23MusicPerformanceContextVMa(0);
  v8 = swift_dynamicCast();
  v9 = *(v7 - 8);
  (*(v9 + 56))(v6, v8 ^ 1u, 1, v7);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
LABEL_9:
    sub_12E1C(v6, &unk_DEE570, &qword_B0E730);
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v227 = 1;
    v228 = 0;
    v229 = 0;
    v230 = 0;
LABEL_10:
    sub_12E1C(&v223, &unk_DEA520, &unk_AFDBF0);
    v13 = *a1;
    if (!*a1)
    {
      return;
    }

LABEL_11:
    type metadata accessor for JSMediaItem(0);
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      return;
    }

    v16 = v15;
    v207 = v1;
    v17 = v13;
    v18 = sub_414F14();
    if (!v18)
    {

      return;
    }

    v19 = v18;
    v20 = [v18 storeContentItemObject];
    if (!v20)
    {

      return;
    }

    v202 = v4;
    v21 = *(&stru_B8.reserved2 + (swift_isaMask & *v16));
    v205 = v20;
    v22 = v20;
    v23 = v21();
    v206 = v19;
    if (v23)
    {
      v24 = v23;
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v201 = a1;
        v204 = v22;
        v25 = swift_allocObject();
        *(v25 + 16) = v16;
        type metadata accessor for JSContainerDetailComponentController(0);
        v26 = *&stru_108.segname[swift_isaMask & *v16];
        v27 = v17;
        v28 = v24;
        v29 = v27;
        v30 = v28;
        v31 = v26();

        v203 = v30;
        v32 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v30, v31, 1, sub_2AC328, v25);
        v198 = v16;
        if (v32)
        {
          v33 = v32;

          v34 = v25;
LABEL_28:
          v43 = *&v33[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_29:
          v199 = v34;
          v200 = v29;
          v44 = v33;
          v45 = v33;
          v46 = type metadata accessor for JSContainerDetailModelRequest();
          v47 = objc_allocWithZone(v46);
          v48 = &v47[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v48 = 0;
          v48[1] = 0;
          v47[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v49 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v47[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v47[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v47[v49] = v43;
          v208.receiver = v47;
          v208.super_class = v46;
          v50 = v43;
          v51 = objc_msgSendSuper2(&v208, "init");
          if ((v50[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
          {
            sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
            v52 = v51;
            v53 = static MPModelAlbum.defaultMusicKind.getter();
            [v52 setSectionKind:v53];

            v54 = [objc_opt_self() kindWithVariants:3];
            v55 = v54;
          }

          else
          {
            sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
            v54 = static MPModelPlaylistEntry.defaultMusicKind.getter();
            v56 = objc_opt_self();
            v55 = v51;
            v57 = [v56 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v54 options:0];
            [v55 setSectionKind:v57];

            v52 = v54;
          }

          v58 = v198;
          [v51 setItemKind:v54];

          v59 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          swift_beginAccess();
          v60 = *&v50[v59];
          v61 = v60;
          v62 = v203;

          v63 = JSViewModel.playActivityRecommendationData.getter();
          v65 = v64;
          sub_466A4(0, 0xF000000000000000);
          *v239 = v210[0];
          *&v239[3] = *(v210 + 3);
          v231 = v51;
          v232 = v43;
          v233 = v205;
          v234 = v58;
          v235 = v44;
          v236 = 0;
          v237 = v60;
          v238 = 0;
          v240 = v63;
          v241 = v65;
          *&v223 = v51;
          *(&v223 + 1) = v43;
          *&v224 = v205;
          *(&v224 + 1) = v58;
          v225 = v44;
          *&v226 = v60;
          BYTE8(v226) = 0;
          HIDWORD(v226) = *(v210 + 3);
          *(&v226 + 9) = v210[0];
          v227 = v63;
          v228 = v65;
          sub_70EB0(&v231, &v212);
          sub_70F0C(&v223);
          objc_opt_self();
          v22 = v204;
          if (swift_dynamicCastObjCClass())
          {
            v66 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
            v67 = sub_2D72DC(&v231);

LABEL_36:
            sub_4148FC(&v223);
            if (v227 == 1)
            {
              sub_12E1C(&v223, &unk_DEA520, &unk_AFDBF0);
              isa = 0;
              Strong = 0;
            }

            else
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              sub_1611C(&v223);
              if (Strong && (v73 = Strong, v74 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(0), v76 = v75, v73, v76 >> 60 != 15))
              {
                isa = sub_AB3250().super.isa;
                sub_466A4(v74, v76);
              }

              else
              {
                isa = 0;
              }
            }

            v87 = v207;
            [v67 setPlayActivityForwardedRecommendationData:isa];

            [v67 setPlayActivityFeatureNameSourceViewController:Strong];
            if (Strong)
            {
              v88 = [Strong navigationController];
              if (v88)
              {
                v89 = v88;
                [v88 showViewController:v67 sender:v87];
              }

              else
              {
              }
            }

            else
            {
            }

            return;
          }

          objc_opt_self();
          v68 = swift_dynamicCastObjCClass();
          v69 = v206;
          if (v68)
          {
            v70 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
            v67 = sub_39891C(&v231, 0);

            goto LABEL_36;
          }

          sub_70F0C(&v231);

          a1 = v201;
LABEL_69:
          v96 = v22;
          sub_4148FC(&v212);
          if (v221 == 1)
          {

            v97 = &unk_DEA520;
            v98 = &unk_AFDBF0;
          }

          else
          {
            sub_17704(&v212, &v223);
            v99 = sub_AB9990();
            v100 = v202;
            (*(*(v99 - 8) + 56))(v202, 1, 1, v99);
            sub_15F28(&v223, &v212);
            sub_2D384(a1, v210);
            sub_AB9940();
            v101 = v96;
            v102 = sub_AB9930();
            v103 = swift_allocObject();
            *(v103 + 16) = v102;
            *(v103 + 24) = &protocol witness table for MainActor;
            *(v103 + 32) = v101;
            sub_17704(&v212, v103 + 40);
            v104 = v210[1];
            *(v103 + 136) = v210[0];
            *(v103 + 152) = v104;
            *(v103 + 168) = v210[2];
            *(v103 + 184) = v211;
            sub_DBDC8(0, 0, v100, &unk_B082E0, v103);

            sub_414AFC(&v212);
            if (v215)
            {
              __swift_project_boxed_opaque_existential_1(&v212, v215);
              v105 = swift_unknownObjectWeakLoadStrong();
              if (v105)
              {
                v106 = v105;
                _s30CollectionViewSelectionHandlerVMa(0);
                v107 = sub_AB3770().super.isa;
                [v106 deselectItemAtIndexPath:v107 animated:1];

                sub_1611C(&v223);
              }

              else
              {

                sub_1611C(&v223);
              }

              __swift_destroy_boxed_opaque_existential_0(&v212);
              return;
            }

            sub_1611C(&v223);
            v97 = &unk_DE8E30;
            v98 = "\b]\r";
          }

          sub_12E1C(&v212, v97, v98);
          return;
        }

        v41 = v204;
        v42 = v26();

        v33 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v41, v42, 1, sub_2AC328, v25);
        v34 = v25;
        if (v33)
        {
          goto LABEL_28;
        }

        objc_opt_self();
        v91 = swift_dynamicCastObjCClass();
        if (v91)
        {
          v92 = v91;
          v93 = MPModelPropertyPlaylistType;
          v94 = v41;
          if ([v92 hasLoadedValueForKey:v93] && objc_msgSend(v92, "type") == &dword_8 + 1)
          {
            v33 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v95);
            v43 = *&v33[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

            goto LABEL_29;
          }
        }

LABEL_125:
        sub_ABAFD0();
        __break(1u);
        return;
      }

      goto LABEL_67;
    }

    v35 = *(&stru_B8.offset + (swift_isaMask & *v16));
    v36 = v35();
    if (v36)
    {
      v37 = v36;
      v38 = JSIdentifierSet.ContentIdentifierKind.library.unsafeMutableAddressor();
      if ((*(&stru_108.flags + (swift_isaMask & *v37)))(*v38))
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = [v39 orphanMusicVideo];
          if (v40)
          {

            sub_4148FC(&v223);
            if (v227 == 1)
            {

              sub_12E1C(&v223, &unk_DEA520, &unk_AFDBF0);
LABEL_68:

              goto LABEL_69;
            }

            v162 = swift_unknownObjectWeakLoadStrong();
            sub_1611C(&v223);
            if (!v162 || (v163 = [v162 traitCollection], v162, v165 = UITraitCollection.isMediaPicker.getter(v164), v163, !v165))
            {

              goto LABEL_69;
            }
          }

          v166 = [objc_allocWithZone(MPModelLibraryRequest) init];
          sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
          v167 = v166;
          v168 = static MPModelAlbum.defaultMusicKind.getter();
          [v167 setSectionKind:v168];

          v169 = [objc_opt_self() kindWithVariants:3];
          [v167 setItemKind:v169];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
          v170 = swift_allocObject();
          *(v170 + 16) = xmmword_AF82B0;
          *(v170 + 32) = v22;
          sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
          v204 = v22;
          v171 = v22;
          v172 = sub_AB9740().super.isa;

          v203 = v167;
          [v167 setScopedContainers:v172];

          type metadata accessor for JSContainerDetailComponentController(0);
          v173 = *&stru_108.segname[swift_isaMask & *v16];
          v202 = v17;
          v174 = v171;
          v175 = v173();
          v176 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v174, v175, 1, UIScreen.Dimensions.size.getter, 0);
          if (v176)
          {
            v177 = v176;
            v178 = *&v176[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_104:
            v179 = JSViewModel.playActivityRecommendationData.getter();
            v181 = v180;
LABEL_119:
            sub_466A4(0, 0xF000000000000000);
            *v220 = v210[0];
            *&v220[3] = *(v210 + 3);
            v188 = v203;
            v212 = v203;
            v213 = v178;
            v214 = v205;
            v215 = v16;
            v217 = 0;
            v218 = 0;
            v216 = v177;
            v219 = 0;
            v221 = v179;
            v222 = v181;
            *&v223 = v203;
            *(&v223 + 1) = v178;
            *&v224 = v205;
            *(&v224 + 1) = v16;
            *&v226 = 0;
            v225 = v177;
            BYTE8(v226) = 0;
            *(&v226 + 9) = v210[0];
            HIDWORD(v226) = *(v210 + 3);
            v227 = v179;
            v228 = v181;
            sub_70EB0(&v212, &v231);
            sub_70F0C(&v223);
            v189 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
            v67 = sub_2D72DC(&v212);

            v22 = v204;
            goto LABEL_36;
          }

          objc_opt_self();
          v178 = swift_dynamicCastObjCClass();
          if (v178)
          {
            v182 = MPModelPropertyPlaylistType;
            v183 = v174;
            if ([v178 hasLoadedValueForKey:v182] && objc_msgSend(v178, "type") == &dword_8 + 1)
            {
              v177 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v184);
              v178 = *(v177 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);

              goto LABEL_104;
            }

            v177 = 0;
            v178 = 0;
          }

          else
          {
            v177 = 0;
          }

          v179 = 0;
          v181 = 0xF000000000000000;
          goto LABEL_119;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v108 = [objc_allocWithZone(MPModelLibraryRequest) init];
          sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
          v109 = static MPModelPlaylistEntry.defaultMusicKind.getter();
          v110 = objc_opt_self();
          v111 = v108;
          v203 = v111;
          v112 = [v110 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v109 options:0];
          [v111 setSectionKind:v112];

          v202 = v109;
          [v111 setItemKind:v109];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_AF82B0;
          *(v113 + 32) = v22;
          sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
          v204 = v22;
          v114 = v22;
          v115 = sub_AB9740().super.isa;

          [v203 setScopedContainers:v115];

          type metadata accessor for JSContainerDetailComponentController(0);
          v116 = *&stru_108.segname[swift_isaMask & *v16];
          v200 = v17;
          v117 = v114;
          v118 = v116();
          v119 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v117, v118, 1, UIScreen.Dimensions.size.getter, 0);
          v199 = v117;
          if (v119)
          {
            v120 = v119;
            v121 = *&v119[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
            v22 = v204;
LABEL_82:
            v122 = JSViewModel.playActivityRecommendationData.getter();
            v124 = v123;
LABEL_122:
            sub_466A4(0, 0xF000000000000000);
            *v220 = v210[0];
            *&v220[3] = *(v210 + 3);
            v190 = v203;
            v212 = v203;
            v213 = v121;
            v214 = v205;
            v215 = v16;
            v217 = 0;
            v218 = 0;
            v216 = v120;
            v219 = 0;
            v221 = v122;
            v222 = v124;
            *&v223 = v203;
            *(&v223 + 1) = v121;
            *&v224 = v205;
            *(&v224 + 1) = v16;
            *&v226 = 0;
            v225 = v120;
            BYTE8(v226) = 0;
            *(&v226 + 9) = v210[0];
            HIDWORD(v226) = *(v210 + 3);
            v227 = v122;
            v228 = v124;
            sub_70EB0(&v212, &v231);
            sub_70F0C(&v223);
            v191 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
            v67 = sub_39891C(&v212, 0);

            goto LABEL_36;
          }

          objc_opt_self();
          v121 = swift_dynamicCastObjCClass();
          v22 = v204;
          if (v121)
          {
            v185 = MPModelPropertyPlaylistType;
            v186 = v117;
            if ([v121 hasLoadedValueForKey:v185] && objc_msgSend(v121, "type") == &dword_8 + 1)
            {
              v120 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v187);
              v121 = *(v120 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);

              goto LABEL_82;
            }

            v121 = 0;
          }

          v120 = 0;
          v122 = 0;
          v124 = 0xF000000000000000;
          goto LABEL_122;
        }

LABEL_66:
LABEL_67:

        goto LABEL_68;
      }
    }

    v77 = v35();
    if (!v77)
    {
      v90 = v206;
LABEL_65:

      goto LABEL_66;
    }

    v78 = v77;
    v79 = *JSIdentifierSet.ContentIdentifierKind.store.unsafeMutableAddressor();
    v80 = *(&stru_108.flags + (swift_isaMask & *v78));
    v203 = v78;
    v81 = v80(v79);
    v82 = v206;
    if ((v81 & 1) == 0)
    {
      v83 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v83, 0);
      if (!v84)
      {
LABEL_64:

        v90 = v203;
        goto LABEL_65;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v85 = v35();
      if (v85)
      {
        v86 = v85;
        v197 = (*&stru_158.segname[swift_isaMask & *v85])();
      }

      else
      {
        v197 = 0;
      }

      v125 = swift_allocObject();
      *(v125 + 16) = v16;
      v204 = type metadata accessor for JSContainerDetailComponentController(0);
      v126 = *&stru_108.segname[swift_isaMask & *v16];
      v127 = v17;
      v128 = v22;
      v129 = v126();
      v200 = v127;

      v196 = v125;
      v130 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v128, v129, 1, sub_2ABF88, v125);
      v199 = v128;
      if (v130)
      {
        v131 = v130;
        v132 = *&v130[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
      }

      else
      {
        objc_opt_self();
        v133 = swift_dynamicCastObjCClass();
        if (!v133)
        {
          goto LABEL_125;
        }

        v134 = v133;
        v135 = MPModelPropertyPlaylistType;
        v136 = v128;
        if (![v134 hasLoadedValueForKey:v135] || objc_msgSend(v134, "type") != &dword_8 + 1)
        {

          goto LABEL_125;
        }

        v131 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v137);
        v132 = *&v131[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
      }

      v138 = v206;
      v204 = v22;
      v139 = type metadata accessor for JSContainerDetailModelRequest();
      v140 = objc_allocWithZone(v139);
      v141 = &v140[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
      *v141 = 0;
      v141[1] = 0;
      v140[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
      swift_unknownObjectWeakInit();
      v142 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
      *&v140[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
      v140[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
      *&v140[v142] = v132;
      v209.receiver = v140;
      v209.super_class = v139;
      v195 = v132;
      v143 = v132;
      v144 = v197;
      v193 = v197;
      v194 = v131;
      v145 = objc_msgSendSuper2(&v209, "init");
      if ((v143[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
      {
        sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
        v146 = v145;
        v147 = static MPModelAlbum.defaultMusicKind.getter();
        [v146 setSectionKind:v147];

        v148 = [objc_opt_self() kindWithVariants:3];
        [v146 setItemKind:v148];

        if (v144)
        {
LABEL_92:

          goto LABEL_95;
        }
      }

      else
      {
        sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
        v149 = static MPModelPlaylistEntry.defaultMusicKind.getter();
        v150 = objc_opt_self();
        v151 = v145;
        v152 = [v150 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v149 options:0];
        [v151 setSectionKind:v152];

        v138 = v206;
        [v151 setItemKind:v149];

        if (v144)
        {
          goto LABEL_92;
        }
      }

      v153 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
      swift_beginAccess();
      v144 = *&v143[v153];
      v154 = v144;
LABEL_95:
      v22 = v204;

      v155 = JSViewModel.playActivityRecommendationData.getter();
      v157 = v156;
      sub_466A4(0, 0xF000000000000000);
      *v239 = v210[0];
      *&v239[3] = *(v210 + 3);
      v231 = v145;
      v232 = v195;
      v233 = v205;
      v234 = v16;
      v235 = v131;
      v236 = 0;
      v237 = v144;
      v238 = 0;
      v240 = v155;
      v241 = v157;
      *&v223 = v145;
      *(&v223 + 1) = v195;
      *&v224 = v205;
      *(&v224 + 1) = v16;
      v225 = v131;
      *&v226 = v144;
      BYTE8(v226) = 0;
      HIDWORD(v226) = *(v210 + 3);
      *(&v226 + 9) = v210[0];
      v227 = v155;
      v228 = v157;
      sub_70EB0(&v231, &v212);
      sub_70F0C(&v223);
      objc_opt_self();
      v158 = v199;
      if (swift_dynamicCastObjCClass())
      {
        v159 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
        v160 = sub_2D72DC(&v231);
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          sub_70F0C(&v231);

          goto LABEL_69;
        }

        v161 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
        v160 = sub_39891C(&v231, 0);
      }

      v67 = v160;

      goto LABEL_36;
    }

    goto LABEL_64;
  }

  sub_15F84(v6, &v223, &unk_DEA520, &unk_AFDBF0);
  sub_2AC2C4(v6, _s23MusicPerformanceContextVMa);
  if (v227 == 1)
  {
    goto LABEL_10;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  sub_1611C(&v223);
  if (v10)
  {
    v11 = [v10 traitCollection];

    UITraitCollection.isMediaPicker.getter(v12);
  }

  v13 = *a1;
  if (*a1)
  {
    goto LABEL_11;
  }
}

uint64_t sub_2ABAD4(void *a1, void *a2)
{
  v4 = (*(&stru_158.reloff + (swift_isaMask & *a2)))();
  v5 = (*(&stru_248.flags + (swift_isaMask & *a1)))(v4);
  v6 = (*&stru_158.segname[(swift_isaMask & *a2) + 16])(v5);
  return (*(&stru_1F8.offset + (swift_isaMask & *a1)))(v6);
}

uint64_t sub_2ABC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  sub_AB9940();
  v6[24] = sub_AB9930();
  v8 = sub_AB98B0();

  return _swift_task_switch(sub_2ABCA8, v8, v7);
}

uint64_t sub_2ABCA8()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_2D384(*(v0 + 184), v0 + 112);
  sub_15F28(v2, v0 + 16);
  v3 = swift_allocObject();
  v4 = *(v0 + 128);
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 144);
  *(v3 + 64) = *(v0 + 160);
  sub_17704(v0 + 16, v3 + 72);
  sub_1109D4(v1, 0, 0, 1, v2, sub_2AC2B8, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2ABDE0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  }

  return swift_deallocObject();
}

uint64_t sub_2ABE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_2ABC0C(a1, v4, v5, v6, (v1 + 5), (v1 + 17));
}

uint64_t sub_2ABF50()
{

  return swift_deallocObject();
}

void sub_2ABFA4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    sub_4150EC(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_12E1C(v5, &unk_DEA510, "\b]\r");
    }

    else
    {
      sub_140E58(v5, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = UIViewController.playActivityInformation.getter();
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v12, v13, v15, v17, v19);
        v21 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v21 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {

          v22 = sub_AB9260();
        }

        else
        {
          v22 = 0;
        }

        [v20 setPlayActivityFeatureName:v22];

        if (v18 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          isa = sub_AB3250().super.isa;
        }

        [v20 setPlayActivityRecommendationData:isa];

        sub_466A4(v16, v18);
      }

      sub_37D3DC(0);
      sub_2AC2C4(v9, type metadata accessor for PlaybackIntentDescriptor);
    }
  }
}

uint64_t sub_2AC21C()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v1);
  }

  if (*(v0 + 136))
  {
  }

  if (*(v0 + 152))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2AC2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AC344(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = [v4 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
  }

  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    return 1;
  }

  else
  {
    return v5[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds];
  }
}

void sub_2AC448(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v26.receiver = v5;
  v26.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v10 = objc_msgSendSuper2(&v26, "invalidationContextForBoundsChange:", a2, a3, a4, a5);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  v12 = v10;
  if ([v11 invalidateEverything] & 1) != 0 || (objc_msgSend(v11, "invalidateDataSourceCounts"))
  {
    goto LABEL_17;
  }

  v13 = [v5 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
  }

  if ((sub_ABA520() & 1) == 0)
  {
LABEL_17:
  }

  else
  {
    v25 = v12;
    v15 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    v16 = *&v5[v15];
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    if (v19)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        [v11 setInvalidateFlowLayoutDelegateMetrics:0];
        [v11 setInvalidateFlowLayoutAttributes:0];
        v12 = v25;
        goto LABEL_17;
      }

      v19 = *(v16 + 64 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        do
        {
LABEL_14:
          v19 &= v19 - 1;

          v23 = sub_AB9260();
          sub_AB3820();
          isa = sub_AB9740().super.isa;
          [v11 invalidateSupplementaryElementsOfKind:v23 atIndexPaths:isa];
        }

        while (v19);
        continue;
      }
    }

    __break(1u);
  }
}

void sub_2AC768(void *a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v71 - v7;
  __chkstk_darwin();
  v10 = v71 - v9;
  v11 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v92.receiver = v1;
  v92.super_class = v11;
  objc_msgSendSuper2(&v92, "invalidateLayoutWithContext:", a1);
  if (([a1 invalidateEverything] & 1) != 0 || (objc_msgSend(a1, "invalidateDataSourceCounts") & 1) != 0 || (v12 = objc_msgSend(a1, "invalidatedSupplementaryIndexPaths")) == 0)
  {
    v69 = sub_98FF4(_swiftEmptyArrayStorage);
    v70 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    *&v1[v70] = v69;
LABEL_44:

    return;
  }

  v13 = v12;
  v76 = v3;
  v73 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCC48, &qword_B08318);
  v14 = sub_AB8FF0();

  v15 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
  swift_beginAccess();
  v75 = v1;
  v74 = v15;
  v16 = *&v1[v15];
  v17 = v14 + 64;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v14 + 64);
  v21 = (v18 + 63) >> 6;
  v85 = v4;
  v82 = (v4 + 8);
  v83 = v4 + 16;

  v22 = 0;
  v78 = v10;
  v77 = v14;
  v79 = v14 + 64;
  v86 = v21;
LABEL_7:
  while (2)
  {
    v80 = v16;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v20)
          {
            while (1)
            {
              v24 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v24 >= v21)
              {

                *&v75[v74] = v16;
                goto LABEL_44;
              }

              v23 = *(v17 + 8 * v24);
              ++v22;
              if (v23)
              {
                v22 = v24;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

          v23 = v20;
LABEL_15:
          v20 = (v23 - 1) & v23;
        }

        while (!*(v16 + 16));
        v25 = __clz(__rbit64(v23)) | (v22 << 6);
        v26 = (*(v14 + 48) + 16 * v25);
        v28 = *v26;
        v27 = v26[1];
        v29 = *(*(v14 + 56) + 8 * v25);

        v89 = v29;

        v88 = v28;
        v30 = sub_2EBF88(v28, v27);
        if (v31)
        {
          break;
        }
      }

      v84 = v27;
      v32 = *(*(v16 + 56) + 8 * v30);
      v33 = sub_2D668();

      v34 = v76;
      v35 = sub_AB9B70();
      v91[0] = v35;
      v36 = v32[2];
      v87 = v20;
      if (v36)
      {
        v72 = v33;
        v37 = *(v85 + 80);
        v81 = v32;
        v38 = v32 + ((v37 + 32) & ~v37);
        v90 = *(v85 + 72);
        v39 = *(v85 + 16);
        v40 = v78;
        v41 = v34;
        v42 = v6;
        v43 = v82;
        do
        {
          v39(v40, v38, v41);
          sub_1C47C(v42, v40);
          (*v43)(v42, v41);
          v38 += v90;
          --v36;
        }

        while (v36);

        v81 = v91[0];
        v6 = v42;
        v34 = v41;
        v21 = v86;
        v20 = v87;
      }

      else
      {
        v81 = v35;
      }

      v44 = v89;
      v45 = sub_AB9B70();
      v91[0] = v45;
      v46 = *(v44 + 16);
      if (v46)
      {
        v47 = v44 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v90 = *(v85 + 72);
        v48 = *(v85 + 16);
        v49 = v73;
        v50 = v82;
        do
        {
          v48(v49, v47, v34);
          sub_1C47C(v6, v49);
          (*v50)(v6, v34);
          v47 += v90;
          --v46;
        }

        while (v46);

        v51 = v91[0];
        v21 = v86;
        v20 = v87;
      }

      else
      {
        v51 = v45;
      }

      if (v51[2] <= v81[2] >> 3)
      {
        v91[0] = v81;
        sub_1C4FD8(v51);

        v53 = v91[0];
      }

      else
      {
        v52 = sub_1C7540(v51, v81);

        v53 = v52;
      }

      v14 = v77;
      v54 = *(v53 + 16);
      v17 = v79;
      if (v54)
      {
        break;
      }

      v16 = v80;
      v55 = sub_2EBF88(v88, v84);
      if (v56)
      {
        v67 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v16;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_3337F0();
          v16 = v91[0];
        }

        sub_27F6EC(v67, v16);

        v21 = v86;
        goto LABEL_7;
      }
    }

    v90 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
    v57 = *(v85 + 72);
    v58 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v59 = swift_allocObject();
    v60 = _swift_stdlib_malloc_size(v59);
    if (!v57)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

    if (v60 - v58 != 0x8000000000000000 || v57 != -1)
    {
      v59[2] = v54;
      v59[3] = 2 * ((v60 - v58) / v57);
      sub_131440(v91, v59 + v58, v54, v90);
      v63 = v62;
      v64 = v91[0];
      v89 = v91[1];
      v81 = v91[2];
      v72 = v91[3];
      v71[1] = v91[4];

      sub_2BB88(v64);
      if (v63 == v54)
      {

        v65 = v80;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v65;
        sub_9495C(v59, v88, v84, v66);

        v16 = v91[0];
        v17 = v79;
        v21 = v86;
        continue;
      }

      goto LABEL_48;
    }

    break;
  }

  __break(1u);
}

void sub_2ACEF4(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  objc_msgSendSuper2(&v8, "prepareLayout");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    if ([v2 delegate])
    {
      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        v5 = v4;
        [v4 collectionView:v3 heightForGlobalHeaderIn:v1];
        *&v1[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] = v6;
        [v5 collectionView:v3 heightForGlobalFooterIn:v1];
        *&v1[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] = v7;

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  *&v1[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] = 0;
}

void *sub_2AD0E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight;
  if (*&v4[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalHeaderHeight] <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v15 = sub_AB9260();

    sub_AB3810();
    isa = sub_AB3770().super.isa;
    (*(v11 + 8))(v13, v10);
    v17 = [v5 layoutAttributesForSupplementaryViewOfKind:v15 atIndexPath:isa];

    if (v17)
    {
      v18 = v17;
      [v18 size];
      a2 = a2 - v19;
      [v18 size];
      v21 = v20;

      a4 = v21 + a4;
    }
  }

  v22 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v105.receiver = v5;
  v105.super_class = v22;
  v23 = objc_msgSendSuper2(&v105, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  v93 = v11;
  v98 = sub_2AED30();
  v25 = sub_AB9760();

  v99 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds;
  v26 = v5[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds];
  if (v26 != 1)
  {
    v27 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight;
    if (*&v5[v14] > 0.0 || *&v5[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight] > 0.0)
    {
      goto LABEL_11;
    }

    return v25;
  }

  v27 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight;
LABEL_11:
  v29 = *&v5[v27];
  v30 = (v25 >> 62);
  v94 = v17;
  v100 = v5;
  v95 = v10;
  v97 = v13;
  if (v29 <= 0.0)
  {
    v91 = 0;
  }

  else
  {
    v31 = UICollectionElementKindGlobalFooter;
    sub_AB3810();
    v32 = sub_AB3770().super.isa;
    (*(v93 + 8))(v13, v10);
    v91 = [v5 layoutAttributesForSupplementaryViewOfKind:v31 atIndexPath:v32];

    LOBYTE(v26) = *(v99 + v5);
  }

  v104 = &_swiftEmptySetSingleton;
  if ((v26 & 1) == 0)
  {
    goto LABEL_45;
  }

  v102 = &_swiftEmptySetSingleton;
  if (v30)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

  result = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_43:
    v55 = &_swiftEmptySetSingleton;
LABEL_44:
    sub_1C4DBC(v55);

LABEL_45:
    v103 = _swiftEmptyArrayStorage;
    if (v30)
    {
      v56 = sub_ABB060();
      if (v56)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v56 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v56)
      {
LABEL_47:
        if (v56 >= 1)
        {
          v57 = 0;
          v96 = UICollectionElementKindSectionHeader;
          v92 = (v93 + 8);
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v58 = sub_361668(v57, v25);
            }

            else
            {
              v58 = *(v25 + 8 * v57 + 32);
            }

            v59 = v58;
            [v58 copy];
            sub_ABAB50();
            swift_dynamicCast();
            v60 = v101;
            swift_unknownObjectRelease();
            if (*(v99 + v5) != 1 || [v60 representedElementCategory] != &dword_0 + 1)
            {
              goto LABEL_62;
            }

            v61 = [v60 representedElementKind];
            if (!v61)
            {
              break;
            }

            v62 = v61;
            v63 = sub_AB92A0();
            v65 = v64;

            v66 = sub_AB92A0();
            if (!v65)
            {
              goto LABEL_61;
            }

            if (v63 == v66 && v65 == v67)
            {
            }

            else
            {
              v70 = sub_ABB3C0();

              if ((v70 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v71 = v96;
            v72 = [v60 indexPath];
            v73 = v97;
            sub_AB3790();
            v74 = sub_AB3770().super.isa;
            (*v92)(v73, v95);

            v75 = [v100 layoutAttributesForSupplementaryViewOfKind:v71 atIndexPath:v74];
            v17 = v94;
            if (v75)
            {
              [v75 frame];
              [v60 setFrame:?];
            }

LABEL_65:
            v68 = v60;
            sub_AB9730();
            if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
              v17 = v94;
            }

            sub_AB97F0();
            v28 = v103;
            v69 = [v68 representedElementCategory];
            v5 = v100;
            if (v69 == &dword_0 + 1)
            {
              sub_2AE93C(v68);
            }

            ++v57;

            if (v56 == v57)
            {
              goto LABEL_74;
            }
          }

          sub_AB92A0();
LABEL_61:

LABEL_62:
          if (v17)
          {
            [v17 frame];
            CGRectGetHeight(v106);
          }

          [v60 frame];
          [v60 setFrame:?];
          goto LABEL_65;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    v28 = _swiftEmptyArrayStorage;
LABEL_74:

    if (*(v104 + 2))
    {
      v76 = 0;
      v77 = v104 + 56;
      v78 = 1 << v104[32];
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      v80 = v79 & *(v104 + 7);
      v81 = (v78 + 63) >> 6;
      v99 = UICollectionElementKindSectionHeader;
      v82 = (v93 + 8);
      if (!v80)
      {
        goto LABEL_80;
      }

      do
      {
LABEL_78:
        while (1)
        {
          v80 &= v80 - 1;
          v83 = v99;
          v84 = v97;
          sub_AB37C0();
          v85 = sub_AB3770().super.isa;
          (*v82)(v84, v95);
          v86 = [v100 layoutAttributesForSupplementaryViewOfKind:v83 atIndexPath:v85];

          v17 = v94;
          if (v86)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_80;
          }
        }

        v88 = v86;
        sub_AB9730();
        if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v17 = v94;
        }

        sub_AB97F0();

        v28 = v103;
      }

      while (v80);
      while (1)
      {
LABEL_80:
        v87 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v87 >= v81)
        {
          break;
        }

        v80 = *&v77[8 * v87];
        ++v76;
        if (v80)
        {
          v76 = v87;
          goto LABEL_78;
        }
      }

      if (v17)
      {
        goto LABEL_91;
      }

      goto LABEL_93;
    }

    if (!v17)
    {
LABEL_93:
      if (v91)
      {
        v90 = v91;
        sub_AB9730();
        if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
          v17 = v94;
        }

        sub_AB97F0();

        return v103;
      }

      else
      {
      }

      return v28;
    }

LABEL_91:
    v89 = v17;
    sub_AB9730();
    if (*(&dword_10 + (v103 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v103 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_92:
      sub_AB97F0();
      v28 = v103;
      goto LABEL_93;
    }

LABEL_101:
    sub_AB97A0();
    v17 = v94;
    goto LABEL_92;
  }

LABEL_17:
  v92 = (v25 >> 62);
  v34 = result - 1;
  if (result >= 1)
  {
    v35 = 0;
    v96 = UICollectionElementKindSectionHeader;
    v36 = (v93 + 8);
    v37 = &selRef_setSubtitleText_;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v42 = sub_361668(v35, v25);
      }

      else
      {
        v42 = *(v25 + 8 * v35 + 32);
      }

      v43 = v42;
      if (![v42 v37[500]])
      {
        v38 = [v43 indexPath];
        v39 = v97;
        sub_AB3790();
        v40 = sub_AB37F0();
        (*v36)(v39, v10);
        v41 = v40;
        v37 = &selRef_setSubtitleText_;
        sub_1A5B0(&v103, v41);

        v5 = v100;
        goto LABEL_20;
      }

      if ([v43 v37[500]] != &dword_0 + 1)
      {

        goto LABEL_20;
      }

      v44 = [v43 representedElementKind];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = sub_AB92A0();
      v48 = v47;

      v49 = sub_AB92A0();
      if (!v48)
      {
        v10 = v95;
        v37 = &selRef_setSubtitleText_;
        goto LABEL_35;
      }

      if (v46 == v49 && v48 == v50)
      {
      }

      else
      {
        v51 = sub_ABB3C0();

        if ((v51 & 1) == 0)
        {

          v5 = v100;
          v10 = v95;
          v37 = &selRef_setSubtitleText_;
LABEL_20:
          if (v34 == v35)
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }

      v52 = [v43 indexPath];
      v53 = v97;
      sub_AB3790();
      v54 = sub_AB37F0();
      v10 = v95;
      (*v36)(v53, v95);
      sub_1A5B0(&v103, v54);

      v5 = v100;
      v37 = &selRef_setSubtitleText_;
      if (v34 == v35)
      {
LABEL_40:
        v55 = v102;
        v17 = v94;
        v30 = v92;
        goto LABEL_44;
      }

LABEL_21:
      ++v35;
    }

    sub_AB92A0();
LABEL_35:

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_2ADD4C(uint64_t a1)
{
  isa = sub_AB3770().super.isa;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  v3 = objc_msgSendSuper2(&v7, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v3)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  [v3 copy];

  sub_ABAB50();
  swift_unknownObjectRelease();
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_9BC10(&v8);
    return 0;
  }

  sub_2AED30();
  if (swift_dynamicCast())
  {
    v4 = v6;
    [v4 frame];
    [v4 setFrame:?];

    return v6;
  }

  return 0;
}

unint64_t sub_2ADF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v55 - v11;
  v13 = [v2 collectionView];
  if (v13)
  {
    v14 = v13;
    v15 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
    v16 = *v15 == a1 && v15[1] == a2;
    if (v16 || (sub_ABB3C0() & 1) != 0)
    {
      v17 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v19 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v17 withIndexPath:isa];

      [v14 bounds];
      [v19 setFrame:?];
      sub_2AE93C(v19);

      return v19;
    }
  }

  v57 = v6;
  v20 = [v2 collectionView];
  if (v20)
  {
    v21 = v20;
    v56 = v7;
    if (sub_AB92A0() == a1 && v22 == a2)
    {
    }

    else
    {
      v24 = sub_ABB3C0();

      if ((v24 & 1) == 0)
      {

        v7 = v56;
        goto LABEL_16;
      }
    }

    v33 = sub_AB9260();
    v34 = sub_AB3770().super.isa;
    v19 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v33 withIndexPath:v34];

    result = [v21 numberOfSections];
    v36 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
LABEL_29:

        return v19;
      }

      v37 = [v21 numberOfItemsInSection:v36];
      v38 = __OFSUB__(v37, 1);
      result = v37 - 1;
      if (!v38)
      {
        v39 = v56;
        if ((result & 0x8000000000000000) == 0)
        {
          sub_AB37C0();
          v40 = sub_AB3770().super.isa;
          v41 = [v3 layoutAttributesForItemAtIndexPath:v40];

          if (v41)
          {
            [v21 bounds];
            v43 = v42;
            v45 = v44;
            [v41 frame];
            [v19 setFrame:{v43, CGRectGetMaxY(v60), v45, *&v3[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_globalFooterHeight]}];
          }

          sub_2AE93C(v19);

          (*(v39 + 8))(v12, v57);
          return v19;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_16:
  v25 = sub_AB9260();
  v26 = sub_AB3770().super.isa;
  v27 = type metadata accessor for BrowseCollectionViewFlowLayout();
  v59.receiver = v2;
  v59.super_class = v27;
  v28 = objc_msgSendSuper2(&v59, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v25, v26);

  if (!v28)
  {
    return 0;
  }

  v29 = IndexPath.safeSection.getter();
  [v28 copy];
  sub_ABAB50();
  sub_2AED30();
  swift_dynamicCast();
  v19 = v58;
  swift_unknownObjectRelease();
  [v19 frame];
  [v19 setFrame:?];
  v30 = [v3 collectionView];
  if (!v30)
  {
LABEL_39:
    sub_2AE93C(v19);

    return v19;
  }

  v31 = v30;
  if (sub_AB92A0() == a1 && v32 == a2)
  {
  }

  else
  {
    v46 = sub_ABB3C0();

    if ((v46 & 1) == 0)
    {
LABEL_38:

      goto LABEL_39;
    }
  }

  if (v3[OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_customSectionHeadersPinToVisibleBounds] != 1)
  {
    goto LABEL_38;
  }

  v47 = v31;
  [v47 contentOffset];
  v49 = v48;
  [v47 adjustedContentInset];
  v51 = v50;

  v52 = [v47 numberOfItemsInSection:v29];
  [v19 frame];
  if (CGRectGetMinY(v61) >= v49 + v51)
  {
    goto LABEL_38;
  }

  result = v52 - 1;
  if (!__OFSUB__(v52, 1))
  {
    sub_AB37C0();
    v53 = sub_AB3770().super.isa;
    (*(v7 + 8))(v9, v57);
    v54 = [v3 layoutAttributesForItemAtIndexPath:v53];

    if (v54)
    {
      [v54 frame];
      CGRectGetMaxY(v62);
      [v19 frame];
      CGRectGetHeight(v63);
    }

    [v19 frame];
    [v19 setFrame:?];
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_2AE734(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = v2;
    v4 = UICollectionElementKindSectionHeader;
    isa = sub_AB3770().super.isa;
    v6 = [v2 layoutAttributesForSupplementaryViewOfKind:v4 atIndexPath:isa];

    if (v6)
    {
      [v6 frame];
      CGRectGetHeight(v7);
      [v3 sectionInset];
    }
  }
}

id sub_2AE93C(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 representedElementKind];
  if (result)
  {
    v10 = result;
    v11 = sub_AB92A0();
    v13 = v12;

    v14 = OBJC_IVAR____TtC16MusicApplication30BrowseCollectionViewFlowLayout_returnedSupplementaryViewIndexPaths;
    swift_beginAccess();
    v15 = *(v2 + v14);
    v16 = *(v15 + 16);

    v24 = v11;
    if (v16 && (v17 = sub_2EBF88(v11, v13), (v18 & 1) != 0))
    {
      v19 = *(*(v15 + 56) + 8 * v17);
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = [a1 indexPath];
    sub_AB3790();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_6AE4C(0, v19[2] + 1, 1, v19);
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_6AE4C((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    (*(v5 + 32))(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v8, v4);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v2 + v14);
    *(v2 + v14) = 0x8000000000000000;
    sub_9495C(v19, v24, v13, isUniquelyReferenced_nonNull_native);

    *(v2 + v14) = v25;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2AECC8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrowseCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_2AED30()
{
  result = qword_E04510;
  if (!qword_E04510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E04510);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2AEDA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2AEDE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2AEE64()
{
  v1 = *v0;
  if (*v0)
  {
    if ([*v0 hasLoadedValueForKey:MPModelPropertyAlbumEditorNotes])
    {
      v2 = [v1 editorNotes];
      if (v2)
      {
        v3 = v2;
        v4 = sub_AB92A0();
        v6 = v5;

        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v7)
        {
          return v4;
        }
      }
    }

    if ([v1 hasLoadedValueForKey:MPModelPropertyAlbumShortEditorNotes])
    {
      result = [v1 shortEditorNotes];
      if (!result)
      {
        return result;
      }

      v9 = result;
      v10 = sub_AB92A0();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        return v10;
      }
    }
  }

  return 0;
}

id sub_2AEFA8(void *a1, SEL *a2, void *a3)
{
  v4 = *v3;
  if (v4 && [v4 hasLoadedValueForKey:*a1])
  {
    result = [v4 *a2];
    if (!result)
    {
      return result;
    }

    v8 = result;
    if ([result hasLoadedValueForKey:*a3])
    {
      v9 = v8;
      v10 = [v9 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_AB92A0();

        return v12;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_2AF080(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *(v6 + v5);
      if (v10 == 6)
      {
        v14 = *(a1 + 16);
        v15 = (a1 + 32);
        while (v14)
        {
          v16 = *v15++;
          --v14;
          if (v16 == 5)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v10 == 4)
      {
        v11 = *(a1 + 16);
        v12 = (a1 + 32);
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == 3)
          {
            goto LABEL_6;
          }
        }
      }

      v17 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_6D5C0(0, *(v7 + 2) + 1, 1);
        v7 = v17;
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        sub_6D5C0((v8 > 1), v9 + 1, 1);
        v7 = v17;
      }

      *(v7 + 2) = v9 + 1;
      v7[v9 + 32] = v10;
LABEL_6:
      ++v5;
    }

    while (v5 != v4);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v17 = v7;

  sub_162F48(&v17);

  *v2 = v17;
}

uint64_t sub_2AF21C()
{
  v1 = *v0;
  v2 = xmmword_AF82C0;
  v3 = 0uLL;
  if (*v0)
  {
    sub_2AF59C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v1;
    v6 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
    v7 = [v5 hasLoadedValuesForPropertySet:v6];

    if (v7)
    {
      v8 = [v5 libraryAddStatusObserverConfiguration];

      v9 = v8 & 0x100000000;
      v10 = vdupq_n_s64(v8);
      v3 = vandq_s8(v10, xmmword_AFC580);
      v2 = vandq_s8(v10, xmmword_AFC590);
    }

    else
    {

      v9 = 0;
      v3 = 0uLL;
      v2 = xmmword_AF82C0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = vorrq_s8(v2, v3);
  return *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v9;
}

id sub_2AF328()
{
  v1 = *v0;
  if (*v0)
  {
    sub_2AF59C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = v1;
    v4 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v5 = [v3 hasLoadedValuesForPropertySet:v4];

    if (v5)
    {
      v6 = [v3 newKeepLocalStatusObserverConfiguration];

      return v6;
    }
  }

  v8 = objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);

  return [v8 init];
}

id sub_2AF3FC()
{
  v1 = *v0;
  if (*v0 && [*v0 hasLoadedValueForKey:MPModelPropertyAlbumArtwork])
  {
    return [v1 artworkCatalog];
  }

  else
  {
    return 0;
  }
}

id sub_2AF460()
{
  v1 = *v0;
  if (!*v0 || ![*v0 hasLoadedValueForKey:MPModelPropertyAlbumTitle])
  {
    return 0;
  }

  result = [v1 title];
  if (result)
  {
    v3 = result;
    v4 = sub_AB92A0();

    return v4;
  }

  return result;
}

id sub_2AF4F0()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = MPModelPropertyAlbumIsFavorite;
  v3 = v1;
  if ([v3 hasLoadedValueForKey:v2])
  {
    v4 = [v3 isFavorite];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_2AF59C()
{
  result = qword_DE8E90;
  if (!qword_DE8E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8E90);
  }

  return result;
}

id sub_2AF5F8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator] = 1;
  v10 = &v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] = _swiftEmptyArrayStorage;
  v11 = &v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  *v11 = 0;
  v11[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels] = _swiftEmptyArrayStorage;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for ItemizedTextListView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id sub_2AF738()
{
  v1 = sub_2B1B68();

  String.trim()();

  v2 = sub_AB9260();

  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel];

  v4 = sub_AB9260();
  v5 = [v4 _isNaturallyRTL];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [v3 setTextAlignment:v6];

  result = [v0 setNeedsLayout];
  v8 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  if (v8)
  {
    v9 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler + 8];

    v8(v0);

    return sub_17654(v8, v9);
  }

  return result;
}

id sub_2AF8AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth;
  *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth] = 0;
  v2 = *(*&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);
  if (v2)
  {
    v3 =  + 64;
    do
    {
      if (*(v3 - 24))
      {
        v4 = *(v3 - 16);
        if (*(v3 - 16))
        {
          v5 = objc_allocWithZone(type metadata accessor for BadgeLabel());
          swift_bridgeObjectRetain_n();

          v6 = [v5 init];
        }

        else
        {
          swift_bridgeObjectRetain_n();

          v6 = sub_2B1E78(1);
        }

        v7 = v6;
        v8 = sub_AB9260();
        [v7 setText:v8];

        sub_ABA510();
        [v7 sizeThatFits:?];
        v10 = v9;

        v11 = v10 + 4.0;
        if (!v4)
        {
          v11 = v10;
        }

        if (*&v0[v1] < v11)
        {
          *&v0[v1] = v11;
        }

        swift_bridgeObjectRelease_n();
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  result = [v0 setNeedsLayout];
  v13 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
  if (v13)
  {
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler + 8];

    v13(v0);

    return sub_17654(v13, v14);
  }

  return result;
}

double sub_2AFAAC(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ItemizedTextListView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    sub_2B1888();
    [v1 setNeedsLayout];
    v13 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    if (v13)
    {
      v14 = *&v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler + 8];

      v13(v1);
      sub_17654(v13, v14);
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    return result;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_2AFD34(double a1, double a2)
{
  v3 = v2;
  v84 = [v2 traitCollection];
  [v84 displayScale];
  [v2 music_inheritedLayoutInsets];
  v7 = v6;
  v9 = v8;
  [v2 bounds];
  v12 = UIEdgeInsetsInsetRect(v10, v11, a1, a2, v7, v9);
  v15 = v14;
  v17 = v16;
  v18 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title + 8];
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title] & 0xFFFFFFFFFFFFLL;
  }

  rect = v12;
  rect_8 = v13;
  if (v19)
  {
    v20 = v12;
    v21 = v13;
    v22 = sub_2B1B68();
    v89.origin.x = v20;
    v89.origin.y = v15;
    v89.size.width = v17;
    v89.size.height = v21;
    [v22 sizeThatFits:{CGRectGetWidth(v89), 1.79769313e308}];
    v24 = v23;

    v90.origin.x = v20;
    v90.origin.y = v15;
    v90.size.width = v17;
    v90.size.height = v21;
    CGRectGetMinY(v90);
    sub_89F60();
    v25 = sub_ABA550();
    [v25 _scaledValueForValue:36.0];

    v26 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
    [*&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v91.origin.y = v27;
    v91.origin.x = v20;
    v91.size.width = v17;
    v91.size.height = v24;
    MaxY = CGRectGetMaxY(v91);
    [*&v3[v26] _baselineOffsetFromBottom];
    v15 = MaxY - v29;
  }

  v86 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType;
  v30 = v17;
  if ((v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] & 1) == 0)
  {

    goto LABEL_10;
  }

  v31 = sub_ABB3C0();

  if (v31)
  {
LABEL_10:
    [v3 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v3 music_inheritedLayoutInsets];
    v42 = v41;
    v93.origin.x = v34;
    v93.origin.y = v36;
    v93.size.width = v38;
    v93.size.height = v40;
    v43 = CGRectGetWidth(v93) * 0.25 - v42;
    v94.origin.x = v34;
    v94.origin.y = v36;
    v94.size.width = v38;
    v94.size.height = v40;
    v44 = CGRectGetWidth(v94) * 0.5 - v42;
    v17 = v30;
    v45 = v44 + -10.0;
    v46 = *&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth];
    if (v43 > v46)
    {
      v46 = v43;
    }

    v47 = rect_8;
    if (v45 >= v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v45;
    }

    v49 = rect;
    v50 = v15;
    v51 = v30;
    Width = CGRectGetWidth(*(&v47 - 3)) - v48 + -20.0;
    goto LABEL_16;
  }

  v92.origin.x = rect;
  v92.size.height = rect_8;
  v92.origin.y = v15;
  v92.size.width = v17;
  Width = CGRectGetWidth(v92);
LABEL_16:
  v52 = *(*&v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);

  if (!v52)
  {
LABEL_40:

    v99.origin.x = rect;
    v99.size.height = rect_8;
    v99.origin.y = v15;
    v99.size.width = v17;
    CGRectGetMinY(v99);
    sub_AB39F0();

    return;
  }

  v54 = 0;
  v85 = v53;
  v55 = (v53 + 72);
  while (v54 < v52)
  {
    v56 = *(v55 - 4);
    v57 = *v55;
    if (v54)
    {

LABEL_23:
      if (v57)
      {
        v58 = 36.0;
      }

      else
      {
        v58 = 18.0;
      }

      goto LABEL_30;
    }

    if ((v3[v86] & 1) == 0)
    {

      v58 = 24.0;
      goto LABEL_30;
    }

    v59 = sub_ABB3C0();

    v58 = 24.0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    sub_89F60();
    v60 = sub_ABA560();
    v61 = sub_2B1E78(0);
    v62 = sub_AB9260();
    [v61 setText:v62];

    v63 = v61;
    [v63 sizeThatFits:{Width, 1.79769313e308}];
    v65 = v64;
    v95.origin.x = rect;
    v95.size.height = rect_8;
    v95.origin.y = v15;
    v95.size.width = v17;
    CGRectGetMinY(v95);
    [v60 _scaledValueForValue:v58];
    [v63 _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v67 = v66;
    [v63 setFrame:{0.0, v66, Width, v65}];

    v96.origin.x = 0.0;
    v96.origin.y = v67;
    v96.size.width = Width;
    v96.size.height = v65;
    v68 = CGRectGetMaxY(v96);
    [v63 _baselineOffsetFromBottom];
    v15 = v68 - v69;
    if (v56)
    {
      if (v3[v86])
      {

        v17 = v30;
      }

      else
      {
        v70 = sub_ABB3C0();

        v17 = v30;
        if ((v70 & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_19;
        }
      }

      if (v3[v86] == 1)
      {

        goto LABEL_37;
      }

      v71 = sub_ABB3C0();

      v72 = 18.0;
      if (v71)
      {
LABEL_37:
        v72 = 24.0;
      }

      v73 = sub_ABA560();
      v74 = sub_2B1E78(1);
      v75 = sub_AB9260();
      [v74 setText:v75];

      v76 = v74;
      [v76 sizeThatFits:{Width, 1.79769313e308}];
      v78 = v77;
      v97.origin.x = rect;
      v97.size.height = rect_8;
      v97.origin.y = v15;
      v97.size.width = v17;
      CGRectGetMinY(v97);
      [v73 _scaledValueForValue:v72];
      v17 = v30;
      [v76 _firstBaselineOffsetFromTop];
      sub_AB39F0();
      v80 = v79;
      [v76 setFrame:{0.0, v79, Width, v78}];

      v98.origin.x = 0.0;
      v98.origin.y = v80;
      v98.size.width = Width;
      v98.size.height = v78;
      v81 = CGRectGetMaxY(v98);
      [v76 _baselineOffsetFromBottom];
      v83 = v82;

      swift_bridgeObjectRelease_n();
      v15 = v81 - v83;
      goto LABEL_19;
    }

    v17 = v30;
LABEL_19:
    ++v54;
    v52 = *(v85 + 16);
    v55 += 48;
    if (v54 == v52)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

void sub_2B059C(uint64_t a1)
{
  v2 = v1;
  v149.receiver = v1;
  v149.super_class = type metadata accessor for ItemizedTextListView();
  objc_msgSendSuper2(&v149, "layoutSubviews");
  v127 = [v1 traitCollection];
  [v127 displayScale];
  v135 = v3;
  p_name = &selRef__authenticateReturningError_;
  [v1 music_inheritedLayoutInsets];
  v6 = v5;
  v8 = v7;
  v9 = &selRef__authenticateReturningError_;
  [v1 bounds];
  v128 = v10;
  v133 = v12;
  v134 = v11;
  rect = v13;
  v14 = UIEdgeInsetsInsetRect(v10, v11, v12, v13, v6, v8);
  v16 = v15;
  v18 = v17;
  v138 = v19;
  v142 = &v1[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];

  v20 = sub_AB9260();
  v21 = [v20 _isNaturallyRTL];

  v22 = v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator];
  v23 = sub_2B1AA8();
  v24 = v23;
  v25 = &selRef__authenticateReturningError_;
  v130 = v14;
  v137 = v18;
  if (v22 == 1)
  {
    v26 = [v23 isDescendantOfView:v2];

    if ((v26 & 1) == 0)
    {
      [v2 addSubview:*&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator]];
    }

    [v2 bounds];
    v28 = v27;
    v30 = v29 - v8;
    v31 = 1.0 / v135;
    if (v21)
    {
      v150.origin.x = v128;
      v150.size.width = v133;
      v150.origin.y = v134;
      v150.size.height = rect;
      MaxX = CGRectGetMaxX(v150);
      v151.origin.x = v8;
      v151.origin.y = v28;
      v151.size.width = v30;
      v151.size.height = 1.0 / v135;
      v33 = MaxX - CGRectGetWidth(v151);
      v152.origin.x = v8;
      v152.origin.y = v28;
      v152.size.width = v30;
      v152.size.height = 1.0 / v135;
      v8 = v33 - CGRectGetMinX(v152);
    }

    [*&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator] setFrame:{v8, v28, v30, v31}];
    v16 = v31 + v16;
    v138 = v138 - v31;
    v14 = v130;
  }

  else
  {
    [v23 removeFromSuperview];
  }

  v34 = *(v142 + 1);
  if ((v34 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v35 = *v142 & 0xFFFFFFFFFFFFLL;
  }

  v36 = sub_2B1B68();
  v37 = v36;
  v38 = v128;
  if (v35)
  {
    v39 = [v36 isDescendantOfView:v2];

    if ((v39 & 1) == 0)
    {
      [v2 addSubview:*&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel]];
    }

    v40 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
    v41 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel];
    v153.origin.x = v14;
    v153.origin.y = v16;
    v153.size.width = v137;
    v153.size.height = v138;
    [v41 sizeThatFits:{CGRectGetWidth(v153), 1.79769313e308}];
    v43 = v42;

    v154.origin.x = v14;
    v154.origin.y = v16;
    v154.size.width = v137;
    v154.size.height = v138;
    CGRectGetMinY(v154);
    sub_89F60();
    v44 = sub_ABA550();
    [v44 _scaledValueForValue:36.0];
    v45 = v14;

    [*&v2[v40] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v47 = v46;
    if (v21)
    {
      v155.origin.x = v128;
      v155.size.width = v133;
      v155.origin.y = v134;
      v155.size.height = rect;
      v48 = CGRectGetMaxX(v155);
      v156.origin.x = v45;
      v156.origin.y = v47;
      v156.size.width = v137;
      v156.size.height = v43;
      v49 = v48 - CGRectGetWidth(v156);
      v157.origin.x = v45;
      v157.origin.y = v47;
      v157.size.width = v137;
      v157.size.height = v43;
      v45 = v49 - CGRectGetMinX(v157);
    }

    [*&v2[v40] setFrame:{v45, v47, v137, v43}];
    v158.origin.x = v45;
    v158.origin.y = v47;
    v158.size.width = v137;
    v158.size.height = v43;
    MaxY = CGRectGetMaxY(v158);
    [*&v2[v40] _baselineOffsetFromBottom];
    v16 = MaxY - v51;
    v14 = v130;
  }

  else
  {
    [v36 removeFromSuperview];
  }

  v52 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels;
  swift_beginAccess();
  v140 = v52;
  v53 = *&v2[v52];
  if (v53 >> 62)
  {
LABEL_100:
    v54 = sub_ABB060();
    if (!v54)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
    if (!v54)
    {
      goto LABEL_27;
    }
  }

  if (v54 < 1)
  {
    __break(1u);
LABEL_103:
    __break(1u);
    return;
  }

  for (i = 0; i != v54; ++i)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = sub_36160C(i, v53);
    }

    else
    {
      v56 = *(v53 + 8 * i + 32);
    }

    v57 = v56;
    [v56 v25[221]];
  }

LABEL_27:
  v159.origin.x = v14;
  v159.origin.y = v16;
  v159.size.width = v137;
  v159.size.height = v138;
  MinX = CGRectGetMinX(v159);
  v145 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType;
  if (v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType] == 1)
  {

    v25 = (&JSDateDescriptor + 24);
LABEL_30:
    v160.origin.x = v14;
    v160.origin.y = v16;
    v160.size.width = v137;
    v160.size.height = v138;
    Width = CGRectGetWidth(v160);
    goto LABEL_35;
  }

  v58 = sub_ABB3C0();

  v25 = (&JSDateDescriptor + 24);
  if (v58)
  {
    goto LABEL_30;
  }

  [v2 v9[56]];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [v2 p_name[183]];
  v69 = v68;
  v161.origin.x = v61;
  v161.origin.y = v63;
  v161.size.width = v65;
  v161.size.height = v67;
  v70 = CGRectGetWidth(v161) * 0.25 - v69;
  v162.origin.x = v61;
  v162.origin.y = v63;
  v162.size.width = v65;
  v14 = v130;
  v162.size.height = v67;
  v38 = v128;
  Width = CGRectGetWidth(v162) * 0.5 - v69 + -10.0;
  v71 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth];
  if (v70 > v71)
  {
    v71 = v70;
  }

  if (Width >= v71)
  {
    Width = v71;
  }

LABEL_35:
  v131 = Width;
  p_name = (&JSDateDescriptor + 24);
  if (v2[v145] == 1)
  {

LABEL_38:
    v163.origin.x = v14;
    v163.origin.y = v16;
    v163.size.width = v137;
    v163.size.height = v138;
    v73 = CGRectGetMinX(v163);
    goto LABEL_40;
  }

  v72 = sub_ABB3C0();

  if (v72)
  {
    goto LABEL_38;
  }

  v73 = MinX + v131 + 20.0;
LABEL_40:
  v139 = v73;
  if (v2[v145] == 1)
  {
  }

  else
  {
    v74 = sub_ABB3C0();

    if ((v74 & 1) == 0)
    {
      v165.origin.x = v14;
      v165.origin.y = v16;
      v165.size.width = v137;
      v165.size.height = v138;
      v75 = CGRectGetWidth(v165) - v131 + -20.0;
      goto LABEL_45;
    }
  }

  v164.origin.x = v14;
  v164.origin.y = v16;
  v164.size.width = v137;
  v164.size.height = v138;
  v75 = CGRectGetWidth(v164);
LABEL_45:
  v53 = *(*&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] + 16);
  v136 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems];

  if (v53)
  {
    v76 = 0;
    v9 = (v136 + 72);
    while (1)
    {
      if (v76 >= v53)
      {
        __break(1u);
        goto LABEL_100;
      }

      v146 = *(v9 - 24);
      v141 = *v9;
      v147 = *(v9 - 4);

      v80 = sub_2B1E78(0);
      v81 = sub_AB9260();
      [v80 setText:v81];

      v82 = v80;
      [v2 addSubview:v82];
      swift_beginAccess();
      v83 = v82;
      sub_AB9730();
      if (*(&dword_10 + (*&v2[v140] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v2[v140] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      swift_endAccess();
      [v83 sizeThatFits:{v75, 1.79769313e308}];
      v85 = v84;

      v86 = sub_AB9260();
      v87 = [v86 _isNaturallyRTL];

      v148 = v139;
      if (v87)
      {
        v167.origin.x = v38;
        v167.size.width = v133;
        v167.origin.y = v134;
        v167.size.height = rect;
        v88 = CGRectGetMaxX(v167);
        v168.origin.y = 0.0;
        v168.origin.x = v139;
        v168.size.width = v75;
        v168.size.height = v85;
        v89 = v88 - CGRectGetWidth(v168);
        v169.origin.y = 0.0;
        v169.origin.x = v139;
        v169.size.width = v75;
        v169.size.height = v85;
        v148 = v89 - CGRectGetMinX(v169);
      }

      v143 = v75;
      if (!v147)
      {
        v93 = v16;
        v92 = 0;
        v94 = 0.0;
        v144 = 0.0;
        v95 = 0.0;
        if (v76)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      if (v146)
      {
        v90 = objc_allocWithZone(type metadata accessor for BadgeLabel());

        v91 = [v90 init];
        sub_AB9390();
        v92 = v91;
      }

      else
      {

        v92 = sub_2B1E78(1);
      }

      v96 = sub_AB9260();

      [v92 setText:v96];

      v97 = v92;
      [v2 addSubview:v97];
      swift_beginAccess();
      sub_AB9730();
      if (*(&dword_10 + (*&v2[v140] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v2[v140] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      swift_endAccess();
      [v97 sizeThatFits:{v75, 1.79769313e308}];
      if (!v146)
      {
        v94 = v99;
        v144 = v131;
        v95 = MinX;
        goto LABEL_72;
      }

      v100 = v98 + 4.0;
      if (v131 < v100)
      {
        v100 = v131;
      }

      v144 = v100;
      if ((v2[v145] & 1) == 0)
      {
        break;
      }

      v101 = sub_ABB3C0();

      if (v101)
      {
        goto LABEL_69;
      }

      v170.origin.x = v14;
      v170.origin.y = v16;
      v170.size.width = v137;
      v170.size.height = v138;
      v95 = CGRectGetMinX(v170);
LABEL_70:
      v102 = [v83 font];
      if (!v102)
      {
        goto LABEL_103;
      }

      v103 = v102;
      [v102 capHeight];
      v105 = v104;

      v94 = v105 + 2.0;
LABEL_72:

      v106 = sub_AB9260();
      v107 = [v106 _isNaturallyRTL];

      v93 = v16;
      if (v107)
      {
        v172.origin.x = v38;
        v172.size.width = v133;
        v172.origin.y = v134;
        v172.size.height = rect;
        v108 = CGRectGetMaxX(v172);
        v173.origin.y = 0.0;
        v173.origin.x = v95;
        v173.size.width = v144;
        v173.size.height = v94;
        v109 = v108 - CGRectGetWidth(v173);
        v174.origin.y = 0.0;
        v174.origin.x = v95;
        v174.size.width = v144;
        v174.size.height = v94;
        v110 = CGRectGetMinX(v174);

        v95 = v109 - v110;
        v14 = v130;
        p_name = (&JSDateDescriptor + 24);
        if (v76)
        {
          goto LABEL_78;
        }
      }

      else
      {

        p_name = &JSDateDescriptor.name;
        if (v76)
        {
          goto LABEL_78;
        }
      }

LABEL_76:
      if ((v2[v145] & 1) == 0)
      {

        v112 = 24.0;
        goto LABEL_82;
      }

      v111 = sub_ABB3C0();

      v112 = 24.0;
      if (v111)
      {
        goto LABEL_82;
      }

LABEL_78:
      if (v141)
      {
        v112 = 36.0;
      }

      else
      {
        v112 = 18.0;
      }

LABEL_82:
      sub_89F60();
      v113 = sub_ABA560();
      if (v2[v145])
      {
      }

      else
      {
        v114 = sub_ABB3C0();

        v115 = 18.0;
        if ((v114 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v115 = 24.0;
LABEL_86:
      v116 = sub_ABA560();
      if ((v2[v145] & 1) == 0)
      {

LABEL_91:
        v177.origin.x = v14;
        v177.origin.y = v93;
        v177.size.width = v137;
        v177.size.height = v138;
        CGRectGetMinY(v177);
        [v113 _scaledValueForValue:v112];
        [v83 p_name[441]];
        sub_AB39F0();
        v122 = v121;
        v178.origin.x = v148;
        v178.origin.y = v122;
        v75 = v143;
        v178.size.width = v143;
        v178.size.height = v85;
        MinY = CGRectGetMinY(v178);
        if (v146)
        {
          [v83 p_name[441]];
          v124 = MinY + v123;
          v179.origin.y = 0.0;
          v179.origin.x = v95;
          v179.size.width = v144;
          v179.size.height = v94;
          MinY = v124 - CGRectGetHeight(v179) + 1.0;
        }

        v125 = &selRef__authenticateReturningError_;
        goto LABEL_96;
      }

      v117 = sub_ABB3C0();

      if (v117)
      {
        goto LABEL_91;
      }

      if (v92)
      {
        v118 = v92;
        v175.origin.x = v14;
        v175.origin.y = v93;
        v175.size.width = v137;
        v175.size.height = v138;
        CGRectGetMinY(v175);
        [v116 _scaledValueForValue:v115];
        p_name = &JSDateDescriptor.name;
        [v118 _firstBaselineOffsetFromTop];
        sub_AB39F0();
        MinY = v119;
        v176.origin.x = v95;
        v176.origin.y = MinY;
        v176.size.width = v144;
        v176.size.height = v94;
        CGRectGetMaxY(v176);
        [v118 _baselineOffsetFromBottom];
      }

      else
      {
        v180.origin.x = v14;
        v180.origin.y = v93;
        v180.size.width = v137;
        v180.size.height = v138;
        CGRectGetMinY(v180);
        MinY = 0.0;
        p_name = &JSDateDescriptor.name;
      }

      [v113 _scaledValueForValue:v112];
      [v83 _firstBaselineOffsetFromTop];
      sub_AB39F0();
      v122 = v126;
      v38 = v128;
      v14 = v130;
      v125 = &selRef__authenticateReturningError_;
      v25 = &JSDateDescriptor.name;
      v75 = v143;
LABEL_96:
      [v83 v125[262]];

      if (v92)
      {
        [v92 v125[262]];
      }

      ++v76;
      v166.origin.x = v148;
      v166.origin.y = v122;
      v166.size.width = v75;
      v166.size.height = v85;
      v77 = CGRectGetMaxY(v166);
      [v83 v25[442]];
      v79 = v78;

      v16 = v77 - v79;
      v53 = *(v136 + 16);
      v9 += 6;
      if (v76 == v53)
      {
        goto LABEL_98;
      }
    }

LABEL_69:
    v171.origin.x = 0.0;
    v171.origin.y = 0.0;
    v171.size.height = 0.0;
    v171.size.width = v144;
    v95 = MinX + v131 - CGRectGetWidth(v171);
    goto LABEL_70;
  }

LABEL_98:
}

uint64_t sub_2B15E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656B63617473;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656B63617473;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_2B1684()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_2B1704(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_2B1770(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_2B17EC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF1358;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_2B184C(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x64656B63617473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2B1888()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_AB92A0();
  v5 = v4;
  if (v3 == sub_AB92A0() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = sub_ABB3C0();

  if ((v8 & 1) == 0)
  {
    v9 = sub_AB92A0();
    v11 = v10;
    if (v9 != sub_AB92A0() || v11 != v12)
    {
      v14 = sub_ABB3C0();

      if (v14)
      {
        goto LABEL_6;
      }

      v15 = sub_AB92A0();
      v17 = v16;
      if (v15 != sub_AB92A0() || v17 != v18)
      {
        v20 = sub_ABB3C0();

        if (v20)
        {
          goto LABEL_6;
        }

        v21 = sub_AB92A0();
        v23 = v22;
        if (v21 != sub_AB92A0() || v23 != v24)
        {
          v25 = sub_ABB3C0();

          v19 = v25 & 1;
          goto LABEL_16;
        }
      }
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_6:

LABEL_15:
  v19 = 1;
LABEL_16:
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) = v19;
}

id sub_2B1AA8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2B1B68()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];

    sub_89F60();
    v9 = sub_ABA550();
    [v7 setFont:v9];

    v10 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_2B1C80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ItemizedTextListView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2B1D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2B1DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2B1E24()
{
  result = qword_DFCDA0;
  if (!qword_DFCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCDA0);
  }

  return result;
}

id sub_2B1E78(char a1)
{
  v3 = [objc_allocWithZone(UILabel) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setClipsToBounds:0];
  if (a1)
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v7 = &qword_E718D8;
  }

  else
  {
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v7 = &qword_E718C8;
  }

  [v5 setTextColor:*v7];
  [v5 setNumberOfLines:a1 & 1];
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) == 1)
  {

    goto LABEL_11;
  }

  v8 = sub_ABB3C0();

  if (v8)
  {
LABEL_11:

    v9 = sub_AB9260();
    v10 = [v9 _isNaturallyRTL];

    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v12 = sub_AB9260();
  v13 = [v12 _isNaturallyRTL];

  v14 = 2;
  if ((a1 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 2;
  if (a1)
  {
    v15 = 0;
  }

  if (v13)
  {
    v11 = v15;
  }

  else
  {
    v11 = v14;
  }

LABEL_21:
  [v5 setTextAlignment:v11];
  sub_89F60();
  v16 = sub_ABA560();
  [v5 setFont:v16];

  return v5;
}

void sub_2B2128()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator) = 1;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems) = _swiftEmptyArrayStorage;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_configurationType) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_longestTitleWidth) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___separator) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView____lazy_storage___headerTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_itemLabels) = _swiftEmptyArrayStorage;
  sub_ABAFD0();
  __break(1u);
}

id JSCircleImageViewController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

id JSCircleImageViewController.init(viewModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

void JSCircleImageViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSCircleImageViewController.viewDidLoad()()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController_viewModel];
  v3 = sub_2B26DC();
  v4 = (*&stru_108.sectname[swift_isaMask & *v2])();
  v6 = v5;
  v7 = &v3[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v4;
  v7[1] = v6;
  sub_2B4200(v8, v9);

  v11 = (*(&stru_B8.reloff + (swift_isaMask & *v2)))(v10);
  if (!v11 || (v12 = v11, v13 = JSArtwork.artworkCatalog(defaultCropStyle:)(ICStoreArtworkInfoCropStyleBoundedBox), v12, !v13))
  {
    v14 = (*&stru_108.segname[(swift_isaMask & *v2) + 8])();
    v16 = v15;
    v17 = [v1 view];
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = v17;
    sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
    v19 = [v18 effectiveUserInterfaceLayoutDirection];

    v13 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v16, v19, 0);
  }

  v20 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v21 = *&v3[v20];
  *&v3[v20] = v13;
  if (v21)
  {
    if (v13)
    {
      sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
      v22 = v13;
      v23 = v21;
      v24 = sub_ABA790();

      if (v24)
      {

        v21 = v23;
LABEL_14:

        goto LABEL_15;
      }

      v13 = *&v3[v20];
    }

    else
    {
      v22 = 0;
    }

LABEL_13:
    v25 = v13;
    sub_74EA4(v13);
    [v3 setNeedsLayout];

    goto LABEL_14;
  }

  if (v13)
  {
    v22 = v13;
    goto LABEL_13;
  }

LABEL_15:
  v26 = [v1 view];
  if (v26)
  {
    v27 = v26;
    [v26 addSubview:v3];

    sub_2B28DC(0, 0, 1);
    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_2B26DC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSCircleImageViewController____lazy_storage___circleImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CircleImageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double CircleImageView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_2B4200(v6, v7);

  return result;
}

void CircleImageView.ownerArtworkCatalog.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_9;
  }

  if (!a1)
  {
    v6 = 0;
LABEL_9:
    v9 = a1;
    sub_74EA4(a1);
    [v2 setNeedsLayout];

    goto LABEL_10;
  }

  sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
  v6 = a1;
  v7 = v5;
  v8 = sub_ABA790();

  if ((v8 & 1) == 0)
  {
    a1 = *&v2[v4];
    goto LABEL_9;
  }

  v5 = v7;
LABEL_10:
}

void sub_2B28DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2B3150();
  v8 = sub_2B26DC();
  if (a3)
  {
    v9 = [v4 view];
    if (!v9)
    {
      __break(1u);
      goto LABEL_15;
    }

    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    Width = CGRectGetWidth(v31);
    v20 = 1.79769313e308;
  }

  else
  {
    Width = *&a1;
    v20 = *&a2;
  }

  v21 = fmin(Width, 290.0);
  if (v8[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind])
  {
    v22 = 160.0;
  }

  else
  {
    v22 = 116.0;
  }

  [*&v8[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView] sizeThatFits:{v21, v20}];
  v24 = v23;

  if (v20 >= v22 + v24)
  {
    v20 = v22 + v24;
  }

  type metadata accessor for CGSize(0);
  [v4 preferredContentSize];
  v29 = v25;
  v30 = v26;
  if (sub_AB38D0())
  {
    [v4 setPreferredContentSize:{Width, v20, *&Width, *&v20, v29, v30}];
    v27 = [v4 view];
    if (v27)
    {
      v28 = v27;
      [v27 setNeedsLayout];

      return;
    }

LABEL_15:
    __break(1u);
  }
}

Swift::Void __swiftcall JSCircleImageViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = sub_2B26DC();
    [v11 setFrame:{v4, v6, v8, v10}];

    sub_2B28DC(0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

void JSCircleImageViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v10[4] = sub_2B4354;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_99;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_2B2DB0(double a1, double a2, uint64_t a3, void *a4)
{
  sub_2B28DC(*&a1, *&a2, 0);
  v5 = [a4 view];
  if (v5)
  {
    v6 = v5;
    [v5 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSCircleImageViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_2B28DC(0, 0, 1);
  }
}

void sub_2B3150()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 window];

  if (v4)
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    if (CGRectGetWidth(v27) < 1024.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v28.origin.x = v17;
  v28.origin.y = v19;
  v28.size.width = v21;
  v28.size.height = v23;
  CGRectGetWidth(v28);
  sub_471A4();
  v24 = sub_AB3900();
  v25 = sub_2B26DC();
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  sub_2B3368(v26);
}

id sub_2B3368(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind];
  v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind] = result;
  if (v3 != result)
  {
    v4 = v1;
    v5 = sub_2B3CE0();
    sub_2B3D94(v4[v2], v17);
    swift_beginAccess();
    v7 = v5[3];
    v6 = v5[4];
    v8 = v5[6];
    v16[3] = v5[5];
    v16[4] = v8;
    v16[2] = v6;
    v16[0] = v5[2];
    v16[1] = v7;
    v9 = v17[4];
    v5[5] = v17[3];
    v5[6] = v9;
    v10 = v17[1];
    v5[2] = v17[0];
    v5[3] = v10;
    v5[4] = v17[2];
    sub_2F118(v17, v15);
    sub_2F174(v16);
    sub_2EB2A8();
    sub_2F174(v17);

    v11 = *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent];
    if (v4[v2])
    {
      v12 = 160.0;
    }

    else
    {
      v12 = 116.0;
    }

    v13 = *(v11 + 80);
    v14 = *(v11 + 88);
    *(v11 + 80) = v12;
    *(v11 + 88) = v12;
    sub_75614(v13, v14);
    return [v4 setNeedsLayout];
  }

  return result;
}

char *CircleImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v89 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v88 - v12;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind] = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v18 = sub_80104(v17);

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  type metadata accessor for TextStackView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v20[v21] = 0;
  *&v5[v19] = v20;
  *&v5[OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel] = 0;
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  v24 = *&v22[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent];
  v25 = v22;

  v26 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  v31 = *(v26 + 2);
  v32 = *(v24 + 184);
  v33 = *(v24 + 152);
  v95[1] = *(v24 + 168);
  v95[2] = v32;
  v95[0] = v33;
  *(v24 + 152) = v27;
  *(v24 + 160) = v28;
  *(v24 + 168) = v29;
  *(v24 + 176) = v30;
  *(v24 + 184) = v31;
  v34 = v29;
  v35 = v30;
  v36 = v27;
  v37 = v28;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_75948(v95);
  sub_12E1C(v95, &unk_DF8690, &unk_AF9900);

  v42 = UIView.Border.artwork.unsafeMutableAddressor();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = v42[2];
  v46 = v45;
  sub_75E64(v43, v44, v45);

  v47 = *&v22[v23];
  *(v47 + 24) = 0x6D69656C63726963;
  *(v47 + 32) = 0xEB00000000656761;

  v48 = *&v22[v23];

  sub_ABA670();
  v49 = sub_ABA680();
  (*(*(v49 - 8) + 56))(v13, 0, 1, v49);
  v50 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v51 = v89;
  sub_89FAC(v48 + v50, v89);
  swift_beginAccess();
  sub_8A01C(v13, v48 + v50);
  swift_endAccess();
  sub_75AE8(v51);
  sub_12E1C(v51, &unk_DFFBC0, &unk_AF85C0);
  sub_12E1C(v13, &unk_DFFBC0, &unk_AF85C0);

  v52 = *&v22[v23];
  v53 = *(v52 + 144);
  *(v52 + 144) = 2;
  if (v53 != 2)
  {
    v54 = *(v52 + 112);

    v55 = [v54 image];
    sub_788B8(v55);
  }

  v56 = qword_DE6C90;

  if (v56 != -1)
  {
    swift_once();
  }

  sub_74DD4(qword_E718D0);

  v57 = *&v22[v23];
  v58 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind;
  v59 = 160.0;
  if (!v25[OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind])
  {
    v59 = 116.0;
  }

  v60 = *(v57 + 80);
  v61 = *(v57 + 88);
  *(v57 + 80) = v59;
  *(v57 + 88) = v59;

  sub_75614(v60, v61);

  v62 = *&v22[v23];
  v63 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v62 + 16) = *&v25[v63];

  v64 = *&v22[v23];
  v65 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v66 = (v64 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v67 = *(v64 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v68 = *(v64 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v66 = sub_8A12C;
  v66[1] = v65;

  sub_17654(v67, v68);

  v69 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  v70 = *&v25[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView];
  v71 = objc_opt_self();
  v72 = v70;
  UIView.Shadow.init(color:opacity:radius:offset:)([v71 blackColor], v93, 0.2, 10.0, 0.0, 3.0);
  UIView.shadow.setter(v93);

  v73 = sub_2B3CE0();
  sub_2B3D94(v25[v58], v94);
  swift_beginAccess();
  v75 = v73[3];
  v74 = v73[4];
  v76 = v73[6];
  v91[3] = v73[5];
  v91[4] = v76;
  v91[1] = v75;
  v91[2] = v74;
  v91[0] = v73[2];
  v77 = v94[4];
  v73[5] = v94[3];
  v73[6] = v77;
  v78 = v94[1];
  v73[2] = v94[0];
  v73[3] = v78;
  v73[4] = v94[2];
  sub_2F118(v94, &v90);
  sub_2F174(v91);
  sub_2EB2A8();
  sub_2F174(v94);

  v79 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  v80 = *&v25[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView];

  TextStackView.add(_:)(v81);

  v82 = *&v25[v79];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v83 = v82;
  v84 = TextDrawing.Cache.init()();
  v85 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v86 = *&v83[v85];
  *&v83[v85] = v84;

  sub_2E6210(v86);

  [v25 addSubview:*&v25[v69]];
  [v25 addSubview:*&v25[v79]];
  [*&v25[v69] addSubview:*(*&v22[v23] + 112)];

  return v25;
}

uint64_t sub_2B3CE0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel);
  }

  else
  {
    sub_2B3D94(*(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind), v4);
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v2 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_2B3D94@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  if (a1)
  {
    v4 = sub_ABA550();
    v5 = qword_DE6C98;
    if (a1 == 1)
    {
      v6 = 0x4050000000000000;
      v7 = 0x4048000000000000;
    }

    else
    {
      v6 = 0x4048000000000000;
      v7 = 0x4040000000000000;
    }

    v8 = v7;
  }

  else
  {
    v4 = sub_ABA550();
    v5 = qword_DE6C98;
    v8 = 0x4040000000000000;
    v6 = 0x4040000000000000;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v9 = qword_E718D8;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  *a2 = v11;
  *(a2 + 8) = v12;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = v6;
  return result;
}

void *CircleImageView.ownerArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*CircleImageView.ownerArtworkCatalog.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_2B4038;
}

void sub_2B4038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *v3;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v3;
  if (a2)
  {
    if (v7)
    {
      if (v4)
      {
        sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
        v8 = v4;
        v9 = v7;
        v10 = sub_ABA790();

        if (v10)
        {

LABEL_18:
          goto LABEL_19;
        }

        v4 = *(v2[4] + v2[5]);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (!v4)
      {
LABEL_19:
        v11 = *v3;
        goto LABEL_22;
      }

      v8 = v4;
    }

    v14 = v2[4];
    v15 = v4;
    sub_74EA4(v4);
    [v14 setNeedsLayout];

    v8 = v7;
    goto LABEL_18;
  }

  if (!v7)
  {
    if (!v4)
    {
      goto LABEL_23;
    }

    v11 = v4;
    goto LABEL_21;
  }

  if (!v4)
  {
    v11 = 0;
LABEL_21:
    v16 = v2[4];
    v17 = v4;
    sub_74EA4(v4);
    [v16 setNeedsLayout];

    v11 = v7;
    goto LABEL_22;
  }

  sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
  v11 = v4;
  v12 = v7;
  v13 = sub_ABA790();

  if ((v13 & 1) == 0)
  {
    v4 = *(v2[4] + v2[5]);
    goto LABEL_21;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

void sub_2B4200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v3[OBJC_IVAR____TtC16MusicApplication15CircleImageView_title];
  swift_beginAccess();
  v7 = *(v6 + 1);
  if (!a2)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v7 || (*v6 == a1 ? (v8 = v7 == a2) : (v8 = 0), !v8 && (sub_ABB3C0() & 1) == 0))
  {
LABEL_10:
    v9 = sub_2B3CE0();
    if (*(v6 + 1))
    {

      v10 = String.trim()();
      countAndFlagsBits = v10._countAndFlagsBits;
      object = v10._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    swift_beginAccess();
    *(v9 + 112) = countAndFlagsBits;
    *(v9 + 120) = object;

    sub_2EB704();

    [v3 setNeedsLayout];
  }
}

uint64_t sub_2B431C()
{

  return swift_deallocObject();
}

double block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t CircleImageView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void (*CircleImageView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_2B4470;
}

void sub_2B4470(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_2B4200(v9, v8);
  }

  else
  {
    sub_2B4200(v9, v8);
  }

  free(v2);
}

double CircleImageView.textDrawingCache.setter(uint64_t a1)
{
  sub_2B4E18(a1);

  return result;
}

uint64_t (*CircleImageView.textDrawingCache.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2B45D0;
}

void sub_2B45D0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

double CircleImageView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = a1;

  return result;
}

uint64_t (*CircleImageView.artworkCachingReference.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2B4798;
}

void sub_2B4798(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

Swift::Void __swiftcall CircleImageView.layoutSubviews()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v2 = [v0 traitCollection];
  [v2 displayScale];

  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 music_inheritedLayoutInsets];
  UIEdgeInsetsInsetRect(v4, v6, v8, v10, v11, v12);
  v14 = v13;
  v42 = v15 + -17.0;
  sub_ABA490();
  sub_76368(0, 0, 1);
  v38 = v16;
  sub_ABA470();
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView];
  [v19 setFrame:v38];
  [v19 bounds];
  sub_76B28(v20, v21, v22, v23);
  v24 = [v19 layer];
  [v19 bounds];
  v26 = v25;
  v28 = v27;
  v40 = v30;
  v41 = v29;
  [v19 bounds];
  CGRectGetWidth(v44);
  sub_AB3A00();
  v32 = v31;
  [v19 bounds];
  CGRectGetHeight(v45);
  sub_AB3A00();
  v34 = v33;
  v46.origin.x = v26;
  v46.origin.y = v28;
  v46.size.height = v40;
  v46.size.width = v41;
  v35 = CGPathCreateWithRoundedRect(v46, v32, v34, 0);
  [v24 setShadowPath:v35];

  v36 = *&v1[OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView];
  [v36 sizeThatFits:{fmin(v14, 290.0), v42 - v18}];
  v39 = v37;
  sub_ABA470();
  sub_ABA490();
  [v36 setFrame:v39];
}

double sub_2B4CAC()
{
  swift_beginAccess();

  return result;
}

void (*sub_2B4CF4(uint64_t **a1))(void *a1)
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
  v2[4] = CircleImageView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

double sub_2B4D64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent) + 16) = a1;

  return result;
}

uint64_t sub_2B4DE0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

double sub_2B4E18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);

  return result;
}

void _s16MusicApplication15CircleImageViewC5coderACSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_ownerArtworkCatalog) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_title);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15CircleImageView_layoutKind) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkContainerView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v6 = sub_80104(v5);

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication15CircleImageView_textStackView;
  type metadata accessor for TextStackView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v8[v9] = 0;
  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC16MusicApplication15CircleImageView____lazy_storage___titleLabel) = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_2B5050()
{
  result = qword_DFCE00;
  if (!qword_DFCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFCE00);
  }

  return result;
}

id sub_2B510C()
{
  result = [v0 isMovingFromParentViewController];
  if (result)
  {
    result = [v0 navigationController];
    if (result)
    {
      v2 = result;
      v3 = [result disappearingViewController];

      if (v3 && (v3, v3 == v0))
      {
        v4 = [v0 navigationController];
        v5 = [v4 topViewController];

        return (v5 != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2B51D8(uint64_t a1)
{
  v1 = UITraitCollection.mediaLibrary.getter();
  v2 = [objc_opt_self() deviceMediaLibrary];
  if (v2)
  {
    v3 = v2;
    sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
    v4 = sub_ABA790();

    result = 0;
    if (v4)
    {
      return result;
    }
  }

  else
  {
  }

  v6 = UITraitCollection.mediaLibrary.getter();
  v7 = [v6 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();

    return v9;
  }

  else
  {

    return 0;
  }
}

UITraitCollection __swiftcall UITraitCollection.combining(with:)(UITraitCollection_optional with)
{
  *&with.is_nil = v1;
  if (with.value.super.isa)
  {
    isa = with.value.super.isa;
    v10 = *&with.is_nil;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF7C50;
    *(v4 + 32) = v10;
    *(v4 + 40) = isa;
    sub_13C80(0, &qword_E00AB0, UITraitCollection_ptr);
    v5 = isa;
    v6 = v10;
    v7 = sub_AB9740().super.isa;
    v8 = [objc_opt_self() traitCollectionWithTraitsFromCollections:v7];

    return v8;
  }

  else
  {

    return v1;
  }
}

void sub_2B53E0()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_E71438 = v1;
}

void sub_2B5550()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 96.0}];
  v2 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController_image]];
  [v2 setContentMode:1];
  [v2 setFrame:{0.0, 0.0, 0.0, 60.0}];
  [v2 setAutoresizingMask:2];
  v3 = [objc_opt_self() effectWithStyle:8];
  v4 = [objc_opt_self() effectForBlurEffect:v3 style:4];

  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];
  v6 = [v5 contentView];
  [v6 addSubview:v2];

  v17 = v5;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  [v17 setFrame:{0.0, 33.0, 0.0, CGRectGetHeight(v19)}];
  [v17 setAutoresizingMask:2];

  [v1 addSubview:v17];
  [v1 bounds];
  [v0 setPreferredContentSize:{v15, v16}];
  [v0 setView:v1];
}

id sub_2B594C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2B5A20(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  *v12 = sub_2B7184();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v78.receiver = v4;
  v78.super_class = type metadata accessor for MusicVideoVerticalCell(0);
  v16 = objc_msgSendSuper2(&v78, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupOpacity:0];

  v18 = v16;
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending:0];

  v20 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v26 = v20[5];
  v74 = v26;
  v75 = v25;
  v27 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v76 = *v27;
  v72 = *(v27 + 2);
  v73 = *(v27 + 1);
  v71 = *(v27 + 3);
  *v27 = v21;
  *(v27 + 1) = v22;
  *(v27 + 2) = v23;
  *(v27 + 3) = v24;
  *(v27 + 4) = v25;
  *(v27 + 5) = v26;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  sub_2F1C8(v76, v73, v72, v71);
  v77 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v36 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v37 = *(v36 + 168);
  v79[0] = *(v36 + 152);
  v79[1] = v37;
  v79[2] = *(v36 + 184);
  *(v36 + 152) = v21;
  *(v36 + 160) = v22;
  *(v36 + 168) = v23;
  *(v36 + 176) = v24;
  *(v36 + 184) = v75;
  *(v36 + 192) = v74;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  sub_75948(v79);
  sub_B2A40(v79);

  if (qword_DE6A78 != -1)
  {
    swift_once();
  }

  v46 = xmmword_DFCEB8;
  v47 = qword_DFCEC8;
  v48 = qword_DFCED0;
  v49 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  *v49 = v46;
  *(v49 + 2) = v47;
  *(v49 + 3) = v48;
  type metadata accessor for UIEdgeInsets(0);
  v50 = &v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
  if (sub_AB38D0())
  {
    v51 = *(v49 + 1);
    *v50 = *v49;
    *(v50 + 1) = v51;
    sub_35D498();
    [v18 setNeedsLayout];
  }

  v52 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *&v18[v52] = 0x3FFC71C71C71C71CLL;
  if (sub_AB38D0())
  {
    sub_35D498();
  }

  v53 = *&v18[v77];
  v54 = *(v53 + 144);
  *(v53 + 144) = 2;
  if (v54 != 2)
  {
    v55 = *(v53 + 112);

    v56 = [v55 image];
    sub_788B8(v56);
  }

  v57 = &v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  v58 = *&v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
  v59 = *&v18[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

  v60 = [v18 traitCollection];

  v61 = [v60 preferredContentSizeCategory];
  v62 = sub_ABA320();

  if (v62)
  {
    v63 = 3;
  }

  else
  {
    v63 = 2;
  }

  swift_beginAccess();
  *(v58 + 88) = v63;
  sub_2EB2A8();
  if ([v60 horizontalSizeClass] == &dword_0 + 2)
  {
    v64 = 16.0;
  }

  else
  {
    v64 = 12.0;
  }

  swift_beginAccess();
  *(v59 + 104) = v64;
  sub_2EB2A8();

  v65 = *&v18[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v66 = *(v57 + 3);
  if (!(v66 >> 62))
  {
    v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    if (v67)
    {
      goto LABEL_17;
    }

LABEL_25:

    return;
  }

  v67 = sub_ABB060();
  if (!v67)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v67 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v67; ++i)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v70 = sub_36003C(i, v66, v68);
      }

      else
      {
        v70 = *(v66 + 8 * i + 32);
      }

      TextStackView.add(_:)(v70);
    }
  }
}

double sub_2B60B8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_2B61CC(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_2B62C8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_2B63E0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_2B64E0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_2B6574(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_2B668C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_2B678C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MusicVideoVerticalCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_2B67E4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7, SEL *a8)
{
  v15 = type metadata accessor for MusicVideoVerticalCell(0);
  v27.receiver = a1;
  v27.super_class = v15;
  v16 = *a7;
  v17 = a1;
  objc_msgSendSuper2(&v27, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26.receiver = v17;
  v26.super_class = v15;
  objc_msgSendSuper2(&v26, *a8, a2, a3, a4, a5);
  sub_2B68C8(a7, v19, v21, v23, v25);
}

void sub_2B68C8(SEL *a1, double a2, double a3, double a4, double a5)
{
  v7 = v5;
  CGRectGetWidth(*&a2);
  [v5 *a1];
  Width = CGRectGetWidth(v16);
  if (sub_AB38D0())
  {
    v9 = *&v5[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
    v8 = *&v7[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 16];
    v10 = [v7 traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    v12 = sub_ABA320();

    if (v12)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    swift_beginAccess();
    *(v9 + 88) = v13;
    sub_2EB2A8();
    if ([v10 horizontalSizeClass] == &dword_0 + 2)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 12.0;
    }

    swift_beginAccess();
    *(v8 + 104) = v14;
    sub_2EB2A8();
  }
}

void sub_2B6A08()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for MusicVideoVerticalCell(0);
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v0 traitCollection];
  [v11 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  v12 = &v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v37 = v12[2];
  v13 = sub_76368(0, 0, 1);
  v15 = v14;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  CGRectGetMinY(v39);
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = v13;
  v40.size.height = v15;
  CGRectGetHeight(v40);
  v16 = v4;
  v17 = v10;
  v36 = v15;
  sub_ABA470();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_ABA490();
  if (sub_76B28(v26, v27, v28, v29))
  {
    v41.origin.x = v19;
    v41.origin.y = v21;
    v41.size.width = v23;
    v41.size.height = v25;
    MaxY = CGRectGetMaxY(v41);
    v42.origin.x = v16;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v17;
    v31 = v37 + MaxY - CGRectGetMinY(v42);
    v6 = v6 + v31;
    v17 = v17 - v31;
  }

  v32 = *&v1[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView];
  if (v32 && *(*&v32[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v33 = v32;
    [v33 sizeToFit];
    [v33 frame];
    v35 = v34;

    v8 = v8 - v35;
  }

  sub_42AD54(v16, v6, v8, v17);
}

void sub_2B6CF8(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MusicVideoVerticalCell(0);
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents];
  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents + 8];
  v5 = *(v4 + 2);
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_ABA320();

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  swift_beginAccess();
  *(v6 + 88) = v10;
  sub_2EB2A8();
  if ([v7 horizontalSizeClass] == &dword_0 + 2)
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 12.0;
  }

  swift_beginAccess();
  *(v5 + 104) = v11;
  sub_2EB2A8();
}

__n128 sub_2B6E88()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_DFCEB8 = *&UIEdgeInsetsZero.top;
  *&qword_DFCEC8 = v1;
  return result;
}

double sub_2B6EEC()
{

  return result;
}

id sub_2B6F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicVideoVerticalCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicVideoVerticalCell(uint64_t a1)
{
  result = qword_DFCF08;
  if (!qword_DFCF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2B7154()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_2B7184()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v26 = v1;
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v39[2] = xmmword_AF82C0;
  v40 = v0;
  v41 = 1;
  v42 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v39);
  v6 = objc_opt_self();
  v23 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v57);
  v24 = v5;

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v33[0] = v8;
  *(&v33[0] + 1) = v10;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v7;
  v37 = 2;
  v38 = xmmword_B03470;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v33, v57);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v13 = [v2 clearColor];
  *&v27[0] = v1;
  *(&v27[0] + 1) = v13;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_B08600;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v27, v57);

  v43[0] = v26;
  v43[1] = v13;
  v44 = xmmword_AF7C20;
  v45 = 0;
  v46 = 0;
  v47 = v12;
  v48 = 1;
  v49 = xmmword_B08600;
  sub_2F174(v43);
  v50[0] = v8;
  v50[1] = v10;
  v51 = xmmword_AF7C20;
  v52 = 0;
  v53 = 0;
  v54 = v7;
  v55 = 2;
  v56 = xmmword_B03470;
  sub_2F174(v50);
  v57[0] = v26;
  v57[1] = v25;
  v58 = xmmword_AF7C20;
  v59 = xmmword_AF82C0;
  v60 = v20;
  v61 = 1;
  v62 = xmmword_AF7C30;
  sub_2F174(v57);

  return v24;
}

double sub_2B75F8(void *a1, char a2, char a3, double a4)
{
  sub_2B7184();
  v9 = v8;
  v11 = v10;
  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_ABA320();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  swift_beginAccess();
  *(v9 + 88) = v14;
  sub_2EB2A8();
  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 12.0;
  }

  swift_beginAccess();
  *(v11 + 104) = v15;
  sub_2EB2A8();
  if (a2)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  sub_AB9730();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  if (a3)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
  }

  sub_2F48A4(_swiftEmptyArrayStorage, a1, 0, 0);

  if (qword_DE6A78 != -1)
  {
    swift_once();
  }

  [a1 displayScale];
  sub_AB3A00();
  [a1 displayScale];
  sub_AB3A00();

  return a4;
}

void sub_2B78F0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication22MusicVideoVerticalCell_textComponents);
  *v4 = sub_2B7184();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  sub_ABAFD0();
  __break(1u);
}

id sub_2B7B54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LibraryAddKeepLocalHandlingController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2B7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_2B7CB0;

  return sub_2B7DD0(a5, v12, a7, a8, v16);
}

uint64_t sub_2B7CB0(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_2B7DB0, 0, 0);
}

uint64_t sub_2B7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[75] = v5;
  v6[74] = a5;
  v6[73] = a4;
  v6[72] = a3;
  v6[71] = a2;
  v6[70] = a1;
  sub_AB9940();
  v6[76] = sub_AB9930();
  v8 = sub_AB98B0();
  v6[77] = v8;
  v6[78] = v7;

  return _swift_task_switch(sub_2B7E80, v8, v7);
}

uint64_t sub_2B7E80()
{
  v28 = v0;
  static ApplicationCapabilities.shared.getter(v0 + 80);
  sub_70C54(v0 + 80);
  if ((*(v0 + 89) & 2) == 0)
  {
    sub_15F28(*(v0 + 592), v0 + 208);
    v1 = *JSBridge.shared.unsafeMutableAddressor();
    sub_1116A8(v0 + 208, v0 + 304);
    v2 = swift_allocObject();
    *(v2 + 16) = 1;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = -1;
    sub_111814(v0 + 304, v2 + 64);
    *(v2 + 160) = 0;
    *(v2 + 168) = 0;
    v3 = *&stru_B8.segname[(swift_isaMask & *v1) + 16];
    v4 = v1;
    v3(sub_111884, v2);
    sub_12E1C(v0 + 208, &unk_DEA520, &unk_AFDBF0);

LABEL_20:

    v26 = *(v0 + 8);

    return v26(0);
  }

  v5 = *(v0 + 560);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v0 + 568);
  if ((v6 - 2) < 2)
  {
    v11 = v5;

    return _swift_task_switch(sub_2B8294, 0, 0);
  }

  else
  {
    if (v6 == 4)
    {
      v12 = v5;
      v13 = static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 400);
      v14 = Alert.uiAlertController.getter(v13);
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v14, 1, 1, 0, 0);

      sub_111904(v0 + 400);
      goto LABEL_20;
    }

    if (v6 != 5)
    {
      v15 = qword_DE6A80;
      v16 = v5;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_AB4BC0();
      __swift_project_value_buffer(v17, qword_DFCF18);
      v18 = sub_AB4BA0();
      v19 = sub_AB9F50();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 568);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136446210;
        *(v0 + 536) = v20;
        type metadata accessor for MPLibraryAddStatus(0);
        v23 = sub_AB9350();
        v25 = sub_425E68(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_0, v18, v19, "Cannot perform add to library for libraryAddStatus=%{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      goto LABEL_20;
    }

    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 672) = v8;
    *v8 = v0;
    v8[1] = sub_2B8898;
    v9 = *(v0 + 592);

    return static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(2, v9, 0);
  }
}

uint64_t sub_2B8294()
{
  v1 = swift_task_alloc();
  v0[39].i64[1] = v1;
  v1[1] = vextq_s8(v0[37], v0[37], 8uLL);
  v2 = swift_task_alloc();
  v0[40].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_2B8388;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[44], 0, 0, 0xD000000000000015, 0x8000000000B5CB60, sub_2BB804, v1, &type metadata for Bool);
}

uint64_t sub_2B8388()
{

  return _swift_task_switch(sub_2B84A0, 0, 0);
}

uint64_t sub_2B84C4()
{
  if (*(v0 + 705) == 1)
  {
    v1 = *(v0 + 584);
    v2 = *(v0 + 576);
    v3 = *(v0 + 560);
    v4 = [objc_allocWithZone(MPModelLibraryImportChangeRequest) init];
    *(v0 + 648) = v4;
    [v4 setShouldLibraryAdd:1];
    [v4 setReferralObject:v2];
    [v4 setModelObjects:v3];
    v5 = [objc_opt_self() sharedDeviceLibraryController];
    *(v0 + 656) = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 544;
    *(v0 + 24) = sub_2B86D8;
    v6 = swift_continuation_init();
    *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF58, &unk_B08760);
    *(v0 + 472) = _NSConcreteStackBlock;
    *(v0 + 480) = 1107296256;
    *(v0 + 488) = sub_2B8FE0;
    *(v0 + 496) = &block_descriptor_100;
    *(v0 + 504) = v6;
    [v5 performLibraryImportChangeRequest:v4 withRelatedModelObjects:v1 completion:v0 + 472];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v7 = *(v0 + 560);

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_2B86D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 664) = v2;
  v3 = *(v1 + 624);
  v4 = *(v1 + 616);
  if (v2)
  {
    v5 = sub_2B8D94;
  }

  else
  {
    v5 = sub_2B8808;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2B8808()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_2B8898(char a1)
{
  v2 = *v1;
  *(*v1 + 706) = a1;

  v3 = *(v2 + 624);
  v4 = *(v2 + 616);

  return _swift_task_switch(sub_2B89C0, v4, v3);
}

uint64_t sub_2B89C0()
{
  if (*(v0 + 706) != 1 || (v1 = [*(v0 + 560) firstItem], (*(v0 + 680) = v1) == 0))
  {
    v6 = *(v0 + 560);
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v6 = *(v0 + 560);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = v2;
  type metadata accessor for LibraryAddKeepLocalStatusObserver();
  swift_allocObject();
  swift_unknownObjectRetain();
  v4 = sub_259C34();
  *(v0 + 688) = v4;
  v5 = v4[9];
  v4[9] = v3;
  swift_unknownObjectRetain();

  sub_25A2AC(0);
  swift_unknownObjectRelease();

  if ((v4[15] & 0xFELL) == 0xF8)
  {
    v6 = *(v0 + 560);

    swift_unknownObjectRelease();
LABEL_7:

    v7 = *(v0 + 8);

    return v7(0);
  }

  v9 = v4[11];
  v10 = *(v0 + 560);
  v11 = swift_task_alloc();
  *(v0 + 696) = v11;
  *v11 = v0;
  v11[1] = sub_2B8BC0;
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);
  v14 = *(v0 + 576);
  v15 = *(v0 + 560);

  return sub_2B7DD0(v15, v9, v14, v13, v12);
}

uint64_t sub_2B8BC0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  *(*v1 + 707) = a1;

  v4 = *(v2 + 624);
  v5 = *(v2 + 616);

  return _swift_task_switch(sub_2B8D08, v5, v4);
}

uint64_t sub_2B8D08()
{
  v1 = *(v0 + 560);

  swift_unknownObjectRelease();

  v2 = *(v0 + 707);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2B8D94(__n128 a1)
{
  v19 = v1;
  v2 = v1[82];
  swift_willThrow();

  v3 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v3 notificationOccurred:2];

  if (qword_DE6A80 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_DFCF18);
  swift_errorRetain();
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[83];
  v9 = v1[81];
  v10 = v1[70];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v1[69] = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    v13 = sub_AB9350();
    v15 = sub_425E68(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "Add to Library failed with error=%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  v16 = v1[1];

  return v16(0);
}

uint64_t sub_2B8FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    **(*(v4 + 64) + 40) = sub_AB9760();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2B90D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  sub_AB9940();
  *(v4 + 96) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_2B9168, v6, v5);
}

uint64_t sub_2B9168()
{
  v1.n128_f64[0] = static Alert.userUploadRequiredAlert()(v0 + 16);
  v2 = Alert.uiAlertController.getter(v1);
  sub_111904(v0 + 16);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, 1, 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_2B9210(void *a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v36 = a1;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF68, &qword_B08778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    aBlock = 0u;
    v33 = 0u;
    sub_12E1C(&aBlock, &qword_DFCF70, &qword_B08780);
    goto LABEL_7;
  }

  sub_70DF8(&aBlock, v37);
  v5 = v38;
  v6 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (!sub_161E74(v5, v6) || (v7 = [objc_opt_self() standardUserDefaults], v8 = objc_msgSend(v7, "prefersSpatialDownloads"), v7, (v8 & 1) != 0) || (v9 = objc_opt_self(), v10 = objc_msgSend(v9, "standardUserDefaults"), Time = NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter(), v10, (Time & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0(v37);
LABEL_7:
    v12 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
    [v12 setModelObject:v4];
    [v12 setEnableState:1];
    v13 = [objc_opt_self() sharedDeviceLibraryController];
    [v13 performKeepLocalChangeRequest:v12 withRelatedModelObjects:a2];

    return;
  }

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v31 = v9;
  v14 = sub_AB9260();

  v15 = sub_AB9260();

  v30 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a2;
  v29 = a2;
  v17 = v4;
  v18 = sub_AB9260();

  v34 = sub_2BBB84;
  v35 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_1546C;
  *(&v33 + 1) = &block_descriptor_41_0;
  v19 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  [v30 addAction:v21];
  [v30 setPreferredAction:v21];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  *(v22 + 24) = a2;
  v23 = v17;
  v24 = v29;
  v25 = sub_AB9260();

  v34 = sub_2BBB8C;
  v35 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_1546C;
  *(&v33 + 1) = &block_descriptor_47;
  v26 = _Block_copy(&aBlock);

  v27 = [v20 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v30 addAction:v27];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v30, 1, 1, 0, 0);
  v28 = [v31 standardUserDefaults];
  NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter(1);

  __swift_destroy_boxed_opaque_existential_0(v37);
}

void sub_2B98B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  [v5 setPrefersSpatialDownloads:1];

  v6 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
  [v6 setModelObject:a2];
  [v6 setEnableState:1];
  v7 = [objc_opt_self() sharedDeviceLibraryController];
  [v7 performKeepLocalChangeRequest:v6 withRelatedModelObjects:a3];
}

void sub_2B99B4(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_opt_self() sharedNetworkObserver];
  if (v5)
  {
    v6 = v5;
    [v5 setMusicCellularDownloadingAllowed:1];

    sub_2B9210(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_2B9A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MPModelLibraryKeepLocalChangeRequest) init];
  [v7 setModelObject:a2];
  [v7 setEnableState:a4];
  v8 = [objc_opt_self() sharedDeviceLibraryController];
  [v8 performKeepLocalChangeRequest:v7 withRelatedModelObjects:a3];
}

void sub_2B9B08(uint64_t a1, void (*a2)(BOOL))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong error];

    a2(v5 == 0);
  }
}

void sub_2B9B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60, &qword_B08770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = &aBlock[-1] - v10;
  v12 = *(v6 + 16);
  v12(&aBlock[-1] - v10, a1, v5, v9);
  (v12)(v8, v11, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v11, v5);
  if ([objc_opt_self() requiresTermsVerification])
  {
    sub_15F28(a3, v25);
    v15 = swift_allocObject();
    sub_17704(v25, v15 + 16);
    v16 = objc_allocWithZone(MusicTermsVerificationOperation);
    aBlock[4] = sub_2BB9E4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1546C;
    aBlock[3] = &block_descriptor_17_0;
    v17 = _Block_copy(aBlock);
    v18 = [v16 initWithAdditionalPresentationHandler:v17];
    _Block_release(v17);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_2BB8CC;
    v20[4] = v14;
    v25[4] = sub_2BBAA8;
    v25[5] = v20;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_1B5EB4;
    v25[3] = &block_descriptor_26_3;
    v21 = _Block_copy(v25);
    v22 = v18;

    sub_307CC(sub_2BBAA8, v20);

    [v22 setCompletionBlock:v21];
    _Block_release(v21);

    [v22 start];
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    LOBYTE(v25[0]) = 1;
    sub_AB98D0();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2B9F6C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DFCF18);
  __swift_project_value_buffer(v0, qword_DFCF18);
  return static Logger.music(_:)(0xD000000000000025, 0x8000000000B086F0);
}

void sub_2B9FD0(void *a1, void *a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v6 = [objc_opt_self() sharedMonitor];
  [v6 networkType];

  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v7 = [objc_opt_self() sharedNetworkObserver];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 isMusicCellularDownloadingAllowed];

    if ((v9 & 1) == 0)
    {
      static DeviceCapabilities.hasWAPICapability.getter();
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v10 = sub_AB9260();

      v11 = sub_AB9260();

      v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      sub_15F28(a3, v24);
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      sub_17704(v24, v13 + 32);
      v14 = a2;
      v15 = a1;
      v16 = sub_AB9260();

      aBlock[4] = sub_2BBB38;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_32_0;
      v17 = _Block_copy(aBlock);

      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
      _Block_release(v17);

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v20 = sub_AB9260();

      v24[4] = UIScreen.Dimensions.size.getter;
      v24[5] = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 1107296256;
      v24[2] = sub_1546C;
      v24[3] = &block_descriptor_35_0;
      v21 = _Block_copy(v24);

      v22 = [v18 actionWithTitle:v20 style:1 handler:v21];
      _Block_release(v21);

      [v12 addAction:v19];
      [v12 addAction:v22];
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v12, 1, 1, 0, 0);

      return;
    }
  }

  sub_2B9210(a1, a2);
}

void sub_2BA534(void *a1, void *a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    [v21 hasVideo];
    [v22 cloudStatus];
LABEL_4:
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v5 = sub_AB9260();

    v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:0];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = a2;
    v9 = a1;
    v10 = sub_AB9260();

    v28 = sub_2BBBAC;
    v29 = v7;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1546C;
    v27 = &block_descriptor_53_0;
    v11 = _Block_copy(&aBlock);

    v12 = objc_opt_self();
    v23 = [v12 actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = v9;
    v15 = sub_AB9260();

    v28 = sub_2BBC04;
    v29 = v13;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1546C;
    v27 = &block_descriptor_59;
    v16 = _Block_copy(&aBlock);

    v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
    _Block_release(v16);

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v18 = sub_AB9260();

    v28 = UIScreen.Dimensions.size.getter;
    v29 = 0;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1546C;
    v27 = &block_descriptor_62;
    v19 = _Block_copy(&aBlock);

    v20 = [v12 actionWithTitle:v18 style:1 handler:v19];
    _Block_release(v19);

    [v6 addAction:v23];
    [v6 addAction:v17];
    [v6 addAction:v20];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v6, 1, 1, 0, 0);

    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }
}

void sub_2BAC50(void *a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  objc_opt_self();
  swift_dynamicCastObjCClass();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v4 = sub_AB9260();

  v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:0];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a2;
  v8 = a1;
  v9 = sub_AB9260();

  aBlock[4] = sub_2BBE30;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_74;
  v10 = _Block_copy(aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:2 handler:v10];
  _Block_release(v10);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v13 = sub_AB9260();

  v14 = [v11 actionWithTitle:v13 style:1 handler:0];

  [v5 addAction:v12];
  [v5 addAction:v14];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);
}

id sub_2BAFF8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = [v1 emptyPropertySet];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata supportsKeepLocalStatusObservation] & 1) == 0 && !objc_msgSend(ObjCClassFromMetadata, "supportsLibraryAddStatusObservation"))
  {
    return v2;
  }

  sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_AF4EC0;
    *(v4 + 32) = sub_AB92A0();
    *(v4 + 40) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = sub_AB92A0();
    *(inited + 40) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_AF85F0;
    *(v8 + 32) = sub_AB92A0();
    *(v8 + 40) = v9;
    *(v8 + 48) = sub_AB92A0();
    *(v8 + 56) = v10;
    isa = sub_AB9740().super.isa;
    v12 = [v1 propertySetWithProperties:isa];

    *(inited + 48) = v12;
    sub_96EA4(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
    v13 = objc_allocWithZone(MPPropertySet);
    v14 = sub_AB9740().super.isa;

    sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
    v15 = sub_AB8FD0().super.isa;

    v16 = [v13 initWithProperties:v14 relationships:v15];
  }

  else
  {
    sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
    if (swift_dynamicCastMetatype())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_AF8820;
      *(v17 + 32) = sub_AB92A0();
      *(v17 + 40) = v18;
      *(v17 + 48) = sub_AB92A0();
      *(v17 + 56) = v19;
      *(v17 + 64) = sub_AB92A0();
      *(v17 + 72) = v20;
      v21.super.isa = sub_AB9740().super.isa;
      v22 = [v1 propertySetWithProperties:v21.super.isa];
    }

    else
    {
      sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
      if (!swift_dynamicCastMetatype())
      {
        sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
        if (swift_dynamicCastMetatype())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
          v35 = swift_initStackObject();
          *(v35 + 16) = xmmword_AF8820;
          *(v35 + 32) = sub_AB92A0();
          *(v35 + 40) = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_AF8820;
          *(v37 + 32) = sub_AB92A0();
          *(v37 + 40) = v38;
          *(v37 + 48) = sub_AB92A0();
          *(v37 + 56) = v39;
          *(v37 + 64) = sub_AB92A0();
          *(v37 + 72) = v40;
          v41 = sub_AB9740().super.isa;
          v42 = [v1 propertySetWithProperties:v41];

          *(v35 + 48) = v42;
          *(v35 + 56) = sub_AB92A0();
          *(v35 + 64) = v43;
          *(v35 + 72) = [v1 emptyPropertySet];
          *(v35 + 80) = sub_AB92A0();
          *(v35 + 88) = v44;
          *(v35 + 96) = [v1 emptyPropertySet];
          sub_96EA4(v35);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
          swift_arrayDestroy();
          v45 = objc_allocWithZone(MPPropertySet);
          v46 = sub_AB9740().super.isa;
          sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
          v47 = sub_AB8FD0().super.isa;

          v16 = [v45 initWithProperties:v46 relationships:v47];
        }

        else
        {
          v16 = [v1 emptyPropertySet];
        }

        goto LABEL_11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_AF4EC0;
      *(v24 + 32) = sub_AB92A0();
      *(v24 + 40) = v25;
      v21.super.isa = sub_AB9740().super.isa;
      v22 = [v1 propertySetWithProperties:v21.super.isa];
    }

    v16 = v22;
  }

LABEL_11:
  v26 = v16;
  v27 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v28 = [v26 propertySetByCombiningWithPropertySet:v27];

  v29 = v28;
  v30 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
  v31 = [v29 propertySetByCombiningWithPropertySet:v30];

  v32 = v31;
  v33 = [ObjCClassFromMetadata requiredLibraryRemovalProperties];
  v34 = [v32 propertySetByCombiningWithPropertySet:v33];

  return v34;
}

uint64_t sub_2BB758()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BB838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60, &qword_B08770);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2BB8CC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60, &qword_B08770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFCF60, &qword_B08770);
  return sub_AB98D0();
}

uint64_t sub_2BB970()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

double block_copy_helper_15_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2BBA30()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2BBA68()
{

  return swift_deallocObject();
}

uint64_t sub_2BBAB4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BBB44()
{

  return swift_deallocObject();
}

uint64_t sub_2BBBCC()
{

  return swift_deallocObject();
}

void sub_2BBC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MPModelLibraryDeleteEntityChangeRequest) init];
  [v6 setModelObject:a1];
  v7 = [objc_opt_self() sharedDeviceLibraryController];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2BBDA4;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_3A5920;
  v10[3] = &block_descriptor_68;
  v9 = _Block_copy(v10);
  sub_307CC(a2, a3);

  [v7 performDeleteEntityChangeRequest:v6 withRelatedModelObjects:0 completion:v9];
  _Block_release(v9);
}

uint64_t sub_2BBD64()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2BBDA4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2BBE54(uint64_t a1)
{
  result = type metadata accessor for WelcomeViewModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2BBEF8@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD240, &qword_B08898) - 8;
  __chkstk_darwin();
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD248, &qword_B088A0);
  v28 = *(v6 - 8);
  v7 = v28;
  v29 = v6;
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v32 = v1;
  sub_AB6A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD250, &qword_B088A8);
  sub_2BDEB8();
  sub_AB5710();
  *v5 = sub_AB6440();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD280, &qword_B088C0);
  sub_2BCB80(v1, &v5[*(v12 + 44)]);
  sub_AB7A20();
  sub_AB5970();
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD288, &qword_B088C8) + 36)];
  v14 = v35;
  *v13 = v34;
  *(v13 + 1) = v14;
  *(v13 + 2) = v36;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD290, &qword_B088D0) + 36)] = 256;
  v15 = sub_AB6A90();
  type metadata accessor for WelcomeView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v33);

  sub_AB5690();
  v16 = &v5[*(v2 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *(v7 + 16);
  v22 = v29;
  v21(v9, v11, v29);
  v23 = v30;
  sub_15F84(v5, v30, &qword_DFD240, &qword_B08898);
  v24 = v31;
  v21(v31, v9, v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD298, &qword_B08920);
  sub_15F84(v23, &v24[*(v25 + 48)], &qword_DFD240, &qword_B08898);
  sub_12E1C(v5, &qword_DFD240, &qword_B08898);
  v26 = *(v28 + 8);
  v26(v11, v22);
  sub_12E1C(v23, &qword_DFD240, &qword_B08898);
  return (v26)(v9, v22);
}

uint64_t sub_2BC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_AB6440();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD2F0, &qword_B08988);
  sub_2BC474(a1, a2 + *(v4 + 44));
  v5 = sub_AB6A90();
  type metadata accessor for WelcomeView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v26);

  sub_AB5690();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD268, &qword_B088B0) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_AB6AB0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v26);

  sub_AB5690();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFD250, &qword_B088A8);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}