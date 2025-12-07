void sub_1001BE494()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_stackView];
  [v2 addSubview:v4];

  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_titleLabel]];
  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_messageLabel]];
  [v4 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_actionButton]];
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941040;
  v6 = [v4 topAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintEqualToAnchor:v10 constant:15.0];

  *(v5 + 32) = v11;
  v12 = [v4 leadingAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v12 constraintEqualToAnchor:v16 constant:15.0];

  *(v5 + 40) = v17;
  v18 = [v4 trailingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 trailingAnchor];
  v23 = [v18 constraintEqualToAnchor:v22 constant:-15.0];

  *(v5 + 48) = v23;
  v24 = [v4 bottomAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v24 constraintEqualToAnchor:v29 constant:-15.0];

  *(v5 + 56) = v30;
  v31 = [v4 widthAnchor];
  v32 = [v31 constraintLessThanOrEqualToConstant:250.0];

  *(v5 + 64) = v32;
  sub_1000065A8(0, &qword_100AD8000, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

id sub_1001BE8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_titleLabel;
  *&v4[v9] = sub_1001BDFA8();
  v10 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_messageLabel;
  *&v4[v10] = sub_1001BE18C();
  sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &qword_100ADFC10, UIButton_ptr);
  v12 = v11;
  v25.value.super.super.isa = v11;
  v13.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v25).super.super.super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  [(objc_class *)v13.super.super.super.super.isa setTitle:v14 forState:0];

  v15 = [objc_opt_self() labelColor];
  [(objc_class *)v13.super.super.super.super.isa setTitleColor:v15 forState:0];

  v16 = [(objc_class *)v13.super.super.super.super.isa titleLabel];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v17 setFont:v18];
  }

  *&v4[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_actionButton] = v13;
  v19 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_stackView;
  v20 = [objc_allocWithZone(UIStackView) init];
  [v20 setAxis:1];
  [v20 setSpacing:10.0];
  [v20 setAlignment:1];
  [v20 setDistribution:0];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v19] = v20;
  if (a2)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v24.receiver = v4;
  v24.super_class = type metadata accessor for NotSyncingPopOverViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v21, a3);

  return v22;
}

id sub_1001BECE0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_titleLabel;
  *&v2[v6] = sub_1001BDFA8();
  v7 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_messageLabel;
  *&v2[v7] = sub_1001BE18C();
  sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &qword_100ADFC10, UIButton_ptr);
  v9 = v8;
  v21.value.super.super.isa = v8;
  v10.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v21).super.super.super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  [(objc_class *)v10.super.super.super.super.isa setTitle:v11 forState:0];

  v12 = [objc_opt_self() labelColor];
  [(objc_class *)v10.super.super.super.super.isa setTitleColor:v12 forState:0];

  v13 = [(objc_class *)v10.super.super.super.super.isa titleLabel];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v14 setFont:v15];
  }

  *&v2[OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_actionButton] = v10;
  v16 = OBJC_IVAR____TtC7Journal31NotSyncingPopOverViewController_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  [v17 setAxis:1];
  [v17 setSpacing:10.0];
  [v17 setAlignment:1];
  [v17 setDistribution:0];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v16] = v17;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for NotSyncingPopOverViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v18)
  {
  }

  return v18;
}

id sub_1001BF0AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001BF174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4250, &unk_100941870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BF1EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1001BDB94(a1, v4, v5, v6);
}

uint64_t sub_1001BF2A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1001BDA40(a1, v4, v5, v6);
}

uint64_t sub_1001BF354()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD6DE8);
  v1 = sub_10000617C(v0, qword_100AD6DE8);
  if (qword_100AD0228 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1001BF4B4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAssetView;
  type metadata accessor for ContactAssetGridView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FullScreenContactCollectionViewCell(0);
  v10 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v16 = v10;
  static UIView.Invalidating.subscript.setter();
  v17 = OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAssetView;
  v18 = *&v16[OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAssetView];
  v19 = v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v20 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v18[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v21 = v18;
LABEL_8:
    sub_10032A548();
    v18[v20] = 1;

    goto LABEL_9;
  }

  if (v19 > 3 && v19 > 6)
  {

    goto LABEL_9;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23 = v18;

  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v24 = *&v16[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v24 addSubview:{*&v16[v17], v27}];
  v25 = *&v16[v17];
  sub_100013178(0.0);

  return v16;
}

void sub_1001BF7A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAssetView);
}

id sub_1001BF7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenContactCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenContactCollectionViewCell(uint64_t a1)
{
  result = qword_100AD6EE0;
  if (!qword_100AD6EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001BF910()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAssetView);
  v2 = v1;
  return v1;
}

void *sub_1001BF944()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal35FullScreenContactCollectionViewCell_contactAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_1001BF978()
{
  v1 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
  __chkstk_darwin(v1 - 8);
  v3 = &v16[-v2];
  v4 = type metadata accessor for MusicAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata))
  {

    sub_10025BEA0(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100942000;
      *(inited + 32) = MusicAssetMetadata.song.getter();
      *(inited + 40) = v10;
      *(inited + 48) = MusicAssetMetadata.albumName.getter();
      *(inited + 56) = v11;
      *(inited + 64) = MusicAssetMetadata.artistName.getter();
      *(inited + 72) = v12;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v14 = v13;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      swift_arrayDestroy();
      (*(v5 + 8))(v8, v4);
      return v14;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
  }

  sub_100004F84(v3, &qword_100AD6F70, &unk_100962D80);
  return 0;
}

id sub_1001BFBF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1001BFC50(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = a1;

  return result;
}

id sub_1001BFC8C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v9 - 8);
  v68 = &v66 - v10;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for MusicAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  sub_1006ABC94(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004F84(v17, &qword_100AD6F70, &unk_100962D80);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  static UTType.audio.getter();
  v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v69 = [v23 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  MusicAssetMetadata.song.getter();
  v25 = v21;
  v67 = v19;
  if (v26)
  {
    v27 = v71;
LABEL_6:
    v29 = v69;
    v30 = String._bridgeToObjectiveC()();

    goto LABEL_7;
  }

  MusicAssetMetadata.albumName.getter();
  v27 = v71;
  if (v28)
  {
    goto LABEL_6;
  }

  v30 = 0;
  v29 = v69;
LABEL_7:
  [v29 setDisplayName:v30];

  v73 = MusicAssetMetadata.albumName.getter();
  v74[0] = v31;
  v32 = 0;
  v74[1] = MusicAssetMetadata.artistName.getter();
  v74[2] = v33;
  v34 = _swiftEmptyArrayStorage;
LABEL_8:
  v35 = &v74[2 * v32];
  while (++v32 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v66 = v25;
      v71 = v18;
      v38 = v5;
      v39 = v27;
      v40 = *(v36 - 3);

      v41 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_10009BCC8(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_10009BCC8((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[2 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v37;
      v8 = v41;
      v27 = v39;
      v5 = v38;
      v18 = v71;
      v25 = v66;
      goto LABEL_8;
    }
  }

  sub_1000F24EC(&unk_100AE4870, &qword_100945360);
  swift_arrayDestroy();
  v72 = v34;
  sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  sub_10009BDD4();
  BidirectionalCollection<>.joined(separator:)();

  v45 = String._bridgeToObjectiveC()();

  v22 = v69;
  [v69 setContentDescription:v45];

  v46 = v68;
  MusicAssetMetadata.mediaURL.getter();
  v47 = type metadata accessor for URL();
  v48 = *(v47 - 8);
  v50 = 0;
  if ((*(v48 + 48))(v46, 1, v47) != 1)
  {
    URL._bridgeToObjectiveC()(v49);
    v50 = v51;
    (*(v48 + 8))(v46, v47);
  }

  [v22 setThumbnailURL:v50];

  v52 = *(v70 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v52 && (v53 = [v52 entry]) != 0)
  {
    v54 = v53;
    JournalEntryMO.displayDate.getter();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = type metadata accessor for Date();
  (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v58;
  sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100940080;
  v61 = sub_10012C00C(v57, v59, v8);
  v63 = v62;

  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setAlternateNames:v64];

  sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0);
  (*(v67 + 8))(v25, v18);
  return v22;
}

uint64_t sub_1001C04CC(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C0510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1001C0558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001C05BC()
{
  result = qword_100AD6F80;
  if (!qword_100AD6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6F80);
  }

  return result;
}

unint64_t sub_1001C0610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = sub_1001C2FA4(*(a1 + 16));
  if (result < v1)
  {
    v4 = *(a1 + 16 * result + 32);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C0674()
{
  sub_1001C2930(*v0);
  v2 = v1;

  return v2;
}

unint64_t sub_1001C06D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001C0610(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001C0708()
{
  result = qword_100AD6F88;
  if (!qword_100AD6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6F88);
  }

  return result;
}

uint64_t sub_1001C075C(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    if (result == 1)
    {
LABEL_4:
      sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
      sub_10009BDD4();
      v2 = BidirectionalCollection<>.joined(separator:)();

      return v2;
    }

    v3 = result;
    v4 = *(a2 + 16);
    v5 = a2 + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = 1;
    while (v7 != v3)
    {
      result = swift_stdlib_random();
      v8 = (0 * v4) >> 64;
      if (-v4 % v4)
      {
        while (1)
        {
          swift_stdlib_random();
        }
      }

      if (v8 >= v4)
      {
        goto LABEL_16;
      }

      v9 = (v5 + 16 * v8);
      v11 = *v9;
      v10 = v9[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10009BCC8(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        result = sub_10009BCC8((v12 > 1), v13 + 1, 1, v6);
        v6 = result;
      }

      ++v7;
      *(v6 + 2) = v13 + 1;
      v14 = &v6[2 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      if (v7 == v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C092C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v95 = sub_1000F24EC(&qword_100AD2680, &unk_100940CC0);
  __chkstk_darwin(v95);
  v96 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  v12 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v12 - 8);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v85 = &v77 - v15;
  v109 = type metadata accessor for Date();
  v16 = *(v109 - 8);
  __chkstk_darwin(v109);
  v99 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v77 - v19;
  __chkstk_darwin(v21);
  v83 = &v77 - v22;
  __chkstk_darwin(v23);
  v97 = &v77 - v24;
  v25 = sub_1000F24EC(&qword_100AD6F90, &qword_10094B030);
  __chkstk_darwin(v25 - 8);
  v104 = &v77 - v26;
  v27 = sub_1000F24EC(&qword_100AD6F98, &unk_100945CF0);
  __chkstk_darwin(v27 - 8);
  v98 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v105 = &v77 - v30;
  v31 = sub_1000F24EC(&qword_100AD2688, &unk_100948C60);
  v100 = *(v31 - 8);
  __chkstk_darwin(v31);
  v94 = &v77 - v32;
  v33 = sub_1000F24EC(&qword_100AD6FA0, &qword_100945D00);
  v34 = v33 - 8;
  __chkstk_darwin(v33);
  v36 = &v77 - v35;
  result = sub_1001C3300(v4, &v77 - v35, type metadata accessor for UniformDateBins);
  v93 = *(v34 + 44);
  *&v36[v93] = 0;
  v108 = a2;
  if (!a2)
  {
LABEL_21:
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
LABEL_24:
    sub_100021CEC(v36, a1, &qword_100AD6FA0, &qword_100945D00);
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_29;
  }

  v82 = v20;
  v79 = a1;
  v38 = 0;
  v81 = type metadata accessor for UniformDateBins(0);
  v92 = *&v36[*(v81 + 24)];
  v103 = (v16 + 32);
  v89 = (v16 + 8);
  v90 = (v16 + 48);
  v80 = (v100 + 48);
  v78 = a3;
  v88 = a3 - 1;
  v91 = (v100 + 56);
  v87 = (v100 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v39 = v104;
  a1 = v105;
  v101 = v11;
  v102 = v31;
  v107 = v36;
  while (1)
  {
    a3 = v92;
    if (v92 == v38)
    {
      (*v91)(a1, 1, 1, v31);
      sub_100004F84(a1, &qword_100AD6F98, &unk_100945CF0);
      a1 = v79;
      goto LABEL_24;
    }

    sub_1000082B4(v36, v39, &qword_100AD6F90, &qword_10094B030);
    v40 = type metadata accessor for CalendarBinningUnit(0);
    result = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v106 = v38;
    if (result == 1)
    {
      break;
    }

    v56 = *&v36[*(v81 + 20)];
    v57 = v56 + v38;
    if (__OFADD__(v56, v38))
    {
      goto LABEL_26;
    }

    v58 = v11;
    v59 = v85;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v60 = v59;
    v61 = *v90;
    result = (*v90)(v59, 1, v109);
    if (result == 1)
    {
      goto LABEL_30;
    }

    v62 = *v103;
    result = (*v103)(v97, v60, v109);
    if (__OFADD__(v57, 1))
    {
      goto LABEL_27;
    }

    v63 = v84;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    result = v61(v63, 1, v109);
    if (result == 1)
    {
      goto LABEL_31;
    }

    v64 = v83;
    v62(v83, v63, v109);
    sub_100041990(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v65 = v97;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_28;
    }

    v66 = v109;
    v62(v11, v65, v109);
    v67 = v95;
    v62(&v11[*(v95 + 48)], v64, v66);
    v68 = v11;
    v69 = v96;
    sub_1000082B4(v58, v96, &qword_100AD2680, &unk_100940CC0);
    v70 = *(v67 + 48);
    v71 = v98;
    v62(v98, v69, v66);
    v72 = *v89;
    (*v89)(v69 + v70, v66);
    sub_100021CEC(v68, v69, &qword_100AD2680, &unk_100940CC0);
    v73 = *(v67 + 48);
    v54 = v102;
    v62(&v71[*(v102 + 36)], (v69 + v73), v66);
    v53 = v106;
    v72(v69, v66);
    v39 = v104;
    sub_1000AECC4(v104);
    v55 = *v91;
    (*v91)(v71, 0, 1, v54);
    v74 = v71;
    v51 = v105;
    sub_100021CEC(v74, v105, &qword_100AD2688, &unk_100948C60);
LABEL_17:
    v75 = v53 + 1;
    *&v107[v93] = v53 + 1;
    v31 = v54;
    v55(v51, 0, 1, v54);
    a1 = v51;
    v76 = v94;
    sub_100021CEC(v51, v94, &qword_100AD2688, &unk_100948C60);
    sub_100021CEC(v76, v108, &qword_100AD2688, &unk_100948C60);
    if (v88 == v53)
    {
      a3 = v78;
      a1 = v79;
      v36 = v107;
      goto LABEL_24;
    }

    v11 = v101;
    v36 = v107;
    v108 += *(v100 + 72);
    v38 = v53 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  sub_100004F84(v39, &qword_100AD6F90, &qword_10094B030);
  v41 = v98;
  v86 = *v91;
  v86(v98, 1, 1, v31);
  v42 = v82;
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100041990(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v43 = v109;
    v44 = *v103;
    v45 = v101;
    (*v103)(v101, v42, v109);
    v46 = v95;
    v44((v45 + *(v95 + 48)), v99, v43);
    v47 = v96;
    sub_1000082B4(v45, v96, &qword_100AD2680, &unk_100940CC0);
    v48 = *(v46 + 48);
    v44(v105, v47, v43);
    v49 = *v89;
    (*v89)(v47 + v48, v43);
    sub_100021CEC(v45, v47, &qword_100AD2680, &unk_100940CC0);
    v50 = *(v46 + 48);
    v51 = v105;
    v44(&v105[*(v102 + 36)], (v47 + v50), v43);
    v52 = v102;
    v49(v47, v43);
    if ((*v80)(v41, 1, v52) != 1)
    {
      sub_100004F84(v41, &qword_100AD6F98, &unk_100945CF0);
    }

    v39 = v104;
    v53 = v106;
    v54 = v52;
    v55 = v86;
    goto LABEL_17;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_1001C1444(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_16;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = *(a4 + 16);
    v9 = 1;
    while (v8)
    {
      v10 = *(a4 + 16);
      if (!v10)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      result = swift_stdlib_random();
      v11 = (0 * v10) >> 64;
      if (-v10 % v10)
      {
        while (1)
        {
          swift_stdlib_random();
        }
      }

      if (v11 >= *(a4 + 16))
      {
        goto LABEL_18;
      }

      v12 = (a4 + 32 + 16 * v11);
      v13 = v12[1];
      *v7 = *v12;
      v7[1] = v13;
      if (v9 == v6)
      {

        goto LABEL_16;
      }

      v7 += 2;

      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1001C156C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_29;
  }

  if (!a3)
  {
LABEL_29:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a4 + 32;
      v7 = v5 - 1;
      v8 = a3 - 1;
      if (v5 - 1 >= (a3 - 1))
      {
        v9 = a3 - 1;
      }

      else
      {
        v9 = v5 - 1;
      }

      v10 = v9 + 1;
      if (v10 <= 0x18)
      {
        goto LABEL_24;
      }

      v11 = v7 >= v8 ? a3 - 1 : v5 - 1;
      v12 = a2 + 16 * v11 >= a2 && a2 + 8 + 16 * v11 >= a2 + 8;
      v13 = v11 >> 60;
      if (!v12 || v13 != 0)
      {
        goto LABEL_24;
      }

      if (v7 >= v8)
      {
        v7 = a3 - 1;
      }

      if (a4 + 8 * v7 + 40 <= a2 || v6 >= a2 + 16 * v7 + 16)
      {
        v19 = v10 & 3;
        if ((v10 & 3) == 0)
        {
          v19 = 4;
        }

        v15 = v10 - v19;
        v16 = v15 + 1;
        v17 = a2 + 16 * v15;
        v20 = vdupq_lane_s64(*&a5, 0);
        v21 = (a4 + 48);
        v22 = xmmword_100945C40;
        v23 = (a2 + 32);
        v24 = vdupq_n_s64(2uLL);
        v25 = v15;
        do
        {
          v26 = v23 - 4;
          v27.val[0] = vdivq_f64(vcvtq_f64_u64(v22), v20);
          v28.val[0] = vdivq_f64(vcvtq_f64_u64(vaddq_s64(v22, v24)), v20);
          v27.val[1] = v21[-1];
          v28.val[1] = *v21;
          vst2q_f64(v26, v27);
          vst2q_f64(v23, v28);
          v22 = vaddq_s64(v22, vdupq_n_s64(4uLL));
          v21 += 2;
          v23 += 8;
          v25 -= 4;
        }

        while (v25);
      }

      else
      {
LABEL_24:
        v15 = 0;
        v16 = 1;
        v17 = a2;
      }

      while (1)
      {
        v18 = *(v6 + 8 * v15);
        *v17 = v15 / a5;
        *(v17 + 8) = v18;
        if (a3 == v16)
        {
          break;
        }

        v15 = v16;
        v17 += 16;
        if (v5 + 1 == ++v16)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      a3 = v5;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void *sub_1001C16E4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001C183C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1001C1950(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1001C1C38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1000F24EC(&qword_100AD1428, &qword_100945160);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = (&v34 - v10);
  v41 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v12 - 32);
    v36 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = v41;
      v26 = *(v41 + 48);
      v27 = type metadata accessor for UUID();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v24;
      v30 = v39;
      (*(v28 + 16))(v39, v29, v27);
      *&v30[*(v40 + 48)] = *(*(v25 + 56) + 8 * v24);
      v31 = v30;
      a1 = v38;
      sub_100021CEC(v31, v38, &qword_100AD1428, &qword_100945160);
      sub_100021CEC(a1, a2, &qword_100AD1428, &qword_100945160);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v32 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v23 = v33 - 1;
LABEL_23:
    v14 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void sub_1001C1F1C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_1001C3298(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_1001C3300(v29, v15, v40);
      sub_1001C3300(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1001C21A0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_1001C324C();
  sub_100041990(&qword_100AD6FD8, sub_1001C324C, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_1001C324C();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1001C23CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_10001F45C(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1001C2534(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1001C268C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for AssetType();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1001C2930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = a1 + 32;
    while (1)
    {
      swift_stdlib_random();
      v7 = (0 * v1) >> 64;
      if (-v1 % v1)
      {
        while (1)
        {
          swift_stdlib_random();
        }
      }

      if (v7 >= v1)
      {
        break;
      }

      v8 = (v6 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      if (v3)
      {

        v11 = v4;
      }

      else
      {
        v12 = *(v4 + 3);
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
        v11 = swift_allocObject();
        v15 = j__malloc_size(v11);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 17;
        }

        v17 = v16 >> 4;
        *(v11 + 2) = v14;
        *(v11 + 3) = 2 * (v16 >> 4);
        v18 = (v11 + 4);
        v19 = *(v4 + 3) >> 1;
        v5 = &v11[2 * v19 + 4];
        v3 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (*(v4 + 2))
        {
          v20 = (v4 + 4);
          if (v11 != v4 || v18 >= &v20[16 * v19])
          {
            memmove(v18, v20, 16 * v19);
          }

          v4[2] = 0.0;
        }

        else
        {
        }
      }

      if (__OFSUB__(v3--, 1))
      {
        goto LABEL_27;
      }

      *v5 = v9;
      *(v5 + 1) = v10;
      v5 += 2;
      v4 = v11;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage[3];
    if (*&v2 >= 2uLL)
    {
      *&_swiftEmptyArrayStorage[2] = *&v2 >> 1;
    }
  }
}

void sub_1001C2B14(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_1000F24EC(&qword_100AD6650, &unk_100945D80);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_47;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage[3];

  v8 = 0;
  v15 = &_swiftEmptyArrayStorage[4];
  v16 = *&v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v23 = *(v11 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_48;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_1000F24EC(&qword_100AD6650, &unk_100945D80);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0.0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
      }

      v33 = __OFSUB__(v16--, 1);
      if (v33)
      {
        goto LABEL_46;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v34 = v20 <= a2;
      if (a3 > 0.0)
      {
        v34 = v20 >= a2;
      }

      ++v8;
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_40:
  v35 = *(v11 + 3);
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v33 = __OFSUB__(v36, v16);
    v37 = v36 - v16;
    if (v33)
    {
LABEL_49:
      __break(1u);
      return;
    }

    *(v11 + 2) = v37;
  }
}

unint64_t sub_1001C2DB4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = *(v3 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1000F24EC(&qword_100AD6FE0, &qword_100945D78);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        *(v15 + 2) = v14;
        *(v15 + 3) = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = *(v3 + 3) >> 1;
        if (*(v3 + 2))
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0.0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      *(v7 + 1) = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = *(v3 + 3);
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    *(v3 + 2) = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001C2FA4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001C3030(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(id *))
{
  v5 = a3 >> 1;
  v6 = _swiftEmptyArrayStorage;
  if (a3 >> 1 == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v35 = &_swiftEmptyArrayStorage[4];
    v10 = a2;
    while (2)
    {
      v38 = v6;
      v11 = v10;
      while (1)
      {
        if (v10 < a2 || v11 >= v5)
        {
          __break(1u);
          goto LABEL_32;
        }

        v12 = v11 + 1;
        v39 = *(a1 + 8 * v11);
        v13 = v39;
        if (a4(&v39))
        {
          break;
        }

        ++v11;
        if (v5 == v12)
        {
          v6 = v38;
          goto LABEL_27;
        }
      }

      if (v7)
      {
        v14 = v35;
        v6 = v38;
        v15 = __OFSUB__(v7--, 1);
        if (v15)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v16 = *(v38 + 3);
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        v36 = v18;
        sub_1000F24EC(&unk_100AD4780, &unk_100941070);
        v19 = swift_allocObject();
        v20 = j__malloc_size(v19);
        v21 = v19;
        v22 = v20 - 32;
        if (v20 < 32)
        {
          v22 = v20 - 25;
        }

        v23 = v22 >> 3;
        *(v19 + 2) = v36;
        *(v19 + 3) = (2 * (v22 >> 3)) | 1;
        v24 = v19 + 32;
        v25 = *(v38 + 3) >> 1;
        v26 = v38;
        if (*(v38 + 2))
        {
          v27 = (v38 + 4);
          if (v21 != v38 || v24 >= &v27[8 * v25])
          {
            v28 = v21;
            v37 = v22 >> 3;
            v33 = v24;
            memmove(v24, v27, 8 * v25);
            v24 = v33;
            v23 = v37;
            v26 = v38;
            v21 = v28;
          }

          v26[2] = 0.0;
        }

        v34 = v21;
        v14 = &v24[8 * v25];
        v29 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v6 = v34;
        v15 = __OFSUB__(v29, 1);
        v7 = v29 - 1;
        if (v15)
        {
          goto LABEL_33;
        }
      }

      *v14 = v13;
      v35 = v14 + 1;
      v10 = v11 + 1;
      if (v5 - 1 != v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v30 = *(v6 + 3);
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v15 = __OFSUB__(v31, v7);
  v32 = v31 - v7;
  if (!v15)
  {
    *(v6 + 2) = v32;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1001C324C()
{
  result = qword_100AF02B0;
  if (!qword_100AF02B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF02B0);
  }

  return result;
}

uint64_t sub_1001C3298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C3300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C337C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000F24EC(&qword_100AD71D8, &qword_100946150);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_1000F24EC(&qword_100AD7290, &qword_1009461B0);
  v7 = v6[12];
  v8 = a1[1];
  v9 = sub_1000F24EC(&qword_100AD71D0, &qword_100946148);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  v10 = v6[16];
  v11 = a1[2];
  v12 = sub_1000F24EC(&qword_100AD71C8, &qword_100946140);
  (*(*(v12 - 8) + 16))(a2 + v10, v11, v12);
  v13 = v6[20];
  v14 = a1[3];
  v15 = sub_1000F24EC(&qword_100AD71C0, &qword_100946138);
  v16 = *(*(v15 - 8) + 16);
  v16(a2 + v13, v14, v15);
  v17 = v6[24];
  v18 = a1[4];
  v19 = sub_1000F24EC(&qword_100AD71B8, &qword_100946130);
  (*(*(v19 - 8) + 16))(a2 + v17, v18, v19);
  v20 = v6[28];
  v21 = a1[5];
  v22 = sub_1000F24EC(&qword_100AD71B0, &qword_100946128);
  (*(*(v22 - 8) + 16))(a2 + v20, v21, v22);
  v23 = v6[32];
  v24 = a1[6];
  v25 = sub_1000F24EC(&qword_100AD71A8, &qword_100946120);
  (*(*(v25 - 8) + 16))(a2 + v23, v24, v25);
  v16(a2 + v6[36], a1[7], v15);
  v26 = v6[40];
  v27 = a1[8];
  v28 = sub_1000F24EC(&qword_100AD71A0, &qword_100946118);
  (*(*(v28 - 8) + 16))(a2 + v26, v27, v28);
  v29 = v6[44];
  v30 = a1[9];
  v31 = sub_1000F24EC(&qword_100AD7198, &qword_100946110);
  (*(*(v31 - 8) + 16))(a2 + v29, v30, v31);
  v32 = v6[48];
  v33 = a1[10];
  v34 = sub_1000F24EC(&qword_100AD7190, &qword_100946108);
  v35 = *(*(v34 - 8) + 16);
  v35(a2 + v32, v33, v34);
  v36 = v6[52];
  v37 = a1[11];
  v38 = sub_1000F24EC(&qword_100AD7188, &qword_100946100);
  (*(*(v38 - 8) + 16))(a2 + v36, v37, v38);
  v39 = v6[56];
  v40 = a1[12];
  v41 = sub_1000F24EC(&qword_100AD7180, &qword_1009460F8);
  (*(*(v41 - 8) + 16))(a2 + v39, v40, v41);
  v35(a2 + v6[60], a1[13], v34);
  v35(a2 + v6[64], a1[14], v34);
  v35(a2 + v6[68], a1[15], v34);
  v42 = v6[72];
  v43 = a1[16];
  v44 = sub_1000F24EC(&qword_100AD7178, &qword_1009460F0);
  (*(*(v44 - 8) + 16))(a2 + v42, v43, v44);
  v45 = v6[76];
  v46 = a1[17];
  v47 = sub_1000F24EC(&qword_100AD7170, &qword_1009460E8);
  v48 = *(*(v47 - 8) + 16);

  return v48(a2 + v45, v46, v47);
}

uint64_t sub_1001C38B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000F24EC(&qword_100AD7590, &qword_100946470);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_1000F24EC(qword_100AD75E8, &qword_100946478);
  v7 = v6[12];
  v8 = a1[1];
  v9 = sub_1000F24EC(&qword_100AD7588, &qword_100946468);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  v10 = v6[16];
  v11 = a1[2];
  v12 = sub_1000F24EC(&qword_100AD7580, &qword_100946460);
  (*(*(v12 - 8) + 16))(a2 + v10, v11, v12);
  v13 = v6[20];
  v14 = a1[3];
  v15 = sub_1000F24EC(&qword_100AD7578, &qword_100946458);
  (*(*(v15 - 8) + 16))(a2 + v13, v14, v15);
  v16 = v6[24];
  v17 = a1[4];
  v18 = sub_1000F24EC(&qword_100AD7570, &qword_100946450);
  (*(*(v18 - 8) + 16))(a2 + v16, v17, v18);
  v19 = v6[28];
  v20 = a1[5];
  v21 = sub_1000F24EC(&qword_100AD7568, &qword_100946448);
  (*(*(v21 - 8) + 16))(a2 + v19, v20, v21);
  v22 = v6[32];
  v23 = a1[6];
  v24 = sub_1000F24EC(&qword_100AD7560, &qword_100946440);
  (*(*(v24 - 8) + 16))(a2 + v22, v23, v24);
  v25 = v6[36];
  v26 = a1[7];
  v27 = sub_1000F24EC(&qword_100AD7558, &qword_100946438);
  (*(*(v27 - 8) + 16))(a2 + v25, v26, v27);
  v28 = v6[40];
  v29 = a1[8];
  v30 = sub_1000F24EC(&qword_100AD7550, &qword_100946430);
  (*(*(v30 - 8) + 16))(a2 + v28, v29, v30);
  v31 = v6[44];
  v32 = a1[9];
  v33 = sub_1000F24EC(&qword_100AD7548, &qword_100946428);
  (*(*(v33 - 8) + 16))(a2 + v31, v32, v33);
  v34 = v6[48];
  v35 = a1[10];
  v36 = sub_1000F24EC(&qword_100AD7540, &qword_100946420);
  v37 = *(*(v36 - 8) + 16);

  return v37(a2 + v34, v35, v36);
}

uint64_t sub_1001C3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v30 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD7140, &qword_1009460C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1000F24EC(&qword_100AD7138, &qword_1009460C0);
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_1000F24EC(&qword_100AD7128, &qword_1009460B0);
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  __chkstk_darwin(v13);
  v24 = &v23 - v15;
  v32 = a1;
  sub_1000F24EC(&qword_100AD7160, &unk_1009460D8);
  sub_10000B58C(&qword_100AD7168, &qword_100AD7160, &unk_1009460D8, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v16 = sub_10000B58C(&qword_100AD7148, &qword_100AD7140, &qword_1009460C8, &protocol conformance descriptor for List<A, B>);
  View.listStyle<A>(_:)();
  (*(v27 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v33 = v6;
  v34 = v3;
  v35 = v16;
  v36 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v24;
  View.navigationTitle(_:)();
  (*(v26 + 8))(v12, v10);
  v31 = v25;
  sub_1000F24EC(&qword_100AD7130, &qword_1009460B8);
  v33 = v10;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1000F2A18(&qword_100AD7150, &qword_1009460D0);
  v20 = sub_10000B58C(&qword_100AD7158, &qword_100AD7150, &qword_1009460D0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  View.toolbar<A>(content:)();
  return (*(v29 + 8))(v18, v21);
}

uint64_t sub_1001C4158@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X8>)
{
  v114 = a2;
  v146 = sub_1000F24EC(&qword_100AD7170, &qword_1009460E8);
  v168 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v137 = &v112 - v5;
  v144 = sub_1000F24EC(&qword_100AD7178, &qword_1009460F0);
  v165 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v113 = &v112 - v8;
  v142 = sub_1000F24EC(&qword_100AD7180, &qword_1009460F8);
  v177 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v166 = &v112 - v11;
  v160 = sub_1000F24EC(&qword_100AD7188, &qword_100946100);
  v176 = *(v160 - 8);
  __chkstk_darwin(v160);
  v139 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = (&v112 - v14);
  v135 = sub_1000F24EC(&qword_100AD7190, &qword_100946108);
  v141 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v112 - v17;
  __chkstk_darwin(v18);
  v133 = &v112 - v19;
  __chkstk_darwin(v20);
  v132 = &v112 - v21;
  __chkstk_darwin(v22);
  v134 = &v112 - v23;
  __chkstk_darwin(v24);
  v159 = &v112 - v25;
  __chkstk_darwin(v26);
  v158 = &v112 - v27;
  __chkstk_darwin(v28);
  v161 = &v112 - v29;
  v167 = sub_1000F24EC(&qword_100AD7198, &qword_100946110);
  v175 = *(v167 - 8);
  __chkstk_darwin(v167);
  v131 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v157 = &v112 - v32;
  v164 = sub_1000F24EC(&qword_100AD71A0, &qword_100946118);
  v174 = *(v164 - 8);
  __chkstk_darwin(v164);
  v128 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v156 = &v112 - v35;
  v162 = sub_1000F24EC(&qword_100AD71A8, &qword_100946120);
  v173 = *(v162 - 8);
  __chkstk_darwin(v162);
  v125 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v155 = &v112 - v38;
  v153 = sub_1000F24EC(&qword_100AD71B0, &qword_100946128);
  v172 = *(v153 - 8);
  __chkstk_darwin(v153);
  v123 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v152 = &v112 - v41;
  v151 = sub_1000F24EC(&qword_100AD71B8, &qword_100946130);
  v171 = *(v151 - 8);
  __chkstk_darwin(v151);
  v121 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v150 = &v112 - v44;
  v148 = sub_1000F24EC(&qword_100AD71C0, &qword_100946138);
  v130 = *(v148 - 8);
  __chkstk_darwin(v148);
  v120 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v118 = (&v112 - v47);
  __chkstk_darwin(v48);
  v149 = &v112 - v49;
  __chkstk_darwin(v50);
  v147 = &v112 - v51;
  v154 = sub_1000F24EC(&qword_100AD71C8, &qword_100946140);
  v170 = *(v154 - 8);
  __chkstk_darwin(v154);
  v117 = &v112 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v119 = &v112 - v54;
  v129 = sub_1000F24EC(&qword_100AD71D0, &qword_100946148);
  v169 = *(v129 - 8);
  __chkstk_darwin(v129);
  v116 = &v112 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v122 = &v112 - v57;
  v58 = sub_1000F24EC(&qword_100AD71D8, &qword_100946150);
  v126 = *(v58 - 8);
  v127 = v58;
  __chkstk_darwin(v58);
  v115 = &v112 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v124 = &v112 - v61;
  sub_1000F24EC(&qword_100AD71E0, &qword_100946158);
  sub_10000B58C(&qword_100AD71E8, &qword_100AD71E0, &qword_100946158, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(content:)();
  v185 = xmmword_100945D90;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v184 = a1;
  sub_1000F24EC(&qword_100AD71F0, &qword_100946160);
  sub_10000B58C(&qword_100AD71F8, &qword_100AD71F0, &qword_100946160, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945DA0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD7200, &qword_100946168);
  sub_10000B58C(&qword_100AD7208, &qword_100AD7200, &qword_100946168, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945DB0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v183 = a1;
  v112 = sub_1000F24EC(&qword_100AD7210, &qword_100946170);
  sub_10000B58C(&qword_100AD7218, &qword_100AD7210, &qword_100946170, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945DC0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v182 = a1;
  sub_1000F24EC(&qword_100AD7220, &qword_100946178);
  sub_10000B58C(&qword_100AD7228, &qword_100AD7220, &qword_100946178, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945DD0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v181 = a1;
  sub_1000F24EC(&qword_100AD7230, &qword_100946180);
  sub_10000B58C(&qword_100AD7238, &qword_100AD7230, &qword_100946180, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v180 = a1;
  v185 = xmmword_100945DE0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v202 = 0xD00000000000002CLL;
  v203 = 0x80000001008E44B0;
  v204 = 0;
  v205 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD7240, &qword_100946188);
  sub_10000B58C(&qword_100AD7248, &qword_100AD7240, &qword_100946188, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:footer:content:)();
  *&v185 = 0xD000000000000010;
  *(&v185 + 1) = 0x80000001008E44E0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  Section<>.init(header:content:)();
  v185 = xmmword_100945DF0;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v179 = a1;
  sub_1000F24EC(&qword_100AD7250, &qword_100946190);
  sub_10000B58C(&qword_100AD7258, &qword_100AD7250, &qword_100946190, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945E00;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD7260, &qword_100946198);
  sub_10000B58C(&qword_100AD7268, &qword_100AD7260, &qword_100946198, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945E10;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
  Section<>.init(header:content:)();
  sub_1001CE8B4(v163);
  *&v185 = 0xD000000000000018;
  *(&v185 + 1) = 0x80000001008E4500;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD7270, &qword_1009461A0);
  sub_10000B58C(&qword_100AD7278, &qword_100AD7270, &qword_1009461A0, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v185 = xmmword_100945E20;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  Section<>.init(header:content:)();
  v185 = xmmword_100945E30;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  Section<>.init(header:content:)();
  *&v185 = 0xD000000000000016;
  *(&v185 + 1) = 0x80000001008E4520;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  Section<>.init(header:content:)();
  *&v185 = 0xD000000000000013;
  *(&v185 + 1) = 0x80000001008E4540;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  v178 = a1;
  sub_1000F24EC(&qword_100AD7280, &qword_1009461A8);
  sub_10000B58C(&qword_100AD7288, &qword_100AD7280, &qword_1009461A8, &protocol conformance descriptor for Toggle<A>);
  v62 = v113;
  Section<>.init(header:content:)();
  v185 = xmmword_100945E40;
  LOBYTE(v186) = 0;
  v187 = _swiftEmptyArrayStorage;
  Section<>.init(header:content:)();
  v63 = v115;
  (*(v126 + 16))(v115, v124, v127);
  *&v185 = v63;
  v64 = v116;
  (*(v169 + 16))(v116, v122, v129);
  *(&v185 + 1) = v64;
  v65 = v117;
  (*(v170 + 16))(v117, v119, v154);
  v186 = v65;
  v66 = *(v130 + 16);
  v67 = v118;
  v68 = v148;
  v66(v118, v147, v148);
  v187 = v67;
  v69 = v121;
  (*(v171 + 16))(v121, v150, v151);
  v188 = v69;
  v70 = v123;
  (*(v172 + 16))(v123, v152, v153);
  v189 = v70;
  v71 = v125;
  (*(v173 + 16))(v125, v155, v162);
  v190 = v71;
  v72 = v120;
  v66(v120, v149, v68);
  v191 = v72;
  v73 = v128;
  (*(v174 + 16))(v128, v156, v164);
  v192 = v73;
  v74 = v131;
  (*(v175 + 16))(v131, v157, v167);
  v193 = v74;
  v75 = *(v141 + 16);
  v76 = v132;
  v77 = v135;
  v75(v132, v161, v135);
  v194 = v76;
  v78 = v139;
  (*(v176 + 16))(v139, v163, v160);
  v195 = v78;
  v79 = v140;
  v80 = v142;
  (*(v177 + 16))(v140, v166, v142);
  v196 = v79;
  v81 = v133;
  v75(v133, v158, v77);
  v197 = v81;
  v82 = v136;
  v75(v136, v159, v77);
  v198 = v82;
  v83 = v138;
  v84 = v134;
  v75(v138, v134, v77);
  v199 = v83;
  v85 = v165;
  v86 = v143;
  v87 = v144;
  (*(v165 + 16))(v143, v62, v144);
  v200 = v86;
  v88 = v168;
  v90 = v145;
  v89 = v146;
  v91 = v137;
  (*(v168 + 16))(v145, v137, v146);
  v201 = v90;
  sub_1001C337C(&v185, v114);
  v92 = *(v88 + 8);
  v168 = v88 + 8;
  v114 = v92;
  v92(v91, v89);
  v93 = *(v85 + 8);
  v165 = v85 + 8;
  v137 = v93;
  (v93)(v62, v87);
  v94 = *(v141 + 8);
  v95 = v135;
  v94(v84, v135);
  v94(v159, v95);
  v94(v158, v95);
  v96 = *(v177 + 8);
  v177 += 8;
  v159 = v96;
  (v96)(v166, v80);
  v97 = *(v176 + 8);
  v176 += 8;
  v166 = v97;
  (v97)(v163, v160);
  v94(v161, v95);
  v98 = *(v175 + 8);
  v175 += 8;
  v163 = v98;
  (v98)(v157, v167);
  v99 = *(v174 + 8);
  v174 += 8;
  v161 = v99;
  (v99)(v156, v164);
  v100 = *(v130 + 8);
  v101 = v148;
  v100(v149, v148);
  v102 = *(v173 + 8);
  v173 += 8;
  v158 = v102;
  (v102)(v155, v162);
  v103 = *(v172 + 8);
  v172 += 8;
  v157 = v103;
  (v103)(v152, v153);
  v104 = *(v171 + 8);
  v171 += 8;
  v156 = v104;
  (v104)(v150, v151);
  v100(v147, v101);
  v105 = *(v170 + 8);
  v170 += 8;
  v155 = v105;
  (v105)(v119, v154);
  v106 = *(v169 + 8);
  v169 += 8;
  v152 = v106;
  v107 = v129;
  (v106)(v122, v129);
  v108 = v127;
  v109 = *(v126 + 8);
  v109(v124, v127);
  v114(v145, v146);
  (v137)(v143, v144);
  v94(v138, v95);
  v94(v136, v95);
  v94(v133, v95);
  (v159)(v140, v142);
  (v166)(v139, v160);
  v94(v132, v95);
  (v163)(v131, v167);
  (v161)(v128, v164);
  v110 = v148;
  v100(v120, v148);
  (v158)(v125, v162);
  (v157)(v123, v153);
  (v156)(v121, v151);
  v100(v118, v110);
  (v155)(v117, v154);
  (v152)(v116, v107);
  return (v109)(v115, v108);
}

uint64_t sub_1001C5B4C@<X0>(void (*a1)(char *, uint64_t)@<X8>)
{
  v89 = a1;
  v118 = sub_1000F24EC(&qword_100AD7540, &qword_100946420);
  v122 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v88 = &v84 - v3;
  v117 = sub_1000F24EC(&qword_100AD7548, &qword_100946428);
  v121 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = &v84 - v6;
  v114 = sub_1000F24EC(&qword_100AD7550, &qword_100946430);
  v120 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v84 - v9;
  v112 = sub_1000F24EC(&qword_100AD7558, &qword_100946438);
  v129 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v84 - v12;
  v119 = sub_1000F24EC(&qword_100AD7560, &qword_100946440);
  v128 = *(v119 - 8);
  __chkstk_darwin(v119);
  v107 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = &v84 - v15;
  v111 = sub_1000F24EC(&qword_100AD7568, &qword_100946448);
  v127 = *(v111 - 8);
  __chkstk_darwin(v111);
  v104 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v84 - v18;
  v109 = sub_1000F24EC(&qword_100AD7570, &qword_100946450);
  v126 = *(v109 - 8);
  __chkstk_darwin(v109);
  v102 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v108 = sub_1000F24EC(&qword_100AD7578, &qword_100946458);
  v125 = *(v108 - 8);
  __chkstk_darwin(v108);
  v98 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v84 - v25;
  v106 = sub_1000F24EC(&qword_100AD7580, &qword_100946460);
  v124 = *(v106 - 8);
  __chkstk_darwin(v106);
  v96 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v90 = &v84 - v29;
  v105 = sub_1000F24EC(&qword_100AD7588, &qword_100946468);
  v123 = *(v105 - 8);
  __chkstk_darwin(v105);
  v94 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v91 = &v84 - v32;
  v100 = sub_1000F24EC(&qword_100AD7590, &qword_100946470);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v92 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v93 = &v84 - v35;
  sub_1001D4408();
  NavigationLink.init(destination:label:)();
  sub_1001D445C();
  NavigationLink.init(destination:label:)();
  sub_1001D44B0();
  NavigationLink.init(destination:label:)();
  sub_1001D4504();
  v86 = v26;
  NavigationLink.init(destination:label:)();
  sub_1001D4558();
  v36 = v22;
  v85 = v22;
  NavigationLink.init(destination:label:)();
  sub_1001D45AC();
  v37 = v95;
  NavigationLink.init(destination:label:)();
  sub_1001D4600();
  v38 = v97;
  NavigationLink.init(destination:label:)();
  sub_1001D4654();
  v39 = v101;
  NavigationLink.init(destination:label:)();
  sub_1001D46A8();
  v40 = v103;
  NavigationLink.init(destination:label:)();
  sub_1001D46FC();
  v41 = v87;
  NavigationLink.init(destination:label:)();
  sub_1001D4750();
  v42 = v88;
  NavigationLink.init(destination:label:)();
  v43 = v92;
  (*(v99 + 16))(v92, v93, v100);
  v130[0] = v43;
  v44 = v94;
  (*(v123 + 16))(v94, v91, v105);
  v130[1] = v44;
  v45 = v96;
  (*(v124 + 16))(v96, v90, v106);
  v130[2] = v45;
  v46 = v98;
  (*(v125 + 16))(v98, v26, v108);
  v130[3] = v46;
  v47 = v102;
  (*(v126 + 16))(v102, v36, v109);
  v130[4] = v47;
  v48 = v104;
  (*(v127 + 16))(v104, v37, v111);
  v130[5] = v48;
  v49 = v107;
  (*(v128 + 16))(v107, v38, v119);
  v130[6] = v49;
  v50 = v110;
  v51 = v112;
  (*(v129 + 16))(v110, v39, v112);
  v130[7] = v50;
  v52 = v120;
  v53 = v113;
  v54 = v40;
  v55 = v114;
  (*(v120 + 16))(v113, v54, v114);
  v130[8] = v53;
  v56 = v121;
  v57 = v115;
  v58 = v41;
  v59 = v41;
  v60 = v117;
  (*(v121 + 16))(v115, v58, v117);
  v130[9] = v57;
  v61 = v122;
  v62 = v116;
  v63 = v42;
  v64 = v42;
  v65 = v118;
  (*(v122 + 16))(v116, v64, v118);
  v130[10] = v62;
  sub_1001C38B0(v130, v89);
  v66 = *(v61 + 8);
  v122 = v61 + 8;
  v89 = v66;
  v66(v63, v65);
  v67 = *(v56 + 8);
  v121 = v56 + 8;
  v88 = v67;
  (v67)(v59, v60);
  v68 = *(v52 + 8);
  v120 = v52 + 8;
  v87 = v68;
  (v68)(v103, v55);
  v69 = *(v129 + 8);
  v129 += 8;
  v103 = v69;
  (v69)(v101, v51);
  v70 = *(v128 + 8);
  v128 += 8;
  v101 = v70;
  (v70)(v97, v119);
  v71 = *(v127 + 8);
  v127 += 8;
  v97 = v71;
  v72 = v111;
  (v71)(v95, v111);
  v73 = *(v126 + 8);
  v126 += 8;
  v95 = v73;
  v74 = v109;
  (v73)(v85, v109);
  v75 = *(v125 + 8);
  v125 += 8;
  v85 = v75;
  v76 = v108;
  v75(v86, v108);
  v77 = *(v124 + 8);
  v124 += 8;
  v78 = v106;
  v77(v90, v106);
  v79 = *(v123 + 8);
  v123 += 8;
  v80 = v105;
  v79(v91, v105);
  v81 = *(v99 + 8);
  v82 = v100;
  v81(v93, v100);
  v89(v116, v118);
  (v88)(v115, v117);
  (v87)(v113, v114);
  (v103)(v110, v112);
  (v101)(v107, v119);
  (v97)(v104, v72);
  (v95)(v102, v74);
  v85(v98, v76);
  v77(v96, v78);
  v79(v94, v80);
  return (v81)(v92, v82);
}

double sub_1001C6BF4@<D0>(uint64_t a1@<X8>)
{
  result = 2.17971975e243;
  *a1 = xmmword_100945E50;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6C14@<D0>(uint64_t a1@<X8>)
{
  result = 2.87504674e161;
  *a1 = xmmword_100945E60;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6C34@<D0>(uint64_t a1@<X8>)
{
  result = 538416.704;
  *a1 = xmmword_100945E70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C6C54(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4F60;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_1001C6C84@<D0>(uint64_t a1@<X8>)
{
  result = 7.54781657e106;
  *a1 = xmmword_100945E80;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C6CA4(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001008E4F40;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_1001C6CD4@<D0>(uint64_t a1@<X8>)
{
  result = 1.42689898e248;
  *a1 = xmmword_100945E90;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6CF4@<D0>(uint64_t a1@<X8>)
{
  result = 8.54519985e194;
  *a1 = xmmword_100945EA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6D14@<D0>(uint64_t a1@<X8>)
{
  result = 4.84865695e199;
  *a1 = xmmword_100945EB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6D34@<D0>(uint64_t a1@<X8>)
{
  result = 3.36131169e160;
  *a1 = xmmword_100945EC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001C6D54@<D0>(uint64_t a1@<X8>)
{
  result = 1.20043959e49;
  *a1 = xmmword_100945ED0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001C6D74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v58 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v47 - v6;
  __chkstk_darwin(v7);
  v57 = &v47 - v8;
  __chkstk_darwin(v9);
  v56 = &v47 - v10;
  __chkstk_darwin(v11);
  v62 = &v47 - v12;
  __chkstk_darwin(v13);
  v51 = &v47 - v14;
  __chkstk_darwin(v15);
  v55 = &v47 - v16;
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v54 = sub_1000F24EC(&qword_100AD7350, &qword_100946270);
  v47 = *(v54 - 8);
  v20 = v47;
  __chkstk_darwin(v54);
  v61 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v52 = &v47 - v23;
  __chkstk_darwin(v24);
  v53 = &v47 - v25;
  __chkstk_darwin(v26);
  v64 = a1;
  v28 = &v47 - v27;
  v49 = &v47 - v27;
  LabeledContent<>.init(content:label:)();
  v48 = v19;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v63 = a1;
  LabeledContent<>.init(content:label:)();
  Button.init(action:label:)();
  Button.init(action:label:)();
  v29 = *(v20 + 16);
  v30 = v52;
  v31 = v54;
  v29(v52, v28, v54);
  v32 = *(v58 + 16);
  v33 = v56;
  v34 = v19;
  v35 = v3;
  v32(v56, v34, v3);
  v36 = v57;
  v32(v57, v55, v3);
  v37 = v31;
  v29(v61, v53, v31);
  v32(v60, v51, v35);
  v32(v59, v62, v35);
  v38 = v50;
  v29(v50, v30, v37);
  v39 = sub_1000F24EC(&qword_100AD7538, &qword_100946418);
  v32(&v38[v39[12]], v33, v35);
  v32(&v38[v39[16]], v36, v35);
  v40 = v54;
  v29(&v38[v39[20]], v61, v54);
  v41 = v60;
  v32(&v38[v39[24]], v60, v35);
  v42 = &v38[v39[28]];
  v43 = v59;
  v32(v42, v59, v35);
  v44 = *(v58 + 8);
  v44(v62, v35);
  v44(v51, v35);
  v45 = *(v47 + 8);
  v45(v53, v40);
  v44(v55, v35);
  v44(v48, v35);
  v45(v49, v40);
  v44(v43, v35);
  v44(v41, v35);
  v45(v61, v40);
  v44(v57, v35);
  v44(v56, v35);
  return (v45)(v52, v40);
}

uint64_t sub_1001C7478@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AdminMenu(0);
  AppStorage.wrappedValue.getter();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C74F8(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000011;
  *(a1 + 8) = 0x80000001008E4F20;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C7530(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000017;
  *(a1 + 8) = 0x80000001008E4F00;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C7568(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 setInteger:a1 forKey:v3];
}

void sub_1001C7604(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000001ALL;
  *(a1 + 8) = 0x80000001008E4EE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001C7634@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AdminMenu(0);
  AppStorage.wrappedValue.getter();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C76B4(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000022;
  *(a1 + 8) = 0x80000001008E4EB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C76EC(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000033;
  *(a1 + 8) = 0x80000001008E4E70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C7724(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 setInteger:a1 forKey:v3];
}

void sub_1001C77C0(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000027;
  *(a1 + 8) = 0x80000001008E4E40;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001C77F0@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v1 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v66 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v51 - v4;
  __chkstk_darwin(v5);
  v55 = &v51 - v6;
  __chkstk_darwin(v7);
  v65 = &v51 - v8;
  __chkstk_darwin(v9);
  v64 = &v51 - v10;
  __chkstk_darwin(v11);
  v68 = &v51 - v12;
  __chkstk_darwin(v13);
  v67 = &v51 - v14;
  __chkstk_darwin(v15);
  v63 = &v51 - v16;
  __chkstk_darwin(v17);
  v62 = &v51 - v18;
  __chkstk_darwin(v19);
  v61 = &v51 - v20;
  __chkstk_darwin(v21);
  v23 = &v51 - v22;
  __chkstk_darwin(v24);
  v26 = &v51 - v25;
  __chkstk_darwin(v27);
  v29 = &v51 - v28;
  __chkstk_darwin(v30);
  v32 = &v51 - v31;
  __chkstk_darwin(v33);
  v59 = &v51 - v34;
  __chkstk_darwin(v35);
  v60 = &v51 - v36;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v54 = v32;
  Button.init(action:label:)();
  v53 = v29;
  Button.init(action:label:)();
  v52 = v26;
  Button.init(action:label:)();
  v37 = v23;
  v51 = v23;
  Button.init(action:label:)();
  v38 = v61;
  Button.init(action:label:)();
  v39 = v62;
  Button.init(action:label:)();
  v40 = *(v66 + 16);
  v41 = v63;
  v40(v63, v60, v1);
  v40(v67, v59, v1);
  v40(v68, v32, v1);
  v42 = v64;
  v40(v64, v29, v1);
  v43 = v65;
  v40(v65, v26, v1);
  v44 = v55;
  v40(v55, v37, v1);
  v45 = v56;
  v40(v56, v38, v1);
  v46 = v57;
  v40(v57, v39, v1);
  v47 = v58;
  v40(v58, v41, v1);
  v48 = sub_1000F24EC(&qword_100AD7530, &unk_100946408);
  v40(&v47[v48[12]], v67, v1);
  v40(&v47[v48[16]], v68, v1);
  v40(&v47[v48[20]], v42, v1);
  v40(&v47[v48[24]], v43, v1);
  v40(&v47[v48[28]], v44, v1);
  v40(&v47[v48[32]], v45, v1);
  v40(&v47[v48[36]], v46, v1);
  v49 = *(v66 + 8);
  v49(v62, v1);
  v49(v61, v1);
  v49(v51, v1);
  v49(v52, v1);
  v49(v53, v1);
  v49(v54, v1);
  v49(v59, v1);
  v49(v60, v1);
  v49(v46, v1);
  v49(v45, v1);
  v49(v44, v1);
  v49(v65, v1);
  v49(v64, v1);
  v49(v68, v1);
  v49(v67, v1);
  return (v49)(v63, v1);
}

void sub_1001C8014()
{
  v0 = [objc_opt_self() standardUserDefaults];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setObject:isa forKey:v2];
}

void sub_1001C80C8(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001FLL;
  *(a1 + 8) = 0x80000001008E4E20;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C80F8()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v1 = [objc_opt_self() standardUserDefaults];
  sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100942000;
  *(v2 + 32) = v5;
  *(v2 + 48) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = String._bridgeToObjectiveC()();
  [v1 setObject:isa forKey:v4];
}

void sub_1001C8230(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000036;
  *(a1 + 8) = 0x80000001008E4DE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C8260()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  sub_1000F24EC(&unk_100AD8A90, &qword_1009451C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100942000;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v5 - 1;
    *(v1 + 40) = v6;
    *(v1 + 48) = v7;
    v2 = [objc_opt_self() standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = String._bridgeToObjectiveC()();
    [v2 setObject:isa forKey:v4];
  }
}

void sub_1001C83A8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000036;
  *(a1 + 8) = 0x80000001008E4D70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C83D8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];
}

void sub_1001C8470(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4D50;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C84A0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = byte_100AE96B8 - 1;
  v2 = String._bridgeToObjectiveC()();
  [v0 setInteger:v1 forKey:v2];
}

void sub_1001C8544(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000058;
  *(a1 + 8) = 0x80000001008E4CC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C857C(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000002BLL;
  *(a1 + 8) = 0x80000001008E4C90;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C85B4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 setInteger:a1 forKey:v4];

  v5 = [v2 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:0 forKey:v6];
}

void sub_1001C86C0(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  *(a1 + 8) = 0x80000001008E4C40;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C86F0()
{
  if (qword_100ACFA38 != -1)
  {
    swift_once();
  }

  sub_100026188();
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  [v0 setObject:0 forKey:v1];
}

void sub_1001C87A8(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(26);

  if (qword_100ACFA38 != -1)
  {
    swift_once();
  }

  sub_100026188();
  v2 = static NSUserDefaults.shared.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9 = _findStringSwitchCase(cases:string:)(&off_100A573F8, v8);

  if (!v9)
  {
    v10 = 0xE600000000000000;
    v11 = 0x776F4E746F6ELL;
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    v10 = 0xEA0000000000636ELL;
    v11 = 0x79536E4F6E727574;
  }

  else
  {
LABEL_7:
    v10 = 0xE90000000000003ELL;
    v11 = 0x74657320746F6E3CLL;
  }

LABEL_9:
  v12 = v10;
  String.append(_:)(*&v11);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4C20;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001C8960@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1000F24EC(&qword_100AD7350, &qword_100946270);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v42 = a1;
  v18 = &v31 - v17;
  v35 = &v31 - v17;
  LabeledContent<>.init(content:label:)();
  v41 = a1;
  v33 = v15;
  LabeledContent<>.init(content:label:)();
  v32 = v6;
  Button.init(action:label:)();
  v19 = *(v8 + 16);
  v34 = v12;
  v19(v12, v18, v7);
  v20 = v36;
  v19(v36, v15, v7);
  v21 = *(v40 + 16);
  v22 = v6;
  v23 = v37;
  v21(v39, v22, v37);
  v24 = v38;
  v19(v38, v12, v7);
  v25 = sub_1000F24EC(&qword_100AD7368, &qword_100946290);
  v19(&v24[*(v25 + 48)], v20, v7);
  v26 = &v24[*(v25 + 64)];
  v27 = v39;
  v21(v26, v39, v23);
  v28 = *(v40 + 8);
  v28(v32, v23);
  v29 = *(v8 + 8);
  v29(v33, v7);
  v29(v35, v7);
  v28(v27, v23);
  v29(v20, v7);
  return (v29)(v34, v7);
}

int8x16_t sub_1001C8D88@<Q0>(int8x16_t *a2@<X8>)
{
  type metadata accessor for AdminMenu(0);
  AppStorage.wrappedValue.getter();
  v3 = vdup_n_s32(v6 == 4);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), xmmword_100945EF0, xmmword_100945EE0);
  *a2 = result;
  a2[1].i8[0] = 0;
  a2[1].i64[1] = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C8E18(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000010;
  *(a1 + 8) = 0x80000001008E4C00;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void *sub_1001C8E48@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AdminMenu(0);
  result = AppStorage.wrappedValue.getter();
  v4 = 1702195828;
  if (!v6)
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (v6)
  {
    v5 = 0xE400000000000000;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001C8ED4(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000026;
  *(a1 + 8) = 0x80000001008E4BD0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001C8F04()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 removeObjectForKey:v5];

  v6 = String._bridgeToObjectiveC()();
  [v4 removeObjectForKey:v6];

  (*(v1 + 104))(v3, enum case for SettingsKey.lockJournalState(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v7 = String._bridgeToObjectiveC()();

  [v4 setInteger:-1 forKey:v7];

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:0 forKey:v9];
}

void sub_1001C9128(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000022;
  *(a1 + 8) = 0x80000001008E4B80;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001C9158@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v36 = a2;
  v35 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v42 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v41 = &v30 - v4;
  v5 = sub_1000F24EC(&qword_100AD4028, &qword_1009463C0);
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v33 = sub_1000F24EC(&qword_100AD74E0, &unk_1009463C8);
  v40 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v30 - v10;
  __chkstk_darwin(v11);
  v38 = &v30 - v12;
  __chkstk_darwin(v13);
  v37 = &v30 - v14;
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD4038, &unk_100942800);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038, &unk_100942800, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.wrappedValue.getter();
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028, &qword_1009463C0, &protocol conformance descriptor for Toggle<A>);
  v15 = v37;
  View.onChange<A>(of:initial:_:)();
  v16 = *(v31 + 8);
  v16(v7, v5);
  AppStorage.projectedValue.getter();
  Toggle.init(isOn:label:)();
  AppStorage.wrappedValue.getter();
  v17 = v38;
  View.onChange<A>(of:initial:_:)();
  v16(v7, v5);
  v18 = v41;
  Button.init(action:label:)();
  v19 = v39;
  v20 = *(v40 + 16);
  v21 = v33;
  v20(v39, v15, v33);
  v22 = v32;
  v20(v32, v17, v21);
  v31 = *(v42 + 16);
  v23 = v34;
  v24 = v35;
  (v31)(v34, v18, v35);
  v25 = v36;
  v20(v36, v19, v21);
  v26 = sub_1000F24EC(&qword_100AD7528, &qword_100946400);
  v20(&v25[*(v26 + 48)], v22, v21);
  (v31)(&v25[*(v26 + 64)], v23, v24);
  v27 = *(v42 + 8);
  v27(v41, v24);
  v28 = *(v40 + 8);
  v28(v38, v21);
  v28(v37, v21);
  v27(v23, v24);
  v28(v22, v21);
  return (v28)(v39, v21);
}

double sub_1001C97D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  static Color.red.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a3 = a4;
  a3[1].n128_u8[0] = 0;
  a3[1].n128_u64[1] = _swiftEmptyArrayStorage;
  a3[2].n128_u64[0] = v7;
  a3[2].n128_u64[1] = v9;
  a3[3].n128_u8[0] = v11 & 1;
  a3[3].n128_u64[1] = v13;
  sub_1000F24DC(a1, a2, 0);

  sub_1000F24DC(v7, v9, v11 & 1);

  sub_1000594D0(v7, v9, v11 & 1);

  sub_1000594D0(a1, a2, 0);

  return result;
}

void sub_1001C991C()
{
  sub_100026188();
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  [v0 setInteger:0 forKey:v1];

  exit(0);
}

void sub_1001C9988(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4B20;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001C99B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a1;
  v40 = a2;
  v2 = sub_1000F24EC(&qword_100AD74D0, &qword_1009463B0);
  __chkstk_darwin(v2 - 8);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = (&v34 - v5);
  v38 = sub_1000F24EC(&qword_100AD74D8, &qword_1009463B8);
  v46 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v34 - v8;
  v35 = sub_1000F24EC(&qword_100AD4028, &qword_1009463C0);
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v34 - v10;
  v36 = sub_1000F24EC(&qword_100AD74E0, &unk_1009463C8);
  v45 = *(v36 - 8);
  __chkstk_darwin(v36);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v34 - v14;
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD4038, &unk_100942800);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038, &unk_100942800, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.wrappedValue.getter();
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028, &qword_1009463C0, &protocol conformance descriptor for Toggle<A>);
  v15 = v41;
  v16 = v35;
  View.onChange<A>(of:initial:_:)();
  (*(v9 + 8))(v11, v16);
  AppStorage.projectedValue.getter();
  v50 = v47;
  v51 = v48;
  v52 = v49;
  sub_1001CA378(&v47);
  sub_1000F24EC(&qword_100AD74E8, &qword_1009463D8);
  sub_1001D436C();
  v17 = v43;
  Picker.init(selection:label:content:)();
  v18 = static VerticalAlignment.center.getter();
  v19 = v44;
  *v44 = v18;
  v19[1] = 0;
  *(v19 + 16) = 1;
  v20 = sub_1000F24EC(&qword_100AD74F8, &qword_1009463E0);
  v21 = sub_1001CA4BC(v19 + *(v20 + 44));
  v22 = *(v45 + 16);
  v23 = v42;
  v24 = v36;
  v22(v42, v15, v36, v21);
  v25 = *(v46 + 16);
  v26 = v37;
  v27 = v38;
  v25(v37, v17, v38);
  v28 = v39;
  sub_1000082B4(v19, v39, &qword_100AD74D0, &qword_1009463B0);
  v29 = v40;
  (v22)(v40, v23, v24);
  v30 = sub_1000F24EC(&qword_100AD7500, &qword_1009463E8);
  v25(&v29[*(v30 + 48)], v26, v27);
  sub_1000082B4(v28, &v29[*(v30 + 64)], &qword_100AD74D0, &qword_1009463B0);
  sub_100004F84(v44, &qword_100AD74D0, &qword_1009463B0);
  v31 = *(v46 + 8);
  v31(v43, v27);
  v32 = *(v45 + 8);
  v32(v41, v24);
  sub_100004F84(v28, &qword_100AD74D0, &qword_1009463B0);
  v31(v26, v27);
  return (v32)(v42, v24);
}

double sub_1001CA018@<D0>(uint64_t a1@<X8>)
{
  static Font.caption.getter();
  v2 = Text.font(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001008E4AC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6 & 1;
  *(a1 + 56) = v8;
  sub_1000F24DC(0xD00000000000001ALL, 0x80000001008E4AC0, 0);

  sub_1000F24DC(v2, v4, v6 & 1);

  sub_1000594D0(v2, v4, v6 & 1);

  sub_1000594D0(0xD00000000000001ALL, 0x80000001008E4AC0, 0);

  return result;
}

void sub_1001CA158(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (static Runtime.isInternalBuild.getter())
  {
    if (qword_100AD0B98 != -1)
    {
      swift_once();
    }

    v3 = qword_100AF4AF8;
    v4 = String._bridgeToObjectiveC()();
    [v3 setBool:v2 forKey:v4];
  }
}

uint64_t sub_1001CA21C()
{
  static AnalyticsEndpointName.allCases.getter();
  sub_1000F24EC(&qword_100AD7510, &qword_1009463F8);
  sub_10000B58C(&qword_100AD7518, &qword_100AD7510, &qword_1009463F8, &protocol conformance descriptor for [A]);
  sub_1001D5468(&qword_100AD7520, &type metadata accessor for AnalyticsEndpointName, &protocol conformance descriptor for AnalyticsEndpointName);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001CA31C@<X0>(uint64_t a1@<X8>)
{
  AnalyticsEndpointName.rawValue.getter();
  sub_1000777B4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1001CA378@<D0>(uint64_t a2@<X8>)
{
  static HierarchicalShapeStyle.secondary.getter();
  v3 = Text.foregroundStyle<A>(_:)();
  v5 = v4;
  v7 = v6 & 1;
  *a2 = xmmword_100945F20;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v6 & 1;
  *(a2 + 56) = v8;
  sub_1000F24DC(0x45207463656C6553, 0xEF746E696F70646ELL, 0);

  sub_1000F24DC(v3, v5, v7);

  sub_1000594D0(v3, v5, v7);

  sub_1000594D0(0x45207463656C6553, 0xEF746E696F70646ELL, 0);

  return result;
}

double sub_1001CA4BC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD72B8, &unk_1009461C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  *a2 = xmmword_100945F30;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  v11 = sub_1000F24EC(&qword_100AD7508, &qword_1009463F0);
  v10((a2 + *(v11 + 48)), v6, v3);
  sub_1000F24DC(0x6144206775626544, 0xEB000000003A6174, 0);
  v12 = *(v4 + 8);

  v12(v9, v3);
  v12(v6, v3);
  sub_1000594D0(0x6144206775626544, 0xEB000000003A6174, 0);

  return result;
}

uint64_t sub_1001CA730@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000F24EC(&qword_100AD4068, &qword_100946280);
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v35 - v6;
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  __chkstk_darwin(v9);
  v42 = &v35 - v10;
  v11 = type metadata accessor for AdminMenu(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v43 = sub_1000F24EC(&qword_100AD7370, &qword_100946298);
  v37 = *(v43 - 8);
  v14 = v37;
  __chkstk_darwin(v43);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_1001D3BB4(a1, &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_1001D3C18(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v45 = a1;
  sub_1000F24EC(&qword_100AD7378, &qword_1009462A0);
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068, &qword_100946280, &protocol conformance descriptor for Toggle<A>);
  sub_1001D4204();
  v36 = v19;
  DisclosureGroup.init(content:label:)();
  AppStorage.projectedValue.getter();
  v22 = v42;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v23 = v44;
  Toggle.init(isOn:label:)();
  v24 = *(v14 + 16);
  v25 = v43;
  v24(v16, v19, v43);
  v26 = *(v41 + 16);
  v27 = v38;
  v26(v38, v22, v3);
  v28 = v39;
  v26(v39, v23, v3);
  v29 = v40;
  v24(v40, v16, v25);
  v30 = sub_1000F24EC(&qword_100AD73A8, &qword_1009462B8);
  v26(&v29[*(v30 + 48)], v27, v3);
  v26(&v29[*(v30 + 64)], v28, v3);
  v31 = *(v41 + 8);
  v31(v44, v3);
  v31(v42, v3);
  v32 = *(v37 + 8);
  v33 = v43;
  v32(v36, v43);
  v31(v28, v3);
  v31(v27, v3);
  return (v32)(v16, v33);
}

uint64_t sub_1001CAC70@<X0>(char *a2@<X8>)
{
  sub_1001CAD34(a2);
  type metadata accessor for AdminMenu(0);
  AppStorage.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v7 & 1) == 0;
  result = sub_1000F24EC(&qword_100AD7378, &qword_1009462A0);
  v6 = &a2[*(result + 36)];
  *v6 = KeyPath;
  v6[1] = sub_1001D54CC;
  v6[2] = v4;
  return result;
}

uint64_t sub_1001CAD34@<X0>(char *a2@<X8>)
{
  v50 = a2;
  v71 = sub_1000F24EC(&qword_100AD73B0, &qword_1009462C0);
  v78 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v43 - v4;
  v70 = sub_1000F24EC(&qword_100AD73B8, &qword_1009462C8);
  v77 = *(v70 - 8);
  __chkstk_darwin(v70);
  v61 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v43 - v7;
  v64 = sub_1000F24EC(&qword_100AD73C0, &qword_1009462D0);
  v76 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v43 - v10;
  v66 = sub_1000F24EC(&qword_100AD73C8, &qword_1009462D8);
  v75 = *(v66 - 8);
  __chkstk_darwin(v66);
  v68 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v43 - v13;
  v63 = sub_1000F24EC(&qword_100AD73D0, &qword_1009462E0);
  v74 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v43 - v16;
  v60 = sub_1000F24EC(&qword_100AD73D8, &qword_1009462E8);
  v73 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v57 = &v43 - v19;
  v52 = sub_1000F24EC(&qword_100AD73E0, &qword_1009462F0);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD73E8, &qword_1009462F8);
  sub_10000B58C(&qword_100AD73F0, &qword_100AD73E8, &qword_1009462F8, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD73F8, &qword_100946300);
  sub_10000B58C(&qword_100AD7400, &qword_100AD73F8, &qword_100946300, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7408, &qword_100946308);
  sub_10000B58C(&qword_100AD7410, &qword_100AD7408, &qword_100946308, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7418, &qword_100946310);
  sub_10000B58C(&qword_100AD7420, &qword_100AD7418, &qword_100946310, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7428, &qword_100946318);
  sub_10000B58C(&qword_100AD7430, &qword_100AD7428, &qword_100946318, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7438, &qword_100946320);
  sub_10000B58C(&qword_100AD7440, &qword_100AD7438, &qword_100946320, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7448, &qword_100946328);
  sub_10000B58C(&qword_100AD7450, &qword_100AD7448, &qword_100946328, &protocol conformance descriptor for TupleView<A>);
  Toggle.init(isOn:label:)();
  v43 = *(v54 + 16);
  v23 = v51;
  v24 = v52;
  v43(v51, v53, v52);
  v49 = *(v73 + 16);
  v49(v62, v57, v60);
  v48 = *(v74 + 16);
  v48(v65, v56, v63);
  v47 = *(v75 + 16);
  v47(v68, v55, v66);
  v46 = *(v76 + 16);
  v46(v58, v67, v64);
  v45 = *(v77 + 16);
  v45(v61, v69, v70);
  v44 = *(v78 + 16);
  v44(v72, v59, v71);
  v25 = v50;
  v43(v50, v23, v24);
  v26 = sub_1000F24EC(&qword_100AD7458, &unk_100946330);
  v49(&v25[v26[12]], v62, v60);
  v48(&v25[v26[16]], v65, v63);
  v47(&v25[v26[20]], v68, v66);
  v27 = v64;
  v46(&v25[v26[24]], v58, v64);
  v28 = v70;
  v45(&v25[v26[28]], v61, v70);
  v29 = &v25[v26[32]];
  v30 = v71;
  v44(v29, v72, v71);
  v31 = *(v78 + 8);
  v78 += 8;
  v50 = v31;
  (v31)(v59, v30);
  v32 = *(v77 + 8);
  v77 += 8;
  v59 = v32;
  (v32)(v69, v28);
  v33 = *(v76 + 8);
  v76 += 8;
  v33(v67, v27);
  v34 = *(v75 + 8);
  v75 += 8;
  v35 = v66;
  v34(v55, v66);
  v36 = *(v74 + 8);
  v74 += 8;
  v37 = v63;
  v36(v56, v63);
  v38 = *(v73 + 8);
  v73 += 8;
  v39 = v60;
  v38(v57, v60);
  v40 = *(v54 + 8);
  v41 = v52;
  v40(v53, v52);
  (v50)(v72, v71);
  (v59)(v61, v70);
  v33(v58, v64);
  v34(v68, v35);
  v36(v65, v37);
  v38(v62, v39);
  return (v40)(v51, v41);
}

double sub_1001CBA94@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD74C0, &qword_1009463A0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  *v13 = 0;
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD74C0, &qword_1009463A0);
  *a1 = xmmword_100945E90;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD74C8, &qword_1009463A8);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD74C0, &qword_1009463A0);
  sub_1000F24DC(0x7374686769736E49, 0xE800000000000000, 0);

  sub_100004F84(v13, &qword_100AD74C0, &qword_1009463A0);
  sub_100004F84(v10, &qword_100AD74C0, &qword_1009463A0);
  sub_1000594D0(0x7374686769736E49, 0xE800000000000000, 0);

  return result;
}

double sub_1001CBD10@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD74B0, &qword_100946390);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD74B0, &qword_100946390);
  *a1 = xmmword_100945F40;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD74B8, &qword_100946398);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD74B0, &qword_100946390);
  sub_1000F24DC(0x206C7566646E694DLL, 0xEF736574756E694DLL, 0);

  sub_100004F84(v13, &qword_100AD74B0, &qword_100946390);
  sub_100004F84(v10, &qword_100AD74B0, &qword_100946390);
  sub_1000594D0(0x206C7566646E694DLL, 0xEF736574756E694DLL, 0);

  return result;
}

double sub_1001CBF8C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD74A0, &qword_100946380);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD74A0, &qword_100946380);
  *a1 = 0xD00000000000001ELL;
  *(a1 + 8) = 0x80000001008E4A70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD74A8, &qword_100946388);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD74A0, &qword_100946380);
  sub_1000F24DC(0xD00000000000001ELL, 0x80000001008E4A70, 0);

  sub_100004F84(v13, &qword_100AD74A0, &qword_100946380);
  sub_100004F84(v10, &qword_100AD74A0, &qword_100946380);
  sub_1000594D0(0xD00000000000001ELL, 0x80000001008E4A70, 0);

  return result;
}

double sub_1001CC204@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD7490, &qword_100946370);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD7490, &qword_100946370);
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x80000001008E4A50;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD7498, &qword_100946378);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD7490, &qword_100946370);
  sub_1000F24DC(0xD000000000000013, 0x80000001008E4A50, 0);

  sub_100004F84(v13, &qword_100AD7490, &qword_100946370);
  sub_100004F84(v10, &qword_100AD7490, &qword_100946370);
  sub_1000594D0(0xD000000000000013, 0x80000001008E4A50, 0);

  return result;
}

double sub_1001CC47C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD7480, &qword_100946360);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD7480, &qword_100946360);
  *a1 = xmmword_100945F50;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD7488, &qword_100946368);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD7480, &qword_100946360);
  sub_1000F24DC(0x6974736567677553, 0xEB00000000736E6FLL, 0);

  sub_100004F84(v13, &qword_100AD7480, &qword_100946360);
  sub_100004F84(v10, &qword_100AD7480, &qword_100946360);
  sub_1000594D0(0x6974736567677553, 0xEB00000000736E6FLL, 0);

  return result;
}

double sub_1001CC6F4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD7470, &qword_100946350);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD7470, &qword_100946350);
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001008E4A30;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD7478, &qword_100946358);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD7470, &qword_100946350);
  sub_1000F24DC(0xD000000000000011, 0x80000001008E4A30, 0);

  sub_100004F84(v13, &qword_100AD7470, &qword_100946350);
  sub_100004F84(v10, &qword_100AD7470, &qword_100946350);
  sub_1000594D0(0xD000000000000011, 0x80000001008E4A30, 0);

  return result;
}

double sub_1001CC96C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = sub_1000F24EC(&qword_100AD7460, &qword_100946340);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Tips.Status();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1000082B4(v7, v4, &qword_100AD4CD0, &unk_100943730);
  State.init(wrappedValue:)();
  sub_100004F84(v7, &qword_100AD4CD0, &unk_100943730);
  sub_1000082B4(v13, v10, &qword_100AD7460, &qword_100946340);
  *a1 = xmmword_100945F60;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  v15 = sub_1000F24EC(&qword_100AD7468, &qword_100946348);
  sub_1000082B4(v10, a1 + *(v15 + 48), &qword_100AD7460, &qword_100946340);
  sub_1000F24DC(0x676775532077654ELL, 0xEF736E6F69747365, 0);

  sub_100004F84(v13, &qword_100AD7460, &qword_100946340);
  sub_100004F84(v10, &qword_100AD7460, &qword_100946340);
  sub_1000594D0(0x676775532077654ELL, 0xEF736E6F69747365, 0);

  return result;
}

uint64_t sub_1001CCBE8(uint64_t a1)
{
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

void sub_1001CCC6C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4A10;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CCC9C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001008E49F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_1001CCCCC@<D0>(uint64_t a1@<X8>)
{
  result = 3.53705588e160;
  *a1 = xmmword_100945F70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001CCCEC@<X0>(char *a1@<X8>)
{
  v38 = a1;
  v37 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v31 = *(v37 - 8);
  v1 = v31;
  __chkstk_darwin(v37);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v30 - v4;
  v5 = sub_1000F24EC(&qword_100AD7350, &qword_100946270);
  v34 = *(v5 - 8);
  v6 = v34;
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v35 = &v30 - v16;
  LabeledContent<>.init(content:label:)();
  v32 = v14;
  LabeledContent<>.init(content:label:)();
  v18 = v39;
  Button.init(action:label:)();
  v19 = *(v6 + 16);
  v20 = v11;
  v33 = v11;
  v19(v11, v17, v5);
  v19(v8, v14, v5);
  v21 = *(v1 + 16);
  v22 = v36;
  v23 = v18;
  v24 = v37;
  v21(v36, v23, v37);
  v25 = v38;
  v19(v38, v20, v5);
  v26 = sub_1000F24EC(&qword_100AD7368, &qword_100946290);
  v19(&v25[*(v26 + 48)], v8, v5);
  v21(&v25[*(v26 + 64)], v22, v24);
  v27 = *(v31 + 8);
  v27(v39, v24);
  v28 = *(v34 + 8);
  v28(v32, v5);
  v28(v35, v5);
  v27(v22, v24);
  v28(v8, v5);
  return (v28)(v33, v5);
}

void sub_1001CD11C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v6 = static NSUserDefaults.shared.getter();
  (*(v3 + 104))(v5, enum case for SettingsKey.addCurrentLocation(_:), v2);
  SettingsKey.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 BOOLForKey:v7];

  v9 = 1702195828;
  if (!v8)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CD2A8(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000022;
  *(a1 + 8) = 0x80000001008E49C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CD2D8(uint64_t a1@<X8>)
{
  sub_100026188();
  v2 = static NSUserDefaults.shared.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  v5 = 1702195828;
  if (!v4)
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CD390(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000002ELL;
  *(a1 + 8) = 0x80000001008E4990;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CD3C0()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026188();
  v4 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.addCurrentLocation(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v5 = String._bridgeToObjectiveC()();

  [v4 setBool:0 forKey:v5];

  v6 = static NSUserDefaults.shared.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 setBool:0 forKey:v7];
}

void sub_1001CD558(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000002ALL;
  *(a1 + 8) = 0x80000001008E4940;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CD588@<X0>(char *a2@<X8>)
{
  v36 = a2;
  v2 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v30 = *(v2 - 8);
  v3 = v30;
  __chkstk_darwin(v2);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v29 - v6;
  __chkstk_darwin(v7);
  v37 = &v29 - v8;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000F24EC(&qword_100AD4068, &qword_100946280);
  v33 = *(v12 - 8);
  v13 = v33;
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  v32 = v18;
  Toggle.init(isOn:label:)();
  v31 = v11;
  Button.init(action:label:)();
  v19 = v37;
  Button.init(action:label:)();
  v20 = *(v13 + 16);
  v20(v15, v18, v12);
  v21 = *(v3 + 16);
  v22 = v34;
  v21(v34, v11, v2);
  v23 = v35;
  v21(v35, v19, v2);
  v24 = v36;
  v20(v36, v15, v12);
  v25 = sub_1000F24EC(&qword_100AD7360, &qword_100946288);
  v21(&v24[*(v25 + 48)], v22, v2);
  v21(&v24[*(v25 + 64)], v23, v2);
  v26 = *(v30 + 8);
  v26(v37, v2);
  v26(v31, v2);
  v27 = *(v33 + 8);
  v27(v32, v12);
  v26(v23, v2);
  v26(v22, v2);
  return (v27)(v15, v12);
}

void sub_1001CD9B8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000023;
  *(a1 + 8) = 0x80000001008E4910;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CD9E8()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = [objc_opt_self() standardUserDefaults];
  static Date.now.getter();
  static Calendar.current.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.weekOfYear(_:), v0);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v19);
  v15 = *(v8 + 8);
  v15(v10, v7);
  isa = 0;
  if ((*(v8 + 48))(v13, 1, v7) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15(v13, v7);
  }

  v17 = String._bridgeToObjectiveC()();
  [v14 setObject:isa forKey:v17];

  swift_unknownObjectRelease();
}

void sub_1001CDD30(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000022;
  *(a1 + 8) = 0x80000001008E48B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CDD60()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];
}

void sub_1001CDDF8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001008E4860;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CDE28@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v43 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v47 = &v34 - v3;
  v4 = sub_1000F24EC(&qword_100AD7350, &qword_100946270);
  v39 = *(v4 - 8);
  v5 = v39;
  __chkstk_darwin(v4);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v36 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  v41 = &v34 - v20;
  LabeledContent<>.init(content:label:)();
  v38 = v18;
  LabeledContent<>.init(content:label:)();
  v37 = v15;
  LabeledContent<>.init(content:label:)();
  v22 = v47;
  Button.init(action:label:)();
  v23 = *(v5 + 16);
  v24 = v12;
  v40 = v12;
  v23(v12, v21, v4);
  v23(v9, v18, v4);
  v25 = v42;
  v23(v42, v15, v4);
  v35 = *(v46 + 16);
  v26 = v43;
  v27 = v44;
  v35(v44, v22, v43);
  v28 = v45;
  v23(v45, v24, v4);
  v29 = sub_1000F24EC(&qword_100AD7358, &qword_100946278);
  v30 = v36;
  v23(&v28[v29[12]], v36, v4);
  v23(&v28[v29[16]], v25, v4);
  v35(&v28[v29[20]], v27, v26);
  v31 = *(v46 + 8);
  v31(v47, v26);
  v32 = *(v39 + 8);
  v32(v37, v4);
  v32(v38, v4);
  v32(v41, v4);
  v31(v27, v26);
  v32(v25, v4);
  v32(v30, v4);
  return (v32)(v40, v4);
}

void sub_1001CE354(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000001ELL;
  *(a1 + 8) = 0x80000001008E4840;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CE38C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_100ACF988 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  sub_100027494(a1);
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_1001CE45C(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000001CLL;
  *(a1 + 8) = 0x80000001008E4820;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CE48C@<X0>(uint64_t a1@<X8>)
{
  sub_100026188();
  v2 = static NSUserDefaults.shared.getter();
  [v2 hasSeenBothHealthTCCs];

  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1001CE540(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000040;
  *(a1 + 8) = 0x80000001008E47D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CE570()
{
  sub_100026188();
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];

  v2 = static NSUserDefaults.shared.getter();
  v3 = String._bridgeToObjectiveC()();
  [v2 setURL:0 forKey:v3];
}

void sub_1001CE648(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000046;
  *(a1 + 8) = 0x80000001008E4780;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CE6BC()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setObject:isa forKey:v6];

  sub_100026188();
  v7 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.alwaysUseMomentDate(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v8 = String._bridgeToObjectiveC()();

  [v7 setBool:0 forKey:v8];
}

void sub_1001CE884(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000050;
  *(a1 + 8) = 0x80000001008E4700;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CE8B4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for AdminMenu(0);
  v14[0] = *(v2 - 8);
  v3 = *(v14[0] + 64);
  __chkstk_darwin(v2);
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_1000F24EC(&qword_100AD72C8, &qword_100946210);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v16 = xmmword_100945F80;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v15 = v1;
  sub_1000F24EC(&qword_100AD72D0, &qword_100946218);
  sub_1001D3DC0();
  Section<>.init(header:content:)();
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.getter();
  sub_1001D3BB4(v1, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v14[0] + 80) + 16) & ~*(v14[0] + 80);
  v12 = swift_allocObject();
  sub_1001D3C18(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1001D3EBC();
  sub_1001D3F54();
  View.onChange<A>(of:initial:_:)();

  sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001CEBA4@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v27 = v12;
  Button.init(action:label:)();
  v19 = *(v2 + 16);
  v20 = v9;
  v28 = v9;
  v19(v9, v18, v1);
  v21 = v6;
  v19(v6, v15, v1);
  v22 = v29;
  v19(v29, v12, v1);
  v23 = v30;
  v19(v30, v20, v1);
  v24 = sub_1000F24EC(&qword_100AD72C0, &qword_100946208);
  v19(&v23[*(v24 + 48)], v21, v1);
  v19(&v23[*(v24 + 64)], v22, v1);
  v25 = *(v2 + 8);
  v25(v27, v1);
  v25(v15, v1);
  v25(v18, v1);
  v25(v22, v1);
  v25(v21, v1);
  return (v25)(v28, v1);
}

void sub_1001CEF38()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void sub_1001CEFCC(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 0xD000000000000030;
  v2._object = 0x80000001008E46C0;
  String.append(_:)(v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CF104()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void sub_1001CF198(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(52);
  v2._countAndFlagsBits = 0xD000000000000031;
  v2._object = 0x80000001008E4660;
  String.append(_:)(v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CF2D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void sub_1001CF364(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(74);
  v2._countAndFlagsBits = 0xD000000000000047;
  v2._object = 0x80000001008E45E0;
  String.append(_:)(v2);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 integerForKey:v4];

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CF4D4()
{
  v0 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRInfo();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v0, v6);
  TTRInfo.init(alertTitle:alertMessage:radarTitle:errorDescription:classification:)();
  v9 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA0 != -1)
  {
    swift_once();
  }

  v10 = qword_100B2FB90;
  sub_1000F24EC(&qword_100AD5808, &qword_1009672B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  v15[1] = 0x6F666E49727474;
  v15[2] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v4;
  v12 = sub_10001A770((inited + 72));
  (*(v5 + 16))(v12, v8, v4);
  sub_1003630D0(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100AD5810, &qword_1009441C0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:0 userInfo:isa];

  return (*(v5 + 8))(v8, v4);
}

double sub_1001CF820@<D0>(uint64_t a1@<X8>)
{
  result = 1.17232415e214;
  *a1 = xmmword_100945F90;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1001CF884()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_1004AAE14();
}

void sub_1001CF8DC(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x80000001008E4580;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_1001CF950()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v1 = type metadata accessor for AssetContentTypeOperation(0);
  v2 = objc_allocWithZone(v1);
  *&v2[qword_100AE52E8] = v0;
  v2[qword_100AE52F0] = 1;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = v0;
  v4 = objc_msgSendSuper2(&v5, "init");
  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  [qword_100B2FC18 addOperation:{v4, v5.receiver, v5.super_class}];
}

void sub_1001CFA60(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001008E4560;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001CFA90(uint64_t a1)
{
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  sub_1000F24EC(&qword_100AD7298, &qword_1009461B8);
  sub_1000F2A18(&qword_100AD72A0, &qword_1009461C0);
  sub_1001D3CD4();
  swift_getOpaqueTypeConformance2();
  return Toggle.init(isOn:label:)();
}

uint64_t sub_1001CFB84(uint64_t a1)
{
  v1 = sub_1000F24EC(&qword_100AD72A0, &qword_1009461C0);
  __chkstk_darwin(v1);
  v3 = v9 - v2;
  type metadata accessor for AdminMenu(0);
  AppStorage.projectedValue.getter();
  strcpy(v9, "Custom locale");
  v9[7] = -4864;
  sub_1000777B4();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  AppStorage.wrappedValue.getter();
  v4 = v9[0];
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = (v4 & 1) == 0;
  v7 = &v3[*(v1 + 36)];
  *v7 = KeyPath;
  v7[1] = sub_1000FF5FC;
  v7[2] = v6;
  sub_1001D3CD4();
  View.disableAutocorrection(_:)();
  return sub_100004F84(v3, &qword_100AD72A0, &qword_1009461C0);
}

uint64_t sub_1001CFD74@<X0>(uint64_t a1@<X8>)
{
  result = sub_1004B4FC4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001CFDAC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AD7150, &qword_1009460D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10000B58C(&qword_100AD7158, &qword_100AD7150, &qword_1009460D0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001CFF98(uint64_t a1)
{
  v2 = type metadata accessor for AdminMenu(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1001D3BB4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001D3C18(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

uint64_t sub_1001D00C4(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6FE8, &qword_1009648C0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v7, &qword_100AD6FE8, &qword_1009648C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

double sub_1001D0340@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_100945FA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1001D0360(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v2 - 8);
  sub_1000082B4(a1, &v5 - v3, &qword_100AD4CD0, &unk_100943730);
  sub_1000F24EC(&qword_100AD76A8, &qword_100946898);
  State.wrappedValue.setter();
  return sub_100004F84(a1, &qword_100AD4CD0, &unk_100943730);
}

__n128 sub_1001D0438@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = sub_1001D05D4(v9, v10, v18);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v11);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  (*(v6 + 32))(v13 + v12, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = (a2 + *(sub_1000F24EC(&qword_100AD76B0, &qword_1009468A8) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v14 = &unk_1009468A0;
  v14[1] = v13;
  v15 = *v19;
  *(a2 + 32) = v18[2];
  *(a2 + 48) = v15;
  *(a2 + 63) = *&v19[15];
  result = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = result;
  return result;
}

double sub_1001D05D4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v5 = sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  *&v43 = dispatch thunk of Tip.id.getter();
  *(&v43 + 1) = v11;
  sub_1000777B4();
  v36 = Text.init<A>(_:)();
  v37 = v12;
  v34 = v13;
  v38 = v14;
  type metadata accessor for AdminMenu.TipStatus(0, a1, a2, v14);
  sub_1000F24EC(&qword_100AD76A8, &qword_100946898);
  State.wrappedValue.getter();
  v15 = type metadata accessor for Tips.Status();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    goto LABEL_2;
  }

  sub_1000082B4(v10, v7, &qword_100AD4CD0, &unk_100943730);
  v17 = (*(v16 + 88))(v7, v15);
  if (v17 != enum case for Tips.Status.invalidated(_:))
  {
    if (v17 == enum case for Tips.Status.pending(_:))
    {
      v39 = xmmword_100945FC0;
      *&v40 = 0;
      *(&v40 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v41) = 0;
    }

    else
    {
      if (v17 != enum case for Tips.Status.available(_:))
      {
        goto LABEL_21;
      }

      v39 = xmmword_100945FB0;
      *&v40 = 0;
      *(&v40 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v41) = 1;
    }

    _ConditionalContent<>.init(storage:)();
    v39 = v43;
    v40 = v44;
    v41 = v45;
    goto LABEL_14;
  }

  (*(v16 + 96))(v7, v15);
  v15 = type metadata accessor for Tips.InvalidationReason();
  v16 = *(v15 - 8);
  v18 = (*(v16 + 88))(v7, v15);
  if (v18 != enum case for Tips.InvalidationReason.actionPerformed(_:))
  {
    if (v18 == enum case for Tips.InvalidationReason.displayCountExceeded(_:))
    {
      *&v39 = 0xD000000000000012;
      *(&v39 + 1) = 0x80000001008E4F80;
      *&v40 = 0;
      *(&v40 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v41) = 1;
      _ConditionalContent<>.init(storage:)();
      v39 = v43;
      v40 = v44;
      LOBYTE(v41) = v45;
      HIBYTE(v41) = 1;
      goto LABEL_14;
    }

    if (v18 == enum case for Tips.InvalidationReason.tipClosed(_:))
    {
      v39 = xmmword_100945FD0;
      *&v40 = 0;
      *(&v40 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v41) = 0;
      _ConditionalContent<>.init(storage:)();
      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = 1;
      goto LABEL_3;
    }

LABEL_21:
    (*(v16 + 8))(v7, v15);
LABEL_2:
    v39 = xmmword_100945FE0;
    *&v40 = 0;
    *(&v40 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v41) = 1;
    _ConditionalContent<>.init(storage:)();
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = 1;
LABEL_3:
    sub_1000F24EC(&qword_100AD76B8, &unk_1009468C0);
    sub_1000F24EC(&qword_100AD76C0, &unk_10096F2C0);
    sub_1001D5158();
    sub_1001D51DC();
    goto LABEL_18;
  }

  *&v39 = 0xD000000000000010;
  *(&v39 + 1) = 0x80000001008E4FA0;
  *&v40 = 0;
  *(&v40 + 1) = _swiftEmptyArrayStorage;
  LOBYTE(v41) = 0;
  _ConditionalContent<>.init(storage:)();
  v39 = v43;
  v40 = v44;
  LOBYTE(v41) = v45;
  HIBYTE(v41) = 1;
LABEL_14:
  sub_1000F24EC(&qword_100AD76C0, &unk_10096F2C0);
  sub_1001D51DC();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v45))
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v39 = v43;
  v40 = v44;
  v41 = v19 | v45;
  v42 = 0;
  sub_1000F24EC(&qword_100AD76B8, &unk_1009468C0);
  sub_1001D5158();
LABEL_18:
  _ConditionalContent<>.init(storage:)();
  v20 = v45;
  v21 = v46;
  v32 = v44;
  v33 = v43;
  v22 = v43;
  v23 = v44;
  v31 = sub_1001D5258;
  sub_1001D529C(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, sub_1001D5258, sub_1001D5260);
  sub_100004F84(v10, &qword_100AD4CD0, &unk_100943730);
  v24 = v34 & 1;
  v25 = v36;
  sub_1000F24DC(v36, v37, v34 & 1);

  v30 = *(&v23 + 1);
  sub_1001D529C(v22, *(&v22 + 1), v23, *(&v23 + 1), v20, v21, v31, sub_1001D5260);
  sub_1001D529C(v22, *(&v22 + 1), v23, *(&v23 + 1), v20, v21, sub_1001D52B8, sub_1001D52C0);
  LOBYTE(v43) = v24;
  LOBYTE(v39) = v21;
  v26 = v35;
  v27 = v37;
  *v35 = v25;
  v26[1] = v27;
  *(v26 + 16) = v24;
  v26[3] = v38;
  v28 = v32;
  *(v26 + 2) = v33;
  *(v26 + 3) = v28;
  *(v26 + 32) = v20;
  *(v26 + 66) = v21;
  sub_1001D529C(v22, *(&v22 + 1), v23, v30, v20, v21, sub_1001D52B8, sub_1001D52C0);
  sub_1000594D0(v36, v27, v24);

  return result;
}

uint64_t sub_1001D0D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000F24EC(&qword_100AD4CD0, &unk_100943730);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_1000F24EC(&qword_100AD4CD8, &unk_1009468B0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AD4CE0, &qword_100943740);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v7;
  v3[16] = v6;

  return _swift_task_switch(sub_1001D0ED4, v7, v6);
}

uint64_t sub_1001D0ED4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = static MainActor.shared.getter();
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1001D0FE4;
  v6 = v0[10];
  v7 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_1001D0FE4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1001D1128, v3, v2);
}

uint64_t sub_1001D1128()
{
  v1 = v0[6];
  v2 = type metadata accessor for Tips.Status();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
    type metadata accessor for AdminMenu.TipStatus(0, v8, v7, v9);
    sub_1001D0360(v6);
    v10 = static MainActor.shared.getter();
    v0[17] = v10;
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_1001D0FE4;
    v12 = v0[10];
    v13 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v13, v10, &protocol witness table for MainActor, v12);
  }
}

uint64_t sub_1001D1364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = type metadata accessor for DatePickerComponents();
  v45 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdminMenu(0);
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = v5;
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD2690, &qword_100940CD0);
  __chkstk_darwin(v6 - 8);
  v46 = &v39 - v7;
  v51 = sub_1000F24EC(&qword_100AD4018, &qword_100946220);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v39 - v8;
  v54 = sub_1000F24EC(&qword_100AD7308, &qword_100946238);
  __chkstk_darwin(v54);
  v10 = &v39 - v9;
  v55 = sub_1000F24EC(&qword_100AD72F0, &unk_100946228);
  __chkstk_darwin(v55);
  v12 = &v39 - v11;
  v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  v52 = a1;
  State.wrappedValue.getter();
  v23 = v17;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100004F84(v15, &unk_100AD4790, &unk_10093B4E0);
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v24 = sub_1000F24EC(&qword_100AD7310, &qword_100946240);
    sub_1001D1D70(v52, &v12[*(v24 + 44)]);
    sub_1000082B4(v12, v10, &qword_100AD72F0, &unk_100946228);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD72E0, &qword_100AD4018, &qword_100946220, &protocol conformance descriptor for DatePicker<A>);
    sub_10000B58C(&qword_100AD72E8, &qword_100AD72F0, &unk_100946228, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v12, &qword_100AD72F0, &unk_100946228);
  }

  else
  {
    v26 = *(v17 + 32);
    v41 = v22;
    v26(v22, v15, v16);
    v40 = v23;
    (*(v23 + 16))(v19, v22, v16);
    type metadata accessor for MainActor();
    v27 = static MainActor.shared.getter();
    v28 = *(v23 + 80);
    v39 = v10;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    *(v30 + 24) = &protocol witness table for MainActor;
    v26((v30 + v29), v19, v16);
    v31 = v44;
    sub_1001D3BB4(v52, v44);
    v32 = static MainActor.shared.getter();
    v33 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = &protocol witness table for MainActor;
    sub_1001D3C18(v31, v34 + v33);
    Binding.init(get:set:)();
    sub_1000F24EC(&qword_100AD7318, &qword_100946248);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100940050;
    static DatePickerComponents.hourAndMinute.getter();
    static DatePickerComponents.date.getter();
    v56 = v35;
    sub_1001D5468(&qword_100AD7320, &type metadata accessor for DatePickerComponents, &protocol conformance descriptor for DatePickerComponents);
    sub_1000F24EC(&qword_100AD7328, &qword_100946250);
    sub_10000B58C(&qword_100AD7330, &qword_100AD7328, &qword_100946250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v47;
    DatePicker.init(selection:displayedComponents:label:)();
    v37 = v49;
    v38 = v51;
    (*(v49 + 16))(v39, v36, v51);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD72E0, &qword_100AD4018, &qword_100946220, &protocol conformance descriptor for DatePicker<A>);
    sub_10000B58C(&qword_100AD72E8, &qword_100AD72F0, &unk_100946228, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v37 + 8))(v36, v38);
    return (*(v40 + 8))(v41, v16);
  }
}

uint64_t sub_1001D1BD0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  type metadata accessor for AdminMenu(0);
  sub_1000082B4(v7, v4, &unk_100AD4790, &unk_10093B4E0);
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.setter();
  return sub_100004F84(v7, &unk_100AD4790, &unk_10093B4E0);
}

double sub_1001D1D50@<D0>(uint64_t a1@<X8>)
{
  result = 6.19340576e175;
  *a1 = xmmword_100945FF0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_1001D1D70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v42 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v42);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000F24EC(&qword_100AD7338, &qword_100946258);
  __chkstk_darwin(v44);
  v5 = &v37 - v4;
  v6 = type metadata accessor for AdminMenu(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v37 - v8;
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = sub_1000F24EC(&qword_100AD7340, &qword_100946260);
  __chkstk_darwin(v19 - 8);
  v43 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
    v24 = v38;
    sub_1001D3BB4(a1, v38);
    v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v26 = swift_allocObject();
    sub_1001D3C18(v24, v26 + v25);
    v27 = v39;
    Button.init(action:label:)();
    v28 = v40;
    v29 = v45;
    (*(v40 + 16))(v5, v27, v45);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    static FormatStyle<>.dateTime.getter();
    sub_1001D5468(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_1001D5468(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    *v5 = Text.init<A>(_:format:)();
    *(v5 + 1) = v30;
    v5[16] = v31 & 1;
    *(v5 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v13 + 8))(v18, v12);
  }

  v33 = v43;
  sub_1000082B4(v23, v43, &qword_100AD7340, &qword_100946260);
  v34 = v46;
  *v46 = xmmword_100945FF0;
  *(v34 + 16) = 0;
  *(v34 + 3) = _swiftEmptyArrayStorage;
  *(v34 + 4) = 0;
  *(v34 + 40) = 1;
  v35 = sub_1000F24EC(&qword_100AD7348, &qword_100946268);
  sub_1000082B4(v33, v34 + *(v35 + 64), &qword_100AD7340, &qword_100946260);
  sub_1000F24DC(0x646F4D206F6D6544, 0xEB00000000402065, 0);

  sub_100004F84(v23, &qword_100AD7340, &qword_100946260);
  sub_100004F84(v33, &qword_100AD7340, &qword_100946260);
  sub_1000594D0(0x646F4D206F6D6544, 0xEB00000000402065, 0);

  return result;
}

uint64_t sub_1001D2494()
{
  v0 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  static Date.now.getter();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  type metadata accessor for AdminMenu(0);
  sub_1000082B4(v5, v2, &unk_100AD4790, &unk_10093B4E0);
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.setter();
  return sub_100004F84(v5, &unk_100AD4790, &unk_10093B4E0);
}

uint64_t sub_1001D25DC@<X0>(uint64_t a1@<X8>)
{
  result = Text.bold()();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001D263C()
{
  v0 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  type metadata accessor for AdminMenu(0);
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.getter();
  return sub_1004EB94C(v2);
}

uint64_t sub_1001D26E8@<X0>(uint64_t *a1@<X8>)
{
  v85 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v85);
  v84 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v83 = &v71 - v4;
  v5 = type metadata accessor for AnalyticsEndpointName();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Runtime.Environment();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v71 - v10;
  v88 = type metadata accessor for SettingsKey();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD6FE8, &qword_1009648C0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for AdminMenu(0);
  v14 = v13[5];
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  [v16 integerForKey:v17];

  *(a1 + v14) = AppStorage.init<A>(wrappedValue:_:store:)();
  v18 = v13[6];
  v19 = [v15 standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  [v19 integerForKey:v20];

  *(a1 + v18) = AppStorage.init<A>(wrappedValue:_:store:)();
  v21 = v13[7];
  v89 = sub_100026188();
  v22 = static NSUserDefaults.shared.getter();
  v23 = String._bridgeToObjectiveC()();
  [v22 BOOLForKey:v23];

  *(a1 + v21) = AppStorage.init<A>(wrappedValue:_:store:)();
  v24 = v13[8];
  v91[0] = sub_100014964();
  v25 = v90;
  v26 = v90 + 104;
  v87 = *(v90 + 104);
  v27 = v88;
  v87(v12, enum case for SettingsKey.lockJournalState(_:), v88);
  SettingsKey.rawValue.getter();
  v28 = *(v25 + 8);
  v90 = v25 + 8;
  v86 = v28;
  v28(v12, v27);
  sub_1001D38E0();
  v29 = a1;
  *(a1 + v24) = AppStorage.init<A>(wrappedValue:_:store:)();
  v30 = v13[9];
  *(a1 + v30) = AppStorage.init<A>(wrappedValue:_:store:)();
  v31 = v13[10];
  *(a1 + v31) = AppStorage.init<A>(wrappedValue:_:store:)();
  v32 = v13[11];
  *(a1 + v32) = AppStorage.init<A>(wrappedValue:_:store:)();
  v33 = v13[12];
  *(a1 + v33) = AppStorage.init<A>(wrappedValue:_:store:)();
  v34 = v13[13];
  *(a1 + v34) = AppStorage.init<A>(wrappedValue:_:store:)();
  v35 = v13[14];
  *(a1 + v35) = AppStorage.init<A>(wrappedValue:_:store:)();
  v36 = v13[15];
  *(a1 + v36) = AppStorage.init<A>(wrappedValue:_:store:)();
  v37 = v13[16];
  *(a1 + v37) = AppStorage.init<A>(wrappedValue:_:store:)();
  v38 = v13[17];
  *(a1 + v38) = AppStorage.init<A>(wrappedValue:_:store:)();
  v39 = v13[18];
  *(a1 + v39) = AppStorage.init<A>(wrappedValue:_:store:)();
  v40 = v13[19];
  *(a1 + v40) = AppStorage.init<A>(wrappedValue:_:store:)();
  v72 = v13[20];
  v41 = v12;
  v42 = v87;
  v75 = v26;
  v87(v12, enum case for SettingsKey.cloudKitStagingEnvironment(_:), v27);
  SettingsKey.rawValue.getter();
  v43 = v12;
  v44 = v86;
  v86(v43, v27);
  static NSUserDefaults.shared.getter();
  *(v29 + v72) = AppStorage.init<A>(wrappedValue:_:store:)();
  v72 = v13[21];
  v45 = v41;
  v74 = v41;
  v46 = v41;
  v47 = v88;
  v42(v46, enum case for SettingsKey.cloudKitSyncingEnabled(_:), v88);
  SettingsKey.rawValue.getter();
  v44(v45, v47);
  static NSUserDefaults.shared.getter();
  *(v29 + v72) = AppStorage.init<A>(wrappedValue:_:store:)();
  v48 = v13[22];
  *(v29 + v48) = AppStorage.init<A>(wrappedValue:_:store:)();
  v49 = v13[23];
  v50 = AppStorage.init<A>(wrappedValue:_:store:)();
  v73 = v29;
  *(v29 + v49) = v50;
  v51 = v13[24];
  *(v29 + v51) = AppStorage.init<A>(wrappedValue:_:store:)();
  v52 = v76;
  static Runtime.Environment.current.getter();
  v54 = v77;
  v53 = v78;
  v55 = v79;
  (*(v78 + 104))(v77, enum case for Runtime.Environment.production(_:), v79);
  LOBYTE(v51) = static Runtime.Environment.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v54, v55);
  v56(v52, v55);
  v58 = v80;
  v57 = v81;
  v59 = &enum case for AnalyticsEndpointName.production(_:);
  if ((v51 & 1) == 0)
  {
    v59 = &enum case for AnalyticsEndpointName.qa(_:);
  }

  v60 = v82;
  (*(v81 + 104))(v80, *v59, v82);
  v89 = AnalyticsEndpointName.rawValue.getter();
  v79 = v61;
  (*(v57 + 8))(v58, v60);
  v62 = v13;
  v82 = v13[25];
  v63 = v74;
  v64 = v87;
  v87(v74, enum case for SettingsKey.analyticsEndpoint(_:), v47);
  SettingsKey.rawValue.getter();
  v65 = v47;
  v66 = v86;
  v86(v63, v47);
  v67 = AppStorage.init<A>(wrappedValue:_:store:)();
  v68 = v73;
  *(v73 + v82) = v67;
  v89 = v62[26];
  v64(v63, enum case for SettingsKey.debugSessionName(_:), v65);
  SettingsKey.rawValue.getter();
  v66(v63, v65);
  *(v68 + v89) = AppStorage.init<A>(wrappedValue:_:store:)();
  type metadata accessor for JournalWidgetBridge();
  v69 = v83;
  sub_1004EA844(v83);
  sub_1000082B4(v69, v84, &unk_100AD4790, &unk_10093B4E0);
  State.init(wrappedValue:)();
  return sub_100004F84(v69, &unk_100AD4790, &unk_10093B4E0);
}

uint64_t sub_1001D312C()
{
  sub_1000F24EC(&qword_100AD7120, &qword_1009460A8);
  sub_1000F2A18(&qword_100AD7128, &qword_1009460B0);
  sub_1000F2A18(&qword_100AD7130, &qword_1009460B8);
  sub_1000F2A18(&qword_100AD7138, &qword_1009460C0);
  sub_1000F2A18(&qword_100AD7140, &qword_1009460C8);
  type metadata accessor for InsetGroupedListStyle();
  sub_10000B58C(&qword_100AD7148, &qword_100AD7140, &qword_1009460C8, &protocol conformance descriptor for List<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000F2A18(&qword_100AD7150, &qword_1009460D0);
  sub_10000B58C(&qword_100AD7158, &qword_100AD7150, &qword_1009460D0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1001D3358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4F20();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001D33BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4F20();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001D3420(uint64_t a1)
{
  sub_1001D4F20();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001D3460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4F74();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001D34C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4F74();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001D3528(uint64_t a1)
{
  sub_1001D4F74();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1001D3568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(0, a2, a3);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];

  return v5;
}

uint64_t sub_1001D35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4FC8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001D3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D4FC8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001D3698(uint64_t a1)
{
  sub_1001D4FC8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1001D36C0()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v1 = [objc_allocWithZone(type metadata accessor for CustomJournalsDebugViewController()) initWithCollectionViewLayout:v0];
  v2 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v1];

  return v2;
}

uint64_t sub_1001D3780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D501C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001D37E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D501C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001D3848(uint64_t a1)
{
  sub_1001D501C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t type metadata accessor for AdminMenu(uint64_t a1)
{
  result = qword_100AD7060;
  if (!qword_100AD7060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001D38E0()
{
  result = qword_100AD6FF0;
  if (!qword_100AD6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6FF0);
  }

  return result;
}

void sub_1001D395C(uint64_t a1)
{
  sub_1001D3AD4(319);
  if (v1 <= 0x3F)
  {
    sub_1001D3B2C(319, &qword_100AD7078, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1001D3B2C(319, &qword_100AD7080, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_1001D3B2C(319, &qword_100AD7088, &type metadata for SettingsManager.LockJournalState);
        if (v4 <= 0x3F)
        {
          sub_1001D3B2C(319, &qword_100AD7090, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_1001D4E38(319, &unk_100AD7098, &unk_100AD4790, &unk_10093B4E0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001D3AD4(uint64_t a1)
{
  if (!qword_100AD7070)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD7070);
    }
  }
}

void sub_1001D3B2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for AppStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001D3BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdminMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdminMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D3CD4()
{
  result = qword_100AD72A8;
  if (!qword_100AD72A8)
  {
    sub_1000F2A18(&qword_100AD72A0, &qword_1009461C0);
    sub_10000B58C(&qword_100AD72B0, &qword_100AD72B8, &unk_1009461C8, &protocol conformance descriptor for TextField<A>);
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350, &qword_1009406A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD72A8);
  }

  return result;
}

unint64_t sub_1001D3DC0()
{
  result = qword_100AD72D8;
  if (!qword_100AD72D8)
  {
    sub_1000F2A18(&qword_100AD72D0, &qword_100946218);
    sub_10000B58C(&qword_100AD72E0, &qword_100AD4018, &qword_100946220, &protocol conformance descriptor for DatePicker<A>);
    sub_10000B58C(&qword_100AD72E8, &qword_100AD72F0, &unk_100946228, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD72D8);
  }

  return result;
}

unint64_t sub_1001D3EBC()
{
  result = qword_100AD72F8;
  if (!qword_100AD72F8)
  {
    sub_1000F2A18(&qword_100AD72C8, &qword_100946210);
    sub_1001D3DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD72F8);
  }

  return result;
}

unint64_t sub_1001D3F54()
{
  result = qword_100AD7300;
  if (!qword_100AD7300)
  {
    sub_1000F2A18(&unk_100AD4790, &unk_10093B4E0);
    sub_1001D5468(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7300);
  }

  return result;
}

uint64_t sub_1001D4008@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_1001D407C(uint64_t a1)
{
  type metadata accessor for AdminMenu(0);

  return sub_1001D1BD0(a1);
}

uint64_t sub_1001D4118(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AdminMenu(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1001D418C@<X0>(char *a1@<X8>)
{
  type metadata accessor for AdminMenu(0);

  return sub_1001CAC70(a1);
}

unint64_t sub_1001D4204()
{
  result = qword_100AD7380;
  if (!qword_100AD7380)
  {
    sub_1000F2A18(&qword_100AD7378, &qword_1009462A0);
    sub_1001D42BC();
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350, &qword_1009406A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7380);
  }

  return result;
}

unint64_t sub_1001D42BC()
{
  result = qword_100AD7388;
  if (!qword_100AD7388)
  {
    sub_1000F2A18(&qword_100AD7390, &qword_1009462A8);
    sub_10000B58C(&qword_100AD7398, &qword_100AD73A0, &qword_1009462B0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7388);
  }

  return result;
}

unint64_t sub_1001D436C()
{
  result = qword_100AD74F0;
  if (!qword_100AD74F0)
  {
    sub_1000F2A18(&qword_100AD74E8, &qword_1009463D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD74F0);
  }

  return result;
}

unint64_t sub_1001D4408()
{
  result = qword_100AD7598;
  if (!qword_100AD7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7598);
  }

  return result;
}

unint64_t sub_1001D445C()
{
  result = qword_100AE48A0;
  if (!qword_100AE48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE48A0);
  }

  return result;
}

unint64_t sub_1001D44B0()
{
  result = qword_100AD75A0;
  if (!qword_100AD75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75A0);
  }

  return result;
}

unint64_t sub_1001D4504()
{
  result = qword_100AD75A8;
  if (!qword_100AD75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75A8);
  }

  return result;
}

unint64_t sub_1001D4558()
{
  result = qword_100AD75B0;
  if (!qword_100AD75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75B0);
  }

  return result;
}

unint64_t sub_1001D45AC()
{
  result = qword_100AD75B8;
  if (!qword_100AD75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75B8);
  }

  return result;
}

unint64_t sub_1001D4600()
{
  result = qword_100AD75C0;
  if (!qword_100AD75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75C0);
  }

  return result;
}

unint64_t sub_1001D4654()
{
  result = qword_100AD75C8;
  if (!qword_100AD75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75C8);
  }

  return result;
}

unint64_t sub_1001D46A8()
{
  result = qword_100AD75D0;
  if (!qword_100AD75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75D0);
  }

  return result;
}

unint64_t sub_1001D46FC()
{
  result = qword_100AD75D8;
  if (!qword_100AD75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75D8);
  }

  return result;
}

unint64_t sub_1001D4750()
{
  result = qword_100AD75E0;
  if (!qword_100AD75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD75E0);
  }

  return result;
}

void sub_1001D47A4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1001D4E38(319, &qword_100AD7670, &qword_100AD4CD0, &unk_100943730);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001D4844(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Tips.Status();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v6 + 64) + v16;
  v18 = v15 + 7;
  if (v14 >= a2)
  {
    goto LABEL_35;
  }

  v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + (v17 & ~v16) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v14 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  if (v7 >= v13)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v28 = (a1 + v17) & ~v16;
    if (v12 < 0x7FFFFFFE)
    {
      v31 = *((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      if ((v31 + 1) >= 2)
      {
        return v31;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = (*(v10 + 48))(v28);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1001D4AAC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Tips.Status() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v10 + 80) & 0xF8 | 7;
  if (v11)
  {
    v17 = *(v10 + 64);
  }

  else
  {
    v17 = *(v10 + 64) + 1;
  }

  v18 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + v16) & ~v16) + 8;
  if (((v17 + 7) & 0xFFFFFFF8) + ((v12 + v16) & ~v16) == -8)
  {
    v19 = a3 - v15 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 > v15)
  {
    if (((v17 + 7) & 0xFFFFFFF8) + ((v12 + v16) & ~v16) == -8)
    {
      v23 = a2 - v15;
    }

    else
    {
      v23 = 1;
    }

    if (((v17 + 7) & 0xFFFFFFF8) + ((v12 + v16) & ~v16) != -8)
    {
      v24 = ~v15 + a2;
      bzero(a1, ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + v16) & ~v16) + 8);
      *a1 = v24;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }
    }

    else if (v22)
    {
      *(a1 + v18) = v23;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *(a1 + v18) = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v22)
  {
    goto LABEL_43;
  }

  *(a1 + v18) = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v9 >= v14)
  {
    v28 = *(v34 + 56);

    v28(a1, a2, v9, v7);
  }

  else
  {
    v25 = ((a1 + v12 + v16) & ~v16);
    if (v14 >= a2)
    {
      if (v13 < 0x7FFFFFFE)
      {
        v32 = (&v25[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v32 = 0;
          *v32 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v32 = a2;
        }
      }

      else if (v13 >= a2)
      {
        v33 = *(v10 + 56);

        v33(v25, (a2 + 1));
      }

      else
      {
        if (v17 <= 3)
        {
          v29 = ~(-1 << (8 * v17));
        }

        else
        {
          v29 = -1;
        }

        if (v17)
        {
          v30 = v29 & (~v13 + a2);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(v25, v17);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              *v25 = v30;
              v25[2] = BYTE2(v30);
            }

            else
            {
              *v25 = v30;
            }
          }

          else if (v31 == 1)
          {
            *v25 = v30;
          }

          else
          {
            *v25 = v30;
          }
        }
      }
    }

    else
    {
      v26 = (v17 + 7) & 0xFFFFFFF8;
      if (v26 != -8)
      {
        v27 = ~v14 + a2;
        bzero(v25, (v26 + 8));
        *v25 = v27;
      }
    }
  }
}

void sub_1001D4E38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000F2A18(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1001D4F20()
{
  result = qword_100AD7688;
  if (!qword_100AD7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7688);
  }

  return result;
}

unint64_t sub_1001D4F74()
{
  result = qword_100AD7690;
  if (!qword_100AD7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7690);
  }

  return result;
}

unint64_t sub_1001D4FC8()
{
  result = qword_100AD7698;
  if (!qword_100AD7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7698);
  }

  return result;
}

unint64_t sub_1001D501C()
{
  result = qword_100AD76A0;
  if (!qword_100AD76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD76A0);
  }

  return result;
}

uint64_t sub_1001D5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AdminMenu.TipStatus(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100032ECC;

  return sub_1001D0D20(v4 + v9, v6, v7);
}

unint64_t sub_1001D5158()
{
  result = qword_100AD76C8;
  if (!qword_100AD76C8)
  {
    sub_1000F2A18(&qword_100AD76B8, &unk_1009468C0);
    sub_1001D51DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD76C8);
  }

  return result;
}

unint64_t sub_1001D51DC()
{
  result = qword_100AD76D0;
  if (!qword_100AD76D0)
  {
    sub_1000F2A18(&qword_100AD76C0, &unk_10096F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD76D0);
  }

  return result;
}

uint64_t sub_1001D5260(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000F24DC(a1, a2, a3 & 1);
}

uint64_t sub_1001D529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, (a5 >> 8) & 1);
  }
}

double sub_1001D52C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000594D0(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_1001D52FC()
{
  result = qword_100AD76D8;
  if (!qword_100AD76D8)
  {
    sub_1000F2A18(&qword_100AD76B0, &qword_1009468A8);
    sub_1001D53B8();
    sub_1001D5468(&qword_100AD0E50, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD76D8);
  }

  return result;
}

unint64_t sub_1001D53B8()
{
  result = qword_100AD76E0;
  if (!qword_100AD76E0)
  {
    sub_1000F2A18(&qword_100AD76E8, &qword_1009468D0);
    sub_10000B58C(&qword_100AD76F0, &qword_100AD76F8, &qword_1009468D8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD76E0);
  }

  return result;
}

uint64_t sub_1001D5468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D54D0()
{
  v0 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_1006AB154(v5);
  v9 = type metadata accessor for PhotoLibraryAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD5B20;
    v12 = qword_1009521A0;
    v13 = v5;
LABEL_5:
    sub_100004F84(v13, v11, v12);
    return 0;
  }

  PhotoLibraryAssetMetadata.date.getter();
  (*(v10 + 8))(v5, v9);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = &unk_10093B4E0;
    v13 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v17 = v18;
  (*(v15 + 8))(v8, v14);
  return v17;
}

uint64_t sub_1001D57C0()
{
  v0 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1006AB154(&v7 - v1);
  v3 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &qword_100AD5B20, qword_1009521A0);
    return 0;
  }

  else
  {
    v6 = PhotoLibraryAssetMetadata.placeName.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_1001D58F8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetsFileManager();
  sub_10001DE18(v7);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v10 = a1;
  v11 = a2;
  v8._countAndFlagsBits = 0x654D74657373612DLL;
  v8._object = 0xEE00617461646174;
  String.append(_:)(v8);
  URL.appendingPathComponent(_:)();

  return (*(v5 + 8))(v7, v4);
}

void sub_1001D5A54(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v9 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v37 = 0;
  v13 = [v9 removeItemAtURL:v11 error:&v37];

  if (v13)
  {
    v14 = qword_100ACFA70;
    v15 = v37;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AD7700);
    (*(v3 + 16))(v8, a1, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      sub_10001E4C0(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v3 + 8))(v8, v2);
      v24 = sub_100008458(v21, v23, &v37);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Deleted asset file: %s", v19, 0xCu);
      sub_10000BA7C(v20);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    v25 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFA70 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000617C(v26, qword_100AD7700);
    (*(v3 + 16))(v5, a1, v2);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      v37 = v36[0];
      *v29 = 136315394;
      sub_10001E4C0(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v3 + 8))(v5, v2);
      v34 = sub_100008458(v31, v33, &v37);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v35;
      *v30 = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to delete file in path: %s Error:%@", v29, 0x16u);
      sub_100004F84(v30, &unk_100AD4BB0, &unk_100941E50);

      sub_10000BA7C(v36[0]);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1001D5FB0(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for URL();
  v44 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  type metadata accessor for AssetsFileManager();
  sub_10001DE18(v7);
  v8 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v50[0] = 0;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:v50];

  v11 = v50[0];
  if (v10)
  {
    v42 = v2;
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    v14 = *(v12 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v12 + 40;
      v45 = *(v12 + 16);
      v40 = v14 - 1;
      v17 = _swiftEmptyArrayStorage;
      v41 = v12 + 40;
      do
      {
        v43 = v17;
        v18 = (v16 + 16 * v15);
        v19 = v15;
        while (1)
        {
          if (v19 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v2 = v7;
          v20 = *(v18 - 1);
          v21 = *v18;
          v15 = v19 + 1;
          v50[0] = v20;
          v50[1] = v21;
          v48 = v46;
          v49 = v47;
          sub_1000777B4();

          if (StringProtocol.contains<A>(_:)())
          {
            break;
          }

          v18 += 2;
          ++v19;
          v7 = v2;
          if (v45 == v15)
          {
            v17 = v43;
            goto LABEL_19;
          }
        }

        v17 = v43;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001999C0(0, *(v17 + 2) + 1, 1);
          v17 = v51;
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_1001999C0((v23 > 1), v24 + 1, 1);
          v17 = v51;
        }

        *(v17 + 2) = v24 + 1;
        v25 = &v17[2 * v24];
        *(v25 + 4) = v20;
        *(v25 + 5) = v21;
        v16 = v41;
        v7 = v2;
      }

      while (v40 != v19);
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

LABEL_19:

    v35 = *(v17 + 2);
    v2 = v42;
    if (v35)
    {
      v31 = v44;
      v36 = (v44 + 8);
      v37 = v17 + 5;
      do
      {

        URL.appendingPathComponent(_:)();

        sub_1001D5A54(v4);
        (*v36)(v4, v2);
        v37 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {

      v31 = v44;
    }
  }

  else
  {
    v26 = v50[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFA70 != -1)
    {
LABEL_27:
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000617C(v27, qword_100AD7700);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v44;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error getting contents of the directory: %@", v32, 0xCu);
      sub_100004F84(v33, &unk_100AD4BB0, &unk_100941E50);
    }

    else
    {
    }
  }

  return (*(v31 + 8))(v7, v2);
}

void sub_1001D64B0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v29 - v5;
  v30 = objc_opt_self();
  v7 = [v30 defaultManager];
  if (qword_100AD0060 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = type metadata accessor for FileStoreConfiguration();
    sub_10000617C(v8, qword_100B2FC48);
    FileStoreConfiguration.temporaryDirectoryURL.getter();
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v29[0] = *(v1 + 8);
    v29[1] = v1 + 8;
    (v29[0])(v6, v0);
    v31 = 0;
    v12 = [v7 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:4 error:&v31];

    v13 = v31;
    if (!v12)
    {
      break;
    }

    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = v7[2];
    if (!v15)
    {
LABEL_8:

      return;
    }

    v16 = 0;
    while (v16 < v7[2])
    {
      (*(v1 + 16))(v3, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v0);
      v6 = [v30 defaultManager];
      URL._bridgeToObjectiveC()(v17);
      v19 = v18;
      (v29[0])(v3, v0);
      v31 = 0;
      v20 = [v6 removeItemAtURL:v19 error:&v31];

      if (!v20)
      {
        v22 = v31;

        goto LABEL_11;
      }

      ++v16;
      v21 = v31;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v22 = v31;
LABEL_11:
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100ACFA70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000617C(v23, qword_100AD7700);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "AssetsFileManager.clearTemporaryDirectory error: %@", v26, 0xCu);
    sub_100004F84(v27, &unk_100AD4BB0, &unk_100941E50);
  }

  else
  {
  }
}

unint64_t sub_1001D690C()
{
  result = qword_100AD77D0;
  if (!qword_100AD77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD77D0);
  }

  return result;
}

double sub_1001D6A7C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = [objc_allocWithZone(type metadata accessor for SymbolAndTextFallbackView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName] = xmmword_1009469B0;
  v4 = v3;

  v5 = *&v4[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel];
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  [*&v4[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel] setText:0];
  v9 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack;
  [*&v4[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack] setAxis:1];
  [*&v4[v9] setDistribution:4];
  v10 = *&v4[v9];

  [v10 setAlignment:1];
  v11 = *&v0[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
  *&v0[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView] = v4;
  v12 = v4;

  [v0 addSubview:v12];
  sub_100013178(0.0);

  return result;
}

void sub_1001D6D84()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    v3 = v1;
    sub_10021BE90(v2);
  }
}

id sub_1001D6E14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UnknownAssetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D6E7C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD7808);
  v1 = sub_10000617C(v0, qword_100AD7808);
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1001D6F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserEngagement.StateSnapshot(0);
  __chkstk_darwin(v6);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v74 - v16;
  v18 = type metadata accessor for DateInterval();
  v83 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v84 = (&v74 - v23);
  if (*(*(a2 + *(v6 + 24)) + 16))
  {
    v24 = v6;
    v77 = *(a2 + *(v6 + 24));
    v25 = v22;
    v80 = a3;
    v78 = v24;
    v79 = String.count.getter();
    sub_1000419D8(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    v27 = *(v12 + 16);
    v81 = a1;
    if (v26)
    {
      v28 = v17;
      v29 = a2;
    }

    else
    {
      v28 = v17;
      v29 = a1;
    }

    v27(v28, v29, v11);
    v27(v14, a2, v11);
    v34 = v84;
    DateInterval.init(start:end:)();
    if (qword_100ACFA80 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000617C(v35, qword_100AD7808);
    sub_1001D83E8(a2, v10, type metadata accessor for UserEngagement.StateSnapshot);
    v36 = v83;
    (*(v83 + 16))(v20, v34, v25);
    v37 = v82;
    sub_1001D83E8(v81, v82, type metadata accessor for UserEngagement.StateSnapshot);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v80;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75 = v43;
      v76 = v42;
      *v42 = 136315138;
      v86 = 0;
      v87 = 0xE000000000000000;
      v88 = v43;
      _StringGuts.grow(_:)(34);
      v44._object = 0x80000001008E50E0;
      v44._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v44);
      type metadata accessor for UUID();
      v45._countAndFlagsBits = Array.description.getter();
      v74 = v10;
      String.append(_:)(v45);

      v46._countAndFlagsBits = 8236;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      v85 = v41;
      type metadata accessor for MOAppEntryUpdateEvent(0);
      _print_unlocked<A, B>(_:_:)();
      v47._countAndFlagsBits = 8236;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      sub_1000419D8(&qword_100AD7960, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 8236;
      v49._object = 0xE200000000000000;
      String.append(_:)(v49);
      v50 = v79;
      v85 = v79;
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);
      v52 = v82;

      v53._countAndFlagsBits = 8236;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v54 = String.count.getter();
      if (__OFSUB__(v50, v54))
      {
        __break(1u);
        return;
      }

      v85 = v50 - v54;
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v52;
      String.append(_:)(v55);

      v57 = v86;
      v58 = v87;
      v59 = *(v36 + 8);
      v59(v20, v25);
      sub_1001D8450(v74, type metadata accessor for UserEngagement.StateSnapshot);
      sub_1001D8450(v56, type metadata accessor for UserEngagement.StateSnapshot);
      v60 = sub_100008458(v57, v58, &v88);

      v61 = v76;
      *(v76 + 1) = v60;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s", v61, 0xCu);
      sub_10000BA7C(v75);
    }

    else
    {

      v59 = *(v36 + 8);
      v59(v20, v25);
      sub_1001D8450(v10, type metadata accessor for UserEngagement.StateSnapshot);
      sub_1001D8450(v37, type metadata accessor for UserEngagement.StateSnapshot);
    }

    v62 = [objc_opt_self() sharedInstance];
    type metadata accessor for UUID();
    v63.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v64 = v84;
    v65.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
    sub_1000F24EC(&qword_100AD7958, &qword_1009469F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940050;
    v67 = MOAppEngagementEntryInfoAddedCharacters;
    *(inited + 32) = MOAppEngagementEntryInfoAddedCharacters;
    v68 = v67;
    v69 = String.count.getter();
    v70 = v79;
    if (!__OFSUB__(v79, v69))
    {
      *(inited + 40) = v79 - v69;
      v71 = MOAppEngagementEntryInfoTotalCharacters;
      *(inited + 64) = &type metadata for Int;
      *(inited + 72) = v71;
      *(inited + 104) = &type metadata for Int;
      *(inited + 80) = v70;
      v72 = v71;
      sub_100363884(inited);
      swift_setDeallocating();
      sub_1000F24EC(&qword_100ADFF00, &unk_100946A00);
      swift_arrayDestroy();
      type metadata accessor for MOAppEngagementEntryInfo(0);
      sub_1000419D8(&qword_100AD1BE8, type metadata accessor for MOAppEngagementEntryInfo, &unk_10093F80C);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v62 didAppEntryUpdateUsingSuggestions:v63.super.isa onEvent:v80 duringInterval:v65.super.isa withInfo:isa];

      v59(v64, v25);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_100ACFA80 != -1)
  {
LABEL_20:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000617C(v30, qword_100AD7808);
  v84 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v84, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v84, v31, "Ignoring user engagement with an entry still in draft", v32, 2u);
  }

  v33 = v84;
}

double *sub_1001D7928(uint64_t a1)
{
  v84 = _s14SuggestionInfoVMa(0);
  v74 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v72 - v4;
  __chkstk_darwin(v5);
  v7 = &v72 - v6;
  v8 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v8 - 8);
  v86 = &v72 - v9;
  v90 = type metadata accessor for Date();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v72 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v73 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v72 - v21;
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  sub_1000082B4(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v16, &qword_100AD1420, &unk_10093C080);
  v28 = v18[6];
  v100 = v17;
  v85 = v18 + 6;
  v95 = v28;
  if (v28(v16, 1, v17) == 1)
  {
    sub_100004F84(v16, &qword_100AD1420, &unk_10093C080);
    return _swiftEmptyArrayStorage;
  }

  v30 = v100;
  v98 = v18[4];
  v99 = v18 + 4;
  v98(v27, v16, v100);
  v75 = v18;
  v31 = v18[2];
  v72 = v27;
  v96 = v31;
  v97 = v18 + 2;
  v31(v24, v27, v30);
  v32 = sub_100055CEC(0, 1, 1, _swiftEmptyArrayStorage);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_100055CEC((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v94 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v93 = v75[9];
  v98(v32 + v94 + v93 * v34, v24, v100);
  v103 = v32;
  v102 = _swiftEmptySetSingleton;
  v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  result = swift_beginAccess();
  v36 = *(a1 + v35);
  if (v36 >> 62)
  {
    v71 = *(a1 + v35);
    result = _CocoaArrayWrapper.endIndex.getter();
    v36 = v71;
    v37 = result;
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v86;
  if (v37)
  {
    if (v37 >= 1)
    {
      v80 = v7;
      v91 = v36 & 0xC000000000000001;
      v88 = (v92 + 48);
      v78 = (v92 + 32);
      v77 = (v92 + 16);
      v76 = (v92 + 8);
      v87 = (v75 + 1);
      v39 = v36;

      v40 = v39;
      v41 = 0;
      v92 = v39;
      v79 = v13;
      while (1)
      {
        v42 = v37;
        v43 = v91 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v40 + 8 * v41 + 32);
        v44 = v43;
        v45 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
        swift_beginAccess();
        sub_1000082B4(v44 + v45, v13, &qword_100AD1420, &unk_10093C080);
        if (v95(v13, 1, v100) == 1)
        {
          break;
        }

        v46 = v38;
        v47 = v89;
        v98(v89, v13, v100);
        v48 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
        swift_beginAccess();
        sub_1000082B4(v44 + v48, v46, &unk_100AD4790, &unk_10093B4E0);
        v49 = v90;
        if ((*v88)(v46, 1, v90) != 1)
        {
          v50 = v81;
          (*v78)(v81, v46, v49);
          v51 = v100;
          v52 = v80;
          v96(v80, v47, v100);
          (*v77)(v52 + *(v84 + 20), v50, v49);
          v53 = v83;
          sub_1001D83E8(v52, v83, _s14SuggestionInfoVMa);
          v54 = v82;
          v55 = v53;
          v38 = v86;
          sub_100288BA4(v82, v55);

          sub_1001D8450(v54, _s14SuggestionInfoVMa);
          v56 = v52;
          v13 = v79;
          sub_1001D8450(v56, _s14SuggestionInfoVMa);
          (*v76)(v50, v90);
          (*v87)(v89, v51);
          goto LABEL_19;
        }

        (*v87)(v47, v100);

        sub_100004F84(v46, &unk_100AD4790, &unk_10093B4E0);
        v40 = v92;
        v38 = v46;
LABEL_11:
        ++v41;
        v37 = v42;
        if (v42 == v41)
        {

          v57 = v102;
          v7 = v80;
          goto LABEL_22;
        }
      }

      sub_100004F84(v13, &qword_100AD1420, &unk_10093C080);
LABEL_19:
      v40 = v92;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_35;
  }

  v57 = _swiftEmptySetSingleton;
LABEL_22:
  v58 = v57[2];
  v59 = v74;
  v60 = v72;
  v61 = v73;
  if (!v58)
  {

    v62 = _swiftEmptyArrayStorage;
    v65 = *&_swiftEmptyArrayStorage[2];
    if (v65)
    {
LABEL_25:
      v101 = _swiftEmptyArrayStorage;
      sub_100199D3C(0, v65, 0);
      v66 = v101;
      v67 = v62 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v68 = *(v59 + 72);
      do
      {
        sub_1001D83E8(v67, v7, _s14SuggestionInfoVMa);
        v96(v61, v7, v100);
        sub_1001D8450(v7, _s14SuggestionInfoVMa);
        v101 = v66;
        v70 = *(v66 + 2);
        v69 = *(v66 + 3);
        if (v70 >= v69 >> 1)
        {
          sub_100199D3C((v69 > 1), v70 + 1, 1);
          v66 = v101;
        }

        *(v66 + 2) = v70 + 1;
        v98(v66 + v94 + v70 * v93, v61, v100);
        v67 += v68;
        --v65;
      }

      while (v65);

      v60 = v72;
      goto LABEL_32;
    }

LABEL_31:

    v66 = _swiftEmptyArrayStorage;
LABEL_32:
    sub_1006AD938(v66);
    (v75[1])(v60, v100);
    return v103;
  }

  v62 = sub_1003E75E8(v57[2], 0);
  sub_1001C1BF8(&v101, v62 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v58, v57);
  v64 = v63;
  result = sub_100014FF8(v101);
  if (v64 == v58)
  {
    v65 = *(v62 + 2);
    if (v65)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1001D83E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D8450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1001D84B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceholderAsset(uint64_t a1)
{
  result = qword_100AD7990;
  if (!qword_100AD7990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D8574()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD79A0);
  v1 = sub_10000617C(v0, qword_100AD79A0);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001D863C()
{
  v1 = type metadata accessor for LinkAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C8, qword_100943CE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  if (!*(v0 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    return 0;
  }

  sub_10025E308(v7);

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100004F84(v7, &qword_100AD50C8, qword_100943CE0);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_100004F84(v7, &qword_100AD50C8, qword_100943CE0);
  v9 = LinkAssetMetadata.data.getter();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [objc_opt_self() metadataWithDataRepresentation:isa];

  sub_1000340DC(v9, v11);
  return v13;
}

uint64_t sub_1001D8848()
{
  v1 = type metadata accessor for LinkAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C8, qword_100943CE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  if (*(v0 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {

    sub_10025E308(v7);

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_100004F84(v7, &qword_100AD50C8, qword_100943CE0);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_100004F84(v7, &qword_100AD50C8, qword_100943CE0);
      v9 = LinkAssetMetadata.data.getter();
      v11 = v10;
      (*(v2 + 8))(v4, v1);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v13 = [objc_opt_self() metadataWithDataRepresentation:isa];

      v14 = sub_1000340DC(v9, v11);
      if (v13)
      {
        v15 = [v13 title];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v17;
        }
      }
    }
  }

  return 0;
}

void sub_1001D8A9C()
{
  v1 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    v5 = sub_1001D863C();
    if (v5)
    {
      v6 = sub_1001D8C1C();

      if (v6 > 5u)
      {
        v5 = 0;
      }

      else
      {
        v5 = String._bridgeToObjectiveC()();
      }
    }

    [v4 setContentType:v5];

    v7 = *(v3 + v1);
    if (v7)
    {

      [v7 setIsUploadedToCloud:0];
    }
  }
}

uint64_t sub_1001D8C1C()
{
  v99 = type metadata accessor for RegexWordBoundaryKind();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000F24EC(&unk_100AD6890, &unk_100945480);
  v2 = *(v101 - 8);
  __chkstk_darwin(v101);
  v4 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v71 - v6;
  __chkstk_darwin(v8);
  v74 = v71 - v9;
  __chkstk_darwin(v10);
  v12 = v71 - v11;
  __chkstk_darwin(v13);
  v79 = v71 - v14;
  __chkstk_darwin(v15);
  v97 = v71 - v16;
  __chkstk_darwin(v17);
  v19 = v71 - v18;
  __chkstk_darwin(v20);
  v78 = v71 - v21;
  __chkstk_darwin(v22);
  v100 = v71 - v23;
  v24 = sub_1000F24EC(&qword_100AD7A48, &qword_100946B00);
  __chkstk_darwin(v24 - 8);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v77 = v71 - v29;
  v30 = [v0 itemType];
  if (v30)
  {
    v31 = v30;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v32;
  }

  else
  {
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  v33 = [v0 siteName];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v71[3] = " result type display";
  v71[2] = "/\\bspotify|pandora\\b/";
  v71[1] = "/\\bbook|books\\b/";
  ++v95;
  v96 = (v2 + 32);
  v94 = (v2 + 8);
  v38 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v38 = v82;
  }

  v39 = 7;
  if (((v83 >> 60) & ((v82 & 0x800000000000000) == 0)) != 0)
  {
    v40 = 11;
  }

  else
  {
    v40 = 7;
  }

  v76 = v40 | (v38 << 16);
  v41 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v41 = v35;
  }

  v81 = v37;
  v71[5] = v35;
  if (((v37 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
  {
    v39 = 11;
  }

  v71[4] = v39 | (v41 << 16);
  v75 = v4;
  v42 = 0;
  v92 = v12;
  v72 = v26;
  v80 = v7;
  v73 = v19;
  while (1)
  {
    v43 = *(&off_100A571E0 + v42 + 32);
    v93 = v43;
    v87 = v42;
    Regex.init(_regexString:version:)();
    v44 = v78;
    v45 = v101;
    v90 = *v96;
    v90(v78, v19, v101);
    v46 = v97;
    Regex.ignoresCase(_:)();
    v47 = v98;
    static RegexWordBoundaryKind.simple.getter();
    Regex.wordBoundaryKind(_:)();
    v89 = *v95;
    v89(v47, v99);
    v48 = *v94;
    (*v94)(v46, v45);
    v91 = v48;
    v48(v44, v45);
    String.subscript.getter();
    v49 = sub_1001A9064();
    v50 = v79;
    v88 = v49;
    dispatch thunk of RegexComponent.regex.getter();
    v51 = v77;
    Regex.firstMatch(in:)();

    v52 = v101;
    v53 = v91;
    v91(v50, v101);
    v53(v100, v52);
    v54 = sub_1000F24EC(&unk_100AE1BE0, &unk_100953260);
    v55 = *(v54 - 8);
    v56 = v55;
    v57 = *(v55 + 48);
    v58 = v55 + 48;
    v59 = v57(v51, 1, v54);
    v60 = v80;
    if (v59 != 1)
    {

      v70 = v51;
      goto LABEL_23;
    }

    sub_100004F84(v51, &qword_100AD7A48, &qword_100946B00);
    v91 = v54;
    v85 = v58;
    v86 = v57;
    v84 = v56;
    Regex.init(_regexString:version:)();
    v61 = v74;
    v62 = v101;
    v90(v74, v60, v101);
    v63 = v97;
    Regex.ignoresCase(_:)();
    v64 = v98;
    static RegexWordBoundaryKind.simple.getter();
    Regex.wordBoundaryKind(_:)();
    v89(v64, v99);
    v53(v63, v62);
    v53(v61, v62);
    String.subscript.getter();
    v65 = v75;
    dispatch thunk of RegexComponent.regex.getter();
    v66 = v72;
    Regex.firstMatch(in:)();

    v53(v65, v62);
    v53(v92, v62);
    v67 = v87;
    v68 = v86(v66, 1, v91);
    v19 = v73;
    if (v68 != 1)
    {
      break;
    }

    v42 = v67 + 1;
    sub_100004F84(v66, &qword_100AD7A48, &qword_100946B00);
    if (v42 == 6)
    {

      return 6;
    }
  }

  v70 = v66;
LABEL_23:
  sub_100004F84(v70, &qword_100AD7A48, &qword_100946B00);
  return v93;
}

id sub_1001D97D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1001D9838(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata) = a1;

  return result;
}

id sub_1001D9874@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC7Journal5Asset_context);
  if (result)
  {
    v7 = 0;
    v4 = [result save:&v7];
    v5 = v7;
    if (v4)
    {
      *a2 = 0;
      return v5;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

void *sub_1001D9940()
{
  v1 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v1 - 8);
  v115 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v97 - v4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v110 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v11 - 8);
  v111 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v97 - v14;
  v15 = type metadata accessor for URL();
  v113 = *(v15 - 8);
  __chkstk_darwin(v15);
  v109 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LinkAssetMetadata();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v116 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F24EC(&qword_100AD50C8, qword_100943CE0);
  __chkstk_darwin(v24 - 8);
  __chkstk_darwin(v25);
  v28 = &v97 - v27;
  v114 = v0;
  if (!*(v0 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
  {
    return 0;
  }

  v107 = v15;
  v108 = OBJC_IVAR____TtC7Journal9LinkAsset_metadata;
  v106 = v26;

  sub_10025E308(v28);

  v29 = v22[6];
  if (!v29(v28, 1, v21))
  {
    v103 = v29;
    v104 = v22 + 6;
    v102 = v8;
    v105 = v5;
    v32 = v116;
    v98 = v22[2];
    v99 = v22 + 2;
    v98(v116, v28, v21);
    sub_100004F84(v28, &qword_100AD50C8, qword_100943CE0);
    v33 = LinkAssetMetadata.data.getter();
    v35 = v34;
    v36 = v22[1];
    v100 = v22 + 1;
    v36(v32, v21);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v38 = [objc_opt_self() metadataWithDataRepresentation:isa];

    sub_1000340DC(v33, v35);
    if (!v38)
    {
      return 0;
    }

    static UTType.item.getter();
    v39 = objc_allocWithZone(CSSearchableItemAttributeSet);
    v40 = UTType._bridgeToObjectiveC()().super.isa;
    v101 = [v39 initWithContentType:v40];

    (*(v18 + 8))(v20, v17);
    v41 = [v38 title];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v113;
    v47 = v111;
    v48 = [v38 appleSummary];
    if (v48 || (v48 = [v38 summary]) != 0)
    {
      v50 = v38;
      v51 = v48;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v38 = v50;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = v52;
    v30 = v101;
    sub_10012B77C(v43, v45, v55, v54, v49);

    v56 = [v38 imageMetadata];
    v57 = v105;
    v97 = v36;
    if (v56)
    {
      v58 = v56;
      v59 = [v56 URL];

      if (v59)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      v62 = v114;
      v63 = v107;
      (*(v46 + 56))(v47, v60, 1, v107);
      v61 = v112;
      sub_100021CEC(v47, v112, &unk_100AD6DD0, &qword_1009437C0);
      if ((*(v46 + 48))(v61, 1, v63) != 1)
      {
        v72 = v109;
        (*(v46 + 32))(v109, v61, v63);
        URL._bridgeToObjectiveC()(v73);
        v75 = v74;
        [v30 setThumbnailURL:v74];

        (*(v46 + 8))(v72, v63);
        v65 = v115;
        goto LABEL_23;
      }
    }

    else
    {
      v61 = v112;
      (*(v46 + 56))(v112, 1, 1, v107);
      v62 = v114;
    }

    sub_100004F84(v61, &unk_100AD6DD0, &qword_1009437C0);
    v64 = [v38 image];
    v65 = v115;
    if (v64)
    {
      v66 = v64;
      v67 = [v64 data];

      if (v67)
      {
        v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = Data._bridgeToObjectiveC()().super.isa;
        [v30 setThumbnailData:v71];

        sub_1000340DC(v68, v70);
      }
    }

LABEL_23:
    v76 = sub_1001D8C1C();
    if (v76 == 6)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v77 = String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      v77 = sub_1008576F8(v76);
    }

    v79 = v77;
    v80 = v78;
    if (*(v62 + v108))
    {

      v81 = v106;
      sub_10025E308(v106);

      if (!v103(v81, 1, v21))
      {
        v89 = v116;
        v98(v116, v81, v21);
        sub_100004F84(v81, &qword_100AD50C8, qword_100943CE0);
        LinkAssetMetadata.date.getter();
        v97(v89, v21);
        v90 = type metadata accessor for Date();
        v91 = *(v90 - 8);
        if ((*(v91 + 48))(v65, 1, v90) != 1)
        {
          (*(v91 + 32))(v57, v65, v90);
          (*(v91 + 56))(v57, 0, 1, v90);
LABEL_38:
          sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_100940080;
          v93 = sub_10012C00C(v79, v80, v57);
          v95 = v94;

          *(v92 + 32) = v93;
          *(v92 + 40) = v95;
          v96 = Array._bridgeToObjectiveC()().super.isa;

          [v30 setAlternateNames:v96];

          sub_100004F84(v57, &unk_100AD4790, &unk_10093B4E0);
          return v30;
        }

LABEL_30:
        v83 = *(v62 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v83 && (v84 = [v83 entry]) != 0)
        {
          v85 = v84;
          JournalEntryMO.displayDate.getter();

          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v87 = type metadata accessor for Date();
        v88 = *(v87 - 8);
        (*(v88 + 56))(v57, v86, 1, v87);
        if ((*(v88 + 48))(v65, 1, v87) != 1)
        {
          sub_100004F84(v65, &unk_100AD4790, &unk_10093B4E0);
        }

        goto LABEL_38;
      }

      sub_100004F84(v81, &qword_100AD50C8, qword_100943CE0);
    }

    v82 = type metadata accessor for Date();
    (*(*(v82 - 8) + 56))(v65, 1, 1, v82);
    goto LABEL_30;
  }

  sub_100004F84(v28, &qword_100AD50C8, qword_100943CE0);
  return 0;
}

uint64_t sub_1001DA5A8(uint64_t a1, uint64_t a2)
{
  v3[6] = v2;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for FileStoreConfiguration();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for AssetAttachment.AssetType(0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v3[28] = v8;
  v3[29] = v10;

  return _swift_task_switch(sub_1001DA874, v8, v10);
}

uint64_t sub_1001DA874()
{
  v184 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 240) = v3;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 248) = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_85:

    v160 = *(v0 + 8);

    return v160();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 248) = v4;
  if (!v4)
  {
    goto LABEL_85;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  *(v0 + 256) = OBJC_IVAR____TtC7Journal5Asset_context;
  *(v0 + 264) = v5;
  *(v0 + 392) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);

  for (i = 0; ; i = *(v0 + 272) + 1)
  {
    *(v0 + 272) = i;
    v7 = *(v0 + 240);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 8 * i + 32);
    }

    *(v0 + 280) = v8;
    v9 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
    sub_100068AC8(v8 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = *(v0 + 216);
    if (EnumCaseMultiPayload <= 1)
    {
      v13 = EnumCaseMultiPayload ? type metadata accessor for AssetAttachment.AssetType : type metadata accessor for AssetAttachment.AssetType.FilePathType;
      sub_100069140(v11, v13);
      v12 = 0x6567616D69;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_100069140(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x6F65646976;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_100069140(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x6F69647561;
    }

    else
    {
      v14 = *(v0 + 216);

      v15 = sub_1000F24EC(&qword_100AD33B8, &qword_100941D30);
      sub_100069140(v14 + *(v15 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x726568746FLL;
    }

    v180 = v12;
    v16 = *(v8 + 16);
    sub_100068AC8(v8 + v9, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
    v17 = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 208);
    v179 = v16;
    if (v17 <= 1)
    {
      if (v17)
      {
        sub_100069140(v18, type metadata accessor for AssetAttachment.AssetType);
        v31 = 1;
        goto LABEL_26;
      }
    }

    else if ((v17 - 2) >= 2)
    {
      v19 = *(v0 + 208);

      v18 = v19 + *(sub_1000F24EC(&qword_100AD33B8, &qword_100941D30) + 48);
    }

    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    sub_100048E9C(v18, v21, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_100068AC8(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 184);
    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    if (v22 == 1)
    {
      v27 = *(v0 + 88);
      v26 = *(v0 + 96);
      sub_100069140(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*(v26 + 32))(v23, v25, v27);
    }

    else
    {
      v28 = *(v0 + 136);
      v29 = *(v0 + 144);
      v30 = *(v0 + 128);
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*(v28 + 8))(v29, v30);
      sub_100069140(v24, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v31 = 0;
LABEL_26:
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    (*(v34 + 56))(v33, v31, 1, v35);
    sub_100161650(v33, v32);
    if ((*(v34 + 48))(v32, 1, v35) == 1)
    {
      break;
    }

    v63 = *(v0 + 120);
    (*(*(v0 + 96) + 32))(v63, *(v0 + 176), *(v0 + 88));

    v64 = sub_10080FC00(v63);
    v66 = v65;

    *(v0 + 288) = v66;
    if (v66)
    {
      v67 = *(v0 + 48);
      v68 = *(v67 + *(v0 + 256));
      *(v0 + 296) = v68;
      if (v68)
      {
        v69 = *(v67 + *(v0 + 264));
        *(v0 + 304) = v69;
        if (v69)
        {
          v162 = *(v0 + 392);
          v163 = *(v0 + 80);
          v165 = *(v0 + 56);
          v164 = *(v0 + 64);
          v166 = swift_allocObject();
          *(v0 + 312) = v166;
          *(v166 + 16) = v69;
          *(v166 + 24) = v179;
          *(v166 + 32) = v180;
          *(v166 + 40) = 0xE500000000000000;
          *(v166 + 48) = v64;
          *(v166 + 56) = v66;
          *(v166 + 64) = 1;
          *(v166 + 72) = v68;
          (*(v164 + 104))(v163, v162, v165);
          v167 = v68;
          v168 = v69;
          v167;

          v169 = swift_task_alloc();
          *(v0 + 320) = v169;
          *v169 = v0;
          v169[1] = sub_1001DBD44;
          v170 = *(v0 + 80);
          v171 = sub_1001E1040;
          goto LABEL_90;
        }
      }

      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v70 = *(v0 + 48);
      v71 = type metadata accessor for Logger();
      sub_10000617C(v71, qword_100AF3B28);
      v72 = v70;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 48);
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        *(v76 + 4) = v75;
        *v77 = v75;
        v78 = v75;
        _os_log_impl(&_mh_execute_header, v73, v74, "%@ (addAttachmentToCoreData) managed objects aren't set", v76, 0xCu);
        sub_100004F84(v77, &unk_100AD4BB0, &unk_100941E50);
      }
    }

    else
    {

      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v88 = *(v0 + 112);
      v89 = *(v0 + 120);
      v91 = *(v0 + 88);
      v90 = *(v0 + 96);
      v92 = *(v0 + 48);
      v93 = type metadata accessor for Logger();
      sub_10000617C(v93, qword_100AF3B28);
      (*(v90 + 16))(v88, v89, v91);
      v94 = v92;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 112);
      v99 = *(v0 + 88);
      v100 = (*(v0 + 96) + 8);
      if (v97)
      {
        v101 = *(v0 + 48);
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v183 = v181;
        *v102 = 138412546;
        *(v102 + 4) = v101;
        *v103 = v101;
        *(v102 + 12) = 2080;
        sub_1001E0F7C(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v104 = v101;
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        (*v100)(v98, v99);
        v108 = sub_100008458(v105, v107, &v183);

        *(v102 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v95, v96, "%@.saveAttachments error, failed to save file from sourceURL: %s", v102, 0x16u);
        sub_100004F84(v103, &unk_100AD4BB0, &unk_100941E50);

        sub_10000BA7C(v181);
      }

      else
      {

        (*v100)(v98, v99);
      }
    }

    if (qword_100AD0060 != -1)
    {
      swift_once();
    }

    v118 = *(v0 + 96);
    v117 = *(v0 + 104);
    v119 = *(v0 + 88);
    sub_10000617C(*(v0 + 128), qword_100B2FC48);
    FileStoreConfiguration.temporaryDirectoryURL.getter();
    v120 = URL.absoluteString.getter();
    v122 = v121;
    v123 = *(v118 + 8);
    v123(v117, v119);
    URL.absoluteString.getter();
    v124._countAndFlagsBits = v120;
    v124._object = v122;
    v125 = String.hasPrefix(_:)(v124);

    if (v125)
    {
      v126 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v127);
      v129 = v128;
      *(v0 + 40) = 0;
      v130 = [v126 removeItemAtURL:v128 error:v0 + 40];

      v131 = *(v0 + 40);
      if (v130)
      {
        v132 = *(v0 + 120);
        v133 = *(v0 + 88);
        v134 = v131;

        v135 = v132;
        v136 = v133;
      }

      else
      {
        v139 = v131;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_10000617C(v140, qword_100AF3B28);
        swift_errorRetain();
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();

        v143 = os_log_type_enabled(v141, v142);
        v144 = *(v0 + 120);
        v145 = *(v0 + 88);
        if (v143)
        {
          v182 = *(v0 + 88);
          v146 = swift_slowAlloc();
          v147 = v144;
          v148 = swift_slowAlloc();
          *v146 = 138412290;
          swift_errorRetain();
          v149 = _swift_stdlib_bridgeErrorToNSError();
          *(v146 + 4) = v149;
          *v148 = v149;
          _os_log_impl(&_mh_execute_header, v141, v142, "Error when removing attachment source file: %@", v146, 0xCu);
          sub_100004F84(v148, &unk_100AD4BB0, &unk_100941E50);

          v135 = v147;
          v136 = v182;
        }

        else
        {

          v135 = v144;
          v136 = v145;
        }
      }
    }

    else
    {
      v137 = *(v0 + 120);
      v138 = *(v0 + 88);

      v135 = v137;
      v136 = v138;
    }

    v123(v135, v136);
LABEL_82:
    v158 = *(v0 + 248);
    v159 = *(v0 + 272) + 1;
    sub_100004F84(*(v0 + 184), &unk_100AD6DD0, &qword_1009437C0);
    if (v159 == v158)
    {

      goto LABEL_85;
    }
  }

  v36 = *(v0 + 200);
  sub_100004F84(*(v0 + 176), &unk_100AD6DD0, &qword_1009437C0);
  sub_100068AC8(v8 + v9, v36, type metadata accessor for AssetAttachment.AssetType);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = *(v0 + 200);
  if (v37 != 1)
  {

    sub_100069140(v38, type metadata accessor for AssetAttachment.AssetType);
    if (qword_100AD0B50 != -1)
    {
      swift_once();
    }

    v79 = *(v0 + 48);
    v80 = type metadata accessor for Logger();
    sub_10000617C(v80, qword_100AF3B28);
    v81 = v79;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = *(v0 + 48);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v84;
      *v86 = v84;
      v87 = v84;
      _os_log_impl(&_mh_execute_header, v82, v83, "%@.saveAttachments error, nothing to save", v85, 0xCu);
      sub_100004F84(v86, &unk_100AD4BB0, &unk_100941E50);

LABEL_77:

      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v39 = *v38;
  *(v0 + 328) = *v38;
  v40 = UIImageHEICRepresentation(v39);
  if (!v40)
  {

    if (qword_100AD0B50 != -1)
    {
      swift_once();
    }

    v109 = *(v0 + 48);
    v110 = type metadata accessor for Logger();
    sub_10000617C(v110, qword_100AF3B28);
    v111 = v109;
    v82 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v112))
    {
      v113 = *(v0 + 48);
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      *(v114 + 4) = v113;
      *v115 = v113;
      v116 = v113;
      _os_log_impl(&_mh_execute_header, v82, v112, "%@.saveAttachments error, imageData is nil", v114, 0xCu);
      sub_100004F84(v115, &unk_100AD4BB0, &unk_100941E50);

LABEL_76:

      goto LABEL_77;
    }

    goto LABEL_80;
  }

  v41 = v40;
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v0 + 336) = v42;
  *(v0 + 344) = v44;
  v45 = *(v8 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  v46 = *(v8 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID + 8);

  v47 = sub_100810858(v42, v44, v45, v46, 1667851624, 0xE400000000000000);
  v49 = v48;

  *(v0 + 352) = v49;
  if (!v49)
  {

    if (qword_100AD0B50 != -1)
    {
      swift_once();
    }

    v150 = *(v0 + 48);
    v151 = type metadata accessor for Logger();
    sub_10000617C(v151, qword_100AF3B28);
    v152 = v150;
    v82 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v153))
    {
      v154 = *(v0 + 48);
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      *v155 = 138412290;
      *(v155 + 4) = v154;
      *v156 = v154;
      v157 = v154;
      _os_log_impl(&_mh_execute_header, v82, v153, "%@.saveAttachments error, failed to save image data", v155, 0xCu);
      sub_100004F84(v156, &unk_100AD4BB0, &unk_100941E50);

      sub_1000340DC(v42, v44);
      goto LABEL_76;
    }

    sub_1000340DC(v42, v44);
LABEL_80:

LABEL_81:
    goto LABEL_82;
  }

  v50 = *(v0 + 48);
  v51 = *(v50 + *(v0 + 256));
  *(v0 + 360) = v51;
  if (!v51 || (v52 = *(v50 + *(v0 + 264)), (*(v0 + 368) = v52) == 0))
  {

    if (qword_100AD0B50 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 48);
    v54 = type metadata accessor for Logger();
    sub_10000617C(v54, qword_100AF3B28);
    v55 = v53;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 48);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v58;
      *v60 = v58;
      v61 = v58;
      _os_log_impl(&_mh_execute_header, v56, v57, "%@ (addAttachmentToCoreData) managed objects aren't set", v59, 0xCu);
      sub_100004F84(v60, &unk_100AD4BB0, &unk_100941E50);
    }

    v62 = *(v0 + 328);
    sub_1000340DC(*(v0 + 336), *(v0 + 344));

    goto LABEL_82;
  }

  v172 = *(v0 + 392);
  v173 = *(v0 + 64);
  v174 = *(v0 + 72);
  v175 = *(v0 + 56);
  v166 = swift_allocObject();
  *(v0 + 376) = v166;
  *(v166 + 16) = v52;
  *(v166 + 24) = v179;
  *(v166 + 32) = v180;
  *(v166 + 40) = 0xE500000000000000;
  *(v166 + 48) = v47;
  *(v166 + 56) = v49;
  *(v166 + 64) = 1;
  *(v166 + 72) = v51;
  (*(v173 + 104))(v174, v172, v175);
  v176 = v51;
  v177 = v52;

  v178 = v177;
  v176;

  v169 = swift_task_alloc();
  *(v0 + 384) = v169;
  *v169 = v0;
  v169[1] = sub_1001DD3BC;
  v170 = *(v0 + 72);
  v171 = sub_1001E0F64;
LABEL_90:

  return NSManagedObjectContext.perform<A>(schedule:_:)(v169, v170, v171, v166, &type metadata for () + 1);
}