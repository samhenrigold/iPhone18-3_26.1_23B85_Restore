uint64_t sub_1000A93DC(uint64_t a1)
{
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A952C(uint64_t a1)
{
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A967C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_10000AC24();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100121620;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = a1;
  sub_1000AAD00();
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v4, v6, v8);
}

uint64_t sub_1000A97BC(uint64_t a1)
{
  sub_100067570();
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  static String.overrideMenuSubContentMenuPickerFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  String.init(format:_:)();

  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v2, v4, v6);
}

uint64_t sub_1000A98FC(uint64_t *a1)
{
  v1 = *a1;
  sub_100003768(&qword_10018A5A0, &qword_1001244C0);

  return sub_1000A97BC(v1);
}

uint64_t sub_1000A9960@<X0>(uint64_t a2@<X8>)
{
  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_1000A9B58()
{
  result = qword_10018EBA8;
  if (!qword_10018EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EBA8);
  }

  return result;
}

unint64_t sub_1000A9BAC()
{
  result = qword_10018EBB0;
  if (!qword_10018EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EBB0);
  }

  return result;
}

uint64_t sub_1000A9CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A9CF0()
{
  result = qword_10018EC08;
  if (!qword_10018EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC08);
  }

  return result;
}

unint64_t sub_1000A9D44()
{
  result = qword_10018EC10;
  if (!qword_10018EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC10);
  }

  return result;
}

unint64_t sub_1000A9D9C()
{
  result = qword_10018EC18;
  if (!qword_10018EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC18);
  }

  return result;
}

unint64_t sub_1000A9E00()
{
  result = qword_10018EC48;
  if (!qword_10018EC48)
  {
    sub_100004D48(&qword_10018EC40, &qword_10012BA88);
    sub_1000AABC8(&qword_10018EC50, &qword_10018EC58, &qword_10012BA90, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC48);
  }

  return result;
}

uint64_t sub_1000A9EE8()
{
  sub_1000086BC((v0 + 16));
  sub_1000AAC80();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_1000A9F30()
{
  result = qword_10018EC68;
  if (!qword_10018EC68)
  {
    sub_100004D48(&qword_10018EC60, &qword_10012BAC0);
    sub_1000AABC8(&qword_10018EC70, &qword_10018EC78, &qword_10012BAC8, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC68);
  }

  return result;
}

unint64_t sub_1000AA020()
{
  result = qword_10018EC88;
  if (!qword_10018EC88)
  {
    sub_100004D48(&qword_10018EC80, &qword_10012BAF8);
    sub_1000AABC8(&qword_10018EC90, &qword_10018EC98, &qword_10012BB00, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC88);
  }

  return result;
}

unint64_t sub_1000AA110()
{
  result = qword_10018ECA8;
  if (!qword_10018ECA8)
  {
    sub_100004D48(&qword_10018ECA0, &qword_10012BB30);
    sub_1000AABC8(&qword_10018ECB0, &qword_10018ECB8, &qword_10012BB38, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECA8);
  }

  return result;
}

unint64_t sub_1000AA208()
{
  result = qword_10018ECC8;
  if (!qword_10018ECC8)
  {
    sub_100004D48(&qword_10018ECC0, &qword_10012BB90);
    sub_1000AABC8(&qword_10018ECD0, &qword_10018ECD8, &qword_10012BB98, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECC8);
  }

  return result;
}

unint64_t sub_1000AA2F8()
{
  result = qword_10018ECF0;
  if (!qword_10018ECF0)
  {
    sub_100004D48(&qword_10018ECE8, &qword_10012BBD0);
    sub_1000AABC8(&qword_10018ECF8, &qword_10018ED00, &qword_10012BBD8, &protocol conformance descriptor for Menu<A, B>);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ECF0);
  }

  return result;
}

uint64_t sub_1000AA41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018ECE0, &qword_10012BBC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AA5AC()
{
  result = qword_10018ED70;
  if (!qword_10018ED70)
  {
    sub_100004D48(&qword_100189580, &qword_100123A50);
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018ED70);
  }

  return result;
}

uint64_t sub_1000AA668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AA6C8()
{
  result = qword_10018EE00;
  if (!qword_10018EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE00);
  }

  return result;
}

uint64_t sub_1000AA71C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA760()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000AA79C()
{
  result = qword_10018EE20;
  if (!qword_10018EE20)
  {
    sub_100004D48(&qword_10018EE10, &qword_10012BD28);
    sub_100004D48(&qword_10018ED10, &qword_10012BC08);
    sub_1000AABC8(&qword_10018ED18, &qword_10018ED10, &qword_10012BC08, &protocol conformance descriptor for Toggle<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000AA668(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE20);
  }

  return result;
}

uint64_t sub_1000AA8C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000AAD18(a1, a2);
  sub_100003768(v3, v4);
  sub_10000AF7C();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_1000AA934()
{
  result = qword_10018EE90;
  if (!qword_10018EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE90);
  }

  return result;
}

unint64_t sub_1000AA9A0()
{
  result = qword_10018EF08;
  if (!qword_10018EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF08);
  }

  return result;
}

unint64_t sub_1000AAA44()
{
  result = qword_10018EF88;
  if (!qword_10018EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF88);
  }

  return result;
}

uint64_t sub_1000AAABC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1000AAD18(0, a2);
    sub_100004D48(v4, v5);
    sub_1000AA5AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AAB24()
{
  result = qword_10018F008;
  if (!qword_10018F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F008);
  }

  return result;
}

uint64_t sub_1000AAB84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(a1 + 8);
  return v2(v3, &v5);
}

uint64_t sub_1000AABC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_1000AAD18(0, a2);
    sub_100004D48(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000AAC40(unint64_t *a1)
{

  return sub_1000AABC8(a1, v1, v2, &protocol conformance descriptor for Toggle<A>);
}

void *sub_1000AAC8C(uint64_t a1)
{

  return Bindable<A>.subscript.getter();
}

void *sub_1000AACA8(uint64_t a1)
{

  return Bindable<A>.subscript.getter();
}

uint64_t *sub_1000AACC4(uint64_t a1)
{
  *(v1 - 128) = a1;

  return sub_10003EE2C((v1 - 160));
}

uint64_t sub_1000AAD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000AAE04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FlowListItemView(uint64_t a1)
{
  result = qword_10018F080;
  if (!qword_10018F080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AAF04(uint64_t a1)
{
  sub_1000AAF88(319);
  if (v1 <= 0x3F)
  {
    sub_1000AAFE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000AAF88(uint64_t a1)
{
  if (!qword_10018C1B8)
  {
    type metadata accessor for ContentSizeCategory();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10018C1B8);
    }
  }
}

unint64_t sub_1000AAFE0()
{
  result = qword_10018E470;
  if (!qword_10018E470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018E470);
  }

  return result;
}

uint64_t sub_1000AB040@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  sub_100003768(&qword_10018C120, &qword_100127308);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_10000EC9C(v2, &v17 - v12, &qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_10000AF7C();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

void *sub_1000AB218@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  type metadata accessor for AccessibilityTraits();
  sub_100008780();
  v32 = v4;
  v33 = v3;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v7 = v6 - v5;
  v31 = type metadata accessor for AccessibilityChildBehavior();
  sub_100008780();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000C30C();
  v13 = v12 - v11;
  v14 = sub_100003768(&qword_10018F0B8, &qword_10012BF08);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = sub_100003768(&qword_10018F0C0, &qword_10012BF10);
  sub_100008780();
  v20 = v19;
  sub_10000ED78();
  __chkstk_darwin(v21);
  v23 = &v31 - v22;
  sub_100003768(&qword_10018F0C8, &qword_10012BF18);
  sub_10000ED78();
  __chkstk_darwin(v24);
  v26 = &v31 - v25;
  sub_1000AB580(v2, v17);
  static AccessibilityChildBehavior.combine.getter();
  v27 = sub_1000AD044();
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v13, v31);
  sub_10000ABCC(v17, &qword_10018F0B8, &qword_10012BF08);
  static AccessibilityTraits.isButton.getter();
  __src[0] = v14;
  __src[1] = v27;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v32 + 8))(v7, v33);
  (*(v20 + 8))(v23, v18);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v34;
  sub_1000AD1AC(v26, v34);
  v29 = sub_100003768(&qword_10018F108, &qword_10012BF38);
  return memcpy((v28 + *(v29 + 36)), __src, 0x70uLL);
}

uint64_t sub_1000AB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_100003768(&qword_10018F100, &qword_10012BF30);
  __chkstk_darwin(v26);
  v4 = &v24 - v3;
  v24 = sub_100003768(&qword_10018F110, &qword_10012BF40);
  __chkstk_darwin(v24);
  v6 = &v24 - v5;
  v25 = sub_100003768(&qword_10018F0F0, &qword_10012BF28);
  __chkstk_darwin(v25);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ContentSizeCategory();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_1000AB040((&v24 - v14));
  (*(v10 + 104))(v13, enum case for ContentSizeCategory.accessibilityMedium(_:), v9);
  v16 = sub_1000AB9A0(v15, v13);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v16)
  {
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v18 = sub_100003768(&qword_10018F120, &qword_10012BF50);
    sub_1000ABDB8(a1, &v8[*(v18 + 44)]);
    v19 = &qword_10018F0F0;
    v20 = &qword_10012BF28;
    sub_10000EC9C(v8, v6, &qword_10018F0F0, &qword_10012BF28);
    swift_storeEnumTagMultiPayload();
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    v21 = v8;
  }

  else
  {
    *v4 = static HorizontalAlignment.leading.getter();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    v22 = sub_100003768(&qword_10018F118, &qword_10012BF48);
    sub_1000AC6A4(a1, &v4[*(v22 + 44)]);
    v19 = &qword_10018F100;
    v20 = &qword_10012BF30;
    sub_10000EC9C(v4, v6, &qword_10018F100, &qword_10012BF30);
    swift_storeEnumTagMultiPayload();
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    v21 = v4;
  }

  return sub_10000ABCC(v21, v19, v20);
}

BOOL sub_1000AB9A0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_1000ABDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a1;
  v32 = a2;
  v3 = sub_100003768(&qword_10018F128, &qword_10012BF58);
  v4 = __chkstk_darwin(v3 - 8);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  v8 = sub_100003768(&qword_10018F130, &qword_10012BF60);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_100003768(&qword_10018F140, &qword_10012BF70);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v30 - v19;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v21 = sub_100003768(&qword_10018F148, &qword_10012BF78);
  sub_1000ACC5C(a1, &v10[*(v21 + 44)]);
  sub_10000AAEC(&qword_10018F150, &qword_10018F130, &qword_10012BF60, &protocol conformance descriptor for VStack<A>);
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v10, &qword_10018F130, &qword_10012BF60);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000AD214(v13, v20);
  v22 = sub_100003768(&qword_10018F158, &qword_10012BF80);
  memcpy(&v20[*(v22 + 36)], __src, 0x70uLL);
  v23 = static Edge.Set.trailing.getter();
  v24 = &v20[*(v15 + 44)];
  *v24 = v23;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v25 = sub_100003768(&qword_10018F160, &qword_10012BF88);
  sub_1000AC1C0(&v7[*(v25 + 44)]);
  sub_10000EC9C(v20, v18, &qword_10018F140, &qword_10012BF70);
  v26 = v31;
  sub_10000EC9C(v7, v31, &qword_10018F128, &qword_10012BF58);
  v27 = v32;
  sub_10000EC9C(v18, v32, &qword_10018F140, &qword_10012BF70);
  v28 = sub_100003768(&qword_10018F168, &unk_10012BF90);
  sub_10000EC9C(v26, v27 + *(v28 + 48), &qword_10018F128, &qword_10012BF58);
  sub_10000ABCC(v7, &qword_10018F128, &qword_10012BF58);
  sub_10000ABCC(v20, &qword_10018F140, &qword_10012BF70);
  sub_10000ABCC(v26, &qword_10018F128, &qword_10012BF58);
  return sub_10000ABCC(v18, &qword_10018F140, &qword_10012BF70);
}

uint64_t sub_1000AC1C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = sub_100003768(&qword_10018F170, &qword_10012BFA0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  *v13 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  sub_100003768(&qword_10018F178, &qword_10012BFA8);
  sub_1000AC3D8();
  sub_1000AC538();
  sub_10000EC9C(v13, v11, &qword_10018F170, &qword_10012BFA0);
  sub_10000EC9C(v7, v5, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v11, a1, &qword_10018F170, &qword_10012BFA0);
  v14 = sub_100003768(&qword_10018F180, &qword_10012BFB0);
  sub_10000EC9C(v5, a1 + *(v14 + 48), &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v7, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v13, &qword_10018F170, &qword_10012BFA0);
  sub_10000ABCC(v5, &qword_100188A28, &qword_100121D40);
  return sub_10000ABCC(v11, &qword_10018F170, &qword_10012BFA0);
}

uint64_t sub_1000AC3D8()
{
  type metadata accessor for FlowViewDataProvider(0);
  v1 = type metadata accessor for FlowListItemView(0);
  sub_100090EAC(*(v0 + *(v1 + 20)));
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000AC78(v2, v4, v6 & 1);

  static String.landingListTopicTitle.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  sub_10000AC88();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v7, v9, v11 & 1);
}

uint64_t sub_1000AC538()
{
  type metadata accessor for FlowViewDataProvider(0);
  v1 = type metadata accessor for FlowListItemView(0);
  sub_100090CE4(*(v0 + *(v1 + 20)));
  sub_10000AC24();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static HierarchicalShapeStyle.secondary.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10000AC78(v2, v4, v6 & 1);

  static String.landingListTopicDescription.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  sub_10000AC88();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v7, v9, v11 & 1);
}

uint64_t sub_1000AC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v3 = sub_100003768(&qword_10018F1D8, &qword_10012C0D8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_100003768(&qword_10018F130, &qword_10012BF60);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_100003768(&qword_10018F1E0, &qword_10012C0E0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  *v20 = static VerticalAlignment.top.getter();
  *(v20 + 1) = 0;
  v20[16] = 1;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = sub_100003768(&qword_10018F148, &qword_10012BF78);
  sub_1000ACC5C(a1, &v11[*(v21 + 44)]);
  sub_10000AAEC(&qword_10018F150, &qword_10018F130, &qword_10012BF60, &protocol conformance descriptor for VStack<A>);
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v11, &qword_10018F130, &qword_10012BF60);
  static Alignment.center.getter();
  v22 = &v20[*(sub_100003768(&qword_10018F1E8, &qword_10012C0E8) + 44)];
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000AD214(v14, v22);
  v23 = sub_100003768(&qword_10018F158, &qword_10012BF80);
  memcpy((v22 + *(v23 + 36)), __src, 0x70uLL);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v24 = sub_100003768(&qword_10018F1F0, &qword_10012C0F0);
  sub_1000ACAAC(&v8[*(v24 + 44)]);
  sub_10000EC9C(v20, v18, &qword_10018F1E0, &qword_10012C0E0);
  sub_10000EC9C(v8, v6, &qword_10018F1D8, &qword_10012C0D8);
  v25 = v29;
  sub_10000EC9C(v18, v29, &qword_10018F1E0, &qword_10012C0E0);
  v26 = sub_100003768(&qword_10018F1F8, &qword_10012C0F8);
  sub_10000EC9C(v6, v25 + *(v26 + 48), &qword_10018F1D8, &qword_10012C0D8);
  sub_10000ABCC(v8, &qword_10018F1D8, &qword_10012C0D8);
  sub_10000ABCC(v20, &qword_10018F1E0, &qword_10012C0E0);
  sub_10000ABCC(v6, &qword_10018F1D8, &qword_10012C0D8);
  return sub_10000ABCC(v18, &qword_10018F1E0, &qword_10012C0E0);
}

uint64_t sub_1000ACAAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_1000AC3D8();
  sub_1000AC538();
  sub_10000EC9C(v13, v8, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v11, v5, &qword_100188A28, &qword_100121D40);
  sub_10000EC9C(v8, a1, &qword_100188A28, &qword_100121D40);
  v14 = sub_100003768(&qword_10018F200, &unk_10012C100);
  sub_10000EC9C(v5, a1 + *(v14 + 48), &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v11, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v13, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v5, &qword_100188A28, &qword_100121D40);
  return sub_10000ABCC(v8, &qword_100188A28, &qword_100121D40);
}

uint64_t sub_1000ACC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100003768(qword_10018A760, &qword_100124970);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_100003768(&qword_10018F188, &qword_10012BFB8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v40 - v11);
  type metadata accessor for FlowViewDataProvider(0);
  v13 = *(a1 + *(type metadata accessor for FlowListItemView(0) + 20));
  sub_100090CF0(v13);
  v14 = Image.init(_internalSystemName:)();
  v15 = sub_10005A4EC(4484837, 1.0);
  v16 = (v12 + *(sub_100003768(&qword_10018F190, &qword_10012BFC0) + 36));
  v17 = *(sub_100003768(&qword_10018F198, &qword_10012BFC8) + 28);
  static SymbolColorRenderingMode.gradient.getter();
  v18 = type metadata accessor for SymbolColorRenderingMode();
  sub_100003CE8(v16 + v17, 0, 1, v18);
  *v16 = swift_getKeyPath();
  *v12 = v14;
  v12[1] = v15;
  v19 = (v12 + *(sub_100003768(&qword_10018F1A0, &unk_10012C000) + 36));
  v20 = *(sub_100003768(&qword_10018A7F8, &qword_100124AE8) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v21 = type metadata accessor for SymbolRenderingMode();
  sub_100003CE8(v19 + v20, 0, 1, v21);
  *v19 = swift_getKeyPath();
  v22 = v12 + *(sub_100003768(&qword_10018F1A8, &qword_10012C040) + 36);
  *v22 = 0;
  *(v22 + 4) = 1;
  static Font.Weight.semibold.getter();
  v23 = type metadata accessor for Font.Design();
  sub_100003CE8(v5, 1, 1, v23);
  v24 = static Font.system(size:weight:design:)();
  sub_10000ABCC(v5, qword_10018A760, &qword_100124970);
  KeyPath = swift_getKeyPath();
  v26 = (v12 + *(sub_100003768(&qword_10018F1B0, &qword_10012C078) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  LOBYTE(v24) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v12 + *(sub_100003768(&qword_10018F1B8, &unk_10012C080) + 36);
  *v35 = v24;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = (v12 + *(v7 + 44));
  sub_100003768(&qword_10018ACB0, &qword_100125420);
  sub_100090D40(v13);
  *v36 = swift_getKeyPath();
  sub_10000EC9C(v12, v10, &qword_10018F188, &qword_10012BFB8);
  v37 = v41;
  sub_10000EC9C(v10, v41, &qword_10018F188, &qword_10012BFB8);
  v38 = v37 + *(sub_100003768(&qword_10018F1C0, &qword_10012C0C0) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_10000ABCC(v12, &qword_10018F188, &qword_10012BFB8);
  return sub_10000ABCC(v10, &qword_10018F188, &qword_10012BFB8);
}

unint64_t sub_1000AD044()
{
  result = qword_10018F0D0;
  if (!qword_10018F0D0)
  {
    sub_100004D48(&qword_10018F0B8, &qword_10012BF08);
    sub_1000AD0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F0D0);
  }

  return result;
}

unint64_t sub_1000AD0C8()
{
  result = qword_10018F0D8;
  if (!qword_10018F0D8)
  {
    sub_100004D48(&qword_10018F0E0, &qword_10012BF20);
    sub_10000AAEC(&qword_10018F0E8, &qword_10018F0F0, &qword_10012BF28, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_10018F0F8, &qword_10018F100, &qword_10012BF30, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F0D8);
  }

  return result;
}

uint64_t sub_1000AD1AC(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_10018F0C8, &qword_10012BF18);
  sub_10000AF7C();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000AD214(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F138, &qword_10012BF68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AD354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_100003768(a5, a6);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = &v15 - v12;
  sub_10000EC9C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

unint64_t sub_1000AD43C()
{
  result = qword_10018F208;
  if (!qword_10018F208)
  {
    sub_100004D48(&qword_10018F108, &qword_10012BF38);
    sub_1000AD4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F208);
  }

  return result;
}

unint64_t sub_1000AD4C8()
{
  result = qword_10018F210[0];
  if (!qword_10018F210[0])
  {
    sub_100004D48(&qword_10018F0C8, &qword_10012BF18);
    sub_100004D48(&qword_10018F0B8, &qword_10012BF08);
    sub_1000AD044();
    swift_getOpaqueTypeConformance2();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10018F210);
  }

  return result;
}

uint64_t sub_1000AD5D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  swift_storeEnumTagMultiPayload();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100121620;
  sub_10003F5BC(v15, v17 + v16);
  sub_10000B4E0(v27, v26);
  sub_10000B4E0(v26, v25);
  v24 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v17 + v16, v13);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v13, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1000ED69C(v10, 1, sub_10005A438, v18);
  sub_10003F620(v13);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v19 = v24;
  sub_10000B4E0(v25, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v20 = Environment.init<A>(_:)();
  LOBYTE(v13) = v21;
  sub_10001035C(v25);
  sub_10001035C(v26);
  sub_10001035C(v27);
  result = sub_10003F620(v15);
  *a3 = v20;
  *(a3 + 8) = v13 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v19;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  return result;
}

uint64_t sub_1000AD8AC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000AD8F4(uint64_t a1)
{
  sub_100019A50(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionInfo(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1000ADD64();
        if (v4 <= 0x3F)
        {
          sub_1000ADDB4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000AD9C4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1000ADB20);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  v18 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0x80000000) != 0)
  {
    return sub_10000E5F0((v18 + v7 + 24) & ~v7, v6, v4);
  }

  v19 = *(v18 + 16);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

void sub_1000ADB34(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        return;
      case 2:
        *(a1 + v11) = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1000ADD24);
    case 4:
      *(a1 + v11) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v18 = a1 & 0xFFFFFFFFFFFFFFF8;
        if ((v8 & 0x80000000) != 0)
        {

          sub_100003CE8((v18 + v10 + 24) & ~v10, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v19 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v19 = (a2 - 1);
          }

          *(v18 + 16) = v19;
        }
      }

      return;
  }
}

void sub_1000ADD64()
{
  if (!qword_10018B490)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B490);
    }
  }
}

void sub_1000ADDB4(uint64_t a1)
{
  if (!qword_10018A9A0)
  {
    sub_100004D48(&qword_10018A9A8, qword_100125100);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10018A9A0);
    }
  }
}

uint64_t sub_1000ADE5C()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    sub_100096B28();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1000ADF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60[1] = a2;
  v4 = sub_100004D48(&qword_10018F298, &unk_10012C280);
  v5 = *(a1 + 16);
  sub_1000AFEA4();
  v9 = sub_10000AAEC(v6, v7, &unk_10012C280, v8);
  v10 = *(a1 + 24);
  v70 = v4;
  v98 = v4;
  v99 = v5;
  v69 = v5;
  v67 = v9;
  v100 = v9;
  v101 = v10;
  v66 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  v11 = type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  v68 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v61 = v13;
  v15 = __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v60 - v18;
  v20 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v60[0] = v21;
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v25 = v60 - v24;
  v63 = type metadata accessor for _ConditionalContent();
  sub_100008780();
  v62 = v26;
  __chkstk_darwin(v27);
  v65 = v60 - v28;
  v29 = *(v2 + *(a1 + 48));
  v64 = v11;
  if (v29)
  {

    sub_1000AE720(a1, v19);
    v79 = v29;
    v30 = sub_1000AFE50();
    v31 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v77 = v30;
    v78 = v31;
    sub_1000AFEC0();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v75 = WitnessTable;
    v76 = v33;
    v34 = swift_getWitnessTable();
    v35 = sub_10005D6CC();
    v73 = v34;
    v74 = v35;
    sub_100096B28();
    v36 = swift_getWitnessTable();
    View.tint<A>(_:)();
    (*(v61 + 8))(v19, v12);
    v71 = v36;
    v72 = v33;
    swift_getWitnessTable();
    sub_1000AFED8();
    sub_1000C6A00();
    v37 = *(v60[0] + 8);
    v38 = sub_1000AFED8();
    v37(v38);
    sub_1000C6A00();
    sub_1000AFED8();
    sub_1000C2A90();

    v39 = sub_1000AFED8();
    v37(v39);
    (v37)(v25, v20);
  }

  else
  {
    sub_1000AE720(a1, v17);
    v40 = sub_1000AFE50();
    v41 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v96 = v40;
    v97 = v41;
    v42 = swift_getWitnessTable();
    v43 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    v94 = v42;
    v95 = v43;
    v44 = swift_getWitnessTable();
    v45 = sub_10005D6CC();
    v92 = v44;
    v93 = v45;
    v46 = swift_getWitnessTable();
    sub_100096B28();
    sub_1000C6A00();
    v47 = *(v61 + 8);
    v48 = sub_100096B28();
    v47(v48);
    sub_1000C6A00();
    v90 = v46;
    v91 = v43;
    swift_getWitnessTable();
    sub_1000C2B40();
    v49 = sub_100096B28();
    v47(v49);
    (v47)(v19, v12);
  }

  v50 = sub_1000AFE50();
  v51 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v88 = v50;
  v89 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v86 = v52;
  v87 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_10005D6CC();
  v84 = v54;
  v85 = v55;
  v56 = swift_getWitnessTable();
  v82 = v56;
  v83 = v53;
  v80 = swift_getWitnessTable();
  v81 = v56;
  sub_10009988C();
  v57 = v63;
  swift_getWitnessTable();
  v58 = v65;
  sub_1000C6A00();
  return (*(v62 + 8))(v58, v57);
}

uint64_t sub_1000AE720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v46 = a2;
  v4 = type metadata accessor for ControlSize();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018F298, &unk_10012C280);
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = *(a1 + 16);
  v36 = sub_10000AAEC(&qword_10018F2A0, &qword_10018F298, &unk_10012C280, &protocol conformance descriptor for Button<A>);
  v10 = *(a1 + 24);
  v54 = v6;
  v55 = v9;
  v56 = v36;
  v57 = v10;
  v37 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = &v31 - v11;
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  v13 = type metadata accessor for ModifiedContent();
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v32 = &v31 - v14;
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  v40 = type metadata accessor for ModifiedContent();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v31 - v15;
  sub_1000AED2C(v2, v9, v10, v16);
  v47 = v9;
  v48 = v10;
  v49 = v2;
  v31 = v2;
  sub_100003768(&qword_10018F2C8, &qword_10012C298);
  sub_1000AF60C();
  Button.init(action:label:)();
  v17 = v34;
  v18 = v36;
  View.buttonStyle<A>(_:)();
  (*(v39 + 8))(v8, v6);
  v19 = v43;
  v20 = v44;
  v21 = v45;
  (*(v44 + 104))(v43, enum case for ControlSize.large(_:), v45);
  v54 = v6;
  v55 = v9;
  v56 = v18;
  v57 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v32;
  v24 = OpaqueTypeMetadata2;
  View.controlSize(_:)();
  (*(v20 + 8))(v19, v21);
  (*(v38 + 8))(v12, v24);
  v54 = *(v31 + *(v17 + 48));
  v25 = sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v52 = OpaqueTypeConformance2;
  v53 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = v35;
  View.tint<A>(_:)();
  (*(v41 + 8))(v23, v13);
  v28 = sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v50 = WitnessTable;
  v51 = v28;
  v29 = v40;
  swift_getWitnessTable();
  View.flowListRowStyle()(v29);
  return (*(v42 + 8))(v27, v29);
}

uint64_t (*sub_1000AED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FlowStepActionButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1000AFB9C;
}

uint64_t sub_1000AEEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v62 = a1;
  v61 = a4;
  v60 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  v5 = __chkstk_darwin(v60);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v52 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v64 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v52 - v11;
  v58 = sub_100003768(&qword_10018F2E0, &qword_10012C2A8);
  __chkstk_darwin(v58);
  v57 = &v52 - v12;
  v13 = sub_100003768(&qword_10018F2F0, &unk_10012C2B0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v68 = sub_100003768(&qword_10018F2D8, &qword_10012C2A0);
  __chkstk_darwin(v68);
  v17 = &v52 - v16;
  v56 = sub_100003768(&qword_10018F310, &qword_10012C2C8);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - v18;
  v19 = (*(a1 + 16) + OBJC_IVAR____TtC11SupportFlow10ActionInfo_text);
  v20 = v19[1];
  __src[0] = *v19;
  __src[1] = v20;
  sub_10000AC24();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  __src[0] = v21;
  __src[1] = v22;
  v25 = v24 & 1;
  LOBYTE(__src[2]) = v24 & 1;
  __src[3] = v26;
  static String.stepSectionActionButtonTitle.getter();
  View.accessibilityIdentifier(_:)();

  v27 = v23;
  v28 = v63;
  sub_10000AC78(v21, v27, v25);

  KeyPath = swift_getKeyPath();
  v30 = &v15[*(v13 + 36)];
  *v30 = KeyPath;
  v30[8] = 1;
  static Font.Weight.semibold.getter();
  sub_1000AF828();
  v31 = v64;
  View.fontWeight(_:)();
  sub_100044F98(v15, &qword_10018F2F0, &unk_10012C2B0);
  v33 = type metadata accessor for FlowStepActionButton(0, v66, v67, v32);
  v34 = *(v62 + *(v33 + 44));
  v35 = swift_getKeyPath();
  v36 = *(v68 + 36);
  v67 = v17;
  v37 = &v17[v36];
  v38 = v65;
  *v37 = v35;
  v37[1] = v34;
  v39 = v31[13];
  v39(v28, enum case for DynamicTypeSize.medium(_:), v8);
  v39(v38, enum case for DynamicTypeSize.accessibility3(_:), v8);
  sub_1000AF8F0(&qword_10018F318, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v41 = v31[4];
    v42 = v59;
    v41(v59, v28, v8);
    v43 = v60;
    v41((v42 + *(v60 + 48)), v38, v8);
    v44 = v53;
    sub_1000AF938(v42, v53);
    v45 = *(v43 + 48);
    v46 = v57;
    v41(v57, v44, v8);
    v47 = v31[1];
    v47(v44 + v45, v8);
    sub_1000AF9A8(v42, v44);
    v41((v46 + *(v58 + 36)), (v44 + *(v43 + 48)), v8);
    v47(v44, v8);
    sub_1000AF734();
    sub_10000AAEC(&qword_10018F300, &qword_10018F2E0, &qword_10012C2A8, &protocol conformance descriptor for ClosedRange<A>);
    v48 = v54;
    v49 = v67;
    View.dynamicTypeSize<A>(_:)();
    sub_100044F98(v46, &qword_10018F2E0, &qword_10012C2A8);
    sub_1000AFA18(v49);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v50 = v61;
    (*(v55 + 32))(v61, v48, v56);
    v51 = sub_100003768(&qword_10018F2C8, &qword_10012C298);
    return memcpy((v50 + *(v51 + 36)), __src, 0x70uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AF60C()
{
  result = qword_10018F2D0;
  if (!qword_10018F2D0)
  {
    sub_100004D48(&qword_10018F2C8, &qword_10012C298);
    sub_100004D48(&qword_10018F2D8, &qword_10012C2A0);
    sub_100004D48(&qword_10018F2E0, &qword_10012C2A8);
    sub_1000AF734();
    sub_10000AAEC(&qword_10018F300, &qword_10018F2E0, &qword_10012C2A8, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2D0);
  }

  return result;
}

unint64_t sub_1000AF734()
{
  result = qword_10018F2E8;
  if (!qword_10018F2E8)
  {
    sub_100004D48(&qword_10018F2D8, &qword_10012C2A0);
    sub_100004D48(&qword_10018F2F0, &unk_10012C2B0);
    sub_1000AF828();
    swift_getOpaqueTypeConformance2();
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2E8);
  }

  return result;
}

unint64_t sub_1000AF828()
{
  result = qword_10018F2F8;
  if (!qword_10018F2F8)
  {
    sub_100004D48(&qword_10018F2F0, &unk_10012C2B0);
    sub_1000AA5AC();
    sub_10000AAEC(&qword_100189DB8, &qword_100189DC0, &qword_100124BB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F2F8);
  }

  return result;
}

uint64_t sub_1000AF8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AF938(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018F308, &qword_10012C2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AFA18(uint64_t a1)
{
  sub_100003768(&qword_10018F2D8, &qword_10012C2A0);
  sub_10000C31C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1000AFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FlowStepActionButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  if (*(v4 + v8 + v6[15]))
  {
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_1000AFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for FlowStepActionButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000AEE64(v9, v5, v6, v7);
}

uint64_t sub_1000AFC20(uint64_t *a1)
{
  sub_100004D48(&qword_10018F298, &unk_10012C280);
  sub_1000AFEA4();
  sub_10000AAEC(v1, v2, &unk_10012C280, v3);
  swift_getOpaqueTypeMetadata2();
  sub_100004D48(&qword_10018F2A8, &qword_10012F6B0);
  type metadata accessor for ModifiedContent();
  sub_100004D48(&qword_10018F2B0, &qword_10012C290);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  sub_1000AFEC0();
  swift_getWitnessTable();
  sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_10005D6CC();
  sub_100096B28();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000AFE50()
{
  v2 = *(v0 - 352);
  *(v0 - 120) = *(v0 - 344);
  *(v0 - 112) = v2;
  v3 = *(v0 - 376);
  *(v0 - 104) = *(v0 - 368);
  *(v0 - 96) = v3;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000AFEE4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v8 = v7 - v6;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v8, enum case for SupportFlowIdentifier.disabledAccount(_:), v4);

  sub_100105728(v8, &type metadata for DisabledAccountStepOverrideProvider, a1, 0, 0, v9);
  v11 = v10;
  swift_retain_n();
  sub_1001081CC(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100106418();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_100104A98();

  return v11;
}

uint64_t sub_1000B0134()
{
  v1 = qword_10018F320;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1000B0190()
{
  v0 = sub_10011484C();
  v1 = qword_10018F320;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DisabledAccountFlowViewModel(uint64_t a1)
{
  result = qword_10018F350;
  if (!qword_10018F350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000B02A0@<D0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_100064C6C();

  v11 = sub_10000737C();
  *a3 = 0xD000000000000010;
  *(a3 + 8) = 0x8000000100137D80;
  *(a3 + 16) = v10;
  result = v14[0];
  *(a3 + 17) = *v14;
  *(a3 + 32) = *(&v14[1] + 7);
  *(a3 + 40) = &type metadata for WiFiStepProvider;
  *(a3 + 48) = v11;
  return result;
}

unint64_t sub_1000B0448()
{
  result = qword_10018F658;
  if (!qword_10018F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F658);
  }

  return result;
}

uint64_t type metadata accessor for FlowImage(uint64_t a1)
{
  result = qword_10018F6D0;
  if (!qword_10018F6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B04E8(uint64_t a1)
{
  result = type metadata accessor for FlowAsset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FlowSymbol(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B0590(uint64_t a1, uint64_t a2)
{
  v2 = static HorizontalAlignment.center.getter();
  v12 = 1;
  static Font.title.getter();
  v3 = Text.font(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  __src[0] = v2;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 1) = v3;
  *&__src[2] = v5;
  BYTE8(__src[2]) = v7 & 1;
  *&__src[3] = v9;
  BYTE8(__src[3]) = static Edge.Set.all.getter();
  memset(&__src[4], 0, 32);
  LOBYTE(__src[6]) = 1;
  sub_100003768(&qword_10018F708, &qword_10012C4C8);
  sub_1000B06E0();
  sub_10000AC24();
  View.navigationTitle<A>(_:)();
  memcpy(__dst, __src, 0x61uLL);
  return sub_1000B0744(__dst);
}

unint64_t sub_1000B06E0()
{
  result = qword_10018F710;
  if (!qword_10018F710)
  {
    sub_100004D48(&qword_10018F708, &qword_10012C4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F710);
  }

  return result;
}

uint64_t sub_1000B0744(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018F708, &qword_10012C4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B07AC()
{
  sub_100004D48(&qword_10018F708, &qword_10012C4C8);
  sub_1000B06E0();
  sub_10000AC24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B0838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset(0);

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_1000B0894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset(0);

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowAssetView(uint64_t a1)
{
  result = qword_10018F770;
  if (!qword_10018F770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B092C(uint64_t a1)
{
  result = type metadata accessor for FlowAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1000B09B4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = type metadata accessor for ImageResource();
  sub_100008780();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000C30C();
  v16 = v15 - v14;
  v17 = type metadata accessor for FlowAsset(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  sub_10000C30C();
  v21 = v20 - v19;
  sub_1000B0CB0(v1, v20 - v19);
  (*(v12 + 32))(v16, v21, v10);
  Image.init(_:)();
  (*(v5 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v3);
  v22 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v9, v3);
  v23 = *(v1 + *(v18 + 32));
  v24 = (a1 + *(sub_100003768(&qword_10018F7A8, &qword_10012C538) + 36));
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v23;
  *(v24 + 1) = v23;
  *&v24[*(sub_100003768(&qword_10018C370, &qword_100127460) + 36)] = 256;
  *a1 = v22;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = (a1 + *(sub_100003768(&qword_10018F7B0, &unk_10012C540) + 36));
  *v28 = v30;
  v28[1] = v31;
  result = *&v32;
  v28[2] = v32;
  return result;
}

uint64_t sub_1000B0CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B0D18()
{
  result = qword_10018F7B8;
  if (!qword_10018F7B8)
  {
    sub_100004D48(&qword_10018F7B0, &unk_10012C540);
    sub_1000B0DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7B8);
  }

  return result;
}

unint64_t sub_1000B0DA4()
{
  result = qword_10018F7C0;
  if (!qword_10018F7C0)
  {
    sub_100004D48(&qword_10018F7A8, &qword_10012C538);
    sub_100010DA8();
    sub_1000B0E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7C0);
  }

  return result;
}

unint64_t sub_1000B0E30()
{
  result = qword_10018C368;
  if (!qword_10018C368)
  {
    sub_100004D48(&qword_10018C370, &qword_100127460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C368);
  }

  return result;
}

double sub_1000B0EC0@<D0>(unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = a2 >> 8;
  v11 = sub_10010C478();
  v13 = v12;

  *(a3 + 40) = &type metadata for AirPodsStepProvider;
  *(a3 + 48) = sub_100004C8C();
  *(a3 + 16) = v10;
  *a3 = v11;
  *(a3 + 8) = v13;
  result = 0.0;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B1138);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000B118C(char a1)
{
  result = 0x73692069462D6957;
  switch(a1)
  {
    case 1:
      result = 0x6E6E6F4320746F4ELL;
      break;
    case 2:
      result = 0x53206C616D726F4ELL;
      break;
    case 3:
      result = 0x676953206B616557;
      break;
    case 4:
      result = 0x2074726174736552;
      break;
    case 5:
      result = 0x65746544204E5056;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = sub_1000B184C(0x6F53u);
      break;
    case 8:
      result = 0x20746361746E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B1310(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176BB8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B135C(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 0x656E6E6F63736964;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0x4474726174736572;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = sub_1000B184C(0x6F73u);
      break;
    case 8:
      result = 0x53746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B14D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1310(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B1508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B135C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B1580()
{
  result = qword_10018F7C8;
  if (!qword_10018F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7C8);
  }

  return result;
}

unint64_t sub_1000B15D4()
{
  result = qword_10018F7D0;
  if (!qword_10018F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F7D0);
  }

  return result;
}

uint64_t sub_1000B1690(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018F7E0, &qword_10012C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B1748()
{
  result = qword_10018F828;
  if (!qword_10018F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F828);
  }

  return result;
}

unint64_t sub_1000B179C()
{
  result = qword_10018F830;
  if (!qword_10018F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F830);
  }

  return result;
}

unint64_t sub_1000B17F4()
{
  result = qword_10018F838;
  if (!qword_10018F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F838);
  }

  return result;
}

uint64_t sub_1000B185C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_1000B18A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();

  return sub_100003CE8(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SupportPlacardInfoItemType(uint64_t a1)
{
  result = qword_10018F8F8;
  if (!qword_10018F8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B1948(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_1000B1A0C@<X0>(void *a1@<X8>)
{
  result = sub_1000B19F0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B1A3C(uint64_t a1)
{
  result = sub_1000B2408(&qword_10018F928, &unk_10012C7DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B1A80(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100008780();
  v45 = v3;
  v46 = v2;
  __chkstk_darwin(v2);
  sub_10000C30C();
  v6 = v5 - v4;
  v7 = type metadata accessor for URL();
  sub_100008780();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000C30C();
  v13 = v12 - v11;
  v43 = type metadata accessor for SupportPlacardInfoItemType(0);
  __chkstk_darwin(v43);
  sub_10000C30C();
  v16 = v15 - v14;
  v17 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v23 = type metadata accessor for FlowImage(0);
  sub_100003CE8(v22, 1, 1, v23);
  sub_1000B24A8();
  v47 = a1;
  sub_1000B22C8(a1, v16, v24);
  v25 = *(v9 + 32);
  v44 = v7;
  v25(v13, v16, v7);
  if (qword_100188258 != -1)
  {
    swift_once();
  }

  v26 = sub_10000C2D4(v23, qword_10018F870);
  sub_1000B22C8(v26, v20, type metadata accessor for FlowImage);
  sub_1000B2330(v22);
  sub_100003CE8(v20, 0, 1, v23);
  sub_1000B2398(v20, v22);
  if (qword_100188240 != -1)
  {
    swift_once();
  }

  v27 = *algn_10018F848;
  v42 = qword_10018F840;
  v28 = qword_100188248;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_10018F850;
  v30 = *algn_10018F858;
  type metadata accessor for ActionInfo(0);
  v31 = qword_100188250;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1000EDC40(qword_10018F860, *algn_10018F868, v13);
  (*(v9 + 8))(v13, v44);
  sub_1000295B0(v22, v20);
  v48[3] = v43;
  v48[4] = sub_1000B2408(&qword_10018F930, &unk_10012C814);
  sub_10003EE2C(v48);
  sub_1000B24A8();
  v33 = v47;
  sub_1000B22C8(v47, v34, v35);

  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v45 + 8))(v6, v46);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v39 = sub_1000F04E8(0, v36, v38, v20, v42, v27, v29, v30, v32, v48);

  sub_1000B244C(v33);
  sub_1000B2330(v22);
  return v39;
}

uint64_t sub_1000B1F0C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F840 = result;
  *algn_10018F848 = v3;
  return result;
}

uint64_t sub_1000B2014()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F850 = result;
  *algn_10018F858 = v3;
  return result;
}

uint64_t sub_1000B211C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018F860 = result;
  *algn_10018F868 = v3;
  return result;
}

uint64_t sub_1000B2224()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_10018F870);
  v1 = sub_10000C2D4(v0, qword_10018F870);
  v1->i64[0] = 0xD00000000000001FLL;
  v1->i64[1] = 0x8000000100137F60;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000B22C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B2330(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B2398(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B2408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportPlacardInfoItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B244C(uint64_t a1)
{
  v2 = type metadata accessor for SupportPlacardInfoItemType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B24D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HandoffBundle(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B25A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HandoffBundle(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ShareDataWelcomeContent(uint64_t a1)
{
  result = qword_10018F990;
  if (!qword_10018F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B2698(uint64_t a1)
{
  result = type metadata accessor for HandoffBundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B27D8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for WelcomeContentType.welcome(_:);
  v3 = type metadata accessor for WelcomeContentType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000B2854()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  type metadata accessor for ShareDataWelcomeContent(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000B2C2C();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.primary(title:)();

  v4 = type metadata accessor for WelcomeAction();
  return sub_1000B2C40(v4);
}

uint64_t sub_1000B29BC()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = sub_10000ED84(v2);
  __chkstk_darwin(v3);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000B2C2C();
  String.init(localized:table:bundle:locale:comment:)();
  static WelcomeAction.secondary(title:)();

  v4 = type metadata accessor for WelcomeAction();
  return sub_1000B2C40(v4);
}

unint64_t sub_1000B2B94@<X0>(void *a1@<X8>)
{
  result = sub_1000B270C();
  *a1 = 0xD00000000000001FLL;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B2BC8()
{
  result = qword_10018F9C8;
  if (!qword_10018F9C8)
  {
    type metadata accessor for ShareDataWelcomeContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018F9C8);
  }

  return result;
}

uint64_t sub_1000B2C40(uint64_t a1)
{

  return sub_100003CE8(v1, 0, 1, a1);
}

uint64_t sub_1000B2C60(uint64_t a1)
{

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1000B2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B2D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ContactOptionsView(uint64_t a1)
{
  result = qword_10018FA28;
  if (!qword_10018FA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2E68(uint64_t a1)
{
  sub_1000B2F7C(319, &qword_100189460, type metadata accessor for FlowViewDataProvider, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000B2F7C(319, &qword_100189178, type metadata accessor for SupportSolutions.ChatInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000116B4();
      if (v3 <= 0x3F)
      {
        sub_100082404();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000B2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000B2FFC()
{
  v1 = v0;
  v2 = 0x69662E656E6F6870;
  v3 = type metadata accessor for ContactType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 != enum case for ContactType.call(_:))
  {
    if (v7 == enum case for ContactType.chat(_:))
    {
      return 0x2E6567617373656DLL;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  return v2;
}

uint64_t sub_1000B3164@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  type metadata accessor for PlainButtonStyle();
  sub_100008780();
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  sub_100008780();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_10018A8B8, &qword_100124F50);
  sub_10000AF7C();
  __chkstk_darwin(v12);
  v13 = sub_100003768(&qword_10018FA68, &qword_10012C9C0);
  sub_10000AF7C();
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v29 = v1;
  sub_1000B35FC();
  sub_100003768(&qword_10018FA70, &qword_10012C9C8);
  sub_1000350A8();
  sub_1000B471C();
  Section<>.init(header:content:)();
  static ListSectionSpacing.custom(_:)();
  v17 = *(sub_100003768(&qword_10018FA90, &qword_10012C9D8) + 36);
  (*(v8 + 16))(&v16[v17], v11, v6);
  sub_100003CE8(&v16[v17], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v19 = &v16[*(v13 + 36)];
  v20 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v8 + 32))(v19 + v20, v11, v6);
  sub_100003CE8(v19 + v20, 0, 1, v6);
  *v19 = KeyPath;
  PlainButtonStyle.init()();
  sub_1000B480C();
  sub_100035550();
  sub_1000353A4(v21, v22, &protocol conformance descriptor for PlainButtonStyle);
  v23 = v26;
  View.buttonStyle<A>(_:)();
  (*(v27 + 8))(v5, v23);
  return sub_10000ABCC(v16, &qword_10018FA68, &qword_10012C9C0);
}

uint64_t sub_1000B34C4(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018FA88, &qword_10012C9D0);
  __chkstk_darwin(v2);
  v4 = &v7 - v3;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100003768(&qword_10018FAB8, &qword_10012CA28);
  sub_1000B389C(a1, &v4[*(v5 + 44)]);
  static String.stepSectionContactOptions.getter();
  sub_10000AAEC(&qword_10018FA80, &qword_10018FA88, &qword_10012C9D0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v4, &qword_10018FA88, &qword_10012C9D0);
}

uint64_t sub_1000B35FC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for FlowStepSectionHeaderView(0);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188438 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = sub_10000C2D4(v5, qword_1001A5B00);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = type metadata accessor for FlowAsset(0);
  __asm { FMOV            V0.2D, #20.0 }

  *&v4[*(v7 + 20)] = _Q0;
  *&v4[*(v7 + 24)] = 0x4018000000000000;
  v13 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v4, 0, 1, v13);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v15 = &v4[*(v2 + 20)];
  *v15 = v14;
  v15[1] = v16;
  static String.stepSectionContactSupport.getter();
  sub_1000353A4(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
  View.accessibilityIdentifier(_:)();

  return sub_1000B4A14(v4);
}

uint64_t sub_1000B389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for ContactType();
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100003768(&qword_10018FAC0, &qword_10012CA30);
  __chkstk_darwin(v63);
  v61 = &v60 - v5;
  v72 = sub_100003768(&qword_10018FAC8, &qword_10012CA38);
  v6 = __chkstk_darwin(v72);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v60 - v8;
  v10 = sub_100003768(&qword_100189108, &unk_1001226E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v60 - v11;
  v13 = sub_100003768(&qword_10018FAD0, &qword_10012CA40);
  v14 = __chkstk_darwin(v13 - 8);
  v69 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v68 = &v60 - v17;
  v18 = __chkstk_darwin(v16);
  v71 = &v60 - v19;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = sub_100003768(&qword_10018FAD8, &qword_10012CA48);
  v23 = __chkstk_darwin(v22 - 8);
  v67 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v60 - v25;
  *v26 = static HorizontalAlignment.leading.getter();
  *(v26 + 1) = 0;
  v27 = 1;
  v26[16] = 1;
  sub_100003768(&qword_10018FAE0, &qword_10012CA50);
  v73 = v26;
  sub_1000B4080();
  v28 = type metadata accessor for ContactOptionsView(0);
  v29 = a1;
  sub_10000EC9C(a1 + *(v28 + 20), v12, &qword_100189108, &unk_1001226E0);
  v30 = type metadata accessor for SupportSolutions.ChatInfo(0);
  LODWORD(a1) = sub_10000E5F0(v12, 1, v30);
  sub_10000ABCC(v12, &qword_100189108, &unk_1001226E0);
  if (a1 != 1)
  {
    v31 = v64;
    v32 = v62;
    (*(v64 + 104))(v62, enum case for ContactType.chat(_:), v3);
    v33 = v61;
    sub_1000B41BC(v32, v61);
    (*(v31 + 8))(v32, v3);
    sub_1000B4A70();
    v66 = v3;
    v34 = v9;
    v35 = v65;
    View.accessibility(sortPriority:)();
    sub_10000ABCC(v33, &qword_10018FAC0, &qword_10012CA30);
    LocalizedStringKey.init(stringLiteral:)();
    v36 = Text.init(_:tableName:bundle:comment:)();
    v38 = v37;
    LOBYTE(v33) = v39;
    ModifiedContent<>.accessibilityLabel(_:)();
    sub_10000AC78(v36, v38, v33 & 1);

    v40 = v35;
    v9 = v34;
    v3 = v66;
    sub_10000ABCC(v40, &qword_10018FAC8, &qword_10012CA38);
    sub_1000B4C10(v9, v21);
    v27 = 0;
  }

  v66 = v21;
  v41 = v72;
  sub_100003CE8(v21, v27, 1, v72);
  v42 = 1;
  if (*(v29 + *(v28 + 24) + 8) != 1)
  {
    v43 = v64;
    v44 = v62;
    (*(v64 + 104))(v62, enum case for ContactType.call(_:), v3);
    v45 = v61;
    sub_1000B41BC(v44, v61);
    (*(v43 + 8))(v44, v3);
    sub_1000B4A70();
    v46 = v65;
    View.accessibility(sortPriority:)();
    sub_10000ABCC(v45, &qword_10018FAC0, &qword_10012CA30);
    LocalizedStringKey.init(stringLiteral:)();
    v47 = Text.init(_:tableName:bundle:comment:)();
    v49 = v48;
    LOBYTE(v45) = v50;
    ModifiedContent<>.accessibilityLabel(_:)();
    sub_10000AC78(v47, v49, v45 & 1);

    sub_10000ABCC(v46, &qword_10018FAC8, &qword_10012CA38);
    sub_1000B4C10(v9, v71);
    v42 = 0;
  }

  v51 = v71;
  sub_100003CE8(v71, v42, 1, v41);
  v52 = v67;
  sub_10000EC9C(v73, v67, &qword_10018FAD8, &qword_10012CA48);
  v53 = v66;
  v54 = v68;
  sub_10000EC9C(v66, v68, &qword_10018FAD0, &qword_10012CA40);
  v55 = v69;
  sub_10000EC9C(v51, v69, &qword_10018FAD0, &qword_10012CA40);
  v56 = v70;
  sub_10000EC9C(v52, v70, &qword_10018FAD8, &qword_10012CA48);
  v57 = sub_100003768(&qword_10018FAE8, &qword_10012CA58);
  v58 = v56 + v57[12];
  *v58 = 0;
  *(v58 + 8) = 1;
  sub_10000EC9C(v54, v56 + v57[16], &qword_10018FAD0, &qword_10012CA40);
  sub_10000EC9C(v55, v56 + v57[20], &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v51, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v53, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v73, &qword_10018FAD8, &qword_10012CA48);
  sub_10000ABCC(v55, &qword_10018FAD0, &qword_10012CA40);
  sub_10000ABCC(v54, &qword_10018FAD0, &qword_10012CA40);
  return sub_10000ABCC(v52, &qword_10018FAD8, &qword_10012CA48);
}

uint64_t sub_1000B4080()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000AC78(v0, v2, v4 & 1);

  static String.stepSectionContactOptionsTitle.getter();
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v5, v7, v9 & 1);
}

uint64_t sub_1000B41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[1] = a2;
  v5 = type metadata accessor for ContactType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for ContactOptionsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_100003768(&qword_10018FB00, &qword_10012CA60);
  __chkstk_darwin(v25[0]);
  v13 = v25 - v12;
  sub_1000B4C80(v3, v11);
  (*(v6 + 16))(v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1000B4EC4(v11, v16 + v14);
  (*(v6 + 32))(v16 + v15, v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25[4] = a1;
  sub_100003768(&qword_10018FB28, &qword_10012CA78);
  sub_1000B4FFC();
  Button.init(action:label:)();
  v17 = [objc_opt_self() quaternarySystemFillColor];
  v18 = Color.init(_:)();
  v19 = &v13[*(v25[0] + 36)];
  *v19 = v18;
  *(v19 + 4) = 256;
  static String.stepSectionContactOptionFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100121620;
  v21 = ContactType.id.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100017A18();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  String.init(format:_:)();

  sub_1000B4B2C();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v13, &qword_10018FB00, &qword_10012CA60);
}

void sub_1000B4578(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000B2FFC();
  Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v7 = static Color.blue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13[0] = 1;
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  *(a1 + 64) = v16;
  *(a1 + 80) = v2;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = 0;
}

unint64_t sub_1000B471C()
{
  result = qword_10018FA78;
  if (!qword_10018FA78)
  {
    sub_100004D48(&qword_10018FA70, &qword_10012C9C8);
    sub_10000AAEC(&qword_10018FA80, &qword_10018FA88, &qword_10012C9D0, &protocol conformance descriptor for HStack<A>);
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FA78);
  }

  return result;
}

unint64_t sub_1000B480C()
{
  result = qword_10018FA98;
  if (!qword_10018FA98)
  {
    sub_100004D48(&qword_10018FA68, &qword_10012C9C0);
    sub_1000B48C4();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FA98);
  }

  return result;
}

unint64_t sub_1000B48C4()
{
  result = qword_10018FAA0;
  if (!qword_10018FAA0)
  {
    sub_100004D48(&qword_10018FA90, &qword_10012C9D8);
    sub_1000B497C();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAA0);
  }

  return result;
}

unint64_t sub_1000B497C()
{
  result = qword_10018FAA8;
  if (!qword_10018FAA8)
  {
    sub_100004D48(&qword_10018FAB0, &unk_10012CA18);
    sub_1000350A8();
    sub_1000B471C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAA8);
  }

  return result;
}

uint64_t sub_1000B4A14(uint64_t a1)
{
  v2 = type metadata accessor for FlowStepSectionHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B4A70()
{
  result = qword_10018FAF0;
  if (!qword_10018FAF0)
  {
    sub_100004D48(&qword_10018FAC0, &qword_10012CA30);
    sub_1000B4B2C();
    sub_1000353A4(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAF0);
  }

  return result;
}

unint64_t sub_1000B4B2C()
{
  result = qword_10018FAF8;
  if (!qword_10018FAF8)
  {
    sub_100004D48(&qword_10018FB00, &qword_10012CA60);
    sub_10000AAEC(&qword_10018FB08, &qword_10018FB10, &qword_10012CA68, &protocol conformance descriptor for Button<A>);
    sub_10000AAEC(&qword_10018FB18, &qword_10018FB20, &qword_10012CA70, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FAF8);
  }

  return result;
}

uint64_t sub_1000B4C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018FAC8, &qword_10012CA38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactOptionsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4CE4()
{
  v1 = type metadata accessor for ContactOptionsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for ContactType();
  sub_100008780();
  v6 = v5;
  v7 = *(v5 + 80);
  v17 = *(v8 + 64);
  v9 = v0 + v3;

  v10 = *(v1 + 20);
  v11 = type metadata accessor for SupportSolutions.ChatInfo(0);
  if (!sub_10000E5F0(v0 + v3 + v10, 1, v11))
  {
    v12 = type metadata accessor for URL();
    if (!sub_10000E5F0(v9 + v10, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }
  }

  if (*(v9 + *(v1 + 24) + 8) != 1)
  {
  }

  v13 = v2 | v7;
  v14 = (v3 + v16 + v7) & ~v7;

  (*(v6 + 8))(v0 + v14, v4);

  return _swift_deallocObject(v0, v14 + v17, v13 | 7);
}

uint64_t sub_1000B4EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactOptionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B4F28()
{
  v1 = *(type metadata accessor for ContactOptionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ContactType() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000B4534(v0 + v2, v5);
}

unint64_t sub_1000B4FFC()
{
  result = qword_10018FB30;
  if (!qword_10018FB30)
  {
    sub_100004D48(&qword_10018FB28, &qword_10012CA78);
    sub_1000B5088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB30);
  }

  return result;
}

unint64_t sub_1000B5088()
{
  result = qword_10018FB38;
  if (!qword_10018FB38)
  {
    sub_100004D48(&qword_10018FB40, &qword_10012CA80);
    sub_1000B5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB38);
  }

  return result;
}

unint64_t sub_1000B5114()
{
  result = qword_10018FB48;
  if (!qword_10018FB48)
  {
    sub_100004D48(&qword_10018FB50, &qword_10012CA88);
    sub_100010DA8();
    sub_10000AAEC(&qword_10018ACE8, &qword_10018ACF0, &unk_100125430, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB48);
  }

  return result;
}

uint64_t sub_1000B51CC()
{
  sub_100004D48(&qword_10018FA68, &qword_10012C9C0);
  type metadata accessor for PlainButtonStyle();
  sub_1000B480C();
  sub_100035550();
  sub_1000353A4(v0, v1, &protocol conformance descriptor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B5278(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B52CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B5364()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1000B54A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlacardInfoItemType(0);
  sub_10000AF7C();
  __chkstk_darwin(v4);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 40) == 1 && *(v2 + 32) == 2)
  {
    v49[1] = a1;
    if (*(v2 + 24))
    {
      v11 = *(v2 + 16);
      v12 = *(v2 + 24);
    }

    else
    {
      v12 = 0x8000000100132C80;
      v11 = 0xD000000000000014;
    }

    type metadata accessor for PlacardInfoItem(0);
    *v6 = 1;
    sub_100096D88();
    swift_storeEnumTagMultiPayload();
    v30 = *(v2 + 88);
    v31 = *(v2 + 96);

    sub_100006568(v30, v31);
    v32 = sub_100096D88();
    v34 = sub_1000EFDB8(v32, v33, v31);
    sub_1000B5F6C();
    sub_10000EC9C(v35, v36, v37, &qword_1001221A0);
    sub_100003768(&qword_10018B570, &qword_100125E78);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100125DA0;
    *(v38 + 32) = v34;
    sub_1000B5F78(__src);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();
    v39 = Environment.init<A>(_:)();
    LOBYTE(v31) = v40;
    sub_10000ABCC(v50, &qword_100189310, &qword_1001221A0);
    __src[0] = v39;
    LOBYTE(__src[1]) = v31 & 1;
    __src[2] = v11;
    __src[3] = v12;
    __src[10] = 0;
    __src[11] = 0;
    __src[4] = v38;
    sub_10000B5A8(v2, v50);
    v41 = swift_allocObject();
    memcpy((v41 + 16), v50, 0x68uLL);
    memcpy(v52, __src, sizeof(v52));
    sub_10000B5A8(v2, v50);
    v42 = swift_allocObject();
    memcpy((v42 + 16), v50, 0x68uLL);
    memcpy(__src, v52, 0x60uLL);
    __src[12] = sub_1000B5CE4;
    __src[13] = v41;
    v54 = 0u;
    v55 = 0u;
    v56 = sub_1000B5D4C;
    v57 = v42;
    v23 = &qword_10018FB58;
    v24 = &qword_10012CBE0;
    sub_1000B5F6C();
    sub_10000EC9C(v43, v44, v45, &qword_10012CBE0);
    v51 = 0;
    sub_100003768(&qword_10018FB58, &qword_10012CBE0);
    sub_100003768(&qword_10018FB60, &qword_10012CBE8);
    sub_1000B5F54();
    sub_1000B5D84(v46, &qword_10018FB58, &qword_10012CBE0, v47);
    sub_1000B5E08();
  }

  else
  {
    if (*(v2 + 41) == 1)
    {
      sub_10000EC9C(v2 + 48, &v52[2], &qword_100189310, &qword_1001221A0);
      strcpy(v52, "SU_COMING_SOON");
      HIBYTE(v52[1]) = -18;
      memset(&v52[7], 0, 40);
      sub_1000B5F6C();
      sub_10000EC9C(v8, v9, v10, &unk_100121480);
      v50[96] = 0;
      sub_100003768(&unk_1001893B0, &unk_100121480);
      sub_100004CE4();
      sub_1000103C8();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v52, &unk_1001893B0, &unk_100121480);
    }

    else
    {
      type metadata accessor for PlacardInfoItem(0);
      *v6 = 0;
      sub_100096D88();
      swift_storeEnumTagMultiPayload();
      v13 = *(v2 + 96);
      sub_100006568(*(v2 + 88), v13);
      v14 = sub_100096D88();
      v16 = sub_1000EFDB8(v14, v15, v13);
      sub_1000B5F6C();
      sub_10000EC9C(v17, v18, v19, &qword_1001221A0);
      sub_100003768(&qword_10018B570, &qword_100125E78);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100125DA0;
      *(v20 + 32) = v16;
      sub_1000B5F78(v52);
      type metadata accessor for FlowViewDataProvider(0);
      sub_10000B550();
      v21 = Environment.init<A>(_:)();
      LOBYTE(v13) = v22;
      sub_10000ABCC(v50, &qword_100189310, &qword_1001221A0);
      v52[0] = v21;
      LOBYTE(v52[1]) = v13 & 1;
      v52[2] = 0xD00000000000001BLL;
      v52[3] = 0x8000000100132C30;
      v52[10] = 0;
      v52[11] = 0;
      v52[4] = v20;
      sub_10002BE1C(v52, v50);
      v50[96] = 1;
      sub_100003768(&unk_1001893B0, &unk_100121480);
      sub_100004CE4();
      sub_1000103C8();
      _ConditionalContent<>.init(storage:)();
      sub_1000688DC(v52);
    }

    v23 = &qword_10018FB60;
    v24 = &qword_10012CBE8;
    sub_1000B5F6C();
    sub_10000EC9C(v25, v26, v27, &qword_10012CBE8);
    v51 = 1;
    sub_100003768(&qword_10018FB58, &qword_10012CBE0);
    sub_100003768(&qword_10018FB60, &qword_10012CBE8);
    sub_1000B5F54();
    sub_1000B5D84(v28, &qword_10018FB58, &qword_10012CBE0, v29);
    sub_1000B5E08();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10000ABCC(__src, v23, v24);
}

uint64_t sub_1000B5A98(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1000B5364();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  static ReentrySignal.softwareUpdate.getter();
  v7 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v4, 0, 1, v7);
  sub_100085E7C(v6, v5, v4);

  return sub_10000ABCC(v4, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_1000B5B7C(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8[1] = *a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t sub_1000B5CEC()
{

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B5D84(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B5E08()
{
  result = qword_10018FB80;
  if (!qword_10018FB80)
  {
    sub_100004D48(&qword_10018FB60, &qword_10012CBE8);
    sub_100004CE4();
    sub_1000103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB80);
  }

  return result;
}

unint64_t sub_1000B5E98()
{
  result = qword_10018FB88;
  if (!qword_10018FB88)
  {
    sub_100004D48(&qword_10018FB90, &qword_10012CC08);
    sub_1000B5D84(&qword_10018FB68, &qword_10018FB58, &qword_10012CBE0, sub_1000B5D54);
    sub_1000B5E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FB88);
  }

  return result;
}

uint64_t sub_1000B5F78@<X0>(uint64_t a1@<X8>)
{

  return sub_10000EC9C(v1 + 16, a1 + 40, v2, v3);
}

uint64_t sub_1000B5FC4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_1000B6104@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = sub_1000B61C0(a1, a2 & 1, a3);
  sub_1000B5FC4(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  result = sub_10001362C();
  a4[1] = v10;
  a4[2] = v12;
  *a4 = v8;
  a4[6] = result;
  a4[7] = 0;
  a4[8] = 0;
  a4[9] = v11;
  a4[10] = 0;
  a4[11] = 0;
  return result;
}

uint64_t sub_1000B61C0(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v8 = 1;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v9 + 32) = a3;

  sub_1000136E0(a3);
  return sub_1000ED69C(v8, 1, sub_1000B637C, v9);
}

uint64_t sub_1000B62CC(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000B5FC4(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_1000B6334()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000B6394(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176D10, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B63E0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x53656761726F7473;
}

unint64_t sub_1000B6474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B6394(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B64A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B63E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000B64D0(uint64_t *a1@<X8>)
{
  sub_1000E7430(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1000B64FC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "Settings.General/STORAGE_MGMT";
      v3 = 0xD000000000000045;
      if (qword_100188268 != -1)
      {
        swift_once();
      }

      v4 = &qword_10018FBA8;
    }

    else
    {
      v2 = "t options section in step view.";
      v3 = 0xD00000000000003DLL;
      if (qword_100188270 != -1)
      {
        swift_once();
      }

      v4 = &qword_10018FBB8;
    }
  }

  else
  {
    v3 = 0xD000000000000032;
    v2 = "/ResetNetworkSettings";
    if (qword_100188260 != -1)
    {
      swift_once();
    }

    v4 = &qword_10018FB98;
  }

  v5 = *v4;
  v6 = v4[1];

  v9 = &type metadata for GeneralActionInfoType;
  v10 = sub_1000B698C();
  v8[0] = a1;
  return sub_1000ED3F8(v5, v6, v3, v2 | 0x8000000000000000, v8);
}

uint64_t sub_1000B6674()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FB98 = result;
  unk_10018FBA0 = v3;
  return result;
}

uint64_t sub_1000B677C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FBA8 = result;
  unk_10018FBB0 = v3;
  return result;
}

uint64_t sub_1000B6884()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018FBB8 = result;
  unk_10018FBC0 = v3;
  return result;
}

unint64_t sub_1000B698C()
{
  result = qword_10018FBC8;
  if (!qword_10018FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B6AACLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B6AE8()
{
  result = qword_10018FBD0;
  if (!qword_10018FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBD0);
  }

  return result;
}

unint64_t sub_1000B6B3C(uint64_t a1)
{
  result = sub_1000B6B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B6B64()
{
  result = qword_10018FBD8;
  if (!qword_10018FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBD8);
  }

  return result;
}

uint64_t sub_1000B6BE4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_1000B6D24@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = sub_1000B6DE0(a1, a2 & 1, a3);
  sub_1000B6BE4(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  result = sub_10001362C();
  a4[1] = v10;
  a4[2] = v12;
  *a4 = v8;
  a4[6] = result;
  a4[7] = 0;
  a4[8] = 0;
  a4[9] = v11;
  a4[10] = 0;
  a4[11] = 0;
  return result;
}

uint64_t sub_1000B6DE0(uint64_t a1, char a2, unint64_t a3)
{
  v6 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v8 = 1;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v9 + 32) = a3;

  sub_1000136E0(a3);
  return sub_1000ED69C(v8, 1, sub_1000B6F9C, v9);
}

uint64_t sub_1000B6EEC(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000B6BE4(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_1000B6F54()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000B6FB4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;
  result = State.init(wrappedValue:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0xD000000000000026;
  *(a1 + 24) = 0x8000000100132E80;
  *(a1 + 32) = 2;
  return result;
}

__n128 sub_1000B7038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B704C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B708C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B70FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlacardInfoItemType(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  *(&v22 - v11) = 0;
  swift_storeEnumTagMultiPayload();
  v15 = *(v1 + 32);
  v26 = &type metadata for CompromisedAccountStepProvider;
  v27 = sub_100010248();
  v25[0] = v15;
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100121620;
  sub_10001029C(v12, v17 + v16);
  sub_10000B4E0(v25, v24);
  v23 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v17 + v16, v10);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v10, v7);
  sub_1000EFDB8(v7, 0, 0);
  sub_100010300(v10);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v18 = v23;
  sub_10000B4E0(v24, a1 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v19 = Environment.init<A>(_:)();
  LOBYTE(v10) = v20;
  sub_10001035C(v24);
  sub_100010300(v12);
  result = sub_10001035C(v25);
  *a1 = v19;
  *(a1 + 8) = v10 & 1;
  *(a1 + 16) = v14;
  *(a1 + 24) = v13;
  *(a1 + 32) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1000B744C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  v3 = sub_1000BBBF8();
  sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_10000AFAC();
}

uint64_t sub_1000B74C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];

  return sub_1000B7528(v11, v10, a5, a6, a7);
}

uint64_t sub_1000B7528(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = __chkstk_darwin(KeyPath);
    v14[2] = v5;
    v14[3] = a1;
    v14[4] = a2;
    sub_1000B739C(v13, a5, v14);
  }
}

uint64_t sub_1000B7630()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_10000AFAC();
}

uint64_t sub_1000B76B4()
{
  sub_100096B04();
  v3 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  if (sub_100080F60(*(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName), *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName + 8), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v7[2] = v1;
    v7[3] = v2;
    v7[4] = v0;
    sub_1000B739C(v5, sub_1000BBD4C, v7);
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_1000B77AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000B77F4()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced);
}

uint64_t sub_1000B7868(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = __chkstk_darwin(KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1000B739C(v4, sub_1000BBDC0, v5);
  }

  return result;
}

uint64_t sub_1000B7918()
{
  v0 = type metadata accessor for TimeZone();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = v5 - v4;
  if (!TMIsAutomaticTimeZoneEnabled())
  {
    v9 = TMCopyComputedTimeZone();
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [objc_opt_self() systemTimeZone];
      static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = TimeZone.identifier.getter();
      v17 = v16;
      (*(v2 + 8))(v6, v0);
      if (v11 != v15 || v13 != v17)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v19 ^ 1;
        return v7 & 1;
      }
    }
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_1000B7A94()
{
  v1 = v0;
  v2 = sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_100008780();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = *(*(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks) + 16);
  if (v8)
  {
    v19 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks;
    v20 = v2;

    v9 = 32;
    do
    {

      Task.cancel()();

      v9 += 8;
      --v8;
    }

    while (v8);

    v2 = v20;
  }

  v10 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation;
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v11 = *(v4 + 8);
  v11(v7, v2);
  v12 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTime;
  type metadata accessor for Date();
  sub_10000C31C();
  (*(v13 + 8))(v1 + v12);

  v14 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStream;
  sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_10000C31C();
  (*(v15 + 8))(v1 + v14);
  v11((v1 + v10), v2);
  v16 = OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v17 + 8))(v1 + v16);
  return v1;
}

uint64_t sub_1000B7D14()
{
  sub_1000B7A94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1000B7D6C()
{
  v1 = v0;
  v103 = *v0;
  v2 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v3 = __chkstk_darwin(v2 - 8);
  v111 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v119 = &v93 - v6;
  __chkstk_darwin(v5);
  v101 = &v93 - v7;
  v8 = sub_100003768(&qword_10018A880, &qword_100124D20);
  sub_100008780();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = (&v93 - v12);
  sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_100008780();
  v114 = v15;
  v115 = v14;
  __chkstk_darwin(v14);
  sub_1000BC028();
  v109 = v16;
  v110 = v17;
  __chkstk_darwin(v18);
  v20 = &v93 - v19;
  v21 = sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_100008780();
  v102 = v22;
  __chkstk_darwin(v23);
  sub_1000BC028();
  v99 = v24;
  v98 = v25;
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  v29 = type metadata accessor for Date();
  sub_100008780();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_10000C30C();
  v35 = v34 - v33;
  static Date.now.getter();
  (*(v31 + 32))(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTime, v35, v29);
  v36 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__dateString);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__timeString);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = (v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__currentTimeZoneName);
  *v38 = 0;
  v38[1] = 0;
  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v40 = result;
  v41 = [result isAutomaticDateAndTimeEnforced];

  *(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel__isAutomaticDateAndTimeEnforced) = v41;
  ObservationRegistrar.init()();
  v42 = sub_1000B8850();
  v44 = v43;

  *v38 = v42;
  v38[1] = v44;
  *v13 = 1;
  (*(v10 + 104))(v13, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v8);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v10 + 8))(v13, v8);
  v45 = v102 + 16;
  v46 = *(v102 + 16);
  v46(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStream, v28, v21);
  v47 = v114;
  v48 = *(v114 + 16);
  v97 = v1;
  v108 = v114 + 16;
  v107 = v48;
  v48(v1 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_reloadStreamContinuation, v20, v115);
  sub_100003768(&qword_10018D470, &unk_100128ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100122C90;
  result = TMTimeZoneConfirmedNotification;
  if (!TMTimeZoneConfirmedNotification)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v94 = v46;
  v95 = v45;
  v100 = v28;
  v96 = v21;
  v106 = inited + 32;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v50;
  *(inited + 48) = 0xD000000000000021;
  *(inited + 56) = 0x80000001001385E0;
  v93 = inited;
  v112 = type metadata accessor for MainActor();
  v51 = type metadata accessor for TaskPriority();
  v52 = 0;
  v53 = 0;
  v105 = v47 + 32;
  v104 = v51 - 8;
  v54 = _swiftEmptyArrayStorage;
  v55 = &qword_1001228F0;
  v113 = v20;
  do
  {
    v118 = v54;
    v117 = v52;
    v56 = (v106 + 16 * v53);
    v57 = v56[1];
    v116 = *v56;
    v58 = v119;
    sub_1000BC00C(v119);
    v59 = v55;
    v60 = v109;
    v61 = v51;
    v62 = v115;
    v107(v109, v20, v115);

    v63 = static MainActor.shared.getter();
    v64 = v114;
    v65 = (*(v114 + 80) + 48) & ~*(v114 + 80);
    v66 = swift_allocObject();
    *(v66 + 2) = v63;
    v67 = v116;
    *(v66 + 3) = &protocol witness table for MainActor;
    *(v66 + 4) = v67;
    *(v66 + 5) = v57;
    v68 = v60;
    v55 = v59;
    v69 = v62;
    v51 = v61;
    (*(v64 + 32))(&v66[v65], v68, v69);
    v70 = v111;
    sub_1000BBEBC(v58, v111, &qword_1001888B0, v59);
    LODWORD(v63) = sub_10000E5F0(v70, 1, v61);

    if (v63 == 1)
    {
      sub_100044F98(v70, &qword_1001888B0, v59);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(*(v61 - 8) + 8))(v70, v61);
    }

    v71 = *(v66 + 2);
    swift_unknownObjectRetain();

    v20 = v113;
    v54 = v118;
    if (v71)
    {
      swift_getObjectType();
      v72 = dispatch thunk of Actor.unownedExecutor.getter();
      v74 = v73;
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = 0;
      v74 = 0;
    }

    sub_100044F98(v119, &qword_1001888B0, v59);
    v75 = swift_allocObject();
    *(v75 + 16) = &unk_10012D150;
    *(v75 + 24) = v66;
    if (v74 | v72)
    {
      v120 = 0;
      v121 = 0;
      v122 = v72;
      v123 = v74;
    }

    v76 = swift_task_create();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D0910();
      v54 = v78;
    }

    v77 = v54[2];
    if (v77 >= v54[3] >> 1)
    {
      sub_1000D0910();
      v54 = v79;
    }

    v54[2] = (v77 + 1);
    v54[v77 + 4] = v76;
    v52 = 1;
    v53 = 1;
  }

  while ((v117 & 1) == 0);
  swift_setDeallocating();
  sub_10006EB40();
  v80 = v97;
  *(v97 + OBJC_IVAR____TtC11SupportFlow17TimezoneViewModel_observationTasks) = v54;
  v81 = v101;
  sub_1000BC00C(v101);
  sub_1000BC054();
  v82 = swift_allocObject();
  swift_weakInit();

  v83 = static MainActor.shared.getter();
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = &protocol witness table for MainActor;
  v84[4] = v82;

  sub_100085200();

  sub_1000BC00C(v81);
  sub_1000BC054();
  v85 = swift_allocObject();
  swift_weakInit();

  v86 = v99;
  v87 = v96;
  v94(v99, v100, v96);

  v88 = static MainActor.shared.getter();
  v89 = v102;
  v90 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v91 = (v98 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  *(v92 + 16) = v88;
  *(v92 + 24) = &protocol witness table for MainActor;
  (*(v89 + 32))(v92 + v90, v86, v87);
  *(v92 + v91) = v85;
  *(v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8)) = v103;

  sub_100085200();

  sub_1000B9F7C();
  (*(v114 + 8))(v113, v115);
  (*(v89 + 8))(v100, v87);
  return v80;
}

uint64_t sub_1000B8850()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - v6;
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  [objc_opt_self() resetSystemTimeZone];
  static TimeZone.current.getter();
  if (qword_100188278 != -1)
  {
    swift_once();
  }

  v10 = qword_10018FBE0;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v60, 0, sizeof(v60));
  }

  sub_1000BBEBC(v60, &v58, &unk_10018A520, &unk_100124310);
  if (v59)
  {
    sub_1000BBF20(&v58, v56);
    sub_100025734(v56, v57);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    v14 = DTResolveCity(v13);
    swift_unknownObjectRelease();
    sub_100044F98(v60, &unk_10018A520, &unk_100124310);
    sub_1000086BC(v56);
  }

  else
  {
    sub_100044F98(v60, &unk_10018A520, &unk_100124310);
    v14 = 0;
  }

  p_base_prots = &Defaults.base_prots;
  if (TMIsAutomaticTimeZoneEnabled())
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    v17 = DTCityNameForTimeZone(isa);

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      goto LABEL_22;
    }
  }

  if (v14)
  {
    v21 = v14;
    v22 = [v21 name];
    if (v22)
    {
      v23 = v22;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v24;

      p_base_prots = (&Defaults + 40);
      goto LABEL_22;
    }
  }

  if (qword_1001882C8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000C2D4(v25, qword_1001A5858);
  (*(v1 + 16))(v7, v9, v0);
  v26 = Logger.logObject.getter();
  v27 = v7;
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = v4;
    v31 = v30;
    *&v60[0] = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v32 = TimeZone.identifier.getter();
    v55 = v14;
    v33 = v1;
    v34 = v0;
    v36 = v35;
    (*(v33 + 8))(v27, v34);
    v37 = sub_10009CACC(v32, v36, v60);
    v0 = v34;
    v1 = v33;
    v14 = v55;

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v28, "Failed to find a city matching the current time zone identifier %{private,mask.hash}s", v29, 0x16u);
    sub_1000086BC(v31);
    v4 = v54;

    p_base_prots = (&Defaults + 40);
  }

  else
  {

    (*(v1 + 8))(v27, v0);
  }

  v18 = TimeZone.identifier.getter();
  v20 = v38;
LABEL_22:

  v39 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v39 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    (*(v1 + 8))(v9, v0);
  }

  else
  {

    if (p_base_prots[89] != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000C2D4(v40, qword_1001A5858);
    (*(v1 + 16))(v4, v9, v0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v60[0] = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      v45 = TimeZone.identifier.getter();
      v55 = v14;
      v46 = v0;
      v48 = v47;
      v49 = v4;
      v50 = *(v1 + 8);
      v50(v49, v46);
      v51 = sub_10009CACC(v45, v48, v60);
      v0 = v46;
      v14 = v55;

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to find a city matching the current time zone identifier (empty name) %{private,mask.hash}s", v43, 0x16u);
      sub_1000086BC(v44);
    }

    else
    {

      v52 = v4;
      v50 = *(v1 + 8);
      v50(v52, v0);
    }

    v18 = TimeZone.identifier.getter();

    v50(v9, v0);
  }

  return v18;
}

uint64_t sub_1000B8F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100003768(&qword_10018A8A8, &qword_100124D40);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_100003768(&qword_10018A890, &unk_100124D30);
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = sub_100003768(&qword_10018FD40, &qword_10012D1D0);
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v12;
  v6[20] = v11;

  return _swift_task_switch(sub_1000B913C, v12, v11);
}

uint64_t sub_1000B913C()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  sub_10003C2F0();
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.userInitiated(_:), v4);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v2, v4);
  sub_100033A4C(v6, v5, v7, v1);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  AsyncStream.makeAsyncIterator()();
  (*(v9 + 8))(v8, v10);
  v0[21] = static MainActor.shared.getter();
  swift_task_alloc();
  sub_10004F4B0();
  v0[22] = v11;
  *v11 = v12;
  sub_1000BBF7C(v11);
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)(v13);
}

uint64_t sub_1000B955C()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return _swift_task_switch(sub_1000B9694, v5, v4);
}

uint64_t sub_1000B9694()
{
  if (*(v0 + 184) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30(&qword_1001882C8);
    }

    v1 = type metadata accessor for Logger();
    sub_10000C2D4(v1, qword_1001A5858);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *(v4 + 4) = sub_1000BC094(4.8751e-34, v18, v5);
      sub_1000BC03C();
      _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
      sub_1000086BC(v18);
      sub_100008744(v18);
      sub_100008744(v4);
    }

    sub_1000BC074();

    sub_10000875C();

    return v10();
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);
    AsyncStream.Continuation.yield<A>()();
    (*(v13 + 8))(v12, v14);
    *(v0 + 168) = static MainActor.shared.getter();
    swift_task_alloc();
    sub_10004F4B0();
    *(v0 + 176) = v15;
    *v15 = v16;
    sub_1000BBF7C(v15);
    sub_1000BC048();

    return AsyncStream.Iterator.next(isolation:)(v17);
  }
}

uint64_t sub_1000B98CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100003768(&qword_10018FD48, &qword_10012D228);
  v4[6] = swift_task_alloc();
  v4[7] = sub_100003768(&qword_10018FD50, &qword_10012D230);
  v4[8] = swift_task_alloc();
  v4[9] = sub_100003768(&qword_10018FD58, &qword_10012D238);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_1000B9A18, v6, v5);
}

uint64_t sub_1000B9A18()
{
  sub_10003DCD8();
  v2 = v0[7];
  v1 = v0[8];
  static Clock<>.suspending.getter();
  *(v1 + *(v2 + 36)) = xmmword_10012CFF0;
  v3 = v1 + *(v2 + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  AsyncTimerSequence.makeAsyncIterator()();
  sub_100044F98(v1, &qword_10018FD50, &qword_10012D230);
  swift_beginAccess();
  v0[15] = static MainActor.shared.getter();
  swift_task_alloc();
  sub_10004F4B0();
  v0[16] = v4;
  *v4 = v5;
  v6 = sub_1000BBF50(v4);

  return AsyncTimerSequence.Iterator.next()(v6);
}

uint64_t sub_1000B9B10()
{
  sub_100025A94();
  v1 = *(*v0 + 120);
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  if (v1)
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

  return _swift_task_switch(sub_1000B9C40, v4, v6);
}

uint64_t sub_1000B9C40()
{
  sub_100025A94();

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1000B9CA0, v1, v2);
}

uint64_t sub_1000B9CA0()
{
  sub_10003DCD8();
  v1 = v0[6];
  v2 = type metadata accessor for SuspendingClock.Instant();
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);

LABEL_8:
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30(&qword_1001882C8);
    }

    v3 = type metadata accessor for Logger();
    sub_10000C2D4(v3, qword_1001A5858);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      sub_1000BC03C();
      _os_log_impl(v7, v8, v9, v10, v6, 2u);
      sub_100008744(v6);
    }

    sub_10000875C();

    return v11();
  }

  if (!swift_weakLoadStrong())
  {
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);
    goto LABEL_7;
  }

  if (static Task<>.isCancelled.getter())
  {
    sub_100044F98(v0[10], &qword_10018FD58, &qword_10012D238);

LABEL_7:

    sub_100044F98(v0[6], &qword_10018FD48, &qword_10012D228);
    goto LABEL_8;
  }

  if (!sub_1000B9F0C())
  {
    sub_1000B9F7C();
  }

  v13 = v0[6];

  sub_100044F98(v13, &qword_10018FD48, &qword_10012D228);
  v0[15] = static MainActor.shared.getter();
  swift_task_alloc();
  sub_10004F4B0();
  v0[16] = v14;
  *v14 = v15;
  v16 = sub_1000BBF50(v14);

  return AsyncTimerSequence.Iterator.next()(v16);
}

BOOL sub_1000B9F0C()
{
  swift_getKeyPath();
  v1 = sub_1000BBBF8();
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return TMIsAutomaticTimeZoneEnabled() != 0;
}

uint64_t sub_1000B9F7C()
{
  v0 = type metadata accessor for Locale();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = v5 - v4;
  v7 = type metadata accessor for Date();
  sub_100008780();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000C30C();
  v13 = v12 - v11;
  static Date.now.getter();
  v14 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v6, v0);
  [v14 setLocale:isa];

  [v14 setDateStyle:2];
  v16 = Date._bridgeToObjectiveC()().super.isa;
  v17 = [v14 stringFromDate:v16];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_1000BBFE4();
  sub_1000B7528(v18, v20, v21, v22, v23);
  [v14 setDateStyle:0];
  [v14 setTimeStyle:1];
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v14 stringFromDate:v24];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  sub_1000BBFCC();
  sub_1000B7528(v26, v28, v29, v30, v31);

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1000BA20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_100003768(&qword_10018FD40, &qword_10012D1D0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_1000BA314, v9, v8);
}

uint64_t sub_1000BA314()
{
  sub_10003DCD8();
  sub_100003768(&qword_10018A890, &unk_100124D30);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[15] = 0;
  v0[16] = static MainActor.shared.getter();
  swift_task_alloc();
  sub_10004F4B0();
  v0[17] = v1;
  *v1 = v2;
  sub_1000BBFA4(v1);
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1000BA3E8()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return _swift_task_switch(sub_1000BA520, v5, v4);
}

uint64_t sub_1000BA520()
{
  if (*(v0 + 144) == 1 || !swift_weakLoadStrong())
  {
    v3 = sub_1000BC060();
    v4(v3);
    goto LABEL_6;
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = sub_1000BC060();
    v2(v1);

LABEL_6:

    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30(&qword_1001882C8);
    }

    v5 = type metadata accessor for Logger();
    sub_10000C2D4(v5, qword_1001A5858);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      sub_1000BC03C();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      sub_100008744(v8);
    }

    sub_10000875C();

    return v13();
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 56);
  sub_1000BC054();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  *(v0 + 120) = v15;
  *(v0 + 128) = static MainActor.shared.getter();
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 136) = v19;
  *v19 = v20;
  sub_1000BBFA4(v19);
  sub_1000BC048();

  return AsyncStream.Iterator.next(isolation:)(v21);
}

id sub_1000BA784(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v2 = result;
      v3 = [result isAutomaticDateAndTimeEnforced];

      sub_1000B7868(v3);
      KeyPath = swift_getKeyPath();
      sub_1000B739C(KeyPath, nullsub_1, 0);

      sub_1000B8850();
      sub_1000B76B4();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1000BA88C()
{
  sub_10006F388();
  result = sub_1000B9F0C();
  *v0 = result;
  return result;
}

uint64_t sub_1000BA8E0(char a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1000B739C(KeyPath, sub_1000BBE2C, &v5);
}

uint64_t sub_1000BA950(uint64_t a1, char a2)
{
  KeyPath = swift_getKeyPath();
  sub_1000B739C(KeyPath, nullsub_1, 0);

  TMSetAutomaticTimeZoneEnabled();
  if (a2)
  {
    TMSetAutomaticTimeEnabled();
    return sub_1000B9F7C();
  }

  v4 = sub_1000BAA98();
  if (!v5)
  {
    return sub_1000B9F7C();
  }

  v6 = v4;
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = DTResolveCity(v8);

  if (!v9)
  {
LABEL_8:

    return sub_1000B9F7C();
  }

  result = sub_10005CD84(v9, &selRef_name);
  if (v11)
  {
    v12 = result;
    v13 = v11;
    result = sub_10005CD84(v9, &selRef_timeZone);
    if (v14)
    {
      v15[0] = v12;
      v15[1] = v13;
      v15[2] = result;
      v15[3] = v14;
      v15[4] = v6;
      v15[5] = v7;
      sub_1000BAB50(v15);

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BAA98()
{
  swift_getKeyPath();
  sub_1000BBBF8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100188278 != -1)
  {
    swift_once();
  }

  return sub_1000BACA8();
}

id sub_1000BAB50(void *a1)
{

  sub_1000B76B4();
  v2 = a1[4];
  v3 = a1[5];

  sub_1000BABE8(v2, v3);
  String.utf8CString.getter();
  tzlink();

  v4 = objc_opt_self();

  return [v4 resetSystemTimeZone];
}

uint64_t sub_1000BABE8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6[2] = a1;
  v6[3] = a2;
  sub_1000B739C(KeyPath, sub_1000BBEA0, v6);
}

uint64_t sub_1000BAC60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1000BACA8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1000BAD24(uint64_t a1, uint64_t a2)
{
  if (qword_100188278 != -1)
  {
    swift_once();
  }

  v4 = qword_10018FBE0;
  if (a2)
  {
    v5 = &type metadata for String;
    v6 = a2;
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    v8[2] = 0;
  }

  v8[0] = a1;
  v8[1] = v6;
  v9 = v5;

  sub_1000BAE60(v8);
  sub_100044F98(v8, &unk_10018A520, &unk_100124310);
  v9 = &type metadata for Bool;
  LOBYTE(v8[0]) = 1;
  sub_1000BAE60(v8);
  sub_100044F98(v8, &unk_10018A520, &unk_100124310);
  return [v4 synchronize];
}

void sub_1000BAE60(uint64_t a1)
{
  sub_1000BBEBC(a1, v9, &unk_10018A520, &unk_100124310);
  v2 = v10;
  if (v10)
  {
    v3 = sub_100025734(v9, v10);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v6, v2);
    sub_1000086BC(v9);
  }

  else
  {
    v7 = 0;
  }

  v8 = String._bridgeToObjectiveC()();
  [v1 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

id sub_1000BAFD0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_1000BB5B8(0xD00000000000001ELL, 0x8000000100138610);
  if (result)
  {
    qword_10018FBE0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TimeZonePayload.name.setter()
{
  sub_100096B04();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TimeZonePayload.timeZone.setter()
{
  sub_100096B04();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TimeZonePayload.classicIdentifier.setter()
{
  sub_100096B04();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t static TimeZonePayload.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t TimeZonePayload.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int TimeZonePayload.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000BB2C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimeZonePayload.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000BB300()
{
  result = qword_10018FBE8;
  if (!qword_10018FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBE8);
  }

  return result;
}

uint64_t type metadata accessor for TimezoneViewModel(uint64_t a1)
{
  result = qword_10018FC60;
  if (!qword_10018FC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB3AC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000BB550(319, &qword_10018FC70, &type metadata accessor for AsyncStream);
    if (v2 <= 0x3F)
    {
      sub_1000BB550(319, &unk_10018FC78, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000BB550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[1]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1000BB5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_1000BB61C()
{
  v1 = sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_100008780();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000BB6E8()
{
  sub_100003768(&qword_10018A898, &qword_10012D140);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10003DBE0;
  v7 = sub_1000BBFFC();

  return sub_1000B8F08(v7, v8, v2, v3, v4, v9);
}

uint64_t sub_1000BB7EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB824()
{
  swift_weakDestroy();
  sub_1000BC054();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000BB858()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB898()
{
  sub_10003DCD8();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_10003D760;
  v6 = sub_1000BBFFC();

  return sub_1000B98CC(v6, v7, v2, v3);
}

uint64_t sub_1000BB93C()
{
  v1 = sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_100008780();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1000BBA24(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003768(&qword_10018A890, &unk_100124D30) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10003DBE0;

  return sub_1000BA20C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_1000BBB6C()
{
  sub_10006F388();
  result = sub_1000B7438();
  *v0 = result;
  v0[1] = v2;
  return result;
}

unint64_t sub_1000BBBF8()
{
  result = qword_10018FD38;
  if (!qword_10018FD38)
  {
    type metadata accessor for TimezoneViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FD38);
  }

  return result;
}

uint64_t sub_1000BBC50()
{
  sub_10006F388();
  result = sub_1000B7424();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000BBCF8()
{
  sub_10006F388();
  result = sub_1000B7630();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000BBD6C()
{
  sub_10006F388();
  result = sub_1000B77F4();
  *v0 = result & 1;
  return result;
}

BOOL sub_1000BBDD8()
{
  sub_10006F388();
  result = sub_1000B9F0C();
  *v0 = result;
  return result;
}

uint64_t sub_1000BBE4C()
{
  sub_10006F388();
  result = sub_1000BAA98();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1000BBEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003768(a3, a4);
  v5 = sub_10000AFAC();
  v6(v5);
  return a2;
}

_OWORD *sub_1000BBF20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000BBF30(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000BC00C(uint64_t a1)
{

  return sub_100003CE8(a1, 1, 1, v1);
}

uint64_t sub_1000BC074()
{
}

unint64_t sub_1000BC094(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_10009CACC(v4, v3, va);
}

uint64_t sub_1000BC0B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BC0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BC164()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = sub_1000BC2B4();
  v4 = *(v0 + 32);
  v8 = &type metadata for TrustedPhoneNumberStepProvider;
  v7 = v4;
  v6[0] = v2;
  v6[1] = v1;
  v9 = sub_1000BC544();
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = 0;
  v14 = 0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  sub_100003768(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(0);
  sub_100004CE4();
  sub_1000BC598();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10001D724(v6, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000BC2B4()
{
  v1 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ActionInfo(0);
  *v3 = 0;
  swift_storeEnumTagMultiPayload();
  v4 = *v0;
  v9 = v0[1];
  v10 = v4;
  v5 = swift_allocObject();
  v6 = v0[1];
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 32);
  sub_100006578(&v10, v8, &qword_100189B68, &qword_1001239F0);
  sub_10004010C(&v9, v8);
  return sub_1000ED69C(v3, 1, sub_1000BC678, v5);
}

uint64_t sub_1000BC3CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppleAccountSignInView(0);
  v3 = (a1 + *(result + 20));
  *v3 = nullsub_1;
  v3[1] = 0;
  return result;
}

uint64_t sub_1000BC444(__int128 *a1)
{
  v3 = *a1;
  v2[1] = *a1;
  v4 = *(&v3 + 1);
  sub_100006578(&v4, v2, qword_10018FD68, &unk_10012F2F0);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10001D724(&v3, &qword_100189B68, &qword_1001239F0);
}

unint64_t sub_1000BC544()
{
  result = qword_10018FD60;
  if (!qword_10018FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FD60);
  }

  return result;
}

unint64_t sub_1000BC598()
{
  result = qword_10018B2C8;
  if (!qword_10018B2C8)
  {
    type metadata accessor for AppleAccountSignInView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2C8);
  }

  return result;
}

uint64_t sub_1000BC638()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000BC680()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004CE4();
  sub_1000BC598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BC704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000C0BE8();
  sub_1000BFFDC(v4, v5, &unk_100129E68);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_1000BC784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000BC7C0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000BC844()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  v7 = *v0;
  v12 = *v0;
  v8 = v13;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v12, &qword_100189B30, &unk_100123800);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1000BC994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  sub_100004D48(&qword_10018FDF0, &qword_10012D490);
  v160 = a1[5];
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  type metadata accessor for ContentMessageView();
  type metadata accessor for _ConditionalContent();
  v153 = type metadata accessor for _ConditionalContent();
  v3 = type metadata accessor for Group();
  sub_10003DBE4();
  v159 = v4;
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_10003DC84();
  v158 = v6;
  v185 = a1;
  v7 = a1[2];
  v8 = sub_1000BFE78();
  v157 = a1[8];
  v224 = &protocol witness table for AnyView;
  v225 = v157;
  WitnessTable = swift_getWitnessTable();
  sub_1000C0CA0();
  v9 = swift_getWitnessTable();
  sub_1000C0C88();
  v221 = v9;
  v222 = sub_1000BFFDC(v10, v11, &protocol conformance descriptor for ContentMessageView);
  v219 = v8;
  v220 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v218 = v152;
  sub_1000C0C58();
  swift_getWitnessTable();
  sub_1000C0C3C();
  v12 = v7;
  v13 = swift_getWitnessTable();
  v204 = v3;
  v133 = v3;
  v134 = v9;
  v205 = v12;
  v14 = v12;
  v178 = v12;
  v206 = v9;
  v207 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v150 = v15;
  sub_10000ED78();
  __chkstk_darwin(v16);
  sub_10003DC84();
  v147 = v17;
  v18 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v149 = v19;
  sub_10000ED78();
  __chkstk_darwin(v20);
  sub_10003DC84();
  v144 = v21;
  v187 = v185[4];
  v137 = v18;
  v22 = type metadata accessor for ModifiedContent();
  sub_100008780();
  v155 = v23;
  sub_10000ED78();
  __chkstk_darwin(v24);
  sub_10003DC84();
  v143 = v25;
  v204 = v3;
  v205 = v14;
  v206 = v9;
  v207 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v189 = sub_1000BFF34();
  v216 = OpaqueTypeConformance2;
  v217 = v189;
  v179 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v136 = swift_getWitnessTable();
  v186 = v185[7];
  *&v188 = *(v186 + 8);
  v214 = v136;
  v215 = v188;
  v138 = v22;
  v139 = swift_getWitnessTable();
  v26 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v151 = v27;
  sub_10000ED78();
  __chkstk_darwin(v28);
  sub_10003DC84();
  v175 = v29;
  v141 = v26;
  v142 = swift_getOpaqueTypeConformance2();
  v30 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v154 = v31;
  sub_10000ED78();
  __chkstk_darwin(v32);
  sub_10003DC84();
  v176 = v33;
  v130 = v30;
  v131 = swift_getOpaqueTypeConformance2();
  v183 = &opaque type descriptor for <<opaque return type of View.onLoadAndForeground(perform:)>>;
  sub_1000C0D50();
  v184 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v156 = v34;
  sub_10000ED78();
  __chkstk_darwin(v35);
  sub_10003DC84();
  v146 = v36;
  v164 = type metadata accessor for OptionInfoItem(255);
  sub_100004D48(&qword_10018FE10, &qword_10012D498);
  v163 = type metadata accessor for FlowViewDataProvider(255);
  sub_1000BFF88();
  sub_1000C0BE8();
  v162 = sub_1000BFFDC(v37, v38, &unk_100129E68);
  swift_getOpaqueTypeConformance2();
  v177 = v13;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  v39 = type metadata accessor for ModifiedContent();
  v40 = swift_getOpaqueTypeConformance2();
  sub_1000C0CB8();
  v174 = sub_1000BFFDC(v41, v42, &unk_1001300C8);
  v212 = swift_getOpaqueTypeConformance2();
  v213 = v189;
  v210 = swift_getWitnessTable();
  v211 = v188;
  v172 = v39;
  v173 = swift_getWitnessTable();
  v204 = v184;
  v205 = v164;
  v206 = v39;
  v207 = v40;
  v129 = v40;
  v208 = v174;
  v209 = v173;
  sub_1000C0C70();
  v182 = v43;
  sub_1000C0D50();
  v181 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v145 = v44;
  sub_10000ED78();
  __chkstk_darwin(v45);
  sub_10003DC84();
  v171 = v46;
  v47 = v185[3];
  v185 = v185[6];
  v170 = v185[1];
  v180 = v47;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  v183 = type metadata accessor for ModifiedContent();
  v204 = v184;
  v205 = v164;
  v206 = v39;
  v207 = v40;
  v208 = v174;
  v209 = v173;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = *(v170 + 8);
  v168 = v48;
  v169 = v49;
  v202 = swift_getOpaqueTypeConformance2();
  v203 = v189;
  v200 = swift_getWitnessTable();
  v201 = v188;
  v167 = swift_getWitnessTable();
  v204 = v181;
  v205 = v180;
  v206 = v183;
  v207 = v48;
  v208 = v49;
  v209 = v167;
  sub_1000C0D50();
  v170 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v132 = v50;
  sub_10000ED78();
  __chkstk_darwin(v51);
  sub_10003DC84();
  v166 = v52;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(swift_getAssociatedConformanceWitness() + 8);
  v165 = AssociatedTypeWitness;
  sub_1000C0D44();
  v128 = swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v55 = v178;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  v163 = type metadata accessor for ModifiedContent();
  v56 = v180;
  v204 = v181;
  v205 = v180;
  v206 = v183;
  v207 = v48;
  v208 = v49;
  v209 = v167;
  v57 = swift_getOpaqueTypeConformance2();
  v126 = *(v54 + 8);
  v127 = v57;
  v198 = swift_getOpaqueTypeConformance2();
  v199 = v189;
  v196 = swift_getWitnessTable();
  v197 = v188;
  v124 = swift_getWitnessTable();
  v204 = v170;
  v205 = v165;
  v206 = v163;
  v207 = v57;
  v208 = v126;
  v209 = v124;
  sub_1000C0D50();
  v128 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v162 = v58;
  v60 = __chkstk_darwin(v59);
  v123 = &v122 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v125 = &v122 - v62;
  *&v63 = v55;
  *(&v63 + 1) = v56;
  *&v64 = v187;
  *(&v64 + 1) = v160;
  v188 = v64;
  v189 = v63;
  v190 = v63;
  v191 = v64;
  v65 = v185;
  v192 = v185;
  v193 = v186;
  v194 = v157;
  v66 = v140;
  v195 = v140;
  Group<A>.init(content:)();
  v67 = v66[2];
  v68 = v147;
  View.environment<A>(_:)();
  v69 = sub_1000C0CE4();
  v70(v69);
  v71 = v144;
  v72 = OpaqueTypeMetadata2;
  sub_10007DF6C(0, 0, OpaqueTypeMetadata2);
  (*(v150 + 8))(v68, v72);
  v178 = *(*v67 + 128);
  v73 = v143;
  v74 = v137;
  View.modifier<A>(_:)();
  (*(v149 + 8))(v71, v74);
  v226 = *v66;
  v227 = *(v66 + 8);
  v76 = v66[4];
  v179 = v66[3];
  v75 = v179;
  sub_1000C0D1C();
  v77 = swift_allocObject();
  sub_1000C0C2C(v77);
  v78 = v186;
  *(v79 + 48) = v65;
  *(v79 + 56) = v78;
  sub_1000C0BB8(v79);
  v80 = v67;

  v81 = v76;
  sub_100006568(v75, v76);
  v82 = v138;
  View.onLoad(perform:)();

  (*(v155 + 8))(v73, v82);
  sub_1000C0D1C();
  v83 = swift_allocObject();
  sub_1000C0C2C(v83);
  v84 = v185;
  *(v85 + 48) = v185;
  *(v85 + 56) = v78;
  sub_1000C0BB8(v85);
  v160 = v80;

  v177 = v81;
  sub_100006568(v179, v81);
  View.onForeground(perform:)();

  v86 = sub_1000C0CE4();
  v87(v86);
  sub_1000C0D1C();
  v88 = swift_allocObject();
  sub_1000C0C2C(v88);
  *(v89 + 48) = v84;
  *(v89 + 56) = v78;
  sub_1000C0BB8(v89);

  v90 = v179;
  sub_100006568(v179, v81);
  v91 = v146;
  v92 = v130;
  v93 = v176;
  View.onLoadAndForeground(perform:)();

  (*(v154 + 8))(v93, v92);
  swift_checkMetadataState();
  sub_1000C0D1C();
  v94 = swift_allocObject();
  sub_1000C0C2C(v94);
  v96 = v185;
  v95 = v186;
  *(v97 + 48) = v185;
  *(v97 + 56) = v95;
  sub_1000C0BB8(v97);

  v98 = v90;
  v99 = v177;
  sub_100006568(v98, v177);
  swift_checkMetadataState();
  v100 = v184;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v156 + 8))(v91, v100);
  sub_1000C0D1C();
  v101 = swift_allocObject();
  sub_1000C0C2C(v101);
  v102 = v186;
  *(v103 + 48) = v96;
  *(v103 + 56) = v102;
  sub_1000C0BB8(v103);

  v104 = v179;
  sub_100006568(v179, v99);
  swift_checkMetadataState();
  View.navigationDestination<A, B>(for:destination:)();

  v105 = sub_1000C0CE4();
  v106(v105);
  (*(v102 + 32))(v187, v102);
  sub_1000C0D1C();
  v107 = swift_allocObject();
  sub_1000C0C2C(v107);
  *(v108 + 48) = v185;
  *(v108 + 56) = v102;
  sub_1000C0BB8(v108);

  sub_100006568(v104, v99);
  v109 = swift_checkMetadataState();
  v110 = swift_checkMetadataState();
  v111 = v124;
  v112 = v123;
  v113 = v170;
  v115 = v126;
  v114 = v127;
  View.navigationDestination<A, B>(for:destination:)();

  v116 = sub_1000C0CE4();
  v117(v116);
  v204 = v113;
  v205 = v109;
  v206 = v110;
  v207 = v114;
  v208 = v115;
  v209 = v111;
  swift_getOpaqueTypeConformance2();
  v118 = v125;
  v119 = v128;
  sub_1000C6A00();
  v120 = *(v162 + 8);
  v120(v112, v119);
  sub_1000C6A00();
  return (v120)(v118, v119);
}

uint64_t sub_1000BDBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X7>, uint64_t a4@<X8>)
{
  v102 = a3;
  v103 = a4;
  v6 = type metadata accessor for ContentMessageView();
  v89 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v88 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = *(a2 - 8);
  v9 = __chkstk_darwin(v7);
  v85 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v84 = &v81[-v11];
  v104 = type metadata accessor for _ConditionalContent();
  v12 = type metadata accessor for Optional();
  v91 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v87 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v90 = &v81[-v15];
  v101 = v16;
  v94 = v6;
  v17 = type metadata accessor for _ConditionalContent();
  v95 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v93 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v92 = &v81[-v20];
  v21 = sub_100003768(&qword_10018FE28, &unk_10012D4D0);
  __chkstk_darwin(v21);
  v23 = &v81[-v22];
  v24 = type metadata accessor for FlowProgressView(0);
  __chkstk_darwin(v24);
  v26 = &v81[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_100003768(&qword_10018FDF0, &qword_10012D490);
  __chkstk_darwin(v27);
  v29 = &v81[-v28];
  v96 = v17;
  v97 = v30;
  v31 = type metadata accessor for _ConditionalContent();
  v99 = *(v31 - 8);
  v100 = v31;
  v32 = __chkstk_darwin(v31);
  v98 = &v81[-v33];
  v34 = a1;
  v35 = *(a1 + 16);
  v36 = (*(*v35 + 448))(v32);
  if (v37 <= 0xFDu)
  {
    v83 = v36;
    v82 = v37;
    if (v37)
    {
      v39 = v102;
      v40 = v92;
      if (qword_100188230 != -1)
      {
        swift_once();
      }

      v41 = qword_1001A57A8;
      v42 = v88;
      ContentMessageView.init(with:maxWidth:)();
      v115[15] = &protocol witness table for AnyView;
      v115[16] = v39;
      v115[14] = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
      v43 = v94;
      sub_1000C2B40();
      (*(v89 + 8))(v42, v43);
      v44 = v39;
      v45 = v40;
    }

    else
    {
      v46 = (*(*v35 + 528))();
      v47 = v102;
      if (v46)
      {
        v111 = v46;
        v48 = v87;
        sub_1000C2A90();

        sub_100003CE8(v48, 0, 1, v104);
        v113 = &protocol witness table for AnyView;
        v49 = &v113;
      }

      else
      {
        v61 = *(a1 + 24);
        v48 = v87;
        if (v61)
        {
          v62 = *(v34 + 32);

          v64 = v85;
          v61(v63);
          v65 = v84;
          sub_1000C6A00();
          v66 = *(v86 + 8);
          v66(v64, a2);
          sub_1000C6A00();
          sub_1000C2B40();
          sub_1000068F8(v61, v62);
          v66(v64, a2);
          v66(v65, a2);
          sub_100003CE8(v48, 0, 1, v104);
          v114[0] = &protocol witness table for AnyView;
          v49 = v114;
        }

        else
        {
          sub_100003CE8(v87, 1, 1, v104);
          v115[0] = &protocol witness table for AnyView;
          v49 = v115;
        }
      }

      v49[1] = v47;
      swift_getWitnessTable();
      v67 = v90;
      sub_10000625C(v48, v90);
      v68 = *(v91 + 8);
      v69 = v101;
      v68(v48, v101);
      v114[3] = &protocol witness table for AnyView;
      v114[4] = v47;
      v114[2] = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1000C6A00();
      sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
      v44 = v47;
      v45 = v92;
      sub_1000C2A90();
      v68(v48, v69);
      v68(v67, v69);
    }

    v70 = v96;
    v115[12] = &protocol witness table for AnyView;
    v115[13] = v44;
    v115[11] = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v72 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
    v115[9] = WitnessTable;
    v115[10] = v72;
    swift_getWitnessTable();
    v73 = v93;
    sub_1000C6A00();
    sub_1000BFE78();
    v60 = v98;
    sub_1000C2B40();
    sub_1000955BC(v83, v82);
    v74 = *(v95 + 8);
    v74(v73, v70);
    v74(v45, v70);
    v57 = v44;
  }

  else
  {
    v38 = (*(*v35 + 424))(v36);
    if (v38)
    {
      *v23 = v38;
      swift_storeEnumTagMultiPayload();
      sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView, &unk_10012F5D4);
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v50 = (*(*v35 + 328))();
      v52 = v51;
      v53 = (*(*v35 + 376))();
      v55 = v54;
      v110 = 0;
      State.init(wrappedValue:)();
      v56 = v112;
      v26[4] = v111;
      v26[5] = v56;
      AccessibilityFocusState.init<>()();
      *v26 = v50;
      v26[1] = v52;
      v26[2] = v53;
      v26[3] = v55;
      sub_10002F15C(v26, v23);
      swift_storeEnumTagMultiPayload();
      sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView, &unk_10012F5D4);
      _ConditionalContent<>.init(storage:)();
      sub_10002F1C0(v26);
    }

    sub_1000BFE78();
    v57 = v102;
    v108 = &protocol witness table for AnyView;
    v109 = v102;
    v107 = swift_getWitnessTable();
    v58 = swift_getWitnessTable();
    v59 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
    v105 = v58;
    v106 = v59;
    swift_getWitnessTable();
    v60 = v98;
    sub_1000C2A90();
    sub_10001D724(v29, &qword_10018FDF0, &qword_10012D490);
  }

  v75 = sub_1000BFE78();
  v115[7] = &protocol witness table for AnyView;
  v115[8] = v57;
  v115[6] = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView, &protocol conformance descriptor for ContentMessageView);
  v115[4] = v76;
  v115[5] = v77;
  v78 = swift_getWitnessTable();
  v115[2] = v75;
  v115[3] = v78;
  v79 = v100;
  swift_getWitnessTable();
  sub_1000C6A00();
  return (*(v99 + 8))(v60, v79);
}

uint64_t sub_1000BE958(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (*(**(a1 + 16) + 568) + **(**(a1 + 16) + 568));
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000BEAA4;

  return v5();
}

uint64_t sub_1000BEAA4()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BEBC8()
{
  sub_100025A94();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BEC24(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (*(**(a1 + 16) + 576) + **(**(a1 + 16) + 576));
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000BED70;

  return v5();
}

uint64_t sub_1000BED70()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000BEE94(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (*(**(a1 + 16) + 584) + **(**(a1 + 16) + 584));
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000BED70;

  return v5();
}

uint64_t sub_1000BEFE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v38 = a7;
  v37 = a6;
  v36 = a4;
  v40 = a2;
  v41 = a9;
  v35 = a10;
  v32 = sub_100004D48(&qword_10018FE10, &qword_10012D498);
  type metadata accessor for FlowViewDataProvider(255);
  v34 = sub_1000BFF88();
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v54 = v32;
  v55 = a3;
  v56 = OpaqueTypeConformance2;
  v57 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &WitnessTable - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &WitnessTable - v18;
  v20 = *a1;
  swift_checkMetadataState();
  v54 = Environment.init<A>(_:)();
  LOBYTE(v55) = v21 & 1;
  sub_10004FC38(v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep, &v56);
  v53 = v20;
  type metadata accessor for OptionInfoItem(0);

  State.init(wrappedValue:)();
  v58 = v46;
  v59 = v47;
  v46 = a3;
  v47 = v36;
  v48 = a5;
  v49 = v37;
  v22 = v39;
  v50 = v38;
  v51 = v39;
  v52 = v35;
  v23 = type metadata accessor for FlowStackView(0, &v46);
  sub_1000BF3DC(&v54, v23, &type metadata for OptionInfoItemView, v34, v17);
  sub_1000C03F4(&v54);
  v54 = v32;
  v55 = a3;
  v56 = OpaqueTypeConformance2;
  v57 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1000BFF34();
  v44 = v24;
  v45 = v25;
  v26 = swift_getWitnessTable();
  v27 = *(v22 + 8);
  v42 = v26;
  v43 = v27;
  swift_getWitnessTable();
  sub_1000C6A00();
  v28 = *(v14 + 8);
  v28(v17, v13);
  sub_1000C6A00();
  return (v28)(v19, v13);
}

uint64_t sub_1000BF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v35 = a1;
  v36 = a5;
  v39 = a3;
  v40 = type metadata accessor for FlowViewDataProvider(255);
  v27 = sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  v28 = v39;
  v26 = v40;
  v41 = a4;
  v42 = v27;
  v7 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v10 = &WitnessTable - v9;
  v11 = *(a2 + 16);
  v41 = v7;
  v42 = v27;
  v29 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v39 = OpaqueTypeMetadata2;
  v40 = v11;
  v41 = OpaqueTypeConformance2;
  v42 = WitnessTable;
  v13 = swift_getOpaqueTypeMetadata2();
  v31 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &WitnessTable - v14;
  v30 = type metadata accessor for ModifiedContent();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v17 = &WitnessTable - v16;
  sub_1000BC844();
  swift_checkMetadataState();
  View.environment<A>(_:)();

  v19 = WitnessTable;
  v18 = v25;
  View.environment<A>(_:)();
  (*(v33 + 8))(v10, OpaqueTypeMetadata2);
  v39 = OpaqueTypeMetadata2;
  v40 = v11;
  v41 = v18;
  v42 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  sub_10007DF6C(0, 0, v13);
  (*(v31 + 8))(v15, v13);
  v21 = sub_1000BFF34();
  v37 = v20;
  v38 = v21;
  v22 = v30;
  swift_getWitnessTable();
  View.modifier<A>(_:)();
  return (*(v32 + 8))(v17, v22);
}

uint64_t sub_1000BF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a6;
  v36 = a8;
  v37 = a1;
  v38 = a2;
  v39 = a9;
  v34 = a10;
  type metadata accessor for FlowViewDataProvider(255);
  v14 = *(*(a7 + 8) + 16);
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v44 = OpaqueTypeMetadata2;
  v45 = a3;
  v46 = OpaqueTypeConformance2;
  v47 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &WitnessTable - v20;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = v35;
  v48 = a7;
  v22 = v36;
  v49 = v36;
  v50 = v34;
  v23 = type metadata accessor for FlowStackView(0, &v44);
  sub_1000BF3DC(v37, v23, a4, v14, v19);
  v44 = OpaqueTypeMetadata2;
  v45 = a3;
  v46 = OpaqueTypeConformance2;
  v47 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1000BFF34();
  v42 = v24;
  v43 = v25;
  v26 = swift_getWitnessTable();
  v27 = *(v22 + 8);
  v40 = v26;
  v41 = v27;
  swift_getWitnessTable();
  sub_1000C6A00();
  v28 = *(v16 + 8);
  v28(v19, v15);
  sub_1000C6A00();
  return (v28)(v21, v15);
}

uint64_t sub_1000BFACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a6;
  v38 = a7;
  v39 = a1;
  v40 = a2;
  v41 = a9;
  v35 = a10;
  v36 = a4;
  v34 = a8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FlowViewDataProvider(255);
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = a3;
  WitnessTable = swift_getWitnessTable();
  v46 = OpaqueTypeMetadata2;
  v47 = a3;
  v48 = OpaqueTypeConformance2;
  v49 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &WitnessTable - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &WitnessTable - v19;
  v46 = v13;
  v47 = v36;
  v48 = a5;
  v49 = v37;
  v21 = v34;
  v50 = v38;
  v51 = v34;
  v52 = v35;
  v22 = type metadata accessor for FlowStackView(0, &v46);
  v23 = swift_checkMetadataState();
  sub_1000BF3DC(v39, v22, v23, v12, v18);
  v46 = OpaqueTypeMetadata2;
  v47 = v13;
  v48 = OpaqueTypeConformance2;
  v49 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_1000BFF34();
  v44 = v24;
  v45 = v25;
  v26 = swift_getWitnessTable();
  v27 = *(v21 + 8);
  v42 = v26;
  v43 = v27;
  swift_getWitnessTable();
  sub_1000C6A00();
  v28 = *(v15 + 8);
  v28(v18, v14);
  sub_1000C6A00();
  return (v28)(v20, v14);
}

unint64_t sub_1000BFE78()
{
  result = qword_10018FDF8;
  if (!qword_10018FDF8)
  {
    sub_100004D48(&qword_10018FDF0, &qword_10012D490);
    sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView, &unk_10012F5D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FDF8);
  }

  return result;
}

unint64_t sub_1000BFF34()
{
  result = qword_10018FE08;
  if (!qword_10018FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE08);
  }

  return result;
}

unint64_t sub_1000BFF88()
{
  result = qword_10018FE18;
  if (!qword_10018FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE18);
  }

  return result;
}

uint64_t sub_1000BFFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C003C()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BE958(v3);
}

uint64_t sub_1000C00DC()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000C01C0()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BEC24(v3);
}

uint64_t sub_1000C0260()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BEE94(v3);
}

uint64_t sub_1000C0350()
{

  if (*(v0 + 96))
  {
  }

  sub_1000C0D1C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000C0448(uint64_t *a1)
{
  v1 = *a1;
  v132 = a1[1];
  v2 = a1[2];
  v3 = a1[5];
  v102 = a1[4];
  sub_100004D48(&qword_10018FDF0, &qword_10012D490);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  type metadata accessor for ContentMessageView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  sub_1000BFE78();
  swift_getWitnessTable();
  sub_1000C0CA0();
  swift_getWitnessTable();
  sub_1000C0C88();
  sub_1000BFFDC(v4, v5, &protocol conformance descriptor for ContentMessageView);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000C0C58();
  swift_getWitnessTable();
  sub_1000C0C3C();
  v127 = v1;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  v188 = sub_1000BFF34();
  swift_getWitnessTable();
  v141 = *(v3 + 8);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = OpaqueTypeMetadata2;
  sub_1000C0CF4(OpaqueTypeMetadata2, v10, v11, v12, v13, v14, v15, v16, v59, v64, v69, v74, v79, v84, v3, v93, v97, v102, v108, v113, v2, v122, v127, v132, &protocol conformance descriptor for <> ModifiedContent<A, B>, v141, v188, v150, v155, v160, v165, v170, v175, v179, v184, v7);
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = v17;
  sub_1000C0CF4(v17, v19, v20, v21, v22, v23, v24, v25, v60, v65, v70, v75, v80, v85, v89, v94, v98, v103, v109, v114, v118, v123, v128, v133, v137, v142, v146, v151, v156, v161, v166, v171, v176, v180, v185, v9);
  v86 = swift_getOpaqueTypeMetadata2();
  v81 = type metadata accessor for OptionInfoItem(255);
  sub_100004D48(&qword_10018FE10, &qword_10012D498);
  v115 = type metadata accessor for FlowViewDataProvider(255);
  sub_1000BFF88();
  sub_1000C0BE8();
  v110 = sub_1000BFFDC(v26, v27, &unk_100129E68);
  swift_getOpaqueTypeConformance2();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  v28 = type metadata accessor for ModifiedContent();
  sub_1000C0CF4(v28, v29, v30, v31, v32, v33, v34, v35, v61, v66, v71, v76, v81, v86, v90, WitnessTable, v99, v104, v110, v115, v119, v124, v129, v134, v138, v143, v147, v152, v157, v162, v167, v172, v177, v181, v186, v18);
  sub_1000C0CB8();
  v67 = sub_1000BFFDC(v36, v37, &unk_1001300C8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  sub_1000C0C70();
  v100 = v38;
  sub_1000C0D10();
  v125 = swift_getOpaqueTypeMetadata2();
  v39 = *(v105 + 8);
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  v106 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = *(v39 + 8);
  v82 = OpaqueTypeConformance2;
  v182 = swift_getOpaqueTypeConformance2();
  v173 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  sub_1000C0D10();
  v87 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000C0D10();
  v42 = swift_getOpaqueTypeMetadata2();
  sub_1000C0CF4(v42, v43, v44, v45, v46, v47, v48, v49, v62, v67, v72, v77, v82, v87, v91, v95, v100, v106, v111, v116, v120, v125, v130, v135, v139, v144, v148, v153, v158, v163, v168, v173, v144, v182, v148, AssociatedTypeWitness);
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  type metadata accessor for ModifiedContent();
  v50 = swift_getOpaqueTypeConformance2();
  sub_1000C0CF4(v50, v51, v52, v53, v54, v55, v56, v57, v63, v68, v73, v78, v83, v88, v92, v96, v101, v107, v112, v117, v121, v126, v131, v136, v140, v145, v149, v154, v159, v164, v169, v174, v178, v183, v187, v42);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C0BB8(uint64_t a1)
{
  *(a1 + 64) = v3;
  v6 = *(v2 + 16);
  *(a1 + 72) = *v2;
  *(a1 + 88) = v6;
  *(a1 + 104) = *(v2 + 32);

  return sub_100033974(v4 - 104, v1 + 712);
}

__n128 sub_1000C0C2C(uint64_t a1)
{
  v3 = *(v1 + 528);
  result = *(v1 + 544);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000C0CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C0D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C0D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C0E08(uint64_t a1, char a2, uint64_t a3)
{

  sub_100003768(&qword_10018FE30, &qword_10012D5C8);
  type metadata accessor for OptionInfoItem(0);
  sub_1000C1A84();
  sub_1000C1C60(&qword_10018FE20, type metadata accessor for OptionInfoItem, &unk_1001300C8);
  return NavigationLink<>.init<A>(value:label:)();
}

uint64_t sub_1000C0EE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v22 = a2;
  v25 = a4;
  v26 = type metadata accessor for AccessibilityTraits();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100003768(&qword_10018FE40, &qword_10012D5D0);
  __chkstk_darwin(v11);
  v13 = &v21[-v12];
  v14 = sub_100003768(&qword_10018FE60, &qword_10012D5E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21[-v16];
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v18 = sub_100003768(&qword_10018FE68, &qword_10012D5F0);
  sub_1000C120C(a1, v22 & 1, v23, &v13[*(v18 + 44)]);
  v13[*(v11 + 36)] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v19 = sub_1000C1B7C();
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v7);
  sub_10001D724(v13, &qword_10018FE40, &qword_10012D5D0);
  static AccessibilityTraits.isButton.getter();
  v27 = v11;
  v28 = v19;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v24 + 8))(v6, v26);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1000C120C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a1;
  v6 = sub_100003768(&qword_10018FE70, &qword_10012D5F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v24[-v10];
  v12 = sub_100003768(&qword_1001889E0, &qword_100121D10);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v24[-v17];
  sub_100006578(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image, &v24[-v17], &qword_1001889F0, &qword_100121D20);
  v19 = static Edge.Set.trailing.getter();
  v20 = &v18[*(v13 + 44)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = sub_100003768(&qword_10018FE78, &qword_10012D600);
  sub_1000C1488(v26, v25 & 1, a3, &v11[*(v21 + 44)]);
  sub_100006578(v18, v16, &qword_1001889E0, &qword_100121D10);
  sub_100006578(v11, v9, &qword_10018FE70, &qword_10012D5F8);
  sub_100006578(v16, a4, &qword_1001889E0, &qword_100121D10);
  v22 = sub_100003768(&qword_10018FE80, &qword_10012D608);
  sub_100006578(v9, a4 + *(v22 + 48), &qword_10018FE70, &qword_10012D5F8);
  sub_10001D724(v11, &qword_10018FE70, &qword_10012D5F8);
  sub_10001D724(v18, &qword_1001889E0, &qword_100121D10);
  sub_10001D724(v9, &qword_10018FE70, &qword_10012D5F8);
  return sub_10001D724(v16, &qword_1001889E0, &qword_100121D10);
}

uint64_t sub_1000C1488@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_100003768(&qword_100189588, &qword_100122B80);
  v8 = __chkstk_darwin(v7 - 8);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v10;
  v56 = sub_100003768(&qword_100189580, &qword_100123A50);
  v11 = __chkstk_darwin(v56);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v54 = a3;
  v15 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title + 8);
  v61 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v62 = v15;
  v16 = sub_10000AC24();

  v53 = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  sub_1000C1918(a1, a2 & 1, a3);
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10000AC78(v17, v19, v16 & 1);

  v61 = v21;
  v62 = v23;
  v63 = v25 & 1;
  v64 = v27;
  static String.stepSectionOptionTitle.getter();
  v58 = v14;
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v21, v23, v25 & 1);

  v28 = *(v54 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  if (v28)
  {
    v61 = *(v54 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
    v62 = v28;

    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    static Font.subheadline.getter();
    v34 = Text.font(_:)();
    v36 = v35;
    v38 = v37;

    sub_10000AC78(v29, v31, v33 & 1);

    static Color.secondary.getter();
    v39 = Text.foregroundColor(_:)();
    v41 = v40;
    LOBYTE(v31) = v42;
    v44 = v43;

    sub_10000AC78(v34, v36, v38 & 1);

    v61 = v39;
    v62 = v41;
    v63 = v31 & 1;
    v64 = v44;
    static String.stepSectionOptionDescription.getter();
    v45 = v55;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v39, v41, v31 & 1);

    v46 = v57;
    sub_1000177F8(v45, v57);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v57;
    v45 = v55;
  }

  sub_100003CE8(v46, v47, 1, v56);
  v48 = v58;
  sub_100006578(v58, v45, &qword_100189580, &qword_100123A50);
  v49 = v60;
  sub_100006578(v46, v60, &qword_100189588, &qword_100122B80);
  v50 = v59;
  sub_100006578(v45, v59, &qword_100189580, &qword_100123A50);
  v51 = sub_100003768(&qword_10018FE88, &qword_10012D610);
  sub_100006578(v49, v50 + *(v51 + 48), &qword_100189588, &qword_100122B80);
  sub_10001D724(v46, &qword_100189588, &qword_100122B80);
  sub_10001D724(v48, &qword_100189580, &qword_100123A50);
  sub_10001D724(v49, &qword_100189588, &qword_100122B80);
  return sub_10001D724(v45, &qword_100189580, &qword_100123A50);
}

uint64_t sub_1000C1918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  v9 = static Font.body.getter();
  if (v8)
  {
    (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
    Font.leading(_:)();

    (*(v5 + 8))(v7, v4);
    v9 = Font.bold()();
  }

  return v9;
}

unint64_t sub_1000C1A84()
{
  result = qword_10018FE38;
  if (!qword_10018FE38)
  {
    sub_100004D48(&qword_10018FE30, &qword_10012D5C8);
    sub_100004D48(&qword_10018FE40, &qword_10012D5D0);
    sub_1000C1B7C();
    swift_getOpaqueTypeConformance2();
    sub_1000C1C60(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE38);
  }

  return result;
}

unint64_t sub_1000C1B7C()
{
  result = qword_10018FE48;
  if (!qword_10018FE48)
  {
    sub_100004D48(&qword_10018FE40, &qword_10012D5D0);
    sub_10000AAEC(&qword_10018FE50, &qword_10018FE58, &qword_10012D5D8, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_1001894F0, &qword_1001894F8, &qword_10012D5E0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE48);
  }

  return result;
}

uint64_t sub_1000C1C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C1D18(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003768(&qword_10018A8B8, &qword_100124F50);
  __chkstk_darwin(v2);
  sub_1000C2344();
  sub_100003768(&qword_10018FEA0, &qword_10012D6B0);
  sub_1000350A8();
  sub_1000C25F4();
  return Section<>.init(header:content:)();
}

uint64_t sub_1000C1E10(uint64_t a1, uint64_t a2)
{

  sub_100039DAC(a2, a1);
  sub_10002C8FC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100003768(&qword_10018FEC8, &unk_10012D6F0);
  sub_100003768(&qword_10018FEB8, &qword_10012D6B8);
  sub_1000C27AC();
  sub_1000C2678();
  return ForEach<>.init(_:id:content:)();
}

void *sub_1000C1F04@<X0>(void *a1@<X8>)
{
  type metadata accessor for HMTSolution.Article();
  sub_1000C2810(&qword_10018FEE0, &type metadata accessor for HMTSolution.Article, &protocol conformance descriptor for HMTSolution.Article);
  result = dispatch thunk of Identifiable.id.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = type metadata accessor for HMTSolution.Article();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LearnMoreArticleView(0);
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018FED8, &qword_10012D700);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  (*(v6 + 16))(v8, a2, v5);
  sub_100013ED4(v8, v11);
  sub_1000C2810(&qword_10018FEE0, &type metadata accessor for HMTSolution.Article, &protocol conformance descriptor for HMTSolution.Article);
  dispatch thunk of Identifiable.id.getter();
  v16 = v23;
  v17 = v24;
  sub_100015DF4(v11, v15);
  v18 = &v15[*(sub_100003768(&qword_100188458, &qword_100120AA8) + 36)];
  *v18 = v16;
  *(v18 + 1) = v17;
  v18[16] = 1;
  static String.stepSectionLearnMoreArticleFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  *(v19 + 32) = a1;
  String.init(format:_:)();

  v20 = sub_1000C2810(&qword_10018FEC0, type metadata accessor for LearnMoreArticleView, &unk_100122A68);
  v23 = v9;
  v24 = &type metadata for String;
  v25 = v20;
  v26 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000C22E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(sub_100003768(&qword_10018A5D8, &qword_1001244F8) + 48);

  return sub_1000C1F90(v3, v4, a2);
}

uint64_t sub_1000C2344()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for FlowStepSectionHeaderView(0);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188440 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = sub_10000C2D4(v5, qword_1001A5B18);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = type metadata accessor for FlowAsset(0);
  __asm { FMOV            V0.2D, #20.0 }

  *&v4[*(v7 + 20)] = _Q0;
  *&v4[*(v7 + 24)] = 0x4018000000000000;
  v13 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v4, 0, 1, v13);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v15 = &v4[*(v2 + 20)];
  *v15 = v14;
  v15[1] = v16;
  static String.stepSectionLearnMore.getter();
  sub_1000C2810(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
  View.accessibilityIdentifier(_:)();

  return sub_1000B4A14(v4);
}

unint64_t sub_1000C25F4()
{
  result = qword_10018FEA8;
  if (!qword_10018FEA8)
  {
    sub_100004D48(&qword_10018FEA0, &qword_10012D6B0);
    sub_1000C2678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEA8);
  }

  return result;
}

unint64_t sub_1000C2678()
{
  result = qword_10018FEB0;
  if (!qword_10018FEB0)
  {
    sub_100004D48(&qword_10018FEB8, &qword_10012D6B8);
    type metadata accessor for LearnMoreArticleView(255);
    sub_1000C2810(&qword_10018FEC0, type metadata accessor for LearnMoreArticleView, &unk_100122A68);
    swift_getOpaqueTypeConformance2();
    sub_1000C2810(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEB0);
  }

  return result;
}

unint64_t sub_1000C27AC()
{
  result = qword_10018FED0;
  if (!qword_10018FED0)
  {
    sub_100004D48(&qword_10018FEC8, &unk_10012D6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FED0);
  }

  return result;
}

uint64_t sub_1000C2810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C285C()
{
  result = qword_10018FEE8;
  if (!qword_10018FEE8)
  {
    sub_100004D48(qword_10018FEF0, &qword_10012D708);
    sub_1000350A8();
    sub_1000C25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEE8);
  }

  return result;
}

uint64_t sub_1000C2904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000C2940(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C2958(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C2998(uint64_t result, int a2, int a3)
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

uint64_t sub_1000C2A90()
{
  sub_1000C6AC4();
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v3);
  sub_1000C6AF0();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return sub_1000C6B00();
}

uint64_t sub_1000C2B40()
{
  sub_1000C6AC4();
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v3);
  sub_1000C6AF0();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return sub_1000C6B00();
}

uint64_t sub_1000C2BF0(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    sub_10000C30C();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  sub_10000C30C();
  v13 = v12 - v11;
  if (a2)
  {
    v14 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v15 = (v6 + 32);
    v16 = a2;
    do
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v15;
      }

      v19 = *v14++;
      v18 = v19;
      v20 = *v5++;
      (*(*(v18 - 8) + 16))(v13 + v17, v20);
      v15 += 4;
      --v16;
    }

    while (v16);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000C2D64(uint64_t a1, uint64_t a2)
{
  sub_100008780();
  __chkstk_darwin(v4);
  sub_10000C30C();
  (*(v7 + 16))(v6 - v5, v2, a1);
  return AnyView.init<A>(_:)();
}

uint64_t sub_1000C2E28()
{
  v1 = *(v0 + 16);
  sub_100006568(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000C2E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000C2F08(a1, a2, WitnessTable, a3);
}

uint64_t sub_1000C2ECC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a1;
  v64 = a4;
  v6 = type metadata accessor for _ViewModifier_Content();
  v65 = a2;
  v66 = a3;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  sub_1000C6AA0();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = *(*(AssociatedConformanceWitness + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  sub_1000048D4();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  type metadata accessor for Menu();
  type metadata accessor for InlinePickerStyle();
  sub_1000C6A3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  sub_1000048D4();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_1000233C4();
  sub_1000C6A88();
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  sub_1000C6A70();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000C6A58();
  v72 = v6;
  v73 = OpaqueTypeMetadata2;
  v61 = OpaqueTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v74 = WitnessTable;
  v75 = swift_getOpaqueTypeConformance2();
  v60 = v75;
  v9 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v55 = v10;
  v12 = __chkstk_darwin(v11);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v53 = &v52 - v14;
  v15 = swift_checkMetadataState();
  sub_100008780();
  v17 = v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008780();
  v26 = v25;
  sub_10000ED78();
  __chkstk_darwin(v27);
  sub_1000C6AF0();
  v59 = v9;
  type metadata accessor for _ConditionalContent();
  sub_100008780();
  v57 = v29;
  v58 = v28;
  sub_10000ED78();
  __chkstk_darwin(v30);
  v56 = &v52 - v31;
  (*(v66 + 32))(v65);
  swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getAssociatedConformanceWitness();
  v32 = dispatch thunk of Collection.isEmpty.getter();
  (*(v26 + 8))(AssociatedConformanceWitness, AssociatedTypeWitness);
  if ((v32 & 1) != 0 || (v33 = static Bool.allowOverrides.getter(), (v33 & 1) == 0))
  {
    v46 = *(v17 + 16);
    v46(v23, v63, v15);
    v46(v21, v23, v15);
    v35 = v61;
    v38 = WitnessTable;
    v72 = v15;
    v73 = v61;
    sub_1000C6A0C();
    v45 = v56;
    sub_1000C2A90();
    v47 = *(v17 + 8);
    v47(v21, v15);
    v47(v23, v15);
  }

  else
  {
    __chkstk_darwin(v33);
    v34 = v66;
    *(&v52 - 4) = v65;
    *(&v52 - 3) = v34;
    *(&v52 - 2) = v67;
    v35 = v61;
    v36 = swift_checkMetadataState();
    v37 = v54;
    v38 = WitnessTable;
    View.toolbar<A>(content:)();
    v72 = v15;
    v73 = v36;
    v67 = sub_1000C6A0C();
    v39 = v55;
    v66 = *(v55 + 16);
    v40 = v53;
    v41 = v59;
    (v66)(v53, v37, v59);
    v42 = *(v39 + 8);
    v42(v37, v41);
    (v66)(v37, v40, v41);
    v43 = v56;
    sub_1000C2B40();
    v42(v37, v41);
    v44 = v41;
    v45 = v43;
    v42(v40, v44);
  }

  v72 = v15;
  v73 = v35;
  v48 = sub_1000C6A0C();
  v68 = v38;
  v69 = v48;
  sub_10009988C();
  v49 = v58;
  swift_getWitnessTable();
  v50 = v57;
  (*(v57 + 16))(v64, v45, v49);
  return (*(v50 + 8))(v45, v49);
}

unint64_t sub_1000C374C()
{
  result = qword_10018FFB0;
  if (!qword_10018FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFB0);
  }

  return result;
}

unint64_t sub_1000C37E8()
{
  result = qword_10018FFB8;
  if (!qword_10018FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFB8);
  }

  return result;
}

unint64_t sub_1000C383C()
{
  result = qword_10018FFC0;
  if (!qword_10018FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFC0);
  }

  return result;
}

uint64_t sub_1000C3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C3980()
{
  result = qword_100190018;
  if (!qword_100190018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190018);
  }

  return result;
}

unint64_t sub_1000C39D4()
{
  result = qword_100190020;
  if (!qword_100190020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190020);
  }

  return result;
}

uint64_t sub_1000C3A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  swift_getWitnessTable();
  v20[13] = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for Menu();
  v9 = type metadata accessor for InlinePickerStyle();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v20[9] = v8;
  v20[10] = v9;
  v20[11] = WitnessTable;
  v20[12] = &protocol witness table for InlinePickerStyle;
  v20[7] = swift_getOpaqueTypeConformance2();
  v20[8] = sub_1000233C4();
  swift_getWitnessTable();
  v11 = type metadata accessor for ToolbarItem();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a1;
  ToolbarItem<>.init(placement:content:)();
  swift_getWitnessTable();
  (*(v12 + 16))(v17, v15, v11);
  v18 = *(v12 + 8);
  v18(v15, v11);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v18)(v17, v11);
}

uint64_t sub_1000C3E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21[1] = a1;
  v22 = a4;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  swift_getWitnessTable();
  v29 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for Menu();
  v7 = type metadata accessor for InlinePickerStyle();
  WitnessTable = swift_getWitnessTable();
  v25 = v6;
  v26 = v7;
  v27 = WitnessTable;
  v28 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  sub_1000C41BC(a2, a3, v13);
  v25 = v6;
  v26 = v7;
  v27 = WitnessTable;
  v28 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1000233C4();
  v23 = OpaqueTypeConformance2;
  v24 = v17;
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v13, v9);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v18(v22, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_1000C41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  v45 = type metadata accessor for InlinePickerStyle();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = a2;
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Array();
  v8 = sub_100004D48(&qword_100190028, &qword_10012D9E0);
  WitnessTable = swift_getWitnessTable();
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v51 = v7;
  v52 = AssociatedTypeWitness;
  v53 = v8;
  v54 = WitnessTable;
  v55 = v10;
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for TupleView();
  v12 = swift_getWitnessTable();
  v51 = &type metadata for Image;
  v52 = v11;
  v53 = &protocol witness table for Image;
  v54 = v12;
  v13 = type metadata accessor for Menu();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = swift_getWitnessTable();
  v51 = v13;
  v52 = v45;
  v53 = v16;
  v54 = &protocol witness table for InlinePickerStyle;
  v36 = &opaque type descriptor for <<opaque return type of View.pickerStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v34 - v17;
  type metadata accessor for AccessibilityAttachmentModifier();
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v34 - v24;
  v46 = v39;
  v47 = v40;
  v48 = v42;
  Menu.init(content:label:)();
  v26 = v41;
  InlinePickerStyle.init()();
  v27 = v45;
  View.pickerStyle<A>(_:)();
  (*(v43 + 8))(v26, v27);
  (*(v38 + 8))(v15, v13);
  static String.overrideMenu.getter();
  v51 = v13;
  v52 = v27;
  v53 = v16;
  v54 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();

  (*(v37 + 8))(v18, v29);
  v30 = sub_1000233C4();
  v49 = OpaqueTypeConformance2;
  v50 = v30;
  swift_getWitnessTable();
  v31 = *(v20 + 16);
  v31(v25, v23, v19);
  v32 = *(v20 + 8);
  v32(v23, v19);
  v31(v44, v25, v19);
  return (v32)(v25, v19);
}

uint64_t sub_1000C47A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v70 = a4;
  v71 = a1;
  v68 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  __chkstk_darwin(v68);
  v47 = &v46 - v6;
  v67 = sub_100003768(&qword_100190030, &qword_10012D9E8);
  v7 = __chkstk_darwin(v67);
  v69 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v66 = &v46 - v10;
  v64 = *(a2 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v9);
  v63 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 16);
  v15 = AssociatedConformanceWitness;
  v62 = AssociatedConformanceWitness;
  v51 = v14;
  v16 = swift_getAssociatedTypeWitness();
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v50 = *(swift_getAssociatedConformanceWitness() + 8);
  v52 = type metadata accessor for EnumeratedSequence();
  __chkstk_darwin(v52);
  v48 = &v46 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = type metadata accessor for Array();
  v61 = v20;
  v21 = sub_100004D48(&qword_100190028, &qword_10012D9E0);
  v59 = v21;
  WitnessTable = swift_getWitnessTable();
  v57 = *(*(v15 + 8) + 8);
  v79 = v20;
  v80 = AssociatedTypeWitness;
  v60 = AssociatedTypeWitness;
  v81 = v21;
  v82 = WitnessTable;
  v83 = v57;
  v22 = type metadata accessor for ForEach();
  v73 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = &v46 - v26;
  v55 = *(a3 + 32);
  v56 = a3 + 32;
  v27 = v71;
  v28 = v54;
  v55(v54, a3);
  dispatch thunk of static CaseIterable.allCases.getter();
  Sequence.enumerated()();
  (*(v53 + 8))(v18, v16);
  swift_getWitnessTable();
  v79 = Array.init<A>(_:)();
  v74 = v28;
  v75 = a3;
  swift_getKeyPath();
  v29 = v64;
  v30 = v63;
  (*(v64 + 16))(v63, v27, v28);
  v31 = v29;
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  *(v33 + 24) = a3;
  (*(v31 + 32))(v33 + v32, v30, v28);
  v34 = swift_allocObject();
  v34[2] = v28;
  v34[3] = a3;
  v34[4] = sub_1000C5FA4;
  v34[5] = v33;
  v45 = sub_1000C6024();
  ForEach<>.init(_:id:content:)();
  v78[2] = v45;
  v65 = swift_getWitnessTable();
  v35 = v73;
  v36 = *(v73 + 16);
  v36(v72, v25, v22);
  v37 = *(v35 + 8);
  v73 = v35 + 8;
  v37(v25, v22);
  v38 = v28;
  v55(v28, a3);
  if ((*(v62 + 32))(v60))
  {
    v39 = v47;
    sub_1000C5BA0(v38, a3, v47);
    v40 = v66;
    sub_1000C6388(v39, v66);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v66;
  }

  sub_100003CE8(v40, v41, 1, v68);
  v42 = v72;
  v36(v25, v72, v22);
  v79 = v25;
  v43 = v69;
  sub_10000EC9C(v40, v69, &qword_100190030, &qword_10012D9E8);
  v80 = v43;
  v78[0] = v22;
  v78[1] = v67;
  v76 = v65;
  v77 = sub_1000C6304();
  sub_1000C2BF0(&v79, 2, v78);
  sub_10000ABCC(v40, &qword_100190030, &qword_10012D9E8);
  v37(v42, v22);
  sub_10000ABCC(v43, &qword_100190030, &qword_10012D9E8);
  return (v37)(v25, v22);
}

uint64_t sub_1000C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100003768(&qword_100190050, &qword_10012DA18);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_1000C515C(a2, a3, a4, a5, &v15 - v11);
  static String.overrideMenuItem.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100121620;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = a1;
  String.init(format:_:)();

  sub_1000C60B0();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v12, &qword_100190050, &qword_10012DA18);
}

uint64_t sub_1000C515C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v54 = a5;
  v53 = sub_100003768(&qword_100190070, &qword_10012DA28);
  __chkstk_darwin(v53);
  v48 = &v40 - v8;
  v51 = sub_100003768(&qword_1001900A8, &qword_10012DA48);
  __chkstk_darwin(v51);
  v52 = &v40 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v49 = &v40 - v12;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003768(&qword_100190088, &qword_10012DA30);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - v16;
  v50 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  __chkstk_darwin(v50);
  v45 = &v40 - v17;
  v47 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v19(v56);
    v23 = v57;
    v24 = v58;
    sub_100025734(v56, v57);
    v55 = sub_1000C2D64(v23, v24);
    static String.overrideMenuSubContent.getter();
    v25 = v48;
    View.accessibilityIdentifier(_:)();

    sub_1000086BC(v56);
    v26 = &qword_100190070;
    v27 = &qword_10012DA28;
    sub_10000EC9C(v25, v52, &qword_100190070, &qword_10012DA28);
    swift_storeEnumTagMultiPayload();
    sub_1000C61C0();
    sub_1000C624C();
    _ConditionalContent<>.init(storage:)();
    sub_1000068F8(v21, v22);
    v28 = v25;
  }

  else
  {
    (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42, a3);
    v29 = v41;
    v30 = *(v41 + 16);
    v40 = a1;
    v30(v49, a1, AssociatedTypeWitness);
    v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v32 = (v14 + v31 + *(v29 + 80)) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v34 = v47;
    *(v33 + 16) = a3;
    *(v33 + 24) = v34;
    (*(v13 + 32))(v33 + v31, v15, a3);
    v35 = (*(v29 + 32))(v33 + v32, v49, AssociatedTypeWitness);
    __chkstk_darwin(v35);
    *(&v40 - 4) = a3;
    *(&v40 - 3) = v34;
    *(&v40 - 2) = v40;
    sub_100003768(&qword_100190098, &unk_10012DA38);
    sub_10000AAEC(&qword_1001900A0, &qword_100190098, &unk_10012DA38, &protocol conformance descriptor for HStack<A>);
    v36 = v43;
    Button.init(action:label:)();
    static String.overrideMenuItemButton.getter();
    sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30, &protocol conformance descriptor for Button<A>);
    v37 = v45;
    v38 = v46;
    View.accessibilityIdentifier(_:)();

    (*(v44 + 8))(v36, v38);
    v26 = &qword_100190038;
    v27 = &qword_10012D9F0;
    sub_10000EC9C(v37, v52, &qword_100190038, &qword_10012D9F0);
    swift_storeEnumTagMultiPayload();
    sub_1000C61C0();
    sub_1000C624C();
    _ConditionalContent<>.init(storage:)();
    v28 = v37;
  }

  return sub_10000ABCC(v28, v26, v27);
}

uint64_t sub_1000C57EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 48))(a3, a4);
  if (!v7 || (v9 = v7, v10 = v8, v11 = swift_getAssociatedTypeWitness(), v17[3] = v11, v17[4] = swift_getAssociatedConformanceWitness(), v12 = sub_10003EE2C(v17), (*(*(v11 - 8) + 16))(v12, a2, v11), v13 = v9(v17), sub_1000068F8(v9, v10), result = sub_1000086BC(v17), (v13 & 1) == 0))
  {
    (*(a4 + 40))(a3, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10008D638(a2, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8));
  }

  return result;
}

__n128 sub_1000C5994@<Q0>(uint64_t a4@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  sub_1000C5A18(&v9);
  v6 = v10;
  v7 = v11;
  result = v9;
  *a4 = v5;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = result;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  return result;
}

uint64_t sub_1000C5A18@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1000C5B00(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1000C5BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v16[1] = a3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = sub_100003768(&qword_100190088, &qword_10012DA30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  (*(v7 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + v13, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100003768(&qword_100190098, &unk_10012DA38);
  sub_10000AAEC(&qword_1001900A0, &qword_100190098, &unk_10012DA38, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  static String.overrideMenuExitFlow.getter();
  sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000C5E44@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000C5E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v5 - 8);
  (*(a3 + 40))(a2, a3);
  NavigationPath.init()();
  sub_100089B88();
}

double sub_1000C5F30@<D0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  result = 5.35837306e228;
  *(a2 + 24) = xmmword_10012D710;
  *(a2 + 40) = 0;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000C5FE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000C6024()
{
  result = qword_100190040;
  if (!qword_100190040)
  {
    sub_100004D48(&qword_100190028, &qword_10012D9E0);
    sub_1000C60B0();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190040);
  }

  return result;
}

unint64_t sub_1000C60B0()
{
  result = qword_100190048;
  if (!qword_100190048)
  {
    sub_100004D48(&qword_100190050, &qword_10012DA18);
    sub_1000C6134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190048);
  }

  return result;
}

unint64_t sub_1000C6134()
{
  result = qword_100190058;
  if (!qword_100190058)
  {
    sub_100004D48(&qword_100190060, &qword_10012DA20);
    sub_1000C61C0();
    sub_1000C624C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190058);
  }

  return result;
}

unint64_t sub_1000C61C0()
{
  result = qword_100190068;
  if (!qword_100190068)
  {
    sub_100004D48(&qword_100190070, &qword_10012DA28);
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190068);
  }

  return result;
}

unint64_t sub_1000C624C()
{
  result = qword_100190078;
  if (!qword_100190078)
  {
    sub_100004D48(&qword_100190038, &qword_10012D9F0);
    sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30, &protocol conformance descriptor for Button<A>);
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190078);
  }

  return result;
}

unint64_t sub_1000C6304()
{
  result = qword_100190090;
  if (!qword_100190090)
  {
    sub_100004D48(&qword_100190030, &qword_10012D9E8);
    sub_1000C624C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190090);
  }

  return result;
}

uint64_t sub_1000C6388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C63F8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C64B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1000C6AB8();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  sub_1000C6AB8();
  v8 = *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008780();
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v6 + v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  (*(v4 + 8))(v1 + v6, v2);
  (*(v11 + 8))(v1 + v15, AssociatedTypeWitness);

  return _swift_deallocObject(v1, v15 + v16, v17 | 7);
}

uint64_t sub_1000C65F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1000C6AB8();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1000C6AB8();
  v8 = *(v7 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v2 + ((v6 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1000C57EC(v2 + v6, v10, v3, v4);
}

uint64_t sub_1000C66F4(void *a1)
{
  type metadata accessor for _ViewModifier_Content();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  sub_1000C6AA0();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  sub_1000048D4();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  type metadata accessor for Menu();
  type metadata accessor for InlinePickerStyle();
  sub_1000C6A3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  sub_1000048D4();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000233C4();
  sub_1000C6A88();
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  sub_1000C6A70();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000C6A58();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1000048D4();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000C6A0C()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C6AC4()
{

  return type metadata accessor for _ConditionalContent.Storage(0);
}

uint64_t sub_1000C6B00()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000C6B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000C6C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AMSWebView(uint64_t a1)
{
  result = qword_100190108;
  if (!qword_100190108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C6D08(uint64_t a1)
{
  sub_1000C6DEC(319, qword_1001917B0, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000C6DEC(319, &unk_100190118, type metadata accessor for AMSWebViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C6DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000C6E6C@<X0>(uint64_t a1@<X8>)
{
  sub_100003768(&qword_100190148, &qword_10012DAB8);
  v2 = swift_allocBox();
  type metadata accessor for AMSWebView(0);
  sub_100003768(&qword_100190150, &qword_10012DAC0);
  State.wrappedValue.getter();
  type metadata accessor for AMSWebViewModel(0);
  sub_1000C96B4(&qword_100190158, type metadata accessor for AMSWebViewModel, &unk_10012DD78);
  Bindable<A>.init(wrappedValue:)();
  sub_100003768(&qword_100190160, &qword_10012DAC8);
  sub_1000C8CBC();
  NavigationStack.init<>(root:)();
  v3 = (a1 + *(sub_100003768(&qword_1001901B8, &qword_10012DB10) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v3 = &unk_10012DB08;
  v3[1] = v2;
  return result;
}

uint64_t sub_1000C6FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v51 = a1;
  v67 = a3;
  v3 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v54 = type metadata accessor for WebView();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100003768(&qword_100190190, &qword_10012DAF0);
  __chkstk_darwin(v70);
  v68 = &v45 - v10;
  v56 = sub_100003768(&qword_100190188, &qword_10012DAE8);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v69 = &v45 - v11;
  v59 = sub_100003768(&qword_100190178, &qword_10012DAD8);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v45 - v12;
  v64 = sub_100003768(&qword_100190170, &qword_10012DAD0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v45 - v13;
  v65 = sub_100003768(&qword_1001901C0, &qword_10012DB18);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v45 - v14;
  v15 = swift_projectBox();
  v16 = *(v4 + 16);
  v16(v8, v15, v3);
  Bindable.wrappedValue.getter();
  v17 = *(v4 + 8);
  v18 = v8;
  v17(v8, v3);
  sub_1000CB570();

  v19 = v50;
  WebView.init(model:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = v68;
  (v52)[4](v68, v19, v54);
  memcpy(&v20[*(v70 + 36)], __src, 0x70uLL);
  v21 = v53;
  v48 = v15;
  v47 = v16;
  v16(v53, v15, v3);
  v49 = v18;
  Bindable.projectedValue.getter();
  v17(v21, v3);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v17(v18, v3);
  v46 = v17;
  v52 = v74;
  v16(v21, v15, v3);
  Bindable.wrappedValue.getter();
  v17(v21, v3);
  v22 = *(v76 + 64);

  v54 = sub_1000C8EDC();

  v23 = v52;
  v24 = v68;
  View.authenticateSheet(authenticateRequest:bag:didComplete:)();

  sub_1000C9244(v24);
  v47(v21, v48, v3);
  v25 = v49;
  Bindable.projectedValue.getter();
  v26 = v46;
  v46(v21, v3);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v26(v25, v3);
  v27 = v74;

  v76 = v70;
  v77 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v55;
  v30 = v56;
  v31 = v69;
  View.alertDialogTask(request:didComplete:)();

  (*(v57 + 8))(v31, v30);
  v71 = v63;
  v32 = sub_100003768(&qword_100190180, &qword_10012DAE0);
  v72 = v30;
  v73 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_100004D48(&qword_1001901A8, &qword_10012DAF8);
  v35 = sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8, &protocol conformance descriptor for ToolbarItem<A, B>);
  v72 = v34;
  v73 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v58;
  v38 = v59;
  View.toolbar<A>(content:)();
  (*(v60 + 8))(v29, v38);
  sub_100003768(&qword_1001901C8, &qword_10012DB70);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_100121620;
  static ToolbarPlacement.navigationBar.getter();
  v72 = v38;
  v73 = v32;
  v74 = v33;
  v75 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v61;
  v40 = v64;
  View.toolbarBackground(_:for:)();

  (*(v66 + 8))(v37, v40);
  v41 = static SafeAreaRegions.all.getter();
  LOBYTE(v31) = static Edge.Set.all.getter();
  v42 = v67;
  (*(v62 + 32))(v67, v39, v65);
  result = sub_100003768(&qword_100190160, &qword_10012DAC8);
  v44 = v42 + *(result + 36);
  *v44 = v41;
  *(v44 + 8) = v31;
  return result;
}

uint64_t sub_1000C7AE0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, uint64_t))
{
  v9 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  sub_100008780();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = swift_projectBox();
  (*(v11 + 16))(v14, v15, v9);
  v16 = (v11 + 8);
  if (a2)
  {
    Bindable.wrappedValue.getter();
    v17 = (*v16)(v14, v9);
    v18 = a4(v17);
    v20 = v19;

    if (!v18)
    {
      return result;
    }

    v22 = 0;
    v23 = a1;
  }

  else
  {
    Bindable.wrappedValue.getter();
    v24 = (*v16)(v14, v9);
    v18 = a4(v24);
    v20 = v25;

    if (!v18)
    {
      return result;
    }

    v22 = a1;
    v23 = 0;
  }

  v18(v22, v23);
  return a5(v18, v20);
}

uint64_t sub_1000C7C84(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003768(&qword_1001901A8, &qword_10012DAF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v9 = a1;
  sub_100003768(&qword_1001901D0, &qword_10012DB78);
  sub_10000AAEC(&qword_1001901D8, &qword_1001901D0, &qword_10012DB78, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000C7E70(uint64_t a1)
{
  v2 = type metadata accessor for AMSWebView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000C930C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000C9494(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100003768(&qword_1001901E0, &qword_10012DB80);
  sub_10000AAEC(&qword_1001901E8, &qword_1001901E0, &qword_10012DB80, &protocol conformance descriptor for Label<A, B>);
  return Button.init(action:label:)();
}

uint64_t sub_1000C7FDC(uint64_t a1)
{
  v1[10] = a1;
  v2 = type metadata accessor for URL();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_1000C8144, v5, v4);
}

uint64_t sub_1000C8144()
{
  v38 = v0;
  if (qword_100188280 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_10000C2D4(v1, qword_1001A57F0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[12];
    v31 = v0[11];
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v9 = 136315138;
    v10 = swift_projectBox();
    v11 = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32 = v3;
    v12 = *(v5 + 16);
    v12(v4, v10, v7);
    Bindable.wrappedValue.getter();
    (*(v5 + 8))(v4, v7);
    (*(v8 + 16))(v6, v0[9] + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url, v31);

    v13 = URL.absoluteString.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v31);
    v16 = sub_10009CACC(v13, v15, &v37);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, v32, "Loading url: %s", v9, 0xCu);
    sub_1000086BC(v34);
    sub_100008744(v34);
    sub_100008744(v9);
  }

  else
  {
    v17 = v0[16];

    v12 = *(v17 + 16);
    v11 = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v18 = v12;
  v0[22] = v12;
  v19 = v0[16];
  v20 = v0[17];
  v21 = v0[15];
  v22 = v0[12];
  v33 = v0[11];
  v35 = v0[13];
  v23 = swift_projectBox();
  v0[23] = v23;
  v0[24] = v11;
  v12(v20, v23, v21);
  Bindable.wrappedValue.getter();
  v24 = *(v19 + 8);
  v0[25] = v24;
  v0[26] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v21);
  v0[27] = sub_1000CB570();

  v18(v20, v23, v21);
  Bindable.wrappedValue.getter();
  v24(v20, v21);
  v25 = v0[6];
  v26 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  v27 = *(v22 + 16);
  v0[28] = v27;
  v0[29] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v35, v25 + v26, v33);

  v36 = (&async function pointer to dispatch thunk of WebModel.loadURL(_:) + async function pointer to dispatch thunk of WebModel.loadURL(_:));
  v28 = swift_task_alloc();
  v0[30] = v28;
  *v28 = v0;
  v28[1] = sub_1000C8500;
  v29 = v0[13];

  return v36(v29);
}