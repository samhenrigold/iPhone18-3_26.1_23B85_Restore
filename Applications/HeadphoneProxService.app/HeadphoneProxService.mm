void sub_100003230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [objc_opt_class() _populateAllFields:*(a1 + 40) accessoryInfo:v4];

  if (v5 && ([*(a1 + 32) accessoryAttached], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (dword_10011C1F0 <= 30 && (dword_10011C1F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF3E0();
    }

    v7 = [*(a1 + 32) accessoryAttached];
    (v7)[2](v7, v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000CF3FC();
  }
}

void sub_100003484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [objc_opt_class() _populateAllFields:*(a1 + 40) accessoryInfo:v4];

  if (v5 && ([*(a1 + 32) accessoryAttached], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (dword_10011C1F0 <= 30 && (dword_10011C1F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF484();
    }

    v7 = [*(a1 + 32) accessoryAttached];
    (v7)[2](v7, v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000CF3FC();
  }
}

id sub_100004060(uint64_t a1)
{
  if (qword_1001201D8 != -1)
  {
    sub_1000CF6E4();
  }

  v2 = qword_1001201D0;

  return v2;
}

void sub_1000040A4(id a1)
{
  v1 = os_log_create("com.apple.HeadphoneProxService", "Headphone");
  v2 = qword_1001201D0;
  qword_1001201D0 = v1;

  _objc_release_x1(v1, v2);
}

Class sub_100004CE0()
{
  if (qword_1001201E8 != -1)
  {
    sub_1000CF7E8();
  }

  result = objc_getClass("AFPreferences");
  qword_1001201E0 = result;
  off_10011C330 = sub_100004D34;
  return result;
}

Class sub_100004D6C()
{
  if (qword_100120200 != -1)
  {
    sub_1000CF7FC();
  }

  result = objc_getClass("VTPreferences");
  qword_1001201F8 = result;
  off_10011C338 = sub_100004DC0;
  return result;
}

Class sub_100004DF8()
{
  if (qword_100120218 != -1)
  {
    sub_1000CF810();
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  qword_100120210 = result;
  off_10011C340 = sub_100004E4C;
  return result;
}

Class sub_100004E84()
{
  if (qword_100120218 != -1)
  {
    sub_1000CF810();
  }

  result = objc_getClass("UNMutableNotificationSystemSettings");
  qword_100120228 = result;
  off_10011C348 = sub_100004ED8;
  return result;
}

Class sub_100004EE4()
{
  if (qword_100120238 != -1)
  {
    sub_1000CF824();
  }

  result = objc_getClass("TUUserConfiguration");
  qword_100120230 = result;
  off_10011C350 = sub_100004F38;
  return result;
}

Class sub_100005070()
{
  if (qword_100120250 != -1)
  {
    sub_1000CF838();
  }

  result = objc_getClass("HPSSpatialProfileManager");
  qword_100120248 = result;
  off_10011C418 = sub_1000050C4;
  return result;
}

__CFString *sub_100005624()
{
  v0 = +[UTType _typeOfCurrentDevice];
  v1 = [v0 identifier];

  v6 = 0;
  v2 = [ISSymbol symbolForTypeIdentifier:v1 error:&v6];
  v3 = v2;
  if (v6)
  {
    v4 = @"iphone";
  }

  else
  {
    v4 = [v2 name];
  }

  return v4;
}

void sub_100005BC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v2[2] = 0;

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v4 = [_LTLanguageStatus alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005CD4;
  v8[3] = &unk_100102840;
  objc_copyWeak(&v9, &location);
  v8[4] = *(a1 + 32);
  v5 = [v4 initWithTaskHint:10 useDedicatedMachPort:0 observations:v8];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100005CB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100005CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100005E50;
  v9[4] = sub_100005E60;
  v10 = objc_alloc_init(NSMutableArray);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005E68;
  v7[3] = &unk_1001027F0;
  objc_copyWeak(&v8, (a1 + 40));
  v7[4] = v9;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000060A4;
  v6[3] = &unk_100102818;
  v6[4] = v4;
  v6[5] = v9;
  dispatch_async(v5, v6);
  objc_destroyWeak(&v8);
  _Block_object_dispose(v9, 8);
}

void sub_100005E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  objc_destroyWeak((v20 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005E68(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v17 locale];
  v5 = [v4 localeIdentifier];
  v6 = [NSLocale lt_localeWithLTIdentifier:v5];

  v7 = +[NSLocale currentLocale];
  v8 = [v6 lt_displayNameForContext:0 inTargetLocale:v7];

  v9 = [v17 locale];
  v10 = [v9 localeIdentifier];
  v11 = [WeakRetained _isLanguageSuggested:v10];

  v12 = [v17 status];
  if (v12 >= 3)
  {
    if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF918(v17);
    }

    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0x10302u >> (8 * v12);
  }

  v14 = [ProxCardTranslationAssetInfo alloc];
  v15 = [v17 locale];
  v16 = [(ProxCardTranslationAssetInfo *)v14 initWithLocale:v15 displayName:v8 assetStatus:v13 isSuggested:v11];

  if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF95C(v16);
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v16];
  if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CFA50();
  }
}

void sub_100006174(id a1, ProxCardTranslationAssetInfo *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = v4;
  if (dword_10011C550 <= 30)
  {
    v6 = v4;
    if (dword_10011C550 != -1 || (v4 = _LogCategory_Initialize(), v5 = v6, v4))
    {
      sub_1000CFA90(v5);
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

void sub_10000626C()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 1)
  {
    v4 = 0x746867694CLL;
  }

  else
  {
    v4 = 1802658116;
  }

  if (v3 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setAxis:1];
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  _StringGuts.grow(_:)(21);

  v8._countAndFlagsBits = v4;
  v8._object = v5;
  String.append(_:)(v8);
  v9 = sub_100033A5C(72);
  v11 = v10;
  v12 = sub_100033A5C(73);
  v14 = sub_1000077FC(0xD000000000000013, 0x80000001000DB930, v9, v11, v12, v13);

  v49 = v14;
  [v7 addArrangedSubview:v14];
  [v14 setFrame:{0.0, 0.0, 320.0, 90.0}];
  _StringGuts.grow(_:)(27);

  v15._countAndFlagsBits = v4;
  v15._object = v5;
  String.append(_:)(v15);
  v16 = sub_100033A5C(74);
  v18 = v17;
  v19 = sub_100033A5C(75);
  v21 = sub_1000077FC(0xD000000000000019, 0x80000001000DB950, v16, v18, v19, v20);

  [v7 addArrangedSubview:v21];
  _StringGuts.grow(_:)(30);

  v22._countAndFlagsBits = v4;
  v22._object = v5;
  String.append(_:)(v22);

  v23 = sub_100033A5C(76);
  v25 = v24;
  v26 = sub_100033A5C(77);
  v28 = sub_1000077FC(0xD00000000000001CLL, 0x80000001000DB970, v23, v25, v26, v27);

  [v7 addArrangedSubview:v28];
  v29 = [v1 contentView];
  [v29 addSubview:v7];

  v30 = [v1 contentView];
  v31 = [v30 mainContentGuide];

  v32 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000D5240;
  v34 = [v7 topAnchor];
  v35 = [v31 topAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [v7 bottomAnchor];
  v38 = [v31 bottomAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38];

  *(v33 + 40) = v39;
  v40 = [v7 widthAnchor];
  v41 = [v40 constraintEqualToConstant:320.0];

  *(v33 + 48) = v41;
  v42 = [v7 centerYAnchor];
  v43 = [v31 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v33 + 56) = v44;
  v45 = [v7 centerXAnchor];

  v46 = [v31 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v33 + 64) = v47;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

void sub_10000698C()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = String._bridgeToObjectiveC()();
  v16 = sub_1000083C0;
  v17 = v2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10000C034;
  v15 = &unk_100102EC0;
  v4 = _Block_copy(&v12);
  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v3 style:0 handler:v4];

  _Block_release(v4);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();
  v16 = sub_100008408;
  v17 = v7;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10000C034;
  v15 = &unk_100102EE8;
  v9 = _Block_copy(&v12);
  v10 = [v5 actionWithTitle:v8 style:1 handler:v9];

  _Block_release(v9);

  v11 = [v0 addAction:v10];
}

void sub_100006C20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

id sub_100006D44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100006DC4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006DD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006DF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100006EC8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100006F40(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006FC0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100007004()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100007040(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100007094(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

BOOL sub_100007144(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000071B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1000071D8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_100007238(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100007268@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100007294@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1000073A0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000743C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100008350(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000074A8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000074D4(uint64_t a1)
{
  v2 = sub_100007724(&qword_10011C908, type metadata accessor for Key, &unk_1000D5C04);
  v3 = sub_100007724(&qword_10011C9B0, type metadata accessor for Key, &unk_1000D57CC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007590@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000075D8(uint64_t a1)
{
  v2 = sub_100007724(&qword_10011C9A0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000D5BC0);
  v3 = sub_100007724(&qword_10011C9A8, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000D5ADC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000077FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v78._object = a6;
  v78._countAndFlagsBits = a5;
  v77 = a3;
  v79 = type metadata accessor for CharacterSet();
  v7 = *(v79 - 1);
  __chkstk_darwin(v79);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UIView) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 bounds];
  [v10 setBounds:?];
  type metadata accessor for HeadphoneAdaptiveControlsUpsellViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = objc_allocWithZone(BSUICAPackageView);
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 initWithPackageName:v15 inBundle:v14];

  v76 = v14;
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setFrame:{0.0, 6.0, 78.0, 78.0}];
  [v10 addSubview:v17];
  v18 = [objc_allocWithZone(UILabel) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = v77;
  v81 = a4;

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  String.append(_:)(v78);

  static CharacterSet.newlines.getter();
  sub_100008480();
  v20 = StringProtocol.components(separatedBy:)();
  (*(v7 + 8))(v9, v79);
  if (!*(v20 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v79 = v18;
  v21 = *(v20 + 32);
  v22 = objc_opt_self();

  v23 = [v22 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v23;
  v75 = v21;
  v78._countAndFlagsBits = v17;
  v78._object = v10;

  v25 = [v24 fontDescriptor];
  v26 = [v25 fontDescriptorWithSymbolicTraits:2];

  if (v26)
  {
    [v24 pointSize];
    v27 = [v22 fontWithDescriptor:v26 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v74 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v29 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v29;
    *(inited + 40) = v27;
    v30 = NSFontAttributeName;
    v77 = v27;
    sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000851C(inited + 32);
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 rangeOfString:v32];
    v73 = v34;

    v35 = swift_initStackObject();
    *(v35 + 16) = v74;
    *(v35 + 32) = v30;
    *(v35 + 64) = v29;
    *(v35 + 40) = v24;
    v75 = v24;
    sub_1000A3410(v35);
    swift_setDeallocating();
    sub_10000851C(v35 + 32);
    v36 = objc_allocWithZone(NSMutableAttributedString);
    v37 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100007724(&qword_10011C908, type metadata accessor for Key, &unk_1000D5C04);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = [v36 initWithString:v37 attributes:isa];

    v40 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v74 = v39;
    [v39 addAttributes:v40 range:{v33, v73}];

    v41 = v79;
    [v79 setAttributedText:v39];
    [v41 setFrame:{90.0, 6.0, 230.0, 84.0}];
    v42 = [objc_opt_self() labelColor];
    [v41 setTextColor:v42];

    [v41 setNumberOfLines:0];
    [v41 sizeToFit];
    object = v78._object;
    [v78._object addSubview:v41];
    v73 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1000D5260;
    countAndFlagsBits = v78._countAndFlagsBits;
    v46 = [v78._countAndFlagsBits leadingAnchor];
    v47 = [object leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:6.0];

    *(v44 + 32) = v48;
    v49 = [countAndFlagsBits topAnchor];
    v50 = [object topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:6.0];

    *(v44 + 40) = v51;
    v52 = [countAndFlagsBits widthAnchor];
    v53 = [v52 constraintEqualToConstant:78.0];

    *(v44 + 48) = v53;
    v54 = [countAndFlagsBits heightAnchor];
    v55 = [v54 constraintEqualToConstant:78.0];

    *(v44 + 56) = v55;
    v56 = [countAndFlagsBits bottomAnchor];
    v57 = [object bottomAnchor];
    v58 = [v56 constraintLessThanOrEqualToAnchor:v57];

    *(v44 + 64) = v58;
    v59 = [v41 leadingAnchor];
    v60 = [countAndFlagsBits trailingAnchor];

    v61 = [v59 constraintEqualToAnchor:v60 constant:6.0];
    *(v44 + 72) = v61;
    v62 = [v41 topAnchor];
    v63 = [object topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:6.0];

    *(v44 + 80) = v64;
    v65 = [v41 widthAnchor];
    v66 = [v65 constraintEqualToConstant:230.0];

    *(v44 + 88) = v66;
    v67 = [v41 bottomAnchor];

    v68 = [object bottomAnchor];
    v69 = [v67 constraintLessThanOrEqualToAnchor:v68];

    *(v44 + 96) = v69;
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v70];

    return object;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100008350(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100008388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000083F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008438(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008480()
{
  result = qword_10011C8E8;
  if (!qword_10011C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C8E8);
  }

  return result;
}

uint64_t sub_1000084D4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000851C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011C900, &unk_1000D6750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000085D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000085E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for HeadphoneLayoutMetrics.VideoMetric(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneLayoutMetrics.VideoMetric(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeadphoneLayoutMetrics.VideoMetric(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_1000089DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneLayoutMetrics.Mismatch(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeadphoneLayoutMetrics.Mismatch(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_100008A64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100008B78(void *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v5 = v4;
  v97 = a3;
  ObjectType = swift_getObjectType();
  v99 = type metadata accessor for BatteryIconStyle();
  v10 = *(v99 - 1);
  __chkstk_darwin(v99);
  v12 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadphoneBatteryInfo(0);
  v14 = __chkstk_darwin(v13);
  v17 = (v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryType] = 3;
  v18 = &v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
  *v18 = a1;
  v18[1] = a2;
  v102 = _swiftEmptyArrayStorage;
  v19 = *(a4 + 16);
  v96 = a1;
  if (v19)
  {
    v94 = ObjectType;
    v95 = v5;
    v98 = *(v14 + 28);
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v93[1] = a4;
    v21 = a4 + v20;
    v22 = *(v15 + 72);
    v23 = (v10 + 16);
    v24 = a1;
    do
    {
      sub_100009C6C(v21, v17);
      v25 = *v17;
      v26 = *(v17 + 8);
      (*v23)(v12, &v98[v17], v99);
      sub_100009CD0(v17);
      v27 = objc_allocWithZone(type metadata accessor for LabelledBatteryView());
      v28 = sub_10003D578(0, 3, v26, v12, v25);
      [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
      v29 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v21 += v22;
      --v19;
    }

    while (v19);
    v30 = v102;

    ObjectType = v94;
    v5 = v95;
  }

  else
  {
    v31 = a1;

    v30 = _swiftEmptyArrayStorage;
  }

  *&v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryViews] = v30;
  v101.receiver = v5;
  v101.super_class = ObjectType;
  v32 = "initWithFrame:";

  v33 = objc_msgSendSuper2(&v101, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v34 = v30 >> 62;
  if (v30 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (!v35)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_17;
    }
  }

  if (v35 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v35; ++i)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v30 + 8 * i + 32);
    }

    v38 = v37;
    [v33 addSubview:v37];
  }

LABEL_17:
  v39 = v96;
  ObjectType = v97;
  sub_10000A304(v97, v103);
  v99 = v39;
  *&v40 = sub_1000AC67C(v39, ObjectType, 2u, v103).n128_u64[0];
  v41 = v103[0].n128_u64[0];
  [v103[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v40}];
  v12 = v103[0].n128_u64[1];
  [v33 addLayoutGuide:v103[0].n128_u64[1]];
  [v33 addSubview:v41];
  [v33 sendSubviewToBack:v41];
  v32 = sub_1000AC7FC(v33);
  if (v35)
  {
    v35 = v30 & 0xC000000000000001;
    if ((v30 & 0xC000000000000001) == 0)
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_46;
      }

      v42 = *(v30 + 32);
LABEL_21:
      v43 = v42;
      if (v34)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 2)
        {
LABEL_23:
          sub_10000A360(ObjectType);

          v45 = v30 & 0xFFFFFFFFFFFFFF8;
          if (v34)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }

      else
      {
        result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result < 2)
        {
          goto LABEL_23;
        }
      }

      if (v35)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_48;
        }

        v59 = *(v30 + 40);
      }

      v95 = v59;
      v98 = v32;
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5C80;
      v61 = v43;
      v62 = [v61 topAnchor];
      v63 = [v12 bottomAnchor];
      v64 = [v62 constraintEqualToAnchor:v63 constant:20.0];

      *(inited + 32) = v64;
      v65 = [v61 bottomAnchor];
      v66 = [v33 bottomAnchor];
      v67 = [v65 constraintEqualToAnchor:v66];

      *(inited + 40) = v67;
      v68 = [v61 centerXAnchor];
      v96 = v61;

      v69 = [v99 leftAnchor];
      v94 = objc_opt_self();
      v70 = [(__n128 *)v94 mainScreen];
      [v70 bounds];
      v72 = v71;

      v73 = 1.0;
      v74 = 1.0;
      if (v72 < 375.0)
      {
        v74 = 298.0 / v97[19];
      }

      v75 = v97;
      v76 = v97[14];
      v77 = [v68 constraintEqualToAnchor:v69 constant:v74 * v97[13]];

      *(inited + 48) = v77;
      v78 = v95;
      v79 = [v78 topAnchor];
      v80 = [v78 topAnchor];
      v81 = [v79 constraintEqualToAnchor:v80];

      *(inited + 56) = v81;
      v82 = [v78 bottomAnchor];
      v83 = [v33 bottomAnchor];
      v84 = [v82 constraintEqualToAnchor:v83];

      *(inited + 64) = v84;
      v85 = [v78 centerXAnchor];

      v86 = [v99 leftAnchor];
      v87 = [(__n128 *)v94 mainScreen];
      [v87 bounds];
      v89 = v88;

      sub_10000A360(v75);
      if (v89 < 375.0)
      {
        v73 = 298.0 / v75[19];
      }

      v90 = [v85 constraintEqualToAnchor:v86 constant:v76 * v73];

      *(inited + 72) = v90;
      v100 = v98;
      sub_100009D2C(inited);

      goto LABEL_42;
    }

LABEL_44:
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  sub_10000A360(ObjectType);
  v45 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v34)
  {
LABEL_24:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(v45 + 16);
  if (!result)
  {
LABEL_42:
    v91 = objc_opt_self();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v91 activateConstraints:isa];

    sub_10000A3B4(v103);

    return v33;
  }

LABEL_28:
  if ((v30 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(v30 + 32);
LABEL_31:
    v47 = v46;
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1000D5C90;
    v49 = v47;
    v50 = [v49 topAnchor];
    v51 = [v12 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:20.0];

    *(v48 + 32) = v52;
    v53 = [v49 bottomAnchor];
    v54 = [v33 bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    *(v48 + 40) = v55;
    v56 = [v49 centerXAnchor];

    v57 = [v99 centerXAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v48 + 48) = v58;
    v100 = v32;
    sub_100009D2C(v48);

    goto LABEL_42;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_100009690(uint64_t a1)
{
  v26 = type metadata accessor for HeadphoneBatteryInfo(0);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100008438(&qword_10011CA80, &qword_1000D5D00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = (&v26 - v6);
  v7 = sub_100008438(&qword_10011CA88, &qword_1000D5D08);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = (&v26 - v12);
  v14 = 0;
  v15 = *(a1 + 16);
  v29 = a1;
  v30 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryViews;
  v16 = (v5 + 56);
  v17 = (v5 + 48);
  while (1)
  {
    if (v14 == v15)
    {
      v20 = 1;
      v14 = v15;
      goto LABEL_10;
    }

    if (v14 >= v15)
    {
      break;
    }

    if (__OFADD__(v14, 1))
    {
      goto LABEL_21;
    }

    v21 = v27;
    v22 = v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v14;
    v23 = *(v4 + 48);
    *v27 = v14;
    sub_100009C6C(v22, v21 + v23);
    sub_10000A450(v21, v10, &qword_10011CA80, &qword_1000D5D00);
    v20 = 0;
    ++v14;
LABEL_10:
    (*v16)(v10, v20, 1, v4);
    sub_10000A450(v10, v13, &qword_10011CA88, &qword_1000D5D08);
    result = (*v17)(v13, 1, v4);
    if (result == 1)
    {
      return result;
    }

    v24 = *v13;
    sub_10000A4B8(v13 + *(v4 + 48), v3);
    v25 = *(v31 + v30);
    if (v25 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v24 >= result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 >= result)
      {
        goto LABEL_4;
      }
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 < 0)
      {
        goto LABEL_22;
      }

      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v18 = *(v25 + 8 * v24 + 32);
    }

    v19 = v18;
    sub_10003CEB8(*(v3 + 8), v3 + *(v26 + 28), *v3);

LABEL_4:
    result = sub_100009CD0(v3);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000099F8()
{
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_100123040);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Playing movie", v3, 2u);
  }

  swift_getObjectType();
  return dispatch thunk of VideoPlaybackControllable.play()();
}

id sub_100009BA4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView) centerXAnchor];

  return v1;
}

id sub_100009BE8()
{
  v1 = [*v0 leftAnchor];

  return v1;
}

id sub_100009C20()
{
  v1 = [*v0 rightAnchor];

  return v1;
}

uint64_t sub_100009C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009CD0(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100009E1C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100009EBC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100009E1C(uint64_t a1, char a2)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100009EBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000A51C(&qword_10011CA78, &qword_10011CA70, &qword_1000D5CF8);
          for (i = 0; i != v6; ++i)
          {
            sub_100008438(&qword_10011CA70, &qword_1000D5CF8);
            v9 = sub_10000A1FC(v13, i, a3);
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
        sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
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

uint64_t sub_10000A05C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000A51C(&qword_10011CAA0, &qword_10011CA98, &unk_1000D5D10);
          for (i = 0; i != v6; ++i)
          {
            sub_100008438(&qword_10011CA98, &unk_1000D5D10);
            v9 = sub_10000A284(v13, i, a3);
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
        sub_1000084D4(0, &qword_10011CA90, &off_100101348);
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

void (*sub_10000A1FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10000A27C;
  }

  __break(1u);
  return result;
}

void (*sub_10000A284(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_10000A5A8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A408(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A51C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000A5AC()
{
  type metadata accessor for HeadphoneLiveTranslationViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000A6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a1;
  v17[7] = a2;
  sub_100064FAC(0, 0, v14, &unk_1000D5D68, v17);

  v19 = a3(v18);
  static Logger.shared.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "video: IED Setting call back >>>  %{BOOL}d", v22, 8u);
  }

  (*(v9 + 8))(v11, v8);
  return v19 & 1;
}

uint64_t sub_10000A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_10000AA6C, v10, v9);
}

uint64_t sub_10000AA6C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10000AB38;

  return sub_10000AEE0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_10000AB38()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_10000AD54;
  }

  else
  {
    v8 = sub_10000ACD0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000ACD0()
{
  v1 = *(v0 + 16);

  if ((v1(v2) & 1) == 0)
  {
    (*(v0 + 32))();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_10000AD90(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 dismissButton];

  if (v2)
  {
    [v2 setAlpha:1.0];
  }
}

void sub_10000AE30()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_10000AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000AFE0, 0, 0);
}

uint64_t sub_10000AFE0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10000BE10(&qword_10011CAB0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000BE10(&qword_10011CAB8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10000B170;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10000B170()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10000B32C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10000B32C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10000B398()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5D20;
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v81._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001000DBB40;
  v5.value._object = 0x80000001000DBB60;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v81);

  v8 = [v2 mainBundle];
  v82._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x80000001000DBB80;
  v10.value._object = 0x80000001000DBB60;
  v10.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v82);

  type metadata accessor for ConnectVideoLayoutViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 32) = v12;
  *(v13 + 48) = 258;
  *(v13 + 56) = 0;
  *(v13 + 64) = sub_10000A6EC;
  *(v13 + 72) = 0;
  *(v13 + 80) = sub_10000A6F4;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  v1[4] = v13;
  v14 = [v2 mainBundle];
  v83._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001000DBBA0;
  v16.value._object = 0x80000001000DBB60;
  v16.value._countAndFlagsBits = 0xD000000000000010;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v83);

  v19 = [v2 mainBundle];
  v84._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x80000001000DBBC0;
  v21.value._object = 0x80000001000DBB60;
  v21.value._countAndFlagsBits = 0xD000000000000010;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v84);

  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 32) = v23;
  *(v24 + 48) = 512;
  *(v24 + 56) = 1;
  *(v24 + 64) = sub_10000AD70;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0;
  v1[5] = v24;
  v25 = [v2 mainBundle];
  v85._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD000000000000012;
  v26._object = 0x80000001000DBBE0;
  v27.value._object = 0x80000001000DBB60;
  v27.value._countAndFlagsBits = 0xD000000000000010;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v85);

  v30 = [v2 mainBundle];
  v86._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x80000001000DBC00;
  v32.value._object = 0x80000001000DBB60;
  v32.value._countAndFlagsBits = 0xD000000000000010;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v86);

  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 32) = v34;
  *(v35 + 48) = 258;
  *(v35 + 56) = 2;
  *(v35 + 64) = sub_10000AD78;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 104) = 0;
  v1[6] = v35;
  v36 = [v2 mainBundle];
  v87._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x80000001000DBC20;
  v38.value._object = 0x80000001000DBB60;
  v38.value._countAndFlagsBits = 0xD000000000000010;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v87);

  v41 = [v2 mainBundle];
  v88._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000001000DBC40;
  v43.value._object = 0x80000001000DBB60;
  v43.value._countAndFlagsBits = 0xD000000000000010;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v88);

  v46 = swift_allocObject();
  *(v46 + 16) = v40;
  *(v46 + 32) = v45;
  *(v46 + 48) = 258;
  *(v46 + 56) = 3;
  *(v46 + 64) = sub_10000AD80;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0;
  v1[7] = v46;
  v47 = [v2 mainBundle];
  v89._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x80000001000DBC60;
  v49.value._object = 0x80000001000DBB60;
  v49.value._countAndFlagsBits = 0xD000000000000010;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v89);

  v52 = [v2 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x80000001000DBC80;
  v54.value._object = 0x80000001000DBB60;
  v54.value._countAndFlagsBits = 0xD000000000000010;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v90);

  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 32) = v56;
  *(v57 + 48) = 1;
  *(v57 + 56) = 4;
  *(v57 + 64) = sub_10000AD88;
  *(v57 + 72) = 0;
  *(v57 + 80) = 0;
  *(v57 + 88) = 0;
  *(v57 + 96) = sub_10000AD90;
  *(v57 + 104) = 0;
  v1[8] = v57;
  v58 = [v2 mainBundle];
  v91._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD000000000000015;
  v59._object = 0x80000001000DBCA0;
  v60.value._object = 0x80000001000DBB60;
  v60.value._countAndFlagsBits = 0xD000000000000010;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v91);

  v63 = [v2 mainBundle];
  v92._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000018;
  v64._object = 0x80000001000DBCC0;
  v65.value._object = 0x80000001000DBB60;
  v65.value._countAndFlagsBits = 0xD000000000000010;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v92._countAndFlagsBits = 0;
  v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v92);

  v68 = swift_allocObject();
  *(v68 + 16) = v62;
  *(v68 + 32) = v67;
  *(v68 + 48) = 1;
  *(v68 + 56) = 5;
  *(v68 + 64) = sub_10000AE28;
  *(v68 + 72) = 0u;
  *(v68 + 88) = 0u;
  *(v68 + 104) = 0;
  v1[9] = v68;
  v69 = [v2 mainBundle];
  v93._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0xD000000000000014;
  v70._object = 0x80000001000DBCE0;
  v71.value._object = 0x80000001000DBB60;
  v71.value._countAndFlagsBits = 0xD000000000000010;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v93._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v93);

  v74 = [v2 mainBundle];
  v94._object = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD000000000000017;
  v75._object = 0x80000001000DBD00;
  v76.value._object = 0x80000001000DBB60;
  v76.value._countAndFlagsBits = 0xD000000000000010;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v94._countAndFlagsBits = 0;
  v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v94);

  v79 = swift_allocObject();
  *(v79 + 16) = v73;
  *(v79 + 32) = v78;
  *(v79 + 48) = 1;
  *(v79 + 56) = 6;
  *(v79 + 64) = sub_10000AE28;
  *(v79 + 72) = 0u;
  *(v79 + 88) = 0u;
  *(v79 + 104) = 0;
  v1[10] = v79;
  return v1;
}

uint64_t sub_10000BC00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000BC48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD1C;

  return sub_10000A974(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10000BD1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000BE10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000BE58()
{
  type metadata accessor for HeadphoneLiveTranslationViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000BF8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_10000C034(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10000C09C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100122FA0);
  sub_10000A570(v0, qword_100122FA0);
  return Logger.init(subsystem:category:)();
}

char *sub_10000C120(char *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v36[-v7];
  v9 = [a1 traitCollection];
  v10 = [v9 userInterfaceStyle];

  v11 = &a1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
  if (v10 == 2)
  {
    result = swift_beginAccess();
    v13 = *(v11 + 3);
    if (!v13)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v14 = *(v11 + 4);
    v15 = sub_10000E7E4(v11, *(v11 + 3));
    v16 = *(v13 - 8);
    __chkstk_darwin(v15);
    v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v18);
    (*(v14 + 24))(v13, v14);
LABEL_6:
    v24 = v19;
    v25 = v20;
    (*(v16 + 8))(v18, v13);
    v26 = &a1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
    result = swift_beginAccess();
    v27 = *(v26 + 3);
    if (v27)
    {
      v28 = *(v26 + 4);
      v29 = sub_10000E7E4(v26, *(v26 + 3));
      v30 = *(v27 - 8);
      __chkstk_darwin(v29);
      v32 = &v36[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v30 + 16))(v32);
      (*(v28 + 8))(v27, v28);
      (*(v30 + 8))(v32, v27);
      (*(v3 + 16))(v6, v8, v2);
      v33 = objc_allocWithZone(type metadata accessor for ProxMovieLoopPlayer(0));
      v34 = sub_1000302F0(v6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 332.0, 234.0);
      [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1000A2658(v24, v25);
      v35 = [objc_opt_self() clearColor];
      [v34 setBackgroundColor:v35];

      (*(v3 + 8))(v8, v2);
      return v34;
    }

    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v13 = *(v11 + 3);
  if (v13)
  {
    v21 = *(v11 + 4);
    v22 = sub_10000E7E4(v11, *(v11 + 3));
    v16 = *(v13 - 8);
    __chkstk_darwin(v22);
    v18 = &v36[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v18);
    v19 = (*(v21 + 16))(v13, v21);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10000C618(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10000C67C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_10000C618(&OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView, sub_10000C120);
  [v2 addSubview:v3];

  v4 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5C90;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView;
  v7 = [*(a1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView) centerXAnchor];
  v8 = [v2 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [*(a1 + v6) centerYAnchor];
  v11 = [v2 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = [v2 heightAnchor];
  v17.size.width = 332.0;
  v17.size.height = 234.0;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v14 = [v13 constraintEqualToConstant:CGRectGetHeight(v17)];

  *(v5 + 48) = v14;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  return v2;
}

uint64_t sub_10000C8DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v81[-v4];
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v81[-v11];
  v96.receiver = v1;
  v96.super_class = ObjectType;
  objc_msgSendSuper2(&v96, "viewDidLoad");
  [v1 setDismissalType:1];
  v13 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    sub_10000E88C(v15 + 16, &v93, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v16 = *(&v94 + 1);
    if (*(&v94 + 1))
    {
      v17 = sub_10000E7E4(&v93, *(&v94 + 1));
      v83 = v81;
      v18 = *(v16 - 8);
      __chkstk_darwin(v17);
      v86 = v12;
      v20 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v18 + 16))(v20);
      sub_10000E950(&v93, &qword_10011FBC0, &unk_1000D5EF0);
      v84 = v7;
      v21 = v6;
      v22 = v13;
      v23 = v1;
      v24 = *v20;
      v25 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v26 = v24 + v25;
      v1 = v23;
      v13 = v22;
      v6 = v21;
      v7 = v84;
      sub_10000E390(v26, v10);
      v27 = v20;
      v12 = v86;
      (*(v18 + 8))(v27, v16);
      sub_10000E828(v10, v5);
      (*(v7 + 7))(v5, 0, 1, v6);
      goto LABEL_6;
    }

    sub_10000E950(&v93, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v28 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v1[v28], v5, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((*(v7 + 6))(v5, 1, v6) != 1)
  {
    sub_10000E828(v5, v12);
    v36 = *(v12 + 18);
    v35 = *(v12 + 19);
    v86 = v12;
    v85 = v13;
    if (v35)
    {
      *&v93 = v36;
      *(&v93 + 1) = v35;
      *&v90 = 58;
      *(&v90 + 1) = 0xE100000000000000;
      v88[0] = 45;
      v88[1] = 0xE100000000000000;
      sub_100008480();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v37 = String.uppercased()();
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    type metadata accessor for Headphone_Manager();
    v40 = static Headphone_Manager.shared.getter();
    v41 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

    if (*(v41 + 16) && (v42 = sub_1000CD118(countAndFlagsBits, object), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);
      v45 = v44;

      if (v45)
      {
        v46 = v45;
        HeadphoneDevice.featureContent.getter();

        if (*(&v91 + 1))
        {
          sub_100008438(&qword_10011CB58, &qword_1000D85C0);
          sub_100008438(&qword_10011CB60, &qword_1000D5F20);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v95 = 0;
            v93 = 0u;
            v94 = 0u;
          }

LABEL_26:
          sub_10000E88C(&v93, v88, &qword_10011CB50, &unk_1000D5F00);
          if (v88[3])
          {
            v48 = v44;

            sub_10000E9B0(v88, &v90);
            v49 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice];
            *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice] = v44;
            v50 = v48;

            sub_10000E9C8(&v90, v88);
            v51 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider;
            swift_beginAccess();
            sub_10000EA2C(v88, &v1[v51], &qword_10011CB50, &unk_1000D5F00);
            swift_endAccess();
            v52 = [v1 contentView];
            v53 = sub_10000C618(&OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset, sub_10000C67C);
            [v52 addSubview:v53];

            v54 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset];
            v55 = [v1 contentView];
            v56 = [v55 mainContentGuide];

            [v54 pinToOtherWithLayoutGuide:v56];
            sub_100008438(&unk_1001200F0, &unk_1000D5F10);
            v57 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            v58 = *(v57 - 8);
            v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v60 = swift_allocObject();
            *(v60 + 16) = xmmword_1000D5250;
            (*(v58 + 104))(v60 + v59, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.liveTranslation(_:), v57);

            dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

            sub_10000EA94(&v90);
            sub_10000E8F4(v86);
            return sub_10000E950(&v93, &qword_10011CB50, &unk_1000D5F00);
          }

          sub_10000E950(v88, &qword_10011CB50, &unk_1000D5F00);
LABEL_29:
          v84 = v1;
          if (qword_10011C5C0 != -1)
          {
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          sub_10000A570(v61, qword_100122FA0);
          sub_10000E88C(&v93, &v90, &qword_10011CB50, &unk_1000D5F00);
          v62 = v44;

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v89 = v83;
            *v65 = 136315906;
            v82 = v64;
            v67 = static Headphone_Manager.shared.getter();
            dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

            type metadata accessor for HeadphoneDevice();
            v68 = Dictionary.description.getter();
            v70 = v69;

            v71 = sub_100078978(v68, v70, &v89);

            *(v65 + 4) = v71;
            *(v65 + 12) = 2080;
            v72 = sub_100078978(countAndFlagsBits, object, &v89);

            *(v65 + 14) = v72;
            *(v65 + 22) = 2112;
            *(v65 + 24) = v62;
            *v66 = v44;
            *(v65 + 32) = 2080;
            sub_10000E88C(&v90, v88, &qword_10011CB50, &unk_1000D5F00);
            sub_10000E88C(v88, v87, &qword_10011CB50, &unk_1000D5F00);
            v73 = v62;
            sub_100008438(&qword_10011CB50, &unk_1000D5F00);
            v74 = String.init<A>(reflecting:)();
            v76 = v75;
            sub_10000E950(v88, &qword_10011CB50, &unk_1000D5F00);
            sub_10000E950(&v90, &qword_10011CB50, &unk_1000D5F00);
            v77 = sub_100078978(v74, v76, &v89);

            *(v65 + 34) = v77;
            _os_log_impl(&_mh_execute_header, v63, v82, "Live Translation: Headphone device is nil, exiting %s btAddress:%s device:%@ provider:%s", v65, 0x2Au);
            sub_10000E950(v66, &unk_10011D820, &qword_1000D7280);

            swift_arrayDestroy();
          }

          else
          {

            sub_10000E950(&v90, &qword_10011CB50, &unk_1000D5F00);
          }

          v78 = v86;
          v79 = *&v84[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController];
          if (v79)
          {
            v80 = v79;
            sub_1000AA094(0, 1);
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1000B8BAC();
              swift_unknownObjectRelease();
            }
          }

          sub_10000E8F4(v78);
          return sub_10000E950(&v93, &qword_10011CB50, &unk_1000D5F00);
        }

        v47 = 0;
LABEL_25:
        sub_10000E950(&v90, &qword_10011CB48, &qword_1000D85B0);
        v93 = 0u;
        v94 = 0u;
        v95 = 0;
        if (v47)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v44 = 0;
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v47 = 1;
    goto LABEL_25;
  }

  sub_10000E950(v5, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A570(v29, qword_100122FA0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Live Translation: Headphone Model is nil, exiting", v32, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (v34)
    {
      sub_100047C68();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10000D748(uint64_t *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v5 = *a1;
  v6 = a1[1];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v45._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001000DBE50;
  v10.value._object = 0x80000001000DBE70;
  v10.value._countAndFlagsBits = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v45);

  v13 = [v2 traitCollection];
  v14 = [v13 userInterfaceStyle];

  v15 = sub_100051A70(v5, v6, v12._countAndFlagsBits, v12._object, v14 == 2);

  [v4 setAttributedText:v15];

  v16 = [v2 contentView];
  v38 = v4;
  [v16 setTitleView:v4];

  v17 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v18 = String._bridgeToObjectiveC()();
  [v17 setText:v18];

  v19 = [v2 contentView];
  v37 = v17;
  [v19 setSubtitleLabel:v17];

  type metadata accessor for GMOptIn();
  v20 = static GMOptIn.shared.getter();
  LOBYTE(v13) = dispatch thunk of GMOptIn.isOptedIn.getter();

  if ((v13 & 1) != 0 || (type metadata accessor for FollowUp(), (static FollowUp.hasEngagedWithCFU.getter() & 1) == 0))
  {

    v25 = 0;
  }

  else
  {
    v21 = [v7 mainBundle];
    v46._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0xD00000000000001FLL;
    v22._object = 0x80000001000DBE90;
    v23.value._object = 0x80000001000DBE70;
    v23.value._countAndFlagsBits = 0xD00000000000001BLL;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v46);

    v25 = 1;
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;

  v28 = String._bridgeToObjectiveC()();

  v43 = sub_10000E300;
  v44 = v27;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10000C034;
  v42 = &unk_1001033B0;
  v29 = _Block_copy(&aBlock);
  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v28 style:0 handler:v29];

  _Block_release(v29);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = String._bridgeToObjectiveC()();
  v43 = sub_10000E324;
  v44 = v32;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10000C034;
  v42 = &unk_1001033D8;
  v34 = _Block_copy(&aBlock);
  v35 = [v30 actionWithTitle:v33 style:1 handler:v34];

  _Block_release(v34);

  v36 = [v2 addAction:v35];
}

void sub_10000DC6C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    type metadata accessor for GMOptIn();
    v3 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.isOptedIn.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController), v6 = Strong, v7 = v5, v6, v5))
  {
    sub_1000AA094(0, 0);
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = swift_unknownObjectWeakLoadStrong();

      if (v10)
      {
        sub_1000B8A84();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10000DD60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController), v4 = Strong, v5 = v3, v4, v3))
  {
    sub_1000AA094(0, 1);
  }

  else
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        sub_1000B8BAC();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t type metadata accessor for HeadphoneLiveTranslationViewController(uint64_t a1)
{
  result = qword_10011CB30;
  if (!qword_10011CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DF8C(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000E064(uint64_t a1)
{
  if (!qword_10011EBB0)
  {
    type metadata accessor for HeadphoneModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10011EBB0);
    }
  }
}

uint64_t sub_10000E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 144);
  v7 = *(a4 + 152);

  v8.value._countAndFlagsBits = v6;
  v8.value._object = v7;
  LOBYTE(v6) = HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(v8);

  sub_10000E390(a4, a1);
  return v6 & 1;
}

uint64_t sub_10000E144(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_10000E15C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

uint64_t sub_10000E1F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000168A4(a1);
  v2 = sub_100033A5C(96);
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  v5 = sub_100033A5C(97);
  v7 = v6;

  a1[2] = v5;
  a1[3] = v7;
  v8 = sub_100033A5C(98);
  v10 = v9;

  a1[4] = v8;
  a1[5] = v10;
  v11 = sub_100033A5C(99);
  v13 = v12;

  a1[6] = v11;
  a1[7] = v13;
  return result;
}

uint64_t sub_10000E290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E2C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E30C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_10000E32C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000E390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000E3F4()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  type metadata accessor for HeadphoneLiveTranslationViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 32) = v6;
  v7 = [v2 bundleForClass:ObjCClassFromMetadata];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v5 colorNamed:v8 inBundle:v7 compatibleWithTraitCollection:0];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 40) = v9;
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [objc_opt_self() configurationWithPaletteColors:isa];

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v15 = [v14 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (v15)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10000E694(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = &v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_movieRect];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 1) = xmmword_1000D5DB0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice] = 0;
  v7 = &v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type] = 14;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController] = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

void *sub_10000E7E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E88C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E8F4(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E950(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008438(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E9B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000E9C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000EA2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EA94(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000EAE8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CB68);
  v1 = sub_10000A570(v0, qword_10011CB68);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000EC1C()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = [objc_allocWithZone(UIImageView) init];
  v37 = sub_10000F45C();
  [v3 setImage:v37];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 contentView];
  [v5 addSubview:v4];

  v6 = [v0 contentView];
  v7 = [v6 mainContentGuide];

  v8 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D5C80;
  v10 = [v4 centerXAnchor];
  v11 = [v7 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v4 centerYAnchor];
  v14 = [v7 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v4 widthAnchor];
  v17 = [v16 constraintEqualToConstant:76.0];

  *(v9 + 48) = v17;
  v18 = [v4 heightAnchor];
  v19 = [v18 constraintEqualToConstant:76.0];

  *(v9 + 56) = v19;
  v20 = [v4 topAnchor];
  v21 = [v7 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

  *(v9 + 64) = v22;
  v23 = [v4 bottomAnchor];

  v24 = [v7 bottomAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

  *(v9 + 72) = v25;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = String._bridgeToObjectiveC()();
  v42 = sub_10000F624;
  v43 = v27;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10000C034;
  v41 = &unk_100103468;
  v29 = _Block_copy(&aBlock);
  v30 = objc_opt_self();
  v31 = [v30 actionWithTitle:v28 style:0 handler:v29];

  _Block_release(v29);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = String._bridgeToObjectiveC()();
  v42 = sub_10000F678;
  v43 = v32;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10000C034;
  v41 = &unk_100103490;
  v34 = _Block_copy(&aBlock);
  v35 = [v30 actionWithTitle:v33 style:1 handler:v34];

  _Block_release(v34);

  v36 = [v0 addAction:v35];
}

void sub_10000F21C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(void))
{
  if (qword_10011C5C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011CB68);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      a5();
      swift_unknownObjectRelease();
    }
  }
}

id sub_10000F3E4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeadphoneInstallFindMyViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000F45C()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 imageForImageDescriptor:v3];
  result = [v4 CGImage];
  if (result)
  {
    v6 = result;
    [v4 scale];
    v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6 scale:0 orientation:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000F5A0()
{
  result = qword_10011C8E0;
  if (!qword_10011C8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011C8E0);
  }

  return result;
}

uint64_t sub_10000F5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F6C8(uint64_t a1, uint64_t a2)
{
  __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

uint64_t sub_10000F784()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CBB8);
  v1 = sub_10000A570(v0, qword_10011CBB8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10000F84C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap);
  }

  else
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectWeakInit();
    v2 = sub_10000F8E4(v5, ObjectType);
    swift_unknownObjectWeakDestroy();
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10000F8E4(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  v2 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v118 = *(v2 - 8);
  v3 = *(v118 + 64);
  v4 = __chkstk_darwin(v2);
  v5 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v7 = v5;
  v8 = __chkstk_darwin(v6);
  v9 = v5;
  v10 = __chkstk_darwin(v8);
  v119 = v5;
  __chkstk_darwin(v10);
  v116 = v5;
  v11 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v12 = *(v11 - 8);
  v130 = v11;
  v131 = v12;
  v13 = __chkstk_darwin(v11);
  v121 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v109 - v16;
  v18 = __chkstk_darwin(v15);
  v120 = &v109 - v19;
  v20 = __chkstk_darwin(v18);
  v117 = &v109 - v21;
  v22 = __chkstk_darwin(v20);
  v115 = &v109 - v23;
  v24 = __chkstk_darwin(v22);
  v122 = v5;
  v25 = __chkstk_darwin(v24);
  v127 = v5;
  v26 = __chkstk_darwin(v25);
  v126 = v5;
  v27 = __chkstk_darwin(v26);
  v125 = v5;
  __chkstk_darwin(v27);
  v124 = v5;
  v123 = type metadata accessor for HeadphoneModel(0);
  v28 = *(v123 - 8);
  __chkstk_darwin(v123);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v31 - 8);
  v33 = &v109 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v35 = Strong;
  v112 = v5;
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    swift_beginAccess();
    sub_10000E88C(v37 + 16, v132, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v38 = v133;
    if (v133)
    {
      v39 = sub_10000E7E4(v132, v133);
      v110 = &v109;
      v40 = *(v38 - 8);
      __chkstk_darwin(v39);
      v114 = v7;
      v42 = (&v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v40 + 16))(v42);
      sub_10000E950(v132, &qword_10011FBC0, &unk_1000D5EF0);
      v113 = v35;
      v128 = v2;
      v43 = *v42;
      v44 = v9;
      v45 = v17;
      v46 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v47 = v43 + v46;
      v17 = v45;
      v9 = v44;
      v2 = v128;
      v35 = v113;
      sub_10000E390(v47, v30);
      v48 = v42;
      v7 = v114;
      (*(v40 + 8))(v48, v38);
      sub_10000E828(v30, v33);
      v49 = v123;
      (*(v28 + 56))(v33, 0, 1, v123);
      goto LABEL_7;
    }

    sub_10000E950(v132, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v50 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v35[v50], v33, &qword_10011EBD0, &unk_1000D5EE0);
  v49 = v123;
LABEL_7:
  if ((*(v28 + 48))(v33, 1, v49) == 1)
  {

    sub_10000E950(v33, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_9:
    if (qword_10011C6F0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000A570(v51, qword_100123180);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "no features we are dallocating", v54, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v110 = v9;
  v114 = v7;
  sub_10000E950(v33, &qword_10011EBD0, &unk_1000D5EE0);
  v56 = *&v35[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_listBuilder];
  v57 = v130;
  v58 = v131;
  v59 = *(v131 + 104);
  v60 = v115;
  v109 = v131 + 104;
  (v59)(v115, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.personalTranslator(_:), v130);
  v61 = *(v58 + 32);
  v62 = v116;
  v61(v116, v60, v57);
  v63 = v124;
  v131 = v58 + 32;
  v61(v124, v62, v57);
  v64 = &v63[*(v2 + 48)];
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10001377C;
  *(v65 + 24) = v56;
  *v64 = sub_100013784;
  v64[1] = v65;
  swift_retain_n();
  v55 = sub_1000CC7B0(0, 1, 1, _swiftEmptyArrayStorage);
  v67 = v55[2];
  v66 = v55[3];
  v113 = v35;
  v111 = v17;
  if (v67 >= v66 >> 1)
  {
    v55 = sub_1000CC7B0((v66 > 1), v67 + 1, 1, v55);
  }

  v55[2] = v67 + 1;
  v116 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v123 = *(v118 + 72);
  sub_100013704(v124, v55 + v116 + v123 * v67);
  v68 = v117;
  v69 = v130;
  v124 = v59;
  (v59)(v117, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v130);
  v70 = swift_allocObject();
  v71 = v129;
  *(v70 + 16) = v56;
  *(v70 + 24) = v71;
  v72 = v119;
  v61(v119, v68, v69);
  v73 = v125;
  v61(v125, v72, v69);
  v128 = v2;
  v74 = (v73 + *(v2 + 48));
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1000137C4;
  *(v75 + 24) = v70;
  *v74 = sub_100013810;
  v74[1] = v75;
  v76 = v55[2];
  v77 = v55[3];

  if (v76 >= v77 >> 1)
  {
    v55 = sub_1000CC7B0((v77 > 1), v76 + 1, 1, v55);
  }

  v55[2] = v76 + 1;
  sub_100013704(v125, v55 + v116 + v76 * v123);
  v78 = v120;
  v79 = v130;
  v80 = v124;
  (v124)(v120, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v130);
  v81 = swift_allocObject();
  v82 = v129;
  *(v81 + 16) = v56;
  *(v81 + 24) = v82;
  v83 = v110;
  v61(v110, v78, v79);
  v84 = v126;
  v61(v126, v83, v79);
  v85 = (v84 + *(v128 + 48));
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1000137CC;
  *(v86 + 24) = v81;
  *v85 = sub_100013810;
  v85[1] = v86;
  v87 = v55[2];
  v88 = v55[3];

  if (v87 >= v88 >> 1)
  {
    v55 = sub_1000CC7B0((v88 > 1), v87 + 1, 1, v55);
  }

  v55[2] = v87 + 1;
  v89 = v116;
  sub_100013704(v126, v55 + v116 + v87 * v123);
  v90 = v111;
  v91 = v130;
  (v80)(v111, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v130);
  v92 = v114;
  v61(v114, v90, v91);
  v93 = v127;
  v61(v127, v92, v91);
  v94 = (v93 + *(v128 + 48));
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1000137D4;
  *(v95 + 24) = v56;
  *v94 = sub_100013810;
  v94[1] = v95;
  v96 = v55[2];
  v97 = v55[3];

  if (v96 >= v97 >> 1)
  {
    v55 = sub_1000CC7B0((v97 > 1), v96 + 1, 1, v55);
  }

  v55[2] = v96 + 1;
  sub_100013704(v127, v55 + v89 + v96 * v123);
  v98 = v121;
  v99 = v130;
  (v80)(v121, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v130);
  v100 = swift_allocObject();
  v101 = v129;
  *(v100 + 16) = v56;
  *(v100 + 24) = v101;
  v102 = v112;
  v61(v112, v98, v99);
  v103 = v122;
  v61(v122, v102, v99);
  v104 = (v103 + *(v128 + 48));
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1000137DC;
  *(v105 + 24) = v100;
  *v104 = sub_100013810;
  v104[1] = v105;
  v106 = v55[2];
  v107 = v55[3];

  if (v106 >= v107 >> 1)
  {
    v55 = sub_1000CC7B0((v107 > 1), v106 + 1, 1, v55);
  }

  v55[2] = v106 + 1;
  sub_100013704(v103, v55 + v89 + v106 * v123);
  return v55;
}

void sub_1000106A8(uint64_t a1)
{
  sub_10000E3F4();
  v3 = v2;
  v4 = [objc_allocWithZone(UIImageView) initWithImage:v2];
  v5 = [objc_opt_self() systemBlueColor];
  [v4 setTintColor:v5];

  v6 = v4;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v24._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001000DC1C0;
  v10.value._object = 0x80000001000DBE70;
  v10.value._countAndFlagsBits = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

  v13 = [v7 mainBundle];
  v25._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x80000001000DC1F0;
  v15.value._object = 0x80000001000DBE70;
  v15.value._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v25);

  v18 = [v7 mainBundle];
  v26._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x80000001000DBE50;
  v20.value._object = 0x80000001000DBE70;
  v20.value._countAndFlagsBits = 0xD00000000000001BLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v26);

  objc_allocWithZone(type metadata accessor for ProxCardBulletView());
  v23 = v6;
  sub_10009127C(v23, v12._countAndFlagsBits, v12._object, v17._countAndFlagsBits, v17._object, v22._countAndFlagsBits, v22._object);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_100010968()
{
  sub_100013368();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x80000001000DC160;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000025;
  v12._object = 0x80000001000DC190;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

uint64_t sub_100010B7C()
{
  sub_1000131B4();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x80000001000DC0E0;
  v8.value._object = 0x80000001000DBB60;
  v8.value._countAndFlagsBits = 0xD000000000000010;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000022;
  v12._object = 0x80000001000DC100;
  v13.value._object = 0x80000001000DBB60;
  v13.value._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

void sub_100010D74()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:56.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [objc_opt_self() systemBlueColor];
    [v3 setTintColor:v4];

    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentMode:1];

    v6 = objc_opt_self();
    v7 = [v6 mainBundle];
    v18._object = 0xE000000000000000;
    v8._object = 0x80000001000DC0A0;
    v9.value._object = 0x80000001000DC030;
    v8._countAndFlagsBits = 0xD000000000000014;
    v9.value._countAndFlagsBits = 0xD000000000000014;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v18);

    v12 = [v6 mainBundle];
    v19._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD000000000000017;
    v13._object = 0x80000001000DC0C0;
    v14.value._object = 0x80000001000DC030;
    v14.value._countAndFlagsBits = 0xD000000000000014;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v19);

    sub_100092F4C(v5, v11._countAndFlagsBits, v11._object, v16._countAndFlagsBits, v16._object);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100010FF8()
{
  sub_100013368();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0x80000001000DC010;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000020;
  v12._object = 0x80000001000DC050;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

id sub_100011210()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = String._bridgeToObjectiveC()();
  v5[4] = sub_100013774;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000C034;
  v5[3] = &unk_1001035E8;
  v2 = _Block_copy(v5);
  v3 = [objc_opt_self() actionWithTitle:v1 style:1 handler:v2];

  _Block_release(v2);

  return v3;
}

void sub_100011338(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v2 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v3 = *(v2 - 8);
  v4 = v3;
  __chkstk_darwin(v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v7 = *(v3 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = v8 + 4 * v7;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000D5FF0;
  v11 = v10 + v8;
  v12 = *(v4 + 104);
  v12(v11, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v2);
  v12(v11 + v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v2);
  v12(v11 + 2 * v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v2);
  v12(v11 + 3 * v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v2);
  v12(v6, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.liveTranslation(_:), v2);
  v13 = sub_1000CC9BC(1, 5, 1, v10);
  *(v13 + 2) = 5;
  (*(v4 + 32))(&v13[v9], v6, v2);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = Strong + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
    swift_beginAccess();
    v17 = type metadata accessor for HeadphoneModel(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
    }
  }

  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = *(v18 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
    if (v20)
    {
      v21 = v20;

      sub_1000AA9CC();
      v19 = v21;
    }
  }
}

void sub_10001169C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v139 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v136 = *(v139 - 8);
  v3 = __chkstk_darwin(v139);
  v5 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v123 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v123 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v123 - v13;
  v15 = __chkstk_darwin(v12);
  v133 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v134 = &v123 - v18;
  __chkstk_darwin(v17);
  v138 = &v123 - v19;
  v20 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v21 = __chkstk_darwin(v20 - 8);
  v137 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v123 - v23;
  v25 = type metadata accessor for HeadphoneModel(0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v129 = &v123 - v30;
  v143.receiver = v1;
  v143.super_class = ObjectType;
  objc_msgSendSuper2(&v143, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = &unk_100122000;
  v135 = v5;
  if (Strong)
  {
    v132 = v29;
    v33 = Strong;
    swift_beginAccess();
    sub_10000E88C(v33 + 16, v141, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v34 = v142;
    if (v142)
    {
      v35 = sub_10000E7E4(v141, v142);
      v127 = &v123;
      v36 = *(v34 - 8);
      v128 = v1;
      v37 = v36;
      __chkstk_darwin(v35);
      v39 = (&v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v37 + 16))(v39);
      sub_10000E950(v141, &qword_10011FBC0, &unk_1000D5EF0);
      v131 = v25;
      v40 = *v39;
      v130 = v26;
      v41 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v42 = v40 + v41;
      v25 = v131;
      v26 = v130;
      v43 = v132;
      sub_10000E390(v42, v132);
      (*(v37 + 8))(v39, v34);
      v1 = v128;
      sub_10000E828(v43, v24);
      (v26[7])(v24, 0, 1, v25);
      v32 = &unk_100122000;
      goto LABEL_6;
    }

    sub_10000E950(v141, &qword_10011FBC0, &unk_1000D5EF0);
    v32 = &unk_100122000;
  }

  v44 = v32[504];
  swift_beginAccess();
  sub_10000E88C(&v1[v44], v24, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((v26[6])(v24, 1, v25) == 1)
  {
    sub_10000E950(v24, &qword_10011EBD0, &unk_1000D5EE0);
    if (qword_10011C5D0 == -1)
    {
LABEL_8:
      v45 = type metadata accessor for Logger();
      sub_10000A570(v45, qword_10011CBB8);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Whats New: Headphone Model is nil, exiting", v48, 2u);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_8;
  }

  v132 = v14;
  v124 = v8;
  v49 = v26;
  v50 = v129;
  sub_10000E828(v24, v129);
  v51 = v137;
  sub_10000E390(v50, v137);
  (v49[7])(v51, 0, 1, v25);
  v52 = v32[504];
  swift_beginAccess();
  sub_100013144(v51, &v1[v52]);
  swift_endAccess();
  v125 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager;
  v53 = *(v50 + 144);
  v54 = *(v50 + 152);

  v127 = v53;
  v126 = v54;
  v55 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)();

  v128 = v1;
  v56 = sub_10000F84C();
  v131 = v56[2];
  if (v131)
  {
    v57 = 0;
    v58 = _swiftEmptyArrayStorage;
    v59 = v139;
    v130 = v56;
    while (v57 < v56[2])
    {
      v137 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v60 = *(v136 + 72);
      v61 = v138;
      sub_10000E88C(v56 + v137 + v60 * v57++, v138, &qword_1001200D0, qword_1000D60C8);
      v62 = v134;
      sub_10000E88C(v61, v134, &qword_1001200D0, qword_1000D60C8);
      v63 = *(v59 + 48);
      v64 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      (*(*(v64 - 8) + 32))(v11, v62, v64);
      v65 = &v11[*(v59 + 48)];
      v66 = swift_allocObject();
      v67 = 0;
      *(v66 + 16) = *(v62 + v63);
      *v65 = sub_1000136A4;
      v65[1] = v66;
      v68 = *(v55 + 16);
      do
      {
        if (v68 == v67)
        {
          sub_10000E950(v11, &qword_1001200D0, qword_1000D60C8);
          sub_10000E950(v138, &qword_1001200D0, qword_1000D60C8);
          v59 = v139;
          goto LABEL_14;
        }

        v69 = v67 + 1;
        sub_1000136AC();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v67 = v69;
      }

      while ((v70 & 1) == 0);
      sub_10000E950(v11, &qword_1001200D0, qword_1000D60C8);
      sub_100013704(v138, v133);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000CD604(0, v58[2] + 1, 1);
        v58 = v140;
      }

      v59 = v139;
      v73 = v58[2];
      v72 = v58[3];
      if (v73 >= v72 >> 1)
      {
        sub_1000CD604((v72 > 1), v73 + 1, 1);
        v58 = v140;
      }

      v58[2] = v73 + 1;
      sub_100013704(v133, v58 + v137 + v73 * v60);
LABEL_14:
      v56 = v130;
      if (v57 == v131)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_25:

  v74 = v58[2];
  if (v74)
  {
    v75 = v58 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    v76 = *(v136 + 72);
    v137 = v58;
    v138 = v76;
    v77 = v124;
    v78 = v139;
    do
    {
      v79 = v132;
      sub_10000E88C(v75, v132, &qword_1001200D0, qword_1000D60C8);
      v80 = *(v78 + 48);
      v81 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v82 = *(v81 - 8);
      (*(v82 + 32))(v77, v79, v81);
      v83 = (v77 + *(v78 + 48));
      v84 = swift_allocObject();
      *(v84 + 16) = *(v79 + v80);
      *v83 = sub_100013808;
      v83[1] = v84;
      v85 = v135;
      v86 = sub_10000E88C(v77, v135, &qword_1001200D0, qword_1000D60C8);
      (*(v85 + *(v78 + 48)))(v86);

      sub_10000E950(v77, &qword_1001200D0, qword_1000D60C8);
      (*(v82 + 8))(v85, v81);
      v75 += v138;
      --v74;
    }

    while (v74);
  }

  v87 = *(v55 + 16);

  v88 = v128;
  if (v87)
  {
    v89 = sub_100092C00();
    v90 = [v88 contentView];
    v91 = v89;
    [v90 addSubview:v91];

    v92 = [v88 contentView];
    v93 = [v92 mainContentGuide];

    v94 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1000D6000;
    v96 = [v91 topAnchor];

    v97 = [v93 topAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];

    *(v95 + 32) = v98;
    v99 = [v91 bottomAnchor];

    v100 = [v93 bottomAnchor];
    v101 = [v99 constraintLessThanOrEqualToAnchor:v100];

    *(v95 + 40) = v101;
    v102 = [v91 leadingAnchor];

    v103 = [v93 leadingAnchor];
    v104 = [v102 constraintEqualToAnchor:v103];

    *(v95 + 48) = v104;
    v105 = [v91 trailingAnchor];

    v106 = [v93 trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];

    *(v95 + 56) = v107;
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v94 activateConstraints:isa];

    v109 = sub_100011210();
    [v88 setDismissButtonAction:v109];

    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v110 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v111 = *(v110 - 8);
    v112 = *(v111 + 72);
    v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1000D5FF0;
    v115 = v114 + v113;
    v116 = *(v111 + 104);
    v116(v115, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.whatsNew(_:), v110);
    v116(v115 + v112, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v110);
    v116(v115 + 2 * v112, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v110);
    v116(v115 + 3 * v112, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v110);

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();
  }

  else
  {
    v117 = *&v128[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController];
    if (v117)
    {
      v118 = v117;
      sub_1000AA9CC();
    }

    if (qword_10011C5D0 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_10000A570(v119, qword_10011CBB8);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "Whats New: Error nothing to show ... exiting", v122, 2u);
    }
  }

  sub_10000E8F4(v129);
}

void sub_100012794(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v9[4] = sub_100013124;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000C034;
  v9[3] = &unk_100103570;
  v6 = _Block_copy(v9);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  if (*(a1 + 88))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v1 setBottomTrayTitle:v8];
}

void sub_100012940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
    if (v4)
    {
      v5 = v4;

      sub_1000AA094(0, 0);
      v3 = v5;
    }
  }
}

BOOL sub_1000129BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008480();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  type metadata accessor for Headphone_Manager();
  v4 = static Headphone_Manager.shared.getter();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

  if (!*(v8 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_1000CD118(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:

    v15 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  v13 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)();

  v14 = *(v13 + 16);

  v15 = v14 != 0;
LABEL_6:
  sub_10000E390(a4, a1);
  return v15;
}

uint64_t sub_100012B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v5 = v4[11];
  v6 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v4[13]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (a2 + v4[14]);
  sub_10001309C(v26);
  v9 = v26[13];
  v8[12] = v26[12];
  v8[13] = v9;
  v8[14] = v26[14];
  v10 = v26[9];
  v8[8] = v26[8];
  v8[9] = v10;
  v11 = v26[11];
  v8[10] = v26[10];
  v8[11] = v11;
  v12 = v26[5];
  v8[4] = v26[4];
  v8[5] = v12;
  v13 = v26[7];
  v8[6] = v26[6];
  v8[7] = v13;
  v14 = v26[1];
  *v8 = v26[0];
  v8[1] = v14;
  v15 = v26[3];
  v8[2] = v26[2];
  v8[3] = v15;
  *(a2 + v4[15]) = 0;
  *(a2 + v4[16]) = 0;
  *(a2 + v4[17]) = _swiftEmptyArrayStorage;
  *(a2 + v4[18]) = _swiftEmptyArrayStorage;
  v16 = (a2 + v4[19]);
  v16[5] = 0u;
  v16[6] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v17 = (a2 + v4[20]);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v4[21]) = 0;
  *(a2 + v4[22]) = 0;
  *(a2 + v4[23]) = 0;
  *(a2 + v4[24]) = 0;
  *a2 = sub_100033A5C(88);
  *(a2 + 8) = v18;
  *(a2 + 32) = sub_100033A5C(89);
  *(a2 + 40) = v19;
  v20 = *(a1 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v21 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v20];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isAirPods];
  }

  else
  {
    v23 = 0;
  }

  result = sub_1000130C4(v20);
  if ((v23 & 1) != 0 || result)
  {
    result = sub_100033A5C(90);
    *(a2 + 80) = result;
    *(a2 + 88) = v25;
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneWhatsNew2025ViewController(uint64_t a1)
{
  result = qword_10011CC20;
  if (!qword_10011CC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012EDC(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100012FE4(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_100012FFC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  swift_beginAccess();
  sub_100013144(a1, v3 + v4);
  return swift_endAccess();
}

double sub_10001309C(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000130EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001312C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013144(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000131B4()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemBlueColor];
  *(v0 + 40) = [v1 whiteColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithPaletteColors:isa];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4 withConfiguration:v3];

  if (!v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v6 = [v5 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v6)
  {
    goto LABEL_7;
  }
}

void sub_100013368()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemGreenColor];
  *(v0 + 40) = [v1 systemGreenColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithPaletteColors:isa];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4 withConfiguration:v3];

  if (!v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v6 = [v5 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v6)
  {
    goto LABEL_7;
  }
}

id sub_100013518(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_sectionWidth] = 0x4074000000000000;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_estimatedSectionHeight] = 0x4056800000000000;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_listBuilder;
  type metadata accessor for ProxBulltedListBuilder();
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap] = 0;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_type] = 12;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController] = 0;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

uint64_t sub_10001366C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000136AC()
{
  result = qword_10011CC30;
  if (!qword_10011CC30)
  {
    type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011CC30);
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001378C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013814()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CC38);
  v1 = sub_10000A570(v0, qword_10011CC38);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000138DC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100021944();
    v5 = v4;
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    v7 = [objc_opt_self() systemBlueColor];
    [v6 setTintColor:v7];

    v8 = v6;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setContentMode:1];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1000139D8()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_1000138DC();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100013B04()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v3);
  v7 = v31 - v6 + 40;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    sub_1000145EC(v9 + 16, v31);
    swift_unknownObjectRelease();
    v10 = v32;
    if (v32)
    {
      v11 = sub_10000E7E4(v31, v32);
      v12 = *(v10 - 8);
      __chkstk_darwin(v11);
      v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v12 + 16))(v14);
      sub_10001465C(v31);
      v15 = *v14;
      v16 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v15 + v16, v5);
      (*(v12 + 8))(v14, v10);
      sub_10000E828(v5, v7);
      v17 = [v0 contentView];
      v18 = sub_1000139D8();
      [v17 addSubview:v18];

      v19 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset];
      v20 = [v0 contentView];
      v21 = [v20 mainContentGuide];

      [v19 pinToOtherWithLayoutGuide:v21];
      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v22 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v23 = *(v22 - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1000D5250;
      (*(v23 + 104))(v25 + v24, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v22);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      sub_10000E8F4(v7);
      return;
    }

    sub_10001465C(v31);
  }

  if (qword_10011C5D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A570(v26, qword_10011CC38);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Head Gestures: Headphone Model is nil, exiting", v29, 2u);
  }
}

void sub_100014068()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_1000145C4;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_1001037B8;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000145E4;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_1001037E0;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_100014320(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000CE398();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100014394(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100047C68();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001458C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000145CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000145EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011FBC0, &unk_1000D5EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001465C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011FBC0, &unk_1000D5EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000146CC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CCA0);
  v1 = sub_10000A570(v0, qword_10011CCA0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100014794()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v38 = [v1 configurationWithPointSize:4 weight:56.0];
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D5DA0;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 redColor];
  *(v2 + 40) = [v3 tertiaryLabelColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v1 configurationWithPaletteColors:isa];

  v37 = [v38 configurationByApplyingConfiguration:v39];
  v5 = String._bridgeToObjectiveC()();
  v36 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v37];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v36];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v0 contentView];
  [v7 addSubview:v6];

  v35 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5240;
  v9 = [v6 topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 topAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v8 + 32) = v13;
  v14 = [v6 centerXAnchor];
  v15 = [v0 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 centerXAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v8 + 40) = v18;
  v19 = [v6 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22];

  *(v8 + 48) = v23;
  v24 = [v6 trailingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 trailingAnchor];
  v28 = [v24 constraintLessThanOrEqualToAnchor:v27];

  *(v8 + 56) = v28;
  v29 = [v6 bottomAnchor];

  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 bottomAnchor];
  v33 = [v29 constraintLessThanOrEqualToAnchor:v32];

  *(v8 + 64) = v33;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:v34];
}

id sub_100014DC4(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  if (qword_10011C5E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_10011CCA0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Headphone Announce Notifications intro card appeared", v6, 2u);
  }

  return [objc_opt_self() setHasSeenAnnounceNotifications:1];
}

void sub_100014F40(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  if (a1[11])
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v1 setBottomTrayTitle:v5];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();
  v22 = sub_100015470;
  v23 = v6;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10000C034;
  v21 = &unk_100103870;
  v8 = _Block_copy(&v18);
  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v11 = a1[7];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();
    v22 = sub_1000154C0;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10000C034;
    v21 = &unk_100103898;
    v15 = _Block_copy(&v18);
    v16 = [v9 actionWithTitle:v14 style:1 handler:v15];

    _Block_release(v15);

    v17 = [v1 addAction:v16];
  }
}

void sub_10001523C(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  if (qword_10011C5E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011CCA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      a4();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100015438()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000154A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100015500()
{
  type metadata accessor for HeadphoneLiveTranslationViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100015618()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1000156D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
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
      v13 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100015838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
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
      v13 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100015988(uint64_t a1)
{
  sub_100015CEC(319, &qword_10011CD60, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100016548(319, &qword_10011CD68, &qword_10011CD70, NSAttributedString_ptr, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100015C78(319, &qword_10011CD78, type metadata accessor for HeadphoneAssets);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HeadphoneViewModel.BatteryConfiguration(319);
        if (v4 <= 0x3F)
        {
          sub_100016840(319, &qword_10011CD80, &qword_10011CD88, &qword_1000D61F8, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100015CEC(319, &qword_10011CD90, &type metadata for HeadphoneLayoutMetrics, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100015CEC(319, &qword_10011CD98, &type metadata for HeadphoneViewModel.MismatchLabel, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_100015CEC(319, &qword_10011CDA0, &type metadata for String, &type metadata accessor for Array);
                if (v8 <= 0x3F)
                {
                  sub_100015CEC(319, &qword_10011CDA8, &type metadata for HeadphoneModel.AnnounceNotificationSources, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_100015CEC(319, &qword_10011CDB0, &type metadata for HeadphoneModel.LiveTranslationSources, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_100015C78(319, &unk_10011CDB8, type metadata accessor for CGColor);
                      if (v11 <= 0x3F)
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
}

void sub_100015C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015CEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100015D48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100015D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100015DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_100015E58(uint64_t a1)
{
  sub_100015FA4(319, &qword_10011CEB8, "buds caseBattery ");
  if (v1 <= 0x3F)
  {
    sub_10001600C(319, &qword_10011CEC0);
    if (v2 <= 0x3F)
    {
      sub_100015F38(319);
      if (v3 <= 0x3F)
      {
        sub_100015FA4(319, &qword_10011CED0, "left right ");
        if (v4 <= 0x3F)
        {
          sub_10001600C(319, &unk_10011CED8);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100015F38(uint64_t a1)
{
  if (!qword_10011CEC8)
  {
    type metadata accessor for HeadphoneBatteryInfo(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011CEC8);
    }
  }
}

void sub_100015FA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for HeadphoneBatteryInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10001600C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for HeadphoneBatteryInfo(0);
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100016068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000161E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_100008438(&unk_100120000, &qword_1000D62D0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100016350(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100015C78(319, &qword_10011CF78, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_100015C78(319, &qword_10011CF80, type metadata accessor for HeadphoneAssets.Feature);
      if (v3 <= 0x3F)
      {
        sub_100016548(319, &qword_10011CF88, &qword_10011CF90, UIImage_ptr, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100016548(319, &qword_10011CF98, &qword_10011CFA0, UIView_ptr, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100016840(319, &qword_10011CFA8, &unk_10011CFB0, &qword_1000D62E8, &type metadata accessor for Optional);
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

uint64_t sub_100016510(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016548(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000084D4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000165C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100016694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

void sub_10001674C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100016548(319, &qword_10011D060, &qword_10011D068, NSValue_ptr, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100016840(319, &qword_10011D070, &unk_10011D078, &qword_1000DA4F0, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100016840(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000A408(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1000168A4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + v2[13]);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (a1 + v2[14]);
  sub_10001309C(v17);
  v7 = v17[13];
  v6[12] = v17[12];
  v6[13] = v7;
  v6[14] = v17[14];
  v8 = v17[9];
  v6[8] = v17[8];
  v6[9] = v8;
  v9 = v17[11];
  v6[10] = v17[10];
  v6[11] = v9;
  v10 = v17[5];
  v6[4] = v17[4];
  v6[5] = v10;
  v11 = v17[7];
  v6[6] = v17[6];
  v6[7] = v11;
  v12 = v17[1];
  *v6 = v17[0];
  v6[1] = v12;
  v13 = v17[3];
  v6[2] = v17[2];
  v6[3] = v13;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = _swiftEmptyArrayStorage;
  *(a1 + v2[18]) = _swiftEmptyArrayStorage;
  v14 = (a1 + v2[19]);
  result = 0.0;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  *v14 = 0u;
  v16 = (a1 + v2[20]);
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v2[21]) = 0;
  *(a1 + v2[22]) = 0;
  *(a1 + v2[23]) = 0;
  *(a1 + v2[24]) = 0;
  return result;
}

uint64_t sub_100016A30()
{
  v1 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v1);
  v3 = v15 - v2;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001000DC470;
  String.append(_:)(v4);
  type metadata accessor for URL();
  sub_100017A58();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x72616D697270202CLL;
  v6._object = 0xEF203D204C525579;
  String.append(_:)(v6);
  v7 = type metadata accessor for HeadphoneAssets(0);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x80000001000DC4A0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  sub_100017AB0(v0 + *(v7 + 24), v3);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x20736567616D6920;
  v11._object = 0xEA0000000000203DLL;
  String.append(_:)(v11);
  v15[1] = *(v0 + *(v7 + 32));

  sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v16;
}

uint64_t sub_100016C48()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneBatteryInfo(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v36 - v7;
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001792C(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        return 1701736302;
      }

      sub_10000A4B8(v13, v10);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);
      v15 = "Combined with Case";
      v16 = 0xD000000000000015;
      goto LABEL_8;
    }

    v24 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
    sub_10000A4B8(v13, v10);
    sub_10000A4B8(&v13[v24], v8);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v25._object = 0x80000001000DC410;
    v25._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v25);
    _print_unlocked<A, B>(_:_:)();
    v22 = 0x3A7468676972202CLL;
    v23 = 0xE900000000000020;
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    sub_10000A4B8(v13, v10);
    sub_10000A4B8(&v13[v20], v8);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v21._object = 0x80000001000DC430;
    v21._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v21);
    _print_unlocked<A, B>(_:_:)();
    v22 = 0x614265736163202CLL;
    v23 = 0xEF203A7972657474;
LABEL_11:
    String.append(_:)(*&v22);
    _print_unlocked<A, B>(_:_:)();
    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v19 = v36;
    v27 = v8;
LABEL_13:
    sub_1000179F8(v27, type metadata accessor for HeadphoneBatteryInfo);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v28 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    sub_10000A4B8(v13, v10);
    sub_10000A4B8(&v13[v29], v8);
    sub_10000A4B8(&v13[v30], v5);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v31._countAndFlagsBits = 0xD000000000000014;
    v31._object = 0x80000001000DC3F0;
    String.append(_:)(v31);
    _print_unlocked<A, B>(_:_:)();
    v32._countAndFlagsBits = 0x3A7468676972202CLL;
    v32._object = 0xE900000000000020;
    String.append(_:)(v32);
    _print_unlocked<A, B>(_:_:)();
    v33._countAndFlagsBits = 0x614265736163202CLL;
    v33._object = 0xEF203A7972657474;
    String.append(_:)(v33);
    _print_unlocked<A, B>(_:_:)();
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v19 = v36;
    sub_1000179F8(v5, type metadata accessor for HeadphoneBatteryInfo);
    v27 = v8;
    goto LABEL_13;
  }

  sub_10000A4B8(v13, v10);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v15 = "combinedWithCase(buds: ";
  v16 = 0xD00000000000001ALL;
LABEL_8:
  v17 = v15 | 0x8000000000000000;
  String.append(_:)(*&v16);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v36;
LABEL_14:
  sub_1000179F8(v10, type metadata accessor for HeadphoneBatteryInfo);
  return v19;
}

unint64_t sub_1000171AC()
{
  v1 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001792C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = 0xD000000000000015;
      }

      else
      {
        v7 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
        v8 = *(v7 + 48);
        sub_1000179F8(&v3[*(v7 + 64)], type metadata accessor for HeadphoneBatteryInfo);
        sub_1000179F8(&v3[v8], type metadata accessor for HeadphoneBatteryInfo);
        v5 = 0x69772074696C7053;
      }

      goto LABEL_12;
    }

    v5 = 0xD000000000000012;
    v6 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v5 = 0xD000000000000012;
    v6 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
LABEL_10:
    sub_1000179F8(&v3[v6], type metadata accessor for HeadphoneBatteryInfo);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return 1701736270;
  }

  v5 = 0x2074657364616548;
LABEL_12:
  sub_1000179F8(v3, type metadata accessor for HeadphoneBatteryInfo);
  return v5;
}

BOOL sub_1000173B8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        goto LABEL_8;
      }
    }

    else if (a8 == 2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

LABEL_8:
  if ((a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  result = (a3 | a7) == 0;
  if (a3)
  {
    if (a7)
    {
      sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
      v11 = a7;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      return v13 & 1;
    }
  }

  return result;
}

uint64_t sub_1000174A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = sub_100008438(&qword_10011D0B0, &unk_1000D63A0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v33 - v21;
  v23 = &v33 + *(v20 + 56) - v21;
  sub_10001792C(a1, &v33 - v21);
  sub_10001792C(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_26;
        }

LABEL_23:
        sub_100017990(v22);
        return 0;
      }

      sub_10001792C(v22, v7);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1000179F8(v23, type metadata accessor for HeadphoneBatteryInfo);
        v25 = v7;
        goto LABEL_25;
      }

LABEL_22:
      sub_1000179F8(v7, type metadata accessor for HeadphoneBatteryInfo);
      goto LABEL_23;
    }

    sub_10001792C(v22, v10);
    v28 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
    v27 = &v10[v28];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000179F8(&v23[v28], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v23, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v10[v28], type metadata accessor for HeadphoneBatteryInfo);
      v25 = v10;
      goto LABEL_25;
    }

    v13 = v10;
LABEL_21:
    sub_1000179F8(v27, type metadata accessor for HeadphoneBatteryInfo);
    v7 = v13;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10001792C(v22, v18);
    v26 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v27 = &v18[v26];
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000179F8(&v23[v26], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v23, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v18[v26], type metadata accessor for HeadphoneBatteryInfo);
      v25 = v18;
      goto LABEL_25;
    }

    v13 = v18;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10001792C(v22, v13);
    v29 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
    v30 = *(v29 + 48);
    v27 = &v13[v30];
    v31 = *(v29 + 64);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000179F8(&v23[v31], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v23[v30], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v23, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v13[v31], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v13[v30], type metadata accessor for HeadphoneBatteryInfo);
      v25 = v13;
      goto LABEL_25;
    }

    sub_1000179F8(&v13[v31], type metadata accessor for HeadphoneBatteryInfo);
    goto LABEL_21;
  }

  sub_10001792C(v22, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = v16;
    goto LABEL_22;
  }

  sub_1000179F8(v23, type metadata accessor for HeadphoneBatteryInfo);
  v25 = v16;
LABEL_25:
  sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
LABEL_26:
  sub_1000179F8(v22, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  return 1;
}

uint64_t sub_10001792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017990(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011D0B0, &unk_1000D63A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000179F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100017A58()
{
  result = qword_10011D0C8;
  if (!qword_10011D0C8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D0C8);
  }

  return result;
}

uint64_t sub_100017AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017B20()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D0D8);
  v1 = sub_10000A570(v0, qword_10011D0D8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100017BE8()
{
  v9[4] = [v0 titleView];
  v1 = [v0 bodyView];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView];
  v9[5] = v1;
  v9[6] = v2;
  v10 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView];
  v3 = v10;
  result = v2;
  v5 = 0;
LABEL_2:
  if (v5 <= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 4)
    {
      sub_100008438(&qword_10011D148, &qword_1000D6430);
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
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_100017D44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v97 - v7;
  v110.receiver = v1;
  v110.super_class = ObjectType;
  objc_msgSendSuper2(&v110, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1000145EC(v10 + 16, &v107);
    swift_unknownObjectRelease();
    v11 = v109;
    if (v109)
    {
      v104 = ObjectType;
      v12 = sub_10000E7E4(&v107, v109);
      v13 = *(v11 - 8);
      __chkstk_darwin(v12);
      v15 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v15);
      sub_10001465C(&v107);
      v16 = *v15;
      v105 = v8;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v18 = v16 + v17;
      v19 = v105;
      sub_10000E390(v18, v6);
      (*(v13 + 8))(v15, v11);
      sub_10000E828(v6, v19);
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      v107 = 0x5F6C6C6143646E45;
      v108 = 0xE800000000000000;
      v20 = *(v19 + *(v3 + 136));
      v106 = v20;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 1598833453;
      v22._object = 0xE400000000000000;
      String.append(_:)(v22);
      LOBYTE(v106) = *(v19 + 160);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24 = String._bridgeToObjectiveC()();
      v25 = objc_opt_self();
      v26 = [v25 imageNamed:v24];

      if (v26)
      {
        v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
      }

      else
      {
        v32 = [objc_opt_self() b607];
        v33 = [v32 productID];

        v107 = 0x5F6C6C6143646E45;
        v108 = 0xE800000000000000;
        v106 = v20;
        v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v34);

        if (v20 == v33)
        {
          v35 = 0x305F4C432DLL;
        }

        else
        {
          v35 = 0x315F4C432DLL;
        }

        v36 = 0xE500000000000000;
        String.append(_:)(*&v35);
        v37 = String._bridgeToObjectiveC()();

        v38 = [v25 imageNamed:v37];

        v27 = [objc_allocWithZone(UIImageView) initWithImage:v38];
      }

      v100 = v26;
      v39 = v27;
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v107 = 0x5F6C6C6143646E45;
      v108 = 0xE800000000000000;
      v106 = v20;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 0x50656C62756F445FLL;
      v43._object = 0xEC00000073736572;
      String.append(_:)(v43);
      v44 = objc_allocWithZone(BSUICAPackageView);
      v45 = v41;
      v46 = String._bridgeToObjectiveC()();
      v47 = [v44 initWithPackageName:v46 inBundle:v45];

      v99 = v45;
      if (!v47)
      {
        __break(1u);
        return;
      }

      v48 = v47;
      [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
      v49 = [v1 contentView];
      v104 = v47;
      [v49 addSubview:v39];

      v50 = [v1 contentView];
      [v50 addSubview:v48];

      v51 = [v1 contentView];
      v52 = [v51 mainContentGuide];

      v53 = [v39 centerXAnchor];
      v54 = [v52 centerXAnchor];
      v101 = [v53 constraintEqualToAnchor:v54 constant:195.0];

      v55 = [v48 centerXAnchor];
      v56 = [v52 centerXAnchor];
      v102 = [v55 constraintEqualToAnchor:v56 constant:195.0];

      v103 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1000D63D0;
      v58 = [v39 topAnchor];
      v59 = [v52 topAnchor];
      v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59];

      *(v57 + 32) = v60;
      v61 = [v39 bottomAnchor];
      v62 = [v52 bottomAnchor];
      v63 = [v61 constraintLessThanOrEqualToAnchor:v62];

      *(v57 + 40) = v63;
      v64 = [v39 centerYAnchor];

      v65 = [v52 centerYAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];

      v67 = v101;
      *(v57 + 48) = v66;
      *(v57 + 56) = v67;
      v101 = v67;
      v68 = [v48 topAnchor];
      v69 = [v52 topAnchor];
      v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69];

      *(v57 + 64) = v70;
      v71 = [v48 bottomAnchor];
      v72 = [v52 bottomAnchor];
      v73 = [v71 constraintLessThanOrEqualToAnchor:v72];

      *(v57 + 72) = v73;
      v74 = [v48 heightAnchor];
      v75 = [v74 constraintEqualToConstant:180.0];

      *(v57 + 80) = v75;
      v76 = [v48 widthAnchor];
      v77 = [v76 constraintEqualToConstant:180.0];

      *(v57 + 88) = v77;
      v98 = v48;
      v78 = [v48 centerYAnchor];
      v79 = [v52 centerYAnchor];
      v80 = [v78 constraintEqualToAnchor:v79];

      v81 = v102;
      *(v57 + 96) = v80;
      *(v57 + 104) = v81;
      sub_10000F5A0();
      v82 = v81;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v103 activateConstraints:isa];

      v84 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView];
      v103 = v39;
      *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView] = v39;

      v85 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint];
      v86 = v101;
      *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint] = v101;
      v102 = v86;

      v87 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView];
      *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView] = v104;

      v88 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint];
      *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint] = v82;
      v89 = v82;

      v90 = sub_100017BE8();
      v91 = v90;
      if (v90 >> 62)
      {
        v92 = _CocoaArrayWrapper.endIndex.getter();
        if (v92)
        {
LABEL_17:
          v93 = 0;
          while (1)
          {
            if ((v91 & 0xC000000000000001) != 0)
            {
              v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v94 = *(v91 + 8 * v93 + 32);
            }

            v95 = v94;
            v96 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              break;
            }

            [v94 setAlpha:0.0];

            ++v93;
            if (v96 == v92)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        v92 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v92)
        {
          goto LABEL_17;
        }
      }

LABEL_29:

      sub_10000E8F4(v105);
      return;
    }

    sub_10001465C(&v107);
  }

  if (qword_10011C5E8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A570(v28, qword_10011D0D8);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Headphone Model is nil, exiting", v31, 2u);
  }
}

uint64_t sub_100018A4C(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_100018ACC();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000BB1F8(*(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100018ACC()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10001990C;
  v18 = v1;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100019340;
  v16 = &unk_100103A88;
  v2 = _Block_copy(&v13);

  [v0 animateWithDuration:0 delay:v2 options:0 animations:0.5 completion:0.0];
  _Block_release(v2);
  v3 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v4) = 1041865114;
  LODWORD(v5) = 0.75;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1041865114;
  v8 = [v3 initWithControlPoints:v4 :v5 :v7 :v6];
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setAnimationTimingFunction:v8];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10001992C;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100019340;
  v16 = &unk_100103AB0;
  v11 = _Block_copy(&v13);

  v17 = nullsub_1;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000194C0;
  v16 = &unk_100103AD8;
  v12 = _Block_copy(&v13);
  [v0 animateWithDuration:v11 animations:v12 completion:0.5];
  _Block_release(v12);
  _Block_release(v11);
  [v9 commit];
}

void sub_100018DB0()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitleText:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setBodyText:v2];

  [v0 setShouldCenterAlignText:1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_100019768;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_1001039E8;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000197B0;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100103A10;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_10001907C(void *(*a1)(), uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100019810;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100019340;
  v11 = &unk_100103A38;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000194C0;
  v11 = &unk_100103A60;
  v7 = _Block_copy(&v8);

  [v4 animateWithDuration:0 delay:v6 options:v7 animations:0.166666667 completion:0.0];
  _Block_release(v7);
  _Block_release(v6);
}

void *sub_1000191F8(uint64_t a1, uint64_t a2, void *(*a3)())
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_10001907C(a3, v6);
  }

  return result;
}

void sub_1000192BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

double sub_100019340(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_100019384(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint);
    if (v3)
    {
      v4 = v3;

      [v4 setConstant:0.0];
      v2 = v4;
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint);
    if (v7)
    {
      v8 = v7;

      [v8 setConstant:0.0];
      v6 = v8;
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 contentView];

    [v11 layoutIfNeeded];
  }
}

double sub_1000194C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void *sub_100019514(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_100017BE8();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * j + 32);
        }

        v9 = v8;
        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v8 setAlpha:a2];

        if (v10 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

uint64_t sub_100019730()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100019860(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type] = 5;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithContentView:", a1);
}

uint64_t sub_100019964()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D150);
  v1 = sub_10000A570(v0, qword_10011D150);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100019A44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019AB8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double sub_100019B0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a8;
  v44 = a7;
  v41 = a4;
  v42 = a6;
  v45 = a5;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = v15;
    v39 = v19;
    v36 = v17;
    v40 = v18;
    v37 = *(Strong + 96);

    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    v25 = a2 & 1;
    *(v24 + 24) = v25;
    v27 = v41;
    v26 = v42;
    v41 = v14;
    v29 = v44;
    v28 = v45;
    *(v24 + 32) = v27;
    *(v24 + 40) = v28;
    *(v24 + 48) = v26;
    *(v24 + 56) = v29;
    v30 = v43;
    *(v24 + 64) = a3;
    *(v24 + 72) = v30;
    *(v24 + 80) = a9;
    *(v24 + 88) = a10;
    *(v24 + 96) = a11;
    aBlock[4] = sub_10001C330;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100103C78;
    v31 = _Block_copy(aBlock);
    sub_10001C374(a1, v25);

    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
    v32 = v36;
    v33 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v37;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v38 + 8))(v32, v33);
    (*(v39 + 8))(v21, v40);
  }

  return result;
}

uint64_t sub_100019E6C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011D150);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_10001C2B8(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v49[0] = a1;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v15 = String.init<A>(describing:)();
      v17 = sub_100078978(v15, v16, &aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "HeadphoneUpsellClient: Failed to determine fetch eligibility %s", v13, 0xCu);
      sub_10000EA94(v14);
    }

    return a3(a1, 1);
  }

  else if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_10000E9C8(result + 56, v49);

      sub_10000E7E4(v49, v49[3]);
      v20 = swift_allocObject();
      *(v20 + 16) = a3;
      *(v20 + 24) = a4;

      v21 = sub_10009C3A4();
      v22 = objc_allocWithZone(AMSMarketingItemTask);
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v22 initWithBag:v21 clientIdentifier:v23 clientVersion:v24 placement:v25 serviceType:v26];
      swift_unknownObjectRelease();

      v28 = [objc_opt_self() ams_sharedAccountStore];
      v29 = [v28 ams_activeiTunesAccount];

      [v27 setAccount:v29];
      if (a6)
      {
        v30 = String._bridgeToObjectiveC()();
      }

      else
      {
        v30 = 0;
      }

      [v27 setOfferHints:{v30, a5}];

      v37 = [v27 perform];
      v38 = swift_allocObject();
      *(v38 + 16) = sub_10001C474;
      *(v38 + 24) = v20;
      v47 = sub_10001C278;
      v48 = v38;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_10001C7E0;
      v46 = &unk_100103CF0;
      v39 = _Block_copy(&aBlock);

      [v37 addSuccessBlock:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_10001C474;
      *(v40 + 24) = v20;
      v47 = sub_10001C298;
      v48 = v40;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_10001BD44;
      v46 = &unk_100103D40;
      v41 = _Block_copy(&aBlock);

      [v37 addErrorBlock:v41];
      _Block_release(v41);

      return sub_10000EA94(v49);
    }
  }

  else
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A570(v31, qword_10011D150);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "HeadphoneUpsellClient: Registration yielded no offers", v34, 2u);
    }

    sub_10001C420();
    v35 = swift_allocError();
    *v36 = 0;
    a3(v35, 1);
  }

  return result;
}

uint64_t sub_10001A494(uint64_t a1, uint64_t a2, void (*a3)(_BOOL8, void), uint64_t a4)
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A570(v7, qword_10011D150);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v30 = a4;
    v10 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr, &protocol conformance descriptor for NSObject);
    v13 = Set.description.getter();
    v15 = sub_100078978(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "HeadphoneUpsellClient: Groups - %s", v11, 0xCu);
    sub_10000EA94(v12);

    a3 = v10;
    a4 = v30;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000E9C8(result + 56, v37);

    sub_10000E7E4(v37, v37[3]);
    sub_10001BDEC(a1, sub_1000A80BC, sub_1000A7C90);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = objc_opt_self();
    swift_retain_n();
    v19 = [v18 ams_sharedAccountStore];
    v20 = [v19 ams_activeiTunesAccount];

    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(AMSDeviceOfferRegistrationTask) initWithAccount:v21 bag:sub_10009C3A4()];

      swift_unknownObjectRelease();
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v22 setRegistrationGroups:isa];

      v24 = [v22 perform];
      v25 = swift_allocObject();
      *(v25 + 16) = sub_10001C218;
      *(v25 + 24) = v17;
      v35 = sub_10001C278;
      v36 = v25;
      v32 = 1107296256;
      aBlock = _NSConcreteStackBlock;
      v33 = sub_10001C7E0;
      v34 = &unk_100103BD8;
      v26 = _Block_copy(&aBlock);

      [v24 addSuccessBlock:v26];
      _Block_release(v26);
      v27 = swift_allocObject();
      *(v27 + 16) = sub_10001C218;
      *(v27 + 24) = v17;
      v35 = sub_10001C298;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10001BD44;
      v34 = &unk_100103C28;
      v28 = _Block_copy(&aBlock);

      [v24 addErrorBlock:v28];
      _Block_release(v28);
    }

    else
    {
      sub_10001C224();
      v29 = swift_allocError();
      sub_10001A9DC(v29, 1, a3);
    }

    return sub_10000EA94(v37);
  }

  return result;
}

uint64_t sub_10001A9DC(_BOOL8 a1, char a2, void (*a3)(_BOOL8, void))
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011D150);
  sub_10001C2A0(a1, a2 & 1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10001C2AC(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_10001C2A0(a1, a2 & 1);
    sub_100008438(&qword_10011D280, &unk_1000D64F0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100078978(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HeadphoneUpsellTask: Registration offers %s", v9, 0xCu);
    sub_10000EA94(v10);
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    a1 = [a1 count] > 0;
  }

  a3(a1, a2 & 1);
  return sub_10001C2B8(a1, a2 & 1);
}

double sub_10001ABCC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - v4;
  v38 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008438(&qword_10011D220, &qword_1000D64D0);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_100008438(&qword_10011D228, &qword_1000D64D8);
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v39 = &v31 - v10;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001BEAC(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  v44 = v11;
  sub_100008438(&qword_10011D230, &qword_1000D64E0);
  swift_allocObject();
  v12 = CurrentValueSubject.init(_:)();
  v13 = v2[5];
  v14 = v2[6];
  sub_10000E7E4(v2 + 2, v13);
  v32 = v2;
  v15 = *(v14 + 8);

  v15(sub_10001BB9C, v12, v13, v14);

  v44 = v12;
  sub_10001C3D8(&qword_10011D238, &qword_10011D230, &qword_1000D64E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.first(where:)();
  v16 = v35;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v44 = v17;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v19 = v37;
  (*(*(v18 - 8) + 56))(v37, 1, 1, v18);
  sub_10001C3D8(&qword_10011D248, &qword_10011D220, &qword_1000D64D0, &protocol conformance descriptor for Publishers.FirstWhere<A>);
  sub_10001C19C(&qword_10011FA00, &qword_10011D240, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v20 = v39;
  v21 = v34;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10001BBA4(v19);

  (*(v36 + 8))(v16, v38);
  (*(v33 + 8))(v8, v21);
  v22 = swift_allocObject();
  v23 = v32;
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v42;
  v26 = v43;
  v24[2] = v42;
  v24[3] = v26;
  v24[4] = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  sub_10001C3D8(&qword_10011D250, &qword_10011D228, &qword_1000D64D8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  swift_retain_n();
  v28 = v41;
  v29 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v40 + 8))(v20, v28);
  v23[13] = v29;

  return result;
}

void sub_10001B1AC(uint64_t a1)
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011D150);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_100078978(v7, v8, v30);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadphoneUpsellClient: Accessory received: %s", v5, 0xCu);
    sub_10000EA94(v6);
  }

  sub_10009C5E8(a1);
  if (v10)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      sub_1000084D4(0, &qword_10011D270, AMSDeviceOfferRegistrationItem_ptr);
      v15 = Array.description.getter();
      v17 = sub_100078978(v15, v16, v30);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "HeadphoneUpsellClient: Items generated: %s", v13, 0xCu);
      sub_10000EA94(v14);
    }

    v18 = objc_allocWithZone(AMSDeviceOfferRegistrationGroup);
    sub_1000084D4(0, &qword_10011D270, AMSDeviceOfferRegistrationItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v18 initWithRegistrationItems:isa];

    [v20 setValidationOptions:5];
    CurrentValueSubject.value.getter();
    v21 = v20;
    sub_1000A60BC(v30, v21);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      swift_beginAccess();
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr, &protocol conformance descriptor for NSObject);

      v26 = Set.description.getter();
      v28 = v27;

      v29 = sub_100078978(v26, v28, v30);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "HeadphoneUpsellClient: Adding group new: %s", v24, 0xCu);
      sub_10000EA94(v25);
    }

    swift_beginAccess();

    CurrentValueSubject.value.setter();
  }
}

BOOL sub_10001B648(uint64_t *a1)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(*a1 + 16);
  }

  return v1 != 0;
}

double sub_10001B68C(_BYTE *a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A570(v5, qword_10011D150);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = v9;
      *v8 = 136315138;
      v10 = String.init<A>(describing:)();
      v12 = sub_100078978(v10, v11, v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "HeadphoneUpsellClient: Device detection error - %s", v8, 0xCu);
      sub_10000EA94(v9);
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "HeadphoneUpsellClient: Proceeding with empty groups", v15, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_10001BEAC(_swiftEmptyArrayStorage);
      v16 = v22;
    }

    else
    {
      v16 = &_swiftEmptySetSingleton;
    }

    a2(v16);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000E9C8(Strong + 16, v23);

    v18 = v24;
    v19 = v25;
    sub_10000E7E4(v23, v24);
    (*(v19 + 16))(v18, v19);
    sub_10000EA94(v23);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    *(v20 + 104) = 0;
  }

  return result;
}

uint64_t sub_10001B958(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011D150);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr, &protocol conformance descriptor for NSObject);
    v9 = Set.description.getter();
    v11 = sub_100078978(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "HeadphoneUpsellClient: Sink: %s", v7, 0xCu);
    sub_10000EA94(v8);
  }

  return a2(v3);
}

uint64_t sub_10001BB28()
{
  sub_10000EA94((v0 + 16));
  sub_10000EA94((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10001BBA4(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BC0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BC44()
{

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_10001BC98()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001BD04(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10001BD54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_10001BDEC(uint64_t a1, char *a2, uint64_t (*a3)(void *, char *, uint64_t, uint64_t, __n128))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = (a3)(&v8, a2 + 32, v6, a1);
    sub_10001C2C4(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void sub_10001BEAC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100008438(&qword_10011D258, &qword_1000D64E8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10001C19C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000084D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C1E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001C224()
{
  result = qword_10011D278;
  if (!qword_10011D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D278);
  }

  return result;
}

uint64_t sub_10001C280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001C2A0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10001C2AC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001C2B8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10001C2CC()
{
  sub_10001C2B8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001C374(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

unint64_t sub_10001C380()
{
  result = qword_10011F670;
  if (!qword_10011F670)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F670);
  }

  return result;
}

uint64_t sub_10001C3D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C420()
{
  result = qword_10011D288;
  if (!qword_10011D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneUpsellClient.MarketingUpsellError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneUpsellClient.MarketingUpsellError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneUpsellClient.AccessoryRetreivalError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HeadphoneUpsellClient.AccessoryRetreivalError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001C6FC()
{
  result = qword_10011D290;
  if (!qword_10011D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D290);
  }

  return result;
}

unint64_t sub_10001C754()
{
  result = qword_10011D298;
  if (!qword_10011D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D298);
  }

  return result;
}

uint64_t sub_10001C7E4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D2A0);
  v1 = sub_10000A570(v0, qword_10011D2A0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001C8AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    sub_10000E88C(v14 + 16, v54, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v15 = v55;
    if (v55)
    {
      v16 = sub_10000E7E4(v54, v55);
      v51 = &v51;
      v17 = *(v15 - 8);
      __chkstk_darwin(v16);
      v52 = v6;
      v19 = v7;
      v20 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v20);
      sub_10000E950(v54, &qword_10011FBC0, &unk_1000D5EF0);
      v21 = *v20;
      v22 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v21 + v22, v10);
      (*(v17 + 8))(v20, v15);
      v53 = v12;
      sub_10000E828(v10, v12);
      sub_10000E390(v12, v5);
      (*(v19 + 56))(v5, 0, 1, v52);
      v23 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
      swift_beginAccess();
      sub_100013144(v5, v1 + v23);
      swift_endAccess();
      v24 = [objc_opt_self() configurationWithPointSize:{88.0, v51}];
      v25 = String._bridgeToObjectiveC()();
      v26 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

      v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
      v28 = [objc_opt_self() systemGray2Color];
      [v27 setTintColor:v28];

      v29 = [v1 contentView];
      [v29 addSubview:v27];

      v30 = [v1 contentView];
      v31 = [v30 mainContentGuide];

      v32 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000D6000;
      v34 = [v27 topAnchor];
      v35 = [v31 topAnchor];
      v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];

      *(v33 + 32) = v36;
      v37 = [v27 bottomAnchor];
      v38 = [v31 bottomAnchor];
      v39 = [v37 constraintLessThanOrEqualToAnchor:v38];

      *(v33 + 40) = v39;
      v40 = [v27 centerYAnchor];
      v41 = [v31 centerYAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];

      *(v33 + 48) = v42;
      v43 = [v27 centerXAnchor];

      v44 = [v31 centerXAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];

      *(v33 + 56) = v45;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v32 activateConstraints:isa];

      sub_10000E8F4(v53);
      return;
    }

    sub_10000E950(v54, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C5F8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000A570(v47, qword_10011D2A0);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "HeadphoneNotGenuineViewController: Headphone Model is nil, exiting", v50, 2u);
  }
}

void sub_10001D118(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v56 = type metadata accessor for HeadphoneModel(0);
  v7 = *(v56 - 1);
  __chkstk_darwin(v56);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v9 = String._bridgeToObjectiveC()();
  [v2 setTitle:v9];

  sub_100033A5C(117);
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v11 = objc_opt_self();
  v12 = NSForegroundColorAttributeName;
  v13 = [v11 systemBlueColor];
  v14 = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 40) = v13;
  *(inited + 64) = v14;
  *(inited + 72) = NSUnderlineStyleAttributeName;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v15 = NSUnderlineStyleAttributeName;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011C900, &unk_1000D6750);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(NSAttributedString);
  v17 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10001E614(&qword_10011C908, type metadata accessor for Key, &unk_1000D5C04);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithString:v17 attributes:isa];

  v20 = [v2 contentView];
  v21 = [v20 subtitleLabel];

  if (v21)
  {
    v22 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] = v21;
  }

  v24 = *(v57 + 16);
  v23 = *(v57 + 24);
  v25 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v2[v25], v6, &qword_10011EBD0, &unk_1000D5EE0);
  v26 = v56;
  if ((*(v7 + 48))(v6, 1, v56) == 1)
  {

    sub_10000E950(v6, &qword_10011EBD0, &unk_1000D5EE0);
  }

  else
  {
    v27 = v55;
    sub_10000E828(v6, v55);
    v28 = sub_10001E474(*(v27 + *(v26 + 34)));

    if (v28)
    {

      sub_100033A5C(118);
      v29 = String._bridgeToObjectiveC()();

      [v2 setTitle:v29];

      v24 = sub_100033A5C(119);
      v23 = v30;
    }

    sub_10000E8F4(v27);
  }

  aBlock = v24;
  v59 = v23;

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);

  v32 = objc_allocWithZone(NSMutableAttributedString);
  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 initWithString:v33];

  v56 = v19;
  [v34 appendAttributedString:v19];
  v35 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  [*&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] setAttributedText:v34];
  [*&v2[v35] setUserInteractionEnabled:1];
  v36 = *&v2[v35];
  v37 = objc_allocWithZone(UITapGestureRecognizer);
  v38 = v36;
  v39 = [v37 initWithTarget:v2 action:"handleTapOnLabel:"];
  [v38 addGestureRecognizer:v39];

  v40 = [v2 contentView];
  [v40 setSubtitleLabel:*&v2[v35]];

  v41 = v57;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v43 = String._bridgeToObjectiveC()();
  v62 = sub_10001E3FC;
  v63 = v42;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10000C034;
  v61 = &unk_100103EF0;
  v44 = _Block_copy(&aBlock);
  v45 = objc_opt_self();
  v46 = [v45 actionWithTitle:v43 style:0 handler:v44];

  _Block_release(v44);

  v47 = *(v41 + 56);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *(v41 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v50 = String._bridgeToObjectiveC()();
    v62 = sub_10001E444;
    v63 = v49;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10000C034;
    v61 = &unk_100103F18;
    v51 = _Block_copy(&aBlock);
    v52 = [v45 actionWithTitle:v50 style:1 handler:v51];

    _Block_release(v51);

    v53 = [v2 addAction:v52];
  }
}

void sub_10001D944(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10001D9C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008438(&qword_10011D308, &qword_1000D6760);
  __chkstk_darwin(v11 - 8);
  v13 = v48 - v12;
  v14 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  v15 = [*&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] attributedText];
  if (v15)
  {
    v48[1] = a1;
    v49 = v6;
    v50 = v10;
    v51 = v8;
    v52 = v7;
    v16 = v15;
    v17 = [v15 string];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v55 = v18;
    v56 = v20;
    v53 = sub_100033A5C(117);
    v54 = v21;
    v22 = type metadata accessor for Locale();
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    sub_100008480();
    v23 = StringProtocol.range<A>(of:options:range:locale:)();
    v25 = v24;
    v27 = v26;
    sub_10000E950(v13, &qword_10011D308, &qword_1000D6760);

    if (v27)
    {
    }

    else
    {
      v28 = *&v2[v14];
      v55 = v23;
      v56 = v25;
      v53 = v18;
      v54 = v20;
      v29 = v28;
      sub_100008438(&qword_10011D310, qword_1000D6768);
      sub_10001E5B0();
      v30 = _NSRange.init<A, B>(_:in:)();
      v32 = sub_10001DF68(v29, v30, v31);

      v34 = v51;
      v33 = v52;
      v36 = v49;
      v35 = v50;
      if (v32)
      {
        if (qword_10011C5F8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_10000A570(v37, qword_10011D2A0);
        v38 = v2;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v55 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_100078978(*&v38[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink], *&v38[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink + 8], &v55);
          _os_log_impl(&_mh_execute_header, v39, v40, "User tapped learn more, presenting support link %s", v41, 0xCu);
          sub_10000EA94(v42);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000B7214();
          swift_unknownObjectRelease();
        }

        URL.init(string:)();
        if ((*(v34 + 48))(v36, 1, v33) == 1)
        {
          sub_10000E950(v36, &qword_10011CF08, &unk_1000D7310);
        }

        else
        {
          (*(v34 + 32))(v35, v36, v33);
          v43 = [objc_opt_self() sharedApplication];
          URL._bridgeToObjectiveC()(v44);
          v46 = v45;
          sub_1000A3860(_swiftEmptyArrayStorage);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_10001E614(&qword_10011C9A0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1000D5BC0);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v43 openURL:v46 options:isa completionHandler:0];

          (*(v34 + 8))(v35, v33);
        }
      }
    }
  }
}

id sub_10001DF68(void *a1, unint64_t a2, char *a3)
{
  result = [a1 attributedText];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(NSLayoutManager) init];
    v10 = [objc_allocWithZone(NSTextContainer) initWithSize:{0.0, 0.0}];
    v11 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    [v9 addTextContainer:v10];
    [v11 addLayoutManager:v9];
    [v10 setLineFragmentPadding:0.0];
    [v10 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
    [v10 setMaximumNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
    [a1 bounds];
    v13 = v12;
    v15 = v14;
    [v10 setSize:{v12, v14}];
    [v3 locationInView:a1];
    v17 = v16;
    v19 = v18;
    [v9 usedRectForTextContainer:v10];
    v24 = [v9 characterIndexForPoint:v10 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v17 - ((v13 - v20) * 0.5 - v21), v19 - ((v15 - v22) * 0.5 - v23)}];

    return (v24 >= a2 && &v24[-a2] < a3);
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneNotGenuineViewController(uint64_t a1)
{
  result = qword_10011D2F8;
  if (!qword_10011D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E2F8(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001E3C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E42C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001E49C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  *&v1[v4] = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v5 = &v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink];
  *v5 = 0xD000000000000025;
  v5[1] = 0x80000001000DC6F0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type] = 19;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

unint64_t sub_10001E5B0()
{
  result = qword_10011D318;
  if (!qword_10011D318)
  {
    sub_10000A408(&qword_10011D310, qword_1000D6768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D318);
  }

  return result;
}

uint64_t sub_10001E614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10001E664()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 1)
  {
    v6 = 0x746867694CLL;
  }

  else
  {
    v6 = 1802658116;
  }

  if (v5 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  _StringGuts.grow(_:)(33);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = v3;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithPackageName:v11 inBundle:{v10, 0xD00000000000001FLL, 0x80000001000DC780}];

  if (v12)
  {

    v13 = String._bridgeToObjectiveC()();
    [v12 setState:v13 animated:1];

    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v1 contentView];
    [v15 addSubview:v14];

    v16 = [v1 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000D5C80;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 heightAnchor];
    v27 = [v26 constraintEqualToConstant:240.0];

    *(v19 + 48) = v27;
    v28 = [v14 widthAnchor];
    v29 = [v28 constraintEqualToConstant:120.0];

    *(v19 + 56) = v29;
    v30 = [v14 centerYAnchor];
    v31 = [v17 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v19 + 64) = v32;
    v33 = [v14 centerXAnchor];

    v34 = [v17 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v19 + 72) = v35;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001EC44()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_10001F078;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100103FA8;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_10001F0B0;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100103FD0;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_10001EEFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7F2C(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001F040()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F0D8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D358);
  v1 = sub_10000A570(v0, qword_10011D358);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001F1A0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100122FF0);
  sub_10000A570(v0, qword_100122FF0);
  return Logger.init(subsystem:category:)();
}

void sub_10001F218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v45 = a3;
  v46 = a1;
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  (*(v10 + 104))(v12, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v9);
  v13 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v15 = v14;

  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = v15;
    if ([v16 hearingProtectionCapability] == 1 && objc_msgSend(v16, "hearingProtectionEnabled") == 1)
    {
      v17 = v46;
      v42 = [v46 contentView];
      v18 = [v42 dismissButton];
      if (v18)
      {
        v41 = v18;
        sub_1000222FC();
        sub_10000E390(a2, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
        v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
        v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
        v22 = swift_allocObject();
        *(v22 + 16) = v46;
        sub_10000E828(v8, v22 + v19);
        *(v22 + v20) = v16;
        v23 = (v22 + v21);
        v24 = v43;
        *v23 = v45;
        v23[1] = v24;
        *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
        v17 = v46;
        swift_unknownObjectRetain();
        v25 = v16;
        v26 = v17;
        v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v28 = v41;
        [v41 addAction:v27 forControlEvents:64];
      }

      sub_100033A5C(173);
      v29 = String._bridgeToObjectiveC()();

      sub_100033A5C(174);
      v30 = String._bridgeToObjectiveC()();

      sub_100033A5C(175);
      v31 = String._bridgeToObjectiveC()();

      sub_100033A5C(176);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v17 dismissalConfirmationActionWithTitle:v29 message:v30 confirmButtonTitle:v31 cancelButtonTitle:v32];

      [v17 setDismissButtonAction:v33];
    }

    else
    {
      if (qword_10011C600 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A570(v34, qword_10011D358);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "addOffModeSwitchAlertOnDismiss: LSR hearingProtectionEnabled is OFF not adding the dismissal alrt!", v37, 2u);
      }

      v33 = v13;
    }
  }

  else
  {
    if (qword_10011C600 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A570(v38, qword_10011D358);
    v33 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v33, v39, "addOffModeSwitchAlertOnDismiss: playload nil, skip add off mode alert!", v40, 2u);
    }
  }
}

uint64_t sub_10001F790(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 152))
  {
    v10 = *(a3 + 144);
    v11 = *(a3 + 152);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  swift_unknownObjectRetain();

  sub_100022B38(a2, v10, v11, a4, a5, a6);

  return swift_unknownObjectRelease();
}

void sub_10001F838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v10 = [objc_allocWithZone(AADeviceConfig) init];
  [v10 setListeningModeOffAllowed:2];
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();

  static HeadphoneProxFeatureManager.shared.getter();
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v5 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5250;
  (*(v6 + 104))(v8 + v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v5);
  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  a4(v9);
}

uint64_t sub_10001FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v5 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5250;
  (*(v6 + 104))(v8 + v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v5);
  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  return a4(v9);
}

id sub_10001FB50()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100021B8C();
    v5 = v4;
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    v7 = [objc_opt_self() systemBlueColor];
    [v6 setTintColor:v7];

    v8 = v6;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setContentMode:1];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10001FC4C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_10001FB50();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10001FD78()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v9 = type metadata accessor for HeadphoneModel(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "viewDidLoad");
  [v1 setDismissalType:1];
  v16 = &v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = Strong;
  swift_beginAccess();
  sub_10000E88C(v18 + 16, v53, &qword_10011FBC0, &unk_1000D5EF0);
  swift_unknownObjectRelease();
  v19 = v54;
  if (!v54)
  {
    sub_10000E950(v53, &qword_10011FBC0, &unk_1000D5EF0);
LABEL_7:
    if (qword_10011C600 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A570(v43, qword_10011D358);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Hearing Protection: Headphone Model is nil, exiting", v46, 2u);
    }

    return;
  }

  v47 = v16;
  v49 = ObjectType;
  v50 = v6;
  v20 = sub_10000E7E4(v53, v54);
  v51 = &v47;
  v21 = v15;
  v22 = *(v19 - 8);
  __chkstk_darwin(v20);
  v24 = (&v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v24);
  sub_10000E950(v53, &qword_10011FBC0, &unk_1000D5EF0);
  v25 = v10;
  v26 = *v24;
  v52 = v9;
  v27 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10000E390(v26 + v27, v13);
  (*(v22 + 8))(v24, v19);
  sub_10000E828(v13, v21);
  v48 = v21;
  sub_10000E390(v21, v8);
  v28 = v52;
  (*(v25 + 56))(v8, 0, 1, v52);
  v29 = &v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model];
  swift_beginAccess();
  sub_100013144(v8, v29);
  swift_endAccess();
  v30 = [v1 contentView];
  v31 = sub_10001FC4C();
  [v30 addSubview:v31];

  v32 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset];
  v33 = [v1 contentView];
  v34 = [v33 mainContentGuide];

  [v32 pinToOtherWithLayoutGuide:v34];
  v35 = *(v25 + 48);
  v51 = (v25 + 48);
  if (v35(v29, 1, v28) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v36 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000D5250;
    (*(v37 + 104))(v39 + v38, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v36);

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

    v40 = v50;
    sub_10000E88C(v29, v50, &qword_10011EBD0, &unk_1000D5EE0);
    if (v35(v40, 1, v52) != 1)
    {
      v41 = v47;
      v42 = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v40, v42, *(v41 + 1));
      swift_unknownObjectRelease();
      sub_10000E8F4(v48);
      sub_10000E8F4(v40);
      return;
    }
  }

  __break(1u);
}

void sub_1000204EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v91 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  __chkstk_darwin(v7 - 8);
  v9 = v82 - v8;
  v10 = type metadata accessor for HeadphoneModel(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v82 - v15;
  v17 = String._bridgeToObjectiveC()();
  [v2 setTitle:v17];

  v18 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v18];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    sub_10000E88C(v20 + 16, &aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v21 = v95;
    if (v95)
    {
      v87 = v4;
      v82[1] = a1;
      v22 = sub_10000E7E4(&aBlock, v95);
      v88 = v82;
      v23 = *(v21 - 1);
      v90 = v2;
      v24 = v23;
      __chkstk_darwin(v22);
      v26 = v11;
      v27 = (v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v27);
      sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v89 = v16;
      v28 = *v27;
      v29 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v30 = v28 + v29;
      v31 = v89;
      sub_10000E390(v30, v14);
      (*(v24 + 8))(v27, v21);
      v32 = v90;
      sub_10000E828(v14, v31);
      sub_10000E390(v31, v9);
      (*(v26 + 56))(v9, 0, 1, v10);
      v33 = v32 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model;
      swift_beginAccess();
      sub_100013144(v9, v33);
      swift_endAccess();
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v34 = *(v26 + 48);
      v85 = v26 + 48;
      v86 = v10;
      v84 = v34;
      if (v34(v33, 1, v10) == 1)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v35 = v91;
      v36 = v87;
      (*(v91 + 104))(v6, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v87);

      v37 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v39 = v38;

      (*(v35 + 8))(v6, v36);
      v88 = v39;
      if (!v37 || (v40 = v39, v41 = [v40 hearingProtectionRegionStatus], v40, v41 != 2))
      {
        if (qword_10011C600 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_10000A570(v42, qword_10011D358);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "configure view for LSR Text", v45, 2u);
        }

        sub_100033A5C(157);
        v46 = String._bridgeToObjectiveC()();

        [v32 setTitle:v46];

        sub_100033A5C(158);
        v47 = String._bridgeToObjectiveC()();

        [v32 setSubtitle:v47];

        if (!v37)
        {
LABEL_26:
          if (qword_10011C600 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_10000A570(v65, qword_10011D358);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "configure view for LSR Button", v68, 2u);
          }

          if (v84(v33, 1, v86) != 1)
          {
            v69 = *(v33 + 152);
            v83 = v37;
            if (v69)
            {
              v70 = *(v33 + 144);
              v71 = v69;
            }

            else
            {
              v70 = 0;
              v71 = 0xE000000000000000;
            }

            sub_100033A5C(160);
            v72 = swift_allocObject();
            v73 = v90;
            swift_unknownObjectWeakInit();
            v74 = swift_allocObject();
            v74[2] = v72;
            v74[3] = v70;
            v74[4] = v71;

            v75 = String._bridgeToObjectiveC()();

            v96 = sub_1000215EC;
            v97 = v74;
            aBlock = _NSConcreteStackBlock;
            v93 = 1107296256;
            v94 = sub_10000C034;
            v95 = &unk_100104088;
            v76 = _Block_copy(&aBlock);
            v77 = objc_opt_self();
            v78 = [v77 actionWithTitle:v75 style:0 handler:v76];

            _Block_release(v76);

            v58 = v78;
            sub_100033A5C(161);
            v79 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v80 = String._bridgeToObjectiveC()();

            v96 = sub_100021610;
            v97 = v79;
            aBlock = _NSConcreteStackBlock;
            v93 = 1107296256;
            v94 = sub_10000C034;
            v95 = &unk_1001040B0;
            v81 = _Block_copy(&aBlock);
            v60 = [v77 actionWithTitle:v80 style:1 handler:v81];

            _Block_release(v81);

            v59 = [v73 addAction:v60];
            v31 = v89;
            v37 = v83;
LABEL_35:

            sub_100021640(v37, v88);
            sub_10000E8F4(v31);
            return;
          }

          goto LABEL_37;
        }

        v40 = v39;
      }

      v48 = v37;
      v49 = v40;
      if ([v49 hearingProtectionCapability] == 1 && objc_msgSend(v49, "hearingProtectionEnabled") == 1)
      {
        if (qword_10011C600 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000A570(v50, qword_10011D358);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "configure action buttion for Hearing Protection", v53, 2u);
        }

        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v55 = String._bridgeToObjectiveC()();
        v96 = sub_100021680;
        v97 = v54;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_10000C034;
        v95 = &unk_1001040D8;
        v56 = _Block_copy(&aBlock);
        v57 = [objc_opt_self() actionWithTitle:v55 style:0 handler:v56];

        _Block_release(v56);

        v58 = v57;
        v59 = [v32 addAction:v58];

        v60 = v58;
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C600 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10000A570(v61, qword_10011D358);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Hearing Protection: Headphone Model is nil, exiting", v64, 2u);
  }
}