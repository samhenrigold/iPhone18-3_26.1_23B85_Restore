uint64_t sub_579658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5796A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5797F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_579840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_579970()
{
  sub_BEB8((v0 + 64));
  sub_BEB8((v0 + 104));
  sub_BEB8((v0 + 144));
  sub_BEB8((v0 + 184));
  sub_BEB8((v0 + 224));
  sub_BEB8((v0 + 264));
  sub_BEB8((v0 + 304));
  sub_BEB8((v0 + 344));
  sub_BEB8((v0 + 384));
  sub_BEB8((v0 + 424));
  sub_BEB8((v0 + 464));
  sub_BEB8((v0 + 504));
  sub_BEB8((v0 + 544));
  sub_BEB8((v0 + 584));
  sub_BEB8((v0 + 624));
  sub_BEB8((v0 + 664));
  sub_BEB8((v0 + 704));
  sub_BEB8((v0 + 744));
  sub_BEB8((v0 + 784));
  if (*(v0 + 848))
  {
    sub_BEB8((v0 + 824));
  }

  if (*(v0 + 888))
  {
    sub_BEB8((v0 + 864));
  }

  if (*(v0 + 928))
  {
    sub_BEB8((v0 + 904));
  }

  if (*(v0 + 968))
  {
    sub_BEB8((v0 + 944));
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_579B30()
{
  sub_BEB8((v0 + 56));
  sub_BEB8((v0 + 96));
  sub_BEB8((v0 + 136));
  sub_BEB8((v0 + 176));
  sub_BEB8((v0 + 216));
  sub_BEB8((v0 + 256));
  sub_BEB8((v0 + 296));
  sub_BEB8((v0 + 336));
  sub_BEB8((v0 + 376));
  sub_BEB8((v0 + 416));
  sub_BEB8((v0 + 456));
  sub_BEB8((v0 + 496));
  sub_BEB8((v0 + 536));
  sub_BEB8((v0 + 576));
  sub_BEB8((v0 + 616));
  sub_BEB8((v0 + 656));
  sub_BEB8((v0 + 696));
  sub_BEB8((v0 + 736));
  sub_BEB8((v0 + 776));
  if (*(v0 + 840))
  {
    sub_BEB8((v0 + 816));
  }

  if (*(v0 + 880))
  {
    sub_BEB8((v0 + 856));
  }

  if (*(v0 + 920))
  {
    sub_BEB8((v0 + 896));
  }

  if (*(v0 + 960))
  {
    sub_BEB8((v0 + 936));
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_579C40()
{
  sub_BEB8(v0 + 7);
  sub_BEB8(v0 + 12);
  sub_BEB8(v0 + 17);
  sub_BEB8(v0 + 22);
  sub_BEB8(v0 + 27);
  sub_BEB8(v0 + 32);
  sub_BEB8(v0 + 37);
  sub_BEB8(v0 + 42);
  sub_BEB8(v0 + 47);
  sub_BEB8(v0 + 52);
  sub_BEB8(v0 + 57);
  sub_BEB8(v0 + 62);
  sub_BEB8(v0 + 67);
  sub_BEB8(v0 + 72);
  sub_BEB8(v0 + 77);
  sub_BEB8(v0 + 82);
  sub_BEB8(v0 + 87);
  sub_BEB8(v0 + 92);
  sub_BEB8(v0 + 97);
  if (v0[105])
  {
    sub_BEB8(v0 + 102);
  }

  if (v0[110])
  {
    sub_BEB8(v0 + 107);
  }

  if (v0[115])
  {
    sub_BEB8(v0 + 112);
  }

  if (v0[120])
  {
    sub_BEB8(v0 + 117);
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_579D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_579E1C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_7623A0();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_9457F0, qword_783FD0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_763750();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_759BF0();
  v20 = sub_759C10();
  v21 = sub_759C00();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_57A580(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_760940();
  v22 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_57A580(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  sub_760940();
  sub_1DFEBC(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_35280C(v19);
  sub_759BD0();
  sub_759BE0();
  sub_761230();
  sub_768900();
  sub_768ED0();
  v24 = sub_761190();
  swift_allocObject();
  v25 = sub_761170();
  sub_57A580(&qword_95B368, type metadata accessor for ArcadeLockupView, &unk_7A5948);
  v26 = swift_unknownObjectRetain();
  sub_761180();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_12C2F8(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];

  return result;
}

double sub_57A40C(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_769240();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_76A950();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_769210();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_7692D0() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_57A580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57A640(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_766CA0();
  sub_161DC(v10, a3);
  sub_BE38(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_B1B4(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_766CB0();
  return (*(v7 + 8))(v9, v6);
}

void sub_57A7B0(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v91[-v10];
  v12 = sub_760370();
  __chkstk_darwin(v12 - 8);
  v13 = sub_7603D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_7602F0();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_760360();
  sub_760300();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_769210();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v101.receiver = v4;
    v101.super_class = v33;
    v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v99 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground];
    sub_6EC1FC(26.0);

    v40 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_93DBC0;
    v42 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_7666D0();
    v44 = sub_BE38(v43, qword_99FB38);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v94 = v45;
    v95 = *(v45 + 56);
    v95(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v100 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v98 = v51;
    v53 = [*&v38[v51] layer];
    v97 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_93DBD0;
    v56 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_BE38(v43, qword_99FB68);
    v46(v11, v57, v43);
    v58 = v95;
    v95(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v100 labelColor];
    v96 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v92 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v94[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v94 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_75BA40();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v93 = v62;
    v69 = v68;
    v70 = [v100 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v97;
    [v71 setCompositingFilter:v97];

    v73 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v94;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v92, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_75BA40();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v100;
    v78 = [v100 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v98]];
    [v89 addSubview:*&v38[v96]];
    [v89 addSubview:*&v38[v93]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_57C74C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_57B43C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v30 = sub_767240();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_7603E0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  sub_760310();
  (*(v14 + 8))(v16, v13);
  v18.n128_f64[0] = (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_57DB60(&qword_95B460, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v18);
  sub_769430();
  sub_769430();
  if (*v40 == v37)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_76A950();
  }

  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);

  sub_57B9B0(v40);
  if ((v31 & 1) == 0)
  {
    v24 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView);
    v38 = sub_22AFB8();
    v39 = &protocol witness table for UIImageView;
    *&v37 = v24;
    v25 = v24;
    sub_767280();
    v35 = sub_7672A0();
    v36 = &protocol witness table for Center;
    sub_B1B4(v34);
    sub_7672B0();
    (*(v29 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v30);
    sub_134D8(v40, &v37);
    v33[3] = sub_767340();
    v33[4] = &protocol witness table for Margins;
    sub_B1B4(v33);
    sub_767330();
    v38 = sub_767250();
    v39 = &protocol witness table for Pin;
    sub_B1B4(&v37);
    sub_767260();
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_134D8(v40, v33);
    sub_767270();
    v35 = sub_7672A0();
    v36 = &protocol witness table for Center;
    sub_B1B4(v34);
    sub_7672B0();
    goto LABEL_9;
  }

  v21 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay(0);
  sub_75D650();
  [v21 sizeThatFits:{v22, v23}];
  sub_134D8(v40, v34);
  v38 = sub_767340();
  v39 = &protocol witness table for Margins;
  sub_B1B4(&v37);
  sub_767330();
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_134D8(&v37, v34);
LABEL_9:
  sub_134D8(v34, v33);
  v26 = sub_767340();
  v27 = v32;
  v32[3] = v26;
  v27[4] = &protocol witness table for Margins;
  sub_B1B4(v27);
  sub_767330();
  sub_BEB8(v40);
  sub_BEB8(&v37);
  return sub_BEB8(v34);
}

uint64_t sub_57B9B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  ObjectType = swift_getObjectType();
  v72 = sub_766950();
  v69 = *(v72 - 8);
  __chkstk_darwin(v72);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v61 - v5;
  __chkstk_darwin(v6);
  v67 = &v61 - v7;
  v8 = sub_766CA0();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  __chkstk_darwin(v10);
  v73 = &v61 - v11;
  v12 = sub_7602F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_7603E0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_760310();
  (*(v20 + 8))(v22, v19);
  v24.n128_f64[0] = (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_57DB60(&qword_95B460, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v24);
  sub_769430();
  sub_769430();
  if (v74 == v77)
  {
    v25 = *(v13 + 8);
    v25(v15, v12);
    v25(v18, v12);

LABEL_4:
    v28 = qword_93DCA8;
    v62 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_95B3B8;
    goto LABEL_10;
  }

  v26 = sub_76A950();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v27(v18, v12);

  if (v26)
  {
    goto LABEL_4;
  }

  v30 = qword_93DCA0;
  v62 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v30 != -1)
  {
    swift_once();
  }

  v29 = qword_95B3A0;
LABEL_10:
  v31 = v65;
  v32 = sub_BE38(v8, v29);
  v65 = *(v70 + 16);
  (v65)(v73, v32, v8);
  v33 = v63;
  sub_766930();
  v34 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  v35 = sub_75BB20();
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
  sub_766940();

  v61 = v8;
  v41 = *(v69 + 1);
  v42 = v33;
  v43 = v72;
  v41(v42, v72);
  v69 = v41;
  sub_BEB8(&v74);
  v44 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  v75 = v35;
  v76 = &protocol witness table for UILabel;
  *&v74 = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v40;
  *(v45 + 24) = v38;
  v63 = v40;
  v46 = v44;
  v47 = v67;
  sub_766940();

  v41(v31, v43);
  sub_BEB8(&v74);
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
  sub_B1B4(v57);
  v58 = v48;
  v59 = v55;
  sub_766940();

  v69(v47, v56);
  (*(v51 + 8))(v73, v50);
  return sub_BEB8(&v74);
}

uint64_t sub_57C174(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = sub_7602F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7603E0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  sub_760310();
  (*(v14 + 8))(v16, v13);
  sub_7602D0();
  (*(v10 + 8))(v12, v9);
  sub_7668E0();
  v18 = sub_766900();
  sub_766920();
  sub_766920();
  if (sub_766920() != v18)
  {
    sub_766920();
  }

  sub_7668D0();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = sub_766CA0();
  v20 = sub_BE38(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_B1B4(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return sub_7668B0();
}

uint64_t sub_57C40C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_7602F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7603E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a3 + v14, v10);
  sub_760310();
  (*(v11 + 8))(v13, v10);
  sub_7602D0();
  (*(v7 + 8))(v9, v6);
  sub_7668E0();
  sub_BD88(&unk_95B470, &qword_7A3490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v16 = sub_766900();
  *(inited + 32) = v16;
  v17 = sub_766910();
  *(inited + 40) = v17;
  sub_766920();
  sub_766920();
  if (sub_766920() != v16)
  {
    sub_766920();
  }

  sub_766920();
  if (sub_766920() != v17)
  {
    sub_766920();
  }

  sub_7668D0();
  v18 = sub_766CA0();
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v19 = sub_B1B4(v24);
  v20 = *(*(v18 - 8) + 16);
  v20(v19, a4, v18);
  sub_7668B0();
  if (qword_93DCB0 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v18, qword_95B3D0);
  v25 = v18;
  v26 = &protocol witness table for StaticDimension;
  v22 = sub_B1B4(v24);
  v20(v22, v21, v18);
  return sub_7668C0();
}

id sub_57C74C()
{
  v1 = v0;
  v56 = sub_760370();
  v64 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v4;
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v54 = &v53 - v8;
  v9 = sub_7602F0();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7603E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v53 - v16;
  __chkstk_darwin(v17);
  v55 = &v53 - v18;
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v23, &v0[v24], v12);
  sub_760310();
  v26 = *(v13 + 8);
  (v26)(v23, v12);
  v27 = [v0 traitCollection];
  v28 = sub_7602E0();

  v66[1](v11, v67);
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  v65 = v28;
  [v29 setTextAlignment:v28];
  v59 = v25;
  v60 = v24;
  v30 = v1;
  v31 = v53;
  v25(v53, &v1[v24], v12);
  v32 = v12;
  v33 = v54;
  sub_760380();
  v66 = v26;
  v67 = v13 + 8;
  (v26)(v31, v12);
  v34 = sub_760340();
  v35 = v33;
  v36 = v56;
  v64 = *(v64 + 8);
  (v64)(v35);
  if (!v34)
  {
    v34 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v34];

  v37 = v30;
  v38 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  [v38 setTextAlignment:v65];
  v39 = v59;
  v40 = v60;
  v41 = v55;
  v59(v55, &v30[v60], v32);
  v42 = v57;
  sub_760380();
  (v66)(v41, v32);
  v43 = sub_760350();
  (v64)(v42, v36);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v38 setTextColor:v43];

  v44 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v44 setTextAlignment:v65];
  v45 = v58;
  v39(v58, &v37[v40], v32);
  v46 = v61;
  sub_760380();
  (v66)(v45, v32);
  v47 = sub_760320();
  (v64)(v46, v36);
  if (!v47)
  {
    v47 = [objc_opt_self() secondaryLabelColor];
  }

  [v44 setTextColor:v47];

  v48 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v48 setTextAlignment:v65];
  v49 = v62;
  v39(v62, &v37[v40], v32);
  v50 = v63;
  sub_760380();
  (v66)(v49, v32);
  v51 = sub_760330();
  (v64)(v50, v36);
  if (!v51)
  {
    v51 = [objc_opt_self() labelColor];
  }

  [v48 setTextColor:v51];

  return [v37 setNeedsLayout];
}

id sub_57CEC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay(uint64_t a1)
{
  result = qword_95B450;
  if (!qword_95B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_57D03C(uint64_t a1)
{
  result = sub_7603E0();
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

uint64_t sub_57D0F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_F704(a1, a2);
}

id sub_57D1A4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_769210();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_769210();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_769210();
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

id sub_57D3D4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_7602F0();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v59 - v8;
  __chkstk_darwin(v9);
  v62 = &v59 - v10;
  __chkstk_darwin(v11);
  v73 = &v59 - v12;
  __chkstk_darwin(v13);
  v72 = &v59 - v14;
  __chkstk_darwin(v15);
  v71 = &v59 - v16;
  v17 = sub_7603E0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v61 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  sub_7603F0();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v27 = v18[3];
  v76 = v26;
  v27(&v3[v26], v25, v17);
  swift_endAccess();
  sub_57C74C();
  v28 = v18[1];
  v63 = v25;
  v77 = v17;
  v74 = v28;
  v75 = v18 + 1;
  v28(v25, v17);
  v29 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_760450();
  if (v30)
  {
    v31 = sub_769210();
  }

  else
  {
    v31 = 0;
  }

  [v29 setText:v31];

  v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel];
  sub_760460();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_760410();
  if (v36)
  {
    v37 = sub_769210();
  }

  else
  {
    v37 = 0;
  }

  v60 = v35;
  [v35 setText:v37];

  v38 = v18[2];
  v39 = v77;
  v64 = v18 + 2;
  v70 = v38;
  v38(v22, &v3[v76], v77);
  sub_760310();
  v74(v22, v39);
  v40 = v78;
  v41 = *(v78 + 104);
  v69 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v68 = v41;
  v42.n128_f64[0] = v41(v72);
  sub_57DB60(&qword_95B460, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v42);
  sub_769430();
  sub_769430();
  v65 = a1;
  if (v81 == v79 && v82 == v80)
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_76A950();
  }

  v44 = *(v40 + 8);
  v44(v72, v5);
  v78 = v40 + 8;
  v44(v71, v5);

  [v60 setHidden:v43 & 1];
  v72 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView];
  v45 = v77;
  v46 = v61;
  v70(v61, &v3[v76], v77);
  sub_760310();
  v74(v46, v45);
  v47 = v62;
  v68(v62, v69, v5);
  sub_769430();
  sub_769430();
  if (v81 == v79 && v82 == v80)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_76A950();
  }

  v44(v47, v5);
  v44(v73, v5);

  [v72 setHidden:v48 & 1];
  v49 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel];
  v50 = sub_760420();
  v52 = sub_57D1A4(v50, v51, [v3 effectiveUserInterfaceLayoutDirection]);

  [v49 setAttributedText:v52];

  v53 = v77;
  v54 = v63;
  v70(v63, &v3[v76], v77);
  v55 = v66;
  sub_760310();
  v74(v54, v53);
  v56 = v67;
  v57.n128_f64[0] = v68(v67, v69, v5);
  sub_57DB60(&qword_95B468, &protocol conformance descriptor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment, v57);
  LOBYTE(v54) = sub_7691C0();
  v44(v56, v5);
  v44(v55, v5);
  [v49 setHidden:(v54 & 1) == 0];
  return [v3 setNeedsLayout];
}

uint64_t sub_57DB60(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_7602F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_57DBA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_57DC54()
{
  v1 = sub_766CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_57DD24(uint64_t a1)
{
  v3 = *(sub_766CA0() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_57C40C(v4, a1, v5, v6);
}

void sub_57DDC4()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_titleLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_769210();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31CarouselItemMaterialTextOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_57E180(uint64_t a1, void *a2, char *a3, __n128 a4)
{
  v63 = a3;
  v70 = sub_75F5D0();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v6;
  __chkstk_darwin(v7);
  v68 = v51 - v8;
  v9 = sub_762D10();
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v60 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75EC50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_75F5B0();
  v64 = *(v72 - 8);
  __chkstk_darwin(v72);
  v57 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v51 - v21;
  v71 = a2;
  sub_4DB0F0(a1, a2, v51 - v21);
  v63 = v22;
  sub_75F590();
  v58 = sub_7670D0();
  swift_allocObject();
  v59 = sub_7670B0();
  sub_75B5D0();
  v23 = (*(v12 + 88))(v14, v11);
  v73 = v15;
  v65 = v16;
  v62 = v9;
  if (v23 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_93D898 != -1)
    {
      swift_once();
    }

    v24 = qword_99F1C0;
LABEL_9:
    v25 = sub_BE38(v15, v24);
    (*(v16 + 16))(v18, v25, v15);
    goto LABEL_13;
  }

  if (v23 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_93D8A0 != -1)
    {
      swift_once();
    }

    v24 = qword_99F1D8;
    goto LABEL_9;
  }

  if (qword_93D898 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v15, qword_99F1C0);
  (*(v16 + 16))(v18, v26, v15);
  (*(v12 + 8))(v14, v11);
LABEL_13:
  v27 = v71;
  v51[1] = a1;
  sub_26F08();
  v28 = [v27 traitCollection];
  v29 = sub_769E10();

  sub_75B5E0();
  v30 = sub_7653B0();
  v80[3] = v30;
  v31 = sub_57FAEC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56 = v18;
  v54 = v31;
  v80[4] = v31;
  v32 = sub_B1B4(v80);
  v33 = *(*(v30 - 8) + 104);
  v53 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = v33;
  v33(v32);
  v34 = v29;
  sub_765C30();
  sub_BEB8(v80);
  v35 = v60;
  v55 = v34;
  sub_762D00();
  sub_762CE0();
  v36 = *(v61 + 8);
  v37 = v62;
  v36(v35, v62);
  if (qword_93D8A8 != -1)
  {
    swift_once();
  }

  sub_BE38(v73, qword_99F1F0);
  v38 = [v71 traitCollection];
  v39 = sub_769E10();

  v79[0] = sub_75B600();
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  sub_7691A0();

  v79[3] = v30;
  v79[4] = v54;
  v40 = sub_B1B4(v79);
  v52(v40, v53, v30);
  v71 = v39;
  sub_765C30();
  sub_BEB8(v79);
  sub_762D00();
  sub_762CE0();
  v36(v35, v37);
  v41 = v64;
  v42 = v63;
  (*(v64 + 16))(v57, v63, v72);
  v77 = v58;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  v76 = v59;
  sub_134D8(v80, v75);
  sub_134D8(v79, v74);

  v43 = v68;
  sub_75F5C0();
  v44 = v69;
  v45 = v67;
  v46 = v70;
  (*(v69 + 16))(v67, v43, v70);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  (*(v44 + 32))(v48 + v47, v45, v46);
  swift_allocObject();
  v49 = sub_767090();

  (*(v44 + 8))(v43, v46);
  sub_BEB8(v79);
  sub_BEB8(v80);
  (*(v65 + 8))(v56, v73);
  (*(v41 + 8))(v42, v72);
  return v49;
}

double sub_57EBAC(uint64_t a1, __n128 a2)
{
  v3 = sub_75CBF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v102 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_75DAB0();
  v100 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762D10();
  v114 = *(v7 - 8);
  v115 = v7;
  __chkstk_darwin(v7);
  v113 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_7666D0();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75BE90();
  v103 = *(v10 - 1);
  v104 = v10;
  __chkstk_darwin(v10);
  v116 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v92 - v13;
  v15 = sub_75CBD0();
  v106 = *(v15 - 8);
  v107 = v15;
  __chkstk_darwin(v15);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = (&v92 - v18);
  v19 = sub_7656C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759650();
  sub_57FAEC(&qword_9560F8, &type metadata accessor for PrivacyType, &protocol conformance descriptor for PrivacyType);
  v23 = a1;
  sub_75C750();
  v24 = v133[0];
  if (!v133[0])
  {
    return 0.0;
  }

  v96 = v4;
  v97 = v3;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v25 = *(v20 + 8);
  v118 = v22;
  v119 = v20 + 8;
  v120 = v19;
  v117 = v25;
  v25(v22, v19);
  v26 = sub_759640();
  sub_759610();
  v125 = v23;
  v27 = sub_527DE4();
  sub_827CC(v26, v14, v27, v110);
  swift_unknownObjectRelease();

  v28 = v103;
  v29 = v104;
  v30 = *(v103 + 8);
  v124 = v14;
  v30(v14, v104);
  v31 = sub_7670D0();
  swift_allocObject();
  v32 = sub_7670B0();
  swift_allocObject();
  v94 = sub_7670B0();
  swift_allocObject();
  v93 = sub_7670B0();
  sub_75CBB0();
  v123 = v31;
  swift_allocObject();
  v105 = sub_7670B0();
  v33 = v116;
  v112 = v24;
  sub_759610();
  v34 = (*(v28 + 88))(v33, v29);
  v95 = v32;
  if (v34 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    v39 = v29;
    v40 = v108;
    if (v34 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v34 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      if (qword_93D880 != -1)
      {
        swift_once();
      }

      v44 = v111;
      v45 = sub_BE38(v111, qword_99F178);
      (*(v109 + 16))(v40, v45, v44);
      v43 = &dword_4;
    }

    else
    {
      if (qword_93D878 != -1)
      {
        swift_once();
      }

      v41 = v111;
      v42 = sub_BE38(v111, qword_99F160);
      (*(v109 + 16))(v40, v42, v41);
      v30(v116, v39);
      v43 = (&dword_0 + 1);
    }

    v116 = v43;
    goto LABEL_15;
  }

  v35 = v108;
  if (qword_93D878 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v36 = v111;
    v37 = sub_BE38(v111, qword_99F160);
    (*(v109 + 16))(v35, v37, v36);
    v116 = (&dword_0 + 1);
LABEL_15:
    sub_26F08();
    swift_getKeyPath();
    sub_75C7B0();

    v46 = v133[0];
    v47 = sub_769E10();

    sub_759620();
    v48 = sub_7653B0();
    v133[3] = v48;
    v104 = sub_57FAEC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v133[4] = v104;
    v49 = sub_B1B4(v133);
    v50 = *(v48 - 8);
    v51 = *(v50 + 104);
    LODWORD(v103) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v98 = v50 + 104;
    v99 = v51;
    v51(v49);
    v52 = v47;
    sub_765C30();
    sub_BEB8(v133);
    v53 = v113;
    v92 = v52;
    sub_762D00();
    sub_762CE0();
    v54 = v115;
    v114 = *(v114 + 8);
    (v114)(v53, v115);
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    sub_BE38(v111, qword_99F190);
    swift_getKeyPath();
    sub_75C7B0();

    v55 = v132[0];
    v56 = sub_769E10();

    sub_759630();
    v132[3] = v48;
    v132[4] = v104;
    v57 = sub_B1B4(v132);
    v99(v57, v103, v48);
    v35 = v56;
    sub_765C30();
    sub_BEB8(v132);
    sub_762D00();
    sub_762CE0();
    (v114)(v53, v54);
    v58 = sub_7595F0();
    v59 = v58;
    if (v58 >> 62)
    {
      v90 = v58;
      v91 = sub_76A860();
      v59 = v90;
      v60 = v91;
    }

    else
    {
      v60 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
    }

    v104 = v35;
    if (!v60)
    {
      break;
    }

    v61 = v59;
    v116 = type metadata accessor for PrivacyCategoryView();
    if (v60 >= 1)
    {
      v62 = 0;
      v63 = v61;
      v113 = (v61 & 0xC000000000000001);
      v64 = _swiftEmptyArrayStorage;
      v65 = (v100 + 8);
      v114 = v60;
      v115 = v61;
      v66 = v122;
      do
      {
        if (v113)
        {
          v67 = sub_76A770();
        }

        else
        {
          v67 = *(v63 + 8 * v62 + 32);
        }

        v68 = v118;
        v69 = v121;
        sub_75C720();
        sub_75DA20();
        v70 = v68;
        v71 = *v65;
        (*v65)(v69, v66);
        sub_765580();
        v73 = v72;
        v117(v70, v120);
        sub_75C720();
        v74 = sub_75DA30();
        v71(v69, v66);
        v75 = type metadata accessor for SnapshotPageTraitEnvironment();
        v76 = objc_allocWithZone(v75);
        v77 = &v76[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
        *v77 = v73;
        *(v77 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v76[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v74;
        v131.receiver = v76;
        v131.super_class = v75;
        v78 = objc_msgSendSuper2(&v131, "init");
        v80 = sub_57E180(v67, v78, v116, v79);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_7AE30(0, *(v64 + 2) + 1, 1, v64);
        }

        v82 = *(v64 + 2);
        v81 = *(v64 + 3);
        if (v82 >= v81 >> 1)
        {
          v64 = sub_7AE30((v81 > 1), v82 + 1, 1, v64);
        }

        ++v62;

        v129 = v123;
        v130 = &protocol witness table for LayoutViewPlaceholder;
        *&v128 = v80;
        *(v64 + 2) = v82 + 1;
        sub_10914(&v128, &v64[5 * v82 + 4]);
        v63 = v115;
      }

      while (v114 != v62);
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  swift_getKeyPath();
  sub_75C7B0();

  v83 = v128;
  sub_767500();

  v84 = v123;
  swift_allocObject();
  v85 = sub_7670B0();
  (*(v106 + 16))(v101, v110, v107);
  v129 = v84;
  v130 = &protocol witness table for LayoutViewPlaceholder;
  *&v128 = v95;
  v127[23] = v84;
  v127[24] = &protocol witness table for LayoutViewPlaceholder;
  v127[19] = &protocol witness table for LayoutViewPlaceholder;
  v127[20] = v94;
  v127[18] = v84;
  v127[14] = &protocol witness table for LayoutViewPlaceholder;
  v127[15] = v93;
  v127[13] = v84;
  v127[9] = &protocol witness table for LayoutViewPlaceholder;
  v127[10] = v85;
  v124 = v85;
  v127[8] = v84;
  v127[5] = v105;
  sub_134D8(v133, v127);
  sub_134D8(v132, &v126);

  sub_759610();
  v86 = v102;
  sub_75CBE0();
  swift_getKeyPath();
  sub_75C7B0();

  sub_57FAEC(&qword_951450, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v87 = v97;
  sub_7665A0();
  v38 = v88;

  swift_unknownObjectRelease();

  (*(v96 + 8))(v86, v87);
  sub_BEB8(v132);
  sub_BEB8(v133);
  (*(v109 + 8))(v108, v111);
  (*(v106 + 8))(v110, v107);
  return v38;
}

uint64_t sub_57FAEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57FB34(__n128 a1)
{
  v2 = sub_75F5D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_57FBBC(__n128 a1)
{
  sub_75F5D0();

  return sub_4DB95C();
}

uint64_t sub_57FCA8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_75C510();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_57FD28(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_75C510();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, a2, v5);
}

uint64_t sub_57FDBC(uint64_t a1, __n128 a2)
{
  result = sub_75C510();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_57FE44@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_767FC0();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_767D20();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95B660, &qword_7A5CB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_BD88(&qword_95B668, &qword_7A5CC0);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_BD88(&qword_95B670, &qword_7A5CC8);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_BD88(&qword_95B678, &qword_7A5CD0);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_BD88(&qword_95B680, &qword_7A5CD8);
  sub_16194(&qword_95B688, &qword_95B680, &qword_7A5CD8, &protocol conformance descriptor for TupleView<A>);
  sub_768070();
  sub_767D10();
  sub_16194(&qword_95B690, &qword_95B660, &qword_7A5CB8, &protocol conformance descriptor for List<A, B>);
  v20 = v44;
  sub_7681E0();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_767FF0();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_BD88(&qword_95B698, &qword_7A5CE0);
  v24 = sub_58551C();
  v25 = sub_133D8(&qword_95B6B8, &qword_7A5CF0);
  v26 = sub_16194(&qword_95B6C0, &qword_95B6B8, &qword_7A5CF0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_7681D0();
  sub_585664(v12);
  v28 = v51;
  sub_767FB0();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_768160();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_75C4D0();
  v58 = v35;
  sub_12EC40();
  v36 = sub_7680C0();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_768180();
  sub_93370(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

void sub_5804D4(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95B6D8, &qword_7A5D00);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_BD88(&qword_95B6E0, &unk_7A5D08);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_75C510();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_767CF0();
  sub_5856D4(&qword_945F08, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_7A5B64);
  v48 = v17;
  sub_7681A0();
  sub_58571C(v13);
  v19 = sub_75C4F0();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7CBF4(v20, 0);
  v22 = sub_618ED0(&v50, v21 + 4, v20, v19);
  v23 = v50;

  sub_1A01E0(v23);
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_3C4864(&v50);

    swift_getKeyPath();
    sub_585778(a1, v6);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    sub_5858A8(v6, v25 + v24);
    sub_BD88(&unk_947FF0, &unk_7801F0);
    sub_16194(&qword_95B6E8, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
    sub_58598C();
    v26 = v49;
    sub_768240();
    v27 = v41;
    v28 = v42;
    v29 = *(v42 + 16);
    v30 = v44;
    v29(v41, v48, v44);
    v31 = v45;
    v32 = v46;
    v40 = *(v46 + 16);
    v33 = v26;
    v34 = v47;
    (v40)(v45, v33, v47);
    v35 = v43;
    v29(v43, v27, v30);
    v36 = sub_BD88(&qword_95B6F8, &qword_7A5D38);
    (v40)(&v35[*(v36 + 48)], v31, v34);
    v37 = *(v32 + 8);
    v37(v49, v34);
    v38 = *(v28 + 8);
    v38(v48, v30);
    v37(v31, v34);
    v38(v27, v30);
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_580A80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_75C4F0();
  if (*(v5 + 16) && (v6 = sub_3DF2F8(v4, v3), (v7 & 1) != 0))
  {
    sub_132B4(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_580B18(uint64_t a1)
{
  v2 = sub_767F40();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BD88(&qword_95B6B8, &qword_7A5CF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_767F30();
  v9 = a1;
  sub_BD88(&qword_95B6C8, &qword_7A5CF8);
  sub_16194(&qword_95B6D0, &qword_95B6C8, &qword_7A5CF8, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  sub_767CD0();
  sub_16194(&qword_95B6C0, &qword_95B6B8, &qword_7A5CF0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_767F50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_580D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7681F0();
  *a1 = result;
  return result;
}

uint64_t sub_580DC4()
{
  v0 = sub_757150();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7571D0();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7571B0();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_757170();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757190();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_757010();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_757530();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_757490();
  __chkstk_darwin(v14 - 8);
  v15 = sub_7573C0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_BD88(&qword_95B650, &qword_7A5C78);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_BD88(&qword_95B658, &qword_7A5C80);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_757200();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_161DC(v33, qword_95B488);
  v48 = sub_BE38(v22, qword_95B488);
  sub_7570F0();
  v34 = sub_757100();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_7570D0();
  v35 = sub_7570E0();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_757370();
  sub_757440();
  sub_757510();
  sub_757000();
  sub_757120();
  v36 = v52;
  sub_757160();
  v37 = v51;
  sub_757180();
  (*(v55 + 8))(v36, v56);
  sub_757130();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_7571A0();
  v40 = v46;
  sub_7571E0();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_7571C0();
  v42 = v47;
  sub_7571F0();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_757140();
  sub_757110();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_581540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&qword_95B5C0, &qword_7A5BB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_BD88(&qword_95B5C8, &qword_7A5BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_BD88(&qword_95B5D0, &qword_7A5BC8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_767EB0();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_BD88(&qword_95B5D8, &qword_7A5BD0);
  sub_5818E8(v1, &v14[*(v15 + 44)]);
  sub_75C500();
  sub_768B70();
  v16 = sub_769490();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_7681F0();
    sub_767EC0();
    v20 = sub_767EE0();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_768200();

    sub_10A2C(v8, &qword_95B5C8, &qword_7A5BC0);
    v21 = sub_768000();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_768010();
    sub_10A2C(v5, &qword_95B5C0, &qword_7A5BB8);
    KeyPath = swift_getKeyPath();
  }

  sub_1ED18(v14, v11, &qword_95B5D0, &qword_7A5BC8);
  sub_1ED18(v11, a1, &qword_95B5D0, &qword_7A5BC8);
  v22 = sub_BD88(&qword_95B5E0, &qword_7A5BD8);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_585278(v17, KeyPath, v19);
  sub_5852C8(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10A2C(v14, &qword_95B5D0, &qword_7A5BC8);
  sub_5852C8(v17);
  return sub_10A2C(v11, &qword_95B5D0, &qword_7A5BC8);
}

uint64_t sub_5818E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_BD88(&qword_95B5E8, &qword_7A5C10);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_767E30();
  LOBYTE(v54[0]) = 1;
  sub_581D48(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_768060();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_75C4B0();
  swift_getKeyPath();
  sub_BD88(&qword_95B5F0, &qword_7A5C38);
  sub_BD88(&qword_95B5F8, &qword_7A5C40);
  sub_16194(&qword_95B600, &qword_95B5F0, &qword_7A5C38, &protocol conformance descriptor for [A]);
  sub_58536C();
  v30 = v7;
  sub_768240();
  v29 = sub_767E30();
  LOBYTE(v54[0]) = 1;
  sub_5820DC(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_BD88(&qword_95B630, &qword_7A5C58);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_1ED18(v43, v54, &qword_95B638, &qword_7A5C60);
  sub_1ED18(v46, v54, &qword_95B640, &unk_7A5C68);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10A2C(v48, &qword_95B640, &unk_7A5C68);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10A2C(v54, &qword_95B638, &qword_7A5C60);
}

double sub_581D48@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_BD88(&qword_95B5C8, &qword_7A5BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_75C490();
  sub_7681F0();
  sub_767ED0();
  v5 = sub_767EE0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_768200();

  sub_10A2C(v4, &qword_95B5C8, &qword_7A5BC0);
  v18 = sub_75C4D0();
  v19 = v7;
  sub_12EC40();
  v8 = sub_7680C0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_93360(v8, v10, v12);

  sub_93370(v8, v10, v12);

  return result;
}

uint64_t sub_581F14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_767E70();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_767E60();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_767E50(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_767E40(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_767E50(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_767E40(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_767E50(v29);
    sub_767E80();
    v11 = sub_7680B0();
    v13 = v12;
    v15 = v14;
    sub_768030();
    v16 = sub_7680A0();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_93370(v11, v13, v15 & 1);

    result = swift_getKeyPath();
    v23 = v19 & 1;
    v24 = 1;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v21 = 0;
    result = 0;
    v24 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = a4;
  *(a5 + 16) = v23;
  *(a5 + 24) = v21;
  *(a5 + 32) = result;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  return result;
}

double sub_5820DC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_BD88(&unk_957130, &qword_78B140);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_7572A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C4C0();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_93DCB8 != -1)
    {
      swift_once();
    }

    v36 = sub_757200();
    sub_BE38(v36, qword_95B488);
    sub_5856D4(&qword_95B648, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_757280();
    v56 = v58;
    v57 = v59;
    sub_12EC40();
    v37 = sub_7680C0();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_768050();
    v42 = sub_7680A0();
    v44 = v43;
    v46 = v45;

    sub_93370(v37, v39, v41 & 1);

    LODWORD(v58) = sub_767F60();
    v10 = sub_768080();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_93370(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_93360(v10, v11, v37 & 1);

    v14 = sub_75C4E0();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10A2C(v5, &unk_957130, &qword_78B140);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_75C4E0();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_12EC40();
  v16 = sub_7680C0();
  v18 = v17;
  v20 = v19;
  sub_768050();
  v21 = sub_7680A0();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_93370(v16, v18, v20 & 1);

  LODWORD(v58) = sub_767F60();
  v26 = sub_768080();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_93370(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_93360(v26, v28, v35);

LABEL_8:
  sub_937E4(v10, v11, v12, v13);
  sub_937E4(v26, v28, v35, v32);
  sub_93828(v10, v11, v12, v13);
  sub_93828(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_93828(v26, v28, v35, v32);
  return sub_93828(v10, v11, v12, v13);
}

uint64_t sub_5825C0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_BD88(&qword_95B710, &qword_7A5DF0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_BD88(&qword_95B718, &qword_7A5DF8);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_BD88(&qword_95B720, &qword_7A5E00);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_BD88(&qword_95B728, &qword_7A5E08);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_BD88(&qword_95B730, &qword_7A5E10);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_BD88(&qword_95B738, &qword_7A5E18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_BD88(&qword_95B740, &unk_7A5E20);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_1ED18((v1 + 2), &v41, &unk_93FBD0, &qword_77DFA0);
  if (*(&v42[0] + 1))
  {
    sub_BD88(&qword_95B778, &qword_7A5E38);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_585EF8(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_BD88(&qword_95B780, &qword_7A5E40);
        sub_585DB0();
        sub_585FF4();
        sub_767D30();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_16194(&qword_95B758, &qword_95B738, &qword_7A5E18, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_767F00();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_1ED18((v1 + 2), v42, &unk_93FBD0, &qword_77DFA0);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_585C08(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_16194(&qword_95B758, &qword_95B738, &qword_7A5E18, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_585DB0();

        sub_767F00();
        sub_585E04(&v41);
      }

      sub_1ED18(v16, v33, &qword_95B740, &unk_7A5E20);
      swift_storeEnumTagMultiPayload();
      sub_585CF8();
      sub_16194(&qword_95B768, &qword_95B710, &qword_7A5DF0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v29 = v34;
      sub_767F00();
      sub_1ED18(v29, v38, &qword_95B728, &qword_7A5E08);
      swift_storeEnumTagMultiPayload();
      sub_585C40();
      sub_585DB0();
      sub_767F00();
      sub_10A2C(v29, &qword_95B728, &qword_7A5E08);
      return sub_10A2C(v16, &qword_95B740, &unk_7A5E20);
    }
  }

  else
  {
    sub_10A2C(&v41, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18((v1 + 2), &v41, &unk_93FBD0, &qword_77DFA0);
  if (*(&v42[0] + 1))
  {
    sub_BD88(&qword_941C38, &qword_7A5E30);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_BD88(&qword_95B6D8, &qword_7A5D00);
      sub_585DB0();
      sub_585E74();
      sub_767D30();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_585CF8();
      sub_16194(&qword_95B768, &qword_95B710, &qword_7A5DF0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v23 = v34;
      sub_767F00();
      sub_1ED18(v23, v38, &qword_95B728, &qword_7A5E08);
      swift_storeEnumTagMultiPayload();
      sub_585C40();
      sub_767F00();
      sub_10A2C(v23, &qword_95B728, &qword_7A5E08);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10A2C(&v41, &unk_93FBD0, &qword_77DFA0);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_1ED18((v1 + 2), v42, &unk_93FBD0, &qword_77DFA0);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_585C08(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_585C40();
  sub_585DB0();

  sub_767F00();
  return sub_585E04(&v41);
}

uint64_t sub_582F44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BD88(&qword_95B7B0, &qword_7A5E50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v32 = sub_BD88(&qword_95B7B8, &qword_7A5E58);
  __chkstk_darwin(v32);
  v33 = v29 - v10;
  v34 = sub_BD88(&qword_95B798, &qword_7A5E48);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v29 - v11;
  if (*a1 == __PAIR128__(0xEB00000000736E6FLL, 0x6973736572706D69) || (sub_76A950() & 1) != 0)
  {
    v29[2] = v6;
    sub_3531FC(a2);
    v13 = *(v12 + 16);
    v29[0] = v12;
    v29[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_1ED18(v14, v39, &qword_95B7D0, &qword_7A5E88);
        v35 = v39[0];
        v36 = v39[1];
        v37 = v40;
        sub_BD88(&qword_941C38, &qword_7A5E30);
        if (swift_dynamicCast())
        {
          v16 = v38;
          if (v38 != 0.0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_7C5D0(0, *(v15 + 2) + 1, 1, v15);
            }

            v18 = *(v15 + 2);
            v17 = *(v15 + 3);
            if (v18 >= v17 >> 1)
            {
              v15 = sub_7C5D0((v17 > 1), v18 + 1, 1, v15);
            }

            *(v15 + 2) = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_15080C(v15);
    v21 = v20;
    *&v39[0] = v29[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_58621C;
    *(v23 + 24) = v22;
    sub_BD88(&qword_95B7C0, &qword_7A5E80);
    sub_16194(&qword_95B7C8, &qword_95B7C0, &qword_7A5E80, &protocol conformance descriptor for [A]);
    sub_586104();
    v24 = v30;
    sub_768240();
    v25 = v31;
    v26 = v34;
    (*(v31 + 16))(v33, v24, v34);
    swift_storeEnumTagMultiPayload();
    sub_586080();
    sub_586158();
    sub_767F00();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_3531FC(a2);
    *&v39[0] = v28;
    swift_getKeyPath();
    sub_BD88(&qword_95B7C0, &qword_7A5E80);
    sub_16194(&qword_95B7C8, &qword_95B7C0, &qword_7A5E80, &protocol conformance descriptor for [A]);
    sub_58598C();
    sub_768240();
    (*(v7 + 16))(v33, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_586080();
    sub_586158();
    sub_767F00();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_583510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_132B4(a2, v10);
  sub_BD88(&qword_941C38, &qword_7A5E30);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_10E8CC(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_3DF2F8(0xD000000000000012, 0x80000000007E8460);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_132B4(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_150B04(v10, a4);
  sub_10A2C(v10, &unk_93FBD0, &qword_77DFA0);
  return v5;
}

uint64_t sub_583620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_76A910();
  sub_769370(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_769370(v6);
  result = sub_132B4(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_5836B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_7CBF4(*(a1 + 16), 0);
  v4 = sub_618ED0(&v7, v3 + 4, v2, a1);
  v5 = v7;

  sub_1A01E0(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_3C4864(&v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_16194(&qword_95B6E8, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
  sub_58598C();
  return sub_768240();
}

double sub_58386C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_3DF2F8(v4, v5);
    if (v8)
    {
      sub_132B4(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_583900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_767EB0();
  LOBYTE(v20[0]) = 1;
  sub_583A94(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v6 = v20[0];
  sub_1ED18(a1 + 16, v13, &unk_93FBD0, &qword_77DFA0);
  v14 = 0;
  v15 = 1;
  sub_586440(v13, v12);
  v18[0] = v5;
  v18[1] = 0;
  v19[0] = v6;
  *&v19[1] = *v16;
  *&v19[17] = *&v16[16];
  *&v19[33] = *&v16[32];
  *&v19[49] = *&v16[48];
  *&v19[64] = *&v16[63];
  v7 = *&v16[63];
  v8 = *v19;
  *a2 = v5;
  *(a2 + 16) = v8;
  v9 = *&v19[16];
  v10 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v10;
  *(a2 + 32) = v9;
  *(a2 + 80) = v7;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_586440(v12, a2 + 104);
  sub_1ED18(v18, v20, &qword_95B7E8, &qword_7A5F90);
  sub_586478(v13);
  sub_586478(v12);
  v20[0] = v5;
  v20[1] = 0;
  v21 = v6;
  v23 = *&v16[16];
  v24 = *&v16[32];
  *v25 = *&v16[48];
  *&v25[15] = *&v16[63];
  v22 = *v16;
  return sub_10A2C(v20, &qword_95B7E8, &qword_7A5F90);
}

double sub_583A94@<D0>(uint64_t a2@<X8>)
{
  sub_12EC40();

  v3 = sub_7680C0();
  v5 = v4;
  v7 = v6;
  v26 = sub_768090();
  v27 = v8;
  v10 = v9;
  v25 = v11;
  sub_93370(v3, v5, v7 & 1);

  sub_583C60();
  v12 = sub_7680C0();
  v14 = v13;
  v16 = v15;
  sub_767F60();
  v17 = sub_768080();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_93370(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_93360(v26, v10, v25 & 1);

  sub_93360(v17, v19, v21 & 1);

  sub_93370(v17, v19, v21 & 1);

  sub_93370(v26, v10, v25 & 1);

  return result;
}

uint64_t sub_583C60()
{
  sub_1ED18(v0, v5, &unk_93FBD0, &qword_77DFA0);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0, &qword_77DFA0);
  if (v6)
  {
    sub_BE70(0, &qword_945820, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0, &qword_77DFA0);
  if (v6)
  {
    sub_BD88(&qword_95B778, &qword_7A5E38);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v0, v5, &unk_93FBD0, &qword_77DFA0);
  if (v6)
  {
    sub_BD88(&qword_941C38, &qword_7A5E30);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_1ED18(v0, v5, &unk_93FBD0, &qword_77DFA0);
    if (v6)
    {
      sub_BE70(0, &qword_95B7F8, NSNull_ptr);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
    }

    v5[0] = sub_BD88(&unk_93FBD0, &qword_77DFA0);
    sub_BD88(&qword_95B7F0, &qword_7A5F98);
    return sub_7692A0();
  }

  return result;
}

uint64_t sub_584010@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_767E30();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_583900(v2, a1 + 24);
}

void sub_58404C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_BD88(&qword_95B800, &qword_7A5FA0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = sub_767EA0();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_7CBF4(v14, 0);
    v16 = sub_618ED0(&v49, v15 + 4, v14, a1);
    v17 = v49;

    sub_1A01E0(v17);
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_3C4864(&v49);
      sub_BD88(&qword_95B808, &qword_7A5FA8);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_BD88(&unk_947FF0, &unk_7801F0);
      sub_BD88(&qword_95B810, &qword_7A5FB0);
      sub_16194(&qword_95B6E8, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
      sub_16194(&qword_95B818, &qword_95B810, &qword_7A5FB0, &protocol conformance descriptor for HStack<A>);
      sub_768240();
      v20 = sub_767FF0();
      sub_767CA0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_BD88(&qword_95B820, &qword_7A5FB8) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = sub_767FF0();
      v31 = &v13[*(sub_BD88(&qword_95B828, &qword_7A5FC0) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(sub_767D80() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_767E90();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_BD88(&qword_95B830, &qword_7A5FC8) + 36)] = 256;
      v42 = v48;
      sub_586550(v13, v48);
      (*(v46 + 56))(v42, 0, 1, v32);
      return;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v18 = *(v10 + 56);

    v18(a4, 1, 1, v11);
  }
}

double sub_5844B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_12EC40();

  v9 = sub_7680C0();
  v11 = v10;
  v13 = v12;
  v14 = sub_768090();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_93370(v9, v11, v13 & 1);

  sub_584608(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_586440(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_586440(v25, a6 + 48);
  sub_93360(v14, v16, v21 & 1);

  sub_586478(v26);
  sub_586478(v25);
  sub_93370(v14, v16, v21 & 1);

  return result;
}

double sub_584608@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000000007E8460 == a2 || (sub_76A950()) && a3 && *(a3 + 16) && (v12 = sub_3DF2F8(a1, a2), (v13))
  {
    sub_132B4(*(a3 + 56) + 32 * v12, v18);
    sub_13310(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_76A7F0();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_769370(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_769370(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_769370(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_BEB8(v19);
      return result;
    }

    sub_BEB8(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_3DF2F8(a1, a2);
  if (v17)
  {
    sub_132B4(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_5847A8@<Q0>(uint64_t a1@<X8>)
{
  sub_1ED18(v1, &v38, &unk_93FBD0, &qword_77DFA0);
  if (v39.n128_u64[1])
  {
    sub_BD88(&qword_95B778, &qword_7A5E38);
    if (swift_dynamicCast())
    {
      v3 = *(*&v56[0] + 16);

      *&cf = v3;
      *&v57 = sub_76A910();
      *(&v57 + 1) = v4;
      v61._countAndFlagsBits = 0x736D65746920;
      v61._object = 0xE600000000000000;
      sub_769370(v61);
      cf = v57;
      v50.n128_u64[0] = 0;
      v50.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v51) = 0;

      sub_767F00();
      v48 = v59;
      v47 = 0;
      v60[18] = 0;
      sub_BD88(&qword_95B8B0, &qword_7A6098);
      sub_BD88(&qword_95B8C0, &qword_7A60A0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v58 = v43;
      v59 = v44;
      *v60 = *v45;
      *&v60[15] = *&v45[15];
      v57 = v42;
LABEL_8:
      LOBYTE(v54) = 0;
      v60[19] = 0;
      sub_BD88(&qword_95B898, &qword_7A6090);
      sub_58699C();
      sub_767F00();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10A2C(&v38, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v1, &v38, &unk_93FBD0, &qword_77DFA0);
  if (v39.n128_u64[1])
  {
    sub_BD88(&qword_941C38, &qword_7A5E30);
    if (swift_dynamicCast())
    {
      v5 = *(*&v56[0] + 16);

      *&cf = v5;
      *&v57 = sub_76A910();
      *(&v57 + 1) = v6;
      v62._countAndFlagsBits = 0x7379656B20;
      v62._object = 0xE500000000000000;
      sub_769370(v62);
      cf = v57;
      v50.n128_u64[0] = 0;
      v50.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v51) = 1;

      sub_767F00();
      v48 = v59;
      v47 = 0;
      v60[18] = 0;
      sub_BD88(&qword_95B8B0, &qword_7A6098);
      sub_BD88(&qword_95B8C0, &qword_7A60A0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v59 = v44;
      *v60 = *v45;
      *&v60[15] = *&v45[15];
      v57 = v42;
      v58 = v43;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10A2C(&v38, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v1, &v57, &unk_93FBD0, &qword_77DFA0);
  if (v58.n128_u64[1])
  {
    sub_BE70(0, &qword_945820, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v37 = v7;
      if (CFBooleanGetTypeID() == v8)
      {
        v9 = [v7 BOOLValue];
        if (v9)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v9)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v10;
        *(&cf + 1) = v11;
        v50.n128_u64[0] = 0;
        v50.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v51 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_769240();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v50.n128_u64[0] = 0;
        v50.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v51 = v29;
        v13 = 258;
      }

      WORD4(v51) = v13;
      sub_BD88(&qword_95B8E0, &qword_7A60B0);
      sub_586BB4();
      sub_767F00();
      v30 = v59;
      v48 = BYTE9(v59);
      v47 = 0;
      v60[17] = 0;
      v31 = v57;
      v32 = v58.n128_u8[0];
      v33 = v58.n128_i64[1];
      v35 = v58.n128_u8[0];
      v36 = v57;
      v34 = v58.n128_i64[1];
      sub_586D78(v57, *(&v57 + 1), v58.n128_i8[0], v58.n128_i64[1], v59);
      sub_586D78(v31, *(&v31 + 1), v32, v33, v30);
      sub_BD88(&qword_95B8D0, &qword_7A60A8);
      sub_BD88(&qword_95B900, &qword_7A60C0);
      sub_586B30();
      sub_586C6C();
      sub_767F00();
      v59 = v51;
      *v60 = v52;
      *&v60[16] = v53;
      v57 = cf;
      v58 = v50;
      LOBYTE(v54) = 1;
      v60[18] = 1;
      sub_BD88(&qword_95B8B0, &qword_7A6098);
      sub_BD88(&qword_95B8C0, &qword_7A60A0);
      sub_586A28();
      sub_586AA4();
      sub_767F00();
      v44 = v40;
      *v45 = *v41;
      *&v45[15] = *&v41[15];
      v42 = v38;
      v43 = v39;
      v59 = v40;
      *v60 = *v41;
      *&v60[15] = *&v41[15];
      v57 = v38;
      v58 = v39;
      LOBYTE(v56[0]) = 0;
      v60[19] = 0;
      sub_1ED18(&v42, &cf, &qword_95B898, &qword_7A6090);
      sub_BD88(&qword_95B898, &qword_7A6090);
      sub_58699C();
      sub_767F00();
      sub_586DC0(v36, *(&v31 + 1), v35, v34);
      sub_10A2C(&v42, &qword_95B898, &qword_7A6090);

      sub_586DC0(v36, *(&v31 + 1), v35, v34);
      v59 = v51;
      *v60 = v52;
      *&v60[16] = v53;
      v22 = cf;
      v21 = v50;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10A2C(&v57, &unk_93FBD0, &qword_77DFA0);
  }

  sub_1ED18(v1, &v54, &unk_93FBD0, &qword_77DFA0);
  if (!v55)
  {
    sub_10A2C(&v54, &unk_93FBD0, &qword_77DFA0);
    LOBYTE(v42) = 0;
    LOBYTE(v38) = 1;
    cf = xmmword_7A5AC0;
    v50.n128_u8[0] = 0;
    v50.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v53) = 1;
    sub_BD88(&qword_95B898, &qword_7A6090);
    sub_58699C();
    sub_767F00();
    goto LABEL_25;
  }

  sub_13310(&v54, v56);
  sub_132B4(v56, &v57);
  v14 = sub_7692A0();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v38 = v14;
  *(&v38 + 1) = v16;
  v39.n128_u8[0] = 0;
  v39.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v40 = v17;
  BYTE8(v40) = 2;
  *v41 = v20;
  *&v41[8] = v18;
  v41[16] = v19;
  v59 = v40;
  *v60 = *v41;
  v60[16] = v19;
  v57 = v38;
  v58 = v39;
  v46 = 1;
  v60[17] = 1;
  sub_1ED18(&v38, &cf, &qword_95B900, &qword_7A60C0);
  sub_BD88(&qword_95B8D0, &qword_7A60A8);
  sub_BD88(&qword_95B900, &qword_7A60C0);
  sub_586B30();
  sub_586C6C();
  sub_767F00();
  v59 = v51;
  *v60 = v52;
  *&v60[16] = v53;
  v57 = cf;
  v58 = v50;
  v47 = 1;
  v60[18] = 1;
  sub_BD88(&qword_95B8B0, &qword_7A6098);
  sub_BD88(&qword_95B8C0, &qword_7A60A0);
  sub_586A28();
  sub_586AA4();
  sub_767F00();
  v59 = v44;
  *v60 = *v45;
  *&v60[15] = *&v45[15];
  v57 = v42;
  v58 = v43;
  v48 = 0;
  v60[19] = 0;
  sub_BD88(&qword_95B898, &qword_7A6090);
  sub_58699C();
  sub_767F00();
  sub_10A2C(&v38, &qword_95B900, &qword_7A60C0);
  sub_BEB8(v56);
LABEL_23:
  v59 = v51;
  *v60 = v52;
  *&v60[16] = v53;
  v22 = cf;
  v21 = v50;
LABEL_24:
  v57 = v22;
  v58 = v21;
LABEL_25:
  v23 = *v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v60[16];
  result = v58;
  *a1 = v57;
  *(a1 + 16) = result;
  return result;
}

double sub_585278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_5852C8(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_585314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_767DD0();
  *a1 = result;
  return result;
}

unint64_t sub_58536C()
{
  result = qword_95B608;
  if (!qword_95B608)
  {
    sub_133D8(&qword_95B5F8, &qword_7A5C40);
    sub_5853F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B608);
  }

  return result;
}

unint64_t sub_5853F0()
{
  result = qword_95B610;
  if (!qword_95B610)
  {
    sub_133D8(&qword_95B618, &qword_7A5C48);
    sub_16194(&qword_95B620, &qword_95B628, &qword_7A5C50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B610);
  }

  return result;
}

uint64_t sub_5854A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_767DF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_58551C()
{
  result = qword_95B6A0;
  if (!qword_95B6A0)
  {
    sub_133D8(&qword_95B668, &qword_7A5CC0);
    sub_133D8(&qword_95B660, &qword_7A5CB8);
    sub_767D20();
    sub_16194(&qword_95B690, &qword_95B660, &qword_7A5CB8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_16194(&qword_95B6A8, &qword_95B6B0, &qword_7A5CE8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B6A0);
  }

  return result;
}

uint64_t sub_585664(uint64_t a1)
{
  v2 = sub_BD88(&qword_95B668, &qword_7A5CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5856D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_58571C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_585778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5857DC()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_75C510();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5858A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_58590C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_580A80(a1, a2);
}

unint64_t sub_58598C()
{
  result = qword_95B6F0;
  if (!qword_95B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B6F0);
  }

  return result;
}

uint64_t sub_5859E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_585A4C()
{
  sub_133D8(&qword_95B678, &qword_7A5CD0);
  sub_133D8(&qword_95B670, &qword_7A5CC8);
  sub_767FC0();
  sub_133D8(&qword_95B668, &qword_7A5CC0);
  sub_133D8(&qword_95B698, &qword_7A5CE0);
  sub_58551C();
  sub_133D8(&qword_95B6B8, &qword_7A5CF0);
  sub_16194(&qword_95B6C0, &qword_95B6B8, &qword_7A5CF0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_585C40()
{
  result = qword_95B748;
  if (!qword_95B748)
  {
    sub_133D8(&qword_95B728, &qword_7A5E08);
    sub_585CF8();
    sub_16194(&qword_95B768, &qword_95B710, &qword_7A5DF0, &protocol conformance descriptor for DisclosureGroup<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B748);
  }

  return result;
}

unint64_t sub_585CF8()
{
  result = qword_95B750;
  if (!qword_95B750)
  {
    sub_133D8(&qword_95B740, &unk_7A5E20);
    sub_16194(&qword_95B758, &qword_95B738, &qword_7A5E18, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_585DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B750);
  }

  return result;
}

unint64_t sub_585DB0()
{
  result = qword_95B760;
  if (!qword_95B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B760);
  }

  return result;
}

uint64_t sub_585E34()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_585E74()
{
  result = qword_95B770;
  if (!qword_95B770)
  {
    sub_133D8(&qword_95B6D8, &qword_7A5D00);
    sub_58598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B770);
  }

  return result;
}

uint64_t sub_585F30()
{

  if (*(v0 + 56))
  {
    sub_BEB8((v0 + 32));
  }

  return _swift_deallocObject(v0, 72, 7);
}

double sub_585F90@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_1ED18((v3 + 2), (a1 + 2), &unk_93FBD0, &qword_77DFA0);
  *a1 = v5;
  a1[1] = v4;

  return result;
}

unint64_t sub_585FF4()
{
  result = qword_95B788;
  if (!qword_95B788)
  {
    sub_133D8(&qword_95B780, &qword_7A5E40);
    sub_586080();
    sub_586158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B788);
  }

  return result;
}

unint64_t sub_586080()
{
  result = qword_95B790;
  if (!qword_95B790)
  {
    sub_133D8(&qword_95B798, &qword_7A5E48);
    sub_586104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B790);
  }

  return result;
}

unint64_t sub_586104()
{
  result = qword_95B7A0;
  if (!qword_95B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7A0);
  }

  return result;
}

unint64_t sub_586158()
{
  result = qword_95B7A8;
  if (!qword_95B7A8)
  {
    sub_133D8(&qword_95B7B0, &qword_7A5E50);
    sub_58598C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7A8);
  }

  return result;
}

uint64_t sub_5861DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_586224()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58625C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_5862A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_5862FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_58637C()
{
  result = qword_95B7D8;
  if (!qword_95B7D8)
  {
    sub_133D8(&qword_95B7E0, ".8\a");
    sub_585C40();
    sub_585DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B7D8);
  }

  return result;
}

uint64_t sub_5864A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_5864E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_767E10();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_5844B0(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_586550(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95B800, &qword_7A5FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5865C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_58661C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_5866D4()
{
  result = qword_95B848;
  if (!qword_95B848)
  {
    sub_133D8(&qword_95B850, &qword_7A6028);
    sub_586758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B848);
  }

  return result;
}

unint64_t sub_586758()
{
  result = qword_95B858;
  if (!qword_95B858)
  {
    sub_133D8(&qword_95B800, &qword_7A5FA0);
    sub_586810();
    sub_16194(&qword_95B890, &qword_95B830, &qword_7A5FC8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B858);
  }

  return result;
}

unint64_t sub_586810()
{
  result = qword_95B860;
  if (!qword_95B860)
  {
    sub_133D8(&qword_95B828, &qword_7A5FC0);
    sub_5868C8();
    sub_16194(&qword_95B880, &qword_95B888, qword_7A6038, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B860);
  }

  return result;
}

unint64_t sub_5868C8()
{
  result = qword_95B868;
  if (!qword_95B868)
  {
    sub_133D8(&qword_95B820, &qword_7A5FB8);
    sub_16194(&qword_95B870, &qword_95B878, &qword_7A6030, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B868);
  }

  return result;
}

unint64_t sub_58699C()
{
  result = qword_95B8A0;
  if (!qword_95B8A0)
  {
    sub_133D8(&qword_95B898, &qword_7A6090);
    sub_586A28();
    sub_586AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8A0);
  }

  return result;
}

unint64_t sub_586A28()
{
  result = qword_95B8A8;
  if (!qword_95B8A8)
  {
    sub_133D8(&qword_95B8B0, &qword_7A6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8A8);
  }

  return result;
}

unint64_t sub_586AA4()
{
  result = qword_95B8B8;
  if (!qword_95B8B8)
  {
    sub_133D8(&qword_95B8C0, &qword_7A60A0);
    sub_586B30();
    sub_586C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8B8);
  }

  return result;
}

unint64_t sub_586B30()
{
  result = qword_95B8C8;
  if (!qword_95B8C8)
  {
    sub_133D8(&qword_95B8D0, &qword_7A60A8);
    sub_586BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8C8);
  }

  return result;
}

unint64_t sub_586BB4()
{
  result = qword_95B8D8;
  if (!qword_95B8D8)
  {
    sub_133D8(&qword_95B8E0, &qword_7A60B0);
    sub_16194(&qword_95B8E8, &qword_95B8F0, &qword_7A60B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8D8);
  }

  return result;
}

unint64_t sub_586C6C()
{
  result = qword_95B8F8;
  if (!qword_95B8F8)
  {
    sub_133D8(&qword_95B900, &qword_7A60C0);
    sub_586BB4();
    sub_16194(&qword_95B620, &qword_95B628, &qword_7A5C50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B8F8);
  }

  return result;
}

uint64_t sub_586D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_767DB0();
  *a1 = result;
  return result;
}

double sub_586D78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_93360(a1, a2, a3 & 1);

  return result;
}

double sub_586DC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_93370(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_586E0C()
{
  result = qword_95B908;
  if (!qword_95B908)
  {
    sub_133D8(&qword_95B910, qword_7A60F8);
    sub_58699C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B908);
  }

  return result;
}

uint64_t sub_58702C()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = sub_7664F0();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7643E0();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_7621E0();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_BD88(&qword_95B948, &qword_7A6140);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_75BE80();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = sub_761270();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_75BE70();
  *(&v42 + 1) = v12;
  v43 = &protocol witness table for PlaceholderBrick;
  v20 = sub_B1B4(&v41);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_134D8(&v41, v39);
  sub_7621A0();
  sub_BEB8(&v41);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = sub_759210();
  v38[4] = &protocol witness table for UIView;
  v38[3] = v24;
  v38[0] = v23;
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v25 = v23;
  v26 = v32;
  sub_7643D0();
  sub_75D650();
  v27 = v33;
  sub_7643A0();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_587604()
{
  v0 = sub_BD88(&unk_945000, &qword_781830);
  sub_161DC(v0, qword_99FD88);
  sub_BE38(v0, qword_99FD88);
  return sub_768800();
}

uint64_t sub_58767C()
{
  v0 = sub_BD88(&unk_945000, &qword_781830);
  sub_161DC(v0, qword_99FDA0);
  sub_BE38(v0, qword_99FDA0);
  return sub_768800();
}

uint64_t sub_5876F4()
{
  v0 = sub_BD88(&unk_945000, &qword_781830);
  sub_161DC(v0, qword_99FDB8);
  sub_BE38(v0, qword_99FDB8);
  return sub_768800();
}

uint64_t sub_58776C()
{
  v0 = sub_BD88(&unk_945000, &qword_781830);
  sub_161DC(v0, qword_99FDD0);
  sub_BE38(v0, qword_99FDD0);
  return sub_768800();
}

uint64_t sub_5877E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v4 = sub_769290();
  v138 = *(v4 - 8);
  v139 = v4;
  __chkstk_darwin(v4);
  v137 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_95B950, &qword_7A6148);
  __chkstk_darwin(v6 - 8);
  v151 = &v129 - v7;
  v8 = sub_BD88(&qword_95B958, &qword_7AAFE0);
  __chkstk_darwin(v8 - 8);
  v150 = &v129 - v9;
  v10 = sub_764CF0();
  __chkstk_darwin(v10 - 8);
  v133 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v129 - v13;
  __chkstk_darwin(v14);
  v141 = &v129 - v15;
  __chkstk_darwin(v16);
  v142 = &v129 - v17;
  v152 = sub_7572E0();
  v147 = *(v152 - 8);
  __chkstk_darwin(v152);
  v129 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v129 - v20;
  __chkstk_darwin(v22);
  v24 = &v129 - v23;
  __chkstk_darwin(v25);
  v146 = &v129 - v26;
  __chkstk_darwin(v27);
  v145 = &v129 - v28;
  v29 = sub_75AD30();
  v148 = *(v29 - 8);
  v149 = v29;
  __chkstk_darwin(v29);
  v130 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v132 = &v129 - v32;
  __chkstk_darwin(v33);
  v135 = &v129 - v34;
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v38 = sub_75B1D0();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v131 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v134 = &v129 - v42;
  __chkstk_darwin(v43);
  v140 = &v129 - v44;
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v49 = __chkstk_darwin(v48);
  v51 = &v129 - v50;
  v143 = *(v39 + 16);
  v144 = a1;
  v143(&v129 - v50, a1, v38, v49);
  v52 = (*(v39 + 88))(v51, v38);
  if (v52 != enum case for AdPlacementType.searchLanding(_:))
  {
    if (v52 == enum case for AdPlacementType.searchResults(_:))
    {
      goto LABEL_37;
    }

    if (v52 == enum case for AdPlacementType.today(_:))
    {
      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD0 != -1)
      {
        swift_once();
      }

      v66 = sub_BD88(&unk_945000, &qword_781830);
      sub_BE38(v66, qword_99FDB8);
      sub_7686D0();

      if (v154 == 2 || (v154 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_7572D0();
      sub_7572B0();
      v67 = *(v147 + 1);
      v67(v24, v152);
      sub_764CC0();
      (v143)(v140, v144, v38);
      sub_BD88(&unk_9498B0, qword_794670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77B6D0;
      v154 = 1953459315;
      v155 = 0xE400000000000000;
      sub_76A6E0();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 2;
      sub_10E1F8(inited);
      swift_setDeallocating();
      sub_588F1C(inited + 32);
      v69 = v137;
      sub_769280();
      v70 = sub_769250();
      v72 = v71;
      (*(v138 + 8))(v69, v139);
      if (v72 >> 60 != 15)
      {
        v73 = objc_opt_self();
        isa = sub_7570B0().super.isa;
        v154 = 0;
        v75 = [v73 JSONObjectWithData:isa options:0 error:&v154];

        if (v75)
        {
          v76 = v154;
          sub_76A510();
          sub_30CC1C(v70, v72);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960, qword_7AB010);
          swift_dynamicCast();
        }

        else
        {
          v111 = v154;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v70, v72);
        }
      }

      v112 = v135;
      sub_75AD10();
      v113 = v145;
      sub_7572D0();
      v147 = sub_7572B0();
      v114 = v152;
      v67(v113, v152);
      v115 = v146;
      sub_7572D0();
      sub_7572B0();
      v67(v115, v114);
    }

    else if (v52 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD8 != -1)
      {
        swift_once();
      }

      v85 = sub_BD88(&unk_945000, &qword_781830);
      sub_BE38(v85, qword_99FDD0);
      sub_7686D0();

      if (v154 == 2 || (v154 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_7572D0();
      sub_7572B0();
      v86 = *(v147 + 1);
      v86(v21, v152);
      sub_764CC0();
      (v143)(v134, v144, v38);
      sub_BD88(&unk_9498B0, qword_794670);
      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_77B6D0;
      v154 = 1953459315;
      v155 = 0xE400000000000000;
      sub_76A6E0();
      *(v87 + 96) = &type metadata for Int;
      *(v87 + 72) = 1;
      sub_10E1F8(v87);
      swift_setDeallocating();
      sub_588F1C(v87 + 32);
      v88 = v137;
      sub_769280();
      v89 = sub_769250();
      v91 = v90;
      (*(v138 + 8))(v88, v139);
      if (v91 >> 60 != 15)
      {
        v92 = objc_opt_self();
        v93 = sub_7570B0().super.isa;
        v154 = 0;
        v94 = [v92 JSONObjectWithData:v93 options:0 error:&v154];

        if (v94)
        {
          v95 = v154;
          sub_76A510();
          sub_30CC1C(v89, v91);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960, qword_7AB010);
          swift_dynamicCast();
        }

        else
        {
          v116 = v154;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v89, v91);
        }
      }

      v112 = v132;
      sub_75AD10();
      v117 = v145;
      sub_7572D0();
      v147 = sub_7572B0();
      v118 = v152;
      v86(v117, v152);
      v119 = v146;
      sub_7572D0();
      sub_7572B0();
      v86(v119, v118);
    }

    else
    {
      if (v52 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
      {
        v110 = sub_7623E0();
        (*(*(v110 - 8) + 56))(v153, 1, 1, v110);
        return (*(v39 + 8))(v51, v38);
      }

      sub_7689F0();
      sub_7689C0();
      if (qword_93DCD8 != -1)
      {
        swift_once();
      }

      v96 = sub_BD88(&unk_945000, &qword_781830);
      sub_BE38(v96, qword_99FDD0);
      sub_7686D0();

      if (v154 == 2 || (v154 & 1) == 0)
      {
        goto LABEL_37;
      }

      v97 = v129;
      sub_7572D0();
      sub_7572B0();
      v98 = *(v147 + 1);
      v98(v97, v152);
      sub_764CC0();
      (v143)(v131, v144, v38);
      sub_BD88(&unk_9498B0, qword_794670);
      v99 = swift_initStackObject();
      *(v99 + 16) = xmmword_77B6D0;
      v154 = 1953459315;
      v155 = 0xE400000000000000;
      sub_76A6E0();
      *(v99 + 96) = &type metadata for Int;
      *(v99 + 72) = 1;
      sub_10E1F8(v99);
      swift_setDeallocating();
      sub_588F1C(v99 + 32);
      v100 = v137;
      sub_769280();
      v101 = sub_769250();
      v103 = v102;
      (*(v138 + 8))(v100, v139);
      if (v103 >> 60 != 15)
      {
        v104 = objc_opt_self();
        v105 = sub_7570B0().super.isa;
        v154 = 0;
        v106 = [v104 JSONObjectWithData:v105 options:0 error:&v154];

        if (v106)
        {
          v107 = v154;
          sub_76A510();
          sub_30CC1C(v101, v103);
          swift_unknownObjectRelease();
          sub_BD88(&qword_95B960, qword_7AB010);
          swift_dynamicCast();
        }

        else
        {
          v120 = v154;
          sub_756F70();

          swift_willThrow();
          sub_30CC1C(v101, v103);
        }
      }

      v112 = v130;
      sub_75AD10();
      v121 = v145;
      sub_7572D0();
      v147 = sub_7572B0();
      v122 = v152;
      v98(v121, v152);
      v123 = v146;
      sub_7572D0();
      sub_7572B0();
      v98(v123, v122);
    }

    v125 = v148;
    v124 = v149;
    v126 = v150;
    (*(v148 + 16))(v150, v112, v149);
    (*(v125 + 56))(v126, 0, 1, v124);
    v127 = sub_761560();
    (*(*(v127 - 8) + 56))(v151, 1, 1, v127);
    v65 = v153;
    sub_7623C0();
    (*(v125 + 8))(v112, v124);
    goto LABEL_46;
  }

  sub_7689F0();
  sub_7689C0();
  if (qword_93DCC0 != -1)
  {
    swift_once();
  }

  v53 = sub_BD88(&unk_945000, &qword_781830);
  sub_BE38(v53, qword_99FD88);
  sub_7686D0();

  if (v154 == 2 || (v154 & 1) == 0)
  {
    sub_7689C0();
    if (qword_93DCC8 != -1)
    {
      swift_once();
    }

    sub_BE38(v53, qword_99FDA0);
    sub_7686D0();

    if (v154 != 2 && (v154 & 1) != 0)
    {
      v77 = v145;
      sub_7572D0();
      sub_7572B0();
      v78 = *(v147 + 1);
      v79 = v152;
      v78(v77, v152);
      v80 = v146;
      sub_7572D0();
      sub_7572B0();
      v78(v80, v79);
      (*(v148 + 56))(v150, 1, 1, v149);
      v81 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v82 = sub_761560();
      v83 = *(v82 - 8);
      v84 = v151;
      (*(v83 + 104))(v151, v81, v82);
      (*(v83 + 56))(v84, 0, 1, v82);
      v65 = v153;
      sub_7623C0();
      goto LABEL_46;
    }

LABEL_37:
    v108 = sub_7623E0();
    return (*(*(v108 - 8) + 56))(v153, 1, 1, v108);
  }

  v54 = v145;
  sub_7572D0();
  v55 = sub_7572B0();
  v140 = v56;
  v141 = v55;
  v57 = *(v147 + 1);
  v58 = v152;
  v57(v54, v152);
  v147 = ":SOME_CPP_VERSION_ID}}}]}";
  sub_764CC0();
  (v143)(v47, v144, v38);
  sub_75AD10();
  sub_7572D0();
  v147 = sub_7572B0();
  v144 = v59;
  v57(v54, v58);
  v60 = v146;
  sub_7572D0();
  sub_7572B0();
  v57(v60, v58);
  v61 = v148;
  v62 = v149;
  v63 = v150;
  (*(v148 + 16))(v150, v37, v149);
  (*(v61 + 56))(v63, 0, 1, v62);
  v64 = sub_761560();
  (*(*(v64 - 8) + 56))(v151, 1, 1, v64);
  v65 = v153;
  sub_7623C0();
  (*(v61 + 8))(v37, v62);
LABEL_46:
  v128 = sub_7623E0();
  return (*(*(v128 - 8) + 56))(v65, 0, 1, v128);
}

uint64_t sub_588F1C(uint64_t a1)
{
  v2 = sub_BD88(&qword_940758, &unk_7851D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_588FFC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_75E080();
  sub_161DC(v4, qword_99FE90);
  v24 = sub_BE38(v4, qword_99FE90);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v5 = sub_766CA0();
  v6 = sub_BE38(v5, qword_99FDE8);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_B1B4(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_766CB0();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v5, qword_99FE18);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_B1B4(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_B1B4(v25);
  v20(v15, v3, v0);
  v16 = v10;
  sub_766CB0();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return sub_75E060();
}

uint64_t sub_5893B8(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for FontSource;
  v9 = sub_B1B4(v13);
  (*(v5 + 16))(v9, v7, v4);
  v10 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

id sub_58952C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_95B9C8, "X=\a");
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_7667C0();
  sub_58C5E4();
  sub_767480();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = sub_765B10();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_BD88(&qword_9477F0, qword_780200);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77B6D0;
  *(v17 + 32) = sub_767B80();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v19);
  return v16;
}

void sub_589814()
{
  v1 = v0;
  v2 = sub_765B10();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = sub_769A00(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_4C0AA4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

void sub_5899B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = sub_7652D0();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_765240();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_765B10();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_589814();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = sub_761E50();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = sub_76A860();
      if (sub_76A860() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      if (sub_76A860() < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = sub_764F90();

        sub_76A750(0);
        if (v7 != 1)
        {
          sub_76A750(1);
          if (v7 != 2)
          {
            sub_76A750(2);
            if (v7 != 3)
            {
              sub_76A750(3);
              if (v7 != 4)
              {
                sub_76A750(4);
                if (v7 != 5)
                {
                  sub_76A750(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = sub_76A870();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_58A838(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((sub_769A00() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = sub_769240();
        v44 = v43;
        if (v42 != sub_769240() || v44 != v45)
        {
          sub_76A950();
        }

        if (sub_769A00())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (sub_769B60())
          {
            v30 = v46;
            if (sub_769B50())
            {
              v50 = sub_769B60();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_93C328 == -1)
            {
LABEL_61:
              floor(sub_138D34(v26, &xmmword_99A9B0, 1));
LABEL_62:
              v82 = sub_10D5D8(&off_87DA28);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_93C328 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &unk_90D000;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (sub_769B50())
      {
        v39 = sub_769B60();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (sub_769B50())
      {
        v54 = sub_769B60();

        if (v54)
        {
          v55 = 1;
          if ((sub_769A00() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((sub_769A00() & 1) == 0)
      {
LABEL_51:
        if (qword_93C328 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (sub_769B50())
      {
        v59 = sub_769B60();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_93C328 != -1)
      {
        swift_once();
      }

      floor((sub_138D34(v26, &xmmword_99A9B0, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (sub_769B50())
      {
        sub_769B60();
      }

      v82 = sub_10D5D8(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_589814();
        [v64 setNeedsLayout];
        swift_unknownObjectRelease();
        return;
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == sub_76A860())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = sub_76A770();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = sub_764EE0();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = sub_764D80();
          v71 = v90;
          sub_765250();
          sub_765210();
          (*v87)(v71, v91);
          sub_765330();
          v72 = *&v68[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
          sub_7652E0();
          sub_7591B0();
          [v72 setContentMode:sub_765140()];
          sub_75DEF0();
          sub_7591F0();
          if (!sub_7651A0())
          {
            sub_396E8();
            sub_76A030();
          }

          sub_759070();
          sub_759210();
          sub_58D194(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          sub_75A050();
          if (v70)
          {
            v99 = v70;
            sub_764C80();
            sub_768900();
            sub_58D194(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);

            v73 = v96;
            sub_768820();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_BD88(&unk_950960, &qword_793110);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_278AC(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          sub_764EF0();
          v8 = v88;
          if (v78)
          {
            v68 = sub_769210();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  v31 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  if (v31 >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = v31;
  }

  if (v31 >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
}

void sub_58A838(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (sub_76A860() == a1)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = sub_76A860();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_BD88(&qword_95BAC8, &qword_7A62E8);
            sub_767450();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            sub_769440();
            if (*(&dword_10 + (*&v3[v6] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v3[v6] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = sub_76A860();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!sub_76A860())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = sub_76A860();
        goto LABEL_7;
      }
    }

    else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_45EDF0();
    }

    v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *(&stru_20.cmd + 8 * v19 + (a1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
      sub_759210();
      sub_58D194(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v22 = v21;
      sub_75A0C0();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_BD88(&qword_95BAC8, &qword_7A62E8);
    sub_767470();
    swift_endAccess();
  }
}

id sub_58AC00@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_58AC40()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_7664F0();
  v67 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v63.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73[0].receiver = v2;
  v73[0].super_class = ObjectType;
  [(objc_super *)v73 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v76);
  v66 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory];
  v65 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded];
  v12 = sub_769A00();
  v68 = v4;
  if (v12)
  {
    v11 = &unk_90D000;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_769B60())
    {
      if (sub_769B50())
      {
        v16 = sub_769B60();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          v34 = sub_769B60();

          if (v34)
          {
            v10 = 1;
            if ((sub_769A00() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (sub_769B60())
            {
              if (sub_769B50())
              {
                v38 = sub_769B60();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[502]];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_769B60())
                  {
                    if (sub_769B50())
                    {
                      v50 = sub_769B60();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_10D5D8(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v63 = xmmword_7A6160;
                        v64 = xmmword_7A6160;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_93C328 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_138D34(v8, &xmmword_99A9B0, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_769A00() & 1) == 0)
        {
LABEL_29:
          if (qword_93C328 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_99A9B0 + 1);
            v24 = *&xmmword_99A9B0;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {

    v1 = 16.0;
    if ((sub_769A00() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_769B60() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (sub_769B50())
    {
      v30 = sub_769B60();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_93C328 == -1)
    {
LABEL_41:
      v24 = floor(sub_138D34(v8, &xmmword_99A9B0, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = sub_76A950();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_769A00())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_93C328 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_99A9B0 + 1);
  v24 = *&xmmword_99A9B0;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_7A6150, *&UIEdgeInsetsZero.top);
  v63 = vbslq_s8(v41, xmmword_7A6150, *&UIEdgeInsetsZero.bottom);
  v64 = v42;
  v43 = sub_10D5D8(&off_87F230);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_141A98(v51);

  v53 = v2[v66];
  v54 = v2[v65];
  *&v69.receiver = v24;
  *&v69.super_class = v25;
  *&v70.receiver = v1;
  *&v70.super_class = v46;
  *&v71.receiver = v45;
  v71.super_class = v10;
  LOBYTE(v72[0]) = v44;
  *(v72 + 1) = v75[0];
  DWORD1(v72[0]) = *(v75 + 3);
  *(&v72[1] + 8) = v63;
  *(v72 + 8) = v64;
  *(&v72[2] + 1) = v43;
  *&v72[3] = v52;
  BYTE8(v72[3]) = v53;
  BYTE9(v72[3]) = v54;
  v73[5] = v72[1];
  v74[0] = v72[2];
  v73[1] = v69;
  v73[2] = v70;
  v73[3] = v71;
  v73[4] = v72[0];
  *(v74 + 10) = *(&v72[2] + 10);
  [v2 bounds];
  sub_2F4694(v2, v55, v56, v57, v58);
  sub_58D2A0(&v69);
  (*(v67 + 8))(v7, v68);
  v59 = &v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock];
  swift_beginAccess();
  v60 = *v59;
  if (*v59)
  {
    v61 = *(v59 + 1);

    v60(v62);
    sub_F704(v60, v61);
  }
}

double sub_58B4C8(double a1)
{
  v3 = v1;
  v5 = [v1 traitCollection];
  [v3 bounds];
  Width = CGRectGetWidth(v78);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory;
  v8 = v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded;
  v10 = v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded];
  if (sub_769A00())
  {
    v8 = &unk_90D000;
    v11 = [v5 preferredContentSizeCategory];
    v12 = UIContentSizeCategoryAccessibilityMedium;
    v13 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_769B60())
    {
      if (sub_769B50())
      {
        v14 = sub_769B60();

        v15 = 20.0;
        v16 = 10.0;
        if (Width > 405.0)
        {
          v16 = 16.0;
        }

        if (v14)
        {
          v2 = v16;
        }

        else
        {
          v2 = 20.0;
        }
      }

      else
      {

        v2 = 20.0;
      }

      v30 = [v5 preferredContentSizeCategory];
      v31 = v12;
      v32 = v13;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          v33 = sub_769B60();

          if (v33)
          {
            v10 = 1;
            if ((sub_769A00() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v34 = [v5 preferredContentSizeCategory];
            v35 = v31;
            v36 = v32;
            if (sub_769B60())
            {
              if (sub_769B50())
              {
                v37 = sub_769B60();

                if (v37)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_56:
                  v25 = v24;
LABEL_57:
                  v45 = [v5 v8[502]];
                  v46 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v47 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_769B60())
                  {
                    if (sub_769B50())
                    {
                      v48 = sub_769B60();

                      if (v48)
                      {
                        v42 = 1;
LABEL_63:
                        v41 = sub_10D5D8(_swiftEmptyArrayStorage);

                        v44 = v2;
                        v43 = v2;
                        v69 = xmmword_7A6160;
                        v70 = xmmword_7A6160;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v42 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_93C328 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_138D34(v5, &xmmword_99A9B0, 1) - v2 * (v10 - 1)) / v10);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_769A00() & 1) == 0)
        {
LABEL_31:
          if (qword_93C328 == -1)
          {
LABEL_32:
            v25 = *(&xmmword_99A9B0 + 1);
            v24 = *&xmmword_99A9B0;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v17 = ASKDeviceTypeGetCurrent();
  v18 = sub_769240();
  v20 = v19;
  if (v18 == sub_769240() && v20 == v21)
  {

    v2 = 16.0;
    if ((sub_769A00() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v26 = [v5 preferredContentSizeCategory];
    v27 = UIContentSizeCategoryAccessibilityMedium;
    v28 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_769B60() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (sub_769B50())
    {
      v29 = sub_769B60();

      if (v29)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_93C328 == -1)
    {
LABEL_43:
      v24 = floor(sub_138D34(v5, &xmmword_99A9B0, 1));
LABEL_44:
      v25 = v24;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v23 = sub_76A950();

  if (v23)
  {
    v2 = 16.0;
  }

  else
  {
    v2 = 10.0;
  }

  if (sub_769A00())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_93C328 != -1)
  {
LABEL_74:
    swift_once();
  }

  v25 = *(&xmmword_99A9B0 + 1);
  v24 = *&xmmword_99A9B0;
LABEL_45:
  if (v8 == 6)
  {
    v38 = v10;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v39 = -1;
  }

  else
  {
    v39 = 0;
  }

  v40 = vdupq_n_s64(v39);
  v69 = vbslq_s8(v40, xmmword_7A6150, *&UIEdgeInsetsZero.bottom);
  v70 = vbslq_s8(v40, xmmword_7A6150, *&UIEdgeInsetsZero.top);
  v41 = sub_10D5D8(&off_87F2C8);

  v42 = 0;
  v43 = 22.0;
  v44 = 8.0;
  v10 = 1;
LABEL_64:
  swift_beginAccess();

  v50 = sub_141A98(v49);

  v51 = v3[v7];
  v52 = v3[v9];
  *&v71 = v24;
  *(&v71 + 1) = v25;
  *&v72 = v2;
  *(&v72 + 1) = v44;
  *&v73 = v43;
  *(&v73 + 1) = v10;
  v74[0] = v42;
  *&v74[1] = v77[0];
  *&v74[4] = *(v77 + 3);
  *&v74[24] = v69;
  *&v74[8] = v70;
  *&v74[40] = v41;
  *&v74[48] = v50;
  v74[56] = v51;
  v74[57] = v52;
  v75[4] = *&v74[16];
  v76[0] = *&v74[32];
  v75[0] = v71;
  v75[1] = v72;
  v75[2] = v73;
  v75[3] = *v74;
  *(v76 + 10) = *&v74[42];
  v53 = [v3 traitCollection];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  v54 = sub_138D34(v53, &xmmword_99A9B0, 1);
  sub_769A00();
  sub_7697D0();
  v56 = v55;
  sub_769A00();
  sub_7697D0();
  v58 = v57;

  v59 = [v3 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_77D9F0;
  *(v60 + 32) = v59;
  v61 = v59;
  v62 = sub_7671E0();
  sub_2F4AE4(v62, v75, a1, v54 + v56 + v58);
  v64 = v63;
  sub_58D2A0(&v71);

  if (v3[v9] & 1) != 0 || v3[v7] != 6 || (v65 = [v3 traitCollection], v66 = sub_769A00(), v65, (v66))
  {
    v67 = [v3 traitCollection];
    sub_138D34(v67, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    sub_769A00();
    sub_7697D0();
  }

  return v64;
}

void sub_58BE34()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_76A860();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
      sub_759210();
      sub_58D194(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v8 = v7;
      sub_75A0C0();
    }

    while (v3 != v4);
  }
}

void sub_58BF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_134D8(a3, v27);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_765B70();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = sub_765B60(), , !v15))
  {

LABEL_18:

    return;
  }

  sub_761E60();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = sub_761E50();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = sub_76A860();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_764E50();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        sub_75F4B0();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_58C464(uint64_t a1)
{
  sub_58C574(319);
  if (v1 <= 0x3F)
  {
    sub_765B10();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_58C574(uint64_t a1)
{
  if (!qword_95B9C0)
  {
    sub_133D8(&qword_95B9C8, "X=\a");
    sub_58C5E4();
    v1 = sub_767490();
    if (!v2)
    {
      atomic_store(v1, &qword_95B9C0);
    }
  }
}

unint64_t sub_58C5E4()
{
  result = qword_95B9D0;
  if (!qword_95B9D0)
  {
    sub_133D8(&qword_95B9C8, "X=\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B9D0);
  }

  return result;
}

uint64_t sub_58C670(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4, v5);
}

double sub_58C6DC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_58C73C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_58C7D4()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_58C830(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_58C8F0(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_10914(v7, v5 + 32);
  return sub_58D294;
}

char *sub_58C9B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView;
  sub_759210();
  *&v4[v11] = sub_759020();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_759100();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_58CCC8()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_BD88(&unk_950960, &qword_793110);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_358A74(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_94EC40;
    v13 = &unk_793120;
    v14 = v6;
    return sub_10A2C(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_75B460();
  v15 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_93F980;
    v13 = &qword_77EDA0;
    v14 = v3;
    return sub_10A2C(v14, v12, v13);
  }

  sub_75B470();
  v18 = sub_75B460();
  sub_32A6C0(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

void sub_58D0AC(uint64_t a1)
{
  sub_2F1CA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_58D194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_58D1DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58D214()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58D24C()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_58D2F4()
{
  v1 = sub_BD88(&qword_95B9C8, "X=\a");
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_7667C0();
  sub_58C5E4();
  sub_767480();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = sub_765B10();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_58D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v27[0] = a1;
  v27[2] = a4;
  v12 = sub_7656A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  v19 = sub_BD88(&qword_9438F8, &unk_787C30);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v27 - v21;
  sub_1ED18(a2, v27 - v21, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v22[*(v20 + 56)], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();
  v23 = v27[1];

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v28)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v13 + 104))(v18, *v24, v12);
  if (*(v23 + 16))
  {
    v25 = *(v23 + 17);
    (*(v13 + 16))(v15, v18, v12);
    sub_2879B8(v25);
  }

  else
  {
    (*(v13 + 16))(v15, v18, v12);
    sub_40DC7C(0.0);
  }

  sub_765670();
  (*(v13 + 8))(v18, v12);
  return sub_10A2C(v22, &qword_9438F8, &unk_787C30);
}

uint64_t sub_58D804()
{

  return swift_deallocClassInstance();
}

uint64_t sub_58D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_75B530();
}

uint64_t sub_58D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  swift_getWitnessTable();

  return sub_75B520();
}

uint64_t sub_58DA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v29[5] = a4;
  v29[6] = a5;
  *&v29[3] = a13;
  *&v29[4] = a14;
  v29[1] = a6;
  v29[2] = a1;
  v19 = sub_BD88(&qword_9438F8, &unk_787C30);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v29 - v24;
  v26 = *v16;
  sub_1ED18(a2, v29 - v24, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v25[*(v20 + 56)], &qword_963790, qword_77EBC0);
  v29[7] = v26;
  sub_1ED18(v25, v22, &qword_9438F8, &unk_787C30);
  v27 = *(v20 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  sub_75B530();
  sub_10A2C(v25, &qword_9438F8, &unk_787C30);
  sub_10A2C(&v22[v27], &qword_963790, qword_77EBC0);
  return sub_10A2C(v22, &qword_963790, qword_77EBC0);
}

void *sub_58DC7C(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_76A6C0())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = result[7] == v2[7] && result[8] == v2[8];
      if (v5 || (sub_76A950() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (sub_76A950() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = sub_76A950();

                    return (v21 & 1);
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return (&dword_0 + 1);
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return (&dword_0 + 1);
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

double sub_58DE8C(uint64_t a1, __n128 a2)
{
  sub_76A6D0();
  sub_769330();
  if (*(v2 + 80))
  {
    sub_76AA50(1u);
    v3 = sub_769330();
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_76AA50(0);
    v4 = *(v2 + 88);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v4(v3);
  if (v5)
  {
    sub_76AA50(1u);
    sub_769330();
    goto LABEL_8;
  }

LABEL_7:
  sub_76AA50(0);
LABEL_8:

  return result;
}

double sub_58DF78()
{

  sub_F704(*(v0 + 88), *(v0 + 96));

  return result;
}

uint64_t sub_58DFB8()
{
  sub_1EB60(v0 + 16);

  sub_F704(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

double *sub_58E054(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_76A860();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_7E3E8();
  sub_10BAFC((v5 + 4), v4, a1, v6);
  v8 = v7;

  result = v5;
  if (v8 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_58E0E8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_765990();

  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = v3;
  if (v7 != v4)
  {
    v8 = v6;
    sub_4A3E2C();
  }
}

char *sub_58E1A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = sub_768C60();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75C100();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_78A4F0;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  sub_75C070();
  sub_75C0E0();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_BD88(&qword_9497B8, &qword_78A780));

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView] = sub_765950();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView] = sub_4A2A8C(v15);
  v47[0] = sub_64A6C;
  v47[1] = 0;
  v47[2] = sub_756A98;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_39ED38;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_234F64;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView] = sub_367388(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v35(v11, v36);
  return v26;
}

void sub_58E7FC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_765990();

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_4A3E2C();
  }
}

void sub_58E8D8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView) + qword_950CC0) = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_36851C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
  sub_7659C0();

  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_58E980()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_4C0ED8(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_11CCCC(v22, v15, v17, v19, v21);

    sub_A91BC(&v23);
  }
}

id sub_58EB2C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699E0();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = sub_769A00();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    sub_75C080();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
    sub_7659E0();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        sub_7659A0();
      }
    }
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = sub_7699D0();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = sub_7699D0();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = sub_7699D0();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = sub_769A00(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_58EF38()
{
  sub_28399C();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = 20.0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v2 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v2];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView);
  v3[qword_950CB8] = *(v0 + v1);
  v4 = v3;
  sub_3680EC();
}

void sub_58EFDC()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_950C78] = v0[*v2];
  v3 = v1;
  sub_367E48();
}

void sub_58F084(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_58F294(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_5910D0();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      sub_765990();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_58F294(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

void sub_58F734(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v7 = sub_760260();
  v127 = *(v7 - 8);
  __chkstk_darwin(v7);
  v135 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_765B10();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_75F730();
  v11 = *(v124 - 8);
  __chkstk_darwin(v124);
  v133 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_7656C0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v15, &v4[v18]);
  swift_endAccess();
  v134 = a2;
  sub_28026C(a2);
  v136 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = sub_765A30();
    if (!v21)
    {
      sub_396E8();
      v21 = sub_76A060();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = sub_765B20();
  sub_75E6F0();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    goto LABEL_83;
  }

  v119 = v24;
  v120 = v11;
  v25 = *&v136[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  v26 = sub_765B50();
  v132 = v27;
  v123 = sub_765B40();
  v129 = v28;
  v115 = sub_765A10();
  v131 = v29;
  sub_765A80();
  v30 = sub_765A60();
  v122 = v31;
  v130 = v10;
  sub_765B30();
  sub_765AA0();
  v32 = v134;
  v117 = v23;
  v121 = v7;
  v116 = v30;
  if (v134 == 4)
  {
    v118 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_234F64;
  }

  else
  {
    v33 = sub_234F64;
    v118 = sub_39ED38;
  }

  v25[qword_950CA8] = 0;
  v34 = *&v25[qword_950C90];
  *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_950C88];
  sub_728444(v26, v132);
  v36 = sub_760250();
  v37 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    sub_769240();
  }

  v41 = sub_7692D0();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v113 = objc_opt_self();
      [v113 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v141 = sub_A922C;
      v142 = v45;
      v114 = sub_234F64;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_23F0CC;
      v140 = &unk_897D70;
      v112 = _Block_copy(&aBlock);
      v46 = v35;
      v111 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v141 = sub_A9238;
      v142 = v47;
      v33 = v114;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_3D6D80;
      v140 = &unk_897DC0;
      v48 = _Block_copy(&aBlock);
      v49 = v111;

      v50 = v112;
      [v113 animateWithDuration:0 delay:v112 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_950CB0];
  *v51 = sub_64A6C;
  v51[1] = 0;
  v51[2] = sub_756A98;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v118;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_3680EC();
  v52 = v130;
  if (v129)
  {
    if (v134 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v53 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = sub_769210();
    type metadata accessor for Key(0);
    sub_5911B8(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
    isa = sub_7690E0().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v131 && v25[qword_950C80] == 4)
    {
      v52 = v130;
      if (v134 == 4)
      {
        v60 = v123;
        v61 = v129;
        v62 = v115;
        v63 = v131;
      }

      else
      {
        v60 = v115;
        v61 = v131;
        v62 = v123;
        v63 = v129;
      }

      sub_72853C(v60, v61, v62, v63);
    }

    else
    {
      sub_728444(v123, v129);
      v52 = v130;
    }
  }

  v64 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v134;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_950C98];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v122;
  if (v70 || (sub_760230() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_950CA0];
    v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v116 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_950CA0];
    v75 = &v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = sub_769210();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v141 = sub_A8FE4;
      v142 = v82;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_23F0CC;
      v140 = &unk_897CD0;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v141 = sub_A9004;
      v142 = v85;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_3D6D80;
      v140 = &unk_897D20;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v130;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_366B5C(v52, 1);
  [v25 setNeedsLayout];

  (*(v127 + 8))(v135, v121);
  (*(v125 + 8))(v52, v126);
  (*(v120 + 8))(v133, v124);
  v88 = sub_75E6E0();
  v89 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v90 = v136;
  v91 = *&v136[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v92 = sub_765960();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = sub_765960();

  sub_75A110();
  sub_768900();
  sub_768ED0();
  *(v94 + 16) = v143;

  v143 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = sub_76A860();
  }

  else
  {
    v96 = *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8));
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = sub_764F20();

    ++v97;
    if (v100)
    {
      sub_769440();
      if (*(&dword_10 + (v143 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v143 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v98 = v143;
      v97 = v99;
    }
  }

  v101 = sub_58E054(v98);
  v88 = v101;
  v102 = *&v136[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v143 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = sub_76A860();
  }

  else
  {
    v103 = *(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8));
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = sub_7651A0();

    ++v105;
    if (v108)
    {
      sub_769440();
      if (*(&dword_10 + (v143 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v143 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v106 = v143;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_4A348C(v110);

  [v136 setNeedsLayout];
LABEL_83:
}

double sub_590944()
{
  sub_765B70();
  sub_5911B8(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_75C750();
  if (v9)
  {
    sub_765B20();

    sub_75E6F0();
    if (!swift_dynamicCastClass() || (sub_75E6E0(), sub_764F90(), v1 = sub_769490(), , (v1 & 1) == 0))
    {

      return result;
    }

    v2 = sub_75E6E0();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = sub_76A860();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              sub_76A770();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (sub_764EE0())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          sub_765330();

          sub_769440();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    v8._rawValue = _swiftEmptyArrayStorage;
    sub_75A070(v8);
  }

  return result;
}

double sub_590BD8()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView];
  v4 = sub_765960();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  sub_7659F0();

  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_4A348C(v8);

  return result;
}

uint64_t sub_590DCC()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = sub_75C100();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_95BD08;
  if (!qword_95BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_590FB4(uint64_t a1, __n128 a2)
{
  result = sub_75C100();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_591080()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5910B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_5910D0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_950C80) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_950CA0) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_5911B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_591224(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_592EBC(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_5914B8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView(uint64_t a1)
{
  result = qword_95BD60;
  if (!qword_95BD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_591658(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_5916BC;
}

void sub_5916BC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_5917E4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_75D650();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView];
    sub_75D650();
    v3 = v2;
    v5 = v4;
    sub_26DAA8(v15);
    sub_270D88(v0, v15, v3, v5);
    sub_37538(v15);
    sub_75D650();
    CGRectGetMinX(v18);
    sub_75D650();
    CGRectGetMinY(v19);
    sub_75D650();
    sub_769D20();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v9 = v0;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_75D650();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_75D650();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_75D650();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_591B8C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_BD88(&unk_950960, &qword_793110);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer];
  if ((sub_76A1C0() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_76A1C0();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = sub_76A1C0();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_5932D4;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_23F0CC;
    v67 = &unk_897F00;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_5932EC;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_897F50;
LABEL_30:
    v66 = sub_3D6D80;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == &dword_0 + 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = sub_76A1C0();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_5932D4;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_23F0CC;
    v67 = &unk_897FA0;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_5932EC;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_897FF0;
    goto LABEL_30;
  }

  if (v19 == &dword_0 + 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != &dword_0 + 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  swift_beginAccess();
  sub_358A74(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_94EC40;
    v22 = &unk_793120;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_75B470();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_764C00();

    sub_75B460();
    v50 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_75B470();
      v52 = sub_75B460();
      sub_32A6C0(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_93F980;
    v22 = &qword_77EDA0;
    v23 = v6;
  }

  sub_10A2C(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_76A1C0();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_592F3C;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_23F0CC;
      v67 = &unk_897E60;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_592F60;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_897EB0;
      goto LABEL_30;
    }
  }
}

id sub_592574(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_5925D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
    swift_beginAccess();
    sub_358A74(&v3[v28], v7);
    v29 = sub_BD88(&unk_950960, &qword_793110);
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10A2C(v7, &qword_94EC40, &unk_793120);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_5928F4(uint64_t a1)
{
  sub_2F1CA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_5929C4(uint64_t **a1))()
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
  v2[4] = sub_591658(v2);
  return sub_21028;
}

double sub_592A48(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v3);
  sub_75D650();
  CGRectGetHeight(v4);
  sub_75D650();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_592AC0(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v4);
  sub_75D650();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_592B80()
{
  ObjectType = swift_getObjectType();
  v1 = sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView, &unk_7A65E0);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_592BF4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView, &unk_7A65E0);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_592C80(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_592EBC(&unk_95BD80, type metadata accessor for AppEventView, &unk_7A65E0);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_592D3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_592EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_592F04()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_592F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_592F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_592F9C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_592FC8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_clickAction;
  v3 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_897DE8;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_BD88(&qword_9477F0, qword_780200);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77B6D0;
  *(v14 + 32) = sub_7676F0();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_5932F4(uint64_t a1, __n128 a2)
{
  v4 = sub_75EE00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView);
  v19 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v20 = &protocol witness table for UIView;
  v18 = v8;
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel);
  v16 = sub_75BB20();
  v17 = &protocol witness table for UIView;
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v15[5] = &protocol witness table for UIView;
  v15[6] = v9;
  v15[4] = v16;
  v15[1] = v10;
  (*(v5 + 16))(v7, a1, v4);
  v11 = v8;
  v12 = v9;
  v13 = v10;
  return sub_75EDB0();
}

void *sub_59345C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  sub_75C7B0();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v12, v2 + v13, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  sub_765B70();
  sub_5957C8(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = sub_75C750();
  v15 = v17;
  if (v17)
  {
    sub_1ED18(v2 + v13, v9, &unk_955AA0, &qword_783ED0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10A2C(v9, &unk_955AA0, &qword_783ED0);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*&stru_B8.segname[(swift_isaMask & *v2) + 16])(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_593770@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766690();
  __chkstk_darwin(v6 - 8);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7666A0();
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F7A8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v36 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v38 = v3[13];
  v38(v5);
  v45 = sub_766CA0();
  v58[3] = v45;
  v58[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v2;
  v57 = &protocol witness table for FontSource;
  v14 = sub_B1B4(&v55);
  v37 = v3[2];
  v43 = v3 + 2;
  v37(v14, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v44 = v3 + 1;
  v34 = v15;
  v15(v5, v2);
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v8, qword_99F7C0);
  (v11)(v5, v35, v8);
  v42 = v13;
  v16 = v13;
  v17 = v38;
  (v38)(v5, v16, v2);
  v56 = v45;
  v33 = v3 + 13;
  v31 = v8;
  v57 = &protocol witness table for StaticDimension;
  sub_B1B4(&v55);
  v30 = v12;
  v32 = v11;
  v53 = v2;
  v54 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v52);
  v19 = v37;
  v37(v18, v5, v2);
  sub_766CB0();
  v20 = v34;
  v34(v5, v2);
  (v11)(v5, v36, v8);
  (v17)(v5, v42, v2);
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v21 = v20;
  v22 = v39;
  v23.super.isa = v39;
  isa = sub_766490(v23).super.isa;
  [(objc_class *)isa lineHeight];
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v49);
  v19(v25, v5, v2);
  sub_766CB0();

  v21(v5, v2);
  v32(v5, v35, v31);
  (v17)(v5, v42, v2);
  v50 = v45;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(v49);
  v26.super.isa = v22;
  v27 = sub_766490(v26).super.isa;
  [(objc_class *)v27 lineHeight];
  v47 = v2;
  v48 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v46);
  v19(v28, v5, v2);
  sub_766CB0();

  v21(v5, v2);
  v47 = sub_766970();
  v48 = &protocol witness table for ZeroDimension;
  sub_B1B4(v46);
  sub_766960();
  return sub_75EDE0();
}

char *sub_593D68(double a1, double a2, double a3, double a4)
{
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99F7A8);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = sub_75BB20();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = sub_75BB10();
  v51 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v18, qword_99F7C0);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = sub_75BB10();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = sub_7656C0();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v38 = v37;
  v39 = sub_76A030();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = sub_769FF0();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

id sub_5943A4()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75EE10();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75EE00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v21.receiver = v1;
  v21.super_class = v13;
  result = objc_msgSendSuper2(&v21, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v19 = v2;
    v16 = v15;
    sub_593770(v15, v12);

    sub_5932F4(v12, v17);
    v18 = [v1 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();

    sub_75EDC0();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v19);
    (*(v6 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

id sub_5946D8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_59489C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_769240();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_769240();
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
        v11 = sub_7B5CC(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_7B5CC((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[2 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_BD88(&qword_941BA0, &qword_7811C0);
  swift_arrayDestroy();
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  v19 = sub_7691A0();

  return v19;
}

id sub_594B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_95BDC8;
  if (!qword_95BDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_594CB0(uint64_t a1)
{
  sub_282A74(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_282A74(319, qword_942ED0, &type metadata accessor for PageGrid);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_594DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_594E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620, &unk_77E220);
}

uint64_t sub_594EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_93F620, &unk_77E220);
  return swift_endAccess();
}

double sub_595004()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75EE00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75DA30();
  sub_593770(v8, v7);

  sub_75DA20();
  sub_765630();
  (*(v1 + 8))(v3, v0);
  v9 = sub_75DA30();
  sub_75EDD0();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_595214()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel];
  sub_765A40();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  sub_765580();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel];
  sub_765A60();
  if (v15)
  {
    v16 = sub_769210();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}