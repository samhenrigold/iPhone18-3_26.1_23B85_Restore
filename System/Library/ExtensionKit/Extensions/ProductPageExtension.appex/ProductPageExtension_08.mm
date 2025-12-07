uint64_t sub_1000F2F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10076D3DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000F2FDC(uint64_t a1)
{
  sub_10076D3DC();
  if (v1 <= 0x3F)
  {
    sub_100016F40(319, &qword_100942F10, UIColor_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F30A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10075FEEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_100769C7C();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000F31AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10075FEEC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_100769C7C();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1000F32AC(uint64_t a1)
{
  result = sub_10075FEEC();
  if (v2 <= 0x3F)
  {
    result = sub_100769C7C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F3340()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000F3380(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v109 = a5;
  v117 = sub_10000A5D4(&qword_100948950, &qword_10078B138);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v93 - v8;
  v9 = sub_100769C7C();
  __chkstk_darwin(v9 - 8);
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10077111C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10076D7FC();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v101 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v93 - v14;
  __chkstk_darwin(v15);
  v103 = &v93 - v16;
  __chkstk_darwin(v17);
  v104 = &v93 - v18;
  __chkstk_darwin(v19);
  v105 = &v93 - v20;
  __chkstk_darwin(v21);
  v106 = &v93 - v22;
  v112 = sub_100769C9C();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v25 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v97 = a6;
  v26 = a6 + v25;
  v115 = a1;
  v27 = sub_100770B3C();
  v120 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v28 = *(v26 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v29 = [objc_opt_self() labelColor];
  v30 = sub_10076081C();
  v31 = sub_10076082C();
  sub_100032368(v31, sub_100032360);
  v121 = v32;

  v33 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v33 setAlignment:4];
  [v33 setLineBreakMode:v28];
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v35 = sub_100016F40(0, &unk_10095D790, NSMutableParagraphStyle_ptr);
  *(inited + 40) = v33;
  *(inited + 64) = v35;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v24;
  *(inited + 80) = v27;
  v36 = NSParagraphStyleAttributeName;
  v37 = v33;
  v38 = NSFontAttributeName;
  v39 = v27;
  v40 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v132 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *&aBlock = v29;
  sub_10000CD64(&aBlock, &v126);
  v99 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v135 = v40;
  sub_10024A2F4(&v126, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v136 = v135;

  sub_100016F40(0, &unk_10094E7F0, NSMutableAttributedString_ptr);
  v119 = v39;
  v100 = v30;
  v42 = sub_10075F9DC();
  v43 = v136;

  v44.super.isa = v42;
  v45._rawValue = v43;
  isa = sub_10077079C(v44, v45).super.isa;
  v47 = v37;
  v48 = isa;
  v49 = [(objc_class *)v48 fullRange];
  [(objc_class *)v48 addAttribute:v36 value:v47 range:v49, v50];
  v98 = v47;

  v118 = swift_allocObject();
  *(v118 + 16) = 0;
  *&v126 = 0;
  v51 = *(v121 + 16);
  v123 = NSLinkAttributeName;
  if (v51)
  {
    v122 = NSUnderlineStyleAttributeName;
    v52 = v121 + 72;
    do
    {
      v53 = *(v52 - 24);
      v124 = *(v52 - 8);

      v125 = v53;

      v54 = v48;
      v55 = sub_100245D94(&v126, v48);
      v56 = sub_10076FF6C();
      v57 = [v55 rangeOfString:v56 options:4];
      v59 = v58;

      v48 = v54;
      if (v57 != sub_10075D75C())
      {
        v60 = sub_10076FF6C();
        [(objc_class *)v54 addAttribute:v123 value:v60 range:v57, v59];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v61 = sub_1007703CC().super.super.isa;
          [(objc_class *)v54 addAttribute:v122 value:v61 range:v57, v59];
        }
      }

      v52 += 48;

      --v51;
    }

    while (v51);
  }

  v62 = [(objc_class *)v48 fullRange];
  v64 = v63;
  v65 = v48;
  v66 = swift_allocObject();
  v67 = v121;
  v66[2] = v120;
  v66[3] = v67;
  v68 = v119;
  v66[4] = v118;
  v66[5] = v68;
  v66[6] = &v136;
  v66[7] = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1000F41BC;
  *(v69 + 24) = v66;
  v133 = sub_10000A6AC;
  v134 = v69;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v131 = sub_1002464A8;
  v132 = &unk_100888D08;
  v70 = _Block_copy(&aBlock);
  v71 = v68;

  [(objc_class *)v65 enumerateAttribute:v123 inRange:v62 options:v64 usingBlock:0, v70];
  _Block_release(v70);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if (v68)
  {
    __break(1u);
  }

  else
  {
    v72 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v65];

    v73 = v126;

    v132 = sub_10076DA7C();
    v133 = &protocol witness table for LabelPlaceholder;
    sub_10000DB7C(&aBlock);
    v74 = v71;
    v75 = v72;
    v76 = v101;
    sub_10076D7EC();
    v77 = v102;
    sub_10076D7DC();
    v78 = *(v107 + 8);
    v79 = v108;
    v78(v76, v108);
    v80 = v103;
    sub_10076D73C();
    v78(v77, v79);
    v81 = v104;
    sub_10076D79C();
    v78(v80, v79);
    v82 = v105;
    sub_10076D78C();
    v78(v81, v79);
    sub_10076D7AC();
    v78(v82, v79);
    sub_10076DA5C();
    v83 = v75;
    sub_10076DAAC();

    if (v109)
    {
      v84 = v109;
      v85 = v94;
      sub_1000F1ADC(v84, v115);
      v86 = type metadata accessor for ButtonPlaceholder(0);
      v87 = swift_allocObject();
      *(v87 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v95 + 32))(v87 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v85, v96);

      v88 = sub_1000F4340(&qword_100948960, type metadata accessor for ButtonPlaceholder, &protocol conformance descriptor for ButtonPlaceholder);
    }

    else
    {
      v87 = 0;
      v86 = 0;
      v88 = 0;
      v127 = 0;
      *(&v126 + 1) = 0;
    }

    *&v126 = v87;
    v128 = v86;
    v129 = v88;
    sub_100769C6C();
    v89 = v110;
    sub_100769C8C();
    sub_1000F4340(&qword_100948958, &type metadata accessor for SearchResultsContextCardLayout, &protocol conformance descriptor for SearchResultsContextCardLayout);
    v90 = v114;
    v91 = v112;
    sub_10076D43C();
    swift_getOpaqueTypeConformance2();
    v92 = v117;
    sub_10076E0FC();

    (*(v116 + 8))(v90, v92);
    (*(v111 + 8))(v89, v91);
  }
}

uint64_t sub_1000F416C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1000F41FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F4214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F427C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F42E4(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F4340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for InstallProgressView.ProgressState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000F440C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

unint64_t sub_1000F4438()
{
  result = qword_100948970;
  if (!qword_100948970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948970);
  }

  return result;
}

unint64_t sub_1000F4490()
{
  result = qword_100948978;
  if (!qword_100948978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948978);
  }

  return result;
}

void sub_1000F44E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_10076079C();
  if (v7 >> 62)
  {
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= a1)
  {
    return;
  }

  v9 = sub_10076079C();
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  sub_10077149C();
LABEL_8:

  v10 = sub_10076273C();

  if (v10)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {

        sub_1000527AC(v6);
      }

      else
      {
        sub_100263BF0(v10, 1, v12, v6);

        (*(v14 + 8))(v6, v13);
      }
    }

    else
    {
    }
  }
}

void sub_1000F472C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  if (v1 >> 62)
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
    v3 = v1 & 0xC000000000000001;

    v4 = 0;
    v5 = &OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
    v14 = v1 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = *&v6[*v5];
      v9 = *(*(*&v8[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v9)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1000F593C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
          sub_1000F593C(&qword_1009489E0, type metadata accessor for HeroCarouselItemBackgroundView, &unk_10078CA90);
          v15 = v9;
          v10 = v5;
          v11 = v1;
          v12 = v2;
          v13 = v8;
          sub_100767D3C();
          v3 = v14;

          v7 = v13;
          v2 = v12;
          v1 = v11;
          v5 = v10;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

void sub_1000F4974()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  if (v1 >> 62)
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
    v3 = v1 & 0xC000000000000001;

    v4 = 0;
    v5 = &OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
    v14 = v1 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = *&v6[*v5];
      v9 = *(*(*&v8[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v9)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1000F593C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
          sub_1000F593C(&qword_1009489E0, type metadata accessor for HeroCarouselItemBackgroundView, &unk_10078CA90);
          v15 = v9;
          v10 = v5;
          v11 = v1;
          v12 = v2;
          v13 = v8;
          sub_100767CFC();
          v3 = v14;

          v7 = v13;
          v2 = v12;
          v1 = v11;
          v5 = v10;
        }
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

unint64_t sub_1000F4CCC()
{
  result = qword_100948988;
  if (!qword_100948988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948988);
  }

  return result;
}

void sub_1000F4D20(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_100766DDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094F150, &qword_100797F20);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  sub_10076078C();
  v15 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  sub_1000F5234(&v46, &v3[v15]);
  swift_endAccess();
  v16 = sub_10000A5D4(&qword_1009489D8, &qword_100797D70);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v44 = a2;
  v18(v14, a2, v16);
  v19 = *(v17 + 56);
  v42 = v16;
  v19(v14, 0, 1, v16);
  v20 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_1000F5290(v14, &v4[v20]);
  swift_endAccess();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v43 = v46;
  swift_unknownObjectWeakAssign();
  v21 = sub_10076079C();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_10077158C();
    v45 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  if (v23 < 0)
  {
    __break(1u);
    return;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v41 = a1;
  type metadata accessor for HeroCarouselItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = sub_10077149C();
    }

    else
    {
      v26 = *(v22 + 8 * v25 + 32);
    }

    ++v25;
    [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_100185440(v26, a3);

    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
  }

  while (v23 != v25);

  v27 = v46;
  v4 = v40;
  a1 = v41;
  v9 = v38;
  v8 = v39;
LABEL_12:
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  v28 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
  sub_1000F4CCC();
  sub_10076F84C();
  if (v47)
  {
    v29 = 0;
  }

  else
  {
    v29 = v46;
  }

  sub_10065DEE0(v27, v29);

  v30 = v45;
  sub_10076077C();
  v31 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration;
  swift_beginAccess();
  (*(v9 + 40))(v28 + v31, v30, v8);
  swift_endAccess();
  LOBYTE(v30) = sub_10076075C();
  v32 = sub_10076076C();
  sub_10065E1C8(v30 & 1, v32 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = v33;
  v35 = &v4[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v36 = *&v4[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v37 = v35[1];
  *v35 = sub_1000F5378;
  v35[1] = v34;

  sub_1000167E0(v36, v37);
}

uint64_t sub_1000F5290(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094F150, &qword_100797F20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5300()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F5338()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000F5380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000A570(a1, v37);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_1007607AC();
  if (swift_dynamicCast())
  {
    v6 = sub_10076079C();
    v7 = v6;
    v8 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_34;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v35 = v7 & 0xFFFFFFFFFFFFFF8;
      v36 = v7 & 0xC000000000000001;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      v11 = 4;
      v33 = v8 & 0xC000000000000001;
      v34 = v8 >> 62;
      v31 = v8 & 0xFFFFFFFFFFFFFF8;
      v32 = v9;
      v28 = v8;
      v29 = v3;
      v27 = v7;
      do
      {
        v12 = v11 - 4;
        if (v36)
        {
          v13 = sub_10077149C();
          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v12 >= *(v35 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v7 + 8 * v11);

          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v9 = sub_10077158C();
            goto LABEL_4;
          }
        }

        if (v34)
        {
          if (v12 == sub_10077158C())
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else if (v12 == *(v10 + 16))
        {
          goto LABEL_28;
        }

        if (v33)
        {
          v15 = sub_10077149C();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v8 + 8 * v11);
        }

        v16 = v15;
        type metadata accessor for HeroCarouselCollectionViewCell(0);
        sub_10076422C();
        sub_100131F7C(v17, v18, v13, a2);
        v19 = sub_10076279C();
        if (v19)
        {
          v20 = v19;
          v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
          if (v21)
          {
            v22 = *&v16[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView + 8];
            ObjectType = swift_getObjectType();
            v30 = *(v22 + 40);
            v24 = v21;
            v25 = ObjectType;
            v26 = v22;
            v8 = v28;
            v3 = v29;
            v30(v20, a2, v25, v26);
            v7 = v27;

            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v10 = v31;
        ++v11;
      }

      while (v14 != v32);
    }

LABEL_29:
  }

  return result;
}

double sub_1000F568C(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView];
      v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_artworkView);
      sub_10075FD2C();
      sub_1000F593C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v11 = v10;
      sub_100760BFC();

      v12 = *(*(*(v9 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v12)
      {
        type metadata accessor for VideoView(0);
        if (swift_dynamicCastClass())
        {
          sub_1000F593C(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
          v13 = v12;
          sub_100760BFC();
        }
      }

      v14 = *&v7[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
      if (v14)
      {
        v15 = *&v7[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView + 8];
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        v18 = v14;
        v17(a1, a2 & 1, ObjectType, v15);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  return result;
}

uint64_t sub_1000F593C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F5984(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1009411F8 != -1)
    {
      swift_once();
    }

    v8 = qword_1009A2368;
  }

  else
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v8 = qword_1009A2380;
  }

  v9 = sub_10076D9AC();
  sub_10000A61C(v9, v8);
  sub_10076D17C();
  sub_10076D40C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t type metadata accessor for SearchResultsPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_1009489E8;
  if (!qword_1009489E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F5BA0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_10000A570(a1, v7);
  sub_10000A570(v7, &v6);
  v4 = sub_1007697CC();
  sub_10000CD74(a1);
  sub_10000CD74(v7);
  return v4;
}

id sub_1000F5C2C(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, void *a5, char *a6, void (*a7)(char *, unint64_t, uint64_t), uint64_t a8, uint64_t a9, void *a10)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v66 = a5;
  v67 = a6;
  v64 = a10;
  v58 = a9;
  v12 = sub_10076341C();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076B5BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = a2(v24);
  v28 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v20;
  v53 = v29;
  v29(v26, v20);
  v59 = v19;
  v60 = v15;
  v30 = *(v15 + 88);
  v61 = v14;
  v31 = v30(v19, v14);
  if (v31 == enum case for Shelf.ContentType.searchResult(_:) && *(v27 + 16) && (v32 = v50, v33 = v51, v34 = v52, (*(v51 + 16))(v50, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v52), sub_10076499C(), sub_1000F79FC(&qword_100948A38, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult), sub_10076332C(), (*(v33 + 8))(v32, v34), (v31 = v68) != 0))
  {

    v35 = sub_1000F6290(v28, v27, v63, v66, v67, v65, v62, v58, v64);

    sub_1007697EC();
    v36 = v60;
    v37 = v61;
  }

  else
  {
    v52 = &v49;
    __chkstk_darwin(v31);
    __chkstk_darwin(v38);
    sub_10076980C();
    v39 = sub_10076981C();
    v40 = v58;
    v41 = v28;
    v51 = v27;
    v42 = v62;
    v50 = v39(v28, sub_1000F79F4, &v49 - 4, v63, v66, v67, v65, v62, v58, v64);
    v43 = v54;
    sub_10076468C();
    swift_getKeyPath();
    v45 = v56;
    v44 = v57;
    sub_10076F49C();

    v53(v43, v45);
    v37 = v61;
    v46 = v30(v44, v61);
    if (v46 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = sub_10075203C(v41, v51, v63, v66, v67, v65, v42, v40, v64);

      v36 = v60;
    }

    else
    {
      v35 = v50;
      v36 = v60;
      if (v46 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v47 = sub_100753380(v41, v51, v63, v66, v67, v65, v62, v40, v64);

        v35 = v47;
      }

      else if (v46 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        [v50 setOrthogonalScrollingBehavior:{2, v66, v67}];
      }

      else
      {

        (*(v36 + 8))(v57, v37);
      }
    }
  }

  (*(v36 + 8))(v59, v37);
  return v35;
}

id sub_1000F6290(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(char *, unint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  v158 = a8;
  v148 = a7;
  v163 = a4;
  *&v159 = a3;
  v149 = a1;
  v167 = a9;
  v154 = sub_10076B5BC();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v157 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v151 = *(v152 - 1);
  __chkstk_darwin(v152);
  v150 = v131 - v13;
  v14 = sub_10076C38C();
  v145 = *(v14 - 8);
  __chkstk_darwin(v14);
  v144 = v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = sub_100769AAC();
  v16 = *(i - 1);
  __chkstk_darwin(i);
  v156 = v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v155 = v131 - v19;
  __chkstk_darwin(v20);
  v162 = v131 - v21;
  __chkstk_darwin(v22);
  v161 = v131 - v23;
  v24 = sub_10076341C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v32 = v131 - v30;
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v141 = *(a2 + 16);
  v140 = v16;
  v33 = *(v25 + 16);
  v34 = a2;
  v142 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v165 = v33;
  v166 = (v25 + 16);
  (v33)(v131 - v30, a2 + v142, v24, v31);
  v35 = sub_10076499C();
  sub_1000F79FC(&qword_100948A38, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v146 = v35;
  sub_10076332C();
  v36 = v171;
  if (!v171)
  {
    v29 = (*(v25 + 8))(v32, v24);
    goto LABEL_6;
  }

  v160 = v24;
  v143 = v32;
  if (sub_10076497C())
  {
    (*(v25 + 8))(v143, v160);

LABEL_6:
    a2 = v34;
LABEL_7:
    v147 = a2;
    i = v131;
    __chkstk_darwin(v29);
    __chkstk_darwin(v37);
    sub_10076980C();
    v38 = sub_10076981C();
    v39 = v149;
    v40 = v159;
    v41 = v163;
    v42 = v148;
    v162 = a5;
    v165 = a6;
    v166 = v38(v149, sub_1000F7A44, &v131[-4], v159, v163, a5, a6, v148, v158, v167);
    v43 = v150;
    sub_10076468C();
    swift_getKeyPath();
    v44 = v157;
    v45 = v152;
    sub_10076F49C();

    (*(v151 + 8))(v43, v45);
    v46 = v153;
    v47 = v154;
    v48 = (*(v153 + 88))(v44, v154);
    if (v48 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v49 = sub_10075203C(v39, v147, v40, v41, v162, v165, v42, v158, v167);
    }

    else
    {
      v50 = v166;
      if (v48 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v49 = sub_100753380(v149, v147, v159, v163, v162, v165, v148, v158, v167);
      }

      else if (v48 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v49 = v166;
        [v166 setOrthogonalScrollingBehavior:2];
      }

      else
      {
        (*(v46 + 8))(v157, v47);
        return v50;
      }
    }

    return v49;
  }

  v137 = v36;
  v139 = v14;
  v51 = sub_100760A8C();
  v163 = sub_1000F79FC(&qword_100948A40, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  v164 = v51;
  sub_10076332C();
  v138 = v25;
  v157 = v27;
  if (v171)
  {
    if (sub_1000E9CE8())
    {
      sub_10076571C();
      v53 = v52;
    }

    else
    {

      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v55 = objc_opt_self();
  v56 = [v55 fractionalWidthDimension:1.0];
  v134 = v55;
  v57 = [v55 absoluteDimension:v53];
  v133 = objc_opt_self();
  v58 = [v133 sizeWithWidthDimension:v56 heightDimension:v57];

  swift_getObjectType();
  v59 = v58;
  sub_10076815C();
  sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
  isa = sub_1007701AC().super.isa;

  v61 = [objc_opt_self() itemWithLayoutSize:v59 supplementaryItems:isa];

  v62 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v63 = swift_allocObject();
  v159 = xmmword_1007841E0;
  *(v63 + 16) = xmmword_1007841E0;
  *(v63 + 32) = v61;
  v64 = sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v135 = v61;
  v131[2] = v64;
  v65 = sub_1007701AC().super.isa;

  v132 = v62;
  v136 = v59;
  v66 = [v62 horizontalGroupWithLayoutSize:v59 subitems:v65];

  v67 = swift_allocObject();
  *(v67 + 16) = v159;
  *(v67 + 32) = v66;
  v174 = v67;
  v68 = v142;
  sub_100234AEC(v34, v34 + v142, 1, (2 * v141) | 1);
  v70 = v69;
  v71 = *(v69 + 16);
  v141 = v66;
  if (v71)
  {
    v173 = _swiftEmptyArrayStorage;
    sub_1004BBAA4(0, v71, 0);
    v131[1] = v70;
    v72 = v70 + v68;
    v153 = v140 + 104;
    v152 = (v140 + 8);
    v73 = v173;
    v74 = (v138 + 8);
    v75 = *(v138 + 72);
    LODWORD(v150) = enum case for SearchResultCondensedBehavior.always(_:);
    v76 = v157;
    v77 = v160;
    v151 = v75;
    do
    {
      v165(v76, v72, v77);
      sub_10076332C();
      v78 = v171;
      if (!v171)
      {
        goto LABEL_55;
      }

      v154 = sub_100765F5C();
      if (swift_dynamicCastClass())
      {
        *&v159 = v78;
        v79 = v74;
        sub_100760A7C();
        (*v153)(v162, v150, i);
        sub_1000F79FC(&qword_100948258, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        sub_10077018C();
        sub_10077018C();
        if (v171 == v169 && v172 == v170)
        {
          v80 = *v152;
          v81 = i;
          (*v152)(v162, i);
          v80(v161, v81);

          v76 = v157;
          v74 = v79;
          v75 = v151;
LABEL_28:
          type metadata accessor for CondensedEditorialSearchResultContentView(0);
          v85 = type metadata accessor for CondensedEditorialSearchResultContentView;
          v86 = &unk_100783FD4;
          v87 = &unk_100948268;
          goto LABEL_37;
        }

        v82 = sub_10077167C();
        v83 = *v152;
        v84 = i;
        (*v152)(v162, i);
        v83(v161, v84);

        v76 = v157;
        v75 = v151;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v88 = sub_10075E7FC();
      if (swift_dynamicCastClass())
      {
        *&v159 = v88;
        sub_100760A7C();
        (*v153)(v156, v150, i);
        sub_1000F79FC(&qword_100948258, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        sub_10077018C();
        sub_10077018C();
        if (v171 == v169 && v172 == v170)
        {
          v89 = *v152;
          v90 = i;
          (*v152)(v156, i);
          v89(v155, v90);

          v76 = v157;
          v75 = v151;
LABEL_34:
          type metadata accessor for CondensedInAppPurchaseContentView(0);
          v85 = type metadata accessor for CondensedInAppPurchaseContentView;
          v86 = &unk_10078AFB8;
          v87 = &unk_100948260;
LABEL_37:
          sub_1000F79FC(v87, v85, v86);
          v77 = v160;
          goto LABEL_38;
        }

        LODWORD(v147) = sub_10077167C();
        v91 = *v152;
        v92 = i;
        (*v152)(v156, i);
        v91(v155, v92);

        v76 = v157;
        v75 = v151;
        if (v147)
        {
          goto LABEL_34;
        }
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for AdvertsSearchResultContentView();
        v85 = type metadata accessor for AdvertsSearchResultContentView;
        v86 = &unk_1007AA7CC;
        v87 = &unk_100948250;
        goto LABEL_37;
      }

      sub_100763F3C();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for BundleSearchResultContentView();
        v85 = type metadata accessor for BundleSearchResultContentView;
        v86 = &unk_1007B5EDC;
        v87 = &unk_100948248;
        goto LABEL_37;
      }

      sub_10075ECBC();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for AppSearchResultContentView();
        v85 = type metadata accessor for AppSearchResultContentView;
        v86 = &unk_1007ABCB0;
        v87 = &unk_100948240;
        goto LABEL_37;
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for EditorialSearchResultContentView();
        v85 = type metadata accessor for EditorialSearchResultContentView;
        v86 = &unk_100796AD0;
        v87 = &unk_100948238;
        goto LABEL_37;
      }

      v95 = swift_dynamicCastClass();
      v77 = v160;
      if (v95)
      {
        type metadata accessor for InAppPurchaseSearchResultContentView(0);
        v96 = type metadata accessor for InAppPurchaseSearchResultContentView;
        v97 = &unk_10079F004;
        v98 = &unk_100948230;
      }

      else
      {
        sub_10076947C();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for LockupCollectionSearchResultContentView();
          v96 = type metadata accessor for LockupCollectionSearchResultContentView;
          v97 = &unk_100793DB0;
          v98 = &unk_100948228;
        }

        else
        {
          sub_10075EEBC();
          if (swift_dynamicCastClass())
          {
            type metadata accessor for AppEventSearchResultContentView();
            v96 = type metadata accessor for AppEventSearchResultContentView;
            v97 = &unk_100784404;
            v98 = &unk_100948220;
          }

          else
          {
            sub_10076414C();
            if (!swift_dynamicCastClass())
            {

LABEL_55:
              (*v74)(v76, v77);
              v94 = 0;
              goto LABEL_56;
            }

            type metadata accessor for GuidedSearchResultContentView();
            v96 = type metadata accessor for GuidedSearchResultContentView;
            v97 = &unk_1007967D4;
            v98 = &unk_100948218;
          }
        }
      }

      sub_1000F79FC(v98, v96, v97);
LABEL_38:
      sub_10076571C();
      v94 = v93;

      (*v74)(v76, v77);
LABEL_56:
      v173 = v73;
      v100 = v73[2];
      v99 = v73[3];
      if (v100 >= v99 >> 1)
      {
        sub_1004BBAA4((v99 > 1), v100 + 1, 1);
        v73 = v173;
      }

      v73[2] = v100 + 1;
      v73[v100 + 4] = v94;
      v72 += v75;
      --v71;
    }

    while (v71);
  }

  v101 = sub_10076659C();

  sub_1000F997C(v101);
  v102 = v174;
  v103 = v174 >> 62;
  if (v174 >> 62)
  {
    goto LABEL_71;
  }

  v104 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v104; i = v103)
  {
    v103 = 0;
    v105 = 0.0;
    while (1)
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v106 = sub_10077149C();
      }

      else
      {
        if (v103 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v106 = *(v102 + 8 * v103 + 32);
      }

      v107 = v106;
      v108 = (v103 + 1);
      if (__OFADD__(v103, 1))
      {
        break;
      }

      v109 = [v106 layoutSize];
      v110 = [v109 heightDimension];

      [v110 dimension];
      v112 = v111;

      v105 = v105 + v112;
      ++v103;
      if (v108 == v104)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v104 = sub_10077158C();
  }

  v105 = 0.0;
LABEL_73:
  v113 = i;
  if (i)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v139;
  v115 = v145;
  v116 = v144;
  if (!__OFSUB__(result, 1))
  {
    v117 = ((result - 1) & ~((result - 1) >> 63));
    sub_10076460C();
    sub_10076C23C();
    v119 = v118;
    v120 = *(v115 + 8);
    v120(v116, v114);
    v121 = v134;
    v122 = [v134 fractionalWidthDimension:1.0];
    v123 = [v121 absoluteDimension:v105 + v119 * v117];
    v124 = [v133 sizeWithWidthDimension:v122 heightDimension:v123];

    if (v113)
    {
      sub_10077157C();
    }

    else
    {
      sub_10077168C();
    }

    v125 = sub_1007701AC().super.isa;

    v126 = [v132 verticalGroupWithLayoutSize:v124 subitems:v125];

    v127 = objc_opt_self();
    sub_10076460C();
    sub_10076C23C();
    v129 = v128;
    v120(v116, v139);
    v130 = [v127 fixedSpacing:v129];
    [v126 setInterItemSpacing:v130];

    v49 = [objc_opt_self() sectionWithGroup:v126];

    (*(v138 + 8))(v143, v160);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F79B0()
{
  sub_10076982C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F79FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F7A4C()
{
  sub_10000A5D4(&unk_100948AD0, "ޢ\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10078B310;
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
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0, &qword_10078B350);
  result = swift_arrayDestroy();
  qword_10099D028 = v1;
  return result;
}

CGFloat sub_1000F7C54()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_10099D030 = v2;
  return v2.m21;
}

id sub_1000F7D78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_10076FF6C();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_1000F8028(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v3 = [v2 bounds];
  (*((swift_isaMask & *v2) + 0xD0))(v3, v4, v5);
  sub_100770A8C();
  v7 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer);
  [v8 setBounds:{0.0, 0.0, v9, v6}];
  [v2 bounds];
  MidY = CGRectGetMidY(v14);
  [v2 bounds];
  v11 = MidY + (v7 - CGRectGetHeight(v15)) * 0.5;
  [v2 bounds];
  return [v8 setPosition:{CGRectGetMidX(v16), v11 + *(v2 + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset)}];
}

double sub_1000F81BC(double a1, double a2)
{
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong image];

    if (v9)
    {
      [v9 size];
      sub_10076D3AC();
      sub_10076D30C();
      a1 = v10;

      (*(v4 + 8))(v6, v3);
    }
  }

  return a1;
}

void sub_1000F8300()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = sub_10077165C();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_10076FF6C();
    v18 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_1000F8510(uint64_t a1, NSString a2, uint64_t a3, Class a4, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = sub_10076FF6C();
    }

    sub_10003F0D4(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_10000CF78(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_10077165C();
      (*(v17 + 8))(v20, v15);
      sub_10000CD74(v25);
      if (!a4)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, a4, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1000F88F8();
    a4 = sub_10076FE3C().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a4 = [Strong image];

    if (a4)
    {
      v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer];
      v14 = [(objc_class *)a4 CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}

unint64_t sub_1000F88F8()
{
  result = qword_100941C68;
  if (!qword_100941C68)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941C68);
  }

  return result;
}

double sub_1000F899C()
{
  v0 = sub_10000A5D4(&qword_100948AB0, &qword_10078B3A8);
  v54 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = sub_10076C38C();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076A89C();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076A8BC();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076DA7C();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076DD3C();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  sub_10076083C();
  sub_1000F9120(&qword_1009467D0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_10076332C();
  v16 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v0;
  sub_10005312C();
  if (qword_100940F48 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  sub_10000A61C(v17, qword_1009A1BD0);
  swift_getKeyPath();
  sub_10076338C();

  v18 = v56[0];
  v19 = sub_100770B3C();

  v37[1] = v16;
  sub_10076081C();
  v40 = v19;
  v20 = sub_10075F9DC();

  sub_10076DD2C();
  sub_10076DCFC();
  v21 = v44;
  v38 = *(v10 + 8);
  v38(v12, v44);
  v22 = *(v10 + 16);
  v39 = v15;
  v22(v12, v15, v21);
  v37[0] = v20;
  sub_10076DA5C();
  v23 = v55;
  sub_10076DABC();
  if (qword_10093F5D0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v5, qword_10099CBE8);
  (*(v43 + 16))(v45, v24, v5);
  v25 = v51;
  v56[3] = v51;
  v56[4] = &protocol witness table for LabelPlaceholder;
  v26 = sub_10000DB7C(v56);
  v27 = v49;
  (*(v49 + 16))(v26, v23, v25);
  v28 = v50;
  sub_10076A8AC();
  swift_getKeyPath();
  v29 = v46;
  sub_10076338C();

  sub_10076C2FC();
  (*(v47 + 8))(v29, v48);
  swift_getKeyPath();
  sub_10076338C();

  v30 = v56[0];
  sub_1000F9120(&unk_100948AB8, &type metadata accessor for LinkableTextCollectionViewCellLayout, &protocol conformance descriptor for LinkableTextCollectionViewCellLayout);
  v31 = v41;
  v32 = v53;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_10076E0FC();
  v35 = v34;

  (*(v54 + 8))(v31, v33);
  (*(v52 + 8))(v28, v32);
  (*(v27 + 8))(v55, v25);
  v38(v39, v21);
  return v35;
}

uint64_t sub_1000F9120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F9168(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10049CD5C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000A5D4(&qword_100948D00, &qword_10078B680);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F92E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10049D1CC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F93E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10049D6EC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000A5D4(&unk_100943470, &qword_10078C740);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F94EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10049DA60(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F95E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10049DC74(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000A5D4(&unk_100948BD8, &unk_100790A20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F972C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1000F9870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10049E120(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000F9A0C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_10077158C();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000FA664(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1000F9B04(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_10049EB64(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

Swift::Int TodayCardTitleBackingGradient.Style.hashValue.getter(char a1)
{
  sub_10077175C();
  sub_10077176C(a1 & 1);
  return sub_1007717AC();
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

id static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = sub_10076C7EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_10077145C(44);

      v44 = 0xD00000000000002ALL;
      v45 = 0x80000001007D3D40;
      v46._countAndFlagsBits = sub_10076C7DC();
      sub_1007700CC(v46);

      result = sub_10077156C();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10076FF9C();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100786040;
  sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
  v15 = v13;
  *(v14 + 32) = sub_100770ECC(0);
  *(v14 + 40) = sub_100770EBC(0.3);
  *(v14 + 48) = sub_100770EBC(0.7);
  *(v14 + 56) = sub_100770EBC(1.0);
  isa = sub_1007701AC().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100788B20;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v43 = v15;
  v42 = v21;
  v22 = sub_1007701AC().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = sub_10076FF6C();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = sub_10076C8AC().super.super.isa;
  v28 = sub_10076FF6C();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1007701BC();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v34 = sub_100016F40(0, &qword_100948AC8, CAFilter_ptr);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v44 = v32;
  v41 = v25;
  v35 = v26;
  sub_1000F94EC(inited);
  v36 = sub_1007701AC().super.isa;

  [v29 setFilters:v36];

  sub_10000A5D4(&unk_100948AD0, "ޢ\a");
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_100783DE0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_1000FDA30(v37, &qword_100948D88, &qword_10078B6F0);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0, &qword_10078B350);
  swift_arrayDestroy();
  sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
  v38 = sub_10076FE3C().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_1000FA664(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10077158C();
LABEL_9:
  result = sub_1007714AC();
  *v2 = result;
  return result;
}

uint64_t sub_1000FA704(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948B80, &unk_1009453D0, &unk_100787870);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&unk_1009453D0, &unk_100787870);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA8A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&unk_100948B00, &qword_100948AF8, &qword_10078B4E0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948AF8, &qword_10078B4E0);
            v9 = sub_1000FBDF0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100764B3C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FAA34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948C38, &qword_100948C30, &qword_10078B5F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948C30, &qword_10078B5F8);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FABD4(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_10077158C();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_10077158C();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1000FE9D4(&qword_100948B90, &qword_100948B88, &qword_10078B570);
          for (i = 0; i != v7; ++i)
          {
            sub_10000A5D4(&qword_100948B88, &qword_10078B570);
            v10 = sub_1000FBE78(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10076C02C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FAD64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948CE8, &qword_100948CE0, &qword_10078B668);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948CE0, &qword_10078B668);
            v9 = sub_1000FBE78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FAEF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948BF0, &qword_100948BE8, &qword_10078B5C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948BE8, &qword_10078B5C0);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB094(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948C80, &qword_100948C78, &qword_10078B630);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948C78, &qword_10078B630);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB234(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948D38, &qword_100948D30, &qword_10078B6A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948D30, &qword_10078B6A0);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100948D28, NSCollectionLayoutGroup_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB3D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&unk_100948CD0, &unk_100948BD8, &unk_100790A20);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&unk_100948BD8, &unk_100790A20);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB564(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948D10, &qword_100948D08, &qword_10078B688);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948D08, &qword_10078B688);
            v9 = sub_1000FBE78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugSetting();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB6F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948BC0, &qword_100948BB8, &unk_10078B5A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948BB8, &unk_10078B5A0);
            v9 = sub_1000FBF80(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A5D4(&qword_100948BB0, &qword_1007A3330);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FB890(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&unk_100948DA0, &qword_100948D98, &qword_10078B6F8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948D98, &qword_10078B6F8);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100948D90, AMSNotificationSettingsItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FBA30(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&qword_100948CB0, &qword_100948CA8, &qword_10078B640);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948CA8, &qword_10078B640);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100947EF0, UICollectionViewLayoutAttributes_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FBBD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10077158C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10077158C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FE9D4(&unk_100948C98, &qword_100948C90, &qword_10078B638);
          for (i = 0; i != v6; ++i)
          {
            sub_10000A5D4(&qword_100948C90, &qword_10078B638);
            v9 = sub_1000FBD70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016F40(0, &qword_100948C88, NSValue_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000FBD70(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000FEA28;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000FBDF0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000FBE70;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1000FBE78(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000FEA2C;
  }

  __break(1u);
  return result;
}

void (*sub_1000FBEF8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000FBF78;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000FBF80(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10077149C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1000FC000;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FC008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948B50, &qword_10078B538);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016E2C(v4, v13, &qword_100948B58, &unk_10078B540);
      result = sub_10060FEFC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948AF0, &qword_10078B4D8);
    v3 = sub_1007715DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1006113DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000A5D4(&qword_100948C68, &qword_10078B628);
  v3 = sub_1007715DC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10060FF84(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10060FF84(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FC324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&unk_10094E870, &qword_10078B660);
    v3 = sub_1007715DC();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = sub_10060FF40(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC424(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948D40, &qword_10078B6A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&unk_10094E880, &unk_10078B6B0);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &unk_100948D40, &qword_10078B6A8);
      result = sub_100610020(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Accessory(0);
      result = sub_1000366F4(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&unk_10094E800, &qword_10078B4E8);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016E2C(v4, &v11, &unk_100948B10, &unk_10078B4F0);
      v5 = v11;
      result = sub_1006113DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000CD64(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC734()
{
  result = qword_100948AE8;
  if (!qword_100948AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948AE8);
  }

  return result;
}

unint64_t sub_1000FC7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948BA8, qword_10078B588);
    v3 = sub_1007715DC();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_10060FF40(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FC894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948BF8, &qword_10078B5C8);
    v3 = sub_1007715DC();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *(i + 1);
      v15 = *i;
      result = sub_10061029C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000FC9A4(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000A5D4(&unk_10094E850, &qword_10078B518);
  v3 = sub_1007715DC();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 7);
  v8 = sub_100610120(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    *(v13 + 1) = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_100610120(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FCAE8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948B70, &qword_10078B558);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_10094E830, &unk_10078B560);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100016E2C(v9, v5, &unk_100948B70, &qword_10078B558);
      v11 = *v5;
      result = sub_10060FF40(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_10076F7FC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FCCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948B60, &unk_100796F00);
    v3 = sub_1007715DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100561E0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FCDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948B40, &unk_10078B520);
    v3 = sub_1007715DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1006103E4(v5, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FCED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100944EF8, &unk_1007871D0);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016E2C(v4, v13, &unk_100948B20, &qword_10078B500);
      result = sub_10060FEFC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000CD64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD010(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948D60, &qword_100785D30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&unk_100948D68, &unk_10078B6D0);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948D60, &qword_100785D30);
      result = sub_100610564(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076FB6C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012498(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD200(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948D50, &unk_100785D40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948D58, &unk_10078B6C0);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948D50, &unk_100785D40);
      result = sub_100610490(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076FB1C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012498(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD3F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948BC8, &qword_1007B7590);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016E2C(v4, &v13, &qword_100948BD0, &unk_10078B5B0);
      v5 = v13;
      v6 = v14;
      result = sub_100561E0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CD64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_10094E810, &qword_10078B508);
    v3 = sub_1007715DC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100561E0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&unk_100948B30, &qword_10078B510);
    v3 = sub_1007715DC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100561E0C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD730(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C00, &qword_10078B5D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948C08, &qword_10078B5D8);
    v7 = sub_1007715DC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948C00, &qword_10078B5D0);
      result = sub_10061070C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076186C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FD934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948D18, &unk_10078B690);
    v3 = sub_1007715DC();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_10060FF40(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FDA30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000A5D4(a2, a3);
    v5 = sub_1007715DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_100561E0C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FDB2C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948D78, &qword_10078B6E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948D80, &qword_10078B6E8);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948D78, &qword_10078B6E0);
      result = sub_10060FEFC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_10075DB7C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FDD24(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948B98, &qword_10078B578);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948BA0, &qword_10078B580);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948B98, &qword_10078B578);
      result = sub_1006108B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10076C45C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FDF0C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C58, &qword_10078B618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948C60, &qword_10078B620);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948C58, &qword_10078B618);
      result = sub_100610638(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10075F8DC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FE108(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000A5D4(a2, a3);
  v5 = sub_1007715DC();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_10060FF40(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_10060FF40(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FE1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&unk_100948C20, &qword_10078B5F0);
    v3 = sub_1007715DC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1006113DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FE2E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948C10, &qword_10078B5E0);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016E2C(v4, &v11, &qword_100948C18, &qword_10078B5E8);
      v5 = v11;
      result = sub_1006113DC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000CD64(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000FE424(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000A5D4(a2, a3);
  v5 = sub_1007715DC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_10060FF40(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_10060FF40(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000FE524(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948C40, &qword_10078B600);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_10094E840, &qword_10078B608);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &unk_100948C40, &qword_10078B600);
      result = sub_100610988(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100761D3C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FE70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948CC8, &qword_10078B658);
    v3 = sub_1007715DC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10060FF40(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000FE7EC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948CB8, &qword_10078B648);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100948CC0, &qword_10078B650);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100948CB8, &qword_10078B648);
      result = sub_100610A5C(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = sub_10075E11C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      *(v7[7] + 16 * v14) = *&v5[v8];
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000FE9D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000FEC7C(void *a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&qword_100945AE8, &unk_100788320);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_1000FEDC4();
  a1;
  sub_10000A5D4(&qword_100948E50, &qword_10078B7F8);
  if (swift_dynamicCast())
  {
    sub_100012498(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_10000CF78(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    sub_10077080C();
    return sub_10000CD74(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_1000FEE10(v9);
  }
}

unint64_t sub_1000FEDC4()
{
  result = qword_10094D1D0;
  if (!qword_10094D1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094D1D0);
  }

  return result;
}

uint64_t sub_1000FEE10(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948E58, qword_10078B800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_10077087C();

  return v2 & 1;
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();
  v10.n128_f64[0] = a2;

  return sub_1001021F4(v10, a3, a1, a6);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_100012498(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = sub_10076D39C();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_100012498(a3, a7 + v13[6]);
  sub_100012498(a4, a7 + v13[7]);
  sub_100012498(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_100012498(a6, v16);
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v160 = a2;
  v154 = COERCE_DOUBLE(sub_100763ADC());
  v152 = *(*&v154 - 8);
  __chkstk_darwin(*&v154);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_10077164C());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10000CF78((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_10076D23C();
  sub_10000CF78(v7, v7[3]);
  sub_10076D17C();
  sub_10076D40C();
  v20 = v19;
  v21 = *(v15 + 8);
  v156 = *&v17;
  v158 = *&v14;
  *&v157 = v15 + 8;
  MaxY = *&v21;
  v21(v17, v14);
  v159 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = a5;
  v171.size.height = a6;
  CGRectGetWidth(v171);
  sub_10076D36C();
  Height = round(v22);
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v172.size.width = a5;
  v172.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v172)) < 1.0)
  {
    v173.origin.x = 0.0;
    v173.origin.y = 0.0;
    v173.size.width = a5;
    v173.size.height = a6;
    Height = CGRectGetHeight(v173);
  }

  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  Width = CGRectGetWidth(v174);
  sub_10000CF78((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = Width;
  v175.size.height = Height;
  v25 = CGRectGetWidth(v175);
  v26 = (v6 + v18[9]);
  sub_10000CF78(v26, v26[3]);
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_10000CF78(v26, v26[3]);
  sub_10076D22C();
  sub_10076D23C();
  sub_100102958(v6 + v18[11], &v169);
  if (v170)
  {
    sub_10000CF78(&v169, v170);
    sub_10076D23C();
    sub_10000CD74(&v169);
  }

  else
  {
    sub_1001029C8(&v169);
  }

  sub_100102958(v6 + v18[12], &v169);
  if (v170)
  {
    sub_10000CF78(&v169, v170);
    sub_10076D23C();
    sub_10000CD74(&v169);
  }

  else
  {
    sub_1001029C8(&v169);
  }

  sub_100102958(v6 + v18[17], &v167);
  v161 = a5;
  v163 = a4;
  v162 = a3;
  if (!v168)
  {
    sub_1001029C8(&v167);
LABEL_17:
    v27 = 1;
    v28 = 0.0;
    v150 = 0.0;
    v149 = 0.0;
    v153 = 0.0;
    goto LABEL_18;
  }

  sub_100012498(&v167, &v169);
  sub_10000CF78(&v169, v170);
  if (sub_10076D24C())
  {
LABEL_16:
    sub_10000CD74(&v169);
    goto LABEL_17;
  }

  sub_100102958(v6 + v18[18], &v165);
  if (!v166)
  {
    sub_1001029C8(&v165);
    goto LABEL_16;
  }

  sub_100012498(&v165, &v167);
  sub_10000CF78(&v167, v168);
  if (sub_10076D24C())
  {
    sub_10000CD74(&v167);
    goto LABEL_16;
  }

  v146 = sub_100102A30(0.0, 0.0, a5, a6, 0.0, v20);
  v145 = v118;
  v120 = v119;
  v143 = v121;
  v153 = COERCE_DOUBLE(swift_getObjectType());
  v122 = [a1 traitCollection];
  v123 = [v122 preferredContentSizeCategory];
  v124 = sub_10077087C();

  v147 = v20;
  v144 = Width;
  v142 = v25;
  if (v124)
  {
    if (qword_10093F630 != -1)
    {
      swift_once();
    }

    v125 = qword_10099CCB8;
  }

  else
  {
    if (qword_10093F628 != -1)
    {
      swift_once();
    }

    v125 = qword_10099CCA0;
  }

  v126 = v154;
  v127 = sub_10000A61C(*&v154, v125);
  v128 = v152;
  v129 = v151;
  (*(v152 + 16))(v151, v127, COERCE_CGFLOAT(*&v126));
  v130 = [a1 traitCollection];
  v131 = [v130 preferredContentSizeCategory];
  sub_10077087C();

  type metadata accessor for SmallLockupView(0);
  v132 = v143;
  sub_100262AD0(v129, a1, v120, v143);
  v134 = ceil(v133);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a5;
  v192.size.height = a6;
  MinX = CGRectGetMinX(v192);
  v193.size.width = v120;
  v141 = v120;
  v135 = v146;
  v193.origin.x = v146;
  v136 = v145;
  v193.origin.y = v145;
  v193.size.height = v132;
  v137 = CGRectGetHeight(v193);
  v153 = v134;
  v138 = v137 - v134;
  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = a5;
  v194.size.height = a6;
  v139 = CGRectGetWidth(v194);
  sub_10000CF78(&v169, v170);
  v150 = v138;
  v149 = v139;
  sub_10076D23C();
  v195.origin.x = v135;
  v195.origin.y = v136;
  v140 = v141;
  v195.size.width = v141;
  v195.size.height = v132;
  CGRectGetMinX(v195);
  v196.origin.x = v135;
  v196.origin.y = v136;
  v196.size.width = v140;
  v196.size.height = v132;
  CGRectGetMinY(v196);
  v197.origin.x = v135;
  v197.origin.y = v136;
  v197.size.width = v140;
  v197.size.height = v132;
  CGRectGetWidth(v197);
  sub_10000CF78(&v167, v168);
  v28 = MinX;
  a5 = v161;
  sub_10076D23C();
  (*(v128 + 8))(v129, COERCE_CGFLOAT(*&v154));
  sub_10000CD74(&v167);
  sub_10000CD74(&v169);
  v27 = 0;
  v20 = v147;
  Width = v144;
  v25 = v142;
LABEL_18:
  v29 = [a1 traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  v31 = sub_10077087C();

  v164 = a6;
  if (v31)
  {
    MinX = v28;
    v32 = sub_100102A30(0.0, 0.0, a5, a6, 0.0, v20);
    v156 = v32;
    v158 = v33;
    v35 = v34;
    v37 = v36;
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v25;
    v176.size.height = Height;
    MaxY = CGRectGetMaxY(v176);
    v38 = (v7 + v18[13]);
    sub_10000CF78(v38, v38[3]);
    v157 = v35;
    v39 = v37;
    sub_10076D2AC();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v159;
    sub_10000CF78((v7 + *(v159 + 24)), *(v7 + *(v159 + 24) + 24));
    sub_10076D42C();
    v48 = v47;
    v177.origin.x = v32;
    v177.origin.y = v158;
    v177.size.width = v35;
    v177.size.height = v39;
    v49 = CGRectGetMinX(v177);
    v50 = MaxY + v48;
    sub_10000CF78(v38, v38[3]);
    sub_100770A4C();
    sub_10076D23C();
    v178.origin.x = v49;
    v178.origin.y = v50;
    v178.size.width = v41;
    v178.size.height = v43;
    v51 = CGRectGetMaxY(v178) - v45;
    v52 = (v7 + v18[14]);
    sub_10000CF78(v52, v52[3]);
    v53 = v157;
    v54 = v39;
    sub_10076D2AC();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10000CF78((v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 24));
    sub_10076D42C();
    v62 = v61;
    v179.origin.x = v156;
    v179.origin.y = v158;
    v179.size.width = v53;
    MaxY = v54;
    v179.size.height = v54;
    v63 = CGRectGetMinX(v179);
    sub_10000CF78(v52, v52[3]);
    sub_100770A4C();
    sub_10076D23C();
    v180.origin.x = v63;
    v180.origin.y = v51 + v62;
    v180.size.width = v56;
    v180.size.height = v58;
    v64 = CGRectGetMaxY(v180);
    if (*(v7 + v18[19]) == 1)
    {
      v65 = v64 - v60;
      sub_10000CF78((v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 24));
      v66 = [a1 traitCollection];
      sub_10076D41C();
      v68 = v67;

      v69 = v65 + v68;
      v70 = (v7 + v18[15]);
      sub_10000CF78(v70, v70[3]);
      v71 = [a1 traitCollection];
      v72 = v157;
      v73 = MaxY;
      sub_10076E0FC();
      v75 = v74;
      v77 = v76;

      v181.origin.x = v156;
      v181.origin.y = v158;
      v181.size.width = v72;
      v181.size.height = v73;
      v78 = CGRectGetMinX(v181);
      sub_10000CF78(v70, v70[3]);
      sub_100770A4C();
      v79 = [a1 traitCollection];
      sub_10076E0EC();

      v182.origin.x = v78;
      v182.origin.y = v69;
      v182.size.width = v75;
      v182.size.height = v77;
      CGRectGetMaxY(v182);
    }

    sub_100102958(v7 + v18[16], &v167);
    if (v168)
    {
      sub_100012498(&v167, &v169);
      sub_10000CF78(&v169, v170);
      if ((sub_10076D24C() & 1) == 0 && (v27 & 1) == 0)
      {
        sub_10000CF78(&v169, v170);
        v80 = v157;
        v81 = MaxY;
        sub_10076D2AC();
        v183.origin.x = MinX;
        v183.origin.y = v150;
        v183.size.width = v149;
        v183.size.height = v153;
        CGRectGetMinY(v183);
        v82 = v156;
        v184.origin.x = v156;
        v83 = v158;
        v184.origin.y = v158;
        v184.size.width = v80;
        v184.size.height = v81;
        CGRectGetMinX(v184);
        v185.origin.x = v82;
        v185.origin.y = v83;
        v185.size.width = v80;
        v185.size.height = v81;
        CGRectGetWidth(v185);
        sub_10000CF78(&v169, v170);
        sub_10076D23C();
      }

      sub_10000CD74(&v169);
    }

    else
    {
      sub_1001029C8(&v167);
    }
  }

  else
  {
    v84 = sub_100102A30(0.0, 0.0, Width, Height, 0.0, v20);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v159;
    sub_10000CF78((v7 + *(v159 + 36)), *(v7 + *(v159 + 36) + 24));
    v92 = v156;
    sub_10076D17C();
    sub_10076D40C();
    v94 = v93;
    (*&MaxY)(COERCE_DOUBLE(*&v92), COERCE_CGFLOAT(*&v158));
    v186.origin.x = v84;
    v186.origin.y = v86;
    v186.size.width = v88;
    v186.size.height = v90;
    v95 = CGRectGetHeight(v186) - v94;
    if (*(v7 + v18[19]) == 1)
    {
      v96 = (v7 + v18[15]);
      sub_10000CF78(v96, v96[3]);
      v97 = [a1 traitCollection];
      sub_10076E0FC();
      v158 = v98;
      v100 = v99;

      v156 = v95 - v100;
      v157 = v100;
      v187.origin.x = v84;
      v187.origin.y = v86;
      v187.size.width = v88;
      v187.size.height = v90;
      MaxY = CGRectGetMinX(v187);
      sub_10000CF78(v96, v96[3]);
      sub_100770A4C();
      v101 = v84;
      v102 = [a1 traitCollection];
      sub_10076E0EC();

      sub_10000CF78((v7 + *(v91 + 32)), *(v7 + *(v91 + 32) + 24));
      v103 = [a1 traitCollection];
      sub_10076D41C();
      v105 = v104;

      v188.origin.x = MaxY;
      v188.origin.y = v156;
      v188.size.width = v158;
      v188.size.height = v157;
      v95 = CGRectGetMinY(v188) - v105;
    }

    else
    {
      v101 = v84;
    }

    v106 = (v7 + v18[14]);
    sub_10000CF78(v106, v106[3]);
    sub_10076D2AC();
    v108 = v107;
    v110 = v109;
    v158 = v111;
    v157 = v112;
    v113 = v112 + v95 - v109;
    v189.origin.x = v101;
    v189.origin.y = v86;
    v153 = v86;
    v189.size.width = v88;
    v189.size.height = v90;
    v114 = CGRectGetMinX(v189);
    v154 = v101;
    v115 = v114;
    sub_10000CF78(v106, v106[3]);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CF78((v7 + *(v91 + 28)), *(v7 + *(v91 + 28) + 24));
    sub_10076D42C();
    v190.origin.x = v115;
    v190.origin.y = v113;
    v190.size.width = v108;
    v190.size.height = v110;
    CGRectGetMinY(v190);
    v116 = (v7 + v18[13]);
    sub_10000CF78(v116, v116[3]);
    sub_10076D2AC();
    v191.origin.x = v154;
    v191.origin.y = v153;
    v191.size.width = v88;
    v191.size.height = v90;
    CGRectGetMinX(v191);
    sub_10000CF78(v116, v116[3]);
    sub_100770A4C();
    sub_10076D23C();
  }

  return sub_10076D1BC();
}

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1000BD614(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100012498(a2, a9 + v22[5]);
  sub_100012498(a3, a9 + v22[6]);
  sub_100012498(a4, a9 + v22[7]);
  sub_100012498(a5, a9 + v22[8]);
  sub_100012498(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_100012498(a11, a9 + v22[13]);
  sub_100012498(a12, a9 + v22[14]);
  sub_100012498(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_100012498(a7, v33);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textTopSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1);

  return sub_100012498(a1, v1);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_100102958(v4, a1);
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_100102958(v4, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_100102958(v4, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_100102958(v4, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_100102958(v4, a1);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_100101080(a1, v3, a2, a3);
}

double sub_100101080(void *a1, void *a2, double a3, double a4)
{
  v110 = sub_10077164C();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10076D93C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076D95C();
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v116 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076DE7C();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v97 - v11;
  v104 = sub_10076443C();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v97 - v14;
  __chkstk_darwin(v15);
  v100 = &v97 - v16;
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  v20 = sub_100763ADC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100102958(a2 + v27[18], &v122);
  v111 = v123;
  sub_1001029C8(&v122);
  v119 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_10077087C();

  if (v30)
  {
    v31 = v27[13];
    v32 = v27[14];
    v33 = v27[16];
    v97 = v27[15];
    v105 = v33;
    LODWORD(v101) = *(a2 + v27[19]);
    if (qword_10093F630 != -1)
    {
      swift_once();
    }

    v98 = (a2 + v31);
    v34 = (a2 + v32);
    v35 = sub_10000A61C(v20, qword_10099CCB8);
    v102 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v37 = v36;
    v38 = [v119 traitCollection];
    (*(v21 + 16))(v26, v35, v20);
    v39 = sub_100763A4C();
    v41 = v107;
    v99 = v34;
    if ((v42 & 1) == 0 && ((v39 | v40) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v43 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v43 = qword_100944CA0;
      }

      v53 = v104;
      v54 = sub_10000A61C(v104, v43);
      v55 = v103;
      v56 = v100;
      (*(v103 + 16))(v100, v54, v53);
      (*(v55 + 32))(v19, v56, v53);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v55 + 8))(v19, v53);
    }

    sub_10076398C();
    v58 = v57;

    (*(v21 + 8))(v26, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v37;
    v60 = v112;
    *(inited + 56) = v112;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v61 = v119;
    v62 = v110;
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v58 + 16.0 + 16.0);
      v63 = v106;
      sub_10076DE8C();
      v64 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_10049CD5C(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_10049CD5C((v65 > 1), v66 + 1, 1, v64);
      }

      v123 = v60;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v67 = sub_10000DB7C(&v122);
      v68 = v109;
      (*(v109 + 16))(v67, v63, v60);
      v64[2] = v66 + 1;
      sub_100012498(&v122, &v64[5 * v66 + 4]);
      (*(v68 + 8))(v63, v60);
      *&v120 = v64;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v69 = v116;
    sub_10076D94C();
    sub_10076D92C();
    v71 = v70;
    (*(v117 + 8))(v69, v118);
    sub_10000CF78(a2, a2[3]);
    sub_10076D17C();
    sub_10076D40C();
    v118 = *(v108 + 8);
    v118(v41, v62);
    sub_100770ACC();
    sub_10000CF78(v98, v98[3]);
    sub_10076D2AC();
    v73 = v72;
    v74 = v102;
    sub_10000CF78((a2 + *(v102 + 6)), *(a2 + *(v102 + 6) + 24));
    sub_10076D42C();
    *&v122 = v73;
    sub_10076D3FC();
    sub_10000CF78(v99, v99[3]);
    sub_10076D2AC();
    v76 = v75;
    sub_10000CF78((a2 + *(v74 + 7)), *(a2 + *(v74 + 7) + 24));
    sub_10076D42C();
    *&v122 = v76;
    sub_10076D3FC();
    if (v101)
    {
      sub_10000CF78((a2 + v97), *(a2 + v97 + 24));
      v77 = v74;
      v78 = [v61 traitCollection];
      sub_10076E0FC();

      sub_10000CF78((a2 + *(v77 + 8)), *(a2 + *(v77 + 8) + 24));
      v79 = [v61 traitCollection];
      sub_10076D41C();

      sub_10000CF78((a2 + *(v77 + 9)), *(a2 + *(v77 + 9) + 24));
      sub_10076D17C();
      sub_10076D40C();
      v118(v41, v110);
    }

    sub_100102958(&v105[a2], &v120);
    if (v121)
    {
      sub_100012498(&v120, &v122);
      sub_10000CF78(&v122, v123);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v122, v123);
        sub_10076D2AC();
      }

      sub_10000CD74(&v122);
    }

    else
    {
      sub_1001029C8(&v120);
    }
  }

  else
  {
    if (qword_10093F628 != -1)
    {
      swift_once();
    }

    v44 = sub_10000A61C(v20, qword_10099CCA0);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10076D36C();
    v46 = v45;
    v47 = [v119 traitCollection];
    (*(v21 + 16))(v23, v44, v20);
    v48 = sub_100763A4C();
    v50 = v112;
    if ((v51 & 1) == 0 && ((v48 | v49) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v52 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v52 = qword_100944CA0;
      }

      v80 = v104;
      v81 = sub_10000A61C(v104, v52);
      v82 = v103;
      v83 = v101;
      (*(v103 + 16))(v101, v81, v80);
      v84 = v102;
      (*(v82 + 32))(v102, v83, v80);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v82 + 8))(v84, v80);
    }

    sub_10076398C();
    v86 = v85;

    (*(v21 + 8))(v23, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_100783DD0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v46;
    *(v87 + 56) = v50;
    *(v87 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((v87 + 32));
    sub_10076DE8C();
    sub_1000F9168(v87);
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v86 + 4.0 + 4.0);
      v88 = v105;
      sub_10076DE8C();
      v89 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_10049CD5C(0, v89[2] + 1, 1, v89);
      }

      v91 = v89[2];
      v90 = v89[3];
      if (v91 >= v90 >> 1)
      {
        v89 = sub_10049CD5C((v90 > 1), v91 + 1, 1, v89);
      }

      v123 = v50;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v92 = sub_10000DB7C(&v122);
      v93 = v109;
      (*(v109 + 16))(v92, v88, v50);
      v89[2] = v91 + 1;
      sub_100012498(&v122, &v89[5 * v91 + 4]);
      (*(v93 + 8))(v88, v50);
      *&v120 = v89;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v94 = v116;
    sub_10076D94C();
    sub_10076D92C();
    v71 = v95;
    (*(v117 + 8))(v94, v118);
  }

  return v71;
}

double sub_1001021F4(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v50 = sub_10076D93C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076D95C();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076DE7C();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076443C();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_100763ADC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F628 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v15, qword_10099CCA0);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_10076D36C();
  v21 = v20;
  v52 = a4;
  v22 = [a4 traitCollection];
  (*(v16 + 16))(v18, v19, v15);
  v23 = sub_100763A4C();
  v25 = v9;
  if ((v26 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v27 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v27 = qword_100944CA0;
    }

    v28 = v44;
    v29 = sub_10000A61C(v44, v27);
    v30 = v43;
    (*(v10 + 16))(v43, v29, v28);
    (*(v10 + 32))(v14, v30, v28);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v10 + 8))(v14, v28);
  }

  sub_10076398C();
  v32 = v31;

  (*(v16 + 8))(v18, v15);
  v56 = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v21;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((inited + 32));
  sub_10076DE8C();
  sub_1000F9168(inited);
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = ceil(v32 + 4.0 + 4.0);
  sub_10076DE8C();
  v34 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_10049CD5C(0, v34[2] + 1, 1, v34);
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_10049CD5C((v35 > 1), v36 + 1, 1, v34);
  }

  v54 = v7;
  v55 = &protocol witness table for VerticalSpaceMeasurable;
  v37 = sub_10000DB7C(&v53);
  v38 = v45;
  (*(v45 + 16))(v37, v25, v7);
  v34[2] = v36 + 1;
  sub_100012498(&v53, &v34[5 * v36 + 4]);
  (*(v38 + 8))(v25, v7);
  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  v39 = v46;
  sub_10076D94C();
  sub_10076D92C();
  v41 = v40;
  (*(v49 + 8))(v39, v51);
  return v41;
}

uint64_t sub_100102958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094DA00, &qword_100783FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001029C8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094DA00, &qword_100783FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100102A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100102B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100102BF0(uint64_t a1)
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100102D10(319);
      if (v3 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100102F90(319, &qword_100948EF8, &protocol descriptor for Placeable);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100102D10(uint64_t a1)
{
  if (!qword_100950F80)
  {
    sub_10000CE78(&qword_10094CF50, &unk_100791F20);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100950F80);
    }
  }
}

uint64_t sub_100102D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D39C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100102E48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D39C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100102EEC(uint64_t a1)
{
  result = sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = sub_10076D39C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100102F90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100103014(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 configurationWithTextStyle:v6];

  *a3 = v7;
}

uint64_t sub_100103080()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007661EC();
  sub_10000DB18(v4, qword_10099D0B0);
  v28 = sub_10000A61C(v4, qword_10099D0B0);
  if (qword_100940DE8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v31 = sub_10000A61C(v5, qword_1009A17B0);
  v6 = *(v5 - 8);
  v33 = *(v6 + 16);
  v34 = v6 + 16;
  v33(v3, v31, v5);
  v35 = enum case for FontSource.useCase(_:);
  v7 = v1 + 13;
  v36 = v1[13];
  v36(v3);
  v8 = sub_10076D9AC();
  v51[3] = v8;
  v51[4] = &protocol witness table for StaticDimension;
  v30 = v8;
  sub_10000DB7C(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v48);
  v10 = v1 + 2;
  v32 = v1[2];
  v32(v9, v3, v0);
  sub_10076D9BC();
  v29 = v1[1];
  v29(v3, v0);
  v11 = v33;
  v33(v3, v31, v5);
  (v36)(v3, v35, v0);
  v49 = v8;
  v50 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v45);
  v32(v12, v3, v0);
  v25 = v1 + 1;
  sub_10076D9BC();
  v13 = v29;
  v29(v3, v0);
  v27 = v5;
  v11(v3, v31, v5);
  v31 = v7;
  (v36)(v3, v35, v0);
  v46 = v30;
  v47 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v42);
  v26 = v10;
  v32(v14, v3, v0);
  sub_10076D9BC();
  v13(v3, v0);
  if (qword_100940DF8 != -1)
  {
    swift_once();
  }

  v15 = v27;
  v24 = sub_10000A61C(v27, qword_1009A17E0);
  v33(v3, v24, v15);
  v16 = v35;
  (v36)(v3, v35, v0);
  v17 = v30;
  v43 = v30;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v39);
  v19 = v32;
  v32(v18, v3, v0);
  sub_10076D9BC();
  v20 = v29;
  v29(v3, v0);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39[0] = 0;
  v33(v3, v24, v15);
  (v36)(v3, v16, v0);
  v38[3] = v17;
  v38[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v37);
  v19(v21, v3, v0);
  sub_10076D9BC();
  v20(v3, v0);
  return sub_1007661BC();
}

char *sub_100103604(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940DE8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A17B0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v21 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel] = sub_1007626AC();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setClipsToBounds:0];
  v27 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView]];
  v28 = *&v26[v27];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v29 = v28;
  v30 = sub_100770CFC();
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel]];
  v32 = *&v26[v31];
  v33 = sub_100770CFC();
  [v32 setTextColor:v33];

  return v26;
}

id sub_100103A50()
{
  v1 = v0;
  v57 = sub_10076587C();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v51 - v5;
  __chkstk_darwin(v6);
  v56 = &v51 - v7;
  v8 = sub_10076771C();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v51 - v13;
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel];
  v16 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category];
  if (v17)
  {

    sub_10076216C();

    v17 = sub_10076FF6C();
  }

  [v15 setText:{v17, v12}];

  v18 = &off_100911000;
  if (*&v1[v16])
  {
    v53 = v15;

    v19 = sub_10076218C();

    if (*(v19 + 16))
    {
      v20 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel;
      v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel];
      if (v21)
      {
        goto LABEL_15;
      }

      if (qword_100940DF8 != -1)
      {
        swift_once();
      }

      v22 = sub_10076D3DC();
      v23 = sub_10000A61C(v22, qword_1009A17E0);
      v24 = *(v22 - 8);
      (*(v24 + 16))(v14, v23, v22);
      (*(v24 + 56))(v14, 0, 1, v22);
      (*(v52 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v8);
      v25 = objc_allocWithZone(sub_1007626BC());
      v26 = sub_1007626AC();
      v27 = *&v1[v20];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v1[v20];
      }

      else
      {
        v28 = 0;
      }

      *&v1[v20] = v26;
      v32 = v26;

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v33 = v32;
      v34 = sub_100770D1C();
      [v33 setTextColor:v34];

      [v1 addSubview:v33];
      [v1 setNeedsLayout];

      v21 = *&v1[v20];
      if (v21)
      {
LABEL_15:
        v58 = v19;
        v35 = v21;
        sub_10000A5D4(&unk_10094BB60, &unk_100785530);
        sub_10003BCA8();
        sub_10076FEFC();

        v36 = sub_10076FF6C();

        [v35 setText:v36];
      }

      else
      {
      }

      v31 = v56;
      v30 = v57;
      v37 = *&v1[v20];
      v18 = &off_100911000;
      if (v37)
      {
        [v37 setHidden:0];
      }

      goto LABEL_18;
    }
  }

  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel];
  v31 = v56;
  v30 = v57;
  if (v29)
  {
    [v29 setHidden:1];
  }

LABEL_18:
  if (*&v1[v16])
  {

    v38 = v54;
    sub_10076215C();

    (*(v2 + 32))(v31, v38, v30);
    v39 = v55;
    (*(v2 + 16))(v55, v31, v30);
    v40 = (*(v2 + 88))(v39, v30);
    if (v40 == enum case for PrivacyCategoryStyle.productPage(_:))
    {
      if (qword_100940DE8 != -1)
      {
        swift_once();
      }

      v41 = sub_10076D3DC();
      v42 = v41;
      v43 = qword_1009A17B0;
LABEL_27:
      v44 = sub_10000A61C(v41, v43);
      v45 = *(v42 - 8);
      (*(v45 + 16))(v14, v44, v42);
      (*(v45 + 56))(v14, 0, 1, v42);
      sub_1007625DC();
      (*(v2 + 8))(v31, v30);
      return [v1 v18[194]];
    }

    if (v40 == enum case for PrivacyCategoryStyle.detailPage(_:))
    {
      if (qword_100940DF0 != -1)
      {
        swift_once();
      }

      v41 = sub_10076D3DC();
      v42 = v41;
      v43 = qword_1009A17C8;
      goto LABEL_27;
    }

    if (qword_100940DE8 != -1)
    {
      swift_once();
    }

    v46 = sub_10076D3DC();
    v47 = sub_10000A61C(v46, qword_1009A17B0);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v14, v47, v46);
    (*(v48 + 56))(v14, 0, 1, v46);
    sub_1007625DC();
    v49 = *(v2 + 8);
    v49(v31, v30);
    v49(v55, v30);
  }

  return [v1 v18[194]];
}

uint64_t sub_100104248()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076620C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007661EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v26 - v13;
  v43.receiver = v0;
  v43.super_class = ObjectType;
  v29 = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v12);

  sub_100104588(v15, v0, v14);

  (*(v8 + 16))(v10, v14, v7);
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView];
  v41 = sub_10075FD2C();
  v42 = &protocol witness table for UIView;
  v40 = v16;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel];
  v18 = sub_1007626BC();
  v38 = v18;
  v39 = &protocol witness table for UILabel;
  v37 = v17;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel];
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v19;
  v35 = v18;
  v36 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_1007661FC();
  sub_10076422C();
  v24 = v28;
  sub_10076619C();
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v6, v27);
  return (*(v8 + 8))(v14, v7);
}

void sub_100104588(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_10076587C();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = sub_10077164C();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076D1AC();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076D9AC();
  v18 = *(v53 - 8);
  __chkstk_darwin(v53);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F7A0 != -1)
  {
    swift_once();
  }

  v21 = sub_1007661EC();
  v22 = sub_10000A61C(v21, qword_10099D0B0);
  (*(*(v21 - 8) + 16))(a3, v22, v21);
  v23 = sub_100105C9C(a1);
  if (v23)
  {
    v24 = v23;
    [v23 size];
    sub_1007661DC();

    if (!a1)
    {
      return;
    }
  }

  else
  {
    v46 = a3;
    if (qword_100940DE0 != -1)
    {
      swift_once();
    }

    v25 = sub_10076D3DC();
    v26 = sub_10000A61C(v25, qword_1009A1798);
    (*(*(v25 - 8) + 16))(v17, v26, v25);
    v27 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v15;
    v60 = &protocol witness table for FontSource;
    v28 = sub_10000DB7C(v58);
    (*(v27 + 16))(v28, v17, v15);
    sub_10076D9BC();
    (*(v27 + 8))(v17, v15);
    sub_10076D17C();
    v29 = v53;
    sub_10076D40C();
    (*(v47 + 8))(v14, v12);
    sub_1007661DC();
    (*(v18 + 8))(v20, v29);
    if (!a1)
    {
      return;
    }
  }

  sub_10076215C();
  v31 = v50;
  v30 = v51;
  v32 = v52;
  (*(v51 + 32))(v50, v9, v52);
  v33 = v49;
  (*(v30 + 16))(v49, v31, v32);
  v34 = (*(v30 + 88))(v33, v32);
  if (v34 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100940DE8 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v36 = v35;
    v37 = qword_1009A17B0;
LABEL_17:
    v38 = sub_10000A61C(v35, v37);
    (*(*(v36 - 8) + 16))(v17, v38, v36);
    v39 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v53;
    v60 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v58);
    v56 = v15;
    v57 = &protocol witness table for FontSource;
    v40 = sub_10000DB7C(v55);
    (*(v39 + 16))(v40, v17, v15);
    sub_10076D9BC();
    (*(v39 + 8))(v17, v15);
    sub_1007661AC();
    (*(v30 + 8))(v31, v32);
    return;
  }

  if (v34 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100940DF0 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v36 = v35;
    v37 = qword_1009A17C8;
    goto LABEL_17;
  }

  if (qword_100940DE8 != -1)
  {
    swift_once();
  }

  v41 = sub_10076D3DC();
  v42 = sub_10000A61C(v41, qword_1009A17B0);
  (*(*(v41 - 8) + 16))(v17, v42, v41);
  v43 = v54;
  (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
  v59 = v53;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v15;
  v57 = &protocol witness table for FontSource;
  v44 = sub_10000DB7C(v55);
  (*(v43 + 16))(v44, v17, v15);
  sub_10076D9BC();
  (*(v43 + 8))(v17, v15);
  sub_1007661AC();
  v45 = *(v30 + 8);
  v45(v31, v32);
  v45(v33, v32);
}

double sub_100104E18(uint64_t a1, __n128 a2, double a3)
{
  v28 = sub_10076620C();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007661EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;

  sub_100104588(v15, a1, v14);

  (*(v9 + 16))(v11, v14, v8);
  v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView);
  v38 = sub_10075FD2C();
  v39 = &protocol witness table for UIView;
  v37 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_titleLabel);
  v18 = sub_1007626BC();
  v35 = v18;
  v36 = &protocol witness table for UILabel;
  v34 = v17;
  v19 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_dataTypesLabel);
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v30 = 0;
    v31 = 0;
  }

  v29 = v19;
  v32 = v18;
  v33 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  sub_1007661FC();
  sub_10076618C();
  v25 = v24;
  (*(v5 + 8))(v7, v28);
  (*(v9 + 8))(v14, v8);
  return v25;
}

void sub_100105158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a1 imageWithRenderingMode:{2, a4, a5}];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView);

    v10.value.super.isa = v5;
    v10.is_nil = 0;
    sub_10075FCEC(v10, v9);
  }
}

uint64_t sub_1001052B0(void *a1, void *a2, __n128 a3)
{
  v65 = sub_10076620C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  __chkstk_darwin(v6);
  v63 = &v49 - v7;
  v8 = sub_10076997C();
  v54 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076587C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076D3DC();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1007661EC();
  v60 = *(v68 - 8);
  __chkstk_darwin(v68);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v66 = a2;
  sub_100104588(a1, a2, &v49 - v20);
  v59 = v21;
  sub_1007661CC();
  v56 = sub_10076DDDC();
  swift_allocObject();
  v57 = sub_10076DDBC();
  v67 = a1;
  sub_10076215C();
  v22 = (*(v12 + 88))(v14, v11);
  v70 = v15;
  v58 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100940DE8 != -1)
    {
      swift_once();
    }

    v23 = qword_1009A17B0;
LABEL_9:
    v24 = sub_10000A61C(v15, v23);
    (*(v69 + 16))(v17, v24, v15);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100940DF0 != -1)
    {
      swift_once();
    }

    v23 = qword_1009A17C8;
    goto LABEL_9;
  }

  if (qword_100940DE8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v15, qword_1009A17B0);
  (*(v69 + 16))(v17, v25, v15);
  (*(v12 + 8))(v14, v11);
LABEL_13:
  v26 = v66;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v27 = [v26 traitCollection];
  v28 = sub_100770B3C();

  sub_10076216C();
  v29 = sub_10076C04C();
  v77[3] = v29;
  v30 = sub_10004C7BC();
  v53 = v17;
  v51 = v30;
  v77[4] = v30;
  v31 = sub_10000DB7C(v77);
  v32 = *(*(v29 - 8) + 104);
  v50 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = v32;
  v32(v31);
  v33 = v28;
  sub_10076C90C();
  sub_10000CD74(v77);
  v52 = v33;
  sub_10076996C();
  sub_10076994C();
  v34 = *(v54 + 8);
  v35 = v58;
  v34(v10, v58);
  if (qword_100940DF8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v70, qword_1009A17E0);
  v36 = [v66 traitCollection];
  v37 = sub_100770B3C();

  v76[0] = sub_10076218C();
  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_10003BCA8();
  sub_10076FEFC();

  v76[3] = v29;
  v76[4] = v51;
  v38 = sub_10000DB7C(v76);
  v49(v38, v50, v29);
  v67 = v37;
  sub_10076C90C();
  sub_10000CD74(v76);
  sub_10076996C();
  sub_10076994C();
  v34(v10, v35);
  v39 = v60;
  v40 = v59;
  (*(v60 + 16))(v55, v59, v68);
  v74 = v56;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v57;
  sub_10000A570(v77, v72);
  sub_10000A570(v76, v71);

  v41 = v63;
  sub_1007661FC();
  v42 = v64;
  v43 = v62;
  v44 = v65;
  (*(v64 + 16))(v62, v41, v65);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v45, v43, v44);
  swift_allocObject();
  v47 = sub_10076DD9C();

  (*(v42 + 8))(v41, v44);
  sub_10000CD74(v76);
  sub_10000CD74(v77);
  (*(v69 + 8))(v53, v70);
  (*(v39 + 8))(v40, v68);
  return v47;
}

uint64_t sub_100105C9C(uint64_t a1)
{
  if (a1 && (sub_10076214C() & 1) != 0)
  {
    if (qword_10093F798 != -1)
    {
      swift_once();
    }

    v2 = &qword_100949008;
  }

  else
  {
    if (qword_10093F790 == -1)
    {
      if (!a1)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!a1)
      {
        return 0;
      }
    }

    v2 = &qword_100949000;
  }

  v3 = *v2;
  v4 = sub_10076217C();
  if ((sub_10076BDDC() & 1) == 0)
  {

LABEL_13:

    return 0;
  }

  v5 = v3;
  if (sub_10076BE0C())
  {
    v6 = sub_10076044C();
    goto LABEL_18;
  }

  if ((sub_10076BDFC() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = sub_1005A6008(v4, v3);
LABEL_18:
  v8 = v6;

  result = v8;
  if (!v8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100105DE0(__n128 a1)
{
  v2 = sub_10076620C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100105EE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076502C();
  sub_10000DB18(v4, qword_10099D0C8);
  v24 = sub_10000A61C(v4, qword_10099D0C8);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1708);
  v26 = *(*(v5 - 8) + 16);
  v31 = v5;
  v26(v3, v6, v5);
  v7 = enum case for FontSource.useCase(_:);
  v25 = v1[13];
  v23 = v1 + 13;
  v25(v3, enum case for FontSource.useCase(_:), v0);
  v32 = sub_10076D9AC();
  v54[3] = v32;
  v54[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v54);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v51);
  v9 = v1[2];
  v27 = v1 + 2;
  v28 = v9;
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v29 = v1 + 1;
  v30 = v10;
  v10(v3, v0);
  v22 = v6;
  v11 = v5;
  v12 = v26;
  v26(v3, v6, v11);
  HIDWORD(v21) = v7;
  v13 = v25;
  v25(v3, v7, v0);
  v52 = v32;
  v53 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v48);
  v28(v14, v3, v0);
  sub_10076D9BC();
  v30(v3, v0);
  v12(v3, v6, v31);
  v13(v3, v7, v0);
  v15 = v32;
  v49 = v32;
  v50 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v45);
  v17 = v28;
  v28(v16, v3, v0);
  sub_10076D9BC();
  v18 = v30;
  v30(v3, v0);
  v26(v3, v22, v31);
  v25(v3, HIDWORD(v21), v0);
  v46 = v15;
  v47 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v42);
  v17(v19, v3, v0);
  sub_10076D9BC();
  v18(v3, v0);
  v43 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v41 = &protocol witness table for Double;
  v42[0] = 0;
  v40 = &type metadata for Double;
  v38 = &protocol witness table for Double;
  v39 = 0;
  v37 = &type metadata for Double;
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  return sub_10076501C();
}

id sub_1001063C8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100016E2C(&v1[v9], v4, &qword_1009459C0, &unk_1007A1DA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &qword_1009459C0, &unk_1007A1DA0);
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100761FEC();
    sub_100761FDC();
    v11 = sub_10076082C();
    sub_100107BF4(v11, sub_1000368B8);
    v13 = v12;

    v14 = sub_10076081C();
    sub_10050C274(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_10010666C()
{
  v1 = v0;
  v64 = sub_10076771C();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000A5D4(&unk_1009567A0, &unk_1007A6E20);
  v4 = *(v62 - 8);
  *&v5 = __chkstk_darwin(v62).n128_u64[0];
  v61 = &v49 - v6;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems];
  v54 = *(v7 + 16);
  if (v54)
  {
    v8 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
    v59 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemReusePool;
    v58 = v4 + 16;
    v57 = enum case for DirectionalTextAlignment.leading(_:);
    v56 = (v2 + 104);
    v55 = v4 + 8;

    v9 = 0;
    v52 = v0;
    v51 = v4;
    v50 = v7;
    v53 = v8;
    while (v9 < *(v7 + 16))
    {
      v10 = *(v4 + 72);
      v67 = v9;
      v12 = v61;
      v11 = v62;
      (*(v4 + 16))(v61, v59 + v10 * v9, v62);
      swift_beginAccess();
      sub_10000A5D4(&qword_1009490C0, &qword_10078B9F0);
      sub_10076E15C();
      swift_endAccess();
      v13 = v76;
      (*v56)(v63, v57, v64);
      v14 = v13;
      sub_10076262C();

      v15 = [v1 contentView];
      v66 = v14;
      [v15 addSubview:v14];

      sub_100761FEC();
      v16 = sub_100769C3C();

      v17 = sub_100761FDC();
      (*(v4 + 8))(v12, v11);
      v65 = v16;
      v18 = sub_10076082C();
      v19 = *(v18 + 16);
      if (v19)
      {
        v76 = _swiftEmptyArrayStorage;
        sub_1004BB814(0, v19, 0);
        v75 = v76;
        v20 = v18 + 64;
        v21 = sub_1007712DC();
        v22 = 0;
        v68 = v18 + 72;
        v69 = v19;
        v70 = v18 + 64;
        while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v18 + 32))
        {
          v25 = v21 >> 6;
          if ((*(v20 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_30;
          }

          v26 = *(v18 + 36);
          v71 = v22;
          v72 = v26;
          v27 = (*(v18 + 48) + 16 * v21);
          v28 = *v27;
          v29 = v27[1];
          v30 = *(*(v18 + 56) + 8 * v21);
          v31 = v75;
          v76 = v75;
          v33 = v75[2];
          v32 = v75[3];
          v73 = v28;
          v74 = v33 + 1;

          if (v33 >= v32 >> 1)
          {
            sub_1004BB814((v32 > 1), v74, 1);
            v31 = v76;
          }

          v34 = v73;
          v31[2] = v74;
          v75 = v31;
          v35 = &v31[4 * v33];
          v35[4] = v34;
          v35[5] = v29;
          v35[6] = v30;
          v35[7] = v17;
          v23 = 1 << *(v18 + 32);
          if (v21 >= v23)
          {
            goto LABEL_31;
          }

          v20 = v70;
          v36 = *(v70 + 8 * v25);
          if ((v36 & (1 << v21)) == 0)
          {
            goto LABEL_32;
          }

          if (v72 != *(v18 + 36))
          {
            goto LABEL_33;
          }

          v37 = v36 & (-2 << (v21 & 0x3F));
          if (v37)
          {
            v23 = __clz(__rbit64(v37)) | v21 & 0x7FFFFFFFFFFFFFC0;
            v24 = v69;
          }

          else
          {
            v38 = v25 << 6;
            v39 = v25 + 1;
            v24 = v69;
            v40 = (v68 + 8 * v25);
            while (v39 < (v23 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                sub_100032734(v21, v72, 0);
                v23 = __clz(__rbit64(v41)) + v38;
                goto LABEL_7;
              }
            }

            sub_100032734(v21, v72, 0);
          }

LABEL_7:
          v22 = v71 + 1;
          v21 = v23;
          if (v71 + 1 == v24)
          {

            v1 = v52;
            v4 = v51;
            v7 = v50;
            v43 = v75;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        break;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_24:
      v44 = sub_10076081C();
      v45 = v66;
      sub_10050C274(v44, 0, v43);

      v46 = v53;
      swift_beginAccess();
      v47 = v45;
      sub_10077019C();
      if (*((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v48 = v67 + 1;
      sub_10077025C();
      swift_endAccess();

      v9 = v48;
      if (v48 == v54)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    [v1 setNeedsLayout];
  }
}

id sub_100106D00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076D3DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v2, qword_1009A1708);
  (*(v3 + 16))(v5, v6, v2);
  v7 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  result = sub_10050BDFC(v5, 0, 0, 1);
  *a1 = result;
  return result;
}

id sub_100106E50(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_10076E21C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *a1;
  swift_beginAccess();
  sub_100016E2C(&v2[v15], v7, &unk_1009467C0, &unk_100787A10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &unk_1009467C0, &unk_100787A10);
    result = *&v2[*a2];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *a2;
    v18 = *&v2[*a2];
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v20 = *(v9 + 24);
      v21 = v18;
      v20(&v18[v19], v11, v8);
      swift_endAccess();
      v22 = v21;
      [v22 setNeedsLayout];
      v23 = *(v9 + 8);
      v23(v11, v8);
      [v22 setHidden:0];

      return (v23)(v14, v8);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v24 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v32 = *(v9 + 40);
      v26 = v24;
      v32(&v24[v25], v11, v8);
      swift_endAccess();

      v27 = *&v2[v17];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v2[v17];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v17] = v26;
      v29 = v26;

      v30 = [v2 contentView];
      [v30 addSubview:v29];

      [v2 setNeedsLayout];
      return (*(v9 + 8))(v14, v8);
    }
  }

  return result;
}

uint64_t sub_100107240()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = sub_10076D1FC();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076502C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076504C();
  v10 = *(v30 - 8);
  *&v11 = __chkstk_darwin(v30).n128_u64[0];
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v1;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "layoutSubviews", v11);
  v14 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  if (qword_10093F7A8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v6, qword_10099D0C8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v44 = &protocol witness table for UIView;
  v42 = v16;
  swift_beginAccess();
  v17 = v16;

  sub_10016DF04(v18);

  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView];
  if (v19)
  {
    v20 = type metadata accessor for SeparatorView(0);
    v21 = &protocol witness table for UIView;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v22;
  v40 = v20;
  v41 = v21;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (v23)
  {
    v24 = type metadata accessor for SeparatorView(0);
    v25 = &protocol witness table for UIView;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v34 = 0;
    v33 = 0;
  }

  v32 = v23;
  v35 = v24;
  v36 = v25;
  v26 = v19;
  v27 = v23;
  sub_10076503C();
  sub_10076500C();
  (*(v3 + 8))(v5, v31);
  return (*(v10 + 8))(v13, v30);
}

id sub_100107684()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100107E88();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;

  sub_10010666C();
  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyHeaderCollectionViewCell(uint64_t a1)
{
  result = qword_100949098;
  if (!qword_100949098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100107974(uint64_t a1)
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10008434C(319);
    if (v2 <= 0x3F)
    {
      sub_100107B20(319);
      if (v3 <= 0x3F)
      {
        sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100107B20(uint64_t a1)
{
  if (!qword_1009490A8)
  {
    sub_10000CE78(&qword_1009490B0, "Ȥ\b");
    sub_100107B90();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1009490A8);
    }
  }
}

unint64_t sub_100107B90()
{
  result = qword_1009490B8;
  if (!qword_1009490B8)
  {
    sub_10000CE78(&qword_1009490B0, "Ȥ\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009490B8);
  }

  return result;
}

void sub_100107BF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1004BB814(0, v3, 0);
    v36 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = sub_1007712DC();
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
      v22 = v36[2];
      v21 = v36[3];
      if (v22 >= v21 >> 1)
      {
        sub_1004BB814((v21 > 1), v22 + 1, 1);
        v20 = v36;
      }

      v20[2] = v22 + 1;
      v23 = &v20[4 * v22];
      v23[4] = v15;
      v23[5] = v35;
      v23[6] = v34;
      v23[7] = v19;
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
            sub_100032734(v5, v32, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_100032734(v5, v32, 0);
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

void sub_100107E88()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_10077158C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v12 = v2;
    v5 = UIAccessibilityTraitLink;
    v6 = UIAccessibilityTraitStaticText;

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      swift_beginAccess();
      sub_10000A5D4(&qword_1009490C0, &qword_10078B9F0);
      sub_10076E17C();
      swift_endAccess();
      [v9 setAttributedText:0];
      *&v9[qword_10095B630] = 0;

      v10 = qword_10095B628;
      swift_beginAccess();
      *&v9[v10] = _swiftEmptyArrayStorage;

      if (*(*&v9[v10] + 16))
      {
        v11 = v5;
      }

      else
      {
        v11 = v6;
      }

      [v9 setAccessibilityTraits:v11];
      [v9 removeFromSuperview];
    }

    while (v4 != v7);

    v2 = v12;
    goto LABEL_13;
  }

  __break(1u);
}

char *sub_100108084()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009490B0, "Ȥ\b");
  __chkstk_darwin(v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v15 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems] = _swiftEmptyArrayStorage;
  v16 = type metadata accessor for DynamicTypeLinkedLabel(0);
  sub_10076D4CC();
  sub_100107B90();
  sub_10076E18C();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView] = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
  v18 = sub_10076E21C();
  v19 = *(*(v18 - 8) + 56);
  v19(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView] = 0;
  v19(&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator], 1, 1, v18);
  v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader] = 0;
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v7, qword_1009A1708);
  (*(v8 + 16))(v10, v20, v7);
  v21 = objc_allocWithZone(v16);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel] = sub_10050BDFC(v10, 0, 0, 1);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setClipsToBounds:0];

  v24 = [v22 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel];
  (*(v34 + 104))(v33, enum case for DirectionalTextAlignment.leading(_:), v35);
  v27 = v26;
  sub_10076262C();

  v28 = *&v22[v25];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v29 = v28;
  sub_10076F95C();
  sub_10000CFBC(v38, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v39, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v36 + 8))(v4, v37);
  v30 = [v22 contentView];

  [v30 addSubview:*&v22[v25]];
  return v22;
}

void sub_100108650()
{
  v1 = sub_10000A5D4(&qword_1009490B0, "Ȥ\b");
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v5 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItemLabels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = _swiftEmptyArrayStorage;
  type metadata accessor for DynamicTypeLinkedLabel(0);
  sub_10076D4CC();
  sub_100107B90();
  sub_10076E18C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparatorView) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
  v7 = sub_10076E21C();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparatorView) = 0;
  v8(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = 0;
  sub_10077156C();
  __break(1u);
}

void *sub_100108894()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1001088CC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100108924;
}

void sub_100108924(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1002AAF04(v2);
  }

  else
  {
    sub_1002AAF04(*a1);
  }
}

double sub_1001089DC()
{
  swift_getObjectType();

  sub_10076422C();
  return result;
}

uint64_t sub_100108A10(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100108BE4(&qword_1009490D8, type metadata accessor for MediumLockupCollectionViewCell, &unk_10078BA30);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100108ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100108BE4(&qword_1009490D8, type metadata accessor for MediumLockupCollectionViewCell, &unk_10078BA30);

  return a3(ObjectType, v4);
}

uint64_t sub_100108BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100108C2C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_1009490E0);
  sub_10000A61C(v0, qword_1009490E0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100108D90(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v29 = a1;
  sub_1007639FC();
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0D78);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_10076D9AC();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_10076D9BC();
  v25 = v3[1];
  v25(v5, v2);
  sub_100763A2C();
  if (qword_100940A98 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_1009A0DD8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_10076D9BC();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100763ABC();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v32);
  v15(v18, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  sub_100763A3C();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000A61C(v24, qword_1009A0CD0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v32);
  v28(v21, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  return sub_100763ACC();
}

char *sub_10010927C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = sub_100763ADC();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = sub_10076F9AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076771C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_1009A1B58);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(sub_1007626BC());
  v81 = v23;
  v34 = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  sub_10076F95C();
  sub_10000CFBC(v85, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v86, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_100352754(v43);

  v44 = qword_10093F7B0;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_10000A61C(v83, qword_1009490E0);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_100940A50;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_10000A61C(v80, qword_1009A0D00);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  sub_1007625DC();

  v62 = qword_100940A78;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000A61C(v57, qword_1009A0D78);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  sub_1007625DC();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_100109C70(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = sub_10076FF6C();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = sub_10076FF6C();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_100109E14()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100109FA4(double a1, double a2)
{
  v5 = sub_10010A0DC(1, a1, a2);
  v6 = sub_10010A0DC(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = sub_10076FF6C();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = sub_10076FF6C();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_10010A0DC(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
  isa = sub_100770EBC(v7 / v8).super.super.isa;
  v10 = sub_100770EBC(0.3 / v8).super.super.isa;
  v11 = sub_10076FF6C();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100786040;
  v16 = 0.0;
  *(v15 + 32) = sub_100770EBC(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = sub_100770EBC(1.0);
  v19 = sub_1007701AC().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100788B20;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = sub_1007701AC().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_10010A4C0(char *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

void sub_10010A880()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = sub_10076443C();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = sub_100763ADC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  sub_10076422C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  sub_100353408(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = sub_100763A4C();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v35 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v35 = qword_100944CA0;
    }

    v36 = v61;
    v37 = sub_10000A61C(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v3 + 8))(v39, v36);
  }

  sub_10076398C();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC20ProductPageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v56 = *v55;
  if (*v55)
  {
    v57 = *(v55 + 1);

    v56(v58);
    sub_1000167E0(v56, v57);
  }
}