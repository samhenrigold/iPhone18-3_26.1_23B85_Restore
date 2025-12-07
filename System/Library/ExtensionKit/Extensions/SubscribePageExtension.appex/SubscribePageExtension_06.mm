void sub_1000B00D4(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView);
  sub_1007433C4();
  sub_1000B0570(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v5 = v4;
  sub_100744274();

  v6 = *(*(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v6)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_1000B0570(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
      v7 = v6;
      sub_100744274();
    }
  }
}

id sub_1000B0264(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_100748F54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100144E2C(a4, v9, a1);
  sub_100748F74();
  sub_1000B0570(&qword_100935580, &type metadata accessor for UpsellBreakoutLayout, &protocol conformance descriptor for UpsellBreakoutLayout);
  sub_100750D34();
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

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5CF0;
  *(v22 + 32) = v17;
  sub_1000B05B8();
  v23 = v17;
  isa = sub_100753294().super.isa;

  v25 = [v18 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v25;
}

uint64_t sub_1000B0570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B05B8()
{
  result = qword_100923478;
  if (!qword_100923478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100923478);
  }

  return result;
}

void sub_1000B0604(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v85 - v8;
  v9 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v9 - 8);
  v101 = &v85 - v10;
  v11 = sub_100744864();
  __chkstk_darwin(v11 - 8);
  v100 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v99 = &v85 - v14;
  v15 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v15 - 8);
  v107 = &v85 - v16;
  v98 = sub_100744894();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100747D94();
  v19 = *(v103 - 8);
  __chkstk_darwin(v103);
  v106 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007504F4();
  v104 = *(v21 - 8);
  v105 = v21;
  __chkstk_darwin(v21);
  v96 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10074F6E4();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v85 - v25;
  v95 = sub_10074F704();
  v26 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v85 - v30;
  sub_100743644();
  sub_1000B1804(&qword_10092E030, &type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  v108 = a1;
  sub_1007468B4();
  v32 = aBlock[0];
  if (aBlock[0])
  {
    v88 = v6;
    v89 = a2;
    v90 = v19;

    v33 = sub_100743604();
    v34 = [v33 length];

    v35 = &selRef_initWithTitle_style_target_action_;
    v109 = v18;
    if (v34 < 1)
    {
      v47 = v110;
      [*&v110[qword_1009485E0] setText:0];
      v47[qword_100983438] = 0;
      [*&v47[qword_1009485D0] setHidden:1];
    }

    else
    {
      v86 = v28;
      v87 = v26;
      v36 = sub_100743604();
      swift_getKeyPath();
      sub_100746914();

      v37 = aBlock[6];
      v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
      v39 = [v36 length];
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = v37;
      *(v40 + 32) = v38;
      *(v40 + 40) = 1;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_100047814;
      *(v41 + 24) = v40;
      aBlock[4] = sub_1000B18A8;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100047044;
      aBlock[3] = &unk_1008667B8;
      v42 = _Block_copy(aBlock);
      v43 = v37;
      v44 = v38;

      [v36 enumerateAttributesInRange:0 options:v39 usingBlock:{0x100000, v42}];

      _Block_release(v42);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return;
      }

      v46 = v110;
      [*&v110[qword_1009485E0] setAttributedText:v44];
      v46[qword_100983438] = 1;
      [*&v46[qword_1009485D0] setHidden:0];

      v18 = v109;
      v26 = v87;
      v28 = v86;
      v35 = &selRef_initWithTitle_style_target_action_;
    }

    v48 = *&v110[qword_1009485D8];
    sub_100743614();
    if (v49)
    {
      v50 = sub_100753064();
    }

    else
    {
      v50 = 0;
    }

    [v48 v35[105]];

    if (sub_1007435E4())
    {
      v51 = [v110 contentView];
      [v51 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5C4();
      v52 = *(v26 + 8);
      v53 = v95;
      v52(v31, v95);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5E4();
      v52(v28, v53);
      v86 = v31;
      v54 = v93;
      v55 = *(v93 + 104);
      v87 = v32;
      v56 = v92;
      v57 = v94;
      v55(v92, enum case for PageGrid.Direction.vertical(_:), v94);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5D4();
      v52(v28, v53);
      (*(v54 + 16))(v91, v56, v57);
      sub_1004E97E0(0.0);
      v58 = v86;
      sub_10074F6B4();
      (*(v54 + 8))(v56, v57);
      v59 = [v110 contentView];
      sub_10074F664();
      [v59 setLayoutMargins:?];

      v52(v58, v53);
      v18 = v109;
    }

    v60 = v106;
    v61 = v104;
    v62 = sub_100743634();
    v63 = v105;
    if (v62)
    {
      v64 = v110;
      v65 = [v110 contentView];
      sub_100009D34();
      sub_1007477B4();

      sub_10074F2A4();
      v66 = v96;
      sub_100750504();
      sub_100750464();
      v68 = v67;
      v70 = v69;

      (*(v61 + 8))(v66, v63);
      v71 = &v64[qword_10097FEF0];
      *v71 = v68;
      *(v71 + 1) = v70;
    }

    if (sub_100743624())
    {
      (*(v97 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v98);
      if (sub_100743634())
      {
        sub_10074F2A4();
        sub_100750504();

        v72 = 0;
      }

      else
      {
        v72 = 1;
      }

      (*(v61 + 56))(v107, v72, 1, v63);
      sub_10074EBB4();
      sub_10074EBF4();
      sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      sub_10074EB94();
      v73 = v101;
      sub_10074EC24();
      v74 = sub_100741264();
      (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
      v75 = v102;
      sub_10074EBE4();
      v76 = v88;
      sub_10074EBD4();
      type metadata accessor for VideoView(0);
      sub_1000B1804(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v77 = sub_1007464A4();
      sub_10000C8CC(v76, &unk_1009281C0, qword_1007ABBB0);
      sub_10000C8CC(v75, &unk_1009281C0, qword_1007ABBB0);
      sub_10000C8CC(v73, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(aBlock, &unk_1009276E0, &unk_1007A5C70);
      sub_1003AF8D8();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v79 = Strong;
        v80 = *&v110[qword_100935138];
        v81 = v90;
        if (v80)
        {
          v82 = *&v110[qword_100935138];
        }

        else
        {
          v82 = [v110 contentView];
          v80 = 0;
        }

        v83 = v80;
        [v82 addSubview:v79];
        [v110 setNeedsLayout];
      }

      else
      {

        v81 = v90;
      }

      (*(v81 + 8))(v60, v103);
    }

    v84 = sub_1007435F4();

    v110[qword_100983430] = v84 & 1;
    sub_1000B168C();
  }
}

uint64_t sub_1000B151C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100983428;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1000B1578(uint64_t a1)
{
  v3 = qword_100983428;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1000B1640()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_1003AF0A0(0);
}

id sub_1000B168C()
{
  v1 = sub_100743584();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_100983430] == 1)
  {
    sub_1007433C4();
    sub_100743244();
    sub_100746E74();
    sub_100743234();
    sub_100746E64();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  sub_100746E34();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_1000B1804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B1850()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1000B18B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1000B18CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074AB44();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_1007441C4();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100750B04();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_10074F7B4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  v53 = sub_10000D0FC(v26, qword_100981C68);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_100750B14();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_10000D134(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_1007441E4());
  v33 = sub_1007441B4();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_100745C84());
  *&v34[v35] = sub_100745C74();
  v38 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v34;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemBackgroundColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:*&v42[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView]];
  v44 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  [v42 addSubview:*&v42[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel]];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView]];
  [*&v42[v44] setNumberOfLines:0];
  v45 = *&v42[v44];
  v46 = [v42 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_100753924();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v49 = swift_allocObject();
  v63 = xmmword_1007A5A00;
  *(v49 + 16) = xmmword_1007A5A00;
  *(v49 + 32) = sub_1007519E4();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v39;
  v66[0] = v42;
  v50 = v42;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_1007516F4();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v39;
  v66[0] = v50;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v66);
  return v50;
}

uint64_t sub_1000B2188@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v36 = sub_100751144();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v38 = (v34 - v5);
  __chkstk_darwin(v6);
  v37 = (v34 - v7);
  __chkstk_darwin(v8);
  v10 = (v34 - v9);
  v11 = sub_1007507B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v35 = v34 - v19;
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  sub_100750794();
  v41 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView];
  sub_1007441E4();
  sub_100750434();
  sub_1007507A4();
  sub_10000C620(v44);
  v21 = *(v12 + 8);
  v34[0] = v11;
  v21(v14, v11);
  v34[1] = v12 + 8;
  v22 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v45 = sub_100745C84();
  v46 = &protocol witness table for UILabel;
  v44[0] = v22;
  *(swift_allocObject() + 16) = v20;
  v23 = v20;
  v24 = v22;
  sub_1007507A4();

  v21(v17, v11);
  sub_10000C620(v44);
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView];
  v42 = type metadata accessor for ArcadeDownloadPackCategoryListView();
  v43 = sub_1000B2F7C();
  v41 = v25;
  *v10 = sub_1000B2740;
  v10[1] = 0;
  v26 = *(v2 + 104);
  v27 = v36;
  v26(v10, enum case for Resize.Rule.recalculated(_:), v36);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v26(v37, enum case for Resize.Rule.unchanged(_:), v27);
  v26(v38, v28, v27);
  v26(v39, v28, v27);
  v45 = sub_100751154();
  v46 = &protocol witness table for Resize;
  sub_10000D134(v44);
  v29 = v25;
  sub_100751164();
  v30 = v40;
  v31 = v34[0];
  v40[3] = v34[0];
  v30[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v30);
  v32 = v35;
  sub_1007507A4();
  v21(v32, v31);
  return sub_10000C620(v44);
}

uint64_t sub_1000B2628(int a1, id a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  sub_100753924();
  return sub_100750744();
}

uint64_t sub_1000B26A8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_1007537B4();

  return sub_100750724();
}

id sub_1000B281C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  sub_10074D514();
  v9 = sub_100753064();

  [v8 setText:v9];

  v10 = sub_10074D4E4();
  sub_1004B0D18(v10, a2, a3, a4);

  [v4 setNeedsLayout];
  [v4 invalidateIntrinsicContentSize];
  v11 = [v4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = sub_100753924();
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  return [v8 setTextAlignment:v13];
}

id sub_1000B2960()
{
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_100753924();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return [v1 setTextAlignment:v4];
}

id sub_1000B2C18()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_100753924();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_100753924();
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  return [v1 setTextAlignment:v7];
}

double sub_1000B2E04(uint64_t a1, double a2, double a3)
{
  sub_1000B2188(v6);
  sub_10000C888(v6, v6[3]);
  sub_100751254();
  v4 = v3;
  sub_10000C620(v6);
  return v4;
}

uint64_t sub_1000B2EE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B2F7C()
{
  result = qword_1009263B8;
  if (!qword_1009263B8)
  {
    type metadata accessor for ArcadeDownloadPackCategoryListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009263B8);
  }

  return result;
}

void sub_1000B2FD4()
{
  v0 = sub_10074AB44();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v36 = sub_1007441C4();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100750B04();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_10074F7B4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_100921510 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v32 = sub_10000D0FC(v18, qword_100981C68);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v32, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v44 = v5;
  v45 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v43);
  (*(v6 + 16))(v21, v8, v5);
  sub_100750B14();
  (*(v6 + 8))(v8, v5);
  (*(v34 + 104))(v37, enum case for WordmarkView.Alignment.leading(_:), v36);
  v22 = v35;
  v44 = v35;
  v45 = &protocol witness table for StaticDimension;
  v23 = sub_10000D134(v43);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_1007441E4());
  v25 = sub_1007441B4();
  (*(v9 + 8))(v11, v22);
  v26 = v42;
  v27 = v32;
  *(v42 + v33) = v25;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v29 = v38;
  v20(v38, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v39 + 104))(v41, enum case for DirectionalTextAlignment.none(_:), v40);
  v30 = objc_allocWithZone(sub_100745C84());
  *(v26 + v28) = sub_100745C74();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000B35F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v4 = sub_1007504F4();
  sub_10000D0FC(v4, qword_10097FAF8);
  sub_1007504C4();
  sub_10074A254();
  v5 = sub_10074A274();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

double sub_1000B3710(double a1)
{
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v2 = sub_1007504F4();
  sub_10000D0FC(v2, qword_10097FAF8);
  sub_1007504C4();
  return a1;
}

id sub_1000B3858()
{
  v1 = v0;
  v2 = sub_10074EAB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E8C4();
  if (v6)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  sub_10074EA74();
  sub_1000B3D90(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v8 = sub_100754324();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = sub_10074E8D4();
    v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_10032C34C();
  }

  return result;
}

id sub_1000B39F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10074EAB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v7 = v6;
  PageTraitEnvironment.pageColumnMargin.getter();
  v9 = v8;
  sub_10074EA74();
  sub_1000B3D90(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v10 = sub_100754324();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (qword_100920980 != -1)
    {
      swift_once();
    }

    v11 = qword_10097FB10;
  }

  else
  {
    if (qword_100920988 != -1)
    {
      swift_once();
    }

    v11 = qword_10097FB28;
  }

  v12 = ceil((v7 - v9) / 1.5);
  v13 = sub_100743424();
  sub_10000D0FC(v13, v11);
  sub_100743444();
  sub_1000B3D90(&qword_100926410, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  sub_100750D34();
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 absoluteDimension:v12];
  v18 = [v16 absoluteDimension:v15];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = objc_opt_self();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5CF0;
  *(v22 + 32) = v20;
  sub_1000B05B8();
  v23 = v20;
  isa = sub_100753294().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v19 subitems:isa];

  return v25;
}

uint64_t sub_1000B3D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000B3DD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  if (qword_100920588 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, qword_10097E4D8);
  sub_100067018(v16, v13, v17);
  v18 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_content] = sub_1001F27B4(v13);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v19;
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = [v23 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v25 = [v23 contentView];
  [v25 addSubview:*&v23[OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_content]];

  return v23;
}

uint64_t type metadata accessor for SearchResultsContextCardCollectionViewCell(uint64_t a1)
{
  result = qword_100926448;
  if (!qword_100926448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000B470C(&qword_100926460, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_1007A9DA8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_1000B4378(uint64_t a1, uint64_t a2)
{
  sub_10074AFF4();
  sub_1000B470C(&qword_100926468, &type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
  sub_1007468B4();
  if (v11)
  {
    v3 = sub_10074AFE4();
    v4 = sub_10074AFD4();
    if (v4)
    {
      v5 = v4;
      sub_10074ECB4();
      v6 = sub_10074ECC4();
      if (v6)
      {
        v7 = v6;
        if (sub_10074F1D4())
        {
          sub_100743AC4();
        }

        else if (sub_10074F1C4())
        {
          sub_10056028C(v9, v7, 0);
        }
      }

      sub_10001DEE0();
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = v5;

      v8 = sub_100753FF4();
    }

    else
    {
      v8 = 0;
    }

    sub_1001F1878(v3, v8, a2);
  }
}

uint64_t sub_1000B4568@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1000B45C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1000B4680()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42SearchResultsContextCardCollectionViewCell_content];
  sub_100151A48();
  v2 = *(v1 + qword_10092D708);
  *(v1 + qword_10092D708) = 0;
  sub_1001F2CE0(v2);
}

uint64_t sub_1000B470C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000B4758(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074AFF4();
  sub_1000B470C(&qword_100926468, &type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
  sub_1007468B4();
  if (!v26)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  v7 = v26;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v12 = sub_10074AFE4();
  v13 = sub_10074AFD4();
  if (v13)
  {
    v14 = v13;
    sub_10074ECB4();
    v15 = sub_10074ECC4();
    if (v15)
    {
      v16 = v15;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v19, v16, 0);
      }
    }

    sub_10001DEE0();
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = v14;

    v18 = sub_100753FF4();
  }

  else
  {
    v18 = 0;
  }

  if (qword_100920588 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v22 = sub_10000D0FC(v21, qword_10097E4D8);
  sub_1001F3DB0(v7, v9, v11, v12, v18, v22);
  v17 = v23;

  return v17;
}

uint64_t sub_1000B4A9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4AE4()
{
  v0 = sub_10074A904();
  sub_100039C50(v0, qword_10097D300);
  sub_10000D0FC(v0, qword_10097D300);
  if (qword_100920168 != -1)
  {
    swift_once();
  }

  v1 = sub_100750B04();
  v2 = sub_10000D0FC(v1, qword_100926488);
  v5[3] = v1;
  v5[4] = &protocol witness table for StaticDimension;
  v3 = sub_10000D134(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_10074A8E4();
}

UIFontTextStyle sub_1000B4C34()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100926470);
  v1 = sub_10000D0FC(v0, qword_100926470);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_1000B4CFC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_100920160 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100926470);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

id sub_1000B4ED8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100926508, &qword_1007A9EE8);
  __chkstk_darwin(v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  v13 = sub_10000C518(&qword_100923F78, &qword_1007A9EE0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_buttons] = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton(0);
  sub_100750624();
  sub_1000B627C();
  sub_1007512E4();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v14;
}

void sub_1000B529C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_100754664();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = &v6[qword_10097FD38];
      v9 = *&v6[qword_10097FD38];
      v10 = *(v8 + 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      [v7 setTitle:0 forState:{0, sub_1000164A8(v9, v10)}];
      swift_beginAccess();
      sub_10000C518(&qword_100926528, &qword_1007A9F08);
      sub_1007512D4();
      swift_endAccess();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1000B5434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100752AC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = ObjectType;
  swift_beginAccess();
  sub_10000C518(&qword_100926528, &qword_1007A9F08);
  sub_1007512B4();
  swift_endAccess();
  v11 = *&v23[0];
  [v11 _setWantsAccessibilityUnderline:0];
  v12 = [v11 titleLabel];

  if (v12)
  {
    [v12 setNumberOfLines:2];
  }

  sub_100744134();
  v13 = sub_100753064();

  [v11 setTitle:v13 forState:0];

  sub_100744124();
  sub_1007544A4();
  sub_100016994(v24);
  memset(v24, 0, 32);
  memset(v23, 0, sizeof(v23));
  sub_100752A74();

  sub_10000C8CC(v23, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v24, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = &v11[qword_10097FD38];
  v16 = *&v11[qword_10097FD38];
  v17 = *&v11[qword_10097FD38 + 8];
  *v15 = sub_1000B68F0;
  v15[1] = v14;

  sub_1000164A8(v16, v17);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v19 = v11;
  sub_100753284();
  if (*((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  v20 = [v3 contentView];
  [v20 addSubview:v19];
}

char *sub_1000B57AC@<X0>(char **a1@<X8>)
{
  v2 = sub_100750B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RoundedTitledButton(0);
  if (qword_1009213E0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v6, qword_1009818D8);
  (*(v7 + 16))(v9, v10, v6);
  if (qword_100920168 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v2, qword_100926488);
  (*(v3 + 16))(v5, v11, v2);
  result = sub_1003878B0(v9, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1000B59B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  result = sub_100744144();
  if (result)
  {
    v7 = result;
    v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(v7, 1, a2, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t sub_1000B5B1C()
{
  v1 = v0;
  v23 = sub_100750354();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100923F68, &unk_1007A9EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10074A904();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A924();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_100920148 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v8, qword_10097D300);
  (*(v9 + 16))(v11, v17, v8);
  swift_beginAccess();

  sub_100157DE0(v18);

  v19 = OBJC_IVAR____TtC22SubscribePageExtension35TitledButtonStackCollectionViewCell_lineBreaks;
  swift_beginAccess();
  sub_1000B68F8(v1 + v19, v7);
  sub_10074A914();
  v20 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  sub_10074A8D4();
  (*(v2 + 8))(v4, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_1000B5F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledButtonStackCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledButtonStackCollectionViewCell(uint64_t a1)
{
  result = qword_1009264D8;
  if (!qword_1009264D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B6098(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_1000B61A8(319);
    if (v2 <= 0x3F)
    {
      sub_1000B620C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000B61A8(uint64_t a1)
{
  if (!qword_1009264F0)
  {
    sub_10000C724(&qword_100923F78, &qword_1007A9EE0);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_1009264F0);
    }
  }
}

void sub_1000B620C(uint64_t a1)
{
  if (!qword_100926500)
  {
    sub_10000C724(&qword_100926508, &qword_1007A9EE8);
    sub_1000B627C();
    v1 = sub_1007512F4();
    if (!v2)
    {
      atomic_store(v1, &qword_100926500);
    }
  }
}

unint64_t sub_1000B627C()
{
  result = qword_100926510;
  if (!qword_100926510)
  {
    sub_10000C724(&qword_100926508, &qword_1007A9EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926510);
  }

  return result;
}

void *sub_1000B62E0(uint64_t a1, uint64_t a2)
{
  result = sub_100750F34();
  v7[3] = result;
  v7[4] = &protocol witness table for LayoutViewPlaceholder;
  v7[0] = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10000C518(&qword_100926520, &qword_1007A9F00);
      v5 = sub_100753324();
      v5[2] = a2;
      v6 = (v5 + 4);
      do
      {
        sub_10000C824(v7, v6);
        v6 += 40;
        --a2;
      }

      while (a2);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_10000C620(v7);
    return v5;
  }

  return result;
}

double sub_1000B6394(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v38 = a2;
  v34 = a1;
  v37 = sub_1007416B4();
  __chkstk_darwin(v37);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v32 - v6;
  v7 = sub_10000C518(&unk_100923F68, &unk_1007A9EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074A904();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10074A924();
  v18 = *(v33 - 8);
  __chkstk_darwin(v33);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920148 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v14, qword_10097D300);
  (*(v15 + 16))(v17, v21, v14);
  sub_10074A8F4();
  v22 = v40;
  sub_10000C888(v39, v40);
  sub_100536120(v22);
  sub_100750564();
  (*(v11 + 8))(v13, v10);
  sub_10000C620(v39);
  sub_100750F34();
  swift_allocObject();
  v23 = sub_100750F14();
  v24 = sub_1007471B4();
  if (v24 >> 62)
  {
    v25 = sub_100754664();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000B62E0(v23, v25);
  sub_1007471A4();
  sub_100747194();
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  v26 = sub_10000C518(&qword_100923F78, &qword_1007A9EE0);
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  sub_10074A914();
  sub_1000B6850(v27);
  v28 = v33;
  sub_100750404();
  v30 = v29;
  (*(v18 + 8))(v20, v28);
  return v30;
}

unint64_t sub_1000B6850(__n128 a1)
{
  result = qword_100926518;
  if (!qword_100926518)
  {
    sub_10074A924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926518);
  }

  return result;
}

uint64_t sub_1000B68B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B68F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923F68, &unk_1007A9EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000B6968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_10097D370) = 0;
  sub_1000BE2A8();
  v5 = qword_100926550;
  v6 = *(v2 + qword_100926550);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_10093CB48 + 8] = &off_100866920;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          sub_10074B184();
          sub_100752764();
          sub_100752D34();
          swift_getObjectType();
          v21 = sub_100748FB4();
          v22 = v20;
          sub_10074B124();
        }

        else
        {
          v23 = v16;
        }

        sub_10074B184();
        sub_100752764();
        sub_100752D34();
        swift_getObjectType();
        v24 = sub_100748FB4();
        v25 = v16;
        sub_10074B164();
      }
    }
  }
}

uint64_t sub_1000B6C24()
{
  swift_unknownObjectRelease();

  sub_1000164A8(*(v0 + qword_10097D380), *(v0 + qword_10097D380 + 8));
  sub_1000164A8(*(v0 + qword_10097D388), *(v0 + qword_10097D388 + 8));

  sub_10000C8CC(v0 + qword_100926570, &unk_100926C40, qword_1007B9FE0);

  return sub_10000C8CC(v0 + qword_10097D3A8, &unk_100925380, qword_1007A8E40);
}

id sub_1000B6D70()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_100926580] == 1)
  {
    v0[qword_100926580] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000B6DC0(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_100926580] == 1)
  {
    a1[qword_100926580] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000B6E20(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1000164A8(*(a1 + qword_10097D380), *(a1 + qword_10097D380 + 8));
  sub_1000164A8(*(a1 + qword_10097D388), *(a1 + qword_10097D388 + 8));

  sub_10000C8CC(a1 + qword_100926570, &unk_100926C40, qword_1007B9FE0);

  return sub_10000C8CC(a1 + qword_10097D3A8, &unk_100925380, qword_1007A8E40);
}

void sub_1000B6F90(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_100926550];
  if (v4)
  {
    v4[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_10097D360];
    v5 = v4;
    sub_10036D2F8();
  }

  v6 = *&v2[qword_100926588];
  if (v6)
  {
    [v6 setHidden:v2[qword_10097D360]];
  }

  v7 = a1 & ~v2[qword_10097D360];
  sub_1000B70DC();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_10097D378] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_100926530] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

void sub_1000B70DC()
{
  v1 = qword_100926550;
  v2 = *&v0[qword_100926550];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      if ((v0[qword_10097D360] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell(0);
          if (swift_dynamicCastClass())
          {
            v5 = [v4 superview];
            v6 = [v0 collectionView];
            v7 = v6;
            if (v5)
            {
              if (v6)
              {
                sub_100016C60(0, &qword_100922300, UIView_ptr);
                v8 = sub_100753FC4();

                if ((v8 & 1) == 0)
                {
LABEL_28:
                  v24 = objc_opt_self();
                  v25 = swift_allocObject();
                  *(v25 + 16) = v4;
                  *(v25 + 24) = v0;
                  v26 = swift_allocObject();
                  *(v26 + 16) = sub_1000C00F0;
                  *(v26 + 24) = v25;
                  v35 = sub_1000C0C28;
                  v36 = v26;
                  v31 = _NSConcreteStackBlock;
                  v32 = 1107296256;
                  v33 = sub_10011B528;
                  v34 = &unk_100866B10;
                  v27 = _Block_copy(&v31);
                  v28 = v0;

                  v18 = v4;

                  [v24 performWithoutAnimation:v27];
                  _Block_release(v27);
                  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

                  if ((v24 & 1) == 0)
                  {
                    v29 = [v28 collectionView];
                    if (v29)
                    {
                      v30 = v29;
                      [v29 insertSubview:v18 atIndex:0];

                      if ([v18 effectiveUserInterfaceLayoutDirection] == 1)
                      {
                        v23 = [v18 layer];
                        [v23 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return;
              }

              v7 = v5;
            }

            else if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v9 = [v4 superview];
      v10 = [v0 view];
      v11 = v10;
      if (v9)
      {
        if (v10)
        {
          sub_100016C60(0, &qword_100922300, UIView_ptr);
          v12 = sub_100753FC4();

          if (v12)
          {
            goto LABEL_15;
          }

LABEL_18:
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v4;
          *(v14 + 24) = v0;
          v15 = swift_allocObject();
          *(v15 + 16) = sub_1000C00C4;
          *(v15 + 24) = v14;
          v35 = sub_100045E0C;
          v36 = v15;
          v31 = _NSConcreteStackBlock;
          v32 = 1107296256;
          v33 = sub_10011B528;
          v34 = &unk_100866A98;
          v16 = _Block_copy(&v31);
          v17 = v0;
          v18 = v4;

          [v13 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

          if ((v13 & 1) == 0)
          {
            v19 = [v17 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v17 collectionView];
              if (v21)
              {
                v22 = v21;
                [v20 insertSubview:v18 aboveSubview:v21];

                if ([v18 effectiveUserInterfaceLayoutDirection] == 1)
                {
                  v23 = [v18 layer];
                  [v23 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v11 = v9;
      }

      else if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }
}

void sub_1000B765C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_1000B7798();
  sub_10074B964();

  if (*&v1[v3])
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_100926550];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_1000B7798()
{
  v1 = v0;
  v2 = *&v0[qword_100926550];
  if (!v2 || !*&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController] || (sub_100750FC4(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_10036E084(v10, v9, v7);
}

void sub_1000B7928()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad", v5);
  v8 = sub_10074F3E4();
  v23[3] = v8;
  v23[4] = sub_1000C0BA8(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v9 = sub_10000D134(v23);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v8);
  LOBYTE(v8) = sub_10074FC74();
  sub_10000C620(v23);
  if ((v8 & 1) == 0)
  {
    v10 = [v1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v14 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_1000B9824();
  v15 = sub_10003B780();
  [v15 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  sub_100752A64();
  sub_100753C74();
  (*(v4 + 8))(v7, v3);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 addSubview:v15];

  v18 = *&v1[qword_10097D390];
  *&v1[qword_10097D390] = v15;
  v19 = v15;

  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v20 = sub_1000D7F0C();
  v21 = qword_100926558;
  if (*&v1[qword_100926558])
  {
    sub_1000C0BA8(&qword_100926D48, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_1007AAC30);
  }

  sub_100749AC4();

  *&v1[v21] = v20;
  swift_retain_n();

  sub_1000C0BA8(&qword_100926D48, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_1007AAC30);
  sub_100749AD4();

  if (*&v1[qword_100926550])
  {
    sub_1000B70DC();
  }
}

void sub_1000B7CEC(void *a1)
{
  v1 = a1;
  sub_1000B7928();
}

id sub_1000B7D34(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_100926538) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_1000B7E5C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000B7D34(a3);
}

void sub_1000B7EB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_100926530] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_1000B7F4C(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v6 = sub_1007532A4();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = sub_100754664();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = sub_100754574();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v14 = sub_1007532A4();

    if (v14 >> 62)
    {
      v15 = sub_100754664();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_1000B8188(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000B7F4C(a3);
}

void sub_1000B81DC(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000C0BA0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1003ED3AC;
  v7[3] = &unk_100866DB8;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

double sub_1000B82E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1000B83FC();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_100754574();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:1.0];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return result;
}

void *sub_1000B83FC()
{
  v1 = *(v0 + qword_10097D398);
  v10 = *(v0 + qword_10097D3A0);
  v11 = v1;
  v12 = *(v0 + qword_10097D390);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_10000C518(&unk_100926C50, &unk_1007AA008);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      result = sub_100753344();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B8534(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1000B81DC(v6, a4);

  swift_unknownObjectRelease();
}

void sub_1000B85B4(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_1000C0B98;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1003ED3AC;
    v10[3] = &unk_100866D90;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_1000B86DC(int a1, _BYTE *a2)
{
  a2[qword_10097D378] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_100926530] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_1000B877C();
}

void sub_1000B877C()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074C594();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v8 >= v11)
      {
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      return;
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 collectionViewLayout];

      sub_100741764();
      isa = sub_100741704().super.isa;
      (*(v3 + 8))(v5, v2);
      v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

      if (v16)
      {
        v17 = *&v1[qword_100926590];
        if (v17)
        {

          [v14 collectionViewContentSize];
          v19 = v18;
          [v16 frame];
          *(v17 + 48) = v19 - CGRectGetMinY(v21);
          sub_10034E248(1);
        }
      }

      else
      {
        v16 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000B8998(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1000B85B4(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1000B8A18()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_1000B83FC();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = sub_100754664();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_100754574();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_100926588];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_1000B8BD0(void *a1)
{
  v1 = a1;
  sub_1000B8A18();
}

void sub_1000B8C18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v3 - 8);
  v160 = &v156 - v4;
  v162 = sub_100753CD4();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007479B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v156 - v11;
  v12 = sub_100747064();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v164 = &v156 - v17;
  v168.receiver = v0;
  v168.super_class = ObjectType;
  objc_msgSendSuper2(&v168, "viewDidLayoutSubviews", v16);
  if (v0[qword_100926530] == 1)
  {
    v0[qword_100926530] = 0;
    sub_1000B9824();
  }

  sub_1000B9CA8();
  sub_1000B9EEC();
  sub_1000BA0E0();
  v18 = qword_10097D360;
  v19 = &off_100926000;
  if (v0[qword_10097D360] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_100926550];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v163 = *&v18;
        v157 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_1000C0B88;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000CF7B0;
        aBlock[3] = &unk_100866D40;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v157;
        *&v18 = v163;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_100926560];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v66 = sub_100505F34(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;
    }

    else
    {
      v66 = 0.0;
      v68 = 0.0;
      v70 = 0.0;
      v72 = 0.0;
    }

    v73 = qword_10097D378;
    if ((v1[qword_10097D378] & 1) != 0 || (v169.origin.x = v66, v169.origin.y = v68, v169.size.width = v70, v169.size.height = v72, Width = CGRectGetWidth(v169), (v75 = *&v1[qword_100926550]) == 0) || (v76 = Width, (v77 = [v75 view]) == 0) || (v78 = v77, objc_msgSend(v77, "frame"), v80 = v79, v82 = v81, v84 = v83, v163 = v76, v86 = v85, v78, v170.origin.x = v80, v170.origin.y = v82, v170.size.width = v84, v170.size.height = v86, v163 != CGRectGetWidth(v170)))
    {
      v87 = *&v1[qword_100926550];
      if (v87)
      {
        v88 = [v87 view];
      }

      else
      {
        v88 = 0;
      }

      [v88 setFrame:{v66, v68, v70, v72}];

      sub_1000BA2B4(v66, v68, v70, v72);
      v1[v73] = 0;
    }
  }

  v89 = *&v1[qword_100926588];
  if (v89)
  {
    v163 = *&v18;
    v157 = v7;
    v90 = v6;
    v91 = v89;
    v92 = [v1 traitCollection];
    v93 = sub_1007537B4();

    if (v93)
    {
      v94 = 80.0;
    }

    else
    {
      v94 = 20.0;
    }

    v95 = [v1 view];
    if (!v95)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v96 = v95;
    [v95 bounds];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v105 = 0.0;
    v171.origin.x = v98;
    v171.origin.y = v100;
    v171.size.width = v102;
    v171.size.height = v104;
    v172 = CGRectInset(v171, v94, 0.0);
    v106 = v172.size.width;
    v107 = *&v91[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
    if (v107)
    {
      v108 = v9;
      v109 = v107;
      v110 = v164;
      sub_1001F5A40(v164);
      [v109 layoutMargins];
      v112 = v111;
      v114 = v113;
      v115 = [v109 traitCollection];
      (*(v165 + 16))(v14, v110, v166);
      v116 = sub_100746FD4();
      v19 = &off_100926000;
      if ((v118 & 1) == 0 && ((v116 | v117) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (sub_100753804())
        {
          v119 = v108;
          if (qword_100921988 != -1)
          {
            swift_once();
          }

          v120 = qword_10093FF40;
        }

        else
        {
          v119 = v108;
          if (qword_100921990 != -1)
          {
            swift_once();
          }

          v120 = qword_10093FF58;
        }

        v124 = sub_10000D0FC(v90, v120);
        v125 = v157;
        (*(v157 + 16))(v119, v124, v90);
        v126 = v158;
        (*(v125 + 32))(v158, v119, v90);
        sub_100747964();
        sub_100747994();
        sub_100746FE4();
        (*(v125 + 8))(v126, v90);
      }

      sub_100746F14();
      v128 = v127;

      v129 = v166;
      v130 = *(v165 + 8);
      v130(v14, v166);

      v122 = v114 + v112 + v128;
      v130(v164, v129);
    }

    else
    {
      v121 = *&v91[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
      v122 = 0.0;
      v19 = &off_100926000;
      if (!v121)
      {
        goto LABEL_44;
      }

      [v121 sizeThatFits:{v172.size.width, v172.size.height}];
      v122 = v123;
    }

    v105 = v106;
LABEL_44:
    v131 = v91;
    [v131 frame];
    *&v18 = v163;
    if (v105 != v133 || v122 != v132)
    {
      [v131 frame];
      [v131 setFrame:v94];
      [v131 frame];
      [v131 setFrame:?];
    }

    if (*&v1[qword_100926590])
    {

      sub_10034E248(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v134 = *(v19[170] + v1);
    if (v134)
    {
      type metadata accessor for ListTodayCardCollectionViewCell(0);
      if (swift_dynamicCastClass())
      {
        v135 = v134;
        v136 = [v1 view];
        if (v136)
        {
          v137 = v136;
          v138 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v139 = sub_100753CB4();
          v140 = *(v139 - 8);
          v141 = v160;
          (*(v140 + 104))(v160, v138, v139);
          (*(v140 + 56))(v141, 0, 1, v139);
          v142 = v159;
          sub_100753CC4();
          sub_10000C8CC(v141, &unk_10092B0D0, qword_1007A99B0);
          sub_100753C94();
          v144 = v143;
          v146 = v145;
          v148 = v147;
          v150 = v149;

          (*(v161 + 8))(v142, v162);
          v151 = &v135[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
          v152 = *&v135[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v135[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v154 = *&v135[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v155 = *&v135[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v151 = v144;
          *(v151 + 1) = v146;
          *(v151 + 2) = v148;
          *(v151 + 3) = v150;
          sub_10036D570(v152, v153, v154, v155);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_1000B9824()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v83 = v2;
  [v83 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_10097D360] == 1)
  {
    v10 = *&v0[qword_100926550];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v75 = v16;
        sub_10036E084(v18, v17, v15);
        v56 = v76;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_100926560];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v85.origin.x = sub_100505F34(v30, v32, v33);
    Height = CGRectGetHeight(v85);
    v35 = [v1 view];
    if (v35)
    {
      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = *&v1[qword_100926550];
      if (v39)
      {
        v40 = [v39 view];
        if (v40)
        {
          v41 = v40;
          v42 = *(v19 + 24);
          [v42 _systemContentInset];
          v44 = v43;
          v46 = v45;
          [v42 contentOffset];
          v48 = v47;
          v50 = v49;
          [v42 contentInset];
          v52 = v46 + v48 + v51;
          v54 = v44 + v50 + v53;
          [v42 bounds];
          [v41 setFrame:{sub_100505F34(v52, v54, v55)}];
        }
      }

      v56 = Height - v38;
      v57 = *(v19 + 24);
      [v57 _systemContentInset];
      v59 = v58;
      v61 = v60;
      [v57 contentOffset];
      v63 = v62;
      v65 = v64;
      [v57 contentInset];
      v67 = v61 + v63 + v66;
      v69 = v59 + v65 + v68;
      [v57 bounds];
      v71 = sub_100505F34(v67, v69, v70);
      sub_1000BA2B4(v71, v72, v73, v74);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v56 = v3;
LABEL_17:
  [v83 contentOffset];
  v78 = v77;
  v80 = v79;
  [v83 setContentInset:{v56, v5, v7, v9}];
  [v83 setContentOffset:{v78, v80}];
  if (*&v1[qword_100926550])
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v81 = swift_dynamicCastClass();
    v82 = 0.0;
    if (!v81)
    {
      v82 = v56;
    }
  }

  else
  {
    v82 = v56;
  }

  [v83 setScrollIndicatorInsets:{v82, 0.0, v7, 0.0}];
  [v83 contentOffset];
  [v83 setContentOffset:?];
}

void sub_1000B9CA8()
{
  v1 = *&v0[qword_10097D390];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_1000E1378();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_100926550];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(0), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_1001358B8() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      sub_100753B24();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000B9EEC()
{
  v1 = *&v0[qword_10097D398];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_1000E1378();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_10097D390];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      sub_100753B24();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000BA0E0()
{
  v1 = *&v0[qword_10097D3A0];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_1000E1378();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      sub_100753B24();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000BA2B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1007528E4();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_100926568];
  if (v20 || (v20 = sub_10074C5A4()) != 0)
  {

    sub_10074FA94();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_10000C8CC(v15, &unk_100925380, qword_1007A8E40);
      return;
    }

    (*(v17 + 32))(v19, v15, v16);
    v21 = [v4 collectionView];
    if (v21)
    {
      v22 = v21;
      sub_10074B884();
      v23 = [v4 view];
      if (!v23)
      {
        __break(1u);
        return;
      }

      v24 = v23;
      v36 = v22;
      [v23 convertRect:v22 toCoordinateSpace:{a1, a2, a3, a4}];

      sub_100749544();
      sub_1007528F4();
      v25 = qword_100926550;
      v26 = *&v5[qword_100926550];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = sub_100749524();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = sub_10074FBB4();
          v38[4] = sub_1000C0BA8(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          sub_10074D394();

          (*(v17 + 8))(v19, v16);
          sub_10000C620(v38);
        }

        else
        {

          (*(v17 + 8))(v19, v16);
        }

        return;
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }
}

void sub_1000BA7B4(void *a1)
{
  v1 = a1;
  sub_1000B8C18();
}

double sub_1000BA7FC(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v2[qword_100926530] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v6 = a1;
    if ([v6 horizontalSizeClass] && (v7 = objc_msgSend(v2, "traitCollection"), v8 = objc_msgSend(v7, "horizontalSizeClass"), v7, v8 != objc_msgSend(v6, "horizontalSizeClass")) && ((v9 = *&v2[qword_100926568]) != 0 || (v9 = sub_10074C5A4()) != 0))
    {
      v10 = *&v2[qword_100926550];
      if (v10)
      {
        v11 = v10 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell;
        v13 = *v11;
        v12 = *(v11 + 8);

        v14 = v13;
        sub_1000BA99C(v9, v14, v12, 5);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000BA99C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a1;
  v9 = sub_1007502C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074F704();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_100926550];
  v60 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_10036CD30(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_10036CD30(v4, v15);
    sub_1007502B4();
    v20 = sub_1007502A4();
    v21 = sub_100753614();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v59;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = sub_1007537B4();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v55 = qword_10097D360;
  (*(a3 + 96))((v5[qword_10097D360] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v60;
  (*(a3 + 296))(v24, v33, v60, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_10093CB48 + 8) = &off_100866920;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v56 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    v43 = sub_10044F358(v24, v60, a4, v32, v42, v38);
    v44 = *(v38 + 32);
    if (v44(v42, v38, v43))
    {
      v46 = v45;
      v47 = swift_getObjectType();
      (*(v46 + 32))((v56[v55] & 1) == 0, v47, v46);
      swift_unknownObjectRelease();
    }

    if ((v44)(v42, v38))
    {
      v49 = v48;
      v50 = swift_getObjectType();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = *(v49 + 88);

      v52(sub_1000C0054, v51, v50, v49);
      swift_unknownObjectRelease();
    }

    v24 = v59;
    v34 = v60;
  }

  v61[3] = sub_10074FBB4();
  v61[4] = &protocol witness table for TodayCard;
  v61[0] = v24;

  sub_100749994();
  (*(v57 + 8))(v34, v58);
  return sub_10000C620(v61);
}

void sub_1000BAF54(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1000BA7FC(a3);
}

uint64_t sub_1000BAFC0()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000C518(&qword_100926CB0, &qword_1007AA028);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000C518(&qword_100926CB8, &qword_1007AA030);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000C518(&qword_100926CC0, &qword_1007AA038);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1003580A0();
  sub_10074C584();
  sub_10000C518(&qword_100926CC8, &qword_1007AA040);
  sub_10002DDC8(&qword_100926CD0, &qword_100926CC8, &qword_1007AA040, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_100752584();

  sub_10000C620(v18);
  (*(v5 + 8))(v7, v4);
  sub_10074C554();
  sub_10000C518(&qword_100926CD8, &qword_1007AA048);
  sub_10002DDC8(&qword_100926CE0, &qword_100926CD8, &qword_1007AA048, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v8 = v12;
  sub_100752584();

  sub_10000C620(v18);
  (*(v13 + 8))(v8, v14);
  sub_10074C574();
  sub_10000C518(&qword_100926CE8, &unk_1007AA050);
  sub_10002DDC8(&unk_100926CF0, &qword_100926CE8, &unk_1007AA050, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v9 = v15;
  sub_100752584();

  sub_10000C620(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_1000BB3F8(uint64_t a1)
{
  v2 = v1;
  v4 = qword_100926568;
  v5 = *(v1 + qword_100926568);

  v6 = sub_10074C5A4();
  v7 = sub_1000C011C(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_100926548) = a1;

    v9 = *(v2 + qword_10097D370);

    if (!v8 || v9 == 0)
    {

      sub_1000BE2A8();
    }
  }
}

uint64_t (*sub_1000BB4DC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000C0AC8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0B24;
}

uint64_t sub_1000BB56C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_10074C544();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BD674();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_100926588);
    if (v13)
    {
      v14 = *(v1 + qword_10097EE18);
      v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_10040A7C4(v12, v14, v15);
    }

    sub_10074EE94();
LABEL_9:

    v21 = qword_10097D3A8;
    swift_beginAccess();
    sub_10006644C(v6, v2 + v21, &unk_100925380, qword_1007A8E40);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_100926588);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_10040B110(v17, v19);
    }

    sub_100743D74();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_1000BB820(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000C0A6C;
}

void sub_1000BB884(unint64_t a1)
{
  sub_10000C518(&qword_100924B88, &unk_1007BD1D0);
  sub_100752764();
  sub_100752D34();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_100754664();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  if (v3 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      sub_100742DD4();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = sub_100753774();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      sub_100752D64();

      sub_10000C620(v11);
    }

    while (v3 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t (*sub_1000BBAA0(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000C0810;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0834;
}

unint64_t sub_1000BBB30@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_1000C07BC();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1000BBB88@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_1000C0768();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000BBBBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v2 = sub_1000C0BA8(&qword_100926C90, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_1000C0BA8(&qword_100926C98, type metadata accessor for ArticlePageShelfSupplementaryProvider, &unk_1007C3820);

  return v3;
}

void sub_1000BBCBC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100926C68, &qword_1007AA018);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10041C618(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v7 = sub_10074C564();
    sub_1000BBE0C(v7 & 1);
    sub_1000BBEEC();
  }
}

uint64_t sub_1000BBE0C(uint64_t result)
{
  v2 = *(v1 + qword_100926578);
  v3 = result & 1;
  *(v1 + qword_100926578) = result;
  if (v2 != v3)
  {
    v4 = qword_100926580;
    v5 = *(v1 + qword_100926580);
    *(v1 + qword_100926580) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    sub_10074C564();
    return sub_1007522D4();
  }

  return result;
}

void sub_1000BBEEC()
{
  v1 = sub_100740C84();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100744FF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_10074C534())
  {
    v25 = v0;
    sub_100746354();
    if (swift_dynamicCastClass())
    {
      sub_100746314();
      sub_100745004();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v11 = *v10;
        v12 = sub_10074B734();
        v24 = v13;
        v14 = sub_10074B744();
        v23[1] = v15;
        v23[2] = v14;
        v23[0] = v11;
        sub_10074B764();
        sub_100746314();
        sub_100744FE4();

        sub_1007411E4();
        v17 = v16;
        (*(v4 + 8))(v6, v3);
        sub_10040FA90(v12, v24, v17, &v30);
        v33[0] = v30;
        v18 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_1000C0664(v33, v27);
        sub_1000C0BA8(&qword_100926C70, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);
        v24 = v18;

        sub_10000C518(&qword_100926C78, &qword_1007AA020);
        sub_10002DDC8(&qword_100926C80, &qword_100926C78, &qword_1007AA020, &protocol conformance descriptor for [A]);
        sub_1007543A4();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v19 = objc_allocWithZone(sub_100750164());
        sub_1000C06C0();
        v20 = sub_100750154();
        v21 = [v25 view];
        if (v21)
        {
          v22 = v21;
          sub_100753C64();

          sub_1000C0714(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

void sub_1000BC38C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_1006FF0CC(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_10097D398];
    *&v1[qword_10097D398] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BC4C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  *(v4 + qword_100926568) = a1;

  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v37 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_100926570;
  swift_beginAccess();

  sub_10006644C(v11, v4 + v15, &unk_100926C40, qword_1007B9FE0);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v35 = v20;
    v23 = v20;
    v36 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    v25 = sub_10044F358(v21, v37, v24, *(v4 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph), v19, v18);
    v26 = *(v18 + 32);
    if (v26(v19, v18, v25))
    {
      v28 = v27;
      v29 = swift_getObjectType();
      (*(v28 + 32))((*(v4 + qword_10097D360) & 1) == 0, v29, v28);
      swift_unknownObjectRelease();
    }

    if ((v26)(v19, v18))
    {
      v31 = v30;
      v32 = swift_getObjectType();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = *(v31 + 88);

      v34(sub_1000C0C20, v33, v32, v31);
      swift_unknownObjectRelease();
    }

    a2 = v35;
    a3 = v36;
  }

  sub_1000BC7FC(a1, a2, a3);
  sub_1000BCC20();
}

void sub_1000BC7FC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000BD2A0(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_10097D360];
  sub_10036D2F8();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_10036E084(v28, v27, v22);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_1000BD05C(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_100926560;
    if (*&v4[qword_100926560])
    {
      sub_1000C0BA8(&unk_100926C30, type metadata accessor for ArticleHeaderScrollObserver, &unk_1007C797C);
    }

    sub_100749AC4();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_1000C0BA8(&unk_100926C30, type metadata accessor for ArticleHeaderScrollObserver, &unk_1007C797C);
    sub_100749AD4();
  }

  v4[qword_10097D378] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_100926530] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_1000BCC20()
{
  v1 = v0;
  v2 = sub_100746494();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_100926550);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_100517558(), v18, (v19))
  {
    if (!*(v1 + qword_10097D398))
    {
      sub_1000BC38C();
    }
  }

  v20 = *(v1 + qword_10097D398);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_100517558())
      {
        v27 = qword_10093CB70;
        v28 = *&v26[qword_10093CB70];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_1006FED78(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          sub_100743BD4();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_100517558() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_100066680;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000CF7B0;
          aBlock[3] = &unk_1008669F8;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_1000BD05C(void *a1)
{
  v3 = qword_100926550;
  v4 = *&v1[qword_100926550];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_1000B70DC();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_1000BD1B4(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000BD2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100926C40, qword_1007B9FE0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_1005F73F0(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = sub_1007537B4();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_1000BD674()
{
  v1 = v0;
  v2 = qword_100926588;
  v3 = *&v0[qword_100926588];
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

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100667BB0(sub_1000C0A90, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_1007A9F20;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v21 = v6;
      sub_10034E248(0);

      v16 = qword_100926590;
      if (*&v1[qword_100926590])
      {
        sub_1000C0BA8(&qword_100926D08, type metadata accessor for ArticleFooterViewScrollObserver, &unk_1007BA9F0);
      }

      sub_100749AC4();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_1000C0BA8(&qword_100926D08, type metadata accessor for ArticleFooterViewScrollObserver, &unk_1007BA9F0);
      sub_100749AD4();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        v20 = *(v17 + 40);
        *(v17 + 32) = sub_1000C0AC0;
        *(v17 + 40) = v18;

        sub_1000164A8(v19, v20);

        if (*&v1[v16])
        {

          sub_10034E248(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1000BD9C8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a2();
  }

  return result;
}

void sub_1000BDA4C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000BDAA8(a1 & 1, v4);
  }
}

uint64_t sub_1000BDAA8(int a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_100741454();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100752914();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_10097D3A8;
  swift_beginAccess();
  sub_100016B4C(v2 + v13, v8, &unk_100925380, qword_1007A8E40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000C8CC(v8, &unk_100925380, qword_1007A8E40);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_10074B864();
  swift_getObjectType();
  sub_100741444();
  v15 = (v18 + 8);
  v16 = (v10 + 8);
  if (v19)
  {
    sub_1007529B4();
  }

  else
  {
    sub_1007529C4();
  }

  swift_unknownObjectRelease();
  (*v15)(v5, v3);
  return (*v16)(v12, v9);
}

void sub_1000BDD68()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v1, v3);
  sub_10074C5B4();
  sub_1000C0BA8(&unk_100926D30, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_100748C64();
  (*(v2 + 8))(v5, v1);
  if (v0[qword_100926578] == 1)
  {
    sub_10074C484();
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_1009832E8);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }

  else
  {
    v7 = *&v0[qword_10097D380];
    if (v7)
    {
      v8 = *&v0[qword_10097D380 + 8];

      v7(v9);
      sub_1000164A8(v7, v8);
    }

    else
    {
      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1000BE034(void *a1)
{
  v1 = a1;
  sub_1000BDD68();
}

void sub_1000BE07C()
{
  v1 = *(v0 + qword_100926550);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v15 = v8(ObjectType, v4);

    if (v15)
    {
      sub_10051D14C();
      v10 = v15;
      v11 = *(v2 + qword_10097D398);
      if (v11)
      {
        v12 = *&v15[qword_10093CB70];
        v13 = v11;
        if (v12)
        {
          v14 = [v12 isMuted];
        }

        else
        {
          v14 = 1;
        }

        sub_1006FED78(v14);

        v10 = v15;
      }
    }
  }
}

void sub_1000BE1D8(void *a1)
{
  v1 = a1;
  sub_1000BE07C();
}

double sub_1000BE220(char *a1)
{
  v1 = *&a1[qword_10097D388];
  if (v1)
  {
    v2 = *&a1[qword_10097D388 + 8];
    v3 = a1;
    v4 = sub_10001B5AC(v1, v2);
    v1(v4);

    return sub_1000164A8(v1, v2);
  }

  return result;
}

void sub_1000BE2A8()
{
  v1 = *(v0 + qword_100926548);
  if (v1)
  {
    v2 = v0;

    sub_10074FB64();
    v3 = sub_1007451F4();

    v4 = qword_100926550;
    v5 = *(v2 + qword_100926550);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
      if (v6)
      {
        v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
        v6 = 0;
      }

      v12 = v6;
      v11 = v8;
      v10 = v11;
    }

    else
    {
      sub_10043334C(v3);
      v7 = v9;
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v4))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_1000BA99C(v1, v10, v7, 7);
        }

        sub_1000BC7FC(v1, v10, v7);
      }

      v11 = 0;
    }

    sub_1000BA99C(v1, v10, v7, 7);
    v13 = *(v2 + v4);
    if (!v13 || ((v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v15 = v14 == 0) : (v15 = 1), v15))
    {
    }

    else
    {
      sub_10074B184();
      sub_100752764();
      v16 = v14;
      sub_100752D34();
      swift_getObjectType();
      v17 = sub_100748FB4();
      v18 = v16;
      sub_10074B164();
    }
  }
}

void sub_1000BE558(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100752E44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = a1[1];
  v33 = v13;
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v9, qword_100983300);
  (*(v10 + 16))(v12, v14, v9);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  v34 = a2;
  sub_100744414();
  v15 = sub_100741264();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10000C8CC(v8, &unk_100923970, &qword_1007A6B90);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_10000D134(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  sub_100752444();
  sub_10000C8CC(&aBlock, &unk_100923520, &qword_1007A5A70);
  sub_100752CF4();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_100926558];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_1000C091C;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1000C096C;
      *(v27 + 24) = v26;
      v39 = sub_1000C0C28;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_10011B528;
      *(&v38 + 1) = &unk_100866C28;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_1000C0988(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_1000BEAA8(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000BEAA8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1007521E4();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100752224();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  sub_100742DC4();
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v15 = sub_100753774();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_1000C0A2C;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000CF7B0;
  v25 = &unk_100866C78;
  v17 = _Block_copy(&aBlock);

  sub_100752204();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000C0BA8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_1000BEDD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_10074C514();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      v7 = [v6 collectionViewLayout];

      [v7 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000BEED4()
{
  v0 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_100752E44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v3, qword_100983300);
  (*(v4 + 16))(v6, v7, v3);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  sub_100744414();
  v8 = sub_100741264();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10000C8CC(v2, &unk_100923970, &qword_1007A6B90);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_10000D134(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  sub_100752444();
  sub_10000C8CC(&v12, &unk_100923520, &qword_1007A5A70);
  sub_100752CF4();

  return (*(v4 + 8))(v6, v3);
}

id sub_1000BF1F8(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_10097D360) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

double sub_1000BF254()
{
  v0 = sub_1000B83FC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

double sub_1000BF344()
{
  v0 = sub_1000B83FC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_1000BF434(void *a1)
{
  v1 = a1;
  sub_1000BDD68();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController(uint64_t a1)
{
  result = qword_1009265C0;
  if (!qword_1009265C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BF4B0(uint64_t a1)
{
  sub_1000BF610(319, qword_1009265D0, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_1000BF610(319, &qword_100936A20, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1000BF610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1000BF66C(int a1)
{
  v3 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_100926568];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_100926550];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_100926570;
  swift_beginAccess();
  sub_100016B4C(&v1[v15], v5, &unk_100926C40, qword_1007B9FE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &unk_100926C40, qword_1007B9FE0);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = sub_1007537B4();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = sub_1007537B4();
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_1000BCC20();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 72) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000BFA84()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000BFABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1000BFAD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_10097D358;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate(0)) init];
  *(v2 + qword_100926530) = 0;
  *(v2 + qword_100926538) = 0;
  *(v2 + qword_10097D360) = 1;
  v9 = qword_10097D368;
  sub_10000C518(&qword_10092B0E0, &qword_1007AA000);
  swift_allocObject();
  *(v2 + v9) = sub_1007522E4();
  *(v2 + qword_10097D370) = 1;
  *(v2 + qword_10097D378) = 0;
  v10 = qword_100926540;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_1006CE400(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_10097D380);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_10097D388);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_10097D390) = 0;
  *(v2 + qword_10097D398) = 0;
  *(v2 + qword_10097D3A0) = 0;
  *(v2 + qword_100926548) = 0;
  *(v2 + qword_100926550) = 0;
  *(v2 + qword_100926558) = 0;
  *(v2 + qword_100926560) = 0;
  *(v2 + qword_100926568) = 0;
  v14 = qword_100926570;
  v15 = sub_10074F704();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_100926578) = 0;
  *(v2 + qword_100926580) = 0;
  *(v2 + qword_100926588) = 0;
  *(v2 + qword_100926590) = 0;
  v16 = qword_10097D3A8;
  v17 = sub_100752914();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  sub_1007522F4();
  v18 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  return sub_10046A4E8(a1, v18);
}

char *sub_1000BFE00(uint64_t a1, uint64_t a2, char a3)
{
  objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController(0));

  v6 = sub_1000BFAD4(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v7 = type metadata accessor for StoreNavigationController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16.receiver = v8;
    v16.super_class = v7;

    v10 = objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v10 setDelegate:{v10, v16.receiver, v16.super_class}];
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5CF0;
    *(v11 + 32) = v6;
    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v12 = v6;
    isa = sub_100753294().super.isa;

    [v10 setViewControllers:isa];

    v6 = sub_100587B48(v10, v12);
    [v6 setModalPresentationStyle:4];
    [v6 setTransitioningDelegate:*&v12[qword_10097D358]];
    [v6 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v14 = v6[qword_10097D360];
    v6[qword_10097D360] = 0;
    sub_1000B6F90(v14);
    sub_1000B6968(0, 0);
  }

  return v6;
}

uint64_t sub_1000C001C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0084()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C011C(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = sub_10074FBA4()) == 0 || (v19[0] = v4, sub_1007463B4(), sub_10000C518(&qword_100926D28, &qword_1007AA078), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = sub_10074FBA4()) == 0 || (*&v17[0] = v5, sub_1007463B4(), sub_10000C518(&qword_100926D28, &qword_1007AA078), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = sub_10074FB64(), sub_100745204(), sub_10000C518(&qword_100926D20, &qword_1007AA070), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = sub_10074FB64(), sub_100745204(), sub_10000C518(&qword_100926D20, &qword_1007AA070), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_100016B4C(v20, v13, &qword_100926D10, &qword_1007AA060);
  if (v14)
  {
    sub_10000C888(v13, v14);
    v6 = sub_10074C454();
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D10, &qword_1007AA060);
    v6 = 0;
  }

  sub_100016B4C(v19, v13, &qword_100926D10, &qword_1007AA060);
  if (v14)
  {
    sub_10000C888(v13, v14);
    v7 = sub_10074C454();
    sub_10000C620(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_10011D0CC(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D10, &qword_1007AA060);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_100016B4C(v17, v13, &qword_100926D18, &qword_1007AA068);
  if (v14)
  {
    sub_10000C888(v13, v14);
    v9 = sub_10074B624();
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D18, &qword_1007AA068);
    v9 = 0;
  }

  sub_100016B4C(v15, v13, &qword_100926D18, &qword_1007AA068);
  if (v14)
  {
    sub_10000C888(v13, v14);
    v10 = sub_10074B624();
    sub_10000C620(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_10011D0CC(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D18, &qword_1007AA068);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_100016B4C(v20, v13, &qword_100926D10, &qword_1007AA060);
  if (v14)
  {
    sub_10000C888(v13, v14);
    sub_10074C454();
    sub_10000C620(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D10, &qword_1007AA060);
  }

  sub_100016B4C(v17, v13, &qword_100926D18, &qword_1007AA068);
  if (v14)
  {
    sub_10000C888(v13, v14);
    sub_10074B624();
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v13, &qword_100926D18, &qword_1007AA068);
    v11 = 0;
  }

LABEL_48:
  sub_10000C8CC(v15, &qword_100926D18, &qword_1007AA068);
  sub_10000C8CC(v17, &qword_100926D18, &qword_1007AA068);
  sub_10000C8CC(v19, &qword_100926D10, &qword_1007AA060);
  sub_10000C8CC(v20, &qword_100926D10, &qword_1007AA060);
  return v11 & 1;
}

unint64_t sub_1000C06C0()
{
  result = qword_100926C88;
  if (!qword_100926C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926C88);
  }

  return result;
}

unint64_t sub_1000C0768()
{
  result = qword_100926CA0;
  if (!qword_100926CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926CA0);
  }

  return result;
}

unint64_t sub_1000C07BC()
{
  result = qword_100926CA8;
  if (!qword_100926CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926CA8);
  }

  return result;
}

uint64_t sub_1000C0860()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C08BC()
{

  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_100079128(v1, *(v0 + 32));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C092C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000C0988(uint64_t result, void *a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_1000C099C(result, a2);
  }
}

void sub_1000C099C(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    v3 = a2;
  }

  else
  {
  }
}

uint64_t sub_1000C09EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0A34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C0AEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C0B50()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C0BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000C0C50()
{
  sub_100752754();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_1007421B4();
    swift_allocObject();
    sub_1007421A4();
    sub_100741F34();
    swift_allocObject();
    sub_100741EE4();
    sub_100741EF4();
    sub_100742084();
    sub_100742064();
    sub_1007420B4();
    sub_1007420A4();
    sub_100741894();
    sub_100741884();
  }

  return result;
}

uint64_t sub_1000C0D3C(void *a1)
{
  v55 = a1;
  v1 = sub_100742294();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v67 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = v53 - v5;
  v56 = sub_1007521A4();
  v69 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752104();
  *&v54 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752184();
  v61 = *(v12 - 8);
  v13 = v61;
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C0C50();
  v68 = sub_1007521C4();
  v66 = sub_1007521B4();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_100752174();
  v64 = sub_100752124();
  v16 = *(v9 + 104);
  v53[1] = v9 + 104;
  v16(v11, enum case for DeviceAppQuery.betaApps(_:), v8);
  v65 = v12;
  *(&v75 + 1) = v12;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v17 = sub_10000D134(&v74);
  v18 = *(v13 + 16);
  v58 = v15;
  v18(v17, v15, v12);
  v59 = v18;
  v60 = v13 + 16;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v19 = enum case for AppStoreType.default(_:);
  v20 = v69[13];
  v69 += 13;
  v21 = v56;
  v20(v7, enum case for AppStoreType.default(_:), v56);
  v53[0] = v11;
  v57 = sub_100752114();
  v16(v11, enum case for DeviceAppQuery.allStoreApps(_:), v54);
  v22 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v23 = sub_10000D134(&v74);
  v18(v23, v15, v22);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;
  v20(v7, v19, v21);

  v56 = sub_100752114();
  sub_100741A04();

  v69 = sub_1007419F4();
  sub_10000C518(&qword_100926D50, &qword_1007AA080);
  v24 = sub_100752194();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v54 = xmmword_1007A5A00;
  *(v27 + 16) = xmmword_1007A5A00;
  v28 = enum case for App.Kind.store(_:);
  v29 = *(v25 + 104);
  v29(v27 + v26, enum case for App.Kind.store(_:), v24);
  v69 = v69;
  sub_1007422A4();
  sub_100741C14();

  v30 = sub_100741C04();
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  v29(v31 + v26, v28, v24);
  v55 = v30;
  v32 = v67;
  sub_1007422A4();
  sub_10000C518(&qword_100926D58, qword_1007AA088);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1007A79C0;
  v34 = sub_1007520F4();
  swift_allocObject();
  v35 = sub_1007520E4();
  *(v33 + 56) = v34;
  *(v33 + 64) = &protocol witness table for RemoteInstalledAppStateDataSource;
  *(v33 + 32) = v35;
  v36 = sub_100752164();
  swift_allocObject();
  v37 = sub_100752154();
  *(v33 + 96) = v36;
  *(v33 + 104) = &protocol witness table for WaitingAppStateDataSource;
  *(v33 + 72) = v37;
  v38 = v64;
  *(v33 + 136) = v64;
  *(v33 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 112) = v57;
  *(v33 + 176) = v38;
  *(v33 + 184) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 152) = v56;
  v39 = v62;
  *(v33 + 216) = v62;
  v40 = sub_1000C1574();
  *(v33 + 224) = v40;
  v41 = sub_10000D134((v33 + 192));
  v42 = v63;
  v43 = *(v63 + 16);
  v43(v41, v70, v39);
  *(v33 + 256) = v39;
  *(v33 + 264) = v40;
  v44 = sub_10000D134((v33 + 232));
  v43(v44, v32, v39);
  v45 = sub_100752144();
  swift_allocObject();

  v46 = sub_100752134();
  *(v33 + 296) = v45;
  *(v33 + 304) = &protocol witness table for DefaultAppStateDataSource;
  *(v33 + 272) = v46;
  v47 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v48 = sub_10000D134(&v74);
  v49 = v58;
  v59(v48, v58, v47);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;

  v50 = sub_100741854();

  v51 = *(v42 + 8);
  v51(v67, v39);
  v51(v70, v39);
  (*(v61 + 8))(v49, v47);
  sub_10000C620(&v71);
  sub_10000C620(&v74);
  return v50;
}

unint64_t sub_1000C1574()
{
  result = qword_100926D60;
  if (!qword_100926D60)
  {
    sub_100742294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926D60);
  }

  return result;
}

void sub_1000C15DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v6 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10074F164();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  sub_100016B4C(a3, v8, &qword_100926DC0, &unk_1007C0DC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &qword_100926DC0, &unk_1007C0DC0);
    v19 = v31;
    if (!v31)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *(v10 + 32);
    v20(v18, v8, v9);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if (*&Strong[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork])
      {

        sub_10074F3C4();

        v20(v15, v12, v9);
        sub_1000C30F4(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v23 = sub_100753014();
        v24 = *(v10 + 8);
        v24(v15, v9);
        v24(v18, v9);
        if ((v23 & 1) == 0)
        {
          return;
        }

        v19 = v31;
        if (!v31)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    (*(v10 + 8))(v18, v9);
    v19 = v31;
    if (!v31)
    {
LABEL_11:
      v25 = 0;
      goto LABEL_12;
    }
  }

LABEL_8:
  v25 = [v19 imageWithRenderingMode:2];
LABEL_12:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_iconView);

    v32.value.super.isa = v25;
    v32.is_nil = 0;
    sub_100743384(v32, v29);
  }
}

double sub_1000C1A2C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_100746D54();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074CD14();
  v84 = *(v11 - 8);
  v85 = v11;
  __chkstk_darwin(v11);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100750534();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100745FF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = sub_100746D34();
  v87 = *(v21 - 8);
  v88 = v21;
  __chkstk_darwin(v21);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v71 - v24;
  v26 = sub_1007437F4();
  sub_1007437C4();
  ObjectType = swift_getObjectType();
  v95 = a6;
  sub_10029F770(v26, v20, a6, v25);

  v27 = *(v15 + 8);
  v77 = v20;
  v96 = v27;
  v27(v20, v14);
  v28 = sub_100750F34();
  swift_allocObject();
  v29 = sub_100750F14();
  swift_allocObject();
  v74 = sub_100750F14();
  swift_allocObject();
  v73 = sub_100750F14();
  v86 = v25;
  sub_100746D14();
  v94 = v28;
  swift_allocObject();
  v30 = sub_100750F14();
  v91 = a1;
  sub_1007437C4();
  v31 = (*(v15 + 88))(v17, v14);
  v75 = v29;
  v72 = v30;
  if (v31 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v31 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v31 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v34 = v95;
      v35 = v84;
      if (qword_100921260 != -1)
      {
        swift_once();
      }

      v39 = v92;
      v40 = sub_10000D0FC(v92, qword_100981458);
      (*(v90 + 16))(v89, v40, v39);
      v38 = 4;
    }

    else
    {
      v34 = v95;
      v35 = v84;
      if (qword_100921258 != -1)
      {
        swift_once();
      }

      v36 = v92;
      v37 = sub_10000D0FC(v92, qword_100981440);
      (*(v90 + 16))(v89, v37, v36);
      (v96)(v17, v14);
      v38 = 1;
    }

    v96 = v38;
    goto LABEL_13;
  }

  if (qword_100921258 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v32 = v92;
    v33 = sub_10000D0FC(v92, qword_100981440);
    (*(v90 + 16))(v89, v33, v32);
    v96 = 1;
    v34 = v95;
    v35 = v84;
LABEL_13:
    v41 = v83;
    sub_100038D38();
    v42 = [v34 traitCollection];
    v43 = sub_100753C14();

    sub_1007437D4();
    v44 = sub_10074F3F4();
    v103[3] = v44;
    v84 = sub_1000C30F4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v103[4] = v84;
    v45 = sub_10000D134(v103);
    v46 = *(v44 - 8);
    v47 = *(v46 + 104);
    LODWORD(v83) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v81 = v46 + 104;
    v82 = v47;
    v47(v45);
    v48 = v43;
    sub_10074FC74();
    sub_10000C620(v103);
    v71 = v48;
    sub_10074CD04();
    sub_10074CCE4();
    v49 = v34;
    v50 = v35[1];
    v51 = v85;
    v50(v41, v85);
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v92, qword_100981470);
    v52 = [v49 traitCollection];
    v53 = sub_100753C14();

    sub_1007437E4();
    v102[3] = v44;
    v102[4] = v84;
    v54 = sub_10000D134(v102);
    v82(v54, v83, v44);
    v55 = v53;
    sub_10074FC74();
    sub_10000C620(v102);
    sub_10074CD04();
    sub_10074CCE4();
    v50(v41, v51);
    v96 = sub_1007437A4();
    if (v96 >> 62)
    {
      v56 = sub_100754664();
      v84 = v55;
      if (!v56)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v56 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v84 = v55;
      if (!v56)
      {
        goto LABEL_29;
      }
    }

    type metadata accessor for PrivacyCategoryView();
    if (v56 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v57 = 0;
  v58 = v96 & 0xC000000000000001;
  v59 = _swiftEmptyArrayStorage;
  do
  {
    if (v58)
    {
      v60 = sub_100754574();
    }

    else
    {
      v60 = *(v96 + 8 * v57 + 32);
    }

    v62 = sub_1002EA814(v60, v95, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_100254E80(0, v59[2] + 1, 1, v59);
    }

    v64 = v59[2];
    v63 = v59[3];
    if (v64 >= v63 >> 1)
    {
      v59 = sub_100254E80((v63 > 1), v64 + 1, 1, v59);
    }

    ++v57;

    v100 = v94;
    v101 = &protocol witness table for LayoutViewPlaceholder;
    *&v99 = v62;
    v59[2] = v64 + 1;
    sub_100012160(&v99, &v59[5 * v64 + 4]);
  }

  while (v56 != v57);
LABEL_29:

  v65 = [v95 traitCollection];
  sub_100751364();

  v66 = v94;
  swift_allocObject();
  v67 = sub_100750F14();
  (*(v87 + 16))(v76, v86, v88);
  v100 = v66;
  v101 = &protocol witness table for LayoutViewPlaceholder;
  *&v99 = v75;
  v98[23] = v66;
  v98[24] = &protocol witness table for LayoutViewPlaceholder;
  v98[19] = &protocol witness table for LayoutViewPlaceholder;
  v98[20] = v74;
  v98[18] = v66;
  v98[14] = &protocol witness table for LayoutViewPlaceholder;
  v98[15] = v73;
  v98[13] = v66;
  v98[9] = &protocol witness table for LayoutViewPlaceholder;
  v98[10] = v67;
  v96 = v67;
  v98[8] = v66;
  v98[5] = v72;
  sub_10000C824(v103, v98);
  sub_10000C824(v102, &v97);

  sub_1007437C4();
  v68 = v78;
  sub_100746D44();
  sub_1000C30F4(&unk_1009400D0, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v69 = v80;
  sub_100750404();

  (*(v79 + 8))(v68, v69);
  sub_10000C620(v102);
  sub_10000C620(v103);
  (*(v90 + 8))(v89, v92);
  (*(v87 + 8))(v86, v88);
  return a2;
}

void sub_1000C2658(__n128 a1)
{
  v2 = v1;
  v3 = sub_100745FF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007437C4();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 24))(v2 + v7, v6, v3);
  swift_endAccess();
  sub_1002A1400();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1007437D4();
  sub_1002A01F4(v8, v9);
  v10 = sub_1007437E4();
  sub_1002A0200(v10, v11);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_1007437F4();

  v12 = sub_1007437A4();
  sub_1002A3850();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories) = v12;

  sub_1002A1184();
}

void sub_1000C27F0()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork))
  {

    sub_10074F364();
    sub_1007442C4();
    sub_1007433C4();
    sub_100744244();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v9, &unk_1009276E0, &unk_1007A5C70);
  }

  v1 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_100754664();
    if (!v3)
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

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (*&v5[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category])
      {

        sub_100745744();

        sub_10074F364();
        v7 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView];
        sub_1007433C4();
        sub_1000C30F4(&qword_100926DB8, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
        v8 = v7;
        sub_1007544E4();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1007441F4();

        sub_10000C8CC(v9, &unk_1009276E0, &unk_1007A5C70);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000C2B2C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_100754724();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100016B4C(a1, v8, &unk_100933370, &unk_1007A8CE0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyFooter(_:), v9);
    sub_1000C30F4(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v27 == v25 && v28 == v26)
    {
      v20 = *(v10 + 8);
      v20(v12, v9);
      v20(v15, v9);
    }

    else
    {
      v21 = sub_100754754();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);

      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  sub_10000C8CC(v8, &unk_100933370, &unk_1007A8CE0);
LABEL_3:
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v16 = sub_100750B04();
  sub_10000D0FC(v16, qword_1009820B0);
  sub_1007502D4();
  sub_100750564();
  v18 = v17;
  (*(v3 + 8))(v5, v24);
  return v18;
}

void sub_1000C2F28(uint64_t a1, uint64_t a2)
{
  sub_1007433C4();
  sub_1000C30F4(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      sub_100744274();
    }
  }
}

uint64_t sub_1000C30AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C30F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000C3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_dismissOverride];
    if (v7)
    {
      v8 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_dismissOverride + 8];

      v7(v9);

      sub_1000164A8(v7, v8);
    }

    else
    {
      v10 = [Strong presentingViewController];
      if (v10)
      {
        v11 = v10;
        [v10 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

double sub_1000C320C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1007532A4();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

void sub_1000C334C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000C3504(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v36, "viewDidAppear:", v3 & 1);
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_contextViewController];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_hasPresentedViewController;
    if ((v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v6 = v4;
      v7 = [v6 popoverPresentationController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 sourceView];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 window];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 superview];
            if (v13)
            {
              v14 = v13;
              [v10 frame];
              [v14 convertRect:v12 toCoordinateSpace:?];
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v22 = v21;
            }

            else
            {
              v16 = 0.0;
              v18 = 0.0;
              v20 = 0.0;
              v22 = 0.0;
            }

            v23 = [v2 view];
            [v8 setSourceView:v23];

            [v8 sourceRect];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v37.origin.x = v16;
            v37.origin.y = v18;
            v37.size.width = v20;
            v37.size.height = v22;
            MinX = CGRectGetMinX(v37);
            v33 = v16;
            v34 = MinX;
            v38.origin.x = v33;
            v38.origin.y = v18;
            v38.size.width = v20;
            v38.size.height = v22;
            MinY = CGRectGetMinY(v38);
            v39.origin.x = v25;
            v39.origin.y = v27;
            v39.size.width = v29;
            v39.size.height = v31;
            v40 = CGRectOffset(v39, v34, MinY);
            [v8 setSourceRect:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];

            v8 = v10;
          }

          else
          {
            v12 = v10;
          }

          v8 = v12;
        }
      }

      [v2 presentViewController:v6 animated:v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_animatedContext] completion:0];

      v2[v5] = 1;
    }
  }
}

void sub_1000C37B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_1000C3C3C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100866F08;
  v9 = _Block_copy(aBlock);
  sub_10001B5AC(a2, a3);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

double sub_1000C38E0(void (*a1)(uint64_t), uint64_t a2, char *a3)
{
  if (a1)
  {

    a1(v6);
    sub_1000164A8(a1, a2);
  }

  v7 = [a3 presentedViewController];
  if (v7)
  {
LABEL_4:

    return result;
  }

  if (a3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_isPresentingActivityViewController])
  {
    return result;
  }

  v9 = *&a3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_dismissOverride];
  if (!v9)
  {
    v12 = [a3 presentingViewController];
    if (!v12)
    {
      return result;
    }

    v13 = v12;
    [v12 dismissViewControllerAnimated:0 completion:0];
    v7 = v13;
    goto LABEL_4;
  }

  v10 = *&a3[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_dismissOverride + 8];

  v9(v11);

  return sub_1000164A8(v9, v10);
}

id sub_1000C3B04(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000C3BAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C3BF4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000C3C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1000C3C60(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_contextViewController;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_contextViewController] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_hasPresentedViewController] = 0;
  v5 = &v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_dismissOverride];
  *v5 = 0;
  v5[1] = 0;
  *&v2[v4] = a1;
  v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_animatedContext] = a2;
  type metadata accessor for ActivityViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = a1;
  }

  v2[OBJC_IVAR____TtC22SubscribePageExtension33PresentationContextViewController_isPresentingActivityViewController] = v6 != 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PresentationContextViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  if (v6)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_1000C3E44;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000C320C;
    v14[3] = &unk_100866F58;
    v11 = _Block_copy(v14);
    v12 = v6;

    [v12 setCompletionWithItemsHandler:v11];
    _Block_release(v11);
  }

  [v9 setModalPresentationStyle:5];

  return v9;
}

uint64_t sub_1000C3E0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000C3E54()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000C3F1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007A5A00;
  *(v5 + 32) = sub_1007516F4();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753704();
  swift_unknownObjectRelease();

  v6 = sub_1000C3E54();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_1001C67FC(v7);
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_10041B08C();

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton];
  sub_1007541D4();
  v25._countAndFlagsBits = 0x465F484352414553;
  v25._object = 0xEE00535245544C49;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1007458B4(v25, v26);
  sub_1007541C4();
  v14 = sub_10056003C(0xD000000000000010, 0x8000000100769990, 0);
  v15 = [v14 imageWithRenderingMode:2];

  sub_100754194();
  sub_100754094();
  sub_1007540D4();
  v16 = sub_1007541F4();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  sub_100754224();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v17 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  v18 = sub_100753FF4();
  [v13 addAction:v18 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v19 = [v1 traitCollection];
  [v19 horizontalSizeClass];
  LOBYTE(v4) = sub_1007537B4();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v21 = v20;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v17 = v22 + 15.0;
  }

  if (v17 != v21)
  {
    v23 = *&v1[v11];
    [v23 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v17];
  }
}

void sub_1000C4688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler + 8];
      v5 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton];
      v6 = Strong;
      sub_10001B5AC(*&Strong[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler], v4);
      v7 = v5;
      v3();
      sub_1000164A8(v3, v4);

      Strong = v7;
    }
  }
}

unint64_t sub_1000C47B4(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SearchController();
  v3 = objc_msgSendSuper2(&v10, "keyCommands");
  if (v3)
  {
    v4 = v3;
    sub_100016C60(0, &unk_100926F50, UIKeyCommand_ptr);
    v5 = sub_1007532A4();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v11 = v5;
  v6 = UIKeyInputEscape;
  v12._object = 0x80000001007699B0;
  v12._countAndFlagsBits = 0xD000000000000035;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1007458B4(v12, v13);
  v7 = sub_100753064();

  v8 = [objc_opt_self() keyCommandWithInput:v6 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v7];

  sub_100753284();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return v11;
}

id sub_1000C49D0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000C4B3C(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000C4C44(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000C4D0C(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = sub_1007537B4();
    v8 = sub_1000C3E54();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

uint64_t sub_1000C4E20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000C4E60()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_1001C5DB0();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
            v14 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

            sub_1007526C4();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_100052F00(v4);
            }

            else
            {

              sub_1003C1388(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_1000C50FC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v17 = v16;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  Height = CGRectGetHeight(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  v20 = CGRectGetHeight(v44);
  v21 = [v6 traitCollection];
  v22 = sub_1007537F4();

  if (!v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    if (v22)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v25) - v17;
      v30 = -15.0;
    }

    v23 = MaxX + v30;
    v24 = 1.0;
    goto LABEL_14;
  }

  if (v22)
  {
    if (!a1)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    [a1 frame];
    v23 = CGRectGetMaxX(v45) + 15.0 + 8.0;
    v24 = 0.0;
LABEL_14:
    v31 = MinY + (v20 - Height) * 0.5;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v23;
    *(v32 + 32) = v31;
    *(v32 + 40) = v17;
    *(v32 + 48) = Height;
    *(v32 + 56) = v24;
    v33 = v6;
    v34 = [v15 superview];
    if (v34)
    {

      [v15 setFrame:{v23, v31, v17, Height}];
      [v15 setAlpha:v24];
      v35 = 0;
      v36 = 0;
LABEL_19:
      [v15 setUserInteractionEnabled:v24 > 0.0];
      v40 = sub_1000C3E54();
      sub_10041B08C();

      sub_1000164A8(v35, v36);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v37 = objc_opt_self();
      v38 = swift_allocObject();
      v35 = sub_1000C56F8;
      *(v38 + 16) = sub_1000C56F8;
      *(v38 + 24) = v32;
      v41[4] = sub_100045E0C;
      v41[5] = v38;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 1107296256;
      v41[2] = sub_10011B528;
      v41[3] = &unk_100866FF8;
      v39 = _Block_copy(v41);

      [v37 performWithoutAnimation:v39];
      _Block_release(v39);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        v36 = v32;
        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a1)
  {
    [a1 frame];
    v23 = CGRectGetMinX(v46) - (v17 + 15.0 + 8.0);
    v24 = 0.0;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
}

id sub_1000C5514()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton] setEnabled:0];
  if ([v0 delegate])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }

  return [v0 setActive:0];
}

id sub_1000C55FC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

uint64_t sub_1000C56C0()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1000C56F8()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

double sub_1000C5778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for CardHeaderButton(uint64_t a1)
{
  result = qword_100927008;
  if (!qword_100927008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5848(char a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = (v3 + 32);
  v11 = *(v3 + 104);
  if (a1)
  {
    if (a1 != 1)
    {
      v11(v5, enum case for SystemImage.appstore(_:), v2, v7);
      (*v10)(v9, v5, v2);
      v13 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
      goto LABEL_7;
    }

    v12 = &enum case for SystemImage.chevronBackward(_:);
  }

  else
  {
    v12 = &enum case for SystemImage.xmark(_:);
  }

  v11(v5, *v12, v2, v7);
  (*v10)(v9, v5, v2);
  v13 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
LABEL_7:
  v14 = v13;
  v15 = sub_100743AE4();

  (*(v3 + 8))(v9, v2);
  return v15;
}

uint64_t sub_1000C5A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100754754();
  }

  return v11 & 1;
}

Swift::Int sub_1000C5B20()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

double sub_1000C5BBC(uint64_t a1)
{
  sub_100753174();

  return result;
}

Swift::Int sub_1000C5C44(uint64_t a1)
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

unint64_t sub_1000C5CDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C6EB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000C5D0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1000C5D84(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

void sub_1000C5DD0(unsigned __int8 a1)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = qword_100926FD0;
  v5 = v1[qword_100926FD0];
  v1[qword_100926FD0] = a1;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x746867696CLL;
    }

    else
    {
      v7 = 1802658148;
    }

    if (v6 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v8 = 0xE900000000000063;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 != 1)
  {
    v2 = 0xE400000000000000;
    if (v7 != 1802658148)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v2 = 0xE500000000000000;
  v3 = 0x746867696CLL;
LABEL_13:
  if (v7 != v3)
  {
LABEL_20:
    v9 = sub_100754754();

    if ((v9 & 1) == 0)
    {
      sub_1000C69FC(v1[v4]);

      [v1 setNeedsDisplay];
    }

    return;
  }

LABEL_16:
  if (v8 != v2)
  {
    goto LABEL_20;
  }
}

char *sub_1000C5F3C(char a1)
{
  v3 = a1;
  v4 = sub_100752AC4();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[qword_100926FD0] = 0;
  v7 = qword_100926FD8;
  *&v1[v7] = [objc_opt_self() secondaryLabelColor];
  v8 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_100926FE0] = v8;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_100926FE8] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  v11 = 0;
  *&v1[qword_100926FF0] = v10;
  if (v3 == 2)
  {
    v11 = [objc_allocWithZone(UILabel) init];
  }

  *&v1[qword_100926FF8] = v11;
  v1[qword_100927000] = a1;
  v12 = type metadata accessor for CardHeaderButton(0);
  v47.receiver = v1;
  v47.super_class = v12;
  v13 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_100926FE0;
  v15 = *&v13[qword_100926FE0];
  v16 = v13;
  [v15 setClipsToBounds:1];
  v17 = [*&v13[v14] layer];
  [v17 setCornerRadius:15.0];

  [*&v13[v14] setUserInteractionEnabled:0];
  v18 = *&v13[v14];
  v19 = [v16 imageView];
  [v16 insertSubview:v18 below:v19];

  v20 = [*&v13[v14] contentView];
  v21 = qword_100926FE8;
  [v20 addSubview:*&v16[qword_100926FE8]];

  v22 = qword_100926FF0;
  v23 = *&v16[qword_100926FF0];
  v24 = sub_1000C5848(a1);
  [v23 setImage:v24];

  v25 = *&v16[v22];
  v26 = objc_opt_self();
  v27 = v25;
  if (v3 >= 2)
  {
    v28 = 12.0;
    v29 = v26;
    v30 = 6;
  }

  else
  {
    v28 = 15.0;
    v29 = v26;
    v30 = 7;
  }

  v31 = [v29 configurationWithPointSize:v30 weight:2 scale:{v28, v45, v46}];
  [v27 setPreferredSymbolConfiguration:v31];

  v32 = [*&v16[v21] contentView];
  [v32 addSubview:*&v16[v22]];

  v33 = *&v16[qword_100926FF8];
  if (v33)
  {
    v34 = v33;
    if (a1 >= 2u)
    {
      v48._object = 0x8000000100769A80;
      v48._countAndFlagsBits = 0xD00000000000001DLL;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_1007458B4(v48, v49);
      v35 = sub_100753064();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v36 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
    [v33 setFont:v36];

    [v33 setNumberOfLines:2];
    v37 = [*&v16[v21] contentView];
    [v37 addSubview:v33];
  }

  else
  {
    [*&v16[v22] setContentMode:4];
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setContentEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (a1)
  {
    if (a1 == 1)
    {
      v41 = 0xEC0000004E4F5454;
      v42._countAndFlagsBits = 0x55425F45534F4C43;
    }

    else
    {
      v42._countAndFlagsBits = 0xD00000000000001DLL;
      v41 = 0x8000000100769A80;
    }
  }

  else
  {
    v41 = 0xEB000000004E4F54;
    v42._countAndFlagsBits = 0x5455425F4B434142;
  }

  v42._object = v41;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1007458B4(v42, v50);

  v43 = sub_100753064();

  [v16 setAccessibilityLabel:v43];

  sub_100752A64();
  sub_100753C74();
  (*(v45 + 8))(v6, v46);
  sub_1000C656C();
  sub_1000C69FC(v16[qword_100926FD0]);

  return v16;
}

void sub_1000C656C()
{
  v1 = v0;
  v2 = *&v0[qword_100926FE0];
  [v1 intrinsicContentSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = *&v1[qword_100926FE8];
  [v1 intrinsicContentSize];
  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = *&v1[qword_100926FF8];
  if (v8)
  {
    v9 = v8;
    [v1 intrinsicContentSize];
    v10 = v1[qword_100927000];
    v11 = sub_1000C5848(v10);
    [v11 size];
    v13 = v12;

    [v9 measurementsWithFitting:v1 in:{280.0, 1.79769313e308}];
    v25 = v9;
    [v25 sizeThatFits:{280.0, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    [v1 intrinsicContentSize];
    v19 = v18 * 0.5 - v17 * 0.5 + 0.5;
    sub_100753B24();
    [v25 setFrame:?];

    v20 = sub_1000C5848(v10);
    sub_100753F34();

    v27.origin.x = v13 + 12.0 + 4.0;
    v27.origin.y = v19;
    v27.size.width = v15;
    v27.size.height = v17;
    CGRectGetMinY(v27);
    v21 = *&v1[qword_100926FF0];
    sub_100753B24();
    [v21 setFrame:?];
  }

  else
  {
    v22 = *&v1[qword_100926FF0];
    [v1 intrinsicContentSize];

    [v22 setFrame:{0.0, 0.0, v23, v24}];
  }
}

double sub_1000C6860(void *a1)
{
  v1 = a1;
  sub_1000C68A4();
  v3 = v2;

  return v3;
}

void sub_1000C68A4()
{
  if (*(v0 + qword_100927000) >= 2u)
  {
    v1 = sub_1000C5848(2);
    [v1 size];

    v2 = *(v0 + qword_100926FF8);
    if (v2)
    {
      [v2 sizeThatFits:{280.0, 1.79769313e308}];
    }
  }
}

id sub_1000C6970(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      return 0;
    }
  }

  return [objc_opt_self() whiteColor];
}

void sub_1000C69FC(char a1)
{
  v3 = sub_1000C6DD4(a1);
  v4 = *&v1[qword_100926FE0];
  v12 = v3;
  [v4 setEffect:?];
  v5 = sub_1000C6970(a1);
  [v1 setTintColor:v5];

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == 2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9 = [objc_opt_self() effectForBlurEffect:v12 style:v6];
  v10 = *&v1[qword_100926FE8];
  v11 = v9;
  [v10 setEffect:v11];
}

void sub_1000C6B38(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardHeaderButton(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_1000C69FC(v1[qword_100926FD0]);
}

void sub_1000C6BD0()
{
  v1 = *(v0 + qword_100926FF8);
}

id sub_1000C6C40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardHeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C6C78(uint64_t a1)
{
  v2 = *(a1 + qword_100926FF8);
}

unint64_t sub_1000C6D28()
{
  result = qword_100927058;
  if (!qword_100927058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927058);
  }

  return result;
}

unint64_t sub_1000C6D80()
{
  result = qword_100927060;
  if (!qword_100927060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927060);
  }

  return result;
}

uint64_t sub_1000C6DD4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      if (qword_100920170 != -1)
      {
        swift_once();
      }

      v2 = &qword_100926FC0;
      return *v2;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      goto LABEL_3;
    }
  }

  if (qword_100920178 != -1)
  {
    swift_once();
  }

  v2 = &qword_100926FC8;
  return *v2;
}

unint64_t sub_1000C6EB0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862618;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C6F0C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921568 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v23 = sub_10000D0FC(v4, qword_100981D70);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000D134(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v25);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007535A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012160(&v31, &unk_10097D3C0);
  sub_100012160(&v28, &unk_10097D3E8);
  result = sub_100012160(&v25, &unk_10097D410);
  qword_10097D438 = 0;
  unk_10097D440 = 0;
  qword_10097D448 = v13;
  unk_10097D450 = v15;
  qword_10097D458 = v17;
  unk_10097D460 = v19;
  return result;
}

uint64_t sub_1000C7230()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921588 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v23 = sub_10000D0FC(v4, qword_100981DD0);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000D134(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v25);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007535A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012160(&v31, &unk_10097D468);
  sub_100012160(&v28, &unk_10097D490);
  result = sub_100012160(&v25, &unk_10097D4B8);
  qword_10097D4E0 = 0;
  unk_10097D4E8 = 0;
  qword_10097D4F0 = v13;
  unk_10097D4F8 = v15;
  qword_10097D500 = v17;
  unk_10097D508 = v19;
  return result;
}

uint64_t sub_1000C7554()
{
  v0 = sub_100747674();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_10097FA38);
  (*(v1 + 16))(v3, v4, v0);
  sub_100747654();
  (*(v1 + 8))(v3, v0);
  v19 = sub_1007507D4();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v18);
  sub_1007507C4();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  sub_1007535A4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100012160(&v21, &unk_10097D510);
  sub_100012160(&v18, &unk_10097D538);
  result = sub_100012160(&v15, &unk_10097D560);
  qword_10097D588 = 0;
  unk_10097D590 = 0;
  qword_10097D598 = v6;
  unk_10097D5A0 = v8;
  qword_10097D5A8 = v10;
  unk_10097D5B0 = v12;
  return result;
}

double sub_1000C771C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v15 = sub_10000D0FC(v4, qword_100981878);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000D134(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v17);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  qword_10097D620 = &type metadata for Double;
  unk_10097D628 = &protocol witness table for Double;
  qword_10097D608 = 0x4018000000000000;
  sub_100012160(&v21, &unk_10097D5B8);
  sub_100012160(&v18, &unk_10097D5E0);
  qword_10097D630 = 0;
  unk_10097D638 = 0;
  unk_10097D640 = xmmword_1007AA3A0;
  result = 6.0;
  unk_10097D650 = xmmword_1007AA3B0;
  return result;
}

double sub_1000C7A08()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v15 = sub_10000D0FC(v4, qword_100981878);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000D134(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v17);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  qword_10097D6C8 = &type metadata for Double;
  unk_10097D6D0 = &protocol witness table for Double;
  qword_10097D6B0 = 0x4018000000000000;
  sub_100012160(&v21, &unk_10097D660);
  sub_100012160(&v18, &unk_10097D688);
  qword_10097D6D8 = 0;
  unk_10097D6E0 = 0;
  unk_10097D6E8 = xmmword_1007AA3C0;
  result = 3.0;
  unk_10097D6F8 = xmmword_1007AA3D0;
  return result;
}

double sub_1000C7CF4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v15 = sub_10000D0FC(v4, qword_100981878);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000D134(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v17);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  qword_10097D770 = &type metadata for Double;
  unk_10097D778 = &protocol witness table for Double;
  qword_10097D758 = 0x4018000000000000;
  sub_100012160(&v21, &unk_10097D708);
  sub_100012160(&v18, &unk_10097D730);
  qword_10097D780 = 0;
  unk_10097D788 = 0;
  unk_10097D790 = xmmword_1007AA3E0;
  result = 7.0;
  unk_10097D7A0 = xmmword_1007AA3C0;
  return result;
}

uint64_t sub_1000C7FE0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v23 = sub_10000D0FC(v4, qword_100981878);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000D134(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v25);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007535A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012160(&v31, &unk_10097D7B0);
  sub_100012160(&v28, &unk_10097D7D8);
  result = sub_100012160(&v25, &unk_10097D800);
  qword_10097D828 = 0;
  unk_10097D830 = 0;
  qword_10097D838 = v13;
  unk_10097D840 = v15;
  qword_10097D848 = v17;
  unk_10097D850 = v19;
  return result;
}

uint64_t sub_1000C8304()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v23 = sub_10000D0FC(v4, qword_100981878);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_100750B04();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000D134(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v25);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007535A4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012160(&v31, &unk_10097D858);
  sub_100012160(&v28, &unk_10097D880);
  result = sub_100012160(&v25, &unk_10097D8A8);
  qword_10097D8D0 = 0;
  unk_10097D8D8 = 0;
  qword_10097D8E0 = v13;
  unk_10097D8E8 = v15;
  qword_10097D8F0 = v17;
  unk_10097D8F8 = v19;
  return result;
}

uint64_t sub_1000C8628()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100927068);
  sub_10000D0FC(v4, qword_100927068);
  if (qword_100921568 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981D70);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1000C87FC()
{
  result = [objc_opt_self() systemRedColor];
  qword_100927080 = result;
  return result;
}

void sub_1000C8838()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_100927088 = v1;
}

char *sub_1000C88C4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_100921568 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981D70);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_100745C84());
  v25 = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  sub_100752A74();
  sub_10000C8CC(v40, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v41, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v34 = v33;
  v35 = sub_100753EF4();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_1000C8DCC()
{
  ObjectType = swift_getObjectType();
  sub_1000C8E14();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000C8E14()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_1000CCCD4(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = sub_100754434();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_1001A5FF8();
    goto LABEL_12;
  }
}

double sub_1000C9098(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  v6 = [v5 text];
  if (v6)
  {
    v8 = v6;
    v9 = sub_100753094();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:

      return result;
    }

    v13 = sub_100754754();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_100753064();
LABEL_12:

  [v5 setText:v14];

  [v2 setNeedsLayout];
  return result;
}

id sub_1000C91F8(id result)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView])
      {
        sub_100746ED4();
        v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1000CD474();
        v12 = *&v1[v5];
        *&v1[v5] = v11;
        v13 = v11;

        v14 = qword_1009201C8;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor:qword_100927080];

        if (qword_1009201D0 != -1)
        {
          swift_once();
        }

        v16 = qword_100927088;
        sub_100746E64();
        sub_100746E74();
        [v4 addSubview:v15];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_1001A5BA4(v8);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v17)
        {
          return [v4 setNeedsLayout];
        }

        v18 = *&v4[v5];
        if (v18)
        {
          swift_beginAccess();
          v19 = v18;
          v20 = v17;
          v21 = sub_1000CCCD4(v19);
          swift_endAccess();
        }

        else
        {
          v22 = v17;
        }

        v23 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = sub_100754434();

          if (v25)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v24 + 16))
        {
          goto LABEL_22;
        }

        sub_1001A5FF8();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

double sub_1000C94C4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppEventFormattedDatePresenter(0);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 32) = &off_1008671E0;
  swift_unknownObjectWeakAssign();
  sub_10023DBF8();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v2 + v7) = v4;

  return result;
}

void sub_1000C95D0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v73[-v10];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &qword_100927000;
    if (v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v52 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v52)
          {
            [v52 setHidden:{1, v9}];
          }

          v53 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v54 = *&v2[v53];
          if (v54)
          {
            [v54 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          v55 = sub_100753EF4();
          [v18 setTextColor:v55];

          if (qword_1009215E0 != -1)
          {
            swift_once();
          }

          v20 = sub_100750534();
          v21 = v20;
          v22 = qword_100981ED8;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(sub_100746ED4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1000CA464(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v28 = sub_100753DD4();
        [v27 setTextColor:v28];

        if (qword_100920FD8 != -1)
        {
          swift_once();
        }

        v29 = sub_100750534();
        sub_10000D0FC(v29, qword_100980CC0);
        v30.super.isa = [v2 traitCollection];
        isa = v30.super.isa;
        v32 = sub_100750514(v30).super.isa;

        v33 = [(objc_class *)v32 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v33)
        {
          v34 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
          [v27 setFont:v34];
        }

        else
        {
          sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
          v71 = [v2 traitCollection];
          v34 = sub_100753C14();

          [v27 setFont:v34];
        }

        if (v2[v12] == 5)
        {
          v72 = 2;
        }

        else
        {
          v72 = 1;
        }

        [v27 setNumberOfLines:v72];
        v14 = &qword_100927000;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          v19 = sub_100753EF4();
          [v18 setTextColor:v19];

          if (qword_100921568 != -1)
          {
            swift_once();
          }

          v20 = sub_100750534();
          v21 = v20;
          v22 = qword_100981D70;
LABEL_52:
          v56 = sub_10000D0FC(v20, v22);
          v57 = *(v21 - 8);
          (*(v57 + 16))(v11, v56, v21);
          (*(v57 + 56))(v11, 0, 1, v21);
          sub_100745BA4();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v46 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v47 = *&v2[v46];
        if (v47)
        {
          [v47 setHidden:1];
        }

        v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
        if (qword_100921588 != -1)
        {
          swift_once();
        }

        v49 = sub_100750534();
        v50 = sub_10000D0FC(v49, qword_100981DD0);
        v51 = *(v49 - 8);
        (*(v51 + 16))(v11, v50, v49);
        (*(v51 + 56))(v11, 0, 1, v49);
        sub_100745BA4();
        sub_1000CA164();
        [v48 setNumberOfLines:2];
LABEL_53:
        sub_1000CA500();
        v58 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v58)
        {
LABEL_72:
          v64 = v14[27];
          swift_beginAccess();
          v65 = *&v2[v64];
          if (!v65)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v66 = v65;
          sub_100746E44();

          (*(v5 + 8))(v7, v4);
          v67 = *&v2[v64];
          if (!v67)
          {
            goto LABEL_82;
          }

          v68 = v2[v12];
          if (v68 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v68 != 6)
            {
LABEL_80:
              v69 = v67;
              goto LABEL_81;
            }
          }

          else if (v68 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v69 = v67;
          v70 = [v2 traitCollection];
          sub_1007537F4();

LABEL_81:
          sub_100746EB4();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v59 = v2[v12];
        v60 = 0.0;
        if (v59 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v61 = 8.0;
            v60 = 10.0;
            if (v59 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v59 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v61 = v60;
                if (v59 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v62 = v58;
                v63 = [v2 traitCollection];
                sub_1007537F4();

                goto LABEL_71;
              }

              if (v59 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v62 = v58;
              goto LABEL_71;
            }

            if (v59 != 1)
            {
              goto LABEL_70;
            }

            v61 = 0.0;
LABEL_67:
            v62 = v58;
            v60 = v61;
LABEL_71:
            [v62 _setCornerRadius:1 continuous:sub_1007535E4() maskedCorners:v60];

            goto LABEL_72;
          }
        }

        else if (v59 < 3)
        {
          goto LABEL_56;
        }

        v60 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v35)
        {
          [v35 setHidden:{1, v9}];
        }

        v36 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v37 = *&v2[v36];
        if (v37)
        {
          [v37 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v38 = sub_100753EF4();
        [v18 setTextColor:v38];

        if (qword_100920FC0 != -1)
        {
          swift_once();
        }

        v20 = sub_100750534();
        v21 = v20;
        v22 = qword_100980C78;
        goto LABEL_52;
      }
    }

    v39 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v39)
    {
      [v39 setHidden:{1, v9}];
    }

    v40 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v41 = *&v2[v40];
    if (v41 || (v42 = [objc_allocWithZone(sub_100746ED4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1000CA464(v42), (v41 = *&v2[v40]) != 0))
    {
      [v41 setHidden:0];
    }

    v43 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v44 = sub_100753DD4();
    [v43 setTextColor:v44];

    if (v2[v12] == 5)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    [v43 setNumberOfLines:v45];
    goto LABEL_53;
  }
}

void sub_1000CA164()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    if (qword_1009201E0 != -1)
    {
      swift_once();
    }

    v3 = &qword_100927098;
  }

  else
  {
    if (qword_1009201D8 != -1)
    {
      swift_once();
    }

    v3 = &qword_100927090;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_1000CAA04([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_1000CAAB0();
  }

  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_1000CA464(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1000CA500()
{
  v1 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_1009215E0 != -1)
        {
          swift_once();
        }

        v5 = sub_100750534();
        v6 = v5;
        v7 = qword_100981ED8;
        goto LABEL_28;
      }

      if (qword_100920FD8 != -1)
      {
        swift_once();
      }

      v8 = sub_100750534();
      sub_10000D0FC(v8, qword_100980CC0);
      v9.super.isa = [v0 traitCollection];
      isa = v9.super.isa;
      v11 = sub_100750514(v9).super.isa;

      v12 = [(objc_class *)v11 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
      v20 = [v0 traitCollection];
      v23 = sub_100753C14();

      [v13 setFont:v23];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style])
      {
        if (qword_100921588 != -1)
        {
          swift_once();
        }

        v5 = sub_100750534();
        v6 = v5;
        v7 = qword_100981DD0;
      }

      else
      {
        if (qword_100921568 != -1)
        {
          swift_once();
        }

        v5 = sub_100750534();
        v6 = v5;
        v7 = qword_100981D70;
      }

LABEL_28:
      v18 = sub_10000D0FC(v5, v7);
      v19 = *(v6 - 8);
      (*(v19 + 16))(v3, v18, v6);
      (*(v19 + 56))(v3, 0, 1, v6);
      sub_100745BA4();
      return;
    }

    if (v4 == 2)
    {
      if (qword_100920FC0 != -1)
      {
        swift_once();
      }

      v5 = sub_100750534();
      v6 = v5;
      v7 = qword_100980C78;
      goto LABEL_28;
    }
  }

  if (qword_1009213C0 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  sub_10000D0FC(v14, qword_100981878);
  v15.super.isa = [v0 traitCollection];
  v16 = v15.super.isa;
  v17 = sub_100750514(v15).super.isa;

  v12 = [(objc_class *)v17 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_20:
  v23 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v13 setFont:v23];

LABEL_30:
  v21 = v23;
}

void sub_1000CAA04(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}