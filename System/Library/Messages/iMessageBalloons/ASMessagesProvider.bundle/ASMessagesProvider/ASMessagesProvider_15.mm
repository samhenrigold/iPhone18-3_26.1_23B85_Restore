double sub_1B1748(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = a4;
  v11.super.isa = sub_7604E0(v10).super.isa;
  v12 = [(objc_class *)a4 preferredContentSizeCategory];
  v13 = sub_769B20();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() configurationWithFont:v11.super.isa scale:v14];

  if (sub_765160())
  {
    v16 = v15;
    if (sub_765190())
    {
      v17 = sub_759910();
      goto LABEL_11;
    }

    if (sub_765180())
    {
      v17 = sub_56EBA8(a1, v15);
LABEL_11:
      v19 = v17;

      if (v19)
      {
        [v19 size];
        v18 = v20;

        return v18;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((sub_765190() & 1) != 0 && (sub_7651B0(), v21))
  {
    v22 = v15;
    v23 = sub_759920();

    [v23 size];
    v18 = v24;
  }

  else
  {

    sub_763DC0();
    sub_B170(v28, v28[3]);
    sub_766710();
    sub_BEB8(v28);
    sub_765260();
    sub_7666A0();
    sub_766650();
    v18 = v25;

    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_1B1A4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1B1AA0(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v5 = sub_763E00();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_766D70();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767030();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  __chkstk_darwin(v15);
  v48 = v41 - v16;
  v47 = sub_763DF0();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_75D790();
  v41[3] = sub_75D7B0();
  v41[2] = v22;
  sub_763DD0();
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v24 = sub_BE38(v23, qword_99B6F8);
  v25 = [a4 traitCollection];
  sub_1B1748(v21, v20, v24, v25);

  v26 = sub_7670D0();
  v41[1] = a4;
  v27 = v26;
  swift_allocObject();
  v28 = sub_7670B0();
  v41[0] = v21;
  v29 = v28;
  sub_767020();
  v30 = sub_760500();
  v56[3] = v30;
  v56[4] = sub_1B23EC(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v31 = sub_B1B4(v56);
  (*(*(v30 - 8) + 16))(v31, v24, v30);
  sub_766F80();
  v32 = *(v9 + 8);
  v32(v11, v8);
  sub_BEB8(v56);
  sub_763DB0();
  v33 = v48;
  sub_767010();
  v32(v14, v8);
  (*(v9 + 16))(v14, v33, v8);
  sub_766D50();
  v34 = v43;
  sub_766D90();
  sub_766D40();
  (*(v44 + 8))(v34, v46);
  sub_134D8(v56, v55);
  v53 = v27;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v29;
  v35 = v45;
  v36 = v47;
  (*(v45 + 16))(v42, v20, v47);

  v37 = v49;
  sub_763D80();
  sub_763D90();
  v39 = v38;

  (*(v50 + 8))(v37, v51);
  sub_BEB8(v56);
  v32(v33, v8);
  (*(v35 + 8))(v20, v36);
  return v39;
}

uint64_t sub_1B20C4(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = v1;
  v3.super.isa = sub_7604E0(v2).super.isa;
  v4 = [(objc_class *)v1 preferredContentSizeCategory];
  v5 = sub_769B20();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() configurationWithFont:v3.super.isa scale:v6];

  return sub_759120();
}

void sub_1B21B0(__n128 a1)
{
  sub_763DD0();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork) = 0;
  v2 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  v4 = sub_75FC90();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v7 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v10 = sub_BE38(v9, qword_99B6F8);
  sub_1B232C(v10, v1 + v8);
  sub_76A840();
  __break(1u);
}

uint64_t sub_1B232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2390(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B23EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B2448()
{
  result = qword_948670;
  if (!qword_948670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948670);
  }

  return result;
}

void sub_1B249C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = sub_75DC30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766690();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v38);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75B1B0();
  if (swift_dynamicCast())
  {
    v35 = a2;
    v18 = v37;
    v19 = sub_75B180();
    if (v19)
    {
      v34 = v15;
      v20 = *(*(*(v36 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v20 && (v33[4] = v19, v21 = type metadata accessor for VideoView(0), (v22 = swift_dynamicCastClass()) != 0))
      {
        v33[2] = v21;
        v33[3] = v18;
        v23 = qword_99A200;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v33[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        sub_75DB80();
        (*(v11 + 8))(v13, v10);
        v27 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v17, v9, v14);
          sub_766600();
          sub_764BC0();
          sub_765330();

          sub_1B5380(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
          sub_75A050();

          (*(v27 + 8))(v17, v14);
          return;
        }

        sub_10A2C(v9, &unk_948720, &unk_784970);
      }

      else
      {
      }
    }

    if (sub_75B190())
    {
      sub_765330();
      v28 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView;
      v29 = v36;
      v30 = *(v36 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v30 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      v31 = *(v29 + v28);
      sub_759210();
      sub_1B5380(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v32 = v31;
      sub_75A050();
    }
  }
}

id sub_1B2A9C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = sub_75B220();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = sub_75A6B0();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = sub_75A6E0();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_75DC30();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = sub_7623A0();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_BD88(&unk_9457F0, qword_783FD0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = sub_763750();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = sub_75B130();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_75FA00();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_75F9A0();
  sub_1B5380(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v46 = sub_76A520();
  (*(v41 + 8))(v44, v40);
  sub_75B140();
  v47 = sub_75B120();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = sub_75B150();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = sub_75B170();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1B5380(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      sub_760940();
      v61 = sub_BD88(&unk_948740, &unk_784920);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1B5380(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v64 = v107;
      sub_760940();
      sub_1DFEBC(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10A2C(v60, &unk_948730, &qword_788DD0);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1B3BE0(v131, v53);
  if (sub_75B180())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    sub_764BC0();
    sub_765260();
    v65 = v116;
    sub_7666A0();

    v66 = sub_766690();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v67 = v119;
    sub_764BD0();
    v68 = sub_7570A0();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    sub_764B90();
    v70 = v121;
    sub_764B80();
    v71 = type metadata accessor for VideoView(0);
    sub_1B5380(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v130 = v71;
    v72 = sub_75C340();
    sub_10A2C(v70, &unk_948710, &qword_77FF90);
    sub_10A2C(v69, &unk_948710, &qword_77FF90);
    sub_10A2C(v67, &unk_93FD30, qword_77F240);
    sub_10A2C(&v132, &unk_9443A0, &unk_77E240);
    v73 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = sub_76A1C0();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v72;
    v87 = v72;
    sub_1F92A8(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_940578 + 8) = &off_891CF8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (sub_75B190())
  {

    v82 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v82;
    v85 = v82;
    sub_1F92A8(v84);

    sub_1F7F5C();
  }

  sub_75B160();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView];
    v91 = sub_769210();

    [v90 setText:v91];

    sub_75B1A0();
    v92 = v125;
    sub_75B230();

    v93 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = sub_75B210();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer];
  v100 = sub_75B180();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_1B3BE0(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v3 - 8);
  v80 = &v69 - v4;
  v5 = sub_BD88(&unk_95CF90, &unk_784980);
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v76 = &v69 - v6;
  v74 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v74);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v69 - v9;
  __chkstk_darwin(v10);
  v75 = (&v69 - v11);
  __chkstk_darwin(v12);
  v14 = (&v69 - v13);
  v15 = sub_75B240();
  v70 = *(v15 - 8);
  v71 = v15;
  __chkstk_darwin(v15);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75B130();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  __chkstk_darwin(v24);
  v26 = &v69 - v25;
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  sub_75B140();
  v30 = sub_75B0F0();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v77 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v82 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v83.receiver = v32;
  v83.super_class = v33;
  objc_msgSendSuper2(&v83, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v82 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView);
  sub_75B140();
  v37 = sub_75B120();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v82 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView);
  sub_75B140();
  v41 = sub_75B100();
  v31(v23, v17);
  if (!v41)
  {
    sub_75B1A0();
    v42 = v69;
    sub_75B250();

    v41 = sub_655B6C(v43);
    (*(v70 + 8))(v42, v71);
  }

  v44 = v74;
  [v40 setTextColor:v41];

  if (qword_93CA68 != -1)
  {
    swift_once();
  }

  v45 = sub_BE38(v44, qword_99CA60);
  sub_FCD60(v45, v14, v46);
  sub_75B140();
  v47 = sub_75B0D0();
  v31(v20, v17);

  *v14 = v47;
  sub_75B140();
  v48 = sub_75B0E0();
  v31(v20, v17);

  v14[1] = v48;
  sub_75B140();
  v49 = sub_75B100();
  v31(v20, v17);

  v14[2] = v49;
  sub_75B140();
  v50 = sub_75B110();
  v31(v20, v17);

  v14[3] = v50;
  if (qword_93CA60 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v44, qword_99CA48);
  v52 = v75;
  sub_FCD60(v51, v75, v53);
  sub_75B140();
  v54 = sub_75B0D0();
  v31(v20, v17);

  *v52 = v54;
  sub_75B140();
  v55 = sub_75B0E0();
  v31(v20, v17);

  v52[1] = v55;
  sub_75B140();
  v56 = sub_75B100();
  v31(v20, v17);

  v52[2] = v56;
  sub_75B140();
  v57 = sub_75B110();
  v31(v20, v17);

  v52[3] = v57;
  sub_FCD60(v14, v72, v58);
  sub_FCD60(v52, v73, v59);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  v60 = v76;
  sub_7592D0();
  v61 = sub_75B1A0();
  v63 = v78;
  v62 = v79;
  v64 = v80;
  (*(v78 + 16))(v80, v60, v79);
  v65.n128_f64[0] = (*(v63 + 56))(v64, 0, 1, v62);
  sub_5F8FA0(v65, v61, v64, v81);

  sub_10A2C(v64, &qword_944EA0, &unk_78A060);
  v66.n128_f64[0] = (*(v63 + 8))(v60, v62);
  sub_FCDC4(v52, v66);
  return sub_FCDC4(v14, v67);
}

id sub_1B4598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1B46D0(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_769B30();
  if (v6)
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77B6C0;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
    isa = sub_769450().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1B4888(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_75EEC0();
  __chkstk_darwin(v5 - 8);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75EEE0();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762D10();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_76A920();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v18 = UIContentSizeCategoryExtraExtraExtraLarge;
  v19 = swift_unknownObjectRetain();
  v20 = sub_1B46D0(v19, v18);
  swift_unknownObjectRelease();

  v21 = qword_93D120;
  v56 = *&v20[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_BD88(&unk_95CF90, &unk_784980);
  sub_BE38(v22, qword_99DB38);
  v61[0] = v20;
  v23 = v20;
  sub_7592B0();

  type metadata accessor for BreakoutDetailsView(0);
  v24 = sub_75B1A0();
  v25 = v23;
  sub_5F8088(v24, v16, v25, v61);

  sub_16C320(v61, &v58);
  v26 = swift_allocObject();
  sub_16C3BC(&v58, (v26 + 16));
  v27 = sub_7670D0();
  swift_allocObject();
  v28 = sub_767090();
  if (sub_75B150() && (, sub_75B170()))
  {
    v47 = v16;
    v29 = v11;

    if (qword_93D118 != -1)
    {
      swift_once();
    }

    v30 = sub_766CA0();
    sub_BE38(v30, qword_99DB20);
    v31 = v25;
    sub_766470();
    sub_766700();

    (*(v48 + 8))(v13, v29);
    swift_allocObject();
    v32 = sub_7670B0();

    v16 = v47;
  }

  else
  {
    v32 = 0;
  }

  sub_75B160();
  if (v33)
  {
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if (qword_93DB08 != -1)
    {
      swift_once();
    }

    v34 = sub_7666D0();
    sub_BE38(v34, qword_99F910);
    sub_769E10();
    v35 = sub_7653B0();
    *(&v59 + 1) = v35;
    v60 = sub_1B5380(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v36 = sub_B1B4(&v58);
    (*(*(v35 - 8) + 104))(v36, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
    sub_765C30();
    sub_BEB8(&v58);
    v37 = v49;
    sub_762D00();
    sub_762CE0();
    (*(v50 + 8))(v37, v51);
  }

  else
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  v38 = v25;
  sub_440FB8(v38, v52, a1);

  swift_allocObject();
  v39 = sub_7670B0();
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v57[18] = v27;
  v57[19] = &protocol witness table for LayoutViewPlaceholder;
  v57[14] = &protocol witness table for LayoutViewPlaceholder;
  v57[15] = v39;
  v57[13] = v27;
  v57[10] = v28;
  if (!v32)
  {
    v27 = 0;
    v40 = 0;
    v57[6] = 0;
    v57[7] = 0;
  }

  v57[5] = v32;
  v57[8] = v27;
  v57[9] = v40;
  sub_E02D8(&v58, v57);

  v41 = v53;
  sub_75EED0();
  v42 = v38;
  sub_75EE90();
  v44 = v43;

  (*(v54 + 8))(v41, v55);
  sub_10A2C(&v58, &qword_9417D0, &unk_780EA0);
  sub_BEB8(v61);
  sub_FCDC4(v16, v45);
  return v44;
}

uint64_t sub_1B5024()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1B505C(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_75EEC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_440FB8(a4, v9, a1);
  sub_75EEE0();
  sub_1B5380(&qword_948750, &type metadata accessor for UpsellBreakoutLayout, &protocol conformance descriptor for UpsellBreakoutLayout);
  sub_766ED0();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = objc_opt_self();
  v13 = [v12 fractionalWidthDimension:1.0];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = objc_opt_self();
  v19 = [v12 fractionalWidthDimension:1.0];
  v20 = [v12 absoluteDimension:v11];
  v21 = [v15 sizeWithWidthDimension:v19 heightDimension:v20];

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77D9F0;
  *(v22 + 32) = v17;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = sub_769450().super.isa;

  v25 = [v18 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v25;
}

uint64_t sub_1B5380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B53C8(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_76A6C0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5454()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_1B54B0()
{
  v1 = *v0;
  sub_76AA30();
  (*(*v1 + 104))(v3);
  return sub_76AA80();
}

Swift::Int sub_1B5558(uint64_t a1)
{
  sub_76AA30();
  (*(**v1 + 104))(v3);
  return sub_76AA80();
}

unint64_t sub_1B5608()
{
  result = qword_948810;
  if (!qword_948810)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948810);
  }

  return result;
}

char *sub_1B565C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_948818) = 0;
  v5 = qword_948820;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_46BDD4(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_BD88(&qword_9477F0, qword_780200);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77B6D0;
    *(v10 + 32) = sub_767B80();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_BE70(0, &unk_94A790, UICollectionView_ptr);
    sub_769F40();
    swift_unknownObjectRelease();

    v11 = sub_7629C0();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);

      v14 = sub_764C60();
      v16 = v15;
      v22 = 0u;
      v23 = 0u;

      v24.is_nil = sub_1B81A8(v12, a1, 0, &v22, v17);
      v27.value._countAndFlagsBits = v14;
      v27.value._object = v16;
      v24.value.super.isa = 0;
      v25.value.super.super.isa = 0;
      isa = sub_769840(v27, v24, v25, v26).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v22, v23}];
    }

    v19 = v7;
    sub_7629E0();
    v20 = sub_769210();

    [v19 setTitle:v20];

    v19[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
    v21 = [v19 navigationItem];
    [v21 setLargeTitleDisplayMode:1];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B591C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&qword_948DE0, &qword_78A178);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_75C840();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_757640();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_948818;
  if ((*(v1 + qword_948818) & 1) == 0)
  {
    sub_1B5BD4(v6);
    v18 = sub_BD88(&qword_948DE8, &qword_78A180);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10A2C(v6, &qword_948DE0, &qword_78A178);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_1B6980(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_1B5BD4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v92 = sub_75A430();
  v65 = *(v92 - 8);
  __chkstk_darwin(v92);
  v75 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_75C820();
  v83 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_75C840();
  v67 = *(v90 - 8);
  __chkstk_darwin(v90);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_757640();
  v66 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_BD88(&unk_959540, &qword_784830);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v62 - v8;
  v94 = sub_BD88(&qword_948DF8, &qword_78A190);
  v84 = *(v94 - 8);
  __chkstk_darwin(v94);
  v73 = (&v62 - v9);
  v10 = sub_BD88(&qword_948E00, &unk_78A198);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v93 = sub_BD88(&unk_94F1F0, &qword_782290);
  v16 = *(v93 - 8);
  __chkstk_darwin(v93);
  v18 = &v62 - v17;
  v19 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_75DAB0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v91 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  sub_7629D0();
  if (!*(&v96 + 1))
  {
    sub_10A2C(&v95, &unk_9443A0, &unk_77E240);
    goto LABEL_24;
  }

  v98[0] = v95;
  v98[1] = v96;
  v99 = v97;
  sub_1B7A9C(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1EB60(v98);
    sub_10A2C(v21, &unk_957F70, &unk_780270);
    goto LABEL_24;
  }

  v26 = v91;
  (*(v23 + 32))(v91, v21, v22);
  v27 = qword_9593C8;
  swift_beginAccess();
  v28 = *(v25 + v27);
  if (!v28)
  {
    (*(v23 + 8))(v26, v22);
    sub_1EB60(v98);
    swift_endAccess();
    goto LABEL_24;
  }

  v62 = v23;
  v63 = v22;
  swift_endAccess();
  v29 = v28;
  v30 = v26;
  sub_75DAA0();
  v31 = sub_762D60();

  result = (*(v16 + 8))(v18, v93);
  if (!v31)
  {
    (*(v62 + 8))(v30, v63);
    sub_1EB60(v98);
LABEL_24:
    v58 = v72;
    v55 = sub_BD88(&qword_948DE8, &qword_78A180);
    v56 = *(*(v55 - 8) + 56);
    v57 = v58;
    return v56(v57, 1, 1, v55);
  }

  v86 = v15;
  v93 = v6;
  v33 = 0;
  v69 = v31;
  v34 = *(v31 + 16);
  v68 = v74 + 16;
  v35 = v84;
  v84 += 6;
  v85 = (v35 + 7);
  v82 = (v74 + 32);
  v81 = v83 + 1;
  v71 = (v65 + 11);
  v70 = enum case for ProductReview.ReviewSource.user(_:);
  v80 = (v67 + 8);
  v79 = (v66 + 8);
  v83 = (v74 + 8);
  v64 = (v65 + 1);
  v65 += 12;
  v36 = v78;
  v37 = v77;
  v38 = v76;
LABEL_9:
  v39 = v94;
  if (v33 == v34)
  {
LABEL_10:
    v40 = 1;
    v33 = v34;
    goto LABEL_14;
  }

  while ((v33 & 0x8000000000000000) == 0)
  {
    if (v33 >= *(v69 + 16))
    {
      goto LABEL_29;
    }

    v41 = v74;
    v42 = v69 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33;
    v43 = *(v39 + 48);
    v44 = v73;
    *v73 = v33;
    (*(v41 + 16))(&v44[v43], v42, v37);
    v45 = v44;
    v39 = v94;
    sub_109C4(v45, v12, &qword_948DF8, &qword_78A190);
    v40 = 0;
    ++v33;
LABEL_14:
    (*v85)(v12, v40, 1, v39);
    v46 = v86;
    sub_109C4(v12, v86, &qword_948E00, &unk_78A198);
    if ((*v84)(v46, 1, v39) == 1)
    {

      (*(v62 + 8))(v91, v63);
      sub_1EB60(v98);
      v55 = sub_BD88(&qword_948DE8, &qword_78A180);
      v56 = *(*(v55 - 8) + 56);
      v57 = v72;
      return v56(v57, 1, 1, v55);
    }

    v47 = v12;
    (*v82)(v38, v46 + *(v39 + 48), v37);
    sub_75DA90();
    sub_7575B0();
    v48 = v87;
    sub_75C810();
    v49 = v36;
    v50 = v93;
    sub_75DA00();
    (*v81)(v48, v89);
    sub_75A450();
    sub_1B8474(&qword_944D00, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
    sub_75C750();
    if (!v95)
    {
      (*v80)(v50, v90);
      (*v79)(v49, v88);
      result = (*v83)(v38, v37);
      v36 = v49;
      v12 = v47;
      goto LABEL_9;
    }

    v51 = v75;
    sub_75A440();
    v52 = (*v71)(v51, v92);
    if (v52 != v70)
    {

      (*v80)(v93, v90);
      v36 = v78;
      (*v79)(v78, v88);
      v38 = v76;
      v37 = v77;
      (*v83)(v76, v77);
      result = (*v64)(v51, v92);
      v12 = v47;
      goto LABEL_9;
    }

    v53 = v90;
    (*v65)(v51, v92);
    sub_764FD0();
    v54 = sub_76A6C0();

    sub_1EB60(&v95);
    v38 = v76;
    v37 = v77;
    (*v83)(v76, v77);
    v36 = v78;
    v39 = v94;
    if (v54)
    {

      (*(v62 + 8))(v91, v63);
      sub_1EB60(v98);
      v59 = sub_BD88(&qword_948DE8, &qword_78A180);
      v60 = *(v59 + 48);
      v61 = v72;
      (*(v66 + 32))(v72, v36, v88);
      (*(v67 + 32))(v61 + v60, v93, v53);
      return (*(*(v59 - 8) + 56))(v61, 0, 1, v59);
    }

    (*v80)(v93, v53);
    result = (*v79)(v36, v88);
    v12 = v47;
    if (v33 == v34)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B6980(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_BD88(&unk_959540, &qword_784830);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&qword_948DF0, &qword_78A188);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_75C790();
  sub_768B30();
  sub_EECB0();
  sub_768AF0();
  sub_75C7E0();
  sub_762A00();
  sub_1B8474(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_762460();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = sub_757550().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1B6C5C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1B591C(a3);
}

uint64_t sub_1B6CB0(uint64_t a1)
{
  v2 = sub_BD88(&qword_948DD8, &qword_78A170);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (sub_7629B0() & 1) == 0)
  {
    sub_5FFFE8(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1B6DF8(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_6C6800;
  v14 = &unk_8873D8;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_1B8468;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_6C6800;
  v14 = &unk_887428;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_1B6F70(int a1, id a2)
{
  v2 = [a2 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B6FD0(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1B6DF8(a3, a4, a5);
  swift_unknownObjectRelease();
}

unint64_t sub_1B7050@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_99E1A8);
  sub_75A3C0();
  swift_allocObject();

  v4 = sub_75A3B0();
  swift_allocObject();
  v5 = sub_75A3B0();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_1B83C4();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_1B70F4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController, &unk_7A2710);
  v2 = sub_763A60();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = sub_763A50();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v20, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_134D8(v17, v16);

  v11 = sub_762B60();
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_1B73F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_1B8474(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1B8474(&qword_948DC8, type metadata accessor for ReviewsPageShelfSupplementaryProvider, &unk_7ADC90);

  return v2;
}

uint64_t sub_1B750C()
{
  v1 = v0;
  swift_getObjectType();
  sub_5FC980();
  sub_7637E0();
  if (swift_dynamicCastClass())
  {
    v2 = sub_7637B0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_7637D0();
  }

  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77E280;
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController, &unk_7A2710);

  sub_763A80();
  sub_1B8474(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_1B8474(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_94CC10) = 0;
  swift_unknownObjectWeakAssign();
  sub_134D8(v10, v4 + qword_94CC08);

  v5 = sub_764290();
  sub_BEB8(v10);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_948820);
  v7 = sub_1B8474(&qword_948DC0, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver, &unk_7B09A8);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8._rawValue = v3;
  sub_7637A0(v8);

  return v2;
}

void sub_1B7834(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 traitCollection];
  v4 = sub_769A20();

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    if (qword_93C8D0 != -1)
    {
      swift_once();
    }

    v7 = [qword_99C718 resolvedColorWithTraitCollection:v4];
    [v6 setBackgroundColor:v7];

    *(*&v2[qword_948820] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B795C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_10974(a1, *(a1 + 24));
    sub_767630();
  }
}

void sub_1B7A04()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_948820] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B7A9C(uint64_t a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_75DAB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_9593C8;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (!v18)
  {
    v30 = 1;
    goto LABEL_19;
  }

  v43 = v4;
  v46 = v14;
  v19 = v18;
  v20 = [v2 collectionView];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_767A50();

  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (!v22)
  {
    v30 = 1;
    v14 = v46;
    goto LABEL_19;
  }

  v34 = a1;
  v23 = v15;
  v24 = (v15 + 48);
  v42 = (v23 + 32);
  v40 = (v9 + 8);
  v39 = enum case for Shelf.ContentType.productReview(_:);
  v38 = (v5 + 104);
  v41 = (v5 + 8);
  v33 = v23;
  v35 = (v23 + 8);
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController, &unk_7A2710);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    sub_763A20();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10A2C(v13, &unk_957F70, &unk_780270);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    sub_75DAA0();
    swift_getKeyPath();
    v27 = v45;
    sub_768750();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_1B8474(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = sub_76A950();
    v29 = *v41;
    (*v41)(v51, v28);
    v29(v50, v28);

    v22 = v37;
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v46;
    (*v35)(v48, v46);
LABEL_7:
    if (v22 == ++v25)
    {
      v30 = 1;
      a1 = v34;
      goto LABEL_18;
    }
  }

  v31 = *v41;
  (*v41)(v51, v28);
  v31(v50, v28);

LABEL_17:
  a1 = v34;
  v14 = v46;
  v36(v34, v48, v46);
  v30 = 0;
LABEL_18:
  v15 = v33;
LABEL_19:
  (*(v15 + 56))(a1, v30, 1, v14);
}

uint64_t type metadata accessor for ReviewsDiffablePageViewController(uint64_t a1)
{
  result = qword_948850;
  if (!qword_948850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_764C60();
  if (v8)
  {
    v9 = sub_764C70();
    if (v9)
    {
      v10 = v9;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v10, 0);
      }
    }

    sub_BE70(0, &qword_955FA0, UIAction_ptr);
    sub_38EE0(a4, v15);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v12 + 32) = a1;
    v13 = v15[1];
    *(v12 + 40) = v15[0];
    *(v12 + 56) = v13;
    v11 = sub_76A1F0();
    sub_10A2C(a4, &unk_93FBD0, &qword_77DFA0);
  }

  else
  {
    sub_10A2C(a4, &unk_93FBD0, &qword_77DFA0);

    return 0;
  }

  return v11;
}

uint64_t sub_1B835C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_BEB8((v0 + 40));
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1B83C4()
{
  result = qword_948DD0;
  if (!qword_948DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948DD0);
  }

  return result;
}

double sub_1B8418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1B8430()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1B8474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_101F5C(0, v2);

  return v3 & 1;
}

void MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = sub_760D90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v8], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    (*(v4 + 8))(v6, v3);
  }
}

id sub_1B880C()
{
  v1 = v0;
  v2 = sub_760D90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);

  sub_760D70();
  (*(v3 + 8))(v5, v2);
  result = sub_10B54();
  v11 = (v10 >> 1) - v9;
  if (v10 >> 1 == v9)
  {
    goto LABEL_5;
  }

  if ((v10 >> 1) > v9)
  {
    v12 = (v8 + 16 * v9);
    do
    {
      v13 = *v12;
      v12 += 2;
      [v1 addSubview:v13];
      --v11;
    }

    while (v11);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_1B8988(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_1B880C();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = sub_760D90();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B8AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = sub_760D90();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B8B38(uint64_t a1, char **a2)
{
  v4 = sub_760D90();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

double MetadataRibbonView.metadataRibbonItemModels.getter()
{
  swift_beginAccess();

  return result;
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_7664F0();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_760D90();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_760DA0();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      sub_75FCC0();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_7AB00(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_7AB00((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10A2C(&v34, &qword_948E10, &qword_78A1E0);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    sub_760D40();
    sub_75D650();
    v23 = v30;
    sub_760D60();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

void MetadataRibbonView.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v30 = a1;
  v28 = sub_760D90();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_760DA0();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = v6 + 40;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 8);
      swift_getObjectType();
      v12 = v11;
      sub_75FCC0();
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v31 = v37;
      v32 = v38;

      if (*(&v32 + 1))
      {
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v42 = v36;
        v37 = v31;
        v38 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_7AB00(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_7AB00((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[11 * v14];
        v16 = v38;
        *(v15 + 2) = v37;
        *(v15 + 3) = v16;
        v17 = v39;
        v18 = v40;
        v19 = v41;
        *(v15 + 56) = v42;
        *(v15 + 5) = v18;
        *(v15 + 6) = v19;
        *(v15 + 4) = v17;
      }

      else
      {
        sub_10A2C(&v31, &qword_948E10, &qword_78A1E0);
      }

      ++v8;
      v10 += 16;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v20 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    v21 = v29;
    swift_beginAccess();
    (*(v26 + 16))(v24, v21 + v20, v28);
    v22 = v23;
    sub_760D40();
    sub_760D50();
    (*(v25 + 8))(v22, v27);
  }
}

id sub_1B9620(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v45 = a2;
  v4 = sub_760D90();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_761C80();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v63 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v59 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v60 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v57 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v58 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v55 = enum case for MetadataRibbonItemViewType.divider(_:);
  v56 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v62 = a1 & 0xC000000000000001;
  v54 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v52 = a1;
  if (v13)
  {
    v53 = v9;
    v9 = v13;
    v14 = 0;
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v51 = v7++;
    while (1)
    {
      if (v62)
      {
        sub_76A770();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v63;
          v13 = v9;
          v9 = v53;
          v7 = v51;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v61 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = sub_76A860();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      sub_75D750();
      v17 = (*v15)(v12, v6);
      if (v17 == v60 || v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54)
      {
        sub_76A7A0();
        sub_76A7D0();
        a1 = v52;
        sub_76A7E0();
        sub_76A7B0();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v49;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v53 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v51 = v29;
      v12 = v27;
      while (1)
      {
        if (v62)
        {
          sub_76A770();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v61 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        sub_75D750();
        v30 = (*v28)(v9, v6);
        if (v30 == v60)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_783CE8;
          v33 = &unk_93EBD8;
          goto LABEL_60;
        }

        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView(0);
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_785408;
          v33 = &unk_93F600;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_789E18;
          v33 = &unk_93EBD0;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonStarRatingView(0);
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_79F4C8;
          v33 = &unk_93F610;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonTagView(0);
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_7A8490;
          v33 = &unk_93EBC8;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonBarView(0);
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_7AD020;
          v33 = &unk_93F5F0;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v53)
        {
          v29 = v51;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView(0);
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_7B0870;
      v33 = &unk_93EBB8;
LABEL_60:
      v34 = sub_1BAC3C(v33, v31, v32);
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_75FD30();
      sub_75D770();
      sub_75FD10();

      v29 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_7AC98(0, *(v29 + 2) + 1, 1, v29);
      }

      v37 = *(v29 + 2);
      v36 = *(v29 + 3);
      if (v37 >= v36 >> 1)
      {
        v29 = sub_7AC98((v36 > 1), v37 + 1, 1, v29);
      }

      *(v29 + 2) = v37 + 1;
      v38 = &v29[2 * v37];
      *(v38 + 4) = v35;
      *(v38 + 5) = v34;
      a1 = v52;
    }

    while (v27 != v53);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v39 = v49;
  sub_1B8988(v29);
  v41 = v47;
  v40 = v48;
  v42 = v46;
  (*(v47 + 16))(v46, v45, v48);
  v43 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v41 + 24))(&v39[v43], v42, v40);
  swift_endAccess();
  [v39 setNeedsLayout];
  (*(v41 + 8))(v42, v40);
  return [v39 setNeedsLayout];
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_760D90();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_1BA000;
}

void sub_1BA000(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView(uint64_t a1)
{
  result = qword_948E40;
  if (!qword_948E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1D4(uint64_t a1)
{
  result = sub_760D90();
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

void sub_1BA288(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = sub_765240();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_24;
    }

    v9 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    if (v9)
    {
      v10 = 0;
      v22 = v9;
      v23 = v6 & 0xC000000000000001;
      v16 = v3 + 1;
      v17 = v6;
      v11 = 32;
      v18 = v7;
      do
      {
        if (v23)
        {
          sub_76A770();
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v9 = sub_76A860();
            goto LABEL_4;
          }
        }

        v12 = *(v7 + 16);
        if (v10 == v12)
        {

          break;
        }

        if (v10 >= v12)
        {
          goto LABEL_23;
        }

        v3 = *(v7 + v11);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v13 = v3;
          v14 = sub_75D790();
          if (v14)
          {
            v3 = v14;
            v15 = v19;
            sub_765250();
            sub_765210();
            (*v16)(v15, v20);
            sub_765330();
            sub_75A110();
            sub_759210();
            sub_75A090();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_75A040();

            sub_10A2C(v24, &unk_9443A0, &unk_77E240);
            v6 = v17;
            v7 = v18;
          }

          else
          {
          }

          v9 = v22;
        }

        else
        {
        }

        ++v10;
        v11 += 16;
      }

      while (v9 != v10);
    }
  }
}

uint64_t sub_1BA5E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double *sub_1BA624(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_765240();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_766690();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_763DF0();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_761C80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_75D750();
      (*v37)(v11, v38, v8);
      sub_1BAC3C(&qword_948E50, &type metadata accessor for MetadataRibbonItemViewType, &protocol conformance descriptor for MetadataRibbonItemViewType);
      sub_769430();
      sub_769430();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = sub_76A950();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_75D790())
      {
        v21 = v28;
        sub_763DD0();
        sub_763DC0();
        sub_B170(v41, v41[3]);
        sub_766710();
        sub_BEB8(v41);
        sub_765260();
        v22 = v30;
        sub_7666A0();
        sub_766650();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        sub_765250();
        sub_765210();
        (*v25)(v23, v33);
        sub_765330();
        sub_769440();
        if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAC84()
{
  v1 = sub_BD88(&qword_949570, &qword_78A3D8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0, &qword_78A3E0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949638, &qword_78A478);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580, &qword_78A3F0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0, &unk_78A360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_BD88(&qword_949640, &qword_78A480);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590, &qword_78A400);
  v13 = sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949648, &qword_78A488);
  sub_16194(&qword_949650, &qword_949648, &qword_78A488, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610, &unk_78A410);
  sub_16194(&qword_9495A8, &unk_959610, &unk_78A410, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570, &qword_78A3D8);
}

uint64_t sub_1BB32C()
{
  v1 = sub_BD88(&qword_949570, &qword_78A3D8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0, &qword_78A3E0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949610, &qword_78A460);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580, &qword_78A3F0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0, &unk_78A360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_BD88(&qword_949618, &qword_78A468);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590, &qword_78A400);
  v13 = sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949620, &qword_78A470);
  sub_16194(&qword_949628, &qword_949620, &qword_78A470, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610, &unk_78A410);
  sub_16194(&qword_9495A8, &unk_959610, &unk_78A410, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570, &qword_78A3D8);
}

uint64_t sub_1BB9D4()
{
  v1 = sub_BD88(&qword_949570, &qword_78A3D8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0, &qword_78A3E0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_9495F8, &qword_78A448);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580, &qword_78A3F0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0, &unk_78A360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_BD88(&qword_944A80, &qword_78A450);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590, &qword_78A400);
  v13 = sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949600, &qword_78A458);
  sub_16194(&qword_949608, &qword_949600, &qword_78A458, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610, &unk_78A410);
  sub_16194(&qword_9495A8, &unk_959610, &unk_78A410, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570, &qword_78A3D8);
}

uint64_t sub_1BC07C()
{
  v1 = sub_BD88(&qword_949570, &qword_78A3D8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0, &qword_78A3E0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_9495D0, &qword_78A430);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580, &qword_78A3F0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0, &unk_78A360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_BD88(&qword_9495D8, &qword_78A438);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590, &qword_78A400);
  v13 = sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_9495E0, &qword_78A440);
  sub_16194(&qword_9495E8, &qword_9495E0, &qword_78A440, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610, &unk_78A410);
  sub_16194(&qword_9495A8, &unk_959610, &unk_78A410, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570, &qword_78A3D8);
}

uint64_t sub_1BC724()
{
  v1 = sub_BD88(&qword_949570, &qword_78A3D8);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0, &qword_78A3E0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949578, &qword_78A3E8);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580, &qword_78A3F0);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0, &unk_78A360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  sub_BD88(&qword_949588, &qword_78A3F8);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590, &qword_78A400);
  v13 = sub_16194(&qword_959570, &qword_949590, &qword_78A400, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949598, &qword_78A408);
  sub_16194(&qword_9495A0, &qword_949598, &qword_78A408, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610, &unk_78A410);
  sub_16194(&qword_9495A8, &unk_959610, &unk_78A410, &protocol conformance descriptor for SyncEvent<A>);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570, &qword_78A3D8);
}

void sub_1BCDCC(uint64_t a1, void (*a2)(char *), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v7 = v5;
  v32 = sub_BD88(&unk_9595E0, &qword_7825E0);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v31 - v10;
  v12 = sub_BD88(&qword_9495B8, &qword_78A428);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_BD88(&unk_959560, &qword_7A2870);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  a2(v14);
  sub_10A2C(v14, &qword_9495B8, &qword_78A428);
  v17 = sub_75B040();
  v18 = qword_9593C8;
  if (v17)
  {
    swift_beginAccess();
    v19 = *&v7[v18];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    sub_75B030();
    sub_762D20();
  }

  else
  {
    swift_beginAccess();
    v21 = *&v7[v18];
    if (!v21)
    {
      goto LABEL_7;
    }

    v20 = v21;
    sub_75B030();
    sub_75B050();
    sub_762D90();
  }

  (*(v9 + 8))(v11, v32);
LABEL_7:
  v22 = v33;
  v23 = v35;
  sub_BD88(v33, v35);
  sub_16194(v34, v22, v23, &unk_7A2710);
  sub_764690();
  v24 = [v7 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 window];

  if (v26)
  {

    v27 = [v7 collectionView];
    if (!v27)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v28 = v27;
    sub_75FA20();
  }

  v29 = [v7 view];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  [v29 bounds];

  sub_763A70();
  if (sub_75B020())
  {
    sub_75A0E0();
  }
}

void sub_1BD1E4(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_768430();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v97, &unk_93FBD0, &qword_77DFA0);
  if (v98)
  {
    sub_BE70(0, &qword_93E550, UIView_ptr);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      *v17 = sub_769970();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = sub_768460();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_94DD18;
        v82 = xmmword_94DD28;
        v83 = xmmword_94DD38;
        v79 = xmmword_94DCF8;
        v80 = xmmword_94DD08;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_94DCF8;
        v92 = xmmword_94DD08;
        v94 = xmmword_94DD28;
        v95 = xmmword_94DD38;
        v84 = qword_94DD48;
        v90 = v78;
        v96 = qword_94DD48;
        v93 = xmmword_94DD18;
        sub_1ED18(&v79, &v67, &unk_93FEF0, &unk_7834B0);
        xmmword_94DD18 = v87;
        xmmword_94DD28 = v88;
        xmmword_94DD38 = v89;
        qword_94DD48 = v90;
        xmmword_94DCF8 = v85;
        xmmword_94DD08 = v86;
        sub_10A2C(&v91, &unk_93FEF0, &unk_7834B0);
        v29 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
        v30 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_45C2C(&v73, &v67);
        sub_768860();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10A2C(v13, &unk_93F980, &qword_77EDA0);
        }

        else
        {
          sub_32A6C0(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_94DD18;
        v70 = xmmword_94DD28;
        v71 = xmmword_94DD38;
        v72 = qword_94DD48;
        v67 = xmmword_94DCF8;
        v68 = xmmword_94DD08;
        xmmword_94DCF8 = v79;
        xmmword_94DD08 = v80;
        xmmword_94DD18 = v81;
        xmmword_94DD28 = v82;
        xmmword_94DD38 = v83;
        qword_94DD48 = v84;
        sub_10A2C(&v67, &unk_93FEF0, &unk_7834B0);
        sub_45C88(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10A2C(v97, &unk_93FBD0, &qword_77DFA0);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v57 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10A2C(v10, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = sub_769460();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = sub_757550().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v17 = sub_769970();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = sub_768460();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_94DD18;
  v82 = xmmword_94DD28;
  v83 = xmmword_94DD38;
  v79 = xmmword_94DCF8;
  v80 = xmmword_94DD08;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_94DCF8;
  v92 = xmmword_94DD08;
  v94 = xmmword_94DD28;
  v95 = xmmword_94DD38;
  v84 = qword_94DD48;
  v90 = v78;
  v96 = qword_94DD48;
  v93 = xmmword_94DD18;
  sub_1ED18(&v79, &v67, &unk_93FEF0, &unk_7834B0);
  xmmword_94DD18 = v87;
  xmmword_94DD28 = v88;
  xmmword_94DD38 = v89;
  qword_94DD48 = v90;
  xmmword_94DCF8 = v85;
  xmmword_94DD08 = v86;
  sub_10A2C(&v91, &unk_93FEF0, &unk_7834B0);
  v52 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v53 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_45C2C(&v73, &v67);
  v54 = v61;
  sub_768860();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10A2C(v54, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32A6C0(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_94DD18;
  v70 = xmmword_94DD28;
  v71 = xmmword_94DD38;
  v72 = qword_94DD48;
  v67 = xmmword_94DCF8;
  v68 = xmmword_94DD08;
  xmmword_94DCF8 = v79;
  xmmword_94DD08 = v80;
  xmmword_94DD18 = v81;
  xmmword_94DD28 = v82;
  xmmword_94DD38 = v83;
  qword_94DD48 = v84;
  sub_10A2C(&v67, &unk_93FEF0, &unk_7834B0);
  sub_45C88(&v73);

  (*(v51 + 8))(v63, v60);
}

char *sub_1BDC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_948E58) = 0x4024000000000000;
  *(v2 + qword_948E60) = 0;
  *(v2 + qword_948E68) = 0;
  *(v2 + qword_99B758) = 0;
  *(v2 + qword_99B760) = 0;
  *(v2 + qword_99B768) = 0;
  v6 = qword_99B770;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_99B778) = 0;
  *(v3 + qword_948E70) = 0;
  *(v3 + qword_99B780) = 0;
  *(v3 + qword_99B788) = 0;
  *(v3 + qword_948E80) = 0;
  v7 = qword_948E90;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_948E98) = 0;
  *(v3 + qword_948EA0) = _swiftEmptySetSingleton;
  sub_75A920();
  sub_768880();
  *(v3 + qword_948E78) = sub_75A6F0() & 1;
  sub_7634F0();
  sub_768880();
  *(v3 + qword_948E88) = v19;

  v9 = sub_467808(a1, a2);
  v10 = qword_99E1D8;
  v11 = *&v9[qword_99E1D8];
  v12 = v9;
  v13 = v11;
  sub_1BDF88();
  sub_1C61D8(&qword_9494A0, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_790AC4);
  sub_75FA40();

  v14 = *&v9[v10];

  sub_75FA40();

  v15 = *&v9[v10];

  v16 = qword_948E90;
  sub_1C61D8(&qword_9494A8, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_7ABABC);

  sub_75FA40();

  v17 = *&v12[v16];
  sub_BD88(&qword_9494B0, &unk_78A320);

  sub_768860();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1BDF88()
{
  v1 = qword_948E98;
  if (*&v0[qword_948E98])
  {
    v2 = *&v0[qword_948E98];
  }

  else
  {
    v3 = *&v0[qword_99E1A8];
    v4 = *&v0[qword_99E1B8];
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v5 = v0;
    v2 = sub_299350(v3, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BE06C()
{
  v1 = qword_948E68;
  if (*(v0 + qword_948E68))
  {
    v2 = *(v0 + qword_948E68);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_8874C0;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_1C4ACC;
    *(v2 + 80) = v3;

    sub_F704(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1BE180()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_759950();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = sub_759930();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v43._object = 0x80000000007D3AB0;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_75B750(v43, v45);
  v15 = sub_769210();

  [v14 setTitle:v15];

  v16 = v14;
  v44._countAndFlagsBits = 0xD00000000000002BLL;
  v44._object = 0x80000000007D3AE0;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_75B750(v44, v46);
  v17 = sub_769210();

  [v16 setAccessibilityLabel:v17];

  v18 = qword_948E70;
  v19 = *&v1[qword_948E70];
  *&v1[qword_948E70] = v16;
  v20 = v16;

  v21 = *&v1[v18];
  if (v21)
  {
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v22 = v21;
    sub_768C10();
    sub_10A2C(v39, &unk_93FBD0, &qword_77DFA0);
    sub_10A2C(&v40, &unk_93FBD0, &qword_77DFA0);
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    sub_769C70();

    (*(v4 + 8))(v6, v3);
  }

  v23 = [v1 navigationItem];
  v24 = [v23 rightBarButtonItems];

  if (v24)
  {
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    v25 = sub_769460();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  *&v39[0] = v25;
  if (v25 >> 62 && sub_76A860() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v20;
  sub_4A7B58(0, 0, v26);

  v27 = [v1 navigationItem];
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  isa = sub_769450().super.isa;
  [v27 setRightBarButtonItems:isa];

  sub_1BE06C();
  sub_1C61D8(&qword_9495C8, type metadata accessor for UberedPageScrollObserver, &unk_78058C);
  sub_75FA40();

  v29 = [v1 navigationItem];
  [v29 setTitleView:*&v1[qword_99B770]];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v40 = 0u;
  v41 = 0u;
  sub_768C20();
  sub_10A2C(&v40, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v4 + 8))(v6, v3);
  v32 = [v1 view];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  sub_BD88(&qword_9477F0, qword_780200);
  v34 = swift_allocObject();
  v38 = xmmword_77B6D0;
  *(v34 + 16) = xmmword_77B6D0;
  *(v34 + 32) = sub_767B80();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_769F40();
  swift_unknownObjectRelease();

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 32) = sub_767890();
    *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_769F40();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1BE8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];
    [v5 invalidateLayout];

    v6 = [v4 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BE9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_7628A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = [v8 traitCollection];
    v10 = sub_7699D0();

    v11 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v10 & 1) == 0)
    {
      v11 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v4 + 104))(v6, *v11, v3);
    sub_762890();

    (*(v4 + 8))(v6, v3);
    v12 = [v8 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BEB58(void *a1)
{
  v1 = a1;
  sub_1BE180();
}

uint64_t sub_1BEBA0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7634E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_761BC0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1BEE1C();
  if (*(v2 + qword_948E78) == 1)
  {
    v14 = qword_948E80;
    if ((*(v2 + qword_948E80) & 1) == 0)
    {
      sub_761230();
      sub_768900();
      sub_768ED0();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      sub_761220();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  sub_7634A0();
  return (*(v6 + 8))(v8, v5);
}

void sub_1BEE1C()
{
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_1BE06C() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1C61B4;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_6C6800;
          v15 = &unk_887878;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1C61D0;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_6C6800;
          v15 = &unk_8878A0;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_66394(v10);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1BF09C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BEBA0(a3);
}

uint64_t sub_1BF118(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93F630, &unk_77E230);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_7634E0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_99B760] = 1;
  v14 = qword_99B768;
  if ((v2[qword_99B768] & 1) == 0)
  {
    v15 = sub_762860();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
      sub_768900();
      sub_768ED0();
      sub_32A6C0(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  sub_7634A0();
  return (*(v10 + 8))(v13, v9);
}

void sub_1BF380(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BF118(a3);
}

double sub_1BF3D4()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_99B758) == 1)
    {
      sub_1BE06C();
      sub_65DEC();
    }

    else
    {
      v3 = [v0 transitionCoordinator];
      v4 = sub_1BE06C();
      if (v3)
      {
        v12 = sub_1C61A4;
        v13 = v4;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_6C6800;
        v11 = &unk_887828;
        v5 = _Block_copy(&v8);

        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = sub_1C61AC;
        v13 = v6;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_6C6800;
        v11 = &unk_887850;
        v7 = _Block_copy(&v8);

        [v3 animateAlongsideTransition:v5 completion:v7];
        _Block_release(v7);
        _Block_release(v5);
        swift_unknownObjectRelease();
        return result;
      }

      sub_65DEC();
    }
  }

  return result;
}

void sub_1BF5FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_1BF3D4();
}

void sub_1BF674(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BF7A8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7634E0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  sub_7634A0();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    sub_7634A0();
    v11(v9, v5);
  }

  return sub_1BF934();
}

uint64_t sub_1BF934()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_762920();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
    v7 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10A2C(v3, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1BFAB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BF7A8(a3);
}

void sub_1BFB0C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1C65C0;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_8877B0;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_1C619C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_887800;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1BFCD8(uint64_t a1, void *a2)
{
  v3 = sub_7628A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_762880();
  v7 = [a2 traitCollection];
  v8 = sub_7699D0();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_762890();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BFE5C(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1BFB0C(a3, a4, a5);
  swift_unknownObjectRelease();
}

void sub_1BFF04(void *a1)
{
  v1 = a1;
  sub_1BFEDC();
}

uint64_t sub_1BFF74(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v6 + v15, v22, &qword_93FED0, &unk_77DCE0);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_1C0218(void *a1)
{
  v1 = a1;
  sub_1BFF4C();
}

void sub_1C0260(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  a1[4] = sub_1C61D8(&qword_9495C0, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_780DC8);
  *a1 = v3;
}

uint64_t sub_1C0314()
{
  v17[2] = swift_getObjectType();
  v1 = sub_BD88(&qword_949530, &qword_78A350);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_BD88(&qword_949538, &qword_78A358);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_BD88(&qword_942CA0, &unk_78A360);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1BC724();
  v9 = *(v0 + qword_99E1A8);
  v17[0] = v0;
  v17[1] = v9;
  sub_75F1B0();
  v10 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v11 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_BD88(&unk_959600, &qword_7825C0);
  sub_16194(&qword_942CA8, &unk_959600, &qword_7825C0, &protocol conformance descriptor for SyncEvent<A>);
  sub_768720();

  (*(v6 + 8))(v8, v5);
  sub_BEB8(v24);
  sub_762900();
  v12 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_BD88(&qword_949540, &qword_78A370);
  sub_16194(&qword_949548, &qword_949540, &qword_78A370, &protocol conformance descriptor for SyncEvent<A>);
  v13 = v18;
  sub_768720();

  (*(v19 + 8))(v13, v20);
  sub_BEB8(v24);
  sub_762940();
  v14 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_BD88(&qword_949550, &qword_78A378);
  sub_16194(&qword_949558, &qword_949550, &qword_78A378, &protocol conformance descriptor for SyncEvent<A>);
  v15 = v21;
  sub_768720();

  (*(v22 + 8))(v15, v23);
  return sub_BEB8(v24);
}

void sub_1C0778(uint64_t a1)
{
  v2 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v2 - 8);
  v74 = v71 - v3;
  v4 = sub_BD88(&unk_959540, &qword_784830);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v73 = v71 - v5;
  v6 = sub_757640();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_949568, &unk_78A388);
  __chkstk_darwin(v8 - 8);
  v82 = v71 - v9;
  v10 = sub_762BD0();
  v11 = *(v10 - 8);
  v83 = v10;
  v84 = v11;
  __chkstk_darwin(v10);
  v77 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v13 - 8);
  v88 = v71 - v14;
  v85 = sub_764930();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v81 = v71 - v17;
  __chkstk_darwin(v18);
  v86 = v71 - v19;
  v20 = sub_BD88(&qword_93FF08, qword_77F350);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v71 - v22;
  v24 = sub_BD88(&unk_9595E0, &qword_7825E0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v71 - v26;
  v28 = sub_BD88(&unk_959560, &qword_7A2870);
  v29 = a1;
  sub_75B030();
  sub_764410();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = sub_7678E0();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v71[2] = v28;
  sub_75B030();
  v32 = v88;
  sub_764430();
  v30(v27, v24);
  v33 = sub_BD88(&unk_94F1F0, &qword_782290);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &qword_963790;
    v36 = qword_77EBC0;
    v37 = v32;
LABEL_9:
    sub_10A2C(v37, v35, v36);
    goto LABEL_10;
  }

  v71[1] = v29;
  swift_getKeyPath();
  v38 = v81;
  sub_768750();

  (*(v34 + 8))(v32, v33);
  v40 = v86;
  v39 = v87;
  v41 = v85;
  (*(v87 + 32))(v86, v38, v85);
  v42 = qword_9593C8;
  v43 = v89;
  swift_beginAccess();
  v44 = *(v43 + v42);
  if (!v44)
  {
    (*(v39 + 8))(v40, v41);
    swift_endAccess();
    v48 = v82;
    (*(v84 + 56))(v82, 1, 1, v83);
    goto LABEL_8;
  }

  swift_endAccess();
  v45 = v44;
  v46 = v78;
  sub_7575B0();
  v47 = v82;
  sub_767A40();

  v48 = v47;
  v88 = *(v79 + 8);
  (v88)(v46, v80);
  v50 = v83;
  v49 = v84;
  if ((*(v84 + 48))(v47, 1, v83) == 1)
  {
    (*(v87 + 8))(v86, v41);
LABEL_8:
    v35 = &qword_949568;
    v36 = &unk_78A388;
    v37 = v48;
    goto LABEL_9;
  }

  v51 = v77;
  (*(v49 + 32))(v77, v47, v50);
  sub_75B030();
  v52 = v30;
  v53 = v74;
  sub_764420();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v75;
  v57 = v53;
  v58 = v76;
  if ((*(v75 + 48))(v57, 1, v76) == 1)
  {
    (*(v49 + 8))(v51, v50);
    (*(v87 + 8))(v86, v85);
    v35 = &qword_93FF28;
    v36 = &unk_79FDC0;
    v37 = v55;
    goto LABEL_9;
  }

  v59 = v73;
  (*(v56 + 32))(v73, v55, v58);
  v61 = v86;
  v60 = v87;
  v62 = v72;
  v63 = v85;
  (*(v87 + 16))(v72, v86, v85);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v84 + 8))(v77, v50);
    v70 = *(v60 + 8);
    v70(v61, v63);
    *(v89 + qword_948EA0) = _swiftEmptySetSingleton;

    v70(v62, v63);
    return;
  }

  sub_768760();
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75C040();
  v64 = swift_dynamicCast();
  v65 = v77;
  if (v64)
  {
    if (sub_75BFE0())
    {

      sub_BD88(&unk_941A18, &qword_78A3D0);
      v66 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_77B6D0;
      sub_7575B0();
      v69 = sub_1A275C(v67, v68);
      swift_setDeallocating();
      (v88)(v67 + v66, v80);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v84 + 8))(v65, v50);
      (*(v87 + 8))(v86, v85);
      *(v89 + qword_948EA0) = v69;
      goto LABEL_11;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v84 + 8))(v65, v50);
  (*(v87 + 8))(v86, v85);
LABEL_10:
  *(v89 + qword_948EA0) = _swiftEmptySetSingleton;
LABEL_11:
}

void (*sub_1C129C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6094;
}

void sub_1C1300(uint64_t a1, uint64_t a2)
{
  v65 = sub_757640();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  v9 = sub_761570();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *v13;
    v16 = *(*v13 + 16);
    if (!v16)
    {
LABEL_7:
      v21 = [v66 collectionView];
      if (v21)
      {
        v22 = v21;

        [v22 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      v18 = [v66 collectionView];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = v18;
      ++v17;
      sub_7575B0();
      isa = sub_757550().super.isa;
      (*(v3 + 8))(v8, v65);
      [v19 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v16 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v14 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v10 + 8))(v13, v9);
    return;
  }

  (*(v10 + 96))(v13, v9);
  v23 = sub_BD88(&qword_949560, &qword_78A380);
  v24 = v13[*(v23 + 48)];
  v25 = *&v13[*(v23 + 64)];
  (*(v3 + 32))(v5, v13, v65);
  v26 = [v66 collectionView];
  if (!v26)
  {
    goto LABEL_32;
  }

  v27 = v26;
  v28 = sub_757550().super.isa;
  v29 = [v27 layoutAttributesForItemAtIndexPath:v28];

  if (!v29)
  {
    goto LABEL_23;
  }

  [v29 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  if (v24)
  {
LABEL_15:
    v64 = v5;
    v42 = *(v25 + 16);
    if (!v42)
    {
LABEL_20:
      v47 = [v66 navigationController];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 navigationBar];

        [v49 frame];
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;

        v68.origin.x = v51;
        v68.origin.y = v53;
        v68.size.width = v55;
        v68.size.height = v57;
        MaxY = CGRectGetMaxY(v68);
      }

      else
      {
        MaxY = 0.0;
      }

      v59 = v64;
      v69.origin.x = v31;
      v69.origin.y = v33;
      v69.size.width = v35;
      v69.size.height = v37;
      MinY = CGRectGetMinY(v69);
      v61 = [v66 collectionView];
      if (v61)
      {
        v62 = v61;

        [v62 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v3 + 8))(v59, v65);
        return;
      }

      goto LABEL_33;
    }

    v43 = 0;
    while (v43 < *(v25 + 16))
    {
      v44 = [v66 collectionView];
      if (!v44)
      {
        goto LABEL_30;
      }

      v45 = v44;
      ++v43;
      sub_7575B0();
      v46 = sub_757550().super.isa;
      (*(v3 + 8))(v8, v65);
      [v45 scrollToItemAtIndexPath:v46 atScrollPosition:0 animated:1];

      if (v42 == v43)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v38 = [v66 collectionView];
  if (v38)
  {
    v39 = v38;
    [v38 contentOffset];
    v41 = v40;

    v67.origin.x = v31;
    v67.origin.y = v33;
    v67.size.width = v35;
    v67.size.height = v37;
    if (CGRectGetMinY(v67) < v41)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v3 + 8))(v5, v65);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_1C1924(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6070;
}

uint64_t (*sub_1C1988(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6030;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

unint64_t sub_1C1A18@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_1C5FDC();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1A98@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController, &unk_7A2710);
  v2 = sub_763A60();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_763A50();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_132B4(v18, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_134D8(v17, v16);
  sub_134D8(v16, v15);

  v11 = sub_762B60();
  sub_BEB8(v16);
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_1C1DAC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_1C5F88();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C1DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1C61D8(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1C61D8(&qword_949518, type metadata accessor for ProductPageShelfSupplementaryProvider, &unk_7ADC90);

  return v2;
}

uint64_t sub_1C1EE0()
{
  swift_getObjectType();
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController, &unk_7A2710);
  sub_763A80();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_134D8(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_10914(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_1C61D8(&qword_949510, type metadata accessor for ProductPageItemSupplementaryViewProvider, &unk_78FA6C);
  return v0;
}

id sub_1C1FDC()
{
  v1 = v0;
  swift_getObjectType();
  sub_5FCE98();
  sub_7637E0();
  if (swift_dynamicCastClass())
  {
    v2 = sub_7637B0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_7637D0();
  }

  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_780120;

  sub_1BE06C();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_1C61D8(&qword_9494C8, type metadata accessor for UberedCollectionElementsObserver, &unk_787D44);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_948E90];
  v7 = sub_1C61D8(&qword_9494D0, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_7ABB14);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_1BDF88();
  v9 = sub_1C61D8(&qword_9494D8, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_790B1C);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_99E1B8];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_1C61D8(&qword_9494E0, type metadata accessor for ProductMediaCollectionElementsObserver, &unk_7AF298);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController, &unk_7A2710);
  swift_retain_n();

  sub_763A80();
  sub_1C61D8(&qword_9494F0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_1C61D8(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_94CC10) = 0;
  swift_unknownObjectWeakAssign();
  sub_134D8(v25, v13 + qword_94CC08);

  v14 = sub_764290();
  sub_BEB8(v25);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_887490;
  swift_unknownObjectWeakAssign();
  v16 = sub_1C61D8(&qword_942C80, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_7B012C);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  v17._rawValue = v3;
  sub_7637A0(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77DC20;
  sub_BD88(&qword_949500, &unk_78A340);
  swift_allocObject();
  swift_retain_n();
  v19 = sub_763BB0();
  v20 = sub_16194(&qword_949508, &qword_949500, &unk_78A340, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v22 = sub_1C61D8(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "ez\r");
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v18 + 64) = sub_764310();
    *(v18 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v24._rawValue = v18;
    sub_7637A0(v24);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C264C(uint64_t a1)
{
  sub_7642A0();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_763D10();
  return swift_dynamicCastClass() != 0;
}

void sub_1C26A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93F630, &unk_77E230);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_BD88(&qword_9494B8, &unk_78A330);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  sub_600674(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v9 + 96))(v11, v8);
    sub_1C2948(*v11);
    if (*(v1 + qword_99B760) == 1)
    {
      v12 = qword_99B768;
      if ((*(v1 + qword_99B768) & 1) == 0)
      {
        v13 = sub_762860();
        if (v13)
        {
          v14 = v13;
          *(v2 + v12) = 1;
          v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
          sub_768900();
          sub_768ED0();
          sub_32A6C0(v14, 1, v15, v7);

          (*(v5 + 8))(v7, v4);
        }
      }
    }

    sub_1C2CF4();
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1C2948(uint64_t a1)
{
  v17 = a1;
  v2 = sub_768380();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7593E0();
  v18 = v1;
  sub_1C3310(v8);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v9 = sub_769970();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5F18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8875D0;
  v11 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1C61D8(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
  sub_76A5A0();
  sub_769980();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_1C34CC();
  v13 = *(v12 + qword_948E70);
  if (v13)
  {
    v14 = v13;
    v15 = sub_75F630();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (sub_75F640() && (v16 = sub_7645D0(), , v16))
  {

    sub_1C35FC();
  }

  else
  {
    sub_1C3A04();
  }
}

void sub_1C2CF4()
{
  v32 = sub_756AC0();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75AE80();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7628C0())
  {
    v31 = v0;
    sub_75C1F0();
    if (swift_dynamicCastClass())
    {
      sub_75C1B0();
      sub_75AE90();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        (*(v10 + 8))(v12, v9);
        return;
      }

      (*(v10 + 96))(v12, v9);
      sub_7617A0();
      v13 = sub_764CA0();
      v15 = v14;
      (*(v6 + 8))(v8, v5);
      if (!sub_761740() || (v16 = sub_7607D0(), v18 = v17, , !v18))
      {
        v20 = v15;
        goto LABEL_19;
      }

      v19 = v16 == 0x656C646E7562 && v18 == 0xE600000000000000;
      v20 = v15;
      if (v19)
      {
      }

      else
      {
        v21 = sub_76A950();

        if ((v21 & 1) == 0)
        {
LABEL_19:

          sub_75C1B0();
          sub_75AE70();

          v23 = sub_7570A0();
          (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
          v24 = sub_761790();
          sub_254340(v13, v20, v4, v24, v25, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_B2F4C(v40, v34);
          sub_B2F4C(&v39, v34);
          sub_1C61D8(&qword_943508, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);

          sub_BD88(&qword_943510, &qword_782A20);
          sub_16194(&qword_943518, &qword_943510, &qword_782A20, &protocol conformance descriptor for [A]);
          sub_76A5A0();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v26 = objc_allocWithZone(sub_766300());
          sub_1C5EC4();
          v27 = sub_7662F0();
          v28 = [v31 view];
          if (v28)
          {
            v29 = v28;

            sub_769E60();

            sub_B2FFC(v40);
            sub_B2FFC(&v39);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      *&v36 = v13;
      *(&v36 + 1) = v15;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = sub_7693F0();
      *(&v34[0] + 1) = v22;
      sub_769360();

      v20 = *(&v34[0] + 1);
      v13 = *&v34[0];
      goto LABEL_19;
    }
  }
}

void sub_1C3310(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_71DDE4();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_71DFF0() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

double sub_1C3464(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BDF88();

    sub_298E58();
  }

  return result;
}

void sub_1C34CC()
{
  if (*(v0 + qword_948E60) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_1C35FC()
{
  v1 = v0;
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_99B780;
  v8 = *&v1[qword_99B780];
  if (v8)
  {
    v9 = *&v1[qword_99B780];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_759930();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x80000000007D3A50;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_75B750(v29, v31);
    v12 = sub_769210();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x80000000007D3A80;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_75B750(v30, v32);
    v13 = sub_769210();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_BE70(0, &qword_947490, UIBarButtonItem_ptr), v18 = sub_769460(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_4F26B4(sub_1C5F20, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_769460();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_769440();
    if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v25 = [v1 navigationItem];
    isa = sub_769450().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_1C3A04()
{
  v1 = *&v0[qword_99B780];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_BE70(0, &qword_947490, UIBarButtonItem_ptr), v4 = sub_769460(), v3, v5 = sub_6FF6BC(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_769460();

        if (v11)
        {
          v12.super.isa = sub_769450().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1C3BD0()
{
  if (*(*&v0[qword_948EA0] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C3C70(uint64_t result)
{
  *(v1 + qword_99E1C8) = result;
  if (result)
  {
    *(v1 + qword_99B758) = 1;
  }

  return result;
}

void sub_1C3C98()
{
  *(v0 + qword_948E60) = 1;
  *(sub_1BDF88() + 72) = 1;

  sub_1C34CC();
}

void sub_1C3CE0()
{
  *(v0 + qword_948E60) = 0;
  *(sub_1BDF88() + 72) = 0;

  sub_1C34CC();
}

uint64_t sub_1C3D1C(uint64_t a1)
{
  v2 = sub_7570A0();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40, &unk_780300);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  sub_61B4C(a1, v9, v17);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9, v20);
LABEL_9:
    v25 = 0;
    return v25 & 1;
  }

  v21 = sub_BD88(&qword_940A50, &qword_782590);
  sub_50774(&v9[*(v21 + 48)], v19);
  sub_75F250();
  v22 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30, qword_77F240);
  sub_1ED18(v19, &v6[v22], &unk_93FD30, qword_77F240);
  v23 = v31;
  v24 = *(v31 + 48);
  if (v24(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30, qword_77F240);
    if (v24(&v6[v22], 1, v2) != 1)
    {
      v27 = v30;
      (*(v23 + 32))(v30, &v6[v22], v2);
      sub_1C61D8(&qword_947410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = v23;
      v25 = sub_7691C0();
      v29 = *(v28 + 8);
      v29(v27, v2);
      sub_10A2C(v15, &unk_93FD30, qword_77F240);
      sub_10A2C(v19, &unk_93FD30, qword_77F240);
      v29(v12, v2);
      sub_10A2C(v6, &unk_93FD30, qword_77F240);
      return v25 & 1;
    }

    sub_10A2C(v15, &unk_93FD30, qword_77F240);
    sub_10A2C(v19, &unk_93FD30, qword_77F240);
    (*(v23 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30, qword_77F240);
  sub_10A2C(v19, &unk_93FD30, qword_77F240);
  if (v24(&v6[v22], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40, &unk_780300);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1C41D8(void *a1, __n128 a2)
{
  v3 = sub_768430();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v35[0]) = 0;
  *&v17[0] = a1;
  *(v17 + 8) = 0u;
  *(&v17[1] + 8) = 0u;
  BYTE8(v17[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v18 = _Q0;
  v19 = _Q0;
  v20 = 15;
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v12 = a1;
  *v6 = sub_769970();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  LOBYTE(a1) = sub_768460();
  result = (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v24 = xmmword_94DD28;
    v25 = xmmword_94DD38;
    v21 = xmmword_94DCF8;
    v22 = xmmword_94DD08;
    v23 = xmmword_94DD18;
    v29 = v17[2];
    v30 = v18;
    v31 = v19;
    v27 = v17[0];
    v28 = v17[1];
    v33[0] = xmmword_94DCF8;
    v33[1] = xmmword_94DD08;
    v33[3] = xmmword_94DD28;
    v33[4] = xmmword_94DD38;
    v26 = qword_94DD48;
    v32 = v20;
    v34 = qword_94DD48;
    v33[2] = xmmword_94DD18;
    sub_1ED18(&v21, v35, &unk_93FEF0, &unk_7834B0);
    xmmword_94DD18 = v29;
    xmmword_94DD28 = v30;
    xmmword_94DD38 = v31;
    qword_94DD48 = v32;
    xmmword_94DCF8 = v27;
    xmmword_94DD08 = v28;
    sub_10A2C(v33, &unk_93FEF0, &unk_7834B0);
    v16[3] = sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    v16[0] = v12;
    v14 = v12;
    sub_45C2C(v17, v35);
    sub_7628D0();
    sub_10A2C(v16, &unk_93FBD0, &qword_77DFA0);
    v35[2] = xmmword_94DD18;
    v35[3] = xmmword_94DD28;
    v35[4] = xmmword_94DD38;
    v35[0] = xmmword_94DCF8;
    v35[1] = xmmword_94DD08;
    xmmword_94DCF8 = v21;
    xmmword_94DD08 = v22;
    xmmword_94DD18 = v23;
    xmmword_94DD28 = v24;
    v36 = qword_94DD48;
    xmmword_94DD38 = v25;
    qword_94DD48 = v26;
    sub_10A2C(v35, &unk_93FEF0, &unk_7834B0);
    return sub_45C88(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C44CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  sub_1C41D8(v4, v5);
}

double sub_1C4534()
{

  return result;
}

double sub_1C45F4(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ProductDiffablePageViewController(uint64_t a1)
{
  result = qword_948ED0;
  if (!qword_948ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1C4834(uint64_t a1, double a2, double a3)
{
  v6 = sub_7599A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v14 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress], v15 = Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v15 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v14 != a2)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v17 = v16;
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v12, v6);
    sub_759960();
    sub_759990();
    v22 = v21;
    v24 = v23;
    v20(v9, v6);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    v26 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1C4DA4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_887530;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithDuration:v27 controlPoint1:a3 controlPoint2:v17 animations:{v19, v22, v24}];
    _Block_release(v27);
    [v28 startAnimation];
  }
}

void sub_1C4AD4(uint64_t a1, double a2, double a3)
{
  v6 = sub_7599A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v14 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress], v15 = Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v15 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v14 != a2)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v17 = v16;
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v12, v6);
    sub_759960();
    sub_759990();
    v22 = v21;
    v24 = v23;
    v20(v9, v6);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    v26 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1C659C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_887580;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithDuration:v27 controlPoint1:a3 controlPoint2:v17 animations:{v19, v22, v24}];
    _Block_release(v27);
    [v28 startAnimation];
  }
}

uint64_t sub_1C4D6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1C4DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1C4DDC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_71E3B8();
  }
}

void sub_1C4E54(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v5)
    {
      v6 = v5;
      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v7 = v4;
      v8 = sub_76A1C0();

      if (v8)
      {
        if ([a1 isCancelled])
        {
          sub_1BE06C();
          sub_65DEC();
        }
      }
    }
  }
}

void sub_1C4F50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_76A1C0();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
        {
          v9 = v7;
          v10 = [v9 navigationController];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 navigationBar];

            if (v12)
            {

              sub_1BE06C();
              v13 = [v9 collectionView];

              if (!v13)
              {
                __break(1u);
                return;
              }

              sub_66394(v13);

              v9 = v13;
            }
          }
        }
      }
    }
  }
}

void sub_1C50D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BE06C();
    v4 = [v3 collectionView];
    if (v4)
    {
      v5 = v4;
      sub_66394(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_1C516C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C51FC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C528C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C531C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C53AC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C543C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C54CC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C555C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C55EC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C60F8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C567C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C60BC;
}

void (*sub_1C570C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6488;
}

void (*sub_1C5770(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C63A8;
}

void (*sub_1C57D4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6324;
}

void (*sub_1C5838(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C629C;
}

void (*sub_1C589C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C614C;
}

uint64_t (*sub_1C5900(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C5964(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C59C8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6320;
}

uint64_t (*sub_1C5A2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C5A90(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

id sub_1C5AF4(int a1, id a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  result = [a2 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_BD88(a3, a4);
    sub_16194(a5, a3, a4, &unk_7A2710);
    return sub_763A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1C5BBC(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C63F8;
}

id (*sub_1C5C20(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6374;
}

id (*sub_1C5C84(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C62EC;
}

id (*sub_1C5CE8(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6268;
}

id (*sub_1C5D4C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C60C4;
}

uint64_t sub_1C5DB0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_1ED18(a2, &v9, &unk_93FBD0, &qword_77DFA0);
  sub_1ED18(&v8, &v6, &unk_959590, &qword_78A420);
  v4 = v6;
  sub_1ED18(v7, v5, &unk_93FBD0, &qword_77DFA0);

  sub_1BD1E4(v2, v5);

  sub_10A2C(&v8, &unk_959590, &qword_78A420);
  sub_10A2C(&v4, &unk_959590, &qword_78A420);
  return sub_10A2C(v7, &unk_93FBD0, &qword_77DFA0);
}

unint64_t sub_1C5EC4()
{
  result = qword_9494C0;
  if (!qword_9494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9494C0);
  }

  return result;
}

unint64_t sub_1C5F88()
{
  result = qword_949520;
  if (!qword_949520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949520);
  }

  return result;
}

unint64_t sub_1C5FDC()
{
  result = qword_949528;
  if (!qword_949528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949528);
  }

  return result;
}

uint64_t sub_1C6114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C61D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6230()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1C65CC(void **a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_4DBE18(v10, a8, v11);
  sub_7670D0();
  sub_7665A0();

  return a2;
}

id sub_1C667C(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = v2;

  sub_4DA5B8();

  return [v1 setNeedsLayout];
}

uint64_t sub_1C6724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_759210();
  sub_1C6B18(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_1C67C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_99FE00);
  sub_766470();
  sub_766700();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

double sub_1C699C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category))
  {

    sub_75B5F0();

    sub_765320();
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView);
    sub_759210();
    sub_1C6B18(&qword_9496B0, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
    v3 = v2;
    sub_76A6E0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_160090(v5);
  }

  return result;
}

uint64_t sub_1C6B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C6BA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = sub_766880();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_766850();
  sub_766860();
  sub_134D8(v5 + 88, v11);
  v12[3] = sub_767340();
  v12[4] = &protocol witness table for Margins;
  sub_B1B4(v12);
  sub_767320();
  sub_766860();
  sub_BEB8(v12);
  sub_7673E0();
  return (*(v7 + 8))(v9, v6);
}

char *sub_1C6D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for HeaderView()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  v14 = sub_765B10();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_64A6C;
  v43[1] = 0;
  v43[2] = sub_7566F8;
  v43[3] = 0;
  v43[4] = sub_7568B4;
  v43[5] = 0;
  v43[6] = sub_7568E0;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_756724;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView] = sub_367388(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v31 = sub_76A060();
    [v30 setBackgroundColor:v31];
  }

  sub_1C72E0();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_1C750C();
  v36 = &v35[qword_950C70];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_1C75D0();
  sub_BD88(&qword_9477F0, qword_780200);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_77B6D0;
  *(v39 + 32) = sub_767B80();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v41);
  return v27;
}

uint64_t sub_1C72E0()
{
  v1 = sub_7593D0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = sub_7699F0();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_501278(v5, v7, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:sub_7697E0()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C750C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = sub_769A00();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_1C75D0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_9497A8, &unk_78A700);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_765B10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_1C750C();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v4, &qword_9497A8, &unk_78A700);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &qword_9497A8, &unk_78A700);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_1C750C() & 1) != 0 && v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_1C750C();
    sub_366B5C(v10, v18 & 1);
    if ((sub_1C750C() & 1) != 0 && (v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_1C750C())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_366B5C(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_1C72E0();
  return [v1 setNeedsLayout];
}

void sub_1C7A50(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    sub_765990();
  }

  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_4A3E2C();
    }
  }
}

void sub_1C7B10()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    sub_765990();
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_4A3E2C();
    }
  }
}

void sub_1C7BF8(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v6, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  sub_1ED18(v1 + v6, v5, &unk_955AA0, &qword_783ED0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_B33C8(v5, v7 + v8, &unk_955AA0, &qword_783ED0);
  swift_endAccess();
}

void sub_1C7D34()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView] + qword_950CC0) = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_36851C();
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v3)
  {
    *(v3 + qword_950CC0) = v1[v2];
    sub_36851C();
  }

  v4 = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  v5 = v1[v2];
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning] = v5;
  *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&stru_B8.segname[swift_isaMask & *Strong];
    v8 = Strong;
    v9 = v4;
    v7(v5);
  }

  v10 = [v1 contentView];
  [v10 setClipsToBounds:(v1[v2] & 1) == 0];
}

uint64_t sub_1C7ED0()
{
  if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = sub_769A00();

  return v4 & 1;
}

void sub_1C8024(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_1C8180(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_501278(v7, 3, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:sub_7697E0()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_1C8318()
{
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_1C8350(char a1)
{
  if (a1)
  {

    sub_1C83D0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1C83D0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_66DFD8(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

uint64_t sub_1C84D8(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v8 = v4;
      v9 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*sub_1C85E8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1C8668;
}

void sub_1C8668(uint64_t a1, char a2)
{
  v3 = *a1;
  v8 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v8;
    sub_2487B4(Strong);

    Strong = v5;
  }

  else
  {
    v7 = v8;
    sub_2487B4(Strong);
  }
}

uint64_t sub_1C8738()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_766950();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v82 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766880();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v10, &unk_955AA0, &qword_783ED0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_1C9CDC(v15, v87);
        v34 = [v1 contentView];
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v43 = [v1 traitCollection];
        v44 = v82;
        sub_21AF88(v43, v36, v38, v40, v42);
        v45 = v84;
        sub_7673E0();

        (*(v83 + 8))(v44, v45);
        sub_1D6428(v87);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_1C9848(v15, v86);
        if (v86[13])
        {
          memcpy(v87, v86, sizeof(v87));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_207E64(v33, v26, v28, v30, v32);

          sub_1D647C(v87);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10A2C(v86, &qword_9497C0, &qword_78A788);
        sub_1C9CDC(v15, v87);
        v58 = [v1 contentView];
        [v58 bounds];
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;

        v67 = [v1 traitCollection];
        v68 = v82;
        sub_21AF88(v67, v60, v62, v64, v66);
        v69 = v84;
        sub_7673E0();

        (*(v83 + 8))(v68, v69);
        break;
      case 4:
        sub_1C917C(v15, v87);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        sub_766850();
        sub_766860();
        sub_134D8(&v87[11], &v85);
        v86[3] = sub_767340();
        v86[4] = &protocol witness table for Margins;
        sub_B1B4(v86);
        sub_767320();
        sub_766860();
        sub_BEB8(v86);
        v23 = v81;
        sub_7673E0();

        (*(v80 + 8))(v7, v23);
        sub_1D64D0(v87);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_1C9CDC(v15, v87);
        v46 = [v1 contentView];
        [v46 bounds];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = [v1 traitCollection];
        v56 = v82;
        sub_21AF88(v55, v48, v50, v52, v54);
        v57 = v84;
        sub_7673E0();

        (*(v83 + 8))(v56, v57);
        break;
    }

    sub_1D6428(v87);
    goto LABEL_16;
  }

  sub_10A2C(v10, &unk_955AA0, &qword_783ED0);
LABEL_17:
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v70 = objc_opt_self();
    v71 = swift_allocObject();
    *(v71 + 16) = v1;
    v72 = swift_allocObject();
    v73 = sub_1D63FC;
    *(v72 + 16) = sub_1D63FC;
    *(v72 + 24) = v71;
    v87[4] = sub_2EC28;
    v87[5] = v72;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 1107296256;
    v87[2] = sub_1EB578;
    v87[3] = &unk_888168;
    v74 = _Block_copy(v87);
    v75 = v1;

    [v70 performWithoutAnimation:v74];
    _Block_release(v74);
    LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

    if ((v70 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v76 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v76)
  {
    [v76 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v73 = 0;
  v71 = 0;
LABEL_25:
  v77 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  if (v77)
  {
    v78 = v77;
    [v1 bounds];
    [v78 setFrame:{CGRectGetMaxX(v89) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  return sub_F704(v73, v71);
}

id sub_1C917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_765590();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_1ED18(v22, v19, &unk_955AA0, &qword_783ED0);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10A2C(v19, &unk_955AA0, &qword_783ED0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      sub_765650();
      sub_765650();
      v34 = v63;
      [v63 layoutDirection];
      sub_769BB0();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10A2C(v22, &unk_955AA0, &qword_783ED0);
    if ((sub_7699D0() & 1) == 0)
    {
      if (qword_93DD10 != -1)
      {
        swift_once();
      }

      v41 = sub_766CA0();
      sub_BE38(v41, qword_99FE78);
      sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_77D9F0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_7671E0();
      sub_7666E0();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_1ED18(v16, v13, &unk_955AA0, &qword_783ED0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10A2C(v13, &unk_955AA0, &qword_783ED0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        sub_765650();
        sub_765650();
      }

      v49 = v63;
      [v63 layoutDirection];
      sub_769BB0();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10A2C(v16, &unk_955AA0, &qword_783ED0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1C750C();

  v53 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = type metadata accessor for HeaderView();
  *(a2 + 80) = sub_1D6524(&qword_9497C8, type metadata accessor for HeaderView, &unk_78A5E0);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_1C9848@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      sub_765590();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_1D2C0C(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_1D6644(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_1C750C();
    v29 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
    type metadata accessor for HeaderView();
    sub_7665D0();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView(0);
    sub_7665D0();
    v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView];
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v36 = v32;
      v37 = v33;
      sub_7665D0();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
      sub_BD88(&qword_9497B8, &qword_78A780);
      sub_7665D0();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView(0);
      v42 = v41;
      sub_7665D0();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_10914(&v67, a2 + 80);
    sub_10914(&v65, a2 + 120);
    sub_10914(&v62, a2 + 160);
    sub_10914(&v59, a2 + 200);
    result = sub_10914(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_1C9CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_765590();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_1ED18(v21, v18, &unk_955AA0, &qword_783ED0);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10A2C(v18, &unk_955AA0, &qword_783ED0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      sub_765650();
      sub_765650();
      v34 = v68;
      [v68 layoutDirection];
      sub_769BB0();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10A2C(v21, &unk_955AA0, &qword_783ED0);
    if ((sub_7699D0() & 1) == 0)
    {
      if (qword_93DD10 != -1)
      {
        swift_once();
      }

      v41 = sub_766CA0();
      sub_BE38(v41, qword_99FE78);
      sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_77D9F0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_7671E0();
      sub_7666E0();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_1ED18(v35, v13, &unk_955AA0, &qword_783ED0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10A2C(v13, &unk_955AA0, &qword_783ED0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        sub_765650();
        sub_765650();
      }

      v49 = v68;
      [v68 layoutDirection];
      sub_769BB0();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10A2C(v35, &unk_955AA0, &qword_783ED0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1C750C();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = type metadata accessor for HeaderView();
  *(a2 + 96) = sub_1D6524(&qword_9497C8, type metadata accessor for HeaderView, &unk_78A5E0);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView(0);
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

double sub_1CA454()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&qword_9497A8, &unk_78A700);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v22[-v5];
  v23.receiver = v1;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  sub_501AE8();

  sub_6F8CC8();
  v8 = sub_765B10();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_B33C8(v6, &v1[v9], &qword_9497A8, &unk_78A700);
  swift_endAccess();
  v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_1CA6B0();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
  if (v13)
  {
    v14 = v13;
    v15 = sub_765960();

    swift_beginAccess();
    *(v15 + 32) = _swiftEmptyArrayStorage;

    v16 = *&v1[v12];
    if (v16)
    {
      v17 = v16;
      sub_7659F0();
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v18)
  {
    v19 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v20 = *&v18[v19];
    *&v18[v19] = _swiftEmptyArrayStorage;
    v21 = v18;
    sub_4A348C(v20);
  }

  return result;
}

void sub_1CA6B0()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_1CA8D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28399C();
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_234F64;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_756A94;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_234F64;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_756724;
      v12 = sub_7568E0;
      v13 = sub_7568B4;
      v14 = sub_7566F8;
    }
  }

  v15 = &v7[qword_950CB0];
  *v15 = sub_64A6C;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_3680EC();
  sub_1C750C();
  v16 = &v7[qword_950C70];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = v18[v20];
  sub_247BF0();

  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_501278(v6, 3, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:sub_7697E0()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_234F64;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_756A94;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_234F64;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_756724;
        v41 = sub_7568E0;
        v42 = sub_7568B4;
        v43 = sub_7566F8;
      }
    }

    v44 = &v37[qword_950CB0];
    *v44 = sub_64A6C;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_3680EC();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_1C750C();
      v48 = &v47[qword_950C70];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_1CB000();
  sub_189CD0();
  return [v1 setNeedsLayout];
}

void sub_1CB000()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_1C750C() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_1CB278(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_950C78) = v2[*v6];
  sub_367E48();
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_950C78] = v2[*v8];
    v9 = v7;
    sub_367E48();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_501F90();

  if (v2[v5])
  {
    v14 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v14 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1CB3D4(v2[*v14], v3, v13);

  return [v2 setNeedsLayout];
}

void sub_1CB3D4(unsigned __int8 a1, unsigned __int8 a2, __n128 a3)
{
  v4 = a1;
  v5 = a2;
  v6 = sub_75C100();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54[-1] - v11;
  if (v4 == 7)
  {
    if (v5 == 7)
    {
      return;
    }
  }

  else if (v5 != 7)
  {
    switch(v4)
    {
      case 6:
        if (v5 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v5 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v5 == 4)
        {
          return;
        }

        break;
      default:
        if ((v5 - 7) <= 0xFFFFFFFC && v4 == v5)
        {
          return;
        }

        break;
    }
  }

  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    sub_75C060();
    sub_75C0A0();
    sub_75C0E0();
    v13 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView;
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
    v53 = v7;
    if (v14)
    {
      [v14 setHidden:0];
    }

    else
    {
      (*(v7 + 16))(v9, v12, v6);
      v15 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
      v16 = sub_4A2A8C(v9);
      [v16 setClipsToBounds:1];
      [v3 bounds];
      CGRectGetWidth(v58);
      [v3 bounds];
      CGRectGetHeight(v59);
      [v16 bounds];
      [v16 setBounds:?];
      [v16 _setContinuousCornerRadius:20.0];
      v17 = [v16 layer];

      v18 = [v3 traitCollection];
      v19 = sub_7699F0();

      if (v19)
      {
        v20 = 10;
      }

      else
      {
        v20 = 5;
      }

      [v17 setMaskedCorners:{v20, v53}];

      v21 = *&v3[v13];
      *&v3[v13] = v16;
      v22 = v16;

      v23 = [v3 contentView];
      [v23 addSubview:v22];
    }

    v24 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v25 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
      if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView])
      {
        v26 = [objc_allocWithZone(UIView) init];
        [v26 setClipsToBounds:1];
        v27 = *&v3[v24];
        *&v3[v24] = v26;
        v28 = v26;

        v29 = [v3 contentView];
        [v29 addSubview:v28];

        type metadata accessor for RiverCardDataSource();
        v30 = swift_allocObject();
        *(v30 + 32) = _swiftEmptyArrayStorage;
        *(v30 + 16) = xmmword_78A4F0;
        *(v30 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v53 + 16))(v9, v12, v6);
        v31 = objc_allocWithZone(sub_BD88(&qword_9497B8, &qword_78A780));

        v32 = sub_765950();
        [v32 setClipsToBounds:0];
        v33 = *&v3[v25];
        *&v3[v25] = v32;
        v34 = v32;

        [v28 addSubview:v34];
      }
    }

    v35 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v37 = v36;
      v38 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
      v39 = v36[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
      v36[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v38;
      if (v38 != v39)
      {
        [v36 setNeedsLayout];
      }

      v40 = v37;
      v41 = [v40 layer];
      [v41 setZPosition:0.0];

      [v40 setClipsToBounds:1];
      v42 = *&v3[v35];
      *&v3[v35] = v40;
      v43 = v40;

      v44 = [v3 contentView];
      [v44 addSubview:v43];
    }

    v45 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v54[0] = sub_64A6C;
      v54[1] = 0;
      v54[2] = sub_756A94;
      v54[3] = 0;
      v54[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[5] = 0;
      v54[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[7] = 0;
      v54[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v54[9] = 0;
      v54[10] = sub_234F64;
      v54[11] = 0;
      v55 = 0x4000000000000000uLL;
      *v56 = 0;
      *&v56[8] = 0x4018000000000000;
      *&v56[16] = 0;
      v56[24] = 1;
      v46 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
      v47 = sub_367388(v54, &v55);
      sub_1C750C();
      v48 = &v47[qword_950C70];
      *(v48 + 25) = *&v56[9];
      v49 = *v56;
      *v48 = v55;
      *(v48 + 1) = v49;
      [v47 setNeedsLayout];
      v47[qword_950C78] = v4;
      sub_367E48();
      v50 = *&v3[v45];
      *&v3[v45] = v47;
      v51 = v47;

      v52 = [v3 contentView];
      [v52 addSubview:v51];
    }

    [v3 setNeedsLayout];
    (*(v53 + 8))(v12, v6);
  }

  else
  {

    sub_1CA6B0();
  }
}

void sub_1CBB4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  swift_weakAssign();
  v4 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_F704(v5, v6);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1D6524(&qword_9497B0, type metadata accessor for TodayListCardLockupContainer, &unk_7AF0B0);
  sub_7633E0();
  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v7)
  {
    v8 = v7;
    sub_7633E0();
  }
}

void sub_1CBC7C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1D6524(&qword_9497B0, type metadata accessor for TodayListCardLockupContainer, &unk_7AF0B0);
  sub_7633D0();
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v6)
  {
    v7 = v6;
    sub_7633D0();
  }
}

void sub_1CBDBC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v6 = v5;
  v152 = a4;
  v8 = a2;
  v160 = a1;
  v146 = sub_75F730();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v153 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_765B10();
  v156 = *(v10 - 8);
  v157 = v10;
  __chkstk_darwin(v10);
  v154 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_760260();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v158 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v131 - v14;
  v15 = sub_BD88(&qword_9497A8, &unk_78A700);
  __chkstk_darwin(v15 - 8);
  v17 = &v131 - v16;
  v18 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v18 - 8);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v131 - v22;
  v24 = sub_7656C0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v144 = a3;
  v26(v23, a3, v24);
  (*(v25 + 56))(v23, 0, 1, v24);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v23, &v5[v27], &unk_955AA0, &qword_783ED0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v155 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v29 = *&v155[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  sub_1ED18(&v5[v27], v20, &unk_955AA0, &qword_783ED0);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v31 = v29;
  sub_B33C8(v20, v29 + v30, &unk_955AA0, &qword_783ED0);
  swift_endAccess();

  v159 = v8;
  sub_28026C(v8);
  v32 = [v5 backgroundView];
  if (v32)
  {
    v33 = v32;
    v34 = sub_765A30();
    if (!v34)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v34 = sub_76A060();
    }

    v35 = v34;
    [v33 setBackgroundColor:v34];
  }

  *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard] = v160;

  v36 = sub_765B20();
  sub_75DB40();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

    *(*&v155[v28] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
    sub_1CB000();
    return;
  }

  v38 = v37;
  v142 = v36;
  sub_765B30();
  (*(v156 + 56))(v17, 0, 1, v157);
  v39 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_B33C8(v17, &v6[v39], &qword_9497A8, &unk_78A700);
  swift_endAccess();
  v40 = sub_75DAF0();
  v41 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark;
  v6[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = v40 & 1;
  v141 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v42 = v6[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v170 = sub_765B20();
  sub_75B090();
  sub_BD88(&qword_947B48, &qword_789000);
  v43 = swift_dynamicCast();
  v148 = v38;
  if (v43)
  {
    v147 = v41;
    sub_10914(&v167, &aBlock);
    sub_B170(&aBlock, v164);
    v44 = [v6 traitCollection];
    v45 = sub_7618A0();

    if (v45)
    {
      sub_B170(&aBlock, v164);
      v46 = sub_761880();
      if (v46)
      {
        sub_1D2FCC(v45, v46, v159, v144, v152);

        if (qword_93C9E0 != -1)
        {
          swift_once();
        }

        v47 = qword_99C950;
        v48 = *algn_99C958;
        v49 = sub_75DAF0();
        v50 = v149;
        sub_765AA0();
        v51 = sub_760240();
        (*(v150 + 8))(v50, v151);
        sub_1D278C(v47, v48, v49 & 1, v51 & 1);

        sub_BEB8(&aBlock);
        v41 = v147;
        goto LABEL_29;
      }
    }

    sub_BEB8(&aBlock);
    v41 = v147;
  }

  else
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_10A2C(&v167, &qword_947B50, &unk_78A770);
  }

  v170 = sub_765B20();
  if (!swift_dynamicCast())
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_10A2C(&v167, &qword_947B50, &unk_78A770);
LABEL_28:
    *(*&v155[v28] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_10914(&v167, &aBlock);
  sub_B170(&aBlock, v164);
  v52 = [v6 traitCollection];
  v53 = sub_7618B0();

  if (!v53)
  {
LABEL_27:
    sub_BEB8(&aBlock);
    goto LABEL_28;
  }

  sub_B170(&aBlock, v164);
  v54 = sub_761880();
  if (!v54)
  {

    goto LABEL_27;
  }

  v55 = v41;
  if (v42 == 7)
  {
    v56 = v159;
  }

  else
  {
    v56 = v42;
  }

  sub_1D4D4C(v53, v54, v56, v144, v152);

  if (qword_93C9D8 != -1)
  {
    swift_once();
  }

  v57 = qword_99C940;
  v58 = *algn_99C948;
  v59 = sub_75DAF0();
  v60 = v149;
  sub_765AA0();
  v61 = sub_760240();
  (*(v150 + 8))(v60, v151);
  sub_1D278C(v57, v58, v59 & 1, v61 & 1);

  sub_BEB8(&aBlock);
  v41 = v55;
LABEL_29:
  v62 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_1C750C() & 1) != 0 && *(v41 + v6) == 1)
  {
    (*(v156 + 104))(v154, enum case for TodayCard.Style.dark(_:), v157);
  }

  else
  {
    sub_765B30();
  }

  v63 = sub_765B50();
  v65 = v64;
  v143 = sub_765B40();
  v147 = v66;
  v67 = sub_765A10();
  v149 = v68;
  sub_765A80();
  v69 = sub_75DB10();
  v155 = v70;
  sub_765AA0();
  v71 = v159;
  v72 = sub_756A94;
  v134 = v69;
  v133 = v67;
  if (v159 == 6)
  {
    v135 = sub_64A6C;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v138 = sub_234F64;
  }

  else if (v159 == 4)
  {
    v138 = sub_234F64;
    v137 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v72 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v135 = sub_64A6C;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v138 = sub_756724;
    v137 = sub_7568E0;
    v136 = sub_7568B4;
    v72 = sub_7566F8;
    v135 = sub_64A6C;
  }

  v139 = sub_1C750C();
  v62[qword_950CA8] = 0;
  v73 = *&v62[qword_950C90];
  *(v73 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v74 = *&v62[qword_950C88];
  v140 = v65;
  sub_728444(v63, v65);
  v75 = sub_760250();
  v76 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v77 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v71 != 4 || (v75 & 1) != 0)
  {
    v78 = [v77 text];
    if (v78)
    {
      v79 = v78;
      sub_769240();
    }

    v80 = sub_7692D0();
    v81 = v80 & 1;

    if (v81 == [*&v74[v76] isHidden] || (v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v74[v76] setHidden:v81];
    }

    else
    {
      if ((v80 & 1) == 0)
      {
        [*&v74[v76] setAlpha:0.0];
        v131 = objc_opt_self();
        [v131 inheritedAnimationDuration];
        v83 = v82;
        v84 = swift_allocObject();
        *(v84 + 16) = v74;
        v165 = sub_A922C;
        v166 = v84;
        aBlock = _NSConcreteStackBlock;
        v162 = 1107296256;
        v163 = sub_23F0CC;
        v164 = &unk_887F10;
        v132 = _Block_copy(&aBlock);
        v85 = v74;

        v86 = swift_allocObject();
        *(v86 + 16) = v85;
        v165 = sub_A9238;
        v166 = v86;
        aBlock = _NSConcreteStackBlock;
        v162 = 1107296256;
        v163 = sub_3D6D80;
        v164 = &unk_887F60;
        v87 = _Block_copy(&aBlock);
        v88 = v85;

        v89 = v132;
        [v131 animateWithDuration:0 delay:v132 options:v87 animations:v83 completion:0.0];
        _Block_release(v87);
        _Block_release(v89);
      }

      [*&v74[v76] setHidden:v80 & 1];
      v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v74 setNeedsLayout];
    }
  }

  else if (([v77 isHidden] & 1) != 0 || (v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v74[v76] setHidden:1];
  }

  else
  {
    [*&v74[v76] setHidden:1];
    v74[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  v90 = &v62[qword_950CB0];
  *v90 = v135;
  v90[1] = 0;
  v90[2] = v72;
  v90[3] = 0;
  v90[4] = v136;
  v90[5] = 0;
  v90[6] = v137;
  v90[7] = 0;
  v90[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v90[9] = 0;
  v90[10] = v138;
  v90[11] = 0;

  sub_3680EC();
  v91 = v155;
  if (v147)
  {
    if (v159 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v92 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v93 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v94 = objc_allocWithZone(NSAttributedString);
    v95 = v93;
    v96 = sub_769210();
    type metadata accessor for Key(0);
    sub_1D6524(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
    isa = sub_7690E0().super.isa;

    v98 = [v94 initWithString:v96 attributes:isa];

    [v95 setAttributedText:v98];
    [*(v73 + v92) setAdjustsFontSizeToFitWidth:0];
    [*(v73 + v92) setMinimumScaleFactor:0.0];
    [*(v73 + v92) setAttributedText:0];
    if (v149 && v62[qword_950C80] == 4)
    {
      v91 = v155;
      if (v159 == 4)
      {
        v99 = v143;
        v100 = v147;
        v101 = v133;
        v102 = v149;
      }

      else
      {
        v99 = v133;
        v100 = v149;
        v101 = v143;
        v102 = v147;
      }

      sub_72853C(v99, v100, v101, v102);
    }

    else
    {
      sub_728444(v143, v147);
      v91 = v155;
    }
  }

  v103 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v104 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v105 = [v104 text];
  if (v105)
  {
    v106 = v148;
    v107 = &unk_90D000;
  }

  else
  {
    v105 = [*(v73 + v103) attributedText];
    v107 = &unk_90D000;
    if (!v105)
    {
      v108 = 1;
      v106 = v148;
      goto LABEL_68;
    }

    v106 = v148;
  }

  v108 = 0;
LABEL_68:
  v109 = v159;
  [v104 setHidden:v108];

  [v62 v107[463]];
  v110 = *&v62[qword_950C98];
  [v110 setImage:0];
  [v110 setHidden:1];
  if (v109 != 4 && (sub_760230() & 1) == 0 && v91)
  {
    v111 = v106;
    v112 = HIBYTE(v91) & 0xF;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v112 = v134 & 0xFFFFFFFFFFFFLL;
    }

    v113 = v112 == 0;
    v114 = *&v62[qword_950CA0];
    v115 = &v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v116 = *&v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v114 = *&v62[qword_950CA0];
  v115 = &v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v116 = *&v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v91)
  {
    v111 = v106;
    v113 = 1;
LABEL_76:
    v117 = v116;
    v91 = sub_769210();
    v106 = v111;
    goto LABEL_78;
  }

  v117 = v116;
  v113 = 1;
LABEL_78:
  [v117 setText:v91];

  if (v113 == [*v115 isHidden] || (v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v115 setHidden:v113];
  }

  else
  {
    if (!v113)
    {
      [*v115 setAlpha:0.0];
      v118 = objc_opt_self();
      [v118 inheritedAnimationDuration];
      v120 = v119;
      v121 = swift_allocObject();
      *(v121 + 16) = v114;
      v165 = sub_A8FE4;
      v166 = v121;
      aBlock = _NSConcreteStackBlock;
      v162 = 1107296256;
      v163 = sub_23F0CC;
      v164 = &unk_887E70;
      v122 = _Block_copy(&aBlock);
      v123 = v114;

      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      v165 = sub_A9004;
      v166 = v124;
      aBlock = _NSConcreteStackBlock;
      v162 = 1107296256;
      v163 = sub_3D6D80;
      v164 = &unk_887EC0;
      v125 = _Block_copy(&aBlock);
      v126 = v123;
      v106 = v148;

      [v118 animateWithDuration:0 delay:v122 options:v125 animations:v120 completion:0.0];
      _Block_release(v125);
      _Block_release(v122);
    }

    [*v115 setHidden:v113];
    v114[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v114 setNeedsLayout];
  }

  v127 = v154;
  sub_366B5C(v154, v139 & 1);
  [v62 setNeedsLayout];

  (*(v150 + 8))(v158, v151);
  (*(v145 + 8))(v153, v146);
  sub_1C750C();
  v128 = &v62[qword_950C70];
  *v128 = 0x4000000000000000;
  *(v128 + 1) = 0;
  *(v128 + 2) = 0;
  *(v128 + 3) = 0x4018000000000000;
  *(v128 + 4) = 0;
  v128[40] = 1;
  [v62 setNeedsLayout];
  (*(v156 + 8))(v127, v157);
  v129 = sub_75DB30();
  sub_75A110();
  sub_768900();
  v130 = v152;
  sub_768ED0();
  sub_6FAD6C(v129, aBlock, v130);

  if (v6[v141] == 6)
  {
    sub_1CD530(v160, v106, v159, v144, v130);
  }

  sub_1C72E0();
  sub_1CA6B0();
  sub_1CB000();
  sub_1C75D0();
  sub_1CEAB8();
  [v6 setNeedsLayout];
}

void sub_1CD530(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v135 = a5;
  v149 = a3;
  v148 = a1;
  v139 = sub_760260();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v150 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_75F730();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v144 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
  v140 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v15 = *(*(v142 + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  v146 = a2;
  v147 = v5;
  v145 = v14;
  v143 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = sub_765960();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_4A348C(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = sub_765960();

    v26 = sub_75DB30();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = sub_765960();

      sub_75A110();
      sub_768900();
      sub_768ED0();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = sub_75DB30();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = sub_76A860();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v134 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v134 = _swiftEmptyArrayStorage;
  v141 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (sub_764F20())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v141;
        goto LABEL_34;
      }
    }

    v36 = sub_7651A0();

    if (!v36)
    {
      goto LABEL_15;
    }

    sub_769440();
    if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v134 = aBlock;
    v11 = v141;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v134;
  sub_4A348C(v38);
  v6 = v147;
  v14 = v145;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v140[v142] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1;
  v141 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    sub_765B30();
    goto LABEL_46;
  }

LABEL_45:
  (*(v144 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = sub_765B50();
  v46 = v45;
  v134 = sub_765B40();
  v140 = v47;
  v127 = sub_765A10();
  v142 = v48;
  sub_765A80();
  v49 = sub_75DB10();
  v148 = v50;
  sub_765AA0();
  v51 = v149;
  v52 = sub_756A94;
  v128 = v49;
  if (v149 == 6)
  {
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v133 = sub_234F64;
  }

  else if (v149 == 4)
  {
    v133 = sub_234F64;
    v132 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v133 = sub_756724;
    v132 = sub_7568E0;
    v131 = sub_7568B4;
    v52 = sub_7566F8;
  }

  v129 = sub_1C750C();
  v39[qword_950CA8] = 0;
  v53 = *&v39[qword_950C90];
  *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_950C88];
  v130 = v46;
  sub_728444(v44, v46);
  v55 = sub_760250();
  v56 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      sub_769240();
    }

    v60 = sub_7692D0();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v126 = objc_opt_self();
        [v126 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v155 = sub_A922C;
        v156 = v64;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_23F0CC;
        v154 = &unk_8880A0;
        v125 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v155 = sub_A9238;
        v156 = v66;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_3D6D80;
        v154 = &unk_8880F0;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v125;
        [v126 animateWithDuration:0 delay:v125 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_950CB0];
  *v70 = sub_64A6C;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v131;
  v70[5] = 0;
  v70[6] = v132;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v133;
  v70[11] = 0;

  sub_3680EC();
  v11 = v148;
  if (v140)
  {
    if (v149 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v71 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = sub_769210();
    type metadata accessor for Key(0);
    sub_1D6524(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
    isa = sub_7690E0().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v142 && v39[qword_950C80] == 4)
    {
      v11 = v148;
      if (v149 == 4)
      {
        v78 = v134;
        v79 = v140;
        v80 = v127;
        v81 = v142;
      }

      else
      {
        v78 = v127;
        v79 = v142;
        v80 = v134;
        v81 = v140;
      }

      sub_72853C(v78, v79, v80, v81);
    }

    else
    {
      sub_728444(v134, v140);
      v11 = v148;
    }
  }

  v82 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v147;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v147;
  }

  v86 = v149;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_950C98];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (sub_760230() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_950CA0];
    v91 = &v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v128 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_950CA0];
    v91 = &v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = sub_769210();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v145;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v155 = sub_A922C;
      v156 = v99;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v153 = sub_23F0CC;
      v154 = &unk_888000;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v155 = sub_A9238;
      v156 = v101;
      aBlock = _NSConcreteStackBlock;
      v152 = 1107296256;
      v6 = v147;
      v153 = sub_3D6D80;
      v154 = &unk_888050;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v145;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v141;
  sub_366B5C(v95, v129 & 1);
  [v39 setNeedsLayout];

  (*(v138 + 8))(v150, v139);
  (*(v136 + 8))(v143, v137);
  sub_1C750C();
  v105 = &v39[qword_950C70];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v144 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = sub_75DB30();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = sub_76A860();
    if (sub_76A860() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v123 = 6;
    }

    else
    {
      v123 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v123;
    }

    else
    {
      v110 = 6;
    }

    if (sub_76A860() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      sub_764F90();

      sub_76A750(0);
      if (v110 != 1)
      {
        sub_76A750(1);
        if (v110 != 2)
        {
          sub_76A750(2);
          if (v110 != 3)
          {
            sub_76A750(3);
            if (v110 != 4)
            {
              sub_76A750(4);
              if (v110 != 5)
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

    if (v108)
    {
      v111 = sub_76A870();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        sub_76A970();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = *(v118 + 2);

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              sub_75A110();
              sub_768900();
              v121 = v120;
              v122 = v135;
              sub_768ED0();
              sub_6FAD6C(v117, aBlock, v122);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_4A60D0(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8));
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}