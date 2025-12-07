uint64_t sub_100648C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100648C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100648C98()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100940708 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_1009A04A0;
  v9[3] = unk_1009A04B0;
  v10 = qword_1009A04C0;
  v9[0] = xmmword_1009A0480;
  v9[1] = *algn_1009A0490;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *(v1 + v3) = sub_1004F0D74(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = sub_10076361C();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10064901C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100649084()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076C2DC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  sub_10076C20C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100784500;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C29C();
  sub_10076C2CC();
  sub_10076C29C();
  sub_10076C29C();
  sub_10076C1CC();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C27C();
  sub_10076C2CC();
  sub_1007704BC();
  sub_10076C29C();
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_1009A2860 = v6;
  return result;
}

uint64_t sub_100649484()
{
  sub_1000325F0();
  result = sub_100770D1C();
  qword_100962430 = result;
  return result;
}

char *sub_1006494B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = sub_10076048C();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076A51C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  sub_10076A50C();
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  v25 = sub_1007668DC();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = sub_10076A4DC();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = v28;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v33 = qword_100944D30;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v39 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v42 = v40;
  sub_100062B94(v41);

  if (*&v38[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView] = v38;
  sub_1007626BC();
  v43 = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = sub_10076A4EC();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView(0);
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_1009413F8;
  v56 = *&v53[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_100962430];

  v57 = *&v53[v54];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v58 = sub_10076715C();
  v59 = sub_10000A61C(v58, qword_10099CE38);
  v93 = v58;
  v94 = sub_100043BA4(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v60 = sub_10000DB7C(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  sub_1007625FC();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = sub_10076A4FC();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  sub_10076A50C();
  v67 = [v53 traitCollection];
  v68 = sub_10076C04C();
  v93 = v68;
  v94 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v69 = sub_10000DB7C(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = sub_10076C90C();
  sub_10000CD74(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = sub_10076046C();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  sub_10076A4CC();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_10064A084()
{
  v1 = sub_10076D1FC();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076A51C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076A52C();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView(0);
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  sub_10076A49C();
  sub_10076422C();
  v16 = v19;
  sub_10076A4BC();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_10064A380(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = sub_10076A51C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076A52C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_starRatingView);
  v20[12] = type metadata accessor for RatingView();
  v20[13] = &protocol witness table for UIView;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel);
  v20[7] = sub_1007626BC();
  v20[8] = &protocol witness table for UILabel;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  sub_10076A49C();
  sub_10076A4AC();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_10064A660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView(uint64_t a1)
{
  result = qword_100962478;
  if (!qword_100962478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064A7AC(uint64_t a1, __n128 a2)
{
  sub_10076A51C();
  if (v2 <= 0x3F)
  {
    sub_100038324(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10064A8B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318, &qword_100799480);
}

uint64_t sub_10064A91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318, &qword_100799480);
  return swift_endAccess();
}

void sub_10064A9F8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10064AAC4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10064AB88()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10064ABCC(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10064AC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310, &unk_100784150);
}

uint64_t sub_10064ACE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310, &unk_100784150);
  return swift_endAccess();
}

double sub_10064ADB4()
{
  v1 = v0;
  sub_1007642BC();
  v3 = v2;
  sub_10076438C();
  v5 = v4;
  sub_100062020(v3);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];

  return result;
}

double sub_10064AE74(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v53 = a1;
  v60 = sub_10076A52C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076DA7C();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10076DD3C();
  v48 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v55 = &v45 - v13;
  v14 = sub_10076048C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076A51C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  sub_10076A50C();
  sub_10076A4DC();
  v58 = a2;
  v22 = [a2 traitCollection];
  v23 = sub_10076C04C();
  v66 = v23;
  v67 = sub_100043BA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v24 = sub_10000DB7C(v65);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23);
  LOBYTE(v23) = sub_10076C90C();
  sub_10000CD74(v65);
  if (v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:10.0];
  (*(v15 + 104))(v17, enum case for SystemImage.star(_:), v14);
  v27 = [v26 configurationWithTraitCollection:v22];
  v28 = sub_10076046C();

  (*(v15 + 8))(v17, v14);
  [v28 contentInsets];
  [v28 contentInsets];
  [v28 size];
  [v28 contentInsets];
  [v28 contentInsets];
  [v28 size];

  v29 = sub_10076DDDC();
  swift_allocObject();
  v46 = sub_10076DDBC();
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v30 = sub_10076715C();
  v31 = sub_10000A61C(v30, qword_10099CE38);
  v66 = v30;
  v67 = sub_100043BA4(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v32 = sub_10000DB7C(v65);
  (*(*(v30 - 8) + 16))(v32, v31, v30);
  sub_10076DC8C();
  v33 = v48;
  v34 = *(v48 + 8);
  v35 = v8;
  v36 = v56;
  v34(v35, v56);
  v45 = v34;
  sub_10000CD74(v65);
  sub_10076A4FC();
  v37 = v55;
  sub_10076DD1C();
  v34(v11, v36);
  sub_10076438C();
  (*(v33 + 16))(v11, v37, v36);
  sub_10076DA5C();
  v38 = v51;
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v52 + 8))(v38, v54);
  v63 = v29;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v46;
  sub_10000A570(v65, v61);
  v39 = v49;
  v40 = v50;
  (*(v49 + 16))(v47, v21, v50);

  v41 = v57;
  sub_10076A49C();
  sub_10076A4AC();
  v43 = v42;

  (*(v59 + 8))(v41, v60);
  sub_10000CD74(v65);
  v45(v37, v36);
  (*(v39 + 8))(v21, v40);
  return v43;
}

void sub_10064B72C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_10064B73C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_10077167C() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

double sub_10064B7C4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();
  return result;
}

void *sub_10064B8BC(uint64_t a1, uint64_t a2)
{
  v202 = a2;
  v192 = sub_100762A7C();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v4 - 8);
  v189 = &v155 - v5;
  v188 = sub_100768FEC();
  v183 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v155 - v7;
  v8 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v8 - 8);
  v10 = &v155 - v9;
  v11 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v11 - 8);
  v182 = &v155 - v12;
  v13 = sub_10076A3AC();
  v199 = *(v13 - 8);
  v200 = v13;
  __chkstk_darwin(v13);
  v181 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v155 - v16;
  __chkstk_darwin(v17);
  v198 = &v155 - v18;
  v19 = sub_10000A5D4(&unk_100962490, qword_10079E5A0);
  __chkstk_darwin(v19 - 8);
  v166 = &v155 - v20;
  v21 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v21 - 8);
  v165 = &v155 - v22;
  v23 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v23 - 8);
  v164 = &v155 - v24;
  v25 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v25 - 8);
  v163 = &v155 - v26;
  v180 = sub_10075EBAC();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10076186C();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10076B96C();
  v177 = *(v195 - 1);
  __chkstk_darwin(v195);
  v176 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_10076201C();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v161 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v155 - v32;
  v197 = sub_10076C36C();
  v33 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v155 - v36;
  v38 = sub_10076C38C();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v201 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v155 - v42;
  __chkstk_darwin(v44);
  v46 = &v155 - v45;
  sub_100762BEC();
  sub_100650EB4(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  result = sub_10076332C();
  v48 = v204;
  if (!v204)
  {
    return result;
  }

  v157 = v10;
  v171 = v37;
  swift_getKeyPath();
  v203 = v48;
  sub_10076338C();

  sub_10076C24C();
  v49 = *(v39 + 8);
  v49(v46, v38);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C26C();
  v49(v43, v38);
  v50 = v171;
  v51 = v197;
  (*(v33 + 104))(v171, enum case for PageGrid.Direction.vertical(_:), v197);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v158 = v49;
  v49(v46, v38);
  (*(v33 + 16))(v196, v50, v51);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v33 + 8))(v50, v51);
  v196 = sub_100630CB4();
  v159 = a1;
  v52 = sub_1001B5A0C();
  v53 = v172;
  v54 = &v172[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *v54 = v52;
  *(v54 + 1) = v55;
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  v56 = sub_10076F64C();
  sub_10076FC1C();
  v167 = *(&v204 + 1);
  v197 = v204;
  v57 = v53;
  v58 = *&v53[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  sub_100762BAC();
  v169 = v38;
  v168 = v39 + 8;
  if (v59)
  {
    v60 = sub_10076FF6C();
  }

  else
  {
    v60 = 0;
  }

  [v58 setText:v60];

  v61 = v57;
  v62 = *&v57[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  sub_100762BCC();
  if (v63)
  {
    v64 = sub_10076FF6C();
  }

  else
  {
    v64 = 0;
  }

  [v62 setText:v64];

  v65 = *&v57[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  sub_100762ADC();
  if (v66)
  {
    v67 = sub_10076FF6C();
  }

  else
  {
    v67 = 0;
  }

  [v65 setText:v67];

  v68 = sub_100762B4C();
  v69 = sub_100762B3C();
  v156 = v46;
  if (v70 == 1)
  {
    sub_10030235C(0, 0);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = v71;
    v74 = v72;
    v75 = v69;
    v76 = v70;

    sub_10030235C(v75, v76);
  }

  sub_100302370(v73, v74);
  v77 = sub_100762B2C();
  v78 = v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v170 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = v77 & 1;
  sub_100301BE0(v78);
  v79 = sub_100762B6C();
  v171 = v68;
  v80 = v176;
  if ((v79 & 1) != 0 && v68)
  {
    v155 = v56;

    v81 = v160;
    sub_100766A8C();
    v82 = v193;
    v83 = v161;
    v84 = v194;
    (*(v193 + 104))(v161, enum case for OfferLabelStyle.none(_:), v194);
    sub_100650EB4(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v85 = sub_10076FF1C();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v81, v84);
    if ((v85 & 1) == 0)
    {

      sub_100766ACC();
      sub_10076148C();
      swift_unknownObjectRetain();
      sub_10076FC1C();
      sub_10076130C();

      v87 = sub_100764E4C();
      swift_allocObject();
      v68 = v171;
      v88 = sub_100764E2C();
      *(&v205 + 1) = v87;
      *&v204 = v88;
      v89 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter;
      swift_beginAccess();

      sub_10003837C(&v204, &v61[v89], &unk_1009434C0, &qword_100783F60);
      swift_endAccess();
      sub_100650EB4(&qword_1009624A8, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007B1548);
      swift_unknownObjectRetain();
      sub_100764E3C();
    }
  }

  v90 = sub_100762B5C();
  if (v90)
  {
    v91 = v90;
    v92 = v175;
    v93 = v174;
    v94 = v173;
  }

  else
  {
    v92 = v175;
    v93 = v174;
    v94 = v173;
    if (!v68)
    {
      v95 = v80;
      goto LABEL_28;
    }

    v91 = sub_100766AFC();
  }

  (*(v93 + 104))(v94, enum case for OfferTitleType.standard(_:), v92);
  if (!*(v91 + 16))
  {
    v95 = v80;
    goto LABEL_27;
  }

  v95 = v80;
  v96 = sub_10061070C(v94);
  if ((v97 & 1) == 0)
  {
LABEL_27:

    (*(v93 + 8))(v94, v92);
LABEL_28:
    v103 = 0;
    v100 = 0;
    goto LABEL_29;
  }

  v98 = (*(v91 + 56) + 16 * v96);
  v99 = *v98;
  v100 = v98[1];
  v101 = *(v93 + 8);

  v102 = v94;
  v103 = v99;
  v101(v102, v92);

LABEL_29:
  swift_getObjectType();
  v104 = v61[v170];
  v105 = swift_unknownObjectRetain();
  v106 = sub_100307E18(v105, v104, v61);
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_100762BBC();
  v107 = sub_10075EE2C();
  v109 = v108;
  (*(v177 + 8))(v95, v195);
  ObjectType = swift_getObjectType();
  v111 = v178;
  v174 = ObjectType;
  v195 = v109;
  sub_10075ED1C();
  v177 = v103;
  v176 = v100;
  v175 = v106;
  sub_10064D340(v111, v103, v100, v106);
  (*(v179 + 8))(v111, v180);
  if (v68)
  {

    sub_1000FD730(_swiftEmptyArrayStorage);
    v112 = sub_10075F78C();
    v113 = v163;
    (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
    v114 = sub_1007628DC();
    v115 = v164;
    (*(*(v114 - 8) + 56))(v164, 1, 1, v114);
    v116 = sub_10076C54C();
    v117 = v165;
    (*(*(v116 - 8) + 56))(v165, 1, 1, v116);
    v118 = v166;
    (*(v193 + 56))(v166, 1, 1, v194);
    v204 = 0u;
    v205 = 0u;
    v194 = sub_100766A5C();

    sub_10000CFBC(&v204, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(v118, &unk_100962490, qword_10079E5A0);
    sub_10000CFBC(v117, &unk_100949290, &unk_10078BBF0);
    sub_10000CFBC(v115, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v113, &unk_10094D210, &qword_10078DE20);
  }

  else
  {
    v194 = 0;
  }

  v119 = v198;
  v120 = sub_100762B7C();
  v121 = v199;
  v122 = *(v199 + 104);
  if (v120)
  {
    v123 = v200;
    v122(v119, enum case for OfferButtonPresenterViewAlignment.center(_:), v200);
  }

  else
  {
    if (v61[v170])
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.right(_:);
    }

    else
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.left(_:);
    }

    v125 = v162;
    v123 = v200;
    v122(v162, *v124, v200);
    (*(v121 + 32))(v119, v125, v123);
  }

  v126 = sub_100762AAC();
  (*(v121 + 16))(v181, v119, v123);
  (*(v121 + 56))(v157, 1, 1, v123);
  sub_100650EB4(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v127 = v182;
  sub_10076759C();
  v128 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
  v129 = v183;
  v130 = v188;
  (*(v183 + 104))(v185, enum case for OfferButtonSubtitlePosition.below(_:), v188);
  (*(v129 + 56))(v189, 1, 1, v130);
  sub_100650EB4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v131 = v184;
  sub_10076759C();
  sub_1001F12C8(v194, v126, 0, v127, v131, v202, 0, 0);

  (*(v186 + 8))(v131, v187);
  sub_10000CFBC(v127, &unk_100946760, &unk_100787A20);
  v132 = &v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v133 = v158;
  v134 = v195;
  *v132 = v107;
  v132[1] = v134;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  v137 = v177;
  v136[2] = v135;
  v136[3] = v137;
  v138 = v175;
  v136[4] = v176;
  v136[5] = v138;

  sub_10075ECEC();

  v139 = [v61 contentView];
  sub_10076C2EC();
  [v139 setLayoutMargins:?];

  v140 = [v61 traitCollection];
  LOBYTE(v139) = sub_1007706EC();

  v141 = 0;
  if (v139)
  {
    v142 = sub_100762B7C();
    v143 = v202;
    v144 = v159;
    if (v142)
    {
      swift_getKeyPath();
      v145 = v156;
      sub_10076338C();

      sub_10076C25C();
      v141 = v146;
      v133(v145, v169);
    }
  }

  else
  {
    v143 = v202;
    v144 = v159;
  }

  *&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = v141;
  v147 = v190;
  v148 = v203;
  sub_100762B9C();
  v149 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  v150 = v191;
  v151 = v192;
  (*(v191 + 24))(&v61[v149], v147, v192);
  swift_endAccess();
  sub_100300494();
  (*(v150 + 8))(v147, v151);
  sub_10064D554(v144, v143);
  sub_10064E850(v148, v107, v195, v144, v143);
  *&v61[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = sub_1001B5E80();
  v152 = sub_100762B0C();
  v153 = sub_100762B7C();
  v154 = sub_10064F020(v152, v153 & 1, v144, v143);

  sub_100301564(v154);
  [v61 setNeedsLayout];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v199 + 8))(v198, v200);
  return (v133)(v201, v169);
}

id sub_10064D340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  if (a3)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  [v7 setTextAlignment:a4];
  [v7 setHidden:(a3 == 0) | ((sub_10075EB9C() & 1) == 0)];

  return [v4 setNeedsLayout];
}

void *sub_10064D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10075EBAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getObjectType();
    sub_10075ED1C();
    sub_10064D340(v12, a4, a5, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_10064D554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v150 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v138 = &v132 - v10;
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10076C43C();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10076C38C();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v17 - 8);
  v149 = sub_10000A5D4(&unk_10094C330, &qword_1007928A0);
  v146 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v132 - v18;
  sub_100762BEC();
  sub_100650EB4(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  v147 = a1;
  sub_10076332C();
  if (v155)
  {
    v133 = v14;
    v19 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
    v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v151 = v155;
    v135 = v11;
    v134 = v12;
    v137 = v5;
    v136 = v6;
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber);

      v22 = sub_100762B8C();
      if (v21)
      {
        v155 = v21;
        if (v22)
        {
          v152 = v22;
          sub_10076B29C();
          sub_100650EB4(&qword_100961168, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
          v23 = sub_10076FF1C();

          v24 = v23 ^ 1;
LABEL_13:
          v132 = v8;
          v26 = *&v3[v19];
          if (v26 && (v27 = *&v26[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView], v28 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer, (v29 = *(*(v27 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents)) != 0))
          {
            type metadata accessor for VideoView(0);
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              sub_100650EB4(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
              v31 = v29;
              v32 = v26;
              v33 = [v30 superview];
              if (v33)
              {
                v30 = v33;
                v34 = *(v27 + v28);
                sub_100016F40(0, &qword_1009441F0, UIView_ptr);
                v35 = v34;
                v36 = sub_100770EEC();

                LODWORD(v30) = v36 ^ 1;
              }

              else
              {

                LODWORD(v30) = 1;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v37 = sub_100762B8C();
          if (v37)
          {
            v38 = v37;
            if ((v24 | v30))
            {
              v39 = sub_100762B7C();
              v40 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
              v41 = v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
              v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = v39 & 1;
              if ((v39 & 1) != v41)
              {
                sub_100300958();
              }

              sub_100650B98(v3, v3);
              sub_100301614();
              sub_100301868();
              v42 = v147;
              sub_1007633DC();
              sub_10076FDBC();
              swift_getKeyPath();
              sub_1001B65D8();

              sub_10076FD9C();

              v43 = v155;
              v44 = objc_allocWithZone(type metadata accessor for UberHeaderView());
              v45 = v150;

              v46 = sub_1002088B0(v38, (v43 & 1) == 0, v45);
              sub_100300E78(v46);
              v47 = *&v3[v19];
              if (v47)
              {
                swift_getKeyPath();
                v48 = v47;
                v49 = v142;
                sub_10076338C();

                sub_10076C2EC();
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                (*(v143 + 8))(v49, v144);
                v58 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
                [*&v48[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
                if (v51 == v62 && v53 == v59 && v55 == v60 && v57 == v61 || ([*&v48[v58] setLayoutMargins:{v51, v53, v55, v57, v132}], objc_msgSend(v48, "invalidateIntrinsicContentSize"), (v63 = *&v48[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver]) == 0))
                {
                }

                else
                {
                  v64 = *&v48[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver + 8];

                  v63(v65);

                  sub_1000167E0(v63, v64);
                }
              }

              v66 = sub_1001AFE30(v42, v150);
              if (v3[v40] == 1)
              {
                v67 = [v3 contentView];
                [v67 setOverrideUserInterfaceStyle:2];

                sub_1003037E0();
                v68 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow;
                if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow])
                {
                  v69 = [objc_allocWithZone(type metadata accessor for ChevronView()) init];
                  [v69 setOverrideUserInterfaceStyle:2];
                  v70 = *&v3[v68];
                  if (v70)
                  {
                    [v70 removeFromSuperview];
                    v71 = *&v3[v68];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  *&v3[v68] = v69;
                  v72 = v69;

                  v73 = [v3 contentView];
                  [v73 addSubview:v72];
                }

                v74 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
                v75 = v140;
                v76 = v139;
                v77 = v141;
                (*(v140 + 104))(v139, enum case for Wordmark.arcade(_:), v141);
                swift_getKeyPath();
                sub_10076338C();

                v78 = v155;
                sub_100760B2C();

                (*(v75 + 8))(v76, v77);
                [v74 setHidden:0];
                [*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel] setHidden:1];
                v79 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
                v80 = [v79 text];
                v81 = v80;
                if (v80)
                {
                }

                [v79 setHidden:v81 == 0];
                v82 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
                swift_beginAccess();
                v83 = *&v3[v82];
                if (v83)
                {
                  [v83 removeFromSuperview];
                  v84 = *&v3[v82];
                }

                else
                {
                  v84 = 0;
                }

                *&v3[v82] = 0;

                [v3 setNeedsLayout];
                v85 = [v3 contentView];
                [v85 overrideUserInterfaceStyle];

                sub_10076FF9C();
                v86 = sub_10076FF6C();

                v87 = [v79 layer];
                [v87 setCompositingFilter:v86];

                v88 = [v74 layer];
                [v88 setCompositingFilter:v86];

                v89 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
                if (v89)
                {
                  [v89 setHidden:1];
                }

                v90 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
                if (v90)
                {
                  v91 = [v90 layer];
                  [v91 setCompositingFilter:v86];
                }

                v92 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
                if (v92)
                {
                  v93 = [v92 layer];
                  [v93 setCompositingFilter:v86];
                }
              }

              sub_100760C4C();
              sub_10076F64C();
              sub_10076FC1C();
              sub_10064FEC0(v66, v42, v155);

              (*(v146 + 8))(v148, v149);
            }

            else
            {
            }
          }

          if (v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber])
          {
            goto LABEL_83;
          }

          v94 = [v3 contentView];
          [v94 setOverrideUserInterfaceStyle:0];

          v95 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow;
          v96 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
          if (v96)
          {
            [v96 removeFromSuperview];
            v97 = *&v3[v95];
          }

          else
          {
            v97 = 0;
          }

          v98 = v137;
          v99 = v136;
          *&v3[v95] = 0;

          sub_100762AFC();
          v100 = sub_10077002C();

          v101 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
          if (v100)
          {
            swift_beginAccess();
            v102 = *&v3[v101];
            if (v102)
            {
              [v102 removeFromSuperview];
              v103 = *&v3[v101];
            }

            else
            {
              v103 = 0;
            }

            *&v3[v101] = 0;

            [v3 setNeedsLayout];
            goto LABEL_72;
          }

          swift_beginAccess();
          v104 = *&v3[v101];
          if (v104)
          {
LABEL_60:
            v105 = v104;
            sub_100762AFC();
            if (v106)
            {
              v107 = sub_10076FF6C();
            }

            else
            {
              v107 = 0;
            }

            [v105 setText:{v107, v132}];

            goto LABEL_72;
          }

          if (qword_100940050 != -1)
          {
            swift_once();
          }

          v108 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
          sub_10000A61C(v108, qword_10099EC28);
          swift_getKeyPath();
          sub_10076338C();

          v154 = v152;
          v109 = v133;
          sub_10075FDCC();
          swift_unknownObjectRelease();
          if (qword_100940178 != -1)
          {
            swift_once();
          }

          v110 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
          sub_10000A61C(v110, qword_10099EFE0);
          swift_getKeyPath();
          sub_10076338C();

          v153 = v154;
          sub_10075FDCC();
          swift_unknownObjectRelease();
          v111 = v134;
          v112 = v138;
          v113 = v135;
          (*(v134 + 16))(v138, v109, v135);
          (*(v111 + 56))(v112, 0, 1, v113);
          (*(v99 + 104))(v132, enum case for DirectionalTextAlignment.leading(_:), v98);
          v114 = objc_allocWithZone(sub_1007626BC());
          v115 = sub_1007626AC();
          v116 = *&v3[v101];
          if (v116)
          {
            [v116 removeFromSuperview];
            v117 = *&v3[v101];
          }

          else
          {
            v117 = 0;
          }

          *&v3[v101] = v115;
          v127 = v115;

          v128 = [v3 contentView];
          [v128 addSubview:v127];

          [v3 setNeedsLayout];
          swift_beginAccess();
          v129 = *&v3[v101];
          if (v129)
          {
            swift_endAccess();
            sub_100016F40(0, &qword_100942F10, UIColor_ptr);
            v130 = v129;
            v131 = sub_100770D0C();
            [v130 setTextColor:v131];

            (*(v134 + 8))(v133, v135);
            v104 = *&v3[v101];
            if (v104)
            {
              goto LABEL_60;
            }
          }

          else
          {
            (*(v134 + 8))(v133, v135);
            swift_endAccess();
            v104 = *&v3[v101];
            if (v104)
            {
              goto LABEL_60;
            }
          }

LABEL_72:
          v118 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
          [v118 setHidden:{1, v132}];
          v119 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
          if (v119)
          {
            [v119 removeFromSuperview];
          }

          v120 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
          if (v120)
          {
            [v120 removeFromSuperview];
          }

          v121 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
          if (v121)
          {
            [v121 removeFromSuperview];
          }

          v122 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel] layer];
          [v122 setCompositingFilter:0];

          v123 = [v118 layer];
          [v123 setCompositingFilter:0];

          v124 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
          if (v124)
          {
            [v124 setHidden:0];
          }

          v125 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
          if (v125)
          {
            v126 = [v125 layer];
            [v126 setCompositingFilter:0];
          }

          sub_100306DD4();
LABEL_83:
          [v3 setNeedsLayout];

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v22 = sub_100762B8C();
    }

    if (!v22)
    {
      v24 = 0;
      goto LABEL_13;
    }

LABEL_12:

    v24 = 1;
    goto LABEL_13;
  }

  sub_100300E78(0);
  v25 = v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
  v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  if (v25 == 1)
  {
    sub_100300958();
  }

  sub_100650B98(v2, v2);
  sub_100301614();
  sub_100301868();
}

uint64_t sub_10064E850(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v75 = a4;
  v5 = sub_10076C38C();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075EBAC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v11 - 8);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  swift_getObjectType();
  sub_10075ED1C();
  sub_100762AEC();
  (*(v8 + 8))(v10, v7);
  LODWORD(v23) = sub_100762B7C();
  sub_10064F3E0(v22, v19);
  v24 = sub_100762B8C();
  if (v24)
  {
  }

  sub_100016E2C(v19, v16, &unk_10094C348, &qword_1007928C8);
  v25 = sub_100762ACC();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v16, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  sub_100016E2C(v16, v13, &unk_10094C348, &qword_1007928C8);
  v29 = (*(v26 + 88))(v13, v25);
  if (v29 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v26 + 96))(v13, v25);
    v30 = *v13;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    if ((sub_1007612AC() & 1) == 0)
    {
      v71 = v24 == 0;
      v70 = sub_10076B9DC();
      v69 = v40;
      v67 = v23 ^ 1;
      v66 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v28 = v75;
      v41 = sub_100630CB4();
      swift_getKeyPath();
      v68 = v30;
      v42 = v23;
      v23 = v72;
      sub_10076338C();

      sub_10076C2FC();
      v44 = v43;
      v46 = v45;
      v47 = v23;
      LOBYTE(v23) = v42;
      (*(v73 + 8))(v47, v74);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100126678(v70, v69, v71 & v67, v41, v44, v46, v66, ObjectType);
      v27 = v49;

      swift_unknownObjectRelease_n();
      sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
      goto LABEL_30;
    }
  }

  else
  {
    if (v29 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v26 + 8))(v13, v25);
LABEL_4:
      sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
      v27 = 0;
      v28 = v75;
      goto LABEL_30;
    }

    (*(v26 + 96))(v13, v25);
    v30 = *v13;
  }

  v28 = v75;

  sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
  v31 = 0.0;
  if ((v23 & 1) == 0)
  {
    if (qword_100940078 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
    swift_getKeyPath();
    sub_10076338C();

    v32 = *&v78[0];
    sub_10076D41C();
    v31 = v33;
  }

  v34 = sub_10076B99C();
  if (v34)
  {
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
  v35 = sub_1007701EC();

  if (v23)
  {
    _Q3 = xmmword_10078C3D0;
    v37 = 17.0;
    v38 = 0.0;
    v39 = 0.0;
  }

  else
  {
    v38 = 22.0;
    if (v34)
    {
      v38 = 15.0;
    }

    if (v35)
    {
      v39 = 15.0;
    }

    else
    {
      v39 = v38;
    }

    v37 = 9.0;
    if (v35)
    {
      v50 = 12.0;
    }

    else
    {
      v50 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v50;
  }

  v78[1] = _Q3;
  v78[0] = _Q3;
  v79 = v37;
  v80 = v38;
  v81 = v37;
  v82 = v39;
  v83 = xmmword_100785070;
  v84 = xmmword_100785080;
  v55 = sub_100630CB4();
  swift_getKeyPath();
  v56 = v72;
  sub_10076338C();

  sub_10076C2FC();
  v58 = v57;
  v60 = v59;
  (*(v73 + 8))(v56, v74);
  sub_10011D440(v30, v78, v55, v31, 0.0, v31, 0.0, v58, v60);
  v27 = v61;
  swift_unknownObjectRelease();

LABEL_30:
  v62 = v77;
  *(v76 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight) = v27;
  v63 = sub_10064F840(v19, v23 & 1, v28, v62);
  sub_100301558(v63);
  sub_10000CFBC(v19, &unk_10094C348, &qword_1007928C8);
  return sub_10000CFBC(v22, &unk_10094C348, &qword_1007928C8);
}

uint64_t sub_10064F020(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1;
  }

  v28 = a4;

  v11 = sub_100630CB4();
  v12 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView);
  if (v12)
  {
    type metadata accessor for BannerCollectionViewCell(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v31 = v13;
      v15 = v12;
      v16 = 0;
      v17 = 0;
LABEL_7:
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v20 = v14;
      v21 = sub_100770D2C();
      [v20 setBackgroundColor:v21];

      goto LABEL_8;
    }
  }

  v31 = 0;
  v18 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = &v31;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100650E7C;
  *(v16 + 24) = v17;
  aBlock[4] = sub_1000349FC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_10089E238;
  v19 = _Block_copy(aBlock);

  [v18 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_100650E7C;
  v14 = v31;
  if (v31)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = 0.0;
  if ((v29 & 1) == 0)
  {
    if (qword_100940080 == -1)
    {
LABEL_10:
      v23 = qword_10099ED00;
      sub_10000CF78(qword_10099ECE8, qword_10099ED00);
      sub_1000FF02C(v23);
      sub_10076D40C();
      v22 = v24;
      (*(v8 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v31)
  {
    v25 = v31;
    sub_100031484(a1, v29 & 1, v11, v28, v22, 0.0, 0.0);
  }

  swift_unknownObjectRelease();

  a1 = v31;
  sub_1000167E0(v16, v17);
  return a1;
}

uint64_t sub_10064F3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10000A5D4(&qword_10094C340, &qword_10078C478);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  sub_100016E2C(a1, v9, &unk_10094C348, &qword_1007928C8);
  v13 = sub_100762ACC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_10000CFBC(v9, &unk_10094C348, &qword_1007928C8);
  }

  else
  {
    v24 = a2;
    sub_100762ABC();
    (*(v14 + 8))(v9, v13);
    v16 = sub_1007607CC();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_10000CFBC(v12, &qword_10094C340, &qword_10078C478);
      a2 = v24;
    }

    else
    {
      v18 = sub_1007607BC();
      (*(v17 + 8))(v12, v16);
      a2 = v24;
      if (v18)
      {
        v19 = qword_100941308;
        goto LABEL_9;
      }
    }
  }

  sub_100016E2C(a1, v6, &unk_10094C348, &qword_1007928C8);
  if (v15(v6, 1, v13) != 1)
  {
    (*(v14 + 32))(a2, v6, v13);
    v20 = 0;
    if (qword_100941308 == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  sub_10000CFBC(v6, &unk_10094C348, &qword_1007928C8);
  v19 = qword_100941308;
LABEL_9:
  v20 = 1;
  if (v19 != -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = sub_10076FD4C();
  sub_10000A61C(v21, qword_1009A2660);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBCC();

  return (*(v14 + 56))(a2, v20, 1, v13);
}

char *sub_10064F840(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C348, &qword_1007928C8);
  __chkstk_darwin(v11 - 8);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  sub_100016E2C(a1, &v46 - v15, &unk_10094C348, &qword_1007928C8);
  v17 = sub_100762ACC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100016E2C(v16, v13, &unk_10094C348, &qword_1007928C8);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
      return 0;
    }

    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  sub_10076148C();
  sub_10076F5CC();
  if (sub_1007612AC())
  {

LABEL_8:

    sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
    v22 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
    v23 = a2;
    if (v22 && (type metadata accessor for BannerCollectionViewCell(0), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for BannerCollectionViewCell(0));
      v25 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0, v46, v47}];
    }

    v28 = sub_100630CB4();
    v29 = 0.0;
    if ((v23 & 1) == 0)
    {
      if (qword_100940078 != -1)
      {
        swift_once();
      }

      v30 = qword_10099ECD8;
      sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
      sub_1000FF02C(v30);
      sub_10076D40C();
      v29 = v31;
      (*(v8 + 8))(v10, v7);
    }

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v32 = v25;
    v33 = sub_100770D2C();
    [v32 setBackgroundColor:v33];

    sub_100031484(v21, v23 & 1, v28, v47, v29, 0.0, v29);
    swift_unknownObjectRelease();

    return v32;
  }

  v34 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
  if (v34 && (type metadata accessor for LinkableHeaderCollectionViewCell(), (v35 = swift_dynamicCastClass()) != 0))
  {
    v36 = v35;
    v37 = v34;
  }

  else
  {
    v38 = objc_allocWithZone(type metadata accessor for LinkableHeaderCollectionViewCell());
    v36 = [v38 initWithFrame:{0.0, 0.0, 0.0, 0.0, v46, v47}];
  }

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v39 = v36;
  v40 = sub_100770D2C();
  [v39 setBackgroundColor:v40];

  sub_10076B9AC();
  sub_100630CB4();
  v41 = *(*&v39[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtension18LinkableHeaderView_label);
  v42 = sub_10076082C();
  sub_100107BF4(v42, sub_1000368B8);
  v44 = v43;

  v45 = sub_10076081C();
  sub_10050C274(v45, 0, v44);

  [v39 setNeedsLayout];

  swift_unknownObjectRelease();

  sub_10000CFBC(v16, &unk_10094C348, &qword_1007928C8);
  return v39;
}

uint64_t sub_10064FE60(uint64_t *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BannerCollectionViewCell(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = *a1;
  *a1 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10064FEC0(double a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10076B27C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView])
  {

    sub_10076B28C();
    v11 = (*(v8 + 88))(v10, v7);
    if (v11 == enum case for Uber.AssetType.artwork(_:))
    {
      v12 = [v3 traitCollection];
      v13 = sub_1007706EC();

      if (v13)
      {
        if (!sub_10076B20C())
        {
          goto LABEL_11;
        }

LABEL_10:

        sub_1006500EC(v14, a2, a3, a1);

        return;
      }

      if (sub_10076B26C())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v11 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10076B25C())
      {
        sub_10076B84C();

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

    v15 = enum case for Uber.AssetType.icon(_:);
    v16 = v11;

    if (v16 != v15)
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_1006500EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v74 = a2;
  v8 = sub_10076D39C();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v10 - 8);
  v70 = &v58 - v11;
  v12 = sub_10000A5D4(&unk_10094C330, &qword_1007928A0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = sub_10076B21C();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v58 - v19;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = sub_10076C38C();
  __chkstk_darwin(v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v31 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v31)
  {
    v61 = v28;
    v62 = v27;
    v63 = a1;
    v64 = v13;
    v65 = v12;
    v32 = *&v31[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_uber];

    v33 = v31;
    v34 = [v33 backgroundColor];
    v60 = v33;
    v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
    v36 = type metadata accessor for MediaView();
    v81.receiver = v35;
    v81.super_class = v36;
    objc_msgSendSuper2(&v81, "setBackgroundColor:", v34);
    [*(*&v35[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v34];
    v37 = *&v35[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
    if (v37)
    {
      v38 = v37;
      [v38 setBackgroundColor:v34];
    }

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v40 = v39;
    sub_10076C25C();
    v42 = v40 - v41;
    swift_getKeyPath();
    sub_10076338C();

    v43 = v80;
    v44 = sub_1007706EC();

    v59 = v17;
    v66 = a3;
    if (v44)
    {
      sub_10076B23C();
      (*(v75 + 104))(v22, enum case for Uber.Style.inline(_:), v15);
      sub_100650EB4(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v78 == v76 && v79 == v77)
      {
        v45 = v32;
        v46 = 1;
      }

      else
      {
        v45 = v32;
        v46 = sub_10077167C();
      }

      v47 = *(v75 + 8);
      v47(v22, v15);
      v47(v25, v15);

      if (v46)
      {
        v42 = v42 - a4;
      }

      v32 = v45;
    }

    sub_1007633DC();
    v48 = v73;
    sub_10076FDBC();
    v49 = v72;
    v74 = v32;
    sub_10076B23C();
    swift_getKeyPath();
    sub_1001B65D8();
    v50 = v65;
    sub_10076FD9C();

    v51 = v78;
    sub_10076C2FC();
    v53 = v52;
    v54 = [v71 traitCollection];
    sub_10020B56C(v54, v49, (v51 & 1) == 0, v53, *&v42, 0);
    if (sub_1007706EC())
    {
      (*(v75 + 104))(v59, enum case for Uber.Style.inline(_:), v15);
      sub_100650EB4(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      sub_10077018C();
      sub_10077018C();
      if (v78 == v76 && v79 == v77)
      {
        (*(v75 + 8))(v59, v15);

LABEL_18:
        sub_10076BFCC();

        (*(v75 + 8))(v49, v15);
        type metadata accessor for UberHeaderView();
        sub_100650EB4(&unk_1009624C0, type metadata accessor for UberHeaderView, &unk_10079F020);
        v57 = v60;
        sub_100760B8C();

        (*(v64 + 8))(v48, v50);
        (*(v61 + 8))(v30, v62);
        return;
      }

      v55 = sub_10077167C();
      (*(v75 + 8))(v59, v15);

      if (v55)
      {
        goto LABEL_18;
      }
    }

    sub_10076BEFC();
    v56 = v67;
    sub_10076D3AC();
    sub_10076D35C();
    (*(v68 + 8))(v56, v69);
    goto LABEL_18;
  }
}

uint64_t sub_1006509A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0, &unk_100783DC0);
}

uint64_t sub_100650A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0, &unk_100783DC0);
  return swift_endAccess();
}

uint64_t sub_100650AF4(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v5, *v5 == v4) ? (v7 = v6 == a2) : (v7 = 0), !v7 && (result = sub_10077167C(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_10030235C(v4, a2);
  }

  return result;
}

void sub_100650B98(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    sub_100770E7C();
  }

  else
  {
    if (qword_100940060 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v5, qword_10099EC58);
    v13 = a1;
    sub_10075FDCC();
  }

  sub_100770E7C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer;
  sub_100650D54(a1, *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer), a2);
  sub_100770E7C();
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v7)
  {
    v8 = *(a2 + v6);
    v9 = v7;
    v10 = [a1 traitCollection];
    if ((*(a2 + v4) & 1) != 0 || (v8 & 1) != 0 && (sub_1007706FC() & 1) == 0)
    {

      v11 = 1;
    }

    else
    {
      v12 = sub_10077070C();

      if (v12)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    [v9 setTextAlignment:{v11, v13}];
  }
}

uint64_t sub_100650D54(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007706FC() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_10077070C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_100650DE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100650E20()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100650E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100650EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100650EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100650F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100650FC4()
{
  result = qword_1009624D0;
  if (!qword_1009624D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624D0);
  }

  return result;
}

unint64_t sub_10065101C()
{
  result = qword_1009624D8;
  if (!qword_1009624D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624D8);
  }

  return result;
}

double sub_100651070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_100595060(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_100594F54(v11, v12);
}

uint64_t sub_100651204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100651258()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView];
  sub_100637778();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v10, "backgroundColor");
  sub_10075FB8C();

  v6 = (v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler + 8);
  *v6 = 0;
  v6[1] = 0;
  return sub_1000167E0(v7, v8);
}

uint64_t sub_10065132C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v5 = sub_100765CEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell(0);
  swift_getObjectType();
  v13 = sub_1006525E0(a1);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v14 = [a1 traitCollection];
  v15 = sub_1007706EC();

  if (v15)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v16 = 160.0;
    }

    else
    {
      sub_1007708BC();
      sub_100770ACC();
      v21 = v20 + -10.0;
      v34[0] = 156.0;
      sub_10076D17C();
      sub_10076D40C();
      v23 = v22;
      (*(v10 + 8))(v12, v9);
      v16 = v21 - v23;
    }

    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v16;
    sub_10000CFBC(&v31, &unk_100943240, &qword_10078AFB0);
    *&v31 = 0x4014000000000000;
    *(&v32 + 1) = &type metadata for CGFloat;
    v33 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v18 = v17;
    [a1 pageContainerSize];
    if (v19 >= v18)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_10076521C();
    v25 = v13 + v24 + v24;
    sub_1007708BC();
    sub_100770ACC();
    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v26 + -10.0 - v25;
    sub_10000CFBC(&v31, &unk_100943240, &qword_10078AFB0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_10062CB50(&v31, v30);
  v29[12] = &protocol witness table for CGFloat;
  v29[11] = &type metadata for CGFloat;
  v29[8] = 0x4024000000000000;
  sub_10000A570(v34, v8);
  (*(v6 + 104))(v8, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v5);
  if (qword_100941408 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A5D4(&unk_10094D980, qword_1007B1830);
  sub_10000A61C(v27, qword_1009A2890);
  v29[2] = a1;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  sub_10076522C();
  sub_10000CFBC(&v31, &unk_100943240, &qword_10078AFB0);
  return sub_10000CD74(v34);
}

double sub_10065181C()
{
  v0 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  sub_10000DB18(v0, qword_100962530);
  sub_10000A61C(v0, qword_100962530);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for CGSize(0);
  sub_10075FDEC();
  return result;
}

double sub_1006518CC()
{
  v0 = sub_10000A5D4(&unk_10094D980, qword_1007B1830);
  sub_10000DB18(v0, qword_1009A2890);
  sub_10000A61C(v0, qword_1009A2890);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10000A5D4(&qword_100962590, &unk_100795060);
  sub_10075FDEC();
  return result;
}

char *sub_10065199C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_1009413D0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v14, qword_1009A27F8);
  sub_1000A9194(v23, v16, v24);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FE0C();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_1006389FC(v19);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView] = sub_10075FB3C();
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:1];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView;
  v30 = qword_10093F888;
  v31 = *&v26[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10076BCFC();
  v33 = sub_10000A61C(v32, qword_10099D438);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v13, v33, v32);
  (*(v34 + 56))(v13, 0, 1, v32);
  sub_10075FCDC();

  v35 = *&v26[v29];
  CGAffineTransformMakeRotation(&v39, -0.523598776);
  [v35 setTransform:&v39];
  v36 = [v26 contentView];
  [v36 addSubview:*&v26[v29]];

  v37 = [v26 contentView];
  [v37 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView]];

  return v26;
}

id sub_100651F5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076523C();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076525C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_10076422C();
    sub_10065132C(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
    sub_100770BAC();

    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_10076524C();
    [v1 bounds];
    sub_10076520C();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_100962570;
  if (!qword_100962570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100652364(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100652420()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  v1 = swift_unknownObjectRetain();
  v2 = sub_1006525E0(v1);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1006524B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView);
  sub_10075FB6C();

  v6 = *(v3 + v4);
  sub_10075FD2C();
  sub_10065269C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100760BFC();
}

uint64_t sub_100652588(uint64_t a1)
{
  result = sub_10065269C(&qword_100962588, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007B17E0);
  *(a1 + 8) = result;
  return result;
}

double sub_1006525E0(uint64_t a1)
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_100941400 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  sub_10000A61C(v2, qword_100962530);
  sub_10075FDCC();
  return v3;
}

uint64_t sub_10065269C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006526E4()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_10076341C();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_1009413D0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v2, qword_1009A27F8);
  sub_1000A9194(v11, v4, v12);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FE0C();
  v13 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_1006389FC(v7);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_1006528DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100652B3C();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_10076F95C();
  sub_10000CFBC(v19, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v20, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100652B3C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100652BBC()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100652C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_100356960(a4, a5);
  return v7;
}

double sub_100652D20(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10076C7FC();
  sub_10076ADFC();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100652B3C();
    v13 = sub_10076ADEC();
    sub_100356C74(v13, a4);

    v14 = sub_10076C38C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v11, v5 + v16);
    swift_endAccess();
    sub_1003DC6B0(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C70C();
      if (!v19)
      {
        sub_1000325F0();
        v19 = sub_100770D8C();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_100652FB4(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v6);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    sub_10076C7FC();

    sub_10076ADFC();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100652B3C();
      v5 = sub_10076ADEC();
      sub_1006538A8(v5, a2, v4);
    }

    else
    {
    }
  }

  return result;
}

void sub_1006530A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100652B3C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v5 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  v6 = *(*&v3[v4] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10000D7F8();
  v7 = v6;
  sub_100760BFC();
}

void (*sub_1006532DC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10065389C;
}

void sub_1006533A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
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
}

id sub_100653648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_1009625D0;
  if (!qword_1009625D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100653730(uint64_t a1, uint64_t a2)
{
  v4 = sub_100652B3C();
  sub_100653A54(a1, a2);
}

uint64_t sub_10065379C()
{
  v0 = sub_100652B3C();
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_1006537E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065381C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100653854()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006538A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_10076AC2C();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10000A570(v12, &v11);

  sub_10000A5D4(&unk_100942830, &qword_100782680);
  if (swift_dynamicCast())
  {
    sub_10076AC1C();
    v6 = sub_10076BB5C();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_10015E58C(&v11);
      sub_10076BFCC();
      v8 = *(*(a3 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10075FD2C();
      sub_10000D7F8();
      v9 = v8;
      sub_100760B8C();
    }

    else
    {
    }
  }

  return sub_10000CD74(v12);
}

void sub_100653A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_10076C3FC();
    sub_10076B8EC();
    v8 = v7;

    if (v8)
    {
      v9 = sub_10076FF6C();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_10094CD78];
    v15 = *&v6[qword_10094CD78];
    v16 = *&v6[qword_10094CD78 + 8];
    *v14 = sub_100658B70;
    v14[1] = v13;

    sub_1000167E0(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_1004CD778(v18);
    v20 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
      if ([v21 hasContent])
      {
        v22 = [v21 text];
        if (v22)
        {
LABEL_10:
          v23 = v22;
          v24 = sub_10076FF9C();
          v26 = v25;

          v27 = v26;
          v22 = v24;
LABEL_15:
          v28 = &v19[qword_10095A010];
          *v28 = v22;
          *(v28 + 1) = v27;

          sub_1004CDE04();
          v29 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
          v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel];
          v31 = v19;
          if (v30)
          {
            [v30 removeFromSuperview];
            v30 = *&v3[v29];
          }

          *&v3[v29] = v19;
          v32 = v19;

          sub_1006582B8();
          [v3 addSubview:v32];

          v33 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
          v34 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
          if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v3[v33]) != 0)
          {
            v36 = [v35 hasContent];
          }

          else
          {
            v36 = 0;
          }

          v37 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_100016E2C(&v3[v37], v40, &unk_1009434C0, &qword_100783F60);
          v38 = v41;
          sub_10000CFBC(v40, &unk_1009434C0, &qword_100783F60);
          if (v38 || v36)
          {
            [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];

          return;
        }

LABEL_13:
        v27 = 0;
        goto LABEL_15;
      }

      if (v3[v20] == 1)
      {
        v22 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] text];
        if (v22)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v22 = sub_10076C3EC();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v3[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v3[v10] = 0;

  v39 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v39)
  {

    [v39 setHidden:0];
  }
}

double sub_100653E84()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2A10 = &type metadata for Double;
  qword_1009A2A18 = &protocol witness table for Double;
  qword_1009A29F8 = 0x4030000000000000;
  xmmword_1009A28D0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100012498(&v53, &unk_1009A28E0);
  qword_1009A2908 = sub_100659530;
  unk_1009A2910 = 0;
  sub_100012498(&v50, &unk_1009A2918);
  sub_100012498(&v47, &unk_1009A2940);
  sub_100012498(&v38, &unk_1009A29B8);
  sub_100012498(&v44, &unk_1009A2968);
  sub_100012498(&v41, &unk_1009A2990);
  qword_1009A29E0 = 0;
  unk_1009A29E8 = 0;
  byte_1009A29F0 = 0;
  *&result = 0x1000100010001;
  dword_1009A2A20 = 65537;
  qword_1009A2A28 = 0;
  byte_1009A2A30 = 1;
  return result;
}

double sub_1006544B8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2B80 = &type metadata for Double;
  qword_1009A2B88 = &protocol witness table for Double;
  qword_1009A2B68 = 0x4020000000000000;
  xmmword_1009A2A40 = vdupq_n_s64(0x4061000000000000uLL);
  sub_100012498(&v53, &unk_1009A2A50);
  qword_1009A2A78 = sub_100659530;
  unk_1009A2A80 = 0;
  sub_100012498(&v50, &unk_1009A2A88);
  sub_100012498(&v47, &unk_1009A2AB0);
  sub_100012498(&v38, &unk_1009A2B28);
  sub_100012498(&v44, &unk_1009A2AD8);
  sub_100012498(&v41, &unk_1009A2B00);
  qword_1009A2B50 = 0;
  unk_1009A2B58 = 0;
  byte_1009A2B60 = 0;
  *&result = 16777217;
  dword_1009A2B90 = 16777217;
  qword_1009A2B98 = 0;
  byte_1009A2BA0 = 1;
  return result;
}

double sub_100654AF0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2CF0 = &type metadata for Double;
  qword_1009A2CF8 = &protocol witness table for Double;
  qword_1009A2CD8 = 0x4030000000000000;
  xmmword_1009A2BB0 = vdupq_n_s64(0x4054000000000000uLL);
  sub_100012498(&v53, &unk_1009A2BC0);
  qword_1009A2BE8 = sub_100659530;
  unk_1009A2BF0 = 0;
  sub_100012498(&v50, &unk_1009A2BF8);
  sub_100012498(&v47, &unk_1009A2C20);
  sub_100012498(&v38, &unk_1009A2C98);
  sub_100012498(&v44, &unk_1009A2C48);
  sub_100012498(&v41, &unk_1009A2C70);
  qword_1009A2CC0 = 0;
  unk_1009A2CC8 = 0;
  byte_1009A2CD0 = 0;
  *&result = 0x1000100010001;
  dword_1009A2D00 = 65537;
  qword_1009A2D08 = 0;
  byte_1009A2D10 = 1;
  return result;
}

double sub_100655120()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2E60 = &type metadata for Double;
  qword_1009A2E68 = &protocol witness table for Double;
  qword_1009A2E48 = 0x4024000000000000;
  xmmword_1009A2D20 = vdupq_n_s64(0x4048000000000000uLL);
  sub_100012498(&v53, &unk_1009A2D30);
  qword_1009A2D58 = sub_100659530;
  unk_1009A2D60 = 0;
  sub_100012498(&v50, &unk_1009A2D68);
  sub_100012498(&v47, &unk_1009A2D90);
  sub_100012498(&v38, &unk_1009A2E08);
  sub_100012498(&v44, &unk_1009A2DB8);
  sub_100012498(&v41, &unk_1009A2DE0);
  qword_1009A2E30 = 0;
  unk_1009A2E38 = 0;
  byte_1009A2E40 = 0;
  result = 7.29112205e-304;
  dword_1009A2E70 = 0x1000000;
  qword_1009A2E78 = 0;
  byte_1009A2E80 = 1;
  return result;
}

double sub_100655750()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A2FD0 = &type metadata for Double;
  qword_1009A2FD8 = &protocol witness table for Double;
  qword_1009A2FB8 = 0x4018000000000000;
  xmmword_1009A2E90 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012498(&v53, &unk_1009A2EA0);
  qword_1009A2EC8 = sub_100659530;
  unk_1009A2ED0 = 0;
  sub_100012498(&v50, &unk_1009A2ED8);
  sub_100012498(&v47, &unk_1009A2F00);
  sub_100012498(&v38, &unk_1009A2F78);
  sub_100012498(&v44, &unk_1009A2F28);
  sub_100012498(&v41, &unk_1009A2F50);
  qword_1009A2FA0 = 0;
  unk_1009A2FA8 = 0;
  byte_1009A2FB0 = 0;
  result = 7.29112205e-304;
  dword_1009A2FE0 = 0x1000000;
  qword_1009A2FE8 = 0;
  byte_1009A2FF0 = 1;
  return result;
}

double sub_100655D80()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0CD0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_10076D9AC();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_100940A50 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_1009A0D00);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v44);
  v33(v15, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v4, qword_1009A0D90);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(&v41);
  v33(v17, v3, v0);
  sub_10076D9BC();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v4, qword_1009A0DC0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_10076D9BC();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v37);
  v22(v24, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  qword_1009A3140 = &type metadata for Double;
  qword_1009A3148 = &protocol witness table for Double;
  qword_1009A3128 = 0x4020000000000000;
  xmmword_1009A3000 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100012498(&v53, &unk_1009A3010);
  qword_1009A3038 = sub_100659530;
  unk_1009A3040 = 0;
  sub_100012498(&v50, &unk_1009A3048);
  sub_100012498(&v47, &unk_1009A3070);
  sub_100012498(&v38, &unk_1009A30E8);
  sub_100012498(&v44, &unk_1009A3098);
  sub_100012498(&v41, &unk_1009A30C0);
  qword_1009A3110 = 0;
  unk_1009A3118 = 0;
  byte_1009A3120 = 0;
  *&result = 16777217;
  dword_1009A3150 = 16777217;
  qword_1009A3158 = 0;
  byte_1009A3160 = 1;
  return result;
}

uint64_t sub_1006563D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v4 - 8);
  v54 = &v49 - v5;
  v6 = sub_100768FEC();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v49 = &v49 - v9;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - v16;
  v17 = &selRef_initWithTabBarSystemItem_tag_;
  v18 = [v1 traitCollection];
  v19 = sub_10077071C();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_10015E5E0(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  sub_10076422C();
  v23 = (v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16);
  v55 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v22 + v25, v57);
    sub_10000CF78(v57, v57[3]);
    v17 = &selRef_initWithTabBarSystemItem_tag_;
    sub_100767A2C();
    v27 = v26;
    v29 = v28;
    sub_10000CD74(v57);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[274]];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v31 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v31 = qword_100944CA0;
  }

  v32 = sub_10000A61C(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v56, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_10000CF78(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    sub_10076584C();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v51;
  v41 = *(v51 + 104);
  v41(v50, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v54;
  v41(v54, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  (*(v40 + 56))(v42, 0, 1, v6);
  sub_10033350C();
  v43 = v49;
  sub_10076759C();
  v44 = v56;
  sub_10076440C();
  v46 = v45;

  (*(v52 + 8))(v43, v53);
  result = (*(v11 + 8))(v44, v10);
  v48 = v55;
  *(v55 + 272) = v27;
  *(v48 + 280) = v46;
  *(v48 + 288) = 0;
  return result;
}

double sub_1006569E8(void *a1, double a2)
{
  v5 = sub_10076443C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_1006563D8(v27);
  v12 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E5E0(v2 + v12, v26);
  [v2 layoutMargins];
  if (sub_10077071C())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_10015E5E0(v13, v22);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v14 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v14 = qword_100944CA0;
  }

  v15 = sub_10000A61C(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    sub_1007643EC();
    v17 = v16;
    sub_1007643EC();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_10015E58C(v22);
  sub_10015E58C(v26);
  sub_10015E58C(v27);
  return v19;
}

CGFloat sub_100656D50()
{
  v1 = sub_10076443C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_1006563D8(v22);
  v8 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E5E0(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (sub_10077071C())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_10015E5E0(v10, v17);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v11 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v11 = qword_100944CA0;
  }

  v12 = sub_10000A61C(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    sub_1007643EC();
    v14 = v13;
    sub_1007643EC();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_10015E58C(v17);
  sub_10015E58C(v21);
  sub_10015E58C(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_100657114@<X0>(uint64_t *a1@<X8>)
{
  sub_1006563D8(v140);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = sub_1007626BC();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_100012498(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    v7 = sub_1007626BC();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel(0);
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_100012498(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_10015E5E0(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v25 = sub_10075FD2C();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v27 = sub_1007626BC();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_10000A570(v139, v121);
  sub_100016E2C(&v136, v120, &qword_10094BB30, qword_100796E40);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_100016E2C(&v133, v117, &qword_10094BB30, qword_100796E40);
  v37 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_100333934();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_10015E5E0(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_10000CF78(v127, v128);
  v40 = sub_1007711AC();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  sub_10076D21C();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_10000DB7C(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_100016E2C(v126, v110, &qword_10094BB30, qword_100796E40);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_10000CF78(v110, v111);
    v52 = sub_1007711AC();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    sub_10076D6BC();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_10000DB7C(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30, qword_100796E40);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_100016E2C(v125, v110, &qword_10094BB30, qword_100796E40);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_10000CF78(v110, v111);
    v60 = sub_1007711AC();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    sub_10076D6BC();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_10000DB7C(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30, qword_100796E40);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_10000A570(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_10000CF78(v121, v122);
  v68 = sub_1007711AC();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    sub_10076D6AC();
  }

  else
  {
    sub_10076D6BC();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_10000DB7C(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_100016E2C(v120, v110, &qword_10094BB30, qword_100796E40);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_10000CF78(v110, v111);
    v76 = sub_1007711AC();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    sub_10076D6BC();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_10000DB7C(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30, qword_100796E40);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_100016E2C(v119, &v116[37] + 8, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v118, v110, &qword_10094BB30, qword_100796E40);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_10000CF78(v110, v111);
    v84 = sub_1007711AC();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    sub_10076D6AC();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_10000DB7C(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v110, &qword_10094BB30, qword_100796E40);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_100016E2C(v117, v110, &qword_10094BB30, qword_100796E40);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_10000CF78(v110, v111);
    v92 = sub_1007711AC();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    sub_10076D6BC();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10000CFBC(v117, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v120, &qword_10094BB30, qword_100796E40);
      sub_10015E58C(&v130);
      sub_10000CFBC(v118, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(v124);
      sub_10000CFBC(v125, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v126, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v119, &qword_10094BB30, qword_100796E40);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_10000DB7C(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10000CFBC(v117, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v120, &qword_10094BB30, qword_100796E40);
      sub_10015E58C(&v130);
      sub_10000CFBC(v118, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(v124);
      sub_10000CFBC(v125, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v126, &qword_10094BB30, qword_100796E40);
      sub_10000CFBC(v119, &qword_10094BB30, qword_100796E40);
    }

    sub_10000CD74(v110);
  }

  else
  {
    sub_10000CFBC(v117, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v120, &qword_10094BB30, qword_100796E40);
    sub_10015E58C(&v130);
    sub_10000CFBC(v118, &qword_10094BB30, qword_100796E40);
    sub_10000CD74(v124);
    sub_10000CFBC(v125, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v126, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v119, &qword_10094BB30, qword_100796E40);
    sub_10000CFBC(v110, &qword_10094BB30, qword_100796E40);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10000CFBC(&v136, &qword_10094BB30, qword_100796E40);
  sub_10015E58C(v140);
  sub_10000CD74(v121);
  sub_10000CD74(v127);
  sub_10000CFBC(&v133, &qword_10094BB30, qword_100796E40);
  return sub_10000CD74(v139);
}

void sub_1006582B8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    sub_10076FF9C();
  }

  v29 = sub_10077002C();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      sub_1007625CC();
      sub_1007625DC();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_100940A98;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_10076D3DC();
    v40 = sub_10000A61C(v39, qword_1009A0DD8);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    sub_1007625DC();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_1000325F0();
      v36 = v43;
      v35 = sub_100770D1C();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

double sub_1006587E0()
{
  sub_10015E58C(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics);
  sub_10015E58C(v0 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics);

  return result;
}

id sub_100658880(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006589BC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200, &unk_100785840);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100658B30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100658B78()
{
  sub_10000CD74(v0 + 4);

  sub_10000CD74(v0 + 11);
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 21);
  sub_10000CD74(v0 + 26);
  sub_10000CD74(v0 + 31);
  sub_10000CD74(v0 + 39);
  if (v0[50])
  {
    sub_10000CD74(v0 + 47);
  }

  if (v0[55])
  {
    sub_10000CD74(v0 + 52);
  }

  if (v0[60])
  {
    sub_10000CD74(v0 + 57);
  }

  sub_10000CD74(v0 + 62);
  if (v0[70])
  {
    sub_10000CD74(v0 + 67);
  }

  if (v0[75])
  {
    sub_10000CD74(v0 + 72);
  }

  if (v0[80])
  {
    sub_10000CD74(v0 + 77);
  }

  if (v0[85])
  {
    sub_10000CD74(v0 + 82);
  }

  if (v0[90])
  {
    sub_10000CD74(v0 + 87);
  }

  if (v0[95])
  {
    sub_10000CD74(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

char *sub_100658C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = sub_10076E3AC();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076E8BC();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A0CE8);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = sub_1007626AC();
  v47 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v12, qword_1009A0D48);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2D20, &v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics]);
  if (qword_100941430 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2E90, &v1[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  sub_100770C0C();
  sub_10076E38C();
  sub_100770C1C();
  v28 = qword_100940A50;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v12, qword_1009A0D00);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  sub_1007625DC();

  v32 = qword_100940A80;
  v33 = *&v27[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v12, qword_1009A0D90);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  sub_1007625DC();

  v35 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v43 = swift_allocObject();
  v58 = xmmword_100783DD0;
  *(v43 + 16) = xmmword_100783DD0;
  *(v43 + 32) = sub_10076E88C();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_10076E3FC();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v27;
}

id sub_100659534()
{
  type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_100659570(int a1, int a2, uint64_t a3, uint64_t a4, id a5)
{
  if ([a5 horizontalSizeClass] == 1)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  }

  else
  {
    type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  }

  sub_100356960(a4, a5);
  return v7;
}

id sub_10065964C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100962690;
  if (!qword_100962690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100659738(uint64_t a1, uint64_t a2)
{
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artworkLoader] = v13;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artwork] = a1;
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v4 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v4 setMinimumInteritemSpacing:0.0];
  [v4 setMinimumLineSpacing:0.0];
  [v4 setScrollDirection:1];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for GalleryViewController();
  v5 = objc_msgSendSuper2(&v12, "initWithCollectionViewLayout:", v4);
  v6 = [v5 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setContentInsetAdjustmentBehavior:2];
  }

  v8 = v5;
  v9 = [v8 navigationItem];
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v8 action:"dismissFrom:"];

  [v9 setRightBarButtonItem:v10];

  return v8;
}

id sub_100659968()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_100659B20(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for GalleryViewController();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_100760BDC();
}

void sub_100659BA8(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for GalleryViewController();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_100760BDC();
}

void sub_100659C18(uint64_t a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setHidesBarsOnTap:1];
  }

  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 barHideOnTapGestureRecognizer];

    [v6 addTarget:v1 action:"tapStateChangedOn:"];
  }

  v7 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v7 setDirection:8];
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 addGestureRecognizer:v7];

    v10 = [v1 collectionView];
    if (v10)
    {
      if (qword_100941440 != -1)
      {
        v24 = v10;
        swift_once();
        v10 = v24;
      }

      v11 = v10;
      [v10 setBackgroundColor:qword_1009626B0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setAllowsSelection:0];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setAlwaysBounceHorizontal:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setShowsHorizontalScrollIndicator:0];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setPagingEnabled:1];
    }

    v20 = [v1 collectionView];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for ArtworkCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007708FC();
      v23 = sub_10076FF6C();

      [v21 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v23];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100659F4C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

id sub_10065A0E8(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_10065AE44;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10009AEDC;
    v7[3] = &unk_10089E4B8;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_10065A20C(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_100941448 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_1009626B8;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_100941440 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_1009626B0;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_10065A3BC()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_10065AE24;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10009AEDC;
      v10[3] = &unk_10089E468;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10065A544(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_100941448 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_1009626B8];
  }
}

unint64_t sub_10065A6A8(void *a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell(0);
  sub_1007708FC();
  v5 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension21GalleryViewController_artwork);
  result = sub_10075E09C();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  sub_10076BEFC();
  sub_10076BEFC();
  sub_10076BEFC();
  [*&v8[v9] contentMode];
  sub_10076BFCC();
  v21 = *&v8[v9];
  sub_10076BF7C();
  sub_10075FCCC();
  [v21 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_1000325F0();
    sub_100770D5C();
  }

  sub_10075FB8C();

  v22 = *&v8[v9];
  sub_10075FD2C();
  sub_10000D7F8();
  v23 = v22;
  sub_100760B8C();

  return v8;
}

uint64_t sub_10065ADEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10065AE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10065AE58()
{
  sub_10000A5D4(&unk_1009609A0, qword_1007AFD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007844F0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  sub_100179CCC(inited);
  v8 = v7;
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1009626F8 = v8;
  return result;
}

double sub_10065AF68@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_1006938BC(v5, v4), v5, (v4 & 1) != 0) || (, sub_10000A5D4(&qword_100962758, qword_1007B1AA0), sub_10076ACAC(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_100016F40(0, &qword_10094F610, UIImage_ptr);
    *&v8 = v7;
    sub_10000CD64(&v8, a2);
  }

  return result;
}

id sub_10065B058@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10065B234(void *a1@<X8>)
{
  v4 = sub_10076F0EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v23 - v10;
  v12 = [v2 activityType];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (sub_1006938BC(v12, *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v14 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100016F40(0, &qword_10094F610, UIImage_ptr);
    *a1 = v14;
    return;
  }

  v15 = dispatch_semaphore_create(0);
  v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkLoader];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v24 = a1;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = v15;

  sub_100760B7C();

  sub_10002CBB4(v25);

  sub_10076F0DC();
  sub_10076F15C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_10077081C();
  v19(v11, v4);
  v20 = v24;

  sub_10000A5D4(&qword_100962758, qword_1007B1AA0);
  sub_10076ACAC();

  v21 = *&v25[0];
  v20[3] = sub_100016F40(0, &qword_10094F610, UIImage_ptr);
  if (v21)
  {

    *v20 = v21;
  }

  else
  {
    v22 = [objc_allocWithZone(UIImage) init];

    *v20 = v22;
  }
}

void sub_10065B560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v7 = sub_10076BF6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_10076D39C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v19 = Strong;
  if (!a1)
  {

LABEL_9:
    sub_10077083C();
    return;
  }

  v40 = OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_artworkConfig;
  v39 = a1;

  sub_100764ADC();
  v21 = v20;
  v23 = v22;

  v41 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v21, v23}];
  [v41 setOpaque:0];
  sub_10076D3AC();
  v24 = sub_10076D38C();
  (*(v15 + 8))(v17, v14);
  if (v24)
  {
    if (v19[OBJC_IVAR____TtC20ProductPageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v25 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v25 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v8 + 104))(v13, *v25, v7);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for Artwork.Style.unadorned(_:), v7);
  }

  v26 = v41;
  sub_10075FCCC();
  v27 = v39;
  sub_10075FCAC();
  sub_100016F40(0, &qword_100962760, UIGraphicsImageRendererFormat_ptr);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  sub_100764AEC();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10065BC70;
  *(v33 + 24) = v32;
  aBlock[4] = sub_10065BCD0;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004CD72C;
  aBlock[3] = &unk_10089E580;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(v37);
    *(&v38 - 2) = v36;

    sub_10076ACCC();

    sub_10077083C();
  }
}

id sub_10065BAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10065BBB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065BBF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10065BC38()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10065BC70()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

double sub_10065BCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10065BCF0(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

char *sub_10065BD44(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v11 = sub_10075FB4C();
  sub_1007638EC();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v13 = sub_1007600EC();
  v15 = sub_1004B958C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_10065BEA4()
{
  v1 = sub_10076D1FC();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075FD8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10075FDAC();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_100940350 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v4, qword_10099F740);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder];
  v31 = sub_10075FD2C();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_1005BEF00();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  sub_10075FD9C();
  sub_10076422C();
  sub_10075FD6C();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_10065C218(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10065C2BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB4C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v5 = sub_1007600EC();
  v7 = sub_1004B958C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10065C39C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10075EBAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 != enum case for LegacyAppState.waiting(_:))
  {
    if (v7 == enum case for LegacyAppState.purchased(_:))
    {
      (*(v4 + 96))(v6, v3);
      v10 = sub_10076093C();
    }

    else
    {
      if (v7 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v4 + 8))(v6, v3);
        v9 = &enum case for AdInteractionType.update(_:);
        goto LABEL_12;
      }

      if (v7 == enum case for LegacyAppState.downloadable(_:))
      {
        (*(v4 + 8))(v6, v3);
        v9 = &enum case for AdInteractionType.download(_:);
        goto LABEL_12;
      }

      if (v7 == enum case for LegacyAppState.paused(_:) || v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
      {
        (*(v4 + 96))(v6, v3);
        v8 = sub_10075EB1C();
        goto LABEL_3;
      }

      if (v7 != enum case for LegacyAppState.openable(_:))
      {
        if (v7 != enum case for LegacyAppState.buyable(_:))
        {
          if (v7 == enum case for LegacyAppState.installed(_:))
          {
            goto LABEL_7;
          }

          if (v7 != enum case for LegacyAppState.unknown(_:))
          {
            v14 = enum case for AdInteractionType.open(_:);
            v15 = sub_10076CF4C();
            (*(*(v15 - 8) + 104))(a2, v14, v15);
            return (*(v4 + 8))(v6, v3);
          }
        }

        v9 = &enum case for AdInteractionType.getArcade(_:);
        goto LABEL_12;
      }

      (*(v4 + 96))(v6, v3);

      v10 = sub_100764E5C();
    }

    (*(*(v10 - 8) + 8))(v6, v10);
LABEL_7:
    v9 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  (*(v4 + 96))(v6, v3);
  v8 = sub_1007627AC();
LABEL_3:
  (*(*(v8 - 8) + 8))(v6, v8);
  v9 = &enum case for AdInteractionType.cancel(_:);
LABEL_12:
  v11 = *v9;
  v12 = sub_10076CF4C();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_10065C770@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10076491C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075EBAC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = sub_1007627AC();
LABEL_3:
    (*(*(v12 - 8) + 8))(v10, v12);
    v13 = &enum case for AdInteractionType.cancel(_:);
    goto LABEL_12;
  }

  if (v11 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v8 + 96))(v10, v7);
    v14 = sub_10076093C();
LABEL_6:
    (*(*(v14 - 8) + 8))(v10, v14);
LABEL_7:
    v13 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  if (v11 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v8 + 8))(v10, v7);
    v13 = &enum case for AdInteractionType.update(_:);
    goto LABEL_12;
  }

  if (v11 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v8 + 8))(v10, v7);
    v13 = &enum case for AdInteractionType.download(_:);
    goto LABEL_12;
  }

  if (v11 == enum case for LegacyAppState.paused(_:) || v11 == enum case for LegacyAppState.downloading(_:) || v11 == enum case for LegacyAppState.installing(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = sub_10075EB1C();
    goto LABEL_3;
  }

  if (v11 == enum case for LegacyAppState.openable(_:))
  {
    (*(v8 + 96))(v10, v7);

    v14 = sub_100764E5C();
    goto LABEL_6;
  }

  if (v11 != enum case for LegacyAppState.buyable(_:))
  {
    if (v11 == enum case for LegacyAppState.installed(_:))
    {
      goto LABEL_7;
    }

    if (v11 != enum case for LegacyAppState.unknown(_:))
    {
      v18 = enum case for AdInteractionType.open(_:);
      v19 = sub_10076CF4C();
      (*(*(v19 - 8) + 104))(a2, v18, v19);
      return (*(v8 + 8))(v10, v7);
    }
  }

  (*(v4 + 104))(v6, enum case for AdvertActionMetrics.PurchaseType.standard(_:), v3);
  sub_10065CD18();
  sub_10077018C();
  sub_10077018C();
  if (v21[2] == v21[0] && v21[3] == v21[1])
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = sub_10077167C();
    (*(v4 + 8))(v6, v3);

    if ((v20 & 1) == 0)
    {
      v13 = &enum case for AdInteractionType.getPreorder(_:);
      goto LABEL_12;
    }
  }

  v13 = &enum case for AdInteractionType.get(_:);
LABEL_12:
  v15 = *v13;
  v16 = sub_10076CF4C();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

uint64_t sub_10065CCBC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10065CD18()
{
  result = qword_100962848;
  if (!qword_100962848)
  {
    sub_10076491C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100962848);
  }

  return result;
}

uint64_t sub_10065CD80@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100941218 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    v12 = v11;
    v13 = qword_1009A23C8;
LABEL_9:
    v14 = sub_10000A61C(v11, v13);
    a1[3] = v12;
    a1[4] = &protocol witness table for StaticDimension;
    v15 = sub_10000DB7C(a1);
    return (*(*(v12 - 8) + 16))(v15, v14, v12);
  }

  if (v10 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    v12 = v11;
    v13 = qword_1009A23B0;
    goto LABEL_9;
  }

  sub_100642BFC(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10065D058@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D9AC();
    v13 = sub_10000A61C(v12, qword_1009A23B0);
    *(a2 + 3) = v12;
    *(a2 + 4) = &protocol witness table for StaticDimension;
    v14 = sub_10000DB7C(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_100643F38(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10065D2CC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  sub_10076463C();
  sub_1003B2204(v8);
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v10 = sub_10076D9AC();
    v11 = sub_10000A61C(v10, qword_1009A23E0);
    a2[3] = v10;
    a2[4] = &protocol witness table for StaticDimension;
    v12 = sub_10000DB7C(a2);
    return (*(*(v10 - 8) + 16))(v12, v11, v10);
  }

  else
  {
    sub_1002C174C();
    sub_100768A4C();
    return sub_1003B2204(v5);
  }
}

char *sub_10065D48C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  sub_100766D9C();
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView(0);
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView] + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8) = &off_10089E5E0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC20ProductPageExtensionP33_F7854DF1AF16A1A2A8136C94AC46A1AB11PageControl_delegate + 8) = &off_10089E5D0;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = sub_10076C03C();
  v32[3] = v21;
  v32[4] = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v22 = sub_10000DB7C(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = sub_10076C90C();
  sub_10000CD74(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress] = v23;

    v26 = *&v17[v24];
    if (v26)
    {
      [v26 setDelegate:v17];
      v27 = *&v17[v24];
    }

    else
    {
      v27 = 0;
    }

    [*&v17[v19] setProgress:v27];
    sub_10065F2C8();
  }

  [v17 addSubview:*&v17[v18]];
  [v17 addSubview:*&v17[v19]];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v17 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v17 selector:"voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  return v17;
}

void sub_10065D93C(char a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = sub_10076C03C();
  v12 = v3;
  v4 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v13 = v4;
  v5 = sub_10000DB7C(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = sub_10076C90C();
  sub_10000CD74(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        sub_10065E9F4(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_10000DB7C(v11);
      v7(v9, v6, v3);
      v10 = sub_10076C90C();
      sub_10000CD74(v11);
      if ((v10 & 1) == 0)
      {
        sub_100660768(0);
      }
    }
  }
}

void sub_10065DA90()
{
  v1 = sub_10076C03C();
  v10 = v1;
  v2 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = v2;
  v3 = sub_10000DB7C(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = sub_10076C90C();
  sub_10000CD74(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_10000DB7C(v9);
        v5(v7, v4, v1);
        v8 = sub_10076C90C();
        sub_10000CD74(v9);
        if ((v8 & 1) == 0)
        {
          sub_100660768(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
    {
      sub_10065E9F4(0.0);
    }
  }
}

id sub_10065DC0C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView(0);
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView];
  sub_10076422C();
  [v1 setFrame:?];
  sub_10076422C();
  sub_100770A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v15 = CGRectGetMidX(v18) + v12 * -0.5;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  return [v10 setFrame:{v15, CGRectGetMaxY(v19) - v14, v12, v14}];
}

id sub_10065DD9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 24) == v2)
      {

        v9 = *(v6 + 32);

        return v9;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_10065DEE0(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_12:

  *&v26[v5] = a1;

  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      v15 = *&v26[v5];
      if (v15 >> 62)
      {
        v24 = v11;
        v18 = v13;
        v16 = sub_10077158C();
        v13 = v18;
        v11 = v24;
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 32.0;
      if (v16 <= 1)
      {
        v17 = 20.0;
      }

      *&v13[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = sub_10077158C();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = sub_10077158C();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v19 setHidden:v22 < 2];
  sub_100349CBC(a1, a2);

  return [v26 setNeedsLayout];
}

double sub_10065E1C8(int a1, int a2)
{
  v48 = sub_100766EFC();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v7 & 0xC000000000000001;
    v52 = a1 & 1;
    v46 = v5 + 1;
    v49 = a2;
    v50 = a1;
    v51 = v7;
    v53 = v8;
    do
    {
      if (v55)
      {
        v20 = sub_10077149C();
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v7 + 8 * v9 + 32);
      }

      v5 = v20;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v8 = sub_10077158C();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_100458510(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);

          isa = sub_1007701AC().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_10016D8F8(v29);

          v33 = sub_1007701AC().super.isa;
          a1 = v50;

          v34 = v32;
          v7 = v51;
          [v34 setColors:v33];

          v35 = *&v23[v25];
          a2 = v49;
          [v35 setNeedsDisplay];
        }

        else
        {
          [*&v23[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem) || (, v37 = sub_10076279C(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        sub_100766F1C();

        v39 = sub_100766EEC();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_100458510(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);

      v16 = sub_1007701AC().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_10016D8F8(v14);

      v18 = sub_1007701AC().super.isa;
      v7 = v51;

      v19 = v17;
      a1 = v50;
      [v19 setColors:v18];

      [*&v36[v10] setNeedsDisplay];
LABEL_6:
      [v36 setNeedsLayout];
LABEL_7:

      ++v9;
    }

    while (v21 != v53);
  }

  return result;
}

void sub_10065E718()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = sub_10076C03C();
    v26 = v14;
    v15 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v27 = v15;
    v16 = sub_10000DB7C(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = sub_10076C90C();
    sub_10000CD74(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_10000DB7C(v25);
    v18(v23, v17, v14);
    v24 = sub_10076C90C();
    sub_10000CD74(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_100660768(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = sub_10076C03C();
  v26 = v6;
  v7 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v27 = v7;
  v8 = sub_10000DB7C(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = sub_10076C90C();
  sub_10000CD74(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_10000DB7C(v25);
    v10(v20, v9, v6);
    v21 = sub_10076C90C();
    sub_10000CD74(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_10034A1E4(v12);
}

void sub_10065E9F4(double a1)
{
  v3 = sub_10076F08C();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076F0CC();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076F0EC();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = sub_100766DDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076C03C();
  v50 = v14;
  v51 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v15 = sub_10000DB7C(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = sub_10076C90C();
  sub_10000CD74(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = sub_100766DAC();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (sub_10077158C() < 2)
        {
          return;
        }
      }

      else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        sub_100766DCC();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_1006609C8;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100177EA0;
        v50 = &unk_10089E698;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_100660768(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
          v28 = sub_10077068C();
          sub_10076F0DC();
          v29 = v38;
          sub_10076F15C();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_100660A08;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_10009AEDC;
          v50 = &unk_10089E6E8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          sub_10076F0AC();
          aBlock = _swiftEmptyArrayStorage;
          sub_100660A10(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
          sub_1000852B8();
          v34 = v42;
          v35 = v45;
          sub_1007712CC();
          sub_10077064C();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_10065F174(void *a1, uint64_t a2)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);

      sub_10034A1E4(1u);
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_100660768(0);
    }
  }
}

void sub_10065F22C(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_10065F2C8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10076C03C();
  v10 = v1;
  v11 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v2 = sub_10000DB7C(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = sub_10076C90C();
  sub_10000CD74(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_1006609A8;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100177EA0;
    v10 = &unk_10089E670;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_10065F4E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100766DDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [*(Strong + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
      v14 = v12;

      if ((v13 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v13 + v11 + 4);
LABEL_7:
          v17 = v16;

          v13 = *&v17[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView];

          v18 = *(*(*(v13 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
          if (!v18)
          {
            goto LABEL_35;
          }

          type metadata accessor for VideoView(0);
          v19 = swift_dynamicCastClass();
          if (!v19)
          {
            goto LABEL_35;
          }

          v20 = v19;
          v14 = v18;

          v21 = *(v20 + qword_1009602F0);
          if (!v21)
          {
            v13 = v14;
            goto LABEL_35;
          }

          v13 = v21;
          v22 = sub_1007604FC();
          if (!v22)
          {
LABEL_33:

LABEL_35:
            return;
          }

          v2 = v22;
          [v22 duration];
          Seconds = CMTimeGetSeconds(&time);
          [v2 currentTime];
          v4 = CMTimeGetSeconds(&time);
          if (vabdd_f64(v4, Seconds) > 0.5 || (swift_beginAccess(), (v23 = swift_unknownObjectWeakLoadStrong()) == 0) || (v24 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration, v25 = v23, swift_beginAccess(), (*(v6 + 16))(v8, &v25[v24], v5), LOBYTE(v24) = sub_100766DAC(), v25, (*(v6 + 8))(v8, v5), (v24 & 1) == 0) || (swift_beginAccess(), (v15 = swift_unknownObjectWeakLoadStrong()) == 0))
          {
LABEL_26:
            if (v4 / Seconds > 0.0)
            {
              v37 = v4 / Seconds;
            }

            else
            {
              v37 = 0.0;
            }

            swift_beginAccess();
            v38 = swift_unknownObjectWeakLoadStrong();
            if (v38)
            {
              v39 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress);
              v40 = v38;
              v41 = v39;

              if (v39)
              {
                *&v42 = v37;
                [v41 setCurrentProgress:v42];
              }
            }

            v14 = v2;
            goto LABEL_33;
          }

          v26 = *&v15[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews];
          if (!(v26 >> 62))
          {
            v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_17;
          }

LABEL_40:
          v43 = v15;
          v27 = sub_10077158C();
          v15 = v43;
LABEL_17:

          if (v27 >= 2)
          {
            swift_beginAccess();
            v28 = swift_unknownObjectWeakLoadStrong();
            if (!v28 || (v29 = v28[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isVoiceOverRunning], v28, (v29 & 1) == 0))
            {
              swift_beginAccess();
              v30 = swift_unknownObjectWeakLoadStrong();
              if (!v30 || (v31 = v30[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isReducedMotionEnabled], v30, (v31 & 1) == 0))
              {
                swift_beginAccess();
                v32 = swift_unknownObjectWeakLoadStrong();
                if (!v32 || (v33 = v32[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively], v32, (v33 & 1) == 0))
                {
                  swift_beginAccess();
                  v34 = swift_unknownObjectWeakLoadStrong();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);

                    sub_10034A1E4(1u);
                  }
                }
              }
            }
          }

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_40;
      }

      v16 = sub_10077149C();
      goto LABEL_7;
    }
  }
}

void sub_10065FA28(uint64_t a1, uint64_t a2)
{
  v5 = sub_1007604EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100962960, &qword_100797F18);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100660860(v2 + v16, v19);
  if (v20)
  {
    sub_10000A570(v19, v18);
    sub_1006608D0(v19);
    sub_10000CF78(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem))
    {

      sub_10076274C();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_100265560(v12);
    sub_10000CD74(v18);
  }

  else
  {
    sub_1006608D0(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_10065FCA4(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_100660860(v3 + v10, v25);
  if (!v26)
  {
    return sub_1006608D0(v25);
  }

  sub_10000A570(v25, v24);
  sub_1006608D0(v25);
  sub_10000CF78(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v23 = a1;
  if (v11 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_10077149C();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v12 = sub_10077158C();
          goto LABEL_4;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v14 + 24) == a3)
      {

        a3 = *(v14 + 32);

        goto LABEL_18;
      }

      ++v13;
    }

    while (v15 != v12);
  }

  a3 = 0;
LABEL_18:
  v17 = *(v23 + v22);
  if (v17 >> 62)
  {
    v11 = sub_10077158C();
  }

  else
  {
    v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = sub_10077149C();
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (*(v19 + 24) == a2)
      {
        break;
      }

      ++v18;
      if (v20 == v11)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v19 + 32);
  }

  else
  {
LABEL_31:

    v21 = 0;
  }

  sub_1002676A8(v3, v21);

  return sub_10000CD74(v24);
}

void sub_100660088(uint64_t a1, uint64_t *a2, unsigned int (*a3)(uint64_t))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3(a1))
  {
    *(v3 + v5) = (a3)();
    v7 = sub_10076C03C();
    v16 = v7;
    v8 = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v17 = v8;
    v9 = sub_10000DB7C(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = sub_10076C90C();
    sub_10000CD74(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_10000DB7C(v15);
        v11(v13, v10, v7);
        v14 = sub_10076C90C();
        sub_10000CD74(v15);
        if ((v14 & 1) == 0)
        {
          sub_100660768(0);
        }
      }

      else
      {
        sub_10065E9F4(0.0);
      }
    }
  }
}

uint64_t sub_100660204(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_10075D7BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView(uint64_t a1)
{
  result = qword_100962920;
  if (!qword_100962920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100660428(uint64_t a1)
{
  result = sub_100766DDC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100660524(char *a1, uint64_t a2, unsigned __int8 a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_10034A1E4(a3);
    swift_unknownObjectRelease();
  }
}

id sub_1006606F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100660768(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer) = a1;
  v4 = sub_10076C03C();
  v7[3] = v4;
  v7[4] = sub_100660A10(&qword_100947230, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v5 = sub_10000DB7C(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_100660860(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094F168, qword_100797F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006608D0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094F168, qword_100797F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100660938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100660970()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006609B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006609D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100660A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100660A58()
{
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_100766D9C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControlProgress) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_100660BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v34 = sub_10076F9AC();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v32 = a1;
  v33 = &v31 - v19;
  v20 = *&v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v21 = sub_1006620E8(a1, a2, a3, a4, v6);
  [v20 setAttributedText:v21];

  v22 = v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn];
  v6[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] = a5;
  if (v22 != (a5 & 1))
  {
    sub_100661454();
  }

  v39 = &type metadata for String;
  v36 = a3;
  v37 = a4;
  memset(v35, 0, sizeof(v35));

  sub_10076F99C();
  sub_1000258C0(v35);
  sub_1000258C0(&v36);
  if (a2)
  {
    v23 = &type metadata for String;
    v24 = a2;
    v25 = v32;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v38 = 0;
  }

  v36 = v25;
  v37 = v24;
  v39 = v23;

  sub_10076F98C();
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v34;
  v26(v27, v34);
  sub_1000258C0(&v36);
  v39 = &type metadata for Bool;
  LOBYTE(v36) = a5 & 1;
  v29 = v33;
  sub_10076F98C();
  v26(v17, v28);
  sub_1000258C0(&v36);
  sub_100770B9C();
  v26(v29, v28);
  return [v6 setNeedsLayout];
}

char *sub_100660EB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076E3DC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label;
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A3190);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v18, v21, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  (*(v13 + 104))(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v19] = sub_1007626AC();
  v24 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  *&v5[v24] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] = 0;
  v25 = [objc_allocWithZone(UIGlassEffect) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_glassEffect] = v25;
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill] = v26;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill;
  v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill];
  v30 = v27;
  v31 = v29;
  sub_10076E3CC();
  sub_100770C2C();

  v32 = [v30 contentView];
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = [v30 contentView];
  [v33 addSubview:*&v27[v28]];

  v34 = [*&v27[v28] contentView];
  [v34 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label]];

  v35 = [*&v27[v28] contentView];
  v36 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  [v35 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage]];

  sub_100661454();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100783DD0;
  *(v37 + 32) = sub_10076E4CC();
  *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v38 = v30;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v39 = *&v30[v36];
  v40 = [v38 traitCollection];

  v41 = sub_1006623E4();
  [v39 setImage:v41];

  sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
  sub_10077074C();
  *(swift_allocObject() + 16) = ObjectType;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v38;
}

void sub_100661454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn] == 1)
  {
    v13 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v13 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_glassEffect];
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v6 = v13;
      v7 = sub_100770EEC();

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    [v3 setTintColor:v13];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill] setEffect:v3];
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v1[v2] == 1)
  {
    v8 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v8 = sub_100770CFC();
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v10 = v8;
  [v9 setTextColor:v10];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v12 = 0.0;
  if (v1[v2])
  {
    v12 = 1.0;
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage] setAlpha:v12];
  [v11 setTintColor:v10];

  [v1 setNeedsDisplay];
  [v1 setNeedsLayout];
}

id sub_100661684(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v3 = [a1 traitCollection];
  v4 = sub_1006623E4();

  [v2 setImage:v4];

  return [a1 setNeedsLayout];
}

id sub_10066175C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076997C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v9);
  v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label];
  v12 = [v53 attributedText];
  LODWORD(v52) = v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn];
  v13 = [v1 contentView];
  [v13 bounds];

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v14 = qword_100941458;
  v51 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A3190);
  sub_100770B2C();
  v16 = sub_10076C04C();
  v55 = v16;
  v56 = sub_10004C7BC();
  v17 = sub_10000DB7C(v54);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_10076C90C();
  sub_10000CD74(v54);
  sub_10076993C();
  sub_10076994C();
  (*(v8 + 8))(v11, v7);
  sub_10000CF78(v54, v55);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v3);
  sub_100770AAC();
  v19 = v18;
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = [v1 traitCollection];
  v23 = sub_1006623E4();

  if (LODWORD(v52))
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v19 + v26;
  sub_10000CD74(v54);

  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_pill];
  v29 = [v1 contentView];
  [v29 frame];

  v30 = v27;
  v31 = fmax(v21, 40.0);
  sub_100770A4C();
  [v28 setFrame:?];
  v52 = v30;
  v32 = sub_1006625D4(0.0);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v53;
  [v53 sizeThatFits:{v35, v37}];
  v51 = v40;
  v42 = v41;
  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v30;
  v59.size.height = v31;
  v44 = floor((CGRectGetHeight(v59) - v42) * 0.5);
  v45 = [v1 contentView];
  [v45 frame];

  v46 = *&v51;
  sub_100770A4C();
  [v39 setFrame:?];
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage];
  v48 = v52;
  [v47 sizeThatFits:{v52, v31}];
  v60.origin.x = MinX;
  v60.origin.y = v44;
  v60.size.width = v46;
  v60.size.height = v42;
  CGRectGetMaxX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v48;
  v61.size.height = v31;
  CGRectGetHeight(v61);
  v49 = [v1 contentView];
  [v49 frame];

  sub_100770A4C();
  return [v47 setFrame:?];
}

void sub_100661E30(void *a1)
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation);
    if (v4)
    {
      v8 = a1;
      v5 = v4;
      v6 = [v1 layer];
      v7 = sub_10076FF6C();
      [v6 addAnimation:v5 forKey:v7];
    }
  }
}

uint64_t sub_10066201C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A3190);
  v1 = sub_10000A61C(v0, qword_1009A3190);
  if (qword_100940EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006620E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  sub_10000A61C(v5, qword_1009A3190);
  v6 = sub_100770B2C();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:2];

  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = sub_10076FF6C();
    v12 = [v10 initWithString:v11];

    v13 = [objc_opt_self() textAttachmentWithImage:v9];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    [v12 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = sub_10076FF6C();
    v17 = [v15 initWithString:v16];

    [v12 appendAttributedString:v17];
    v18 = objc_allocWithZone(NSAttributedString);
    v19 = sub_10076FF6C();
    v20 = [v18 initWithString:v19];

    [v12 appendAttributedString:v20];
    v21 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v12];
  }

  else
  {
LABEL_6:
    v22 = objc_allocWithZone(NSAttributedString);
    v12 = sub_10076FF6C();
    v21 = [v22 initWithString:v12];
  }

  return v21;
}

id sub_1006623E4()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.xmark(_:), v0, v2);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940EE8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  sub_10000A61C(v5, qword_1009A1AB0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = sub_100770B3C();

  v8 = [objc_opt_self() configurationWithFont:v7 scale:-1];
  v9 = sub_10076046C();

  (*(v1 + 8))(v4, v0);
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

void sub_1006625F8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_label;
  if (qword_100941458 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A3190);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_closeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension21GuidedSearchTokenCell_isOn) = 0;
  sub_10077156C();
  __break(1u);
}

char *sub_10066288C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(sub_1007626BC());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel] = sub_1007626AC();
  type metadata accessor for HeaderButton(0);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v10, qword_1009A0C40);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton] = sub_10076312C();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton];
  sub_1007641DC();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E3FC();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_100662DD4(uint64_t a1)
{
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10095C900, &qword_1007AA098);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel];
  sub_1007625CC();
  v20 = *(v8 + 56);
  sub_100389394(v19, v10);
  v28 = a1;
  sub_100389394(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_100389394(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_100664E30(&qword_10095C918, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v24 = sub_10076FF1C();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10000CFBC(v19, &unk_100943250, &unk_1007841D0);
      v25(v16, v3);
      sub_10000CFBC(v10, &unk_100943250, &unk_1007841D0);
      v22 = v28;
      if (v24)
      {
        return sub_10000CFBC(v22, &unk_100943250, &unk_1007841D0);
      }

      goto LABEL_7;
    }

    sub_10000CFBC(v19, &unk_100943250, &unk_1007841D0);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10000CFBC(v10, &qword_10095C900, &qword_1007AA098);
    v22 = v28;
LABEL_7:
    sub_100389394(v22, v13);
    sub_1007625DC();
    [v27 setNeedsLayout];
    return sub_10000CFBC(v22, &unk_100943250, &unk_1007841D0);
  }

  sub_10000CFBC(v19, &unk_100943250, &unk_1007841D0);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v10, &unk_100943250, &unk_1007841D0);
  v22 = v28;
  return sub_10000CFBC(v22, &unk_100943250, &unk_1007841D0);
}

uint64_t sub_1006631C0()
{
  v1 = sub_10076D1FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1001DFBC4(&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  sub_10076422C();
  sub_100663AF4(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10000CF78(v10, v10[3]);
  sub_10076DFCC();
  (*(v2 + 8))(v4, v1);
  sub_10000CD74(v10);
  return sub_100664DC0(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  sub_100663AF4(*(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), v5, a1, v7);
  sub_10000CF78(v7, v7[3]);
  sub_10076DFCC();
  return sub_10000CD74(v7);
}

double sub_100663490(void *a1, double a2, double a3)
{
  sub_1001DFBC4(v3 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_metrics, v10);
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
  v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v12 = &protocol witness table for UIView;
  v13 = v5;
  v14 = &protocol witness table for UIView;
  sub_100663AF4(v11, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, a1, v9);
  sub_10000CF78(v9, v9[3]);
  sub_10076D2AC();
  v7 = v6;
  sub_10000CD74(v9);
  sub_100664DC0(v10);
  return v7;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  sub_100663AF4(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), v3, a1, v7);
  sub_10000CF78(v7, v7[3]);
  sub_10076D2AC();
  v5 = v4;
  sub_10000CD74(v7);
  return v5;
}

double sub_1006636E0(void *a1, uint64_t a2, NSString a3, double a4, double a5)
{
  v8 = [a1 traitCollection];
  if (qword_10093F988 != -1)
  {
    swift_once();
  }

  v9 = qword_10094C0F0;
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v9 setTitle:a3 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a4, a5}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_1006638B4(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void), double a6, double a7)
{
  v10 = *(a4 + 8);
  sub_1001DFBC4(a2, v15);
  v16 = a3;
  v17 = v10;
  v18 = a5;
  v19 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_100663AF4(a3, v10, a5, &protocol witness table for LayoutViewPlaceholder, v15, a1, v14);
  sub_10000CF78(v14, v14[3]);
  sub_10076D2AC();
  v12 = v11;
  sub_10000CD74(v14);
  sub_100664DC0(v15);
  return v12;
}

id sub_100663A44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100663AF4(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v126 = a5;
  v124 = a4;
  v125 = a3;
  v118 = a2;
  v123 = a1;
  v127 = a7;
  v8 = sub_10076804C();
  v136 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10076805C();
  v135 = *(v113 - 8);
  __chkstk_darwin(v113);
  v121 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_10076802C();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v116 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10076809C();
  v131 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = sub_10076808C();
  v129 = *(v114 - 8);
  __chkstk_darwin(v114);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076807C();
  v132 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1007680BC();
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v130 = &v94 - v17;
  v18 = sub_10076DB5C();
  v108 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076DB6C();
  v128 = *(v107 - 1);
  __chkstk_darwin(v107);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076DB0C();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = sub_10077071C();

  if (v29)
  {
    sub_10000A5D4(&qword_1009426C0, qword_100784180);
    v30 = *(sub_10076DB9C() - 8);
    v134 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100784500;
    v135 = v32;
    v136 = v32 + v31;
    v33 = v123;
    ObjectType = swift_getObjectType();
    v145 = v118;
    v143 = v33;
    *(&v141 + 1) = &type metadata for CGFloat;
    v142 = &protocol witness table for CGFloat;
    *&v140 = 0;
    v139 = 0;
    memset(v138, 0, sizeof(v138));
    v111 = v24;
    v34 = *(v24 + 13);
    v122 = (v24 + 104);
    v133 = v34;
    v105 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v132) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v128;
    v131 = *(v128 + 104);
    v36 = v107;
    (v131)(v22);
    v137 = _swiftEmptyArrayStorage;
    v130 = sub_100664E30(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v129 = sub_10000A5D4(&unk_100963760, &unk_100784170);
    v123 = sub_100016EDC();
    sub_1007712CC();
    sub_10076DB8C();
    v121 = *(v108 + 8);
    v121(v20, v18);
    v120 = *(v35 + 8);
    v128 = v35 + 8;
    (v120)(v22, v36);
    v37 = *(v111 + 1);
    v111 += 8;
    v119 = v37;
    v38 = v18;
    v39 = v105;
    (v37)(v27, v105);
    sub_10000CFBC(v138, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v140);
    sub_10000CD74(&v143);
    v40 = v125;
    ObjectType = swift_getObjectType();
    v145 = v124;
    v143 = v40;
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    (v133)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v131)(v22, v132, v36);
    *&v138[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_1007712CC();
    sub_10076DB8C();
    v121(v20, v38);
    (v120)(v22, v36);
    (v119)(v27, v39);
    sub_10000CFBC(&v140, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v143);
    v41 = sub_10076DBAC();
    v42 = v127;
    v127[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_10000DB7C(v42);
    sub_10076DB7C();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v145 = &protocol witness table for CGFloat;
    v143 = 0;
    v43 = v129;
    v100 = *(v129 + 104);
    v128 = v129 + 104;
    v44 = v106;
    v45 = v114;
    v100(v106, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v114);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v47 = v109;
    *v109 = v46;
    v48 = v8;
    v49 = v131;
    v50 = *(v131 + 104);
    v108 = v131 + 104;
    v111 = v50;
    v51 = v115;
    (v50)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v115);
    sub_10076806C();
    v52 = *(v49 + 8);
    v131 = v49 + 8;
    v107 = v52;
    (v52)(v47, v51);
    v53 = *(v43 + 8);
    v129 = v43 + 8;
    v105 = v53;
    v53(v44, v45);
    *(&v141 + 1) = &type metadata for Double;
    v142 = &protocol witness table for Double;
    *&v140 = 0;
    v54 = v133;
    v55 = v133[13];
    v103 = (v133 + 13);
    v104 = v55;
    v56 = v116;
    v55(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v134);
    v57 = v135;
    v58 = v136;
    v59 = *(v136 + 104);
    v101 = v136 + 104;
    v102 = v59;
    v60 = v120;
    v95 = v48;
    v59(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v48);
    v61 = v121;
    sub_10076803C();
    v62 = *(v58 + 8);
    v136 = v58 + 8;
    v99 = v62;
    v62(v60, v48);
    v63 = v112;
    sub_1007680AC();
    v64 = *(v57 + 8);
    v135 = v57 + 8;
    v123 = v64;
    v64(v61, v113);
    v65 = v54[1];
    v133 = v54 + 1;
    v118 = v65;
    v65(v56, v134);
    v66 = *(v132 + 8);
    v132 += 8;
    v98 = v66;
    v67 = v63;
    v66(v63, v117);
    sub_10000CD74(&v140);
    sub_10000CD74(&v143);
    v68 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v69 = v114;
    v70 = v100;
    v100(v44, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v114);
    v71 = sub_10000A5D4(&qword_10095E5A8, &qword_1007AD0C0);
    v72 = swift_allocBox();
    v74 = v73;
    v75 = *(v71 + 48);
    v96 = v119[2];
    v97 = (v119 + 2);
    v96(v73, v130, v122);
    v70(v74 + v75, v68, v69);
    *v47 = v72;
    v76 = v115;
    (v111)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v115);
    sub_10076806C();
    (v107)(v47, v76);
    v105(v44, v69);
    v77 = v116;
    v78 = v134;
    v104(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v134);
    v79 = v120;
    v80 = v95;
    v102(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v95);
    v81 = v121;
    sub_10076803C();
    v99(v79, v80);
    v145 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v143 = 0;
    v82 = v110;
    sub_1007680AC();
    v123(v81, v113);
    v118(v77, v78);
    v98(v67, v117);
    sub_10000CD74(&v143);
    sub_10000A5D4(&qword_10095E5B0, qword_1007AD0C8);
    v83 = v119;
    v84 = v119[9];
    v85 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_100784500;
    v87 = v86 + v85;
    v88 = v130;
    v89 = v122;
    v90 = v96;
    v96(v87, v130, v122);
    v90(v87 + v84, v82, v89);
    v91 = sub_1007680DC();
    v92 = v127;
    v127[3] = v91;
    v92[4] = sub_100664E30(&qword_10095E5B8, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    v92[5] = sub_100664E30(&qword_10095E5C0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    sub_10000DB7C(v92);
    sub_1007680CC();
    v93 = v83[1];
    v93(v82, v89);
    v93(v88, v89);
  }
}

__n128 sub_100664CD8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100664CFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100664D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100664E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100664E78()
{
  v1 = sub_10076469C();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076C38C();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  sub_100770ACC();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell(0);
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    sub_10076338C();

    sub_10076C25C();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_100941288 != -1)
    {
      swift_once();
    }

    sub_10076C33C();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_1004593F8(v0 + v31, v14);
    v25 = v24;
    sub_10000CFBC(v14, &unk_1009434A0, &unk_100787B90);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    sub_10076571C();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      sub_1007632FC();
      sub_10076777C();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

void sub_1006653E4()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_100962A70 = sub_100770DEC(v3, v2).super.isa;
}

id sub_1006654C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_100941460 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_100962A70];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      sub_1007645DC();
      v22 = v25;
      sub_1007633BC();
      sub_10076F4AC();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      sub_100760C4C();
      sub_10076F64C();
      v23 = v20;
      sub_10076FC1C();
      sub_10075FA0C();

      sub_10000CFBC(v27, &unk_10094F720, &unk_100785540);
      sub_10000CD74(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100665918()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_100664E78();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_100102A30(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController(uint64_t a1)
{
  result = qword_100962AC8;
  if (!qword_100962AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100665E34(uint64_t a1)
{
  result = sub_10076341C();
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

void sub_100665F60(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_10066600C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = sub_10076341C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC20ProductPageExtension40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100783DD0;
  *(v22 + 32) = sub_10076E59C();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  sub_10077061C();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

id sub_100666230(__n128 a1)
{
  v2 = v1;
  v3 = sub_100761DAC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.8];
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (v8 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v14 = v8;
  v15 = [objc_opt_self() blackColor];
  v16 = [v15 colorWithAlphaComponent:0.6];

  if (v14 != v13)
  {
    (*(v4 + 8))(v7, v3);
  }

  return v16;
}

id sub_100666460(char a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_100761DAC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v10 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v12 = [objc_opt_self() whiteColor];
    v13 = v12;
    v14 = 0.7;
    if (a1)
    {
      v14 = 1.0;
    }

    v15 = [v12 colorWithAlphaComponent:v14];
  }

  else
  {
    v16 = v10;
    v17 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v18 = [objc_opt_self() blackColor];
    v19 = v18;
    v20 = 0.7;
    if (a1)
    {
      v20 = 1.0;
    }

    v15 = [v18 colorWithAlphaComponent:v20];

    if (v16 != v17)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  return v15;
}

id sub_100666660(__n128 a1)
{
  v2 = v1;
  v3 = sub_100761DAC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v8 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.75];

    return v11;
  }

  else
  {
    v13 = v8;
    v14 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v15 = [objc_opt_self() blackColor];
    v16 = [v15 colorWithAlphaComponent:0.75];

    if (v13 != v14)
    {
      (*(v4 + 8))(v7, v3);
    }

    return v16;
  }
}

void sub_10066687C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    swift_unknownObjectRetain();

    [v2 frame];
    swift_unknownObjectRetain();
    if (JUScreenClassGetMain() == 1)
    {
      if (qword_100941470 != -1)
      {
        swift_once();
      }

      v12 = qword_100962AF0;
    }

    else
    {
      if (qword_100941468 != -1)
      {
        swift_once();
      }

      v12 = qword_100962AD8;
    }

    v13 = sub_10000A61C(v4, v12);
    (*(v5 + 16))(v7, v13, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_10076D36C();
    (*(v5 + 8))(v10, v4);
    swift_unknownObjectRelease();
    sub_10076BFBC();
    sub_10076BE1C();
    sub_10075FB8C();
    sub_10075FD2C();
    sub_100667A78(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
    swift_unknownObjectRelease();
  }
}