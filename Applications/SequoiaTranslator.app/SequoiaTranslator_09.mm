id sub_1000FD2D0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1000FD340(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000FD6C0(v4);
  }

  sub_1000FDB0C(v2);
  return v3;
}

id sub_1000FD340(uint64_t a1)
{
  type metadata accessor for PersistedTranslation();
  v2 = static PersistedTranslation.favoritedSortedByCreationDateFetchRequest(localePair:)();
  v3 = dispatch thunk of TranslationStoreCoreData.viewContext.getter();
  v4 = objc_allocWithZone(NSFetchedResultsController);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithFetchRequest:v2 managedObjectContext:v3 sectionNameKeyPath:v5 cacheName:0];

  [v6 setDelegate:a1];
  v16 = 0;
  if ([v6 performFetch:&v16])
  {
    v7 = v16;
  }

  else
  {
    v8 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9228 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2788);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed initial fetch of favorites data: %@", v12, 0xCu);
      sub_1000DDF70(v13);
    }

    else
    {
    }
  }

  return v6;
}

void sub_1000FD5D4()
{

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController);

  sub_1000FD6C0(v1);
}

id sub_1000FD618(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FavoritesDetailListController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000FD6C0(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_1000FD6D0()
{
  result = qword_1003B0788;
  if (!qword_1003B0788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0788);
  }

  return result;
}

unint64_t sub_1000FD724()
{
  result = qword_1003B0790;
  if (!qword_1003B0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0790);
  }

  return result;
}

uint64_t sub_1000FD778()
{

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_1000FD7B8()
{
  result = qword_1003BC460;
  if (!qword_1003BC460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003BC460);
  }

  return result;
}

uint64_t sub_1000FD818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100005AD4(&qword_1003B07A0, &unk_1002DD780) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1000FCBA0(a1, a2, a3, v8);
}

uint64_t sub_1000FD8AC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000FD8EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000FD940(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100005AD4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_1000FD9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005AD4(&qword_1003B0798, &unk_1002DDA70);
  sub_1000FD7B8();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

unint64_t sub_1000FDA58()
{
  result = qword_1003BC4D0;
  if (!qword_1003BC4D0)
  {
    sub_100005EA8(&unk_1003BC4C0, &qword_1002DD790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BC4D0);
  }

  return result;
}

uint64_t sub_1000FDAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000FDB0C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000FDB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FDC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FavoritesDetailView(uint64_t a1)
{
  result = qword_1003B0810;
  if (!qword_1003B0810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FDCFC(uint64_t a1)
{
  type metadata accessor for TranslationStoreCoreData();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTSManager(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TranslationSession_RD(319);
      if (v3 <= 0x3F)
      {
        sub_10005C414(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000FDDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FavoritesDetailView(0);
  sub_10001F620(v1 + *(v10 + 36), v9, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10008E200(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000FDFB4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v9 = __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_1000FDDDC(&v27 - v14);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_10001F620(v15, v7, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v13, &v7[v16], &qword_1003AC848, &qword_1002D66A0);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_100009EBC(v7, &qword_1003AC848, &qword_1002D66A0);
LABEL_9:
      v18 = &enum case for NavigationBarItem.TitleDisplayMode.inline(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_10001F620(v7, v29, &qword_1003AC848, &qword_1002D66A0);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_100009EBC(v7, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_1000FEC08();
  v21 = v29;
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
  v23(v21, v1);
  sub_100009EBC(v7, &qword_1003AC848, &qword_1002D66A0);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for NavigationBarItem.TitleDisplayMode.automatic(_:);
LABEL_10:
  v24 = *v18;
  v25 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_1000FE420()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_1000FDDDC(&v22 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848, &qword_1002D66A0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10001F620(v6, v10, &qword_1003AC848, &qword_1002D66A0);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_1000FEC08();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
      v20(v10, v0);
      sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
      return LocalizedStringKey.init(stringLiteral:)();
    }

    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998, &qword_1002D6950);
    return LocalizedStringKey.init(stringLiteral:)();
  }

  sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
  return LocalizedStringKey.init(stringLiteral:)();
}

double sub_1000FE858@<D0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v19 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005AD4(&qword_1003B0858, &qword_1002DD840);
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v19 - v6;
  v20 = *v1;
  v8 = v20;
  v9 = *(v1 + 1);
  v23 = *(v1 + 2);
  v24 = v9;
  v10 = v1[3];
  swift_bridgeObjectRetain_n();

  v11 = static SafeAreaRegions.container.getter();
  v12 = static Edge.Set.all.getter();
  *v25 = v8;
  *&v25[24] = v23;
  *&v25[8] = v24;
  *&v25[40] = v10;
  *&v25[48] = v11;
  v25[56] = v12;
  sub_1000FDFB4(v4);
  v13 = sub_100005AD4(&qword_1003B0860, &qword_1002DD848);
  v14 = sub_1000FEB7C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v2 + 8))(v4, v19);
  v26[0] = *v25;
  v26[1] = *&v25[16];
  v27[0] = *&v25[32];
  *(v27 + 9) = *&v25[41];
  sub_100009EBC(v26, &qword_1003B0860, &qword_1002DD848);
  sub_1000FE420();
  *v25 = v13;
  *&v25[8] = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v22;
  v16 = v21;
  View.navigationBarTitle(_:)();

  (*(v5 + 8))(v7, v16);
  v17 = (v15 + *(sub_100005AD4(&qword_1003B0870, &unk_1002DD850) + 52));
  *v17 = v20;
  result = *&v24;
  v17[1] = v24;
  return result;
}

unint64_t sub_1000FEB7C()
{
  result = qword_1003B0868;
  if (!qword_1003B0868)
  {
    sub_100005EA8(&qword_1003B0860, &qword_1002DD848);
    sub_1000FBE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0868);
  }

  return result;
}

unint64_t sub_1000FEC08()
{
  result = qword_1003AC9D0;
  if (!qword_1003AC9D0)
  {
    type metadata accessor for UserInterfaceSizeClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC9D0);
  }

  return result;
}

unint64_t sub_1000FEC64()
{
  result = qword_1003B0878;
  if (!qword_1003B0878)
  {
    sub_100005EA8(&qword_1003B0870, &unk_1002DD850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0878);
  }

  return result;
}

id sub_1000FECC8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_label;
  *&v4[v9] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_button;
  *&v4[v10] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = &v4[OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_buttonAction];
  v12 = type metadata accessor for FavoritesHeaderView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  sub_1000FEF18();
  sub_1000FF11C();

  return v15;
}

id sub_1000FEF18()
{
  v1 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_label];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_button];
  [v0 addSubview:v2];
  v3 = [objc_opt_self() systemFontOfSize:22.0 weight:UIFontWeightBold];
  [v1 setFont:v3];

  v4 = [objc_opt_self() mainBundle];
  v12._object = 0x80000001002F4960;
  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x80000001002F4940;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v12);

  v7 = String._bridgeToObjectiveC()();

  [v2 setTitle:v7 forState:0];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() colorNamed:v8];

  [v2 setTitleColor:v9 forState:0];

  return [v2 addTarget:v0 action:"buttonPressed" forControlEvents:64];
}

void sub_1000FF11C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_label];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator19FavoritesHeaderView_button];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 bottomAnchor];
  v5 = [v1 bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-17.0];

  LODWORD(v7) = 1148829696;
  [v6 setPriority:v7];
  v25 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D53D0;
  v9 = [v2 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:17.0];

  *(v8 + 32) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v3 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-8.0];

  *(v8 + 40) = v14;
  v15 = [v2 topAnchor];
  v16 = [v1 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:17.0];

  *(v8 + 48) = v17;
  *(v8 + 56) = v6;
  v18 = v6;
  v19 = [v3 trailingAnchor];
  v20 = [v1 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-17.0];

  *(v8 + 64) = v21;
  v22 = [v3 firstBaselineAnchor];
  v23 = [v2 firstBaselineAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v8 + 72) = v24;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

id sub_1000FF510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000FF5C8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_subscriptions] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_translationStore] = a1;
  type metadata accessor for SharedTranslations();

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_sharedFavorites] = static SharedTranslations.translationGroupSharedTranslations()();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FavoritesImporter();
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_sharedFavorites];
  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = v3;
  dispatch thunk of SharedTranslations.presentedItemChangedAction.setter();

  return v4;
}

uint64_t sub_1000FF714()
{
  v3 = (&async function pointer to dispatch thunk of SharedTranslations.loadTranslations() + async function pointer to dispatch thunk of SharedTranslations.loadTranslations());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000FF7C4;

  return v3();
}

uint64_t sub_1000FF7C4()
{

  return _swift_task_switch(sub_1000FF8C0, 0, 0);
}

uint64_t sub_1000FF8C0()
{
  sub_1000FF920();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FF948(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (qword_1003A9240 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D27D0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;
  v16 = v6;
  sub_10005E36C(0, 0, v9, a3, v15);
}

uint64_t sub_1000FFB28()
{
  v1 = v0[2];
  v0[3] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_translationStore);
  v0[4] = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17FavoritesImporter_sharedFavorites);

  v2 = dispatch thunk of SharedTranslations.translations.getter();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1000FFBF4;

  return sub_1000FFE7C(v2);
}

uint64_t sub_1000FFBF4()
{
  v1 = *v0;
  v2 = *v0;

  v5 = (&async function pointer to dispatch thunk of SharedTranslations.clear() + async function pointer to dispatch thunk of SharedTranslations.clear());
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1000FFD88;

  return v5();
}

uint64_t sub_1000FFD88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000FFE7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000FFE9C, 0, 0);
}

uint64_t sub_1000FFE9C()
{
  if (qword_1003A9240 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D27D0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Importing %ld favorites", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[2];
  v0[4] = TranslationStoreCoreData.persistentContainer.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v0[5] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1001000A8;

  return NSPersistentContainer.performBackgroundTask<A>(_:)();
}

uint64_t sub_1001000A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 32);

    return _swift_task_switch(sub_1001001E8, 0, 0);
  }
}

id sub_10010022C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001002E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FavoritesImporter();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10010031C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100100378(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v52 = type metadata accessor for Date();
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v54 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoredTranslationResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SpeechResultOrigin();
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v60 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StoredSpeechResult();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v63 = result;
  if (result)
  {
    v44[1] = v3;
    v46 = a3;
    v45 = *(a3 + 16);
    if (v45)
    {
      v19 = *(type metadata accessor for SharedTranslations.Translation() - 8);
      v20 = v46 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v59 = *(v19 + 72);
      v58 += 13;
      v57 = (v15 + 16);
      v56 = (v8 + 16);
      v48 = (v54 + 8);
      v47 = v55 + 1;
      v55 = (v8 + 8);
      LODWORD(v54) = enum case for SpeechResultOrigin.text(_:);
      v53 = (v15 + 8);
      v21 = v45;
      v65 = v17;
      do
      {
        SharedTranslations.Translation.sourceText.getter();
        SharedTranslations.Translation.sourceLocale.getter();
        (*v58)(v61, v54, v62);
        StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
        SharedTranslations.Translation.targetText.getter();
        SharedTranslations.Translation.targetLocale.getter();
        v22 = v65;
        StoredTranslationResult.init(text:locale:isOffline:romanization:)();
        v67[3] = v14;
        v67[4] = sub_100100EB8(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult, &protocol conformance descriptor for StoredSpeechResult);
        v23 = sub_100050D60(v67);
        (*v57)(v23, v22, v14);
        v66[3] = v7;
        v66[4] = sub_100100EB8(&qword_1003AED00, &type metadata accessor for StoredTranslationResult, &protocol conformance descriptor for StoredTranslationResult);
        v24 = sub_100050D60(v66);
        (*v56)(v24, v10, v7);
        v25 = TranslationStoreCoreData.insert(speech:translationResult:context:isFavorite:)();
        sub_100008664(v66);
        sub_100008664(v67);
        if (v25)
        {
          v26 = v49;
          UUID.init()();
          UUID.uuidString.getter();
          (*v48)(v26, v50);
          v22 = v65;
          v27 = String._bridgeToObjectiveC()();

          [v25 setRequestID:v27];

          v28 = String._bridgeToObjectiveC()();
          [v25 setSessionID:v28];

          v29 = v51;
          Date.init()();
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*v47)(v29, v52);
          [v25 setFavoriteDate:isa];
        }

        (*v55)(v10, v7);
        (*v53)(v22, v14);
        v20 += v59;
        --v21;
      }

      while (v21);
    }

    v67[0] = 0;
    if ([v64 save:v67])
    {
      v31 = qword_1003A9240;
      v32 = v67[0];
      if (v31 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000078E8(v33, qword_1003D27D0);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v45;

        _os_log_impl(&_mh_execute_header, v34, v35, "Imported %ld favorites", v36, 0xCu);
      }

      else
      {
      }
    }

    else
    {
      v37 = v67[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9240 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000078E8(v38, qword_1003D27D0);
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = _convertErrorToNSError(_:)();
        *(v41 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to import favorites: %@", v41, 0xCu);
        sub_1000DDF70(v42);
      }

      [v64 reset];
    }
  }

  return result;
}

uint64_t sub_100100D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_1000FFB08(a1, v4, v5, v6);
}

uint64_t sub_100100E24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100100E5C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100100EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100100F04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100100F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1000FF6F4(a1, v4, v5, v6);
}

uint64_t sub_100100FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100101044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100101098()
{
  result = qword_1003B0900;
  if (!qword_1003B0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0900);
  }

  return result;
}

id sub_1001010EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(type metadata accessor for FavoritesListController());
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_subscriptions] = &_swiftEmptySetSingleton;
  v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoriteTranslationsTip] = 1;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates] = 0;
  v10 = &v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoritesResultsController] = 1;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___recentsResultsController] = 1;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView] = 0;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource] = 0;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_store] = a2;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_ttsManager] = a5;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession] = a3;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession] = a4;
  v12.receiver = v9;
  v12.super_class = type metadata accessor for FavoritesCardListController();

  return objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10010124C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010133C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001012B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010133C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100101314(uint64_t a1)
{
  sub_10010133C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10010133C()
{
  result = qword_1003B0908;
  if (!qword_1003B0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0908);
  }

  return result;
}

unint64_t sub_100101390(unint64_t result, uint64_t a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        sub_100104BF0(&v9, a2);
        result = swift_unknownObjectRelease();
        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_1001014C4()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoriteTranslationsTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoriteTranslationsTip) = 0;
  }
}

void *(*sub_1001014E0())()
{
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip);
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip);
  v3 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100105F4C;
    *v1 = sub_100105F4C;
    v1[1] = v5;

    sub_10001ABE4(v6, v7);
  }

  sub_10001AD18(v2, v3);
  return v4;
}

void *sub_10010159C(uint64_t a1)
{
  v1 = type metadata accessor for Tips.InvalidationReason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1001014C4();

    (*(v2 + 104))(v4, enum case for Tips.InvalidationReason.actionPerformed(_:), v1);
    sub_100105C30();
    Tip.invalidate(reason:)();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void *sub_1001016C8()
{
  v1 = sub_100005AD4(&qword_1003B23F0, &unk_1002D7900);
  __chkstk_darwin(v1 - 8);
  v20 = &v17 - v2;
  v3 = sub_100005AD4(&qword_1003AD868, &qword_1002D78A0);
  v4 = __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v5 = sub_100005AD4(&qword_1003B09E8, &qword_1002DDB70);
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v21 = sub_100005AD4(&qword_1003B09F0, &qword_1002DDB78);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FavoritesListController();
  v23.receiver = v0;
  v23.super_class = v10;
  objc_msgSendSuper2(&v23, "viewDidLoad");
  result = *&v0[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView];
  if (result)
  {
    [result setTag:206];
    swift_beginAccess();
    sub_100005AD4(&qword_1003AABD8, &unk_1002D48F0);
    Published.projectedValue.getter();
    swift_endAccess();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    sub_10001BAEC(&qword_1003AD940, &qword_1003AD868, &qword_1002D78A0, &protocol conformance descriptor for Published<A>.Publisher);
    Publishers.CombineLatest.init(_:_:)();
    sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    v22 = v12;
    v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v14 = v20;
    (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
    sub_10001BAEC(&qword_1003B09F8, &qword_1003B09E8, &qword_1002DDB70, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    sub_100051450();
    v15 = v18;
    Publisher.receive<A>(on:options:)();
    sub_100009EBC(v14, &qword_1003B23F0, &unk_1002D7900);

    (*(v17 + 8))(v7, v15);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001BAEC(&qword_1003B0A00, &qword_1003B09F0, &qword_1002DDB78, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v16 = v21;
    Publisher<>.sink(receiveValue:)();

    (*(v19 + 8))(v9, v16);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100101BDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_100005AD4(&unk_1003BA780, &qword_1002D6240);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002D1370;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
    *(v8 + 48) = v5;
    *(v8 + 56) = v4;

    sub_10010564C(v8);
  }

  return result;
}

uint64_t sub_100101CE8(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for FavoritesListController();
  v15.receiver = v2;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates;
  v9 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates];
  if (!v9)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1001014C4();
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;

    v9 = sub_10005E36C(0, 0, v6, &unk_1002DDB40, v13);
  }

  *&v2[v8] = v9;
}

uint64_t sub_100101EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_100005AD4(&qword_1003B09B0, &qword_1002DDB48);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_100005AD4(&qword_1003B09B8, &qword_1002DDB50);
  v4[15] = swift_task_alloc();
  v4[16] = sub_100005AD4(&qword_1003B09C0, &qword_1002DDB58);
  v4[17] = swift_task_alloc();
  v6 = sub_100005AD4(&qword_1003B09C8, &qword_1002DDB60);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_100005AD4(&qword_1003B09D0, &qword_1002DDB68);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return _swift_task_switch(sub_100102118, v9, v8);
}

uint64_t sub_100102118(uint64_t a1)
{
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[18];
  sub_100105C30();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10001BAEC(&qword_1003B09D8, &qword_1003B09B8, &qword_1002DDB50, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v3 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v5 = static MainActor.shared.getter();
  v1[28] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v1[29] = v6;
  v1[30] = v8;

  return _swift_task_switch(sub_1001022C0, v6, v8);
}

uint64_t sub_1001022C0()
{
  v1 = v0[28];
  v0[31] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10001BAEC(&qword_1003B09E0, &qword_1003B09C0, &qword_1002DDB58, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1001023C4;
  v3 = v0[10];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1001023C4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1001026AC;
  }

  else
  {
    (*(v2 + 248))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1001024EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001024EC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100009EBC(v3, &qword_1003B09B0, &qword_1002DDB48);
    v4 = v0[26];
    v5 = v0[27];

    return _swift_task_switch(sub_100102980, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[33] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_1001026C4;
    v9 = v0[13];

    return (v11)(v0 + 35, v9);
  }
}

uint64_t sub_1001026C4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return _swift_task_switch(sub_100102864, v6, v5);
}

uint64_t sub_100102864()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_1001028C8, v1, v2);
}

uint64_t sub_1001028C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001043C8(1);
  }

  v3 = static MainActor.shared.getter();
  v0[28] = v3;
  if (v3)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[29] = v4;
  v0[30] = v6;

  return _swift_task_switch(sub_1001022C0, v4, v6);
}

uint64_t sub_100102980()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100102B5C()
{
  v1 = v0;
  v34 = sub_100005AD4(&qword_1003B0798, &unk_1002DDA70);
  v2 = *(v34 - 8);
  v3 = __chkstk_darwin(v34);
  v30 = v4;
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v30 - v5;
  v6 = sub_100005AD4(&qword_1003B07A0, &unk_1002DD780);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);
  result = UICollectionView.CellRegistration.init(handler:)();
  v14 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView);
  if (v14)
  {
    (*(v7 + 16))(v10, v12, v6);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    v17 = *(v7 + 32);
    v32 = v6;
    v17(v16 + v15, v10, v6);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100105CD8;
    *(v18 + 24) = v16;
    v19 = objc_allocWithZone(sub_100005AD4(&qword_1003B07A8, &qword_1002DDA80));
    v20 = v14;
    v21 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v22 = OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource;
    v23 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource) = v21;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    v24 = *(v1 + v22);
    v25 = v34;
    if (v24)
    {
      v26 = v31;
      (*(v2 + 16))(v31, v35, v34);
      v27 = (*(v2 + 80) + 16) & ~*(v2 + 80);
      v28 = swift_allocObject();
      (*(v2 + 32))(v28 + v27, v26, v25);
      v29 = v24;
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    }

    (*(v2 + 8))(v35, v25);
    return (*(v7 + 8))(v12, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100102FA0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = sub_100005AD4(&unk_1003BC4C0, &qword_1002DD790);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = sub_100005AD4(&qword_1003B09A0, &qword_1002DDAA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v14 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v24[1] = a1;
    if (v14 >> 62 == 2)
    {
      __chkstk_darwin(Strong);
      v24[-2] = v16;
      sub_100005AD4(&qword_1003AC9E8, &qword_1002D69C0);
      v18 = sub_100005EA8(&qword_1003AC9E0, &qword_1002D69B8);
      v19 = sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0, &qword_1002D69B8, &protocol conformance descriptor for TipView<A>);
      v25[0] = v18;
      v25[1] = &type metadata for Color;
      v25[2] = v19;
      v26 = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v26 = v10;
      v27 = sub_10001BAEC(&qword_1003B09A8, &qword_1003B09A0, &qword_1002DDAA8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_100050D60(v25);
      UIHostingConfiguration.margins(_:_:)();
      (*(v11 + 8))(v13, v10);
      UICollectionViewCell.contentConfiguration.setter();
    }

    else
    {
      v17 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
      if (v14 >> 62 == 1)
      {
        v14 &= 0x3FFFFFFFFFFFFFFFuLL;
      }

      v20 = v17;
      v21 = sub_1000FA0C0(v14);
      v22 = sub_1000F90F8(v14, v21);

      __chkstk_darwin(v23);
      v24[-2] = v22;
      v24[-1] = v16;
      type metadata accessor for TranslationCardView(0);
      sub_100105EF4(&qword_1003B07B0, type metadata accessor for TranslationCardView, &unk_1002EDEE8);
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v26 = v6;
      v27 = sub_10001BAEC(&qword_1003BC4D0, &unk_1003BC4C0, &qword_1002DD790, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_100050D60(v25);
      UIHostingConfiguration.margins(_:_:)();
      (*(v7 + 8))(v9, v6);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_10010340C()
{
  v0 = sub_100005AD4(&qword_1003AC9E0, &qword_1002D69B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  sub_1001014C4();
  v6[4] = &type metadata for TipsHelper.FavoriteTranslationsTip;
  v6[5] = sub_100105C30();
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v4 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v6[1] = Color.init(_:)();
  sub_10001BAEC(&qword_1003ACA40, &qword_1003AC9E0, &qword_1002D69B8, &protocol conformance descriptor for TipView<A>);
  View.tipBackground<A>(_:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001035C0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1001014E0();
  v5 = v4;
  type metadata accessor for SharedTranslationOptions(0);
  sub_100105EF4(&qword_1003AE918, type metadata accessor for SharedTranslationOptions, &unk_1002E997C);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for TranslationCardView(0);
  *(a2 + v10[8]) = KeyPath;
  sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CommittedTranslationViewModel(0);
  sub_100105EF4(&qword_1003B0720, type metadata accessor for CommittedTranslationViewModel, &unk_1002D6050);

  Bindable<A>.init(wrappedValue:)();
  v11 = (a2 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10[6]);
  *v12 = v3;
  v12[1] = v5;
  v13 = (a2 + v10[7]);
  *v13 = v6;
  v13[1] = v8;
  v14 = (a2 + v10[9]);
  type metadata accessor for SceneContext(0);
  sub_100105EF4(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = a2 + v10[10];
  State.init(wrappedValue:)();
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = v10[11];
  result = Image.init(systemName:)();
  *(a2 + v17) = result;
  return result;
}

uint64_t sub_1001037E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a3 & 0x3FFFFFFFFFFFFFFFLL);
  sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);
  v5 = v4;
  v6 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v6;
}

unint64_t sub_10010387C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v75 = a4;
  v6 = type metadata accessor for UICellAccessory();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B0988, &qword_1002DDA88);
  __chkstk_darwin(v8 - 8);
  v65 = &v59 - v9;
  v63 = type metadata accessor for UICellAccessory.Placement();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v67 = *(v11 - 8);
  v68 = v11;
  __chkstk_darwin(v11);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIButton.Configuration();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = __chkstk_darwin(v13);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v59 - v16;
  v17 = type metadata accessor for UIListContentConfiguration();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  v24 = sub_100005AD4(&qword_1003B0728, &unk_1002DD770);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = *(result + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
    if (v30)
    {
      v60 = a1;
      v31 = v30;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v32 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v25 + 8))(v27, v24);
      result = IndexPath.section.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v32 + 16))
      {
        v33 = (v32 + 24 * result);
        v35 = v33[4];
        v34 = v33[5];
        v36 = v33[6];
        sub_1000FBCBC(v35, v34, v36);

        static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
        a1 = v60;
        if (v34 != 3)
        {
          sub_1000F8A34(v35, v34);
          UIListContentConfiguration.text.setter();
          (*(v18 + 32))(v23, v21, v17);
          if (v34 >= 3)
          {
            if (*(v36 + 16) > 3uLL)
            {
              v75 = v35;
              v37 = v72;
              static UIButton.Configuration.plain()();
              v38 = [objc_opt_self() mainBundle];
              v77._object = 0x80000001002F4960;
              v39._object = 0x80000001002F4940;
              v77._countAndFlagsBits = 0xD00000000000001BLL;
              v39._countAndFlagsBits = 0xD000000000000011;
              v40._countAndFlagsBits = 0;
              v40._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v77);

              UIButton.Configuration.title.setter();
              sub_10000A2CC(0, &qword_1003B0608, UIButton_ptr);
              (*(v73 + 16))(v61, v37, v74);
              sub_10000A2CC(0, &qword_1003A9940, UIAction_ptr);
              v41 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v42 = swift_allocObject();
              v42[2] = v41;
              a1 = v60;
              v42[3] = v75;
              v42[4] = v34;
              v42[5] = v36;
              UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
              v43 = UIButton.init(configuration:primaryAction:)();
              v44 = sub_100005AD4(&qword_1003B0990, &qword_1002DDA90);
              v45 = v64;
              v46 = &v64[*(v44 + 48)];
              v47 = enum case for UICellAccessory.DisplayedState.always(_:);
              v48 = type metadata accessor for UICellAccessory.DisplayedState();
              (*(*(v48 - 8) + 104))(v45, v47, v48);
              *v46 = variable initialization expression of PlaceholderTextView.placeholderColor;
              v46[1] = 0;
              (*(v62 + 104))(v45, enum case for UICellAccessory.Placement.trailing(_:), v63);
              v49 = type metadata accessor for UICellAccessory.LayoutDimension();
              (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
              v75 = v43;
              v50 = v66;
              UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
              v51 = v69;
              static UICellAccessory.customView(configuration:)();
              sub_100005AD4(&qword_1003B0998, &unk_1002DDA98);
              v52 = v70;
              v53 = (*(v70 + 80) + 32) & ~*(v70 + 80);
              v54 = swift_allocObject();
              *(v54 + 16) = xmmword_1002D3160;
              v55 = v54 + v53;
              v56 = v71;
              (*(v52 + 16))(v55, v51, v71);
              UICollectionViewListCell.accessories.setter();

              (*(v52 + 8))(v51, v56);
              (*(v67 + 8))(v50, v68);
              (*(v73 + 8))(v72, v74);
LABEL_12:
              v76[3] = v17;
              v76[4] = &protocol witness table for UIListContentConfiguration;
              v57 = sub_100050D60(v76);
              (*(v18 + 16))(v57, v23, v17);
              UICollectionViewCell.contentConfiguration.setter();
              v58 = String._bridgeToObjectiveC()();
              [a1 setAccessibilityIdentifier:v58];

              return (*(v18 + 8))(v23, v17);
            }

            sub_1000FBBBC(v35, v34, v36);
          }

LABEL_11:
          UICollectionViewListCell.accessories.setter();
          goto LABEL_12;
        }

LABEL_10:
        (*(v18 + 32))(v23, v21, v17);
        goto LABEL_11;
      }

      __break(1u);
      return result;
    }

    static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
    goto LABEL_10;
  }

  return result;
}

void sub_1001041E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1000F8A34(a3, a4);
    v10 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_store];
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v12 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_ttsManager];
    v13 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession];
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession];
    v16 = objc_allocWithZone(type metadata accessor for FavoritesDetailListController());
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController____lazy_storage___favoritesLocalePairResultsController] = 1;
    v17 = &v16[OBJC_IVAR____TtC17SequoiaTranslator29FavoritesDetailListController_displayLocalePairText];
    *v17 = v11;
    v17[1] = v14;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_collectionView] = 0;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource] = 0;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_store] = v10;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_ttsManager] = v12;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession] = v13;
    *&v16[OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession] = v15;
    v21.receiver = v16;
    v21.super_class = type metadata accessor for FavoritesCardListController();

    v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
    v19 = [v7 navigationController];
    if (v19)
    {
      v20 = v19;
      [v19 pushViewController:v18 animated:1];
    }
  }
}

uint64_t sub_1001043C8(int a1)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003B0728, &unk_1002DD770);
  v60 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v54 - v7;
  sub_1000FD6D0();
  sub_1000FD724();
  NSDiffableDataSourceSnapshot.init()();
  sub_1001014C4();
  sub_100105C30();
  if (Tip.shouldDisplay.getter())
  {
    v9 = sub_100105128();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 fetchedObjects];

      if (v11)
      {
        type metadata accessor for PersistedTranslation();
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13)
        {
          NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D060);
          v62 = 0uLL;
          *&v63 = 0;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
        }
      }
    }
  }

  v14 = sub_100104E74();
  v15 = &selRef_oneSelectedWithSender_;
  if (v14)
  {
    v16 = v14;
    v17 = [v14 sections];

    if (v17)
    {
      sub_100005AD4(&qword_1003B0970, &qword_1002DDA50);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100101390(v18, v8);
      v15 = &selRef_oneSelectedWithSender_;
    }
  }

  v19 = sub_100105128();
  if (!v19 || (v20 = v19, v21 = [v19 fetchedObjects], v20, !v21))
  {
LABEL_23:
    if (v61)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v58 = v6;
  type metadata accessor for PersistedTranslation();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23 >= 1)
    {
LABEL_15:
      v55 = v4;
      v56 = v3;
      v57 = v2;
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10037D0C0);
      *&v62 = _swiftEmptyArrayStorage;
      sub_1000C4B6C(0, v23, 0);
      v24 = 0;
      v25 = v62;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v26;
        *&v62 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1000C4B6C((v28 > 1), v29 + 1, 1);
          v25 = v62;
        }

        ++v24;
        *(v25 + 16) = v29 + 1;
        *(v25 + 8 * v29 + 32) = v27 | 0x4000000000000000;
      }

      while (v23 != v24);

      v62 = xmmword_1002D32F0;
      *&v63 = 0;
      v6 = v58;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v3 = v56;
      v2 = v57;
      v4 = v55;
      v15 = &selRef_oneSelectedWithSender_;
      goto LABEL_23;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23 >= 1)
    {
      goto LABEL_15;
    }
  }

  v6 = v58;
  if (v61)
  {
    goto LABEL_34;
  }

LABEL_24:
  v30 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___recentsResultsController);
  if (v30)
  {
    v31 = [v30 fetchedObjects];
    if (v31)
    {
      v32 = v31;
      type metadata accessor for PersistedTranslation();
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v33 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v34)
      {
        if (qword_1003A9318 != -1)
        {
          swift_once();
        }

        v35 = sub_100005AD4(&qword_1003B0978, &qword_1002DDA58);
        sub_1000078E8(v35, qword_1003D2B30);
        Tips.Event.sendDonation<>(_:)();
      }
    }
  }

LABEL_34:
  v36 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoritesResultsController);
  if (v36 && (v37 = [v36 v15[421]]) != 0)
  {
    v38 = v37;
    sub_100005AD4(&qword_1003B0970, &qword_1002DDA50);
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v39 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  if (qword_1003A9320 != -1)
  {
    swift_once();
  }

  v42 = sub_100005AD4(&qword_1003AD988, &qword_1002D79F0);
  sub_1000078E8(v42, qword_1003D2B48);
  v65 = v41;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1003A9240 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000078E8(v43, qword_1003D27D0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    swift_beginAccess();
    v47 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    *(v46 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v44, v45, "Snapshot identifiers count: %ld", v46, 0xCu);
  }

  v48 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_dataSource);
  if (v48)
  {
    swift_beginAccess();
    v49 = v48;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  swift_beginAccess();
  v50 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  if (v50 <= 0)
  {
    v51 = v59;
    sub_1000E78D0(v50);
    *(&v63 + 1) = v3;
    v64 = &protocol witness table for UIContentUnavailableConfiguration;
    v52 = sub_100050D60(&v62);
    (*(v4 + 32))(v52, v51, v3);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
  }

  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v60 + 8))(v8, v6);
}

id sub_100104BF0(id *a1, uint64_t a2)
{
  v3 = *a1;
  result = [*a1 objects];
  if (result)
  {
    v18 = a2;
    v5 = result;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      v9 = _swiftEmptyArrayStorage;
      do
      {
        sub_10000A37C(v8, &v20);
        sub_10005128C(&v20, &v19);
        type metadata accessor for PersistedTranslation();
        if (swift_dynamicCast())
        {
          v10 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_10028CD24(0, *(v9 + 2) + 1, 1, v9);
          }

          v12 = *(v9 + 2);
          v11 = *(v9 + 3);
          if (v12 >= v11 >> 1)
          {
            v9 = sub_10028CD24((v11 > 1), v12 + 1, 1, v9);
          }

          *(v9 + 2) = v12 + 1;
          *&v9[8 * v12 + 32] = v10;
        }

        v8 += 32;
        --v7;
      }

      while (v7);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    v13 = [v3 name];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_100005AD4(&qword_1003B0980, &unk_1002DDA60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002D3160;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = v9;
    swift_bridgeObjectRetain_n();

    sub_100005AD4(&qword_1003B0728, &unk_1002DD770);
    NSDiffableDataSourceSnapshot.appendSections(_:)(v17);

    if (*(v9 + 2) >= 4uLL)
    {
      sub_100105B58(v9, (v9 + 32), 0, 7uLL);
    }

    *&v20 = v14;
    *(&v20 + 1) = v16;
    v21 = v9;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  return result;
}

id sub_100104E94(uint64_t a1)
{
  type metadata accessor for PersistedTranslation();
  v2 = static PersistedTranslation.favoritedSortedByLocalePairAndCreationDateFetchRequest()();
  v3 = dispatch thunk of TranslationStoreCoreData.viewContext.getter();
  v4 = objc_allocWithZone(NSFetchedResultsController);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithFetchRequest:v2 managedObjectContext:v3 sectionNameKeyPath:v5 cacheName:0];

  [v6 setDelegate:a1];
  v16 = 0;
  if ([v6 performFetch:&v16])
  {
    v7 = v16;
  }

  else
  {
    v8 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9240 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D27D0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to do initial fetch of favorites results: %@", v12, 0xCu);
      sub_100009EBC(v13, &unk_1003AECA0, &unk_1002D3F10);
    }

    else
    {
    }
  }

  return v6;
}

void *sub_100105148(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    v7 = v5;
    sub_1000FD6C0(v6);
  }

  sub_1000FDB0C(v4);
  return v5;
}

id sub_1001051B8(uint64_t a1)
{
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D5560;
  *(inited + 32) = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_translationSession);
  *(inited + 40) = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27FavoritesCardListController_conversationSession);
  v29 = _swiftEmptyArrayStorage;

  sub_1000C4B4C(0, 2, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      __break(1u);
LABEL_21:
      sub_1000C4B4C((v7 > 1), inited, 1);
      v5 = v29;
      goto LABEL_11;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v27;
  v9 = v28;
  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  if (v11 >= v10 >> 1)
  {
    sub_1000C4B4C((v10 > 1), v11 + 1, 1);
    v5 = v29;
  }

  v5[2] = v11 + 1;
  v12 = &v5[2 * v11];
  v12[4] = v8;
  v12[5] = v9;
  if (v6)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v27;
  v2 = v28;
  v6 = v5[2];
  v7 = v5[3];
  inited = v6 + 1;
  if (v6 >= v7 >> 1)
  {
    goto LABEL_21;
  }

LABEL_11:
  v5[2] = inited;
  v13 = &v5[2 * v6];
  v13[4] = v1;
  v13[5] = v2;
  type metadata accessor for PersistedTranslation();
  v14 = static PersistedTranslation.sortedByCreationDateFetchRequest(sessionIDs:)();

  v15 = v14;
  v16 = dispatch thunk of TranslationStoreCoreData.viewContext.getter();
  v17 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v15 managedObjectContext:v16 sectionNameKeyPath:0 cacheName:0];

  [v17 setDelegate:a1];
  v27 = 0;
  if ([v17 performFetch:&v27])
  {
    v18 = v27;
  }

  else
  {
    v19 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9240 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D27D0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed initial fetch of recents: %@", v23, 0xCu);
      sub_100009EBC(v24, &unk_1003AECA0, &unk_1002D3F10);
    }

    else
    {
    }
  }

  return v17;
}

void sub_10010564C(uint64_t a1)
{
  v1 = sub_100105128();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 fetchRequest];
    type metadata accessor for PersistedTranslation();
    v4 = static PersistedTranslation.sortedByCreationDateFetchRequest(sessionIDs:)();
    v5 = [v4 predicate];

    [v3 setPredicate:v5];
    v18 = 0;
    if ([v2 performFetch:&v18])
    {
      v6 = v18;
    }

    else
    {
      v7 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9240 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000078E8(v8, qword_1003D27D0);

      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v11 = 136446466;
        v14 = Array.description.getter();
        v16 = sub_10028D78C(v14, v15, &v18);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2112;
        v17 = _convertErrorToNSError(_:)();
        *(v11 + 14) = v17;
        *v12 = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to update recent query for session IDs %{public}s: %@", v11, 0x16u);
        sub_100009EBC(v12, &unk_1003AECA0, &unk_1002D3F10);

        sub_100008664(v13);
      }

      else
      {
      }
    }
  }
}

id sub_100105924(void *a1)
{
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_subscriptions] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoriteTranslationsTip] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController_favoriteTranslationsTipUpdates] = 0;
  v3 = &v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoritesResultsController] = 1;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___recentsResultsController] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FavoritesListController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_100105A0C()
{

  sub_10001ABE4(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___invalidateFavoriteTranslationsTip + 8));
  sub_1000FD6C0(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___favoritesResultsController));
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator23FavoritesListController____lazy_storage___recentsResultsController);

  sub_1000FD6C0(v1);
}

id sub_100105A80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FavoritesListController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100105B58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100005AD4(&unk_1003B0710, &qword_1002DB840);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_100105C30()
{
  result = qword_1003B0968;
  if (!qword_1003B0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0968);
  }

  return result;
}

uint64_t sub_100105C84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100105CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100005AD4(&qword_1003B07A0, &unk_1002DD780) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1001037E4(a1, a2, a3, v8);
}

uint64_t sub_100105D6C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100105DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005AD4(&qword_1003B0798, &unk_1002DDA70);
  sub_10000A2CC(0, &qword_1003BC460, UICollectionViewListCell_ptr);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_100105E88()
{

  if (*(v0 + 32) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100105EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100105F54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100105F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_100101EA0(a1, v4, v5, v6);
}

uint64_t sub_100106064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10010612C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FavoritesSideBarListView(uint64_t a1)
{
  result = qword_1003B0A68;
  if (!qword_1003B0A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100106224(uint64_t a1)
{
  sub_100106354(319, &qword_1003B0A78, sub_100106308, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100106354(319, &qword_1003B0A88, &type metadata accessor for PersistedTranslation, &type metadata accessor for FetchRequest);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100106308()
{
  result = qword_1003B0A80;
  if (!qword_1003B0A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B0A80);
  }

  return result;
}

void sub_100106354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1001063D4()
{
  v0 = sub_100005AD4(&qword_1003B0B30, &qword_1002DDC90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  type metadata accessor for FavoritesSideBarListView(0);
  sub_100005AD4(&qword_1003B0A08, &unk_1002DDB80);
  FetchRequest.wrappedValue.getter();
  sub_10001BAEC(&qword_1003B0B38, &qword_1003B0B30, &qword_1002DDC90, &protocol conformance descriptor for FetchedResults<A>);
  v4 = dispatch thunk of Collection.count.getter();
  if (!v4)
  {
    (*(v1 + 8))(v3, v0);
    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v20 = &_swiftEmptySetSingleton;
    v18 = sub_10025EA7C(v6);

    return v18;
  }

  v5 = v4;
  v21 = _swiftEmptyArrayStorage;
  sub_1000C4B4C(0, v4 & ~(v4 >> 63), 0);
  v6 = v21;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v19 = v1;
    do
    {
      v8 = dispatch thunk of Collection.subscript.read();
      v10 = *v9;
      v8(&v20, 0);
      v11 = [v10 displayLocalePairText];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v21 = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C4B4C((v15 > 1), v16 + 1, 1);
        v6 = v21;
      }

      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
    (*(v19 + 8))(v3, v0);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100106698()
{
  v0 = sub_100005AD4(&qword_1003AF510, &qword_1002DBC70);
  __chkstk_darwin(v0);
  LocalizedStringKey.init(stringLiteral:)();
  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4 & 1;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v1, v3, v5);

  sub_100005AD4(&qword_1003B0AB8, &qword_1002DDC08);
  sub_1000CAB98();
  sub_10001BAEC(&qword_1003B0AC0, &qword_1003B0AB8, &qword_1002DDC08, &protocol conformance descriptor for TupleView<A>);
  return Section<>.init(header:content:)();
}

uint64_t sub_100106870@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v1 = sub_100005AD4(&qword_1003B0AC8, &qword_1002DDC10);
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = __chkstk_darwin(v1);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v34 = &v25 - v4;
  v5 = sub_100005AD4(&qword_1003B0AD0, &qword_1002DDC18);
  v28 = *(v5 - 8);
  v6 = v28;
  v29 = v5;
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v35 = xmmword_1002D3320;
  sub_100005AD4(&qword_1003B0AD8, &qword_1002DDC20);
  sub_100107188();
  sub_10000C564();
  v27 = v11;
  NavigationLink<>.init<A>(value:label:)();
  *&v35 = sub_1001063D4();
  swift_getKeyPath();
  sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
  sub_100005AD4(&qword_1003B0B08, &qword_1002DDC78);
  sub_10001BAEC(&qword_1003B0B10, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for [A]);
  sub_10001BAEC(&qword_1003B0B18, &qword_1003B0B08, &qword_1002DDC78, &protocol conformance descriptor for NavigationLink<A, B>);
  v12 = v34;
  ForEach<>.init(_:id:content:)();
  v13 = *(v6 + 16);
  v26 = v9;
  v14 = v29;
  v13(v9, v11, v29);
  v16 = v30;
  v15 = v31;
  v17 = *(v31 + 16);
  v18 = v12;
  v19 = v32;
  v17(v30, v18, v32);
  v20 = v33;
  v13(v33, v9, v14);
  v21 = sub_100005AD4(&qword_1003B0B20, &qword_1002DDC80);
  v17(&v20[*(v21 + 48)], v16, v19);
  v22 = *(v15 + 8);
  v22(v34, v19);
  v23 = *(v28 + 8);
  v23(v27, v14);
  v22(v16, v19);
  return (v23)(v26, v14);
}

uint64_t sub_100106C5C()
{
  v0 = sub_100005AD4(&qword_1003B0B40, &qword_1002DDC98);
  __chkstk_darwin(v0);
  v2 = &v11 - v1;
  v3 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = sub_100005AD4(&qword_1003B0AF0, &unk_1002DDC28);
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  (*(v4 + 16))(v2, v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_100005AD4(&qword_1003B0B00, &qword_1002DDC38);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  sub_1001072CC();
  _ConditionalContent<>.init(storage:)();
  (*(v4 + 8))(v6, v3);
  sub_100107214();
  View.accessibilityIdentifier(_:)();
  return sub_1001073B4(v9);
}

uint64_t sub_100106EF0(uint64_t *a1)
{

  sub_100005AD4(&qword_1003B0B00, &qword_1002DDC38);
  sub_1001072CC();
  sub_10000C564();
  return NavigationLink<>.init<A>(value:label:)();
}

uint64_t sub_100106F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B0B28, &qword_1002DDC88);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  v7 = sub_100005AD4(&qword_1003A93D8, &unk_1002D3FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  v12[0] = a1;
  v12[1] = a2;
  sub_10001F278();

  Label<>.init<A>(_:systemImage:)();
  (*(v8 + 16))(v6, v10, v7);
  swift_storeEnumTagMultiPayload();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
  _ConditionalContent<>.init(storage:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100107188()
{
  result = qword_1003B0AE0;
  if (!qword_1003B0AE0)
  {
    sub_100005EA8(&qword_1003B0AD8, &qword_1002DDC20);
    sub_100107214();
    sub_10001BBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0AE0);
  }

  return result;
}

unint64_t sub_100107214()
{
  result = qword_1003B0AE8;
  if (!qword_1003B0AE8)
  {
    sub_100005EA8(&qword_1003B0AF0, &unk_1002DDC28);
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
    sub_1001072CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0AE8);
  }

  return result;
}

unint64_t sub_1001072CC()
{
  result = qword_1003B0AF8;
  if (!qword_1003B0AF8)
  {
    sub_100005EA8(&qword_1003B0B00, &qword_1002DDC38);
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8, &unk_1002D3FC0, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0AF8);
  }

  return result;
}

uint64_t sub_10010737C@<X0>(uint64_t *a2@<X8>)
{
  result = String.hashValue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001073B4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B0AF0, &unk_1002DDC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100107420()
{
  result = qword_1003B0B48;
  if (!qword_1003B0B48)
  {
    sub_100005EA8(&qword_1003B0B50, &unk_1002DDCA0);
    sub_1000CAB98();
    sub_10001BAEC(&qword_1003B0AC0, &qword_1003B0AB8, &qword_1002DDC08, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0B48);
  }

  return result;
}

uint64_t sub_1001074F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1001075C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FavoritesView(uint64_t a1)
{
  result = qword_1003B0BB0;
  if (!qword_1003B0BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001076C4(uint64_t a1)
{
  type metadata accessor for TranslationStoreCoreData();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TranslationSession_RD(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTSManager(319);
      if (v3 <= 0x3F)
      {
        sub_10005C414(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100107794@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FavoritesView(0);
  sub_10001F620(v1 + *(v10 + 32), v9, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10008E200(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

id sub_10010796C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v5 = __chkstk_darwin(v59);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v57 = &v50[-v8];
  v9 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v10 = __chkstk_darwin(v9 - 8);
  v56 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v50[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v50[-v16];
  v18 = __chkstk_darwin(v15);
  v54 = &v50[-v19];
  v20 = __chkstk_darwin(v18);
  v22 = &v50[-v21];
  __chkstk_darwin(v20);
  v24 = &v50[-v23];
  v60[3] = &type metadata for TranslateFeatures;
  v60[4] = sub_100009DF8();
  LOBYTE(v60[0]) = 10;
  v25 = isFeatureEnabled(_:)();
  sub_100008664(v60);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v27 = result;
    deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

    if ((deviceSupportsPersonalTranslator & 1) == 0)
    {
      if (!_LTIsInternalInstall())
      {
        goto LABEL_13;
      }

      v34 = [objc_opt_self() standardUserDefaults];
      v35 = String._bridgeToObjectiveC()();
      LODWORD(v55) = [v34 BOOLForKey:v35];

      if (!v55)
      {
        goto LABEL_13;
      }
    }

    v55 = v17;
    v52 = v1;
    sub_100107794(v24);
    (*(v3 + 104))(v22, enum case for UserInterfaceSizeClass.compact(_:), v2);
    (*(v3 + 56))(v22, 0, 1, v2);
    v29 = *(v59 + 48);
    v30 = v57;
    sub_10001F620(v24, v57, &qword_1003AC848, &qword_1002D66A0);
    sub_10001F620(v22, &v30[v29], &qword_1003AC848, &qword_1002D66A0);
    v31 = *(v3 + 48);
    if (v31(v30, 1, v2) == 1)
    {
      sub_100009EBC(v22, &qword_1003AC848, &qword_1002D66A0);
      v32 = v57;
      sub_100009EBC(v24, &qword_1003AC848, &qword_1002D66A0);
      if (v31(&v32[v29], 1, v2) == 1)
      {
        v33 = v32;
LABEL_16:
        sub_100009EBC(v33, &qword_1003AC848, &qword_1002D66A0);
LABEL_24:
        v40 = &enum case for NavigationBarItem.TitleDisplayMode.inline(_:);
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    sub_10001F620(v30, v54, &qword_1003AC848, &qword_1002D66A0);
    if (v31(&v30[v29], 1, v2) == 1)
    {
      sub_100009EBC(v22, &qword_1003AC848, &qword_1002D66A0);
      v32 = v57;
      sub_100009EBC(v24, &qword_1003AC848, &qword_1002D66A0);
      (*(v3 + 8))(v54, v2);
LABEL_12:
      sub_100009EBC(v32, &qword_1003AC998, &qword_1002D6950);
      v17 = v55;
      goto LABEL_13;
    }

    v45 = &v30[v29];
    v46 = v53;
    (*(v3 + 32))(v53, v45, v2);
    sub_1000FEC08();
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47 = *(v3 + 8);
    v47(v46, v2);
    sub_100009EBC(v22, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v24, &qword_1003AC848, &qword_1002D66A0);
    v47(v54, v2);
    sub_100009EBC(v57, &qword_1003AC848, &qword_1002D66A0);
    v17 = v55;
    if (v51)
    {
      goto LABEL_24;
    }

LABEL_13:
    sub_100107794(v17);
    (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.regular(_:), v2);
    (*(v3 + 56))(v14, 0, 1, v2);
    v36 = *(v59 + 48);
    sub_10001F620(v17, v7, &qword_1003AC848, &qword_1002D66A0);
    sub_10001F620(v14, &v7[v36], &qword_1003AC848, &qword_1002D66A0);
    v37 = v17;
    v38 = *(v3 + 48);
    if (v38(v7, 1, v2) == 1)
    {
      sub_100009EBC(v14, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v37, &qword_1003AC848, &qword_1002D66A0);
      if (v38(&v7[v36], 1, v2) == 1)
      {
        v33 = v7;
        goto LABEL_16;
      }
    }

    else
    {
      v55 = v37;
      v39 = v56;
      sub_10001F620(v7, v56, &qword_1003AC848, &qword_1002D66A0);
      if (v38(&v7[v36], 1, v2) != 1)
      {
        v41 = &v7[v36];
        v42 = v53;
        (*(v3 + 32))(v53, v41, v2);
        sub_1000FEC08();
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v3 + 8);
        v44(v42, v2);
        sub_100009EBC(v14, &qword_1003AC848, &qword_1002D66A0);
        sub_100009EBC(v55, &qword_1003AC848, &qword_1002D66A0);
        v44(v39, v2);
        sub_100009EBC(v7, &qword_1003AC848, &qword_1002D66A0);
        if (v43)
        {
          goto LABEL_24;
        }

LABEL_20:
        v40 = &enum case for NavigationBarItem.TitleDisplayMode.automatic(_:);
LABEL_25:
        v48 = *v40;
        v49 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
        return (*(*(v49 - 8) + 104))(v58, v48, v49);
      }

      sub_100009EBC(v14, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v55, &qword_1003AC848, &qword_1002D66A0);
      (*(v3 + 8))(v39, v2);
    }

    sub_100009EBC(v7, &qword_1003AC998, &qword_1002D6950);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001081DC()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005AD4(&qword_1003AC998, &qword_1002D6950);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005AD4(&qword_1003AC848, &qword_1002D66A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100107794(&v22 - v14);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10001F620(v15, v6, &qword_1003AC848, &qword_1002D66A0);
  sub_10001F620(v13, &v6[v16], &qword_1003AC848, &qword_1002D66A0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_10001F620(v6, v10, &qword_1003AC848, &qword_1002D66A0);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_1000FEC08();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
      sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
      v20(v10, v0);
      sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
      return LocalizedStringKey.init(stringLiteral:)();
    }

    sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
    sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100009EBC(v13, &qword_1003AC848, &qword_1002D66A0);
  sub_100009EBC(v15, &qword_1003AC848, &qword_1002D66A0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100009EBC(v6, &qword_1003AC998, &qword_1002D6950);
    return LocalizedStringKey.init(stringLiteral:)();
  }

  sub_100009EBC(v6, &qword_1003AC848, &qword_1002D66A0);
  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_100108614@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B0BF8, &qword_1002DDD18);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];

  v13 = static SafeAreaRegions.container.getter();
  v14 = static Edge.Set.all.getter();
  v25 = v9;
  v26 = v10;
  v27 = v12;
  v28 = v11;
  v29 = v13;
  v30 = v14;
  sub_10010796C(v4);
  v15 = sub_100005AD4(&qword_1003B0C00, &unk_1002DDD20);
  v16 = sub_1001088A4();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v20 + 8))(v4, v21);

  sub_1001081DC();
  v25 = v15;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  View.navigationBarTitle(_:)();

  return (*(v23 + 8))(v8, v17);
}

unint64_t sub_1001088A4()
{
  result = qword_1003B0C08;
  if (!qword_1003B0C08)
  {
    sub_100005EA8(&qword_1003B0C00, &unk_1002DDD20);
    sub_100101098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0C08);
  }

  return result;
}

uint64_t sub_100108930()
{
  sub_100005EA8(&qword_1003B0BF8, &qword_1002DDD18);
  sub_100005EA8(&qword_1003B0C00, &unk_1002DDD20);
  sub_1001088A4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

const char *sub_1001089F8(char a1)
{
  result = "camera_input";
  switch(a1)
  {
    case 1:
      result = "kakapo";
      break;
    case 2:
      result = "refresh_translate_app";
      break;
    case 3:
      result = "refresh_system_translation";
      break;
    case 4:
      result = "refresh_streaming";
      break;
    case 5:
      result = "genderDisambiguation";
      break;
    case 6:
      result = "romanization";
      break;
    case 7:
      result = "staccato";
      break;
    case 8:
      result = "extendedConversation";
      break;
    case 9:
      result = "recordingTonesAndHaptics";
      break;
    case 10:
      result = "personalTranslator";
      break;
    case 11:
      result = "personalTranslatorInSyncTTSRendering";
      break;
    case 12:
      result = "multiRouteAudio";
      break;
    case 13:
      result = "audioConditionsTracking";
      break;
    case 14:
      result = "translationSemanticSegmentation";
      break;
    case 15:
      result = "asset_services_uaf";
      break;
    case 16:
      result = "asset_services_ngasr";
      break;
    case 17:
      result = "asset_services_general_asr";
      break;
    case 18:
      result = "onDeviceFirst";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100108BC0()
{
  result = _UISolariumEnabled();
  byte_1003D26A0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslateFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslateFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100108D44()
{
  result = qword_1003B0C10;
  if (!qword_1003B0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0C10);
  }

  return result;
}

unint64_t sub_100108D9C()
{
  result = qword_1003B0C18;
  if (!qword_1003B0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0C18);
  }

  return result;
}

void sub_100108E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D2920);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting Feedback Campaign call", v14, 2u);
  }

  type metadata accessor for FBKSFeedbackCount();
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = 0xD00000000000001DLL;
  v15[5] = 0x80000001002F4E10;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = v6;
  v15[9] = a1;

  v16 = v6;

  static FBKSFeedbackCount.fetchCountsForForm(identifier:completion:)();

  osloga = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(osloga, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v17, "Ending Feedback Campaign call", v18, 2u);
  }
}

void sub_10010904C(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t countAndFlagsBits, void *a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2920);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = a1;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching feedback counts: %@", v17, 0xCu);
      sub_1000DDF70(v18);
    }

    a3(a1);
  }

  else if (FBKSFeedbackCount.declineCount.getter() <= 0)
  {
    v25 = objc_allocWithZone(type metadata accessor for FBKSForm());

    v26 = FBKSForm.init(identifier:)();
    dispatch thunk of FBKSForm.authenticationMethod.setter();
    v27 = objc_allocWithZone(type metadata accessor for FBKSDraftLauncher());
    v28 = v26;
    v29 = FBKSDraftLauncher.init(feedbackForm:)();
    v30 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
    dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.setter();
    if (!a8)
    {
      v31 = [objc_opt_self() mainBundle];
      v39._object = 0x80000001002F4E50;
      v32._countAndFlagsBits = 0xD00000000000001CLL;
      v32._object = 0x80000001002F4E30;
      v33.value._object = 0x80000001002F0080;
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v33.value._countAndFlagsBits = 0xD000000000000012;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v39);
    }

    dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
    dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = a4;
    v36 = v30;

    dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:completion:)();
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000078E8(v21, qword_1003D2920);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "User previously declined, skipping feedback.", v24, 2u);
    }

    v37 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:13 userInfo:0];
    (a3)();
  }
}

void sub_1001094C0(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = qword_1003A92B0;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D2920);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error collecting feedback: %@", v10, 0xCu);
      sub_1000DDF70(v11);
    }

    v17 = v7;
    a2(a1);
  }

  else
  {
    if (qword_1003A92B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2920);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully collecting feedback.", v16, 2u);
    }

    a2(0);
  }
}

id sub_100109768(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FeedbackManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001097C0()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100109848()
{

  return _swift_deallocObject(v0, 32);
}

id sub_1001098E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlamesView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10010993C(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = [a1 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *a3 = v10;
  a3[1] = v12;
  v13 = [a1 creationDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  }

  v17 = type metadata accessor for GenderTipManager.Registration(0);
  sub_10010A7BC(v8, a3 + v17[5]);
  v18 = dispatch thunk of PersistedTranslation.disambiguableResult.getter();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 hasDisambiguationsOfType:1];
  }

  else
  {
    v20 = 0;
  }

  *(a3 + v17[6]) = v20;
  *(a3 + v17[7]) = a2 & 1;
}

uint64_t sub_100109AF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100109B6C(void *a1)
{
  v3 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v27 - v14;
  v16 = type metadata accessor for GenderTipManager.Registration(0);
  if (*(a1 + *(v16 + 24)) == 1)
  {
    v27[0] = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v28)
    {
      if (v27[1] == *a1 && v28 == a1[1])
      {

        v17 = 1;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v18 = OBJC_IVAR____TtC17SequoiaTranslator16GenderTipManager_mostRecentCreationDate;
      swift_beginAccess();
      sub_100081AB8(v1 + v18, v8);
      v19 = v10[6];
      if (v19(v8, 1, v9) == 1)
      {
        v20 = v8;
      }

      else
      {
        v21 = v8;
        v22 = v10[4];
        v22(v15, v21, v9);
        sub_100081AB8(a1 + *(v27[0] + 20), v6);
        if (v19(v6, 1, v9) != 1)
        {
          v22(v13, v6, v9);
          Date.timeIntervalSince(_:)();
          v24 = v23;
          v25 = v10[1];
          v25(v13, v9);
          v25(v15, v9);
          v17 = v24 > 0.0;
          return v17 & 1;
        }

        (v10[1])(v15, v9);
        v20 = v6;
      }

      sub_10010A82C(v20);
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100109EB0(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v41 - v6;
  v7 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  v8 = __chkstk_darwin(v7 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  result = type metadata accessor for GenderTipManager.Registration(0);
  if (*(a1 + *(result + 24)) == 1)
  {
    v19 = result;
    v20 = *(result + 20);
    sub_100081AB8(a1 + v20, v17);
    v21 = *(v3 + 48);
    v22 = v21(v17, 1, v2);
    v44 = a1;
    v23 = v22;
    result = sub_10010A82C(v17);
    if (v23 != 1 || *(v44 + *(v19 + 28)) == 1)
    {
      sub_100081AB8(v44 + v20, v15);
      v24 = v2;
      if (v21(v15, 1, v2) == 1)
      {
        v25 = v46;
        static Date.now.getter();
        v26 = v3;
        if (v21(v15, 1, v2) != 1)
        {
          sub_10010A82C(v15);
        }
      }

      else
      {
        v26 = v3;
        v25 = v46;
        (*(v3 + 32))(v46, v15, v2);
      }

      v27 = OBJC_IVAR____TtC17SequoiaTranslator16GenderTipManager_mostRecentCreationDate;
      v28 = v45;
      swift_beginAccess();
      sub_100081AB8(v28 + v27, v12);
      if (v21(v12, 1, v2) == 1)
      {
        sub_10010A82C(v12);
        v29 = v43;
        (*(v26 + 16))(v43, v25, v2);
        (*(v26 + 56))(v29, 0, 1, v2);
        swift_beginAccess();
        sub_100081B28(v29, v28 + v27);
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v31 = *v44;
        v30 = v44[1];
        if (v48)
        {
          if (v47 == v31 && v48 == v30)
          {

            return (*(v26 + 8))(v25, v24);
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            return (*(v26 + 8))(v25, v24);
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v47 = v31;
        v48 = v30;

        static Published.subscript.setter();
        return (*(v26 + 8))(v25, v24);
      }

      v32 = v42;
      (*(v26 + 32))(v42, v12, v2);
      Date.timeIntervalSince(_:)();
      if (v33 <= 0.0)
      {
        v37 = *(v26 + 8);
        v37(v32, v2);
        return (v37)(v25, v2);
      }

      v34 = v43;
      (*(v26 + 16))(v43, v25, v2);
      (*(v26 + 56))(v34, 0, 1, v2);
      swift_beginAccess();
      sub_100081B28(v34, v28 + v27);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = *v44;
      v35 = v44[1];
      if (!v48)
      {
        goto LABEL_23;
      }

      if (v47 == v36 && v48 == v35)
      {

        goto LABEL_24;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
LABEL_23:
        swift_getKeyPath();
        swift_getKeyPath();
        v47 = v36;
        v48 = v35;

        static Published.subscript.setter();
      }

LABEL_24:
      v40 = *(v26 + 8);
      v40(v32, v24);
      return (v40)(v46, v24);
    }
  }

  return result;
}

uint64_t sub_10010A4F4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator16GenderTipManager__allowedTranslationID;
  v2 = sub_100005AD4(&qword_1003AABF0, &unk_1002D4910);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10010A82C(v0 + OBJC_IVAR____TtC17SequoiaTranslator16GenderTipManager_mostRecentCreationDate);

  return swift_deallocClassInstance();
}

void sub_10010A5D4(uint64_t a1)
{
  sub_10010A6A0(319);
  if (v1 <= 0x3F)
  {
    sub_10010A704(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010A6A0(uint64_t a1)
{
  if (!qword_1003AEC00)
  {
    sub_100005EA8(&qword_1003AA740, &unk_1002D42F0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1003AEC00);
    }
  }
}

void sub_10010A704(uint64_t a1)
{
  if (!qword_1003AE370)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003AE370);
    }
  }
}

uint64_t sub_10010A75C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GenderTipManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10010A7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010A82C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10010A894@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10010A918(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10010A9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10010AA84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B5130, &unk_1002E4220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10010AB34(uint64_t a1)
{
  sub_10010A704(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10010ABDC()
{
  result = qword_1003B0EB8;
  if (!qword_1003B0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0EB8);
  }

  return result;
}

uint64_t sub_10010AC30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEF676E6972745364;
  v5 = 0x6E696769726FLL;
  if (a1 == 5)
  {
    v5 = 0x657474616D726F66;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0x6E6F43776F4C7369;
  v7 = 0xEF65636E65646966;
  if (a1 != 3)
  {
    v6 = 0xD000000000000018;
    v7 = 0x80000001002EF830;
  }

  if (a1 <= 4u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v5;
    v8 = v4;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001002EF810;
  if (a1 != 1)
  {
    v9 = 0x656C61636F6CLL;
    v10 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v10;
  }

  else
  {
    v9 = 0x6C616E69467369;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0x80000001002EF810;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656C61636F6CLL)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6C616E69467369)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xEF676E6972745364;
      if (v11 != 0x657474616D726F66)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6E696769726FLL)
      {
LABEL_41:
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xEF65636E65646966;
    if (v11 != 0x6E6F43776F4C7369)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0x80000001002EF830;
    if (v11 != 0xD000000000000018)
    {
      goto LABEL_41;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_10010AE80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x657474616D726F66;
    }

    else
    {
      v3 = 0x6E6F43776F4C7369;
    }

    if (v2)
    {
      v4 = 0xEF676E6972745364;
    }

    else
    {
      v4 = 0xEF65636E65646966;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000018;
    v4 = 0x80000001002EF830;
  }

  else if (a1 == 3)
  {
    v3 = 0x654D7365736E6573;
    v4 = 0xEA00000000006174;
  }

  else
  {
    v3 = 0x617A696E616D6F72;
    v4 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657474616D726F66;
    }

    else
    {
      v9 = 0x6E6F43776F4C7369;
    }

    if (a2)
    {
      v8 = 0xEF676E6972745364;
    }

    else
    {
      v8 = 0xEF65636E65646966;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x654D7365736E6573;
    v6 = 0xEA00000000006174;
    if (a2 != 3)
    {
      v5 = 0x617A696E616D6F72;
      v6 = 0xEC0000006E6F6974;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001002EF830;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10010B04C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x614D746567726174;
  v5 = 0xEB00000000686374;
  v6 = 0xE600000000000000;
  v7 = 0x736C6562616CLL;
  if (a1 != 4)
  {
    v7 = 0xD000000000000011;
    v6 = 0x80000001002EF8A0;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6974696E69666564;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x614D656372756F73;
    v9 = 0xEB00000000686374;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x444965736E6573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x444965736E6573)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x6974696E69666564)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x656372756F73;
LABEL_29:
    v12 = 0xEB00000000686374;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x614D000000000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x746567726174;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x736C6562616CLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0x80000001002EF8A0;
    if (v10 != 0xD000000000000011)
    {
LABEL_34:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_10010B238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x6F4C746567726174;
  if (a1 == 2)
  {
    v3 = 0x6F4C656372756F73;
  }

  v4 = 0xD000000000000012;
  v5 = 0x80000001002EF940;
  if (a1)
  {
    v4 = 0x697461636F766E69;
    v5 = 0xEC00000064496E6FLL;
  }

  if (a1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (v2 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC000000656C6163;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0x6F4C656372756F73;
    }

    else
    {
      v10 = 0x6F4C746567726174;
    }

    v9 = 0xEC000000656C6163;
    if (v6 != v10)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0x697461636F766E69;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (a2)
    {
      v9 = 0xEC00000064496E6FLL;
    }

    else
    {
      v9 = 0x80000001002EF940;
    }

    if (v6 != v8)
    {
      goto LABEL_26;
    }
  }

  if (v7 != v9)
  {
LABEL_26:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_27;
  }

  v11 = 1;
LABEL_27:

  return v11 & 1;
}

uint64_t sub_10010B3A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00676E696E6574;
  v3 = 0xD000000000000017;
  v4 = 0x73694C7472617473;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x7473694C706F7473;
    }

    else
    {
      v6 = 0x73694C7472617473;
    }

    if (v5)
    {
      v7 = 0xED0000676E696E65;
    }

    else
    {
      v7 = 0xEE00676E696E6574;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x80000001002EF9D0;
    v6 = 0xD000000000000020;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (v5 == 3)
    {
      v7 = 0x80000001002EFA00;
    }

    else
    {
      v7 = 0x80000001002EFA20;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x7473694C706F7473;
    v8 = 0xED0000676E696E65;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x80000001002EF9D0;
    v4 = 0xD000000000000020;
    v8 = 0x80000001002EFA20;
    if (a2 == 3)
    {
      v3 = 0xD00000000000001FLL;
      v8 = 0x80000001002EFA00;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10010B530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6F4C746567726174;
  v5 = 0xEE004449656C6163;
  v6 = 0x656D757274736E69;
  v7 = 0xEF6E6F697461746ELL;
  if (a1 != 4)
  {
    v6 = 0x7375636F66;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6554746567726174;
  v9 = 0xEA00000000007478;
  if (a1 != 1)
  {
    v8 = 0x6F4C656372756F73;
    v9 = 0xEE004449656C6163;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1954047348;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1954047348)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA00000000007478;
      if (v10 != 0x6554746567726174)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x656372756F73;
LABEL_29:
    v12 = 0xEE004449656C6163;
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x746567726174;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEF6E6F697461746ELL;
    if (v10 != 0x656D757274736E69)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7375636F66)
    {
LABEL_34:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_10010B73C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6465766965636572;
    }

    else
    {
      v4 = 0x70615472657375;
    }

    if (v2)
    {
      v3 = 0xED0000726F727245;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6465766965636572;
    v3 = 0xED00006C616E6946;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7465736572;
  }

  else
  {
    v4 = 0x69647541706F7473;
    v3 = 0xE90000000000006FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6465766965636572;
    }

    else
    {
      v9 = 0x70615472657375;
    }

    if (a2)
    {
      v8 = 0xED0000726F727245;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7465736572;
    if (a2 != 3)
    {
      v6 = 0x69647541706F7473;
      v5 = 0xE90000000000006FLL;
    }

    if (a2 == 2)
    {
      v7 = 0x6465766965636572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xED00006C616E6946;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10010B8F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7465736E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x61737265766E6F63;
    }

    else
    {
      v4 = 0x73616364616F7262;
    }

    if (v3 == 2)
    {
      v5 = 0xEC0000006E6F6974;
    }

    else
    {
      v5 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7469617274726F70;
    }

    else
    {
      v4 = 0x7465736E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x61737265766E6F63;
  v8 = 0xEC0000006E6F6974;
  if (a2 != 2)
  {
    v7 = 0x73616364616F7262;
    v8 = 0xE900000000000074;
  }

  if (a2)
  {
    v2 = 0x7469617274726F70;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10010BA50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x74786554646E6966;
    }

    else
    {
      v3 = 0x6E776F44776F6C73;
    }

    v4 = 0xE800000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001002EF750;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001002EF770;
    }

    else
    {
      v4 = 0x80000001002EF790;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x74786554646E6966;
    }

    else
    {
      v9 = 0x6E776F44776F6C73;
    }

    v8 = 0xE800000000000000;
    if (v3 != v9)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xD000000000000018;
    v6 = 0x80000001002EF790;
    if (a2 == 3)
    {
      v6 = 0x80000001002EF770;
    }

    else
    {
      v5 = 0xD000000000000017;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001002EF750;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v8)
  {
LABEL_32:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

uint64_t sub_10010BBD4(unsigned __int8 a1)
{
  v1 = 0x6E776F44776F6C73;
  v2 = 0xD000000000000013;
  v3 = 0x80000001002EF750;
  v4 = 0x80000001002EF770;
  v5 = 0xD000000000000018;
  if (a1 != 3)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000001002EF790;
  }

  if (a1 != 2)
  {
    v2 = v5;
    v3 = v4;
  }

  if (a1)
  {
    v1 = 0x74786554646E6966;
  }

  if (a1 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v2;
  }

  if (a1 <= 1u)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = v3;
  }

  v8 = [objc_opt_self() mainBundle];
  v13._object = 0xE000000000000000;
  v9._countAndFlagsBits = v6;
  v9._object = v7;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v13)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10010BD08(unsigned __int8 a1)
{
  v2 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v2;
}

Swift::Int sub_10010BE34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10010BF1C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10010BFF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10010C0D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010EAF0(*a1);
  *a2 = result;
  return result;
}

void sub_10010C104(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E776F44776F6C73;
  v5 = 0xD000000000000013;
  v6 = 0x80000001002EF750;
  v7 = 0x80000001002EF770;
  v8 = 0xD000000000000018;
  if (v2 != 3)
  {
    v8 = 0xD000000000000017;
    v7 = 0x80000001002EF790;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x74786554646E6966;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10010C238()
{
  type metadata accessor for GuidanceModel(0);
  v0 = swift_allocObject();
  result = sub_10010DAB8();
  qword_1003D26A8 = v0;
  return result;
}

uint64_t sub_10010C278()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10010C2EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_10022BA7C(v5, v7);

  if ((v8 & 1) == 0)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2758);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136446210;
      v34 = v5;
      v14 = String.init<A>(describing:)();
      v16 = sub_10028D78C(v14, v15, &v28);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Adding guidance: %{public}s", v12, 0xCu);
      sub_100008664(v13);
    }

    swift_beginAccess();
    sub_10021A75C(&v34, v5);
    swift_endAccess();
  }

  v17 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer);
  if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer))
  {
    return;
  }

  v18 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer);
  if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer))
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28 == 5)
  {
    if (a2)
    {
      v19 = 3.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    swift_weakInit();
    v32 = sub_10010EB7C;
    v33 = v21;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000CF44C;
    v31 = &unk_100384C48;
    v22 = _Block_copy(&v28);

    v23 = [v20 scheduledTimerWithTimeInterval:0 repeats:v22 block:v19];
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28 == 5)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (sub_10010BA50(v28, v5))
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28 > 2u)
  {
    if (v28 == 3)
    {
      v26 = 8;
      goto LABEL_27;
    }

    if (v28 == 4)
    {
      v26 = 0;
      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (v28)
  {
    if (v28 == 1)
    {
      v26 = 5;
    }

    else
    {
      v26 = 10;
    }
  }

  else
  {
    v26 = 1;
  }

LABEL_27:
  if (v26 < qword_1002DE200[v5])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v28) = v5;

    static Published.subscript.setter();
    v27 = objc_opt_self();
    v32 = sub_10010EB9C;
    v33 = v3;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1000CF44C;
    v31 = &unk_100384C70;
    v22 = _Block_copy(&v28);

    v23 = [v27 scheduledTimerWithTimeInterval:0 repeats:v22 block:2.0];
    v18 = v17;
LABEL_14:
    v24 = v23;
    _Block_release(v22);
    v25 = *v18;
    *v18 = v24;
  }
}

void sub_10010C828(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances;
      v5 = Strong;
      swift_beginAccess();
      v6 = *(v5 + v4);

      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = sub_1002BF8B0(*(v6 + 16), 0);
        v31 = sub_1001F3C98(aBlock, v8 + 32, v7, v6);
        v9 = aBlock[0];

        sub_10000C1D0(v9);
        if (v31 != v7)
        {
          __break(1u);

          __break(1u);
          return;
        }
      }

      else
      {

        v8 = _swiftEmptyArrayStorage;
      }

      aBlock[0] = v8;
      sub_10010DCD8(aBlock);
      v11 = *(aBlock[0] + 2);
      if (v11)
      {
        v10 = aBlock[0][v11 + 31];
      }

      else
      {
        v10 = 5;
      }
    }

    else
    {
      v10 = 5;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = v10;
    static Published.subscript.setter();
  }

  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D2758);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17 = v33[0];
    }

    else
    {
      v17 = 5;
    }

    LOBYTE(v33[0]) = v17;
    sub_100005AD4(&unk_1003B0F30, &qword_1002DE020);
    v18 = String.init<A>(describing:)();
    v20 = sub_10028D78C(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Current guidance set: %{public}s", v15, 0xCu);
    sub_100008664(v16);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(aBlock[0]) != 5)
    {
      swift_beginAccess();
      v21 = swift_weakLoadStrong();
      if (v21)
      {
        v22 = v21;
        swift_beginAccess();
        v23 = swift_weakLoadStrong();
        if (v23)
        {
          v24 = v23;
          v25 = objc_opt_self();
          aBlock[4] = sub_10010EBBC;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000CF44C;
          aBlock[3] = &unk_100384CC0;
          v26 = _Block_copy(aBlock);

          v27 = [v25 scheduledTimerWithTimeInterval:0 repeats:v26 block:2.0];
          _Block_release(v26);
        }

        else
        {
          v27 = 0;
        }

        v28 = *(v22 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer);
        *(v22 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer) = v27;
      }
    }
  }

  [a1 invalidate];
  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer);
    *(v29 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer) = 0;
  }
}

uint64_t sub_10010CDA4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances;
  swift_beginAccess();
  v5 = *(v1 + v4);

  v6 = sub_10022BA7C(v3, v5);

  if (v6)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2758);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446210;
      v13 = String.init<A>(describing:)();
      v15 = sub_10028D78C(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Dropping guidance: %{public}s", v11, 0xCu);
      sub_100008664(v12);
    }

    swift_beginAccess();
    sub_10010E5BC(v3);
    result = swift_endAccess();
  }

  if (!*(v2 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer) && !*(v2 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer))
  {
    v16 = *(v2 + v4);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = sub_1002BF8B0(*(v16 + 16), 0);
      v19 = sub_1001F3C98(&v23, v18 + 32, v17, v16);
      v20 = v23;
      swift_bridgeObjectRetain_n();
      sub_10000C1D0(v20);
      if (v19 != v17)
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v23 = v18;
    sub_10010DCD8(&v23);
    v21 = *(v23 + 2);
    if (v21)
    {
      v22 = v23[v21 + 31];
    }

    else
    {
      v22 = 5;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v23) = v22;

    return static Published.subscript.setter();
  }

  return result;
}

void sub_10010D0A0()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  v5 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances;
  swift_beginAccess();
  *(v0 + v5) = &_swiftEmptySetSingleton;

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2758);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Resetting all guidance", v9, 2u);
  }
}

void sub_10010D238(void *a1, uint64_t a2)
{
  [a1 invalidate];
  v3 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer;
  v4 = *(a2 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer);
  *(a2 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer) = 0;

  v5 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances;
  swift_beginAccess();
  v6 = *(a2 + v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_5:
    aBlock[0] = v8;
    sub_10010DCD8(aBlock);
    v11 = *(aBlock[0] + 2);
    if (v11)
    {
      LODWORD(v8) = aBlock[0][v11 + 31];
    }

    else
    {
      LODWORD(v8) = 5;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(aBlock[0]) == 5)
    {
      if (v8 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v8 == 5 || (sub_10010BA50(aBlock[0], v8) & 1) == 0)
    {
LABEL_17:
      if (qword_1003A9218 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Dwell timer fired, but guidance hasn't changed", v15, 2u);
    }

    goto LABEL_22;
  }

  v27 = v3;
  v8 = sub_1002BF8B0(v7, 0);
  v9 = sub_1001F3C98(aBlock, v8 + 32, v7, v6);
  v10 = aBlock[0];
  v3 = v29;
  swift_bridgeObjectRetain_n();
  sub_10000C1D0(v10);
  if (v9 == v7)
  {

    v3 = v27;
    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_18:
  v16 = type metadata accessor for Logger();
  sub_1000078E8(v16, qword_1003D2758);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    sub_100005AD4(&unk_1003B0F30, &qword_1002DE020);
    v21 = String.init<A>(describing:)();
    v23 = sub_10028D78C(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Dwell timer fired and guidance should change; displaying new guidance: %{public}s", v19, 0xCu);
    sub_100008664(v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = v8;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(aBlock[0]) != 5)
  {
    v24 = objc_opt_self();
    v30 = sub_10010EBBC;
    v31 = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF44C;
    v29 = &unk_100384C98;
    v25 = _Block_copy(aBlock);

    v26 = [v24 scheduledTimerWithTimeInterval:0 repeats:v25 block:2.0];
    _Block_release(v25);
    v13 = *(a2 + v3);
    *(a2 + v3) = v26;
LABEL_22:
  }
}

uint64_t sub_10010D730()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel__current;
  v4 = sub_100005AD4(&qword_1003B1080, &qword_1002DE1A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidanceModel(uint64_t a1)
{
  result = qword_1003B0F18;
  if (!qword_1003B0F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010D89C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10010D990(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010D990(uint64_t a1)
{
  if (!qword_1003B0F28)
  {
    sub_100005EA8(&unk_1003B0F30, &qword_1002DE020);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B0F28);
    }
  }
}

unint64_t sub_10010DA08()
{
  result = qword_1003B1078;
  if (!qword_1003B1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B1078);
  }

  return result;
}

unint64_t sub_10010DA60()
{
  result = qword_1003AFF90;
  if (!qword_1003AFF90)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AFF90);
  }

  return result;
}

uint64_t sub_10010DAB8()
{
  v1 = sub_100005AD4(&qword_1003B1080, &qword_1002DE1A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delaySeconds) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellSeconds) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_guidances) = &_swiftEmptySetSingleton;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel__current;
  v7[15] = 5;
  sub_100005AD4(&unk_1003B0F30, &qword_1002DE020);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_dwellTimer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_delayTimer) = 0;
  return v0;
}

uint64_t sub_10010DC1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GuidanceModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10010DC5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17SequoiaTranslator13GuidanceModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

char *sub_10010DCD8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002C11F4(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = qword_1002DE200[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= qword_1002DE200[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_10010DE28(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10010DE28(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1002C08D4(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10010E3A4((*a3 + *v78), (*a3 + *v80), (*a3 + v81), v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = qword_1002DE200[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = qword_1002DE200[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (qword_1002DE200[v14] >= qword_1002DE200[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10028C748(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_10028C748((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_10010E3A4((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), (*a3 + v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002C08D4(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_1002C0848(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = qword_1002DE200[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= qword_1002DE200[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_10010E3A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (qword_1002DE200[v18] < qword_1002DE200[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (qword_1002DE200[*v6] >= qword_1002DE200[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10010E5BC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v24 = v4 + 56;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 5;
  }

  v25 = v4;
  v22 = v1;
  v23 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v25 + 48) + v7);
    if (v9 <= 1)
    {
      v10 = 0x6E776F44776F6C73;
      if (*(*(v25 + 48) + v7))
      {
        v11 = 0x74786554646E6966;
      }

      else
      {
        v11 = 0x6E776F44776F6C73;
      }

      v12 = 0xE800000000000000;
    }

    else
    {
      v10 = 0x6E776F44776F6C73;
      if (v9 == 2)
      {
        v11 = 0xD000000000000013;
        v12 = 0x80000001002EF750;
      }

      else
      {
        if (v9 == 3)
        {
          v11 = 0xD000000000000018;
        }

        else
        {
          v11 = 0xD000000000000017;
        }

        if (v9 == 3)
        {
          v12 = 0x80000001002EF770;
        }

        else
        {
          v12 = 0x80000001002EF790;
        }
      }
    }

    v13 = 0xD000000000000018;
    if (v8 == 3)
    {
      v14 = 0x80000001002EF770;
    }

    else
    {
      v13 = 0xD000000000000017;
      v14 = 0x80000001002EF790;
    }

    if (v8 == 2)
    {
      v13 = 0xD000000000000013;
      v14 = 0x80000001002EF750;
    }

    if (v8)
    {
      v10 = 0x74786554646E6966;
    }

    v15 = v8 <= 1 ? v10 : v13;
    v16 = v8 <= 1 ? 0xE800000000000000 : v14;
    if (v11 == v15 && v12 == v16)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_35;
    }

    v7 = (v7 + 1) & v23;
    if (((*(v24 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 5;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v2;
  v26 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10021C19C();
    v20 = v26;
  }

  v18 = *(*(v20 + 48) + v7);
  sub_10010E890(v7);
  *v22 = v26;
  return v18;
}

unint64_t sub_10010E890(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10010EAF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D770, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10010EB44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010EB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010EBC4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode;

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v0[v16];
      v9 = [v0 traitCollection];
      [v9 userInterfaceStyle];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = [v6 layer];
      if (v8 == 1)
      {
        v11 = String._bridgeToObjectiveC()();
      }

      else
      {
        v11 = 0;
      }

      [v10 setCompositingFilter:v11];

      swift_unknownObjectRelease();
      v12 = [v6 superview];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 layer];

        [v14 setAllowsGroupBlending:v8 ^ 1u];
      }

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_10010EE08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    HighlightTextView.updateHighlightsForNewTextLayoutIfNeeded()();
  }
}

char *sub_10010EE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode;

      if (!i)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = v4[v19];
        v13 = [v4 traitCollection];
        [v13 userInterfaceStyle];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = [v10 layer];
        if (v12 == 1)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        [v14 setCompositingFilter:v15];

        swift_unknownObjectRelease();
        v16 = [v10 superview];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 layer];

          [v18 setAllowsGroupBlending:v12 ^ 1u];
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return result;
}

id TranslateCalloutDisabledTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

Swift::Void __swiftcall HighlightTextView.setHighlights(toRange:)(__C::_NSRange_optional toRange)
{
  is_nil = toRange.is_nil;
  length = toRange.value.length;
  location = toRange.value.location;
  HighlightTextView.removeHighlights()();
  if (!is_nil && length >= 1)
  {
    v5.location = location;
    v5.length = length;
    v6 = HighlightTextView.convertToTextRange(_:)(v5);
    if (v6)
    {
      v7 = v6;
      HighlightTextView.addHighlight(to:)(v6);
      v8 = [v1 textInRange:v7];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {

        v10 = 0;
        v12 = 0;
      }

      v26 = &v1[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord];
      *v26 = v10;
      v26[1] = v12;
    }

    else
    {
      if (qword_1003A9290 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000078E8(v13, qword_1003D28C0);
      v27 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136446466;
        v30.location = location;
        v30.length = length;
        v18 = NSStringFromRange(v30);
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_10028D78C(v19, v21, &v28);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2050;
        v23 = [v27 text];
        if (v23)
        {
          v24 = v23;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = String.count.getter();

          *(v16 + 14) = v25;

          _os_log_impl(&_mh_execute_header, v14, v15, "Unable to find valid text range for NSRange %{public}s in text view of length %{public}ld, not highlighting any range", v16, 0x16u);
          sub_100008664(v17);
        }

        else
        {

          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

Swift::Void __swiftcall HighlightTextView.setHighlightToFirstWord()()
{
  v23 = 0;
  sub_100005AD4(&qword_1003B10E0, &qword_1002DE268);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002D3160;
  *(v1 + 32) = NSLinguisticTagSchemeTokenType;
  v2 = objc_allocWithZone(NSLinguisticTagger);
  type metadata accessor for NSLinguisticTagScheme(0);
  v3 = NSLinguisticTagSchemeTokenType;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithTagSchemes:isa options:0];

  v6 = [v0 text];
  [v5 setString:v6];

  v7 = [v0 text];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.UTF16View.count.getter();

  v10 = swift_allocObject();
  *(v10 + 16) = &v23;
  *(v10 + 24) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100110DC4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100110E30;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011055C;
  aBlock[3] = &unk_100384D38;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  [v5 enumerateTagsInRange:0 unit:v9 scheme:0 options:v3 usingBlock:{6, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v23;

  if (v15)
  {
    HighlightTextView.removeHighlights()();
    HighlightTextView.addHighlight(to:)(v15);
    v16 = [v13 textInRange:v15];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {

      v18 = 0;
      v20 = 0;
    }

    v21 = &v13[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord];
    *v21 = v18;
    v21[1] = v20;
  }
}

id HighlightTextView.setHighlightToWord(at:)(CGFloat a1, CGFloat a2)
{
  HighlightTextView.removeHighlights()();
  result = sub_10010F888(a1, a2);
  if (result)
  {
    v6 = result;
    HighlightTextView.addHighlight(to:)(result);
    v7 = [v2 textInRange:v6];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {

      v9 = 0;
      v11 = 0;
    }

    v12 = &v2[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord];
    *v12 = v9;
    v12[1] = v11;
  }

  return result;
}

id sub_10010F888(CGFloat a1, CGFloat a2)
{
  v5 = [v2 closestPositionToPoint:?];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_msgSend(v2 "tokenizer")];
  swift_unknownObjectRelease();
  if (!v7 || ([v2 firstRectForRange:v7], v10.x = a1, v10.y = a2, v8 = CGRectContainsPoint(v11, v10), v6, v6 = v7, !v8))
  {

    return 0;
  }

  return v7;
}

void HighlightTextView.addHighlight(to:)(void *a1)
{
  v2 = v1;
  [v1 firstRectForRange:a1];
  v4 = 0.0;
  v46 = CGRectInset(v45, -4.0, 0.0);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v9 = [v1 superview];
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (v9)
  {
    v13 = v9;
    [v9 convertRect:v2 fromCoordinateSpace:{x, y, width, height}];
    v4 = v14;
    v10 = v15;
    v11 = v16;
    v12 = v17;
  }

  v18 = [objc_allocWithZone(UIView) initWithFrame:{v4, v10, v11, v12}];
  v19 = [v18 layer];
  [v19 setCornerRadius:5.0];

  v20 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor];
  if (v20)
  {
    v21 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor];
  }

  else
  {
    sub_10005CEB0();
    v21 = static UIColor.dictionaryHighlightColor.getter();
    v20 = 0;
  }

  v22 = v20;
  [v18 setBackgroundColor:v21];

  v23 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode;
  v24 = v2[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode];
  v25 = [v2 superview];
  v26 = v25;
  v27 = &selRef_insertSubview_aboveSubview_;
  if (!v24)
  {
    v27 = &selRef_insertSubview_belowSubview_;
  }

  [v25 *v27];

  if (v2[v23] == 1)
  {
    HighlightTextView.setBlendMode(_:on:)(1, v18);
  }

  v28 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
  swift_beginAccess();
  v29 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v30 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges;
  swift_beginAccess();
  v31 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView);
    *(Strong + OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryTextView) = v2;
    v35 = v2;

    v36 = &v33[OBJC_IVAR____TtC17SequoiaTranslator25TranslationListController_dictionaryHighlightRect];
    *v36 = v4;
    v36[1] = v10;
    v36[2] = v11;
    v36[3] = v12;
    *(v36 + 32) = 0;
    v37 = [v33 presentedViewController];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 popoverPresentationController];

      if (v39)
      {
        [v39 setSourceView:v35];
      }
    }

    v40 = [v33 presentedViewController];
    v41 = [v40 popoverPresentationController];

    [v41 setSourceRect:{v4, v10, v11, v12}];
    v42 = [v33 presentedViewController];
    if (v42 && (v43 = v42, v44 = [v42 popoverPresentationController], v43, v44))
    {
      [v44 setPermittedArrowDirections:3];

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall HighlightTextView.removeHighlights()()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *(v0 + v1) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges;
  swift_beginAccess();
  *(v0 + v8) = _swiftEmptyArrayStorage;

  v9 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord);
  *v9 = 0;
  v9[1] = 0;
}

void HighlightTextView.setBlendMode(_:on:)(char a1, void *a2)
{
  v3 = v2;
  v6 = [v3 traitCollection];
  [v6 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = [a2 layer];
  if (a1)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setCompositingFilter:v8];

  swift_unknownObjectRelease();
  v9 = [a2 superview];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 layer];

    [v11 setAllowsGroupBlending:(a1 & 1) == 0];
  }
}

uint64_t HighlightTextView.updateHighlightsForNewTextLayoutIfNeeded()()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = sub_1002A6528();
    result = swift_unknownObjectRelease();
    if (v3)
    {
      v4 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges;
      swift_beginAccess();
      v5 = *(v1 + v4);
      if (v5 >> 62)
      {
        goto LABEL_17;
      }

      for (result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
      {
        v6 = *(v1 + v4);

        v4 = v1;
        HighlightTextView.removeHighlights()();
        if (v6 >> 62)
        {
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (!v7)
          {
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v7)
          {
          }
        }

        for (i = 0; ; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * i + 32);
          }

          v10 = v9;
          v11 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v4 = v1;
          HighlightTextView.addHighlight(to:)(v9);

          if (v11 == v7)
          {
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }
    }
  }

  return result;
}

void HighlightTextView.currentHightlightFrame()(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    goto LABEL_16;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v6 = *(v4 + 32);
  }

  v7 = v6;
  [v6 frame];
  x = v8;
  y = v10;
  width = v12;
  height = v14;

  v16 = v5 - 1;
  if (v5 != 1)
  {
    v17 = 5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v4 + 8 * v17);
      }

      v19 = v18;
      [v18 frame];
      v38.origin.x = v20;
      v38.origin.y = v21;
      v38.size.width = v22;
      v38.size.height = v23;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectUnion(v36, v38);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;

      ++v17;
      --v16;
    }

    while (v16);
  }

LABEL_16:
  v24 = [v1 superview];
  v25 = v24;
  if (!v24)
  {
    v30 = 0uLL;
    v31 = 0uLL;
    goto LABEL_20;
  }

  if (v5)
  {
    [v24 convertRect:v1 toCoordinateSpace:{x, y, width, height}];
    v33 = v26;
    v34 = v27;
    v32 = v28;
    v35 = v29;

    *&v31 = v32;
    *&v30 = v33;
    *(&v30 + 1) = v34;
    *(&v31 + 1) = v35;
LABEL_20:
    *a1 = v30;
    *(a1 + 16) = v31;
    *(a1 + 32) = v25 == 0;
    return;
  }

LABEL_22:
  __break(1u);
}

id HighlightTextView.getWordAtPoint(_:)(CGFloat a1, CGFloat a2)
{
  result = [v2 closestPositionToPoint:?];
  if (result)
  {
    v6 = result;
    v7 = [objc_msgSend(v2 "tokenizer")];
    swift_unknownObjectRelease();
    if (v7)
    {
      [v2 firstRectForRange:v7];
      v12.x = a1;
      v12.y = a2;
      v8 = CGRectContainsPoint(v13, v12);

      if (v8)
      {
        v9 = [v2 textInRange:v7];
        if (v9)
        {
          v10 = v9;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v11;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_10011055C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v9(a2, a3, a4, a5);
}

UITextRange_optional __swiftcall HighlightTextView.convertToTextRange(_:)(__C::_NSRange a1)
{
  length = a1.length;
  location = a1.location;
  v4 = [v1 beginningOfDocument];
  v5 = [v1 positionFromPosition:v4 offset:location];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v1 positionFromPosition:v5 offset:length];
  if (!v7)
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v1 textRangeFromPosition:v6 toPosition:v7];

  v11 = v9;
LABEL_6:
  result.value.super.isa = v11;
  result.is_nil = v10;
  return result;
}

void sub_1001106B8()
{
  sub_100012FF4(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor);
}

id HighlightTextView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HighlightTextView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001107E0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor;
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor);
  *(v2 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor) = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v7 + 8 * j + 32);
      }

      v14 = v13;
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = *(v2 + v3);
      if (v11)
      {
        v10 = *(v2 + v3);
      }

      else
      {
        sub_10005CEB0();
        v10 = static UIColor.dictionaryHighlightColor.getter();
        v11 = 0;
      }

      v12 = v11;
      [v14 setBackgroundColor:v10];

      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

id sub_100110940(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges] = _swiftEmptyArrayStorage;
  v11 = &v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord];
  *v11 = 0;
  v11[1] = 0;
  *&v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor] = 0;
  v5[OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode] = 0;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for HighlightTextView();
  v12 = objc_msgSendSuper2(&v27, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [v14 textLayoutManager];
  if (v16)
  {
    v17 = _UITextViewportLayoutControllerDidLayoutNotification;
    v18 = [objc_opt_self() defaultCenter];
    v19 = [v16 textViewportLayoutController];
    v20 = [objc_opt_self() mainQueue];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26[4] = sub_100110EB0;
    v26[5] = v21;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_100213518;
    v26[3] = &unk_100384D88;
    v22 = _Block_copy(v26);

    v23 = [v18 addObserverForName:v17 object:v19 queue:v20 usingBlock:v22];
    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  sub_100005AD4(&qword_1003AFCD0, &unk_1002DC350);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002D3160;
  *(v24 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v24 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005AD4(&qword_1003AFCD8, &unk_1002DC360);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v14;
}

void _s17SequoiaTranslator17HighlightTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlights) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightRanges) = _swiftEmptyArrayStorage;
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightedWord);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightColor) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator17HighlightTextView_highlightAddsBlendMode) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100110D8C()
{

  return _swift_deallocObject(v0, 32);
}

void sub_100110DC4(int a1, __C::_NSRange a2)
{
  v3 = *(v2 + 16);
  if (!*v3)
  {
    v4 = HighlightTextView.convertToTextRange(_:)(a2);
    v5 = *v3;
    *v3 = v4;
  }
}

uint64_t sub_100110E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100110E70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_10011106C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t))
{
  v12.receiver = a1;
  v12.super_class = a7(a1, a6);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001110F8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_10011118C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001111E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&unk_1003B1290, &unk_1002D40A0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100112C10(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001113D0()
{
  v0 = sub_100005AD4(&qword_1003B12A8, &qword_1002DE3D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for PHPickerConfiguration();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() sharedPhotoLibrary];
  PHPickerConfiguration.init(photoLibrary:)();
  PHPickerConfiguration.selectionLimit.setter();
  sub_100005AD4(&qword_1003B12B0, &qword_1002DE3E0);
  v11 = type metadata accessor for PHPickerFilter();
  v12 = *(v11 - 8);
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  static PHPickerFilter.images.getter();
  static PHPickerFilter.any(of:)();

  (*(v12 + 56))(v2, 0, 1, v11);
  PHPickerConfiguration.filter.setter();
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000078E8(v13, qword_1003D2758);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting image picker to the user", v16, 2u);
  }

  sub_10000A2CC(0, &qword_1003B12B8, PHPickerViewController_ptr);
  (*(v4 + 16))(v7, v9, v3);
  v17 = PHPickerViewController.init(configuration:)();
  sub_100005AD4(&qword_1003B12C0, &qword_1002DE3E8);
  UIViewControllerRepresentableContext.coordinator.getter();
  sub_100112D9C(&qword_1003B12C8, type metadata accessor for ImagePicker.Coordinator, &unk_1002DE3A0);
  PHPickerViewController.delegate.setter();
  (*(v4 + 8))(v9, v3);
  return v17;
}

uint64_t sub_10011178C()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2758);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dismissing photo picker", v7, 2u);
  }

  sub_1001111E8(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

void sub_100111928(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2758);
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v45, v18, "Representation failed to load with error: %@", v19, 0xCu);
      sub_1000DDF70(v20);

      goto LABEL_11;
    }
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000078E8(v22, qword_1003D2758);
      v45 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v23))
      {
        goto LABEL_12;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v45, v23, "No image data provided, with no accompanying error.", v24, 2u);
LABEL_11:

LABEL_12:
      v25 = v45;

      return;
    }

    v44 = v9;
    v45 = v14;
    v26 = objc_allocWithZone(UIImage);
    sub_100112C80(a1, a2);
    sub_100112C80(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [v26 initWithData:isa];

    sub_100112CD4(a1, a2);
    if (v28)
    {
      sub_10000A2CC(0, &qword_1003A9C40, OS_dispatch_queue_ptr);
      v43 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = a4;
      *(v29 + 24) = v28;
      aBlock[4] = sub_100112D7C;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100096948;
      aBlock[3] = &unk_100384E00;
      v30 = _Block_copy(aBlock);
      v31 = a4;
      v32 = v28;
      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_100112D9C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
      sub_100011604();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v33 = v43;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);

      sub_100112CD4(a1, a2);
      (*(v44 + 8))(v11, v8);
      (*(v13 + 8))(v16, v45);
    }

    else
    {
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000078E8(v34, qword_1003D2758);
      sub_100112C80(a1, a2);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      sub_100112CD4(a1, a2);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock[0] = v38;
        *v37 = 136315138;
        sub_100112C80(a1, a2);
        v39 = Data.description.getter();
        v41 = v40;
        sub_100112CD4(a1, a2);
        v42 = sub_10028D78C(v39, v41, aBlock);

        *(v37 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unable to coerce data into an instance of UIImage (using UIImage(data:%s)", v37, 0xCu);
        sub_100008664(v38);

        sub_100112CD4(a1, a2);
      }

      else
      {

        sub_100112CD4(a1, a2);
      }
    }
  }
}

void sub_100112028(uint64_t a1, void *a2)
{
  type metadata accessor for ImagePicker(0);
  v3 = a2;
  sub_100005AD4(&qword_1003B12A0, &qword_1002DE3D0);
  Binding.wrappedValue.setter();
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2758);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully picked image, dismissing photo picker", v7, 2u);
  }
}

id sub_1001121A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImagePicker.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100112210(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
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

uint64_t sub_1001122D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AA3F0, &unk_1002D3FE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001123B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003AA3F0, &unk_1002D3FE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10011247C(uint64_t a1)
{
  sub_10001C05C(319);
  if (v1 <= 0x3F)
  {
    sub_100112500(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100112500(uint64_t a1)
{
  if (!qword_1003B1250[0])
  {
    sub_100005EA8(&qword_1003ADCD8, &qword_1002DE2D0);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, qword_1003B1250);
    }
  }
}

uint64_t sub_100112584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100112DE4(v2, v5);
  v6 = type metadata accessor for ImagePicker.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_100112DE4(v5, v7 + OBJC_IVAR____TtCV17SequoiaTranslator11ImagePicker11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_100112E48(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_100112648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100112D9C(&unk_1003B12D0, type metadata accessor for ImagePicker, &unk_1002DE328);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001126DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100112D9C(&unk_1003B12D0, type metadata accessor for ImagePicker, &unk_1002DE328);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100112770(uint64_t a1)
{
  sub_100112D9C(&unk_1003B12D0, type metadata accessor for ImagePicker, &unk_1002DE328);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100112810(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    type metadata accessor for PHPickerResult();
    v8 = PHPickerResult.itemProvider.getter();
    static UTType.image.getter();
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v10 = *(v5 + 8);
    v10(v7, v4);
    v11 = [v8 registeredContentTypesConformingToContentType:isa];

    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(v12 + 16);

    if (v13)
    {
      static UTType.image.getter();
      *(swift_allocObject() + 16) = v2;
      v14 = v2;
      v15 = NSItemProvider.loadDataRepresentation(for:completionHandler:)();

      v10(v7, v4);
    }

    else
    {
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D2758);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to load image; item provider has no images", v23, 2u);
      }
    }
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2758);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = 0;

      _os_log_impl(&_mh_execute_header, v17, v18, "Can't load itemProvider from %ld results; the user likely cancelled the picker", v19, 0xCu);
    }

    else
    {
    }
  }

  return sub_10011178C();
}

uint64_t sub_100112BD0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100112C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003B1290, &unk_1002D40A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100112C80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100112CD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100112CE8(a1, a2);
  }

  return a1;
}

uint64_t sub_100112CE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100112D3C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100112D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100112D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100112DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100112E48(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100112EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B12E0, &qword_1002DE408);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100113018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B12E0, &qword_1002DE408);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005AD4(&qword_1003B2300, &unk_1002D95B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ImageTranslationView(uint64_t a1)
{
  result = qword_1003B1340;
  if (!qword_1003B1340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001131A0(uint64_t a1)
{
  sub_1000A9B3C(319, &qword_1003AC878, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100113360(319);
    if (v2 <= 0x3F)
    {
      sub_10011351C(319, &qword_1003B1360, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        sub_1000A9B3C(319, &qword_1003AE538, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_1001133F4(319);
          if (v5 <= 0x3F)
          {
            sub_10005C478(319);
            if (v6 <= 0x3F)
            {
              sub_10005C414(319);
              if (v7 <= 0x3F)
              {
                sub_100113488(319);
                if (v8 <= 0x3F)
                {
                  sub_10011351C(319, &qword_1003B1380, type metadata accessor for SELFLoggingInvocationWrapper);
                  if (v9 <= 0x3F)
                  {
                    sub_100113570(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100113360(uint64_t a1)
{
  if (!qword_1003B1350)
  {
    type metadata accessor for GuidanceModel(255);
    sub_100121CCC(&qword_1003B1358, type metadata accessor for GuidanceModel, &unk_1002DE128);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B1350);
    }
  }
}

void sub_1001133F4(uint64_t a1)
{
  if (!qword_1003B2370)
  {
    type metadata accessor for ConversationManager(255);
    sub_100121CCC(&qword_1003B1368, type metadata accessor for ConversationManager, &unk_1002DA0B4);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B2370);
    }
  }
}

void sub_100113488(uint64_t a1)
{
  if (!qword_1003B1370)
  {
    type metadata accessor for CameraConfiguration(255);
    sub_100121CCC(&qword_1003B1378, type metadata accessor for CameraConfiguration, &unk_1002D4D8C);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B1370);
    }
  }
}

void sub_10011351C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100113570(uint64_t a1)
{
  if (!qword_1003B1388)
  {
    type metadata accessor for VisualTranslationObservable();
    sub_100121CCC(&unk_1003B1390, &type metadata accessor for VisualTranslationObservable, &protocol conformance descriptor for VisualTranslationErrorViewModel);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B1388);
    }
  }
}

uint64_t sub_100113620@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ImageTranslationView(0);
  sub_10001F620(v1 + *(v10 + 64), v9, &qword_1003B23E0, &qword_1002D6770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100023BD4(v9, a1, &qword_1003AC848, &qword_1002D66A0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100113834(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageTranslationView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_100026AA0();
  v12 = static OS_dispatch_queue.main.getter();
  sub_10011C7A0(v1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_10011FFFC(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ImageTranslationView);
  *(v14 + v13 + v11) = a1 & 1;
  aBlock[4] = sub_10011FC3C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_100385098;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100121CCC(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50, &unk_1002D61C0);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50, &unk_1002D61C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_100113BC4(uint64_t a1, char a2)
{
  if (*(a1 + *(type metadata accessor for ImageTranslationView(0) + 60)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConversationContext(0);
    sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

BOOL sub_100113CB0()
{
  type metadata accessor for ImageTranslationView(0);
  type metadata accessor for ConversationContext(0);
  sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_100005AD4(&qword_1003B12A0, &qword_1002DE3D0);
  Binding.wrappedValue.getter();

  sub_10011C8FC(v3, v4);
  if (v2 != 255)
  {
    sub_10011C8FC(v1, v2);
  }

  return v2 != 255;
}

uint64_t sub_100113DFC@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100113E84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10011C910(v2, v3);
  return static Published.subscript.setter();
}

uint64_t sub_100113F14@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ImageTranslationView(0) + 56));
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    static Published.subscript.getter();

    v5 = enum case for LanguageOption.locale(_:);
    v6 = type metadata accessor for LanguageOption();
    v7 = *(*(v6 - 8) + 104);

    return v7(a2, v5, v6);
  }

  else
  {
    type metadata accessor for ConversationManager(0);
    sub_100121CCC(&qword_1003B1368, type metadata accessor for ConversationManager, &unk_1002DA0B4);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100114054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = *(a4 + *(type metadata accessor for ImageTranslationView(0) + 56));
  if (v15)
  {
    v16 = v15;
    LanguageOption.locale.getter();
    v17 = *(v9 + 48);
    if (v17(v7, 1, v8) == 1)
    {
      Locale.init(identifier:)();
      if (v17(v7, 1, v8) != 1)
      {
        sub_100009EBC(v7, &qword_1003AFCE0, &qword_1002D5B00);
      }
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v9 + 16))(v12, v14, v8);
    v18 = v16;
    static Published.subscript.setter();
    sub_10009786C();

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    type metadata accessor for ConversationManager(0);
    sub_100121CCC(&qword_1003B1368, type metadata accessor for ConversationManager, &unk_1002DA0B4);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100114344(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_10011438C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for ImageTranslationView(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v38 = v5;
  v39 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005AD4(&qword_1003B1408, &qword_1002DE4E8);
  __chkstk_darwin(v35);
  v7 = (v33 - v6);
  v8 = sub_100005AD4(&qword_1003B1410, &qword_1002DE4F0);
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  *v7 = static Alignment.center.getter();
  v7[1] = v11;
  v12 = sub_100005AD4(&qword_1003B1418, &qword_1002DE4F8);
  sub_100114928(v1, v7 + *(v12 + 44));
  sub_100005AD4(&qword_1003B1420, &qword_1002DE500);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  static UTType.jpeg.getter();
  v13 = (v1 + *(v4 + 68));
  v14 = *v13;
  v15 = v13[1];
  v16 = type metadata accessor for ConversationContext(0);
  sub_100121CCC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  v33[1] = v15;
  v33[0] = v16;
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v34 = v48;
  v17 = v49;
  v18 = v50;
  v19 = *(v2 + 80);
  v36 = v2;
  v20 = *(v2 + 88);
  v46 = v19;
  v47 = v20;
  sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
  State.projectedValue.getter();
  v21 = v43;
  v22 = v44;
  LOBYTE(v2) = v45;
  v50 = &type metadata for ImageDropDelegate;
  v51 = sub_10011C748();
  v23 = swift_allocObject();
  *&v48 = v23;
  *(v23 + 16) = v34;
  *(v23 + 32) = v17;
  *(v23 + 40) = v18;
  *(v23 + 48) = v21;
  *(v23 + 56) = v22;
  *(v23 + 64) = v2;
  v24 = v35;
  v25 = sub_10001BAEC(&qword_1003B1430, &qword_1003B1408, &qword_1002DE4E8, &protocol conformance descriptor for ZStack<A>);
  View.onDrop(of:delegate:)();

  sub_100009EBC(v7, &qword_1003B1408, &qword_1002DE4E8);
  sub_100008664(&v48);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v26 = v48;
    v27 = BYTE8(v48);
    v43 = v48;
    LOBYTE(v44) = BYTE8(v48);
    v28 = v39;
    sub_10011C7A0(v36, v39);
    v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v30 = swift_allocObject();
    sub_10011FFFC(v28, v30 + v29, type metadata accessor for ImageTranslationView);
    sub_100005AD4(&qword_1003ADCD8, &qword_1002DE2D0);
    *&v48 = v24;
    *(&v48 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    sub_10011C824();
    v31 = v41;
    View.onChange<A>(of:initial:_:)();

    sub_10011C8FC(v26, v27);
    return (*(v40 + 8))(v10, v31);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}