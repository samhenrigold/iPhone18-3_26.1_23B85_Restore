uint64_t sub_100001B3C(uint64_t a1)
{
  result = type metadata accessor for Binding();
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

id sub_100001C00(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for _CPUITextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v18];

  UIViewRepresentableContext.coordinator.getter();
  [v4 addTarget:v18 action:"textFieldValueChanged:" forControlEvents:0x20000];

  [v4 setAutocapitalizationType:3];
  [v4 setAutocorrectionType:1];
  v5 = *(v2 + *(a2 + 40));
  [v4 setKeyboardType:v5];
  [v4 setTextAlignment:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setReturnKeyType:9];
  v6 = sub_1000043F4();
  v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
  [v4 setFont:v7];

  if (v5 == 8)
  {
    v8 = [objc_opt_self() currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (!v9)
    {
      v17 = [objc_allocWithZone(UIToolbar) init];
      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10004E490;
      *(v10 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
      *(v10 + 40) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v4 action:"resignFirstResponder"];
      sub_10000598C(0, &qword_1000746F8, UIBarButtonItem_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v17 setItems:isa];

      v12 = v17;
      [v12 sizeToFit];
      [v4 setInputAccessoryView:v12];
    }
  }

  sub_10000598C(0, &qword_1000746E8, UIScribbleInteraction_ptr);
  UIViewRepresentableContext.coordinator.getter();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:v18];

  [v4 addInteraction:v13];
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    [v4 setBorderStyle:3];
  }

  return v4;
}

void sub_100001FF4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + *(v10 + 56));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v29) = v12;
  v30 = v13;
  sub_100004944(&qword_1000746E0, &qword_10004E880);
  State.wrappedValue.getter();
  if (v32 != 1 || *(v3 + *(a3 + 32)) == 1)
  {
    v14 = *(v3 + *(a3 + 44));
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    v15 = v14(v9);
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = [a1 text];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v15 == v20 && v17 == v22)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_12;
    }

LABEL_9:
    v25 = String._bridgeToObjectiveC()();

    [a1 setText:v25];

    swift_getWitnessTable();
    type metadata accessor for UIViewRepresentableContext();
    UIViewRepresentableContext.coordinator.getter();
    v26 = v29;
    sub_100002B08(a1);
  }

LABEL_12:
  sub_100004378();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v27 = sub_100004990(v31 << 8 != 512);
  [a1 setTextColor:v27];
}

id sub_1000022EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Binding();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v32 = type metadata accessor for CPTextField.Coordinator(0, v4, v9, v10);
  v11 = sub_100004378();
  v31 = *(v2 + *(a1 + 36));
  v12 = (v2 + *(a1 + 56));
  v13 = *v12;
  v14 = *(v12 + 1);
  v38 = v13;
  v39 = v14;

  sub_100004944(&qword_1000746E0, &qword_10004E880);
  State.projectedValue.getter();
  v29 = v36;
  v30 = v35;
  v28 = v37;
  v15 = *(a1 + 48);
  v16 = (v2 + *(a1 + 44));
  v17 = v16[1];
  v27 = *v16;
  v18 = *(v2 + v15);
  v19 = *(v2 + v15 + 8);
  v20 = (v2 + *(a1 + 52));
  v21 = *v20;
  v22 = v20[1];

  v23 = v33;
  Binding.projectedValue.getter();
  v24 = sub_100004CB8(v11, v31, v30, v29, v28, v27, v17, v18, v19, v21, v22, v8);
  (*(v34 + 8))(v8, v23);

  return v24;
}

id sub_100002560(void *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = *(v3 - 8);
  __chkstk_darwin(v6);
  v11 = &v17 - v10;
  result = [a1 text];
  if (result)
  {
    v18 = v5;
    v13 = result;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    (*(v1 + *((swift_isaMask & *v1) + 0x70)))(v14, v16);

    if ((*(v9 + 48))(v8, 1, v3) == 1)
    {
      return (*(v18 + 8))(v8, v4);
    }

    else
    {
      (*(v9 + 32))(v11, v8, v3);
      sub_100004D6C(v11);
      return (*(v9 + 8))(v11, v3);
    }
  }

  return result;
}

void sub_1000027B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100002560(v4);
}

uint64_t sub_100002818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 text];
  if (!v10)
  {
    v17 = 0;
    return v17 & 1;
  }

  v11 = v10;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!__OFADD__(a2, a3))
  {
    v14 = result;
    v15 = v13;
    v16 = [v11 length];

    if (v16 >= a2 + a3)
    {
      v17 = (*(v5 + *((swift_isaMask & *v5) + 0x78)))(v14, v15, a2, a3, a4, a5);
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002924(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  LOBYTE(a5) = sub_100002818(v13, a4, a5, v10, v12);

  return a5 & 1;
}

void sub_1000029B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100004F2C();
}

void sub_100002A14(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100004F34();
}

void sub_100002AA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100002A9C(v4);
}

void sub_100002B08(void *a1)
{
  if (*(v1 + *((swift_isaMask & *v1) + 0x60)) != 1)
  {
    return;
  }

  v3 = [a1 selectedTextRange];
  if (!v3)
  {
    return;
  }

  v26 = v3;
  sub_10000598C(0, &qword_1000745F8, NSObject_ptr);
  v4 = [v26 start];
  v5 = [v26 end];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = [a1 text];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = sub_100004674(v9, v11);
  if (v14)
  {

    return;
  }

  v15 = v12;
  v16 = v13;
  v17 = [a1 beginningOfDocument];
  v18 = [v26 start];
  v19 = [a1 offsetFromPosition:v17 toPosition:v18];

  if (v19 < v15)
  {
    v20 = [a1 beginningOfDocument];
    v21 = [a1 positionFromPosition:v20 offset:v15];

    if (v21)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v22 = __OFADD__(v15, v16);
  v23 = v15 + v16;
  if (v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v23 >= v19)
  {

    goto LABEL_18;
  }

  v24 = [a1 beginningOfDocument];
  v21 = [a1 positionFromPosition:v24 offset:v23];

  if (!v21)
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:

  v25 = [a1 textRangeFromPosition:v21 toPosition:v21];
  [a1 setSelectedTextRange:v25];

LABEL_18:
}

uint64_t sub_100002E34(void *a1)
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterSet.init(charactersIn:)();
  v5 = CharacterSet.isSuperset(of:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t sub_100002F20(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_100003014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CPTextField.Coordinator(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100003070(char *a1)
{

  v2 = *((swift_isaMask & *a1) + 0x88);
  v3 = type metadata accessor for Binding();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

id sub_100003214@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000022EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100003284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100003300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100003398(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100003494(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _CPUITextField();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  sub_10000598C(0, &qword_1000745F8, NSObject_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() contextSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuLookup];
    [a1 removeMenuForIdentifier:UIMenuLearn];
    [a1 removeMenuForIdentifier:UIMenuAutoFill];
    [a1 removeMenuForIdentifier:UIMenuShare];
  }
}

id sub_10000371C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CPUITextField();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100003778(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000037C8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003844(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000038C8@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003914(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100003968(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000039F4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003A30(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003A84(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003B04(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

BOOL sub_100003BB4(void *a1, uint64_t *a2)
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

void *sub_100003BE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003C10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003D00(void *a1, uint64_t *a2)
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

void *sub_100003D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005F48(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003DEC(uint64_t a1)
{
  sub_100005278(&qword_100074728, type metadata accessor for AttributeName, &unk_10004EF0C);
  sub_100005278(&qword_1000747E8, type metadata accessor for AttributeName, &unk_10004EBB0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100003EAC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003EF4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003F20(uint64_t a1)
{
  sub_100005278(&qword_1000747D8, type metadata accessor for TraitKey, &unk_10004ED24);
  sub_100005278(&qword_1000747E0, type metadata accessor for TraitKey, &unk_10004ECC4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_100003FDC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100003FE8(uint64_t a1)
{
  sub_100005278(&qword_1000747C0, type metadata accessor for Weight, &unk_10004EE7C);
  sub_100005278(&qword_1000747C8, type metadata accessor for Weight, &unk_10004EE1C);
  sub_100005EF4();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int sub_100004154(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000041C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_10000422C(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = String.Iterator.next()();
      if (!v11.value._object)
      {
        a4 = v13;
        a5 = v14;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      if (v8 == v10)
      {
        break;
      }

      ++v9;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v13;
    a5 = v14;
LABEL_15:
    v7 = v15;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1000042F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004944(&qword_100074600, &unk_10004E590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_100004378()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for ColorPickerState(0);
    sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_1000043F4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = &UIFontTextStyleCallout;
  if (v1 == 6)
  {
    v4 = &UIFontWeightSemibold;
  }

  else
  {
    v3 = &UIFontTextStyleBody;
    v4 = &UIFontWeightMedium;
  }

  v5 = [v2 preferredFontDescriptorWithTextStyle:*v3];
  sub_100004944(&qword_100074700, &qword_10004E890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004E4A0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100004944(&qword_100074708, &qword_10004E898);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10004E4A0;
  *(v7 + 32) = UIFontWeightTrait;
  *(v7 + 40) = *v4;
  v8 = UIFontDescriptorTraitsAttribute;
  v9 = UIFontWeightTrait;
  v10 = sub_1000309F8(v7);
  swift_setDeallocating();
  sub_1000059D4(v7 + 32, &qword_100074710, &qword_10004E8A0);
  *(inited + 64) = sub_100004944(&qword_100074718, &qword_10004E8A8);
  *(inited + 40) = v10;
  sub_100030AE8(inited);
  swift_setDeallocating();
  sub_1000059D4(inited + 32, &qword_100074720, &qword_10004E8B0);
  type metadata accessor for AttributeName(0);
  sub_100005278(&qword_100074728, type metadata accessor for AttributeName, &unk_10004EF0C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v5 fontDescriptorByAddingAttributes:isa];

  return v12;
}

uint64_t sub_100004674(uint64_t a1, unint64_t a2)
{
  v26 = type metadata accessor for CharacterSet();
  v4 = *(v26 - 8);
  v5 = __chkstk_darwin(v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  static CharacterSet.decimalDigits.getter();
  v10 = String.count.getter();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1000042F4(v10, 0);

    v13 = sub_10000422C(v27, v12 + 2, v11, a1, a2);

    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_5:
  __chkstk_darwin(v10);
  *(&v22 - 2) = v9;
  result = sub_100002F20(sub_100004924, (&v22 - 4), v12);
  if (v15)
  {

    v16 = 0;
LABEL_18:
    (*(v4 + 8))(v9, v26);
    return v16;
  }

  v16 = result;
  v17 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_21;
  }

  countAndFlagsBits = v12[1].value._countAndFlagsBits;
  if (v17 < countAndFlagsBits)
  {
    v24 = v15;
    v25 = v4;
    v23 = result;
    p_object = &v12[result + 3].value._object;
    v20 = result + 1;
    while ((v17 & 0x8000000000000000) == 0)
    {
      if (v20 >= v12[1].value._countAndFlagsBits)
      {
        goto LABEL_20;
      }

      CharacterSet.init(charactersIn:)();

      v21 = CharacterSet.isSuperset(of:)();
      result = (*(v4 + 8))(v7, v26);
      if ((v21 & 1) == 0)
      {
        v17 = v20;
        goto LABEL_16;
      }

      ++v20;
      p_object += 16;
      if (countAndFlagsBits == v20)
      {
        v17 = countAndFlagsBits;
LABEL_16:
        v4 = v25;
        v16 = v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  if (!__OFSUB__(v17, v16))
  {
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100004944(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_100004990(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = objc_opt_self();
  v5 = &selRef_whiteColor;
  v6 = &selRef_labelColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_tertiaryLabelColor;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

id sub_100004A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *v12;
  v17 = swift_isaMask;
  v18 = (v12 + *((swift_isaMask & *v12) + 0x58));
  swift_beginAccess();
  v19 = *((v17 & v16) + 0x50);
  type metadata accessor for ColorPickerState(0);
  sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);

  *v18 = ObservedObject.init(wrappedValue:)();
  v18[1] = v20;
  swift_endAccess();
  *(v12 + *((swift_isaMask & *v12) + 0x60)) = a2;
  v21 = v12 + *((swift_isaMask & *v12) + 0x80);
  *v21 = a3;
  *(v21 + 1) = a4;
  v21[16] = a5;
  v22 = (v12 + *((swift_isaMask & *v12) + 0x68));
  *v22 = a6;
  v22[1] = a7;
  v23 = (v12 + *((swift_isaMask & *v12) + 0x70));
  *v23 = a8;
  v23[1] = a9;
  v24 = (v12 + *((swift_isaMask & *v12) + 0x78));
  *v24 = a10;
  v24[1] = a11;
  v25 = *((swift_isaMask & *v12) + 0x88);
  v26 = type metadata accessor for Binding();
  (*(*(v26 - 8) + 16))(v12 + v25, a12, v26);
  v34.receiver = v12;
  v34.super_class = type metadata accessor for CPTextField.Coordinator(0, v19, v27, v28);
  return objc_msgSendSuper2(&v34, "init");
}

uint64_t sub_100004D6C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  (*(v10 + 16))(&v14 - v11, &v1[*((v4 & v3) + 0x88)], v9);
  (*(v6 + 16))(v8, a1, v5);
  Binding.wrappedValue.setter();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100004F34()
{
  sub_1000024DC(1);
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v1 << 8 == 512)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100005278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000052C0(uint64_t a1, int a2)
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

uint64_t sub_1000052E0(uint64_t result, int a2, int a3)
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

__n128 sub_100005330(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000533C(uint64_t a1, int a2)
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

uint64_t sub_10000535C(uint64_t result, int a2, int a3)
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

void sub_1000053B8(uint64_t a1)
{
  sub_100005880(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIKeyboardType(319);
      if (v3 <= 0x3F)
      {
        sub_100005914();
        if (v4 <= 0x3F)
        {
          sub_100005AFC(319, &qword_1000746D8, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000054C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v6) | v8) + ((-17 - v6) | v6)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((((a1 + v8 + 16) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_100005654(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = (((&result[(v8 | 7) + 16] & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((*(*(*(a4 + 16) - 8) + 64) - (((-17 - v8) | v8 | 7) + ((-17 - v8) | v8)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_100005880(uint64_t a1)
{
  if (!qword_1000746C0)
  {
    type metadata accessor for ColorPickerState(255);
    sub_100005278(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1000746C0);
    }
  }
}

unint64_t sub_100005914()
{
  result = qword_1000746D0;
  if (!qword_1000746D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000746D0);
  }

  return result;
}

uint64_t sub_10000598C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000059D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004944(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005AFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100005EF4()
{
  result = qword_1000747D0;
  if (!qword_1000747D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000747D0);
  }

  return result;
}

uint64_t sub_100005F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005FF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000060D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RGBAView(uint64_t a1)
{
  result = qword_100074970;
  if (!qword_100074970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000061D0(uint64_t a1)
{
  sub_100005880(319);
  if (v1 <= 0x3F)
  {
    sub_1000062A4(319, &qword_100074980, type metadata accessor for ColorPickerConfiguration);
    if (v2 <= 0x3F)
    {
      sub_1000062A4(319, &qword_100074988, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000062A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100006314(char a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  v6 = &selRef_systemBackgroundColor;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_systemGray5Color;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = [v4 *v5];

  return v7;
}

uint64_t sub_1000063C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100004944(&qword_1000749C8, &qword_10004EFD8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100004944(&qword_1000749D0, &qword_10004EFE0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 6)
  {
    v20 = 0x4030000000000000;
  }

  else
  {
    v20 = 0x4032000000000000;
  }

  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = v20;
  v15[16] = 0;
  v21 = sub_100004944(&qword_1000749D8, &qword_10004EFE8);
  sub_100006690(a1, &v15[*(v21 + 44)]);
  sub_1000084B0(v15, v17, &qword_1000749D0, &qword_10004EFE0);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v22 = sub_100004944(&qword_1000749E0, &qword_10004EFF0);
  sub_100006DB0(a1, &v8[*(v22 + 44)]);
  sub_100008A40(v17, v12, &qword_1000749D0, &qword_10004EFE0);
  sub_100008A40(v8, v6, &qword_1000749C8, &qword_10004EFD8);
  v23 = v27;
  sub_100008A40(v12, v27, &qword_1000749D0, &qword_10004EFE0);
  v24 = sub_100004944(&qword_1000749E8, &qword_10004EFF8);
  sub_100008A40(v6, v23 + *(v24 + 48), &qword_1000749C8, &qword_10004EFD8);
  sub_1000059D4(v8, &qword_1000749C8, &qword_10004EFD8);
  sub_1000059D4(v17, &qword_1000749D0, &qword_10004EFE0);
  sub_1000059D4(v6, &qword_1000749C8, &qword_10004EFD8);
  return sub_1000059D4(v12, &qword_1000749D0, &qword_10004EFE0);
}

uint64_t sub_100006690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v76 = a2;
  v2 = sub_100004944(&qword_100074A40, &qword_10004F108);
  v3 = *(v2 - 8);
  v69 = v2;
  v70 = v3;
  __chkstk_darwin(v2);
  v65 = &v64 - v4;
  v5 = sub_100004944(&qword_100074A48, &qword_10004F110);
  v6 = __chkstk_darwin(v5 - 8);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v64 - v8;
  v9 = type metadata accessor for ColorSlider(0);
  v10 = (v9 - 8);
  v11 = __chkstk_darwin(v9);
  v74 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v73 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v72 = &v64 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v64 - v21;
  __chkstk_darwin(v20);
  v24 = &v64 - v23;
  v25 = type metadata accessor for ColorPickerState(0);
  v67 = sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v77 = v25;
  v26 = EnvironmentObject.init()();
  v28 = v27;
  *&v24[v10[9]] = swift_getKeyPath();
  v66 = sub_100004944(&qword_100074A18, &unk_100051000);
  swift_storeEnumTagMultiPayload();
  *v24 = 0;
  *(v24 + 1) = v26;
  *(v24 + 2) = v28;
  type metadata accessor for ColorPickerConfiguration(0);
  sub_100008870(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
  *(v24 + 3) = Environment.init<A>(_:)();
  v24[32] = v29 & 1;
  v30 = &v24[v10[10]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v10[11];
  static Font.Weight.semibold.getter();
  v79 = v24;
  *&v24[v31] = v32;
  v33 = v68;
  v34 = EnvironmentObject.init()();
  v36 = v35;
  *&v22[v10[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v22 = 1;
  *(v22 + 1) = v34;
  *(v22 + 2) = v36;
  *(v22 + 3) = Environment.init<A>(_:)();
  v22[32] = v37 & 1;
  v38 = &v22[v10[10]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v10[11];
  static Font.Weight.semibold.getter();
  v71 = v22;
  *&v22[v39] = v40;
  v41 = EnvironmentObject.init()();
  v43 = v42;
  *&v19[v10[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v19 = 2;
  *(v19 + 1) = v41;
  *(v19 + 2) = v43;
  v45 = v69;
  v44 = v70;
  *(v19 + 3) = Environment.init<A>(_:)();
  v19[32] = v46 & 1;
  v47 = &v19[v10[10]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = v10[11];
  static Font.Weight.semibold.getter();
  *&v19[v48] = v49;
  v50 = sub_10001CE7C(*(v33 + 16), *(v33 + 24));
  sub_1000088E4((v50 + 2), &v80);

  v51 = v81;
  v52 = v82;
  sub_100008948(&v80, v81);
  LOBYTE(v48) = (*(v52 + 16))(v51, v52);
  sub_10000898C(&v80);
  v53 = 1;
  if (v48)
  {
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    sub_100004944(&qword_100074A60, &qword_10004F178);
    sub_100008B0C();
    v54 = v65;
    Toggle.init(isOn:label:)();
    (*(v44 + 32))(v78, v54, v45);
    v53 = 0;
  }

  v55 = v78;
  (*(v44 + 56))(v78, v53, 1, v45);
  v56 = v72;
  sub_1000089D8(v79, v72, type metadata accessor for ColorSlider);
  v57 = v71;
  v58 = v73;
  sub_1000089D8(v71, v73, type metadata accessor for ColorSlider);
  v59 = v74;
  sub_1000089D8(v19, v74, type metadata accessor for ColorSlider);
  v60 = v75;
  sub_100008A40(v55, v75, &qword_100074A48, &qword_10004F110);
  v61 = v76;
  sub_1000089D8(v56, v76, type metadata accessor for ColorSlider);
  v62 = sub_100004944(&qword_100074A58, &qword_10004F148);
  sub_1000089D8(v58, v61 + v62[12], type metadata accessor for ColorSlider);
  sub_1000089D8(v59, v61 + v62[16], type metadata accessor for ColorSlider);
  sub_100008A40(v60, v61 + v62[20], &qword_100074A48, &qword_10004F110);
  sub_1000059D4(v55, &qword_100074A48, &qword_10004F110);
  sub_100008AA8(v19);
  sub_100008AA8(v57);
  sub_100008AA8(v79);
  sub_1000059D4(v60, &qword_100074A48, &qword_10004F110);
  sub_100008AA8(v59);
  sub_100008AA8(v58);
  return sub_100008AA8(v56);
}

uint64_t sub_100006DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004944(&qword_1000749F0, &qword_10004F000);
  v5 = __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v19 - v8);
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RGBAView(0);
  sub_10001CBF0(v13);
  v14 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v20 = static HorizontalAlignment.center.getter();
    v21 = 0;
    v22 = 1;
    sub_1000082F0();
  }

  else
  {
    v20 = static VerticalAlignment.center.getter();
    v21 = 0x4030000000000000;
    v22 = 0;
    sub_10000829C();
  }

  *v9 = AnyLayout.init<A>(_:)();
  v15 = *(v4 + 44);

  sub_100007018(a1, (v9 + v15));
  sub_100008A40(v9, v7, &qword_1000749F0, &qword_10004F000);
  sub_100008A40(v7, a2, &qword_1000749F0, &qword_10004F000);
  v16 = *(sub_100004944(&qword_100074A00, &qword_10004F008) + 48);

  v17 = a2 + v16;
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1000059D4(v9, &qword_1000749F0, &qword_10004F000);
  return sub_1000059D4(v7, &qword_1000749F0, &qword_10004F000);
}

uint64_t sub_100007018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for RGBAView(0);
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ColorSpaceButton(0);
  __chkstk_darwin(v5);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100004944(&qword_100074A10, &qword_10004F010);
  v9 = __chkstk_darwin(v8);
  v67 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v57[-v12];
  __chkstk_darwin(v11);
  v15 = &v57[-v14];
  v66 = a1;
  v16 = *a1;
  if (*a1)
  {
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    swift_retain_n();
    Binding.init(get:set:)();
    *&v7[*(v5 + 24)] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    v19 = v121;
    *(v7 + 2) = v120;
    *(v7 + 3) = v19;
    *(v7 + 32) = v122;
    v20 = v119;
    *v7 = v118;
    *(v7 + 1) = v20;
    v91 = 0x4049000000000000;
    sub_100008368();
    ScaledMetric.init(wrappedValue:)();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v21 = BYTE1(v95) << 8 == 512;
    KeyPath = swift_getKeyPath();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    sub_10000863C(v7, v13, type metadata accessor for ColorSpaceButton);
    v24 = &v13[*(v8 + 36)];
    *v24 = KeyPath;
    v24[1] = sub_100008498;
    v24[2] = v23;
    sub_1000084B0(v13, v15, &qword_100074A10, &qword_10004F010);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v16;
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v16;
    swift_retain_n();
    Binding.init(get:set:)();
    v27 = v65;
    sub_1000089D8(v66, v65, type metadata accessor for RGBAView);
    v28 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v62 = swift_allocObject();
    sub_10000863C(v27, v62 + v28, type metadata accessor for RGBAView);
    type metadata accessor for ColorPickerState(0);
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v59 = EnvironmentObject.init()();
    v64 = v29;
    v73 = v123[2];
    v74 = v123[3];
    v75 = v124;
    v71 = v123[0];
    v72 = v123[1];
    LOBYTE(v76) = 0;
    State.init(wrappedValue:)();
    v60 = v91;
    v61 = v92;
    v30 = objc_opt_self();
    v31 = [v30 defaultMetrics];
    v32 = objc_opt_self();
    v33 = [v32 currentDevice];
    v65 = v15;
    v34 = [v33 userInterfaceIdiom];

    v35 = 100.0;
    if (v34 == 6)
    {
      v35 = 88.0;
    }

    [v31 scaledValueForValue:v35];

    v36 = [v30 defaultMetrics];
    v37 = [v32 currentDevice];
    v38 = [v37 userInterfaceIdiom];

    v39 = 36.0;
    if (v38 == 6)
    {
      v39 = 44.0;
    }

    [v36 scaledValueForValue:v39];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100006314(BYTE1(v95) << 8 != 512);
    v40 = Color.init(uiColor:)();
    v66 = v40;
    v58 = static Edge.Set.all.getter();
    v41 = v67;
    sub_100008A40(v65, v67, &qword_100074A10, &qword_10004F010);
    v42 = v63;
    *v63 = 0;
    *(v42 + 8) = 0;
    v43 = sub_100004944(&qword_100074A28, &qword_10004F0C8);
    sub_100008A40(v41, v42 + *(v43 + 48), &qword_100074A10, &qword_10004F010);
    v44 = v42 + *(v43 + 64);
    v45 = v59;
    *&v76 = v59;
    *(&v76 + 1) = v64;
    LODWORD(v81) = v75;
    v79 = v73;
    v80 = v74;
    v77 = v71;
    v78 = v72;
    *(&v81 + 1) = 1;
    *&v82 = sub_1000079D4;
    *(&v82 + 1) = 0;
    *&v83 = sub_1000086A4;
    v47 = v61;
    v46 = v62;
    *(&v83 + 1) = v62;
    *&v84 = sub_100007CFC;
    *(&v84 + 1) = 0;
    v48 = v60;
    LOBYTE(v85) = v60;
    DWORD1(v85) = *&v116[3];
    *(&v85 + 1) = *v116;
    *(&v85 + 1) = v61;
    v86 = v68;
    v87 = v69;
    v88 = v70;
    *&v89 = v40;
    LOBYTE(v43) = v58;
    BYTE8(v89) = v58;
    HIDWORD(v89) = *&v117[3];
    *(&v89 + 9) = *v117;
    v90 = 0x4020000000000000;
    *(v44 + 28) = 0x4020000000000000;
    v49 = v89;
    *(v44 + 12) = v88;
    *(v44 + 13) = v49;
    v50 = v85;
    *(v44 + 8) = v84;
    *(v44 + 9) = v50;
    v51 = v87;
    *(v44 + 10) = v86;
    *(v44 + 11) = v51;
    v52 = v81;
    *(v44 + 4) = v80;
    *(v44 + 5) = v52;
    v53 = v83;
    *(v44 + 6) = v82;
    *(v44 + 7) = v53;
    v54 = v77;
    *v44 = v76;
    *(v44 + 1) = v54;
    v55 = v79;
    *(v44 + 2) = v78;
    *(v44 + 3) = v55;
    sub_100008A40(&v76, &v91, &qword_100074A30, &qword_10004F0D0);
    sub_1000059D4(v65, &qword_100074A10, &qword_10004F010);
    v91 = v45;
    v92 = v64;
    v95 = v73;
    v96 = v74;
    v97 = v75;
    v93 = v71;
    v94 = v72;
    v98 = 0;
    v99 = 1;
    v100 = sub_1000079D4;
    v101 = 0;
    v102 = sub_1000086A4;
    v103 = v46;
    v104 = sub_100007CFC;
    v105 = 0;
    v106 = v48;
    *&v107[3] = *&v116[3];
    *v107 = *v116;
    v109 = v68;
    v110 = v69;
    v111 = v70;
    v108 = v47;
    v112 = v66;
    v113 = v43;
    *&v114[3] = *&v117[3];
    *v114 = *v117;
    v115 = 0x4020000000000000;
    sub_1000059D4(&v91, &qword_100074A30, &qword_10004F0D0);
    return sub_1000059D4(v67, &qword_100074A10, &qword_10004F010);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100007A18(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v3;
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v3;
    swift_retain_n();
    Binding.init(get:set:)();
    swift_getKeyPath();
    v19 = v22[2];
    v20 = v22[3];
    v21 = v23;
    v17 = v22[0];
    v18 = v22[1];
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.subscript.getter();

    sub_1000059D4(v22, &qword_100076350, &qword_100051160);
    sub_100004944(&qword_100074A38, &qword_10004F100);
    Binding.wrappedValue.getter();

    v6 = String._bridgeToObjectiveC()();
    v7 = &kCGColorSpaceDisplayP3;
    if (!v16)
    {
      v7 = &kCGColorSpaceSRGB;
    }

    v8 = *v7;
    *&v17 = 0;
    v9 = [objc_opt_self() hexValuedColor:v6 colorSpace:v8 error:&v17];

    v10 = v17;
    if (v9)
    {
      sub_100019C44(v9, v16, &v17);
      v11 = v17;
      v12 = v18;
      v13 = v19;
      v14 = v20;
    }

    else
    {
      v15 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v11 = 0uLL;
      v14 = 512;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v14;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100008870(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100007CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String.count.getter();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000042F4(v6, 0);
    v9 = sub_10000422C(v22, v8 + 2, v7, 0xD000000000000016, 0x8000000100053DA0);

    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringByReplacingCharactersInRange:a3 withString:{a4, v11}];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (String.count.getter() >= 7)
  {
LABEL_11:

    return 0;
  }

  else
  {
    v16 = HIBYTE(v15) & 0xF;
    v22[0] = v13;
    v22[1] = v15;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v22[2] = 0;
    v22[3] = v16;
    while (1)
    {
      v17 = String.Iterator.next()();
      if (!v17.value._object)
      {
        break;
      }

      v21 = v17;
      __chkstk_darwin(v17.value._countAndFlagsBits);
      v20[2] = &v21;
      v18 = sub_10000872C(sub_1000087D8, v20, v8);

      if ((v18 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }
}

__n128 sub_100007EFC@<Q0>(uint64_t a1@<X8>)
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_1000080A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = (a2 + *(sub_100004944(&qword_100074A80, &qword_10004F218) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)] = 256;
  v10 = sub_100004944(&qword_100074A90, &qword_10004F228);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1000081D0@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 0x4030000000000000;
  }

  else
  {
    v5 = 0x4039000000000000;
  }

  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = sub_100004944(&qword_1000749C0, &qword_10004EFD0);
  return sub_1000063C4(v1, a1 + *(v6 + 44));
}

unint64_t sub_10000829C()
{
  result = qword_1000749F8;
  if (!qword_1000749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000749F8);
  }

  return result;
}

unint64_t sub_1000082F0()
{
  result = qword_100074A08;
  if (!qword_100074A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A08);
  }

  return result;
}

unint64_t sub_100008368()
{
  result = qword_100074A20;
  if (!qword_100074A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A20);
  }

  return result;
}

uint64_t sub_1000083C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000083F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000084B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004944(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008518()
{
  v1 = (type metadata accessor for RGBAView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_100004944(&qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000863C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000086A4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RGBAView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_100007A18(v4, a1);
}

uint64_t sub_10000872C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000087D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100008830()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000088E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100008948(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000898C(void *a1)
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

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100008A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004944(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008AA8(uint64_t a1)
{
  v2 = type metadata accessor for ColorSlider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008B0C()
{
  result = qword_100074A68;
  if (!qword_100074A68)
  {
    sub_100008B90(&qword_100074A60, &qword_10004F178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A68);
  }

  return result;
}

uint64_t sub_100008B90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008BD8()
{
  result = qword_1000762F0;
  if (!qword_1000762F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000762F0);
  }

  return result;
}

unint64_t sub_100008C98()
{
  result = qword_100074A98;
  if (!qword_100074A98)
  {
    sub_100008B90(&qword_100074A80, &qword_10004F218);
    sub_100008D7C(&qword_100074AA0, &qword_100074A90, &qword_10004F228, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074A98);
  }

  return result;
}

uint64_t sub_100008D7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100008DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004944(&qword_100074B10, &qword_10004F480);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_100004944(&qword_100074B18, &qword_10004F488);
  sub_100008F40(a1, a2, &v8[*(v9 + 44)]);
  v10 = [objc_opt_self() currentDevice];
  [v10 userInterfaceIdiom];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10000B9B0(v8, a3);
  v11 = (a3 + *(sub_100004944(&qword_100074B20, &qword_10004F490) + 36));
  v12 = v14[1];
  *v11 = v14[0];
  v11[1] = v12;
  result = *&v15;
  v11[2] = v15;
  return result;
}

uint64_t sub_100008F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_100004944(&qword_100074B28, &qword_10004F498);
  v6 = __chkstk_darwin(v5 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = sub_100004944(&qword_100074B30, &qword_10004F4A0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100004944(&qword_100074B38, &qword_10004F4A8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v38 = &v34 - v20;
  sub_10000944C(a1, a2, &v34 - v20);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v43[55] = v48;
  *&v43[71] = v49;
  *&v43[87] = v50;
  *&v43[103] = v51;
  *&v43[7] = v45;
  *&v43[23] = v46;
  v44 = 1;
  *&v43[39] = v47;
  v36 = v15;
  sub_1000096D0(a1, v15);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v41[55] = v55;
  *&v41[71] = v56;
  *&v41[87] = v57;
  *&v41[103] = v58;
  *&v41[7] = v52;
  *&v41[23] = v53;
  v42 = 1;
  *&v41[39] = v54;
  v35 = v9;
  sub_100009B28(a1, a2, v9);
  v37 = v19;
  sub_100008A40(v21, v19, &qword_100074B38, &qword_10004F4A8);
  sub_100008A40(v15, v13, &qword_100074B30, &qword_10004F4A0);
  v22 = v39;
  sub_100008A40(v9, v39, &qword_100074B28, &qword_10004F498);
  v23 = v40;
  sub_100008A40(v19, v40, &qword_100074B38, &qword_10004F4A8);
  v24 = sub_100004944(&qword_100074B40, &qword_10004F4B0);
  v25 = v23 + v24[12];
  v26 = *&v43[80];
  *(v25 + 73) = *&v43[64];
  *(v25 + 89) = v26;
  *(v25 + 105) = *&v43[96];
  v27 = *&v43[16];
  *(v25 + 9) = *v43;
  *(v25 + 25) = v27;
  v28 = *&v43[48];
  *(v25 + 41) = *&v43[32];
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v25 + 120) = *&v43[111];
  *(v25 + 57) = v28;
  sub_100008A40(v13, v23 + v24[16], &qword_100074B30, &qword_10004F4A0);
  v29 = v23 + v24[20];
  v30 = *&v41[80];
  *(v29 + 73) = *&v41[64];
  *(v29 + 89) = v30;
  *(v29 + 105) = *&v41[96];
  v31 = *&v41[16];
  *(v29 + 9) = *v41;
  *(v29 + 25) = v31;
  v32 = *&v41[48];
  *(v29 + 41) = *&v41[32];
  *v29 = 0;
  *(v29 + 8) = 1;
  *(v29 + 120) = *&v41[111];
  *(v29 + 57) = v32;
  sub_100008A40(v22, v23 + v24[24], &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v35, &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v36, &qword_100074B30, &qword_10004F4A0);
  sub_1000059D4(v38, &qword_100074B38, &qword_10004F4A8);
  sub_1000059D4(v22, &qword_100074B28, &qword_10004F498);
  sub_1000059D4(v13, &qword_100074B30, &qword_10004F4A0);
  return sub_1000059D4(v37, &qword_100074B38, &qword_10004F4A8);
}

uint64_t sub_10000944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_100004944(&qword_100074C48, &qword_10004F688);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_100004944(&qword_100074B48, &qword_10004F4B8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    sub_10000AB1C(a1, a2, v13);
    sub_100008A40(v13, v10, &qword_100074B48, &qword_10004F4B8);
    swift_storeEnumTagMultiPayload();
    sub_10000BDA0();
    sub_10000BA20();
    _ConditionalContent<>.init(storage:)();
    v16 = v13;
    v17 = &qword_100074B48;
    v18 = &qword_10004F4B8;
  }

  else
  {
    sub_10000A0A8(a1, a2, v7);
    sub_100008A40(v7, v10, &qword_100074B58, &qword_10004F4C8);
    swift_storeEnumTagMultiPayload();
    sub_10000BDA0();
    sub_10000BA20();
    _ConditionalContent<>.init(storage:)();
    v16 = v7;
    v17 = &qword_100074B58;
    v18 = &qword_10004F4C8;
  }

  return sub_1000059D4(v16, v17, v18);
}

uint64_t sub_1000096D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v34 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  __chkstk_darwin(v34);
  v6 = &v32 - v5;
  v7 = sub_100004944(&qword_100074C20, &qword_10004F5F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v32 - v9;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_10000C030();
    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    v15 = [objc_opt_self() currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v36 = v7;
    v37 = a3;
    v35 = v8;
    if (v16 == 6)
    {
      static Font.title2.getter();
    }

    else
    {
      static Font.headline.getter();
    }

    v17 = Text.font(_:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_10000C084(v10, v12, v14 & 1);

    KeyPath = swift_getKeyPath();
    v38 = v17;
    v39 = v19;
    v25 = v21 & 1;
    v40 = v25;
    v41 = v23;
    v42 = KeyPath;
    v43 = 1;
    v44 = 0;
    v26 = enum case for DynamicTypeSize.xxxLarge(_:);
    v27 = type metadata accessor for DynamicTypeSize();
    (*(*(v27 - 8) + 104))(v6, v26, v27);
    sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      sub_100004944(&qword_100074C28, &qword_10004F678);
      sub_10000C1B0();
      sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8, &protocol conformance descriptor for PartialRangeThrough<A>);
      v28 = v17;
      v29 = v33;
      View.dynamicTypeSize<A>(_:)();
      sub_1000059D4(v6, &qword_100074B70, &qword_10004F4D8);
      sub_10000C084(v28, v19, v25);

      v30 = v37;
      (*(v35 + 32))(v37, v29, v36);
      result = sub_100004944(&qword_100074B30, &qword_10004F4A0);
      *(v30 + *(result + 36)) = 0x3FF0000000000000;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for ColorPickerState(0);
  sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100009B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_100004944(&qword_100074B48, &qword_10004F4B8);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_100004944(&qword_100074B50, &qword_10004F4C0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v11 = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    sub_10000A0A8(a1, a2, v13);
    sub_100008A40(v13, v10, &qword_100074B58, &qword_10004F4C8);
    swift_storeEnumTagMultiPayload();
    sub_10000BA20();
    sub_10000BDA0();
    _ConditionalContent<>.init(storage:)();
    v16 = v13;
    v17 = &qword_100074B58;
    v18 = &qword_10004F4C8;
  }

  else
  {
    sub_10000AB1C(a1, a2, v7);
    sub_100008A40(v7, v10, &qword_100074B48, &qword_10004F4B8);
    swift_storeEnumTagMultiPayload();
    sub_10000BA20();
    sub_10000BDA0();
    _ConditionalContent<>.init(storage:)();
    v16 = v7;
    v17 = &qword_100074B48;
    v18 = &qword_10004F4B8;
  }

  return sub_1000059D4(v16, v17, v18);
}

uint64_t sub_100009DAC(uint64_t a1)
{
  v2 = sub_100004944(&qword_100074C60, &qword_10004F700);
  __chkstk_darwin(v2);
  v4 = v15 - v3;
  v5 = sub_100004944(&qword_100074C68, &qword_10004F708);
  __chkstk_darwin(v5);
  v7 = v15 - v6;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v10 = sub_100004944(&qword_100074C70, &qword_10004F710);
    (*(*(v10 - 8) + 16))(v7, a1, v10);
    v11 = &v7[*(v5 + 36)];
    v12 = v15[1];
    *v11 = v15[0];
    *(v11 + 1) = v12;
    *(v11 + 2) = v15[2];
    sub_10000C408(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v7, &qword_100074C68, &qword_10004F708);
  }

  else
  {
    v14 = sub_100004944(&qword_100074C70, &qword_10004F710);
    (*(*(v14 - 8) + 16))(v4, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000A0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69[2] = a2;
  v74 = a1;
  v75 = a3;
  v73 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  __chkstk_darwin(v73);
  v81 = v69 - v3;
  v4 = type metadata accessor for UIButton.Configuration();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v77 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100004944(&qword_100074BA8, &qword_10004F4F0);
  __chkstk_darwin(v80);
  v84 = v69 - v6;
  v78 = sub_100004944(&qword_100074B68, &qword_10004F4D0);
  __chkstk_darwin(v78);
  v79 = v69 - v7;
  v72 = sub_100004944(&qword_100074BF8, &qword_10004F508);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v69 - v8;
  v9 = type metadata accessor for ColorPickerState(0);
  v10 = sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v69[1] = v9;
  v69[0] = v10;
  v87 = EnvironmentObject.init()();
  v88 = v11;
  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v85 = v18;
  v86 = v20;
  v76 = sub_10000C030();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  sub_10000B530();
  View.accessibility(label:)();
  sub_10000C084(v21, v23, v25 & 1);

  sub_100004944(&qword_100074C08, &qword_10004F510);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10004F230;
  v27 = [v13 bundleForClass:ObjCClassFromMetadata];
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v26 + 32) = v31;
  *(v26 + 40) = v33;
  v34 = v13;
  v35 = v78;
  v36 = [v34 bundleForClass:ObjCClassFromMetadata];
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = v81;
  *(v26 + 48) = v40;
  *(v26 + 56) = v42;
  v44 = v79;
  v45 = v84;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_1000059D4(v45, &qword_100074BA8, &qword_10004F4F0);
  *(v44 + *(sub_100004944(&qword_100074B98, &qword_10004F4E8) + 36)) = 257;
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v46 = v77;
  sub_10000A9B8();
  UIButton.Configuration.contentInsets.getter();
  v47 = v83;
  v48 = *(v82 + 8);
  v48(v46, v83);
  EdgeInsets.init(_all:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v44 + *(sub_100004944(&qword_100074B88, &qword_10004F4E0) + 36);
  *v57 = v26;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  LOBYTE(v26) = static Edge.Set.trailing.getter();
  sub_10000A9B8();
  UIButton.Configuration.contentInsets.getter();
  v48(v46, v47);
  EdgeInsets.init(_all:)();
  v58 = v44 + *(v35 + 36);
  *v58 = v26;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60;
  *(v58 + 24) = v61;
  *(v58 + 32) = v62;
  *(v58 + 40) = 0;
  v63 = enum case for DynamicTypeSize.xLarge(_:);
  v64 = type metadata accessor for DynamicTypeSize();
  (*(*(v64 - 8) + 104))(v43, v63, v64);
  sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000BBAC(&qword_100074B78, &qword_100074B68, &qword_10004F4D0, sub_10000BB7C);
  sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8, &protocol conformance descriptor for PartialRangeThrough<A>);
  v65 = v70;
  View.dynamicTypeSize<A>(_:)();
  sub_1000059D4(v43, &qword_100074B70, &qword_10004F4D8);
  sub_1000059D4(v44, &qword_100074B68, &qword_10004F4D0);
  if (!v74)
  {
LABEL_8:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v87)
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = v75;
  (*(v71 + 32))(v75, v65, v72);
  result = sub_100004944(&qword_100074B58, &qword_10004F4C8);
  *(v67 + *(result + 36)) = v66;
  return result;
}

uint64_t sub_10000A9B8()
{
  static UIButton.Configuration.plain()();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  UIButton.Configuration.image.setter();
  v2 = objc_opt_self();
  v3 = [v2 configurationWithTextStyle:UIFontTextStyleBody];
  v4 = [v2 configurationWithWeight:6];
  v5 = [v3 configurationByApplyingConfiguration:v4];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v6 = [objc_opt_self() clearColor];
  v7 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  return v7(&v9, 0);
}

uint64_t sub_10000AB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004944(&qword_100074B70, &qword_10004F4D8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_100004944(&qword_100074C18, &qword_10004F560);
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v19[1] = a2;
  v23 = sub_10000C11C;
  v24 = v12;
  v25 = 257;
  v13 = enum case for DynamicTypeSize.xLarge(_:);
  v14 = type metadata accessor for DynamicTypeSize();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  sub_10000C094(&qword_100074C10, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);

  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v20 = v9;
    v21 = a3;
    sub_100004944(&qword_100074BC8, &qword_10004F4F8);
    sub_10000BC60(&qword_100074BD0, &qword_100074BC8, &qword_10004F4F8, sub_10000BEFC);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_1000059D4(v8, &qword_100074B70, &qword_10004F4D8);

    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v23)
      {

        v15 = v20;
        v16 = v21;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v17 = 1.0;
        v15 = v20;
        v16 = v21;
        if (v23 != 1)
        {
LABEL_7:
          (*(v22 + 32))(v16, v11, v15);
          result = sub_100004944(&qword_100074B48, &qword_10004F4B8);
          *(v16 + *(result + 36)) = v17;
          return result;
        }
      }

      v17 = 0.0;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for ColorPickerState(0);
  sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10000AF48(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
    if (v2)
    {
      v3 = *(result + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8);

      v2(v4);

      return sub_10000C134(v2, v3);
    }
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B018(uint64_t a1)
{
  v2 = sub_100004944(&qword_100074AF8, &qword_10004F370);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  sub_10000598C(0, &qword_100074B00, UIPointerStyle_ptr);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for UIPointerEffect.highlight(_:), v5);
  v10 = type metadata accessor for UIPointerShape();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  return UIPointerStyle.init(effect:shape:)();
}

id sub_10000B340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EyeDropperView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10000B3C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = type metadata accessor for EyeDropperView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent];
  *v7 = v3;
  *(v7 + 1) = v4;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10000B43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B72C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000B72C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000B504(uint64_t a1)
{
  sub_10000B72C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000B530()
{
  result = qword_100074AE0;
  if (!qword_100074AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074AE0);
  }

  return result;
}

id sub_10000B584()
{
  v0 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v0 - 8);
  sub_10000598C(0, &qword_100074AE8, UIButton_ptr);
  sub_10000A9B8();
  v1 = UIButton.init(configuration:primaryAction:)();
  sub_100004944(&qword_100074AF0, &qword_10004F368);
  UIViewRepresentableContext.coordinator.getter();
  [v1 addTarget:v3 action:"buttonPressed:" forControlEvents:1];

  UIViewRepresentableContext.coordinator.getter();
  [v1 addTarget:v3 action:"buttonUp:" forControlEvents:64];

  UIViewRepresentableContext.coordinator.getter();
  [v1 addTarget:v3 action:"buttonUp:" forControlEvents:128];

  [v1 setContentHorizontalAlignment:4];
  UIButton.pointerStyleProvider.setter();
  return v1;
}

unint64_t sub_10000B72C()
{
  result = qword_100074B08;
  if (!qword_100074B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074B08);
  }

  return result;
}

uint64_t sub_10000B780()
{
  v1 = (v0 + OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent);
  if (!*(v0 + OBJC_IVAR____TtCV20ColorPickerUIServiceP33_DBD1622CFBB2996DAF9D1081F3537E2A14EyeDropperView11Coordinator_parent))
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((v3 & 1) == 0)
  {
    return result;
  }

  if (!*v1)
  {
LABEL_6:
    type metadata accessor for ColorPickerState(0);
    sub_10000C094(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000B8D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10000B934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000B9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074B10, &qword_10004F480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BA20()
{
  result = qword_100074B60;
  if (!qword_100074B60)
  {
    sub_100008B90(&qword_100074B58, &qword_10004F4C8);
    sub_100008B90(&qword_100074B68, &qword_10004F4D0);
    sub_100008B90(&qword_100074B70, &qword_10004F4D8);
    sub_10000BBAC(&qword_100074B78, &qword_100074B68, &qword_10004F4D0, sub_10000BB7C);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074B60);
  }

  return result;
}

uint64_t sub_10000BBAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BC60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000BCE4()
{
  result = qword_100074BA0;
  if (!qword_100074BA0)
  {
    sub_100008B90(&qword_100074BA8, &qword_10004F4F0);
    sub_10000B530();
    sub_10000C094(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BA0);
  }

  return result;
}

unint64_t sub_10000BDA0()
{
  result = qword_100074BC0;
  if (!qword_100074BC0)
  {
    sub_100008B90(&qword_100074B48, &qword_10004F4B8);
    sub_100008B90(&qword_100074BC8, &qword_10004F4F8);
    sub_100008B90(&qword_100074B70, &qword_10004F4D8);
    sub_10000BC60(&qword_100074BD0, &qword_100074BC8, &qword_10004F4F8, sub_10000BEFC);
    sub_100008D7C(&qword_100074BB8, &qword_100074B70, &qword_10004F4D8, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BC0);
  }

  return result;
}

unint64_t sub_10000BEFC()
{
  result = qword_100074BD8;
  if (!qword_100074BD8)
  {
    sub_100008B90(&qword_100074BE0, &qword_10004F500);
    sub_10000BF88();
    sub_10000BFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BD8);
  }

  return result;
}

unint64_t sub_10000BF88()
{
  result = qword_100074BE8;
  if (!qword_100074BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BE8);
  }

  return result;
}

unint64_t sub_10000BFDC()
{
  result = qword_100074BF0;
  if (!qword_100074BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074BF0);
  }

  return result;
}

unint64_t sub_10000C030()
{
  result = qword_100074C00;
  if (!qword_100074C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C00);
  }

  return result;
}

uint64_t sub_10000C084(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C0E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C134(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C14C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10000C1B0()
{
  result = qword_100074C30;
  if (!qword_100074C30)
  {
    sub_100008B90(&qword_100074C28, &qword_10004F678);
    sub_100008D7C(&qword_100074C38, &qword_100074C40, &qword_10004F680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C30);
  }

  return result;
}

unint64_t sub_10000C27C()
{
  result = qword_100074C50;
  if (!qword_100074C50)
  {
    sub_100008B90(&qword_100074B20, &qword_10004F490);
    sub_100008D7C(&qword_100074C58, &qword_100074B10, &qword_10004F480, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C50);
  }

  return result;
}

unint64_t sub_10000C350()
{
  result = qword_100074C78;
  if (!qword_100074C78)
  {
    sub_100008B90(&qword_100074C68, &qword_10004F708);
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C78);
  }

  return result;
}

uint64_t sub_10000C408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074C68, &qword_10004F708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C47C()
{
  result = qword_100074C88;
  if (!qword_100074C88)
  {
    sub_100008B90(&qword_100074C90, &qword_10004F718);
    sub_10000C350();
    sub_100008D7C(&qword_100074C80, &qword_100074C70, &qword_10004F710, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074C88);
  }

  return result;
}

char *sub_10000C540()
{
  v1 = &v0[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey];
  strcpy(&v0[OBJC_IVAR____TtC20ColorPickerUIService14FavoritesStore__favoriteColorsUserDefaultsKey], "FavoriteColors");
  v1[15] = -18;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for FavoritesStore();
  v2 = objc_msgSendSuper2(&v15, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 standardUserDefaults];

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 dataForKey:v6];

  if (v7)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_10000DAC4(v8, v10);
  }

  else
  {
    v12 = [v3 standardUserDefaults];
    v13 = String._bridgeToObjectiveC()();
    v11 = [v12 arrayForKey:v13];

    if (v11)
    {

      goto LABEL_6;
    }

    sub_10000D834();
  }

  v11 = v4;
LABEL_6:

  return v4;
}

char *sub_10000C704(char a1)
{
  v2 = sub_10000D0EC();
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = v4 - 1;
      for (i = v2 + 64; ; i += 56)
      {
        v13 = *(i - 2);
        v14 = *(i - 2);
        v11 = *i;
        v12 = *(i + 8);
        if (*(i - 1) == 1.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10002F074(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v8 = _swiftEmptyArrayStorage[2];
          v7 = _swiftEmptyArrayStorage[3];
          if (v8 >= v7 >> 1)
          {
            sub_10002F074((v7 > 1), v8 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v8 + 1;
          v9 = &_swiftEmptyArrayStorage[7 * v8];
          *(v9 + 2) = v13;
          v9[6] = v14;
          v9[7] = 0x3FF0000000000000;
          *(v9 + 40) = v12;
          *(v9 + 4) = v11;
        }

        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10000C860(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100004944(&qword_100074D00, "ʦ");
  __chkstk_darwin(v6);
  v9 = v74 - v8;
  if (a2)
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    *v86 = a1;
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    sub_10000DBC4(&qword_100074CC8, sub_10000DA70, &protocol conformance descriptor for <A> [A]);
    v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v12 = v11;

    v13 = [objc_opt_self() standardUserDefaults];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = String._bridgeToObjectiveC()();
    [v13 setValue:isa forKey:v15];

    return sub_10000DAC4(v10, v12);
  }

  v75 = v7;
  v17 = sub_10000D0EC();
  v88 = sub_10000C704(0);
  v89 = v17;
  *v86 = a1;
  v18 = sub_100004944(&unk_1000765A0, &qword_1000516B0);
  sub_10000DD00();
  sub_10000DD64();
  v74[2] = v18;
  BidirectionalCollection<>.difference<A>(from:)();

  v76 = v9;
  v19 = CollectionDifference.removals.getter();
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v74[0] = v6;
    v74[1] = v3;
    v22 = 0;
    v81 = v19 + 32;
    v80 = a1;
    v77 = (a1 + 81);
    v79 = v19;
    v78 = v21;
    while (1)
    {
      v23 = v81 + 80 * v22;
      v24 = *v23;
      v25 = *(v23 + 24);
      v26 = *(v23 + 8);
      v27 = *(v23 + 40);
      v28 = *(v23 + 48);
      v29 = *(v23 + 73);
      v30 = *(v23 + 57);
      LOBYTE(v88) = *(v23 + 56);
      v87 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_49;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
LABEL_67:
        __break(1u);
        swift_unexpectedError();
        __break(1u);

        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v84 = v26;
      v85 = v25;
      if (*(v80 + 16) >= v24)
      {
        v31 = v24;
      }

      else
      {
        v31 = *(v80 + 16);
      }

      if (v24)
      {
        v32 = v31 == 0;
      }

      else
      {
        v32 = 1;
      }

      v33 = _swiftEmptyArrayStorage;
      if (!v32)
      {

        v34 = v77;
        v35 = v85;
        v36 = v84;
        while (1)
        {
          v42 = *(v34 - 49);
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v42, v36), vceqq_f64(*(v34 - 33), v35)))))
          {
            v43 = *(v34 - 17);
            if (v43 == v27)
            {
              v44 = *(v34 - 9);
              v45 = *(v34 - 1);
              v46 = *v34;
              v47 = v88;
              if ((v45 & 1) == 0)
              {
                if (v44 != v28)
                {
                  v47 = 1;
                }

                if (v47)
                {
                  goto LABEL_18;
                }

LABEL_27:
                if (v87 == (v46 & 1))
                {
                  v82 = *(v34 - 33);
                  v83 = v42;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v86 = v33;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_10002F074(0, v33[2] + 1, 1);
                    v33 = *v86;
                  }

                  v37 = v83;
                  v38 = v82;
                  v40 = v33[2];
                  v39 = v33[3];
                  v35 = v85;
                  v36 = v84;
                  if (v40 >= v39 >> 1)
                  {
                    sub_10002F074((v39 > 1), v40 + 1, 1);
                    v38 = v82;
                    v37 = v83;
                    v36 = v84;
                    v35 = v85;
                    v33 = *v86;
                  }

                  v33[2] = v40 + 1;
                  v41 = &v33[7 * v40];
                  v41[2] = v37;
                  v41[3] = v38;
                  v41[4].f64[0] = v43;
                  v41[4].f64[1] = v44;
                  LOBYTE(v41[5].f64[0]) = v45;
                  BYTE1(v41[5].f64[0]) = v46;
                }

                goto LABEL_18;
              }

              if (v88)
              {
                goto LABEL_27;
              }
            }
          }

LABEL_18:
          v34 += 56;
          if (!--v31)
          {

            break;
          }
        }
      }

      v49 = v33[2];

      v50 = *(v89 + 2);
      v20 = v79;
      v21 = v78;
      if (!v50)
      {
        goto LABEL_49;
      }

      v51 = 0;
      v52 = (v89 + 81);
      while (1)
      {
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v52 - 49), v84), vceqq_f64(*(v52 - 33), v85)))) & 1) == 0 || *(v52 - 17) != v27)
        {
          goto LABEL_33;
        }

        v53 = *v52;
        if (*(v52 - 1))
        {
          if ((v88 ^ 1 | v53 ^ v87))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (*(v52 - 9) == v28)
          {
            v54 = v88;
          }

          else
          {
            v54 = 1;
          }

          if (v54 & 1) != 0 || ((v53 ^ v87))
          {
            goto LABEL_33;
          }
        }

        if (!v49)
        {
          break;
        }

        if (__OFSUB__(v49--, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

LABEL_33:
        ++v51;
        v52 += 56;
        if (v50 == v51)
        {
          goto LABEL_49;
        }
      }

      sub_100027B20(v51, v86);
LABEL_49:
      if (++v22 == v21)
      {
LABEL_52:

        v6 = v74[0];
        goto LABEL_54;
      }

      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }
    }
  }

LABEL_54:
  v56 = v6;
  v57 = CollectionDifference.insertions.getter();
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v89;
    v60 = v58 - 1;
    for (i = (v57 + 105); ; i += 80)
    {
      *&v86[16] = *(i - 57);
      *&v86[32] = *(i - 41);
      *&v86[48] = *(i - 25);
      *&v86[57] = *(i - 1);
      *v86 = *(i - 73);
      if ((*i & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_10002EC04(0, *(v59 + 2) + 1, 1, v59);
        }

        v63 = *(v59 + 2);
        v62 = *(v59 + 3);
        if (v63 >= v62 >> 1)
        {
          v59 = sub_10002EC04((v62 > 1), v63 + 1, 1, v59);
        }

        *(v59 + 2) = v63 + 1;
        v64 = &v59[56 * v63];
        v65 = *&v86[8];
        v66 = *&v86[24];
        v67 = *&v86[40];
        *(v64 + 40) = *&v86[56];
        *(v64 + 3) = v66;
        *(v64 + 4) = v67;
        *(v64 + 2) = v65;
      }

      if (!v60)
      {
        break;
      }

      --v60;
    }

    v89 = v59;
  }

  else
  {

    v59 = v89;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v86 = v59;
  sub_10000DBC4(&qword_100074CC8, sub_10000DA70, &protocol conformance descriptor for <A> [A]);

  v68 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v70 = v69;

  swift_bridgeObjectRelease_n();
  v71 = [objc_opt_self() standardUserDefaults];
  v72 = Data._bridgeToObjectiveC()().super.isa;
  v73 = String._bridgeToObjectiveC()();
  [v71 setValue:v72 forKey:v73];
  sub_10000DAC4(v68, v70);

  return (*(v75 + 8))(v76, v56);
}

char *sub_10000D0EC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 dataForKey:v2];

  if (v3)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    sub_10000DBC4(&qword_100074CF0, sub_10000DC3C, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10000DAC4(v4, v6);
    return *&v43[0];
  }

  v7 = [v0 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 arrayForKey:v8];

  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10000D708(v10);

  v20 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v20;
  }

  *&v43[0] = _swiftEmptyArrayStorage;
  v12 = v11[2];
  if (!v12)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v13 = 0;
  v14 = v11 + 5;
  v15 = _swiftEmptyArrayStorage;
  v41 = v11[2];
  do
  {
    v42 = v15;
    v16 = v12 - v13;
    v17 = &v14[2 * v13];
    while (1)
    {
      if (v13 >= v11[2])
      {
        __break(1u);
        goto LABEL_45;
      }

      v18 = *(v17 - 1);
      v15 = *v17;
      sub_10000598C(0, &qword_100074CD8, NSKeyedUnarchiver_ptr);
      sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
      sub_10000DB18(v18, v15);
      v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      sub_10000DAC4(v18, v15);
      if (v19)
      {
        break;
      }

      v17 += 2;
      ++v13;
      if (!--v16)
      {
        v15 = v42;
        goto LABEL_17;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v13;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = *&v43[0];
    v14 = v11 + 5;
    v12 = v41;
  }

  while (v16 != 1);
LABEL_17:

  if (v15 >> 62)
  {
LABEL_45:
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_46;
    }

LABEL_19:
    v45 = _swiftEmptyArrayStorage;
    result = sub_10002F074(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = 0;
    v20 = v45;
    v24 = v15;
    v40 = kCGColorSpaceExtendedDisplayP3;
    v25 = v21 - 1;
    if ((v15 & 0xC000000000000001) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v24 + 8 * v23 + 32))
    {
      v27 = i;
      v28 = [i CGColor];
      v29 = CGColorGetColorSpace(v28);

      if (v29)
      {
        v30 = CGColorSpaceCopyName(v29);
        if (v30)
        {
          v31 = v30;
          type metadata accessor for CFString(0);
          sub_10000DB6C();
          if (static _CFObject.== infix(_:_:)() & 1) != 0 || (static _CFObject.== infix(_:_:)())
          {
            v32 = 0;
            goto LABEL_28;
          }

          if (static _CFObject.== infix(_:_:)())
          {
            v32 = 1;
LABEL_28:

LABEL_29:
            sub_100019C44(v27, v32, v43);

            goto LABEL_38;
          }

          v33 = static _CFObject.== infix(_:_:)();

          if (v33)
          {
            v32 = 1;
            goto LABEL_29;
          }
        }
      }

      if (qword_1000743E0 != -1)
      {
        swift_once();
      }

      sub_100019C44(v27, byte_10007B138, v43);
LABEL_38:
      v24 = v15;
      v45 = v20;
      v35 = v20[2];
      v34 = v20[3];
      if (v35 >= v34 >> 1)
      {
        sub_10002F074((v34 > 1), v35 + 1, 1);
        v24 = v15;
        v20 = v45;
      }

      v20[2] = v35 + 1;
      v36 = &v20[7 * v35];
      v37 = v43[0];
      v38 = v43[1];
      v39 = v43[2];
      *(v36 + 40) = v44;
      *(v36 + 3) = v38;
      *(v36 + 4) = v39;
      *(v36 + 2) = v37;
      if (v25 == v23)
      {

        return v20;
      }

      ++v23;
      if ((v15 & 0xC000000000000001) != 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      ;
    }
  }

  v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_46:

  return _swiftEmptyArrayStorage;
}

void *sub_10000D708(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  sub_10002F094(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000DC90(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_10002F094((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      v3[2] = v7 + 1;
      *&v3[2 * v7 + 4] = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_10000DCEC(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

uint64_t sub_10000D834()
{
  if (qword_1000743E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100004944(&unk_1000765A0, &qword_1000516B0);
  sub_10000DBC4(&qword_100074CC8, sub_10000DA70, &protocol conformance descriptor for <A> [A]);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;

  v3 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v3 setValue:isa forKey:v5];

  return sub_10000DAC4(v0, v2);
}

id sub_10000DA04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritesStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000DA70()
{
  result = qword_100074CD0;
  if (!qword_100074CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CD0);
  }

  return result;
}

uint64_t sub_10000DAC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000DB18(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000DB6C()
{
  result = qword_100074CE8;
  if (!qword_100074CE8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CE8);
  }

  return result;
}

uint64_t sub_10000DBC4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000DC3C()
{
  result = qword_100074CF8;
  if (!qword_100074CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074CF8);
  }

  return result;
}

uint64_t sub_10000DC90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DCEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000DAC4(result, a2);
  }

  return result;
}

unint64_t sub_10000DD00()
{
  result = qword_100074D08;
  if (!qword_100074D08)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D08);
  }

  return result;
}

unint64_t sub_10000DD64()
{
  result = qword_100074D10;
  if (!qword_100074D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D10);
  }

  return result;
}

double sub_10000DDE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 8.0;
  }

  v7 = [objc_opt_self() systemBackgroundColor];
  v8 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = static Alignment.center.getter();
  v11 = v10;
  static Color.black.getter();
  v12 = Color.opacity(_:)();

  *(a2 + 8) = v6;
  result = *&v14;
  *(a2 + 24) = v14;
  *a2 = 0x3FF0000000000000;
  *(a2 + 16) = a1;
  *(a2 + 40) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v8;
  *(a2 + 72) = 256;
  *(a2 + 80) = v9;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0x4010000000000000;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

double sub_10000DF38@<D0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  Path.init()();
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMinX(v17);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMinY(v18);
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetMinY(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetMaxX(v21);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGRectGetMaxY(v22);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  CGRectGetMinX(v23);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGRectGetMaxY(v24);
  Path.move(to:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.addLine(to:)();
  Path.addArc(tangent1End:tangent2End:radius:transform:)();
  Path.closeSubpath()();
  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

double sub_10000E19C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10000DF38(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_10000E208(uint64_t *a1))()
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_10000E290;
}

void sub_10000E290(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10000E2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E668();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E668();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000E3A4(uint64_t a1)
{
  v2 = sub_10000E668();

  return Shape.body.getter(a1, v2);
}

__n128 initializeBufferWithCopyOfBuffer for RoundedRectShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedRectShape(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedRectShape(uint64_t result, int a2, int a3)
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

unint64_t sub_10000E464()
{
  result = qword_100074D18;
  if (!qword_100074D18)
  {
    sub_100008B90(&qword_100074D20, &qword_10004F828);
    sub_100008D7C(&qword_100074D28, &qword_100074D30, &qword_10004F830, &protocol conformance descriptor for StrokeShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D18);
  }

  return result;
}

unint64_t sub_10000E564()
{
  result = qword_100074D48;
  if (!qword_100074D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D48);
  }

  return result;
}

unint64_t sub_10000E5BC()
{
  result = qword_100074D50;
  if (!qword_100074D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D50);
  }

  return result;
}

unint64_t sub_10000E614()
{
  result = qword_100074D58;
  if (!qword_100074D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D58);
  }

  return result;
}

unint64_t sub_10000E668()
{
  result = qword_100074D60;
  if (!qword_100074D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D60);
  }

  return result;
}

uint64_t sub_10000E6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E704(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Tab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Tab(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000E904(char a1)
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_10000EA38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6D75727463657053;
  if (v2 != 1)
  {
    v4 = 0x73726564696C53;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684632135;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6D75727463657053;
  if (*a2 != 1)
  {
    v8 = 0x73726564696C53;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684632135;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10000EB34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000EBD0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000EC58(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000ECF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100014D0C(*a1);
  *a2 = result;
  return result;
}

void sub_10000ED20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6D75727463657053;
  if (v2 != 1)
  {
    v5 = 0x73726564696C53;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684632135;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000ED8C()
{
  result = qword_100074D78;
  if (!qword_100074D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074D78);
  }

  return result;
}

uint64_t sub_10000EDFC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_100004944(&qword_100074D80, &qword_10004FAC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v49 = sub_100004944(&qword_100074D88, &qword_10004FAC8);
  __chkstk_darwin(v49);
  v13 = &v45 - v12;
  v50 = sub_100004944(&qword_100074D90, &qword_10004FAD0);
  __chkstk_darwin(v50);
  v15 = &v45 - v14;
  v16 = sub_100004944(&qword_100074D98, &qword_10004FAD8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v54 = &v45 - v18;
  v53 = sub_100004944(&qword_100074DA0, &qword_10004FAE0);
  __chkstk_darwin(v53);
  v51 = &v45 - v19;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v20 = &v11[*(sub_100004944(&qword_100074DA8, &qword_10004FAE8) + 44)];
  *&v52 = a3;
  *(&v52 + 1) = a4;
  sub_10000F4E0(a2, v20);
  if (sub_100025F10())
  {
    v46 = v17;
    v47 = v16;
    v48 = a5;
    sub_100004944(&qword_100074DE8, &qword_10004FB50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004F930;
    v22 = static Edge.Set.leading.getter();
    *(inited + 32) = v22;
    v23 = static Edge.Set.bottom.getter();
    *(inited + 33) = v23;
    v24 = static Edge.Set.trailing.getter();
    *(inited + 34) = v24;
    v25 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      v25 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v23)
    {
      v25 = Edge.Set.init(rawValue:)();
    }

    v16 = v47;

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v24)
    {
      v25 = Edge.Set.init(rawValue:)();
    }

    v26 = v48;
    v17 = v46;
  }

  else
  {
    v25 = static Edge.Set.all.getter();
    v26 = a5;
  }

  sub_100014D58(a2);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1000084B0(v11, v13, &qword_100074D80, &qword_10004FAC0);
  v35 = &v13[*(v49 + 36)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v36 = static ObservableObject.environmentStore.getter();
  sub_1000084B0(v13, v15, &qword_100074D88, &qword_10004FAC8);
  v37 = &v15[*(v50 + 36)];
  *v37 = v36;
  v37[1] = a2;
  v55 = v52;

  sub_100004944(&qword_100074DB0, &qword_10004FAF0);
  State.wrappedValue.getter();
  type metadata accessor for ColorPickerConfiguration(0);
  sub_100014E24();
  sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
  v38 = v54;
  View.environment<A>(_:)();

  sub_1000059D4(v15, &qword_100074D90, &qword_10004FAD0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v51;
  (*(v17 + 32))(v51, v38, v16);
  v40 = (v39 + *(v53 + 36));
  v41 = v60;
  v40[4] = v59;
  v40[5] = v41;
  v40[6] = v61;
  v42 = v56;
  *v40 = v55;
  v40[1] = v42;
  v43 = v58;
  v40[2] = v57;
  v40[3] = v43;
  LOBYTE(v36) = static Edge.Set.all.getter();
  sub_100014F9C(v39, v26);
  result = sub_100004944(&qword_100074DE0, &qword_10004FB48);
  *(v26 + *(result + 36)) = v36;
  return result;
}

uint64_t sub_10000F4E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorPickerContent(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v34 - v8);
  if (sub_100025F10())
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v10 = EnvironmentObject.init()();
    v12 = v11;
  }

  else
  {
    v12 = 0;
    v10 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v38[0])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v16 = EnvironmentObject.init()();
    v13 = v20;
    LOBYTE(v14) = static Edge.Set.bottom.getter();
    sub_100014D58(a1);
    EdgeInsets.init(_all:)();
    v15 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    LOBYTE(v38[0]) = 0;
    v14 = v14;
  }

  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  *v9 = EnvironmentObject.init()();
  v9[1] = v25;
  v26 = *(v4 + 20);
  *(v9 + v26) = swift_getKeyPath();
  sub_100004944(&qword_100074A18, &unk_100051000);
  swift_storeEnumTagMultiPayload();
  sub_100016228(v9, v7, type metadata accessor for ColorPickerContent);
  *a2 = v10;
  *(a2 + 8) = v12;
  *&v35 = v16;
  *(&v35 + 1) = v13;
  *&v36 = v14;
  *(&v36 + 1) = v15;
  *v37 = v17;
  *&v37[8] = v18;
  *&v37[16] = v19;
  v37[24] = 0;
  v27 = v36;
  *(a2 + 16) = v35;
  *(a2 + 32) = v27;
  *(a2 + 48) = *v37;
  *(a2 + 57) = *&v37[9];
  v28 = sub_100004944(&qword_100074DF0, &qword_10004FC20);
  sub_100016228(v7, a2 + *(v28 + 64), type metadata accessor for ColorPickerContent);
  v29 = *(v28 + 80);
  v30 = v14;
  v31 = v13;
  v32 = a2 + v29;
  sub_10001515C(v10);
  sub_100008A40(&v35, v38, &qword_100074DF8, &qword_10004FC28);
  sub_10001516C(v10);
  *v32 = 0;
  *(v32 + 8) = 0;
  sub_100016344(v9, type metadata accessor for ColorPickerContent);
  sub_100016344(v7, type metadata accessor for ColorPickerContent);
  v38[0] = v16;
  v38[1] = v31;
  v38[2] = v30;
  v38[3] = v15;
  v38[4] = v17;
  v38[5] = v18;
  v38[6] = v19;
  v39 = 0;
  sub_1000059D4(v38, &qword_100074DF8, &qword_10004FC28);
  return sub_10001516C(v10);
}

uint64_t sub_10000F8B8@<X0>(uint64_t a3@<X8>)
{
  v23[1] = a3;
  v3 = type metadata accessor for SegmentedPickerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_100074FD0, &qword_10004FE88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v28 = v31;
  v29 = v32;
  v30 = v33;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v24 = v16;
  v25 = v18;
  sub_10000C030();
  v24 = Text.init<A>(_:)();
  v25 = v19;
  v26 = v20 & 1;
  v27 = v21;
  sub_100004944(&qword_100074FD8, &unk_10004FE90);
  sub_100015C7C();
  sub_100015CD0();
  Picker.init(selection:label:content:)();
  SegmentedPickerStyle.init()();
  sub_100008D7C(&qword_100074FF0, &qword_100074FD0, &qword_10004FE88, &protocol conformance descriptor for Picker<A, B, C>);
  View.pickerStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10000FC8C()
{
  v5 = &off_10006A6A0;
  KeyPath = swift_getKeyPath();
  v1 = sub_100004944(&qword_100074D70, qword_10004F990);
  v2 = sub_100008D7C(&qword_100074FF8, &qword_100074D70, qword_10004F990, &protocol conformance descriptor for [A]);
  v3 = sub_100015C7C();
  return ForEach<>.init(_:id:content:)(&v5, KeyPath, sub_10000FD78, 0, v1, &type metadata for Text, v2, v3, &protocol witness table for Text);
}

uint64_t sub_10000FD78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000E904(*a1);
  sub_10000C030();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10000FDDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004944(&qword_100074EA0, &qword_10004FD28);
  v4 = __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v43 = sub_100004944(&qword_100074EA8, &qword_10004FD30);
  __chkstk_darwin(v43);
  v10 = (&v39 - v9);
  v39 = sub_100004944(&qword_100074EB0, &qword_10004FD38);
  __chkstk_darwin(v39);
  v41 = &v39 - v11;
  v40 = sub_100004944(&qword_100074EB8, &qword_10004FD40);
  __chkstk_darwin(v40);
  v13 = (&v39 - v12);
  if (*v1)
  {
    v42 = a1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v45)
    {
      *v13 = swift_getKeyPath();
      sub_100004944(&qword_100074F28, &qword_10004FDA0);
      swift_storeEnumTagMultiPayload();
      v14 = type metadata accessor for ColorSwatchPickerView(0);
      v15 = (v13 + v14[5]);
      type metadata accessor for ColorPickerState(0);
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
      *v15 = EnvironmentObject.init()();
      v15[1] = v16;
      v17 = v13 + v14[6];
      v44 = 0;
      GestureState.init(wrappedValue:)();
      v18 = v46;
      v19 = v47;
      *v17 = v45;
      *(v17 + 1) = v18;
      *(v17 + 1) = v19;
      *(v13 + v14[7]) = &off_10006C248;
      v20 = v14[8];
      if (qword_1000743C8 != -1)
      {
        swift_once();
      }

      *(v13 + v20) = qword_1000754D0;

      sub_100011C64();
      *(v13 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v21;
      KeyPath = swift_getKeyPath();
      v23 = (v13 + *(v40 + 36));
      v24 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v25 = enum case for LayoutDirection.leftToRight(_:);
      v26 = type metadata accessor for LayoutDirection();
      (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
      *v23 = KeyPath;
      v27 = &qword_100074EB8;
      v28 = &qword_10004FD40;
      sub_100008A40(v13, v41, &qword_100074EB8, &qword_10004FD40);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_1000157C0();
      _ConditionalContent<>.init(storage:)();
      v29 = v13;
    }

    else
    {
      *v10 = sub_1000104B4();
      v30 = v10 + *(v43 + 44);
      sub_100010674(v1, v8);
      *&v8[*(v3 + 36)] = 256;
      type metadata accessor for ColorPickerState(0);
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
      v31 = EnvironmentObject.init()();
      v33 = v32;
      type metadata accessor for ColorPickerConfiguration(0);
      sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
      v34 = Environment.init<A>(_:)();
      v36 = v35;
      sub_100008A40(v8, v6, &qword_100074EA0, &qword_10004FD28);
      sub_100008A40(v6, v30, &qword_100074EA0, &qword_10004FD28);
      v37 = v30 + *(sub_100004944(&qword_100074EC0, &qword_10004FD48) + 48);
      *v37 = v31;
      *(v37 + 8) = v33;
      *(v37 + 16) = v34;
      *(v37 + 24) = v36 & 1;
      *(v37 + 32) = sub_1000124E8;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;

      sub_1000155E8(sub_1000124E8, 0);
      sub_1000059D4(v8, &qword_100074EA0, &qword_10004FD28);

      sub_1000155F0(sub_1000124E8, 0);
      sub_1000059D4(v6, &qword_100074EA0, &qword_10004FD28);
      v27 = &qword_100074EA8;
      v28 = &qword_10004FD30;
      sub_100008A40(v10, v41, &qword_100074EA8, &qword_10004FD30);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_1000157C0();
      _ConditionalContent<>.init(storage:)();
      v29 = v10;
    }

    return sub_1000059D4(v29, v27, v28);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000104B4()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v4)
    {
      static VerticalAlignment.top.getter();
      v1 = [objc_opt_self() currentDevice];
      [v1 userInterfaceIdiom];

      sub_10000829C();
    }

    else
    {
      v2 = [objc_opt_self() currentDevice];
      [v2 userInterfaceIdiom];

      static HorizontalAlignment.center.getter();
      sub_1000082F0();
    }

    return AnyLayout.init<A>(_:)();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100010674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = sub_100004944(&qword_100074F30, &qword_10004FDD8);
  __chkstk_darwin(v91);
  v4 = (&v73 - v3);
  v5 = sub_100004944(&qword_100074F38, &qword_10004FDE0);
  __chkstk_darwin(v5);
  v7 = &v73 - v6;
  v89 = type metadata accessor for RGBAView(0);
  __chkstk_darwin(v89);
  v77 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_100004944(&qword_100074F40, &qword_10004FDE8);
  __chkstk_darwin(v83);
  v79 = &v73 - v9;
  v85 = sub_100004944(&qword_100074F48, &qword_10004FDF0);
  __chkstk_darwin(v85);
  v87 = &v73 - v10;
  v81 = sub_100004944(&qword_100074F50, &qword_10004FDF8);
  __chkstk_darwin(v81);
  v82 = &v73 - v11;
  v86 = sub_100004944(&qword_100074F58, &qword_10004FE00);
  __chkstk_darwin(v86);
  v84 = &v73 - v12;
  v80 = sub_100004944(&qword_100074EB8, &qword_10004FD40);
  __chkstk_darwin(v80);
  v78 = (&v73 - v13);
  v14 = sub_100004944(&qword_100074F60, &qword_10004FE08);
  __chkstk_darwin(v14);
  v88 = &v73 - v15;
  v16 = type metadata accessor for DynamicTypeSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorPickerContent(0);
  sub_10001CBF0(v19);
  v20 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    *v4 = static Alignment.top.getter();
    v4[1] = v46;
    v47 = sub_100004944(&qword_100074F68, &qword_10004FE10);
    sub_100011498(a1, v4 + *(v47 + 44));
    v48 = &qword_100074F30;
    v49 = &qword_10004FDD8;
    sub_100008A40(v4, v7, &qword_100074F30, &qword_10004FDD8);
    swift_storeEnumTagMultiPayload();
    sub_10001596C();
    sub_100008D7C(&qword_100074FA8, &qword_100074F30, &qword_10004FDD8, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    v50 = v4;
    return sub_1000059D4(v50, v48, v49);
  }

  v75 = v14;
  v76 = v5;
  v74 = v7;
  v21 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v92)
    {
      if (v92 != 1)
      {
        type metadata accessor for ColorPickerState(0);
        sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
        v67 = EnvironmentObject.init()();
        v68 = v77;
        *v77 = v67;
        *(v68 + 8) = v69;
        type metadata accessor for ColorPickerConfiguration(0);
        sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
        *(v68 + 16) = Environment.init<A>(_:)();
        *(v68 + 24) = v70 & 1;
        v71 = *(v89 + 24);
        *(v68 + v71) = swift_getKeyPath();
        sub_100004944(&qword_100074A18, &unk_100051000);
        swift_storeEnumTagMultiPayload();
        sub_100016228(v68, v87, type metadata accessor for RGBAView);
        swift_storeEnumTagMultiPayload();
        sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
        sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView, &unk_10004EF80);
        v45 = v88;
        _ConditionalContent<>.init(storage:)();
        sub_100016344(v68, type metadata accessor for RGBAView);
        goto LABEL_12;
      }

      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v21;
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      swift_retain_n();
      Binding.init(get:set:)();
      type metadata accessor for ColorPickerState(0);
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
      v24 = EnvironmentObject.init()();
      sub_1000249B8(v106, v24, v25, &v92);
      sub_100011C64();
      v27 = v26;
      KeyPath = swift_getKeyPath();
      v29 = v79;
      v30 = &v79[*(v83 + 36)];
      v31 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v32 = enum case for LayoutDirection.leftToRight(_:);
      v33 = type metadata accessor for LayoutDirection();
      (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
      *v30 = KeyPath;
      v34 = v103;
      *(v29 + 160) = v102;
      *(v29 + 176) = v34;
      *(v29 + 192) = v104;
      *(v29 + 208) = v105;
      v35 = v99;
      *(v29 + 96) = v98;
      *(v29 + 112) = v35;
      v36 = v101;
      *(v29 + 128) = v100;
      *(v29 + 144) = v36;
      v37 = v95;
      *(v29 + 32) = v94;
      *(v29 + 48) = v37;
      v38 = v97;
      *(v29 + 64) = v96;
      *(v29 + 80) = v38;
      v39 = v93;
      *v29 = v92;
      *(v29 + 16) = v39;
      *(v29 + 216) = v27;
      v40 = &qword_100074F40;
      v41 = &qword_10004FDE8;
      sub_100008A40(v29, v82, &qword_100074F40, &qword_10004FDE8);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_100015AD8();
      v42 = v84;
      _ConditionalContent<>.init(storage:)();
      sub_100008A40(v42, v87, &qword_100074F58, &qword_10004FE00);
      swift_storeEnumTagMultiPayload();
      sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
      sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView, &unk_10004EF80);
      v43 = v88;
      _ConditionalContent<>.init(storage:)();
      sub_1000059D4(v42, &qword_100074F58, &qword_10004FE00);
      v44 = v29;
      v45 = v43;
    }

    else
    {
      v51 = swift_getKeyPath();
      v52 = v78;
      *v78 = v51;
      sub_100004944(&qword_100074F28, &qword_10004FDA0);
      swift_storeEnumTagMultiPayload();
      v53 = type metadata accessor for ColorSwatchPickerView(0);
      v54 = (v52 + v53[5]);
      type metadata accessor for ColorPickerState(0);
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
      *v54 = EnvironmentObject.init()();
      v54[1] = v55;
      v56 = v52 + v53[6];
      LOBYTE(v106[0]) = 0;
      GestureState.init(wrappedValue:)();
      v57 = *(&v92 + 1);
      v58 = v93;
      *v56 = v92;
      *(v56 + 8) = v57;
      *(v56 + 16) = v58;
      *(v52 + v53[7]) = &off_10006C248;
      v59 = v53[8];
      if (qword_1000743C8 != -1)
      {
        swift_once();
      }

      *(v52 + v59) = qword_1000754D0;

      sub_100011C64();
      *(v52 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v60;
      v61 = swift_getKeyPath();
      v62 = (v52 + *(v80 + 36));
      v63 = *(sub_100004944(&qword_100074EF8, &qword_10004FD58) + 28);
      v64 = enum case for LayoutDirection.leftToRight(_:);
      v65 = type metadata accessor for LayoutDirection();
      (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
      *v62 = v61;
      v40 = &qword_100074EB8;
      v41 = &qword_10004FD40;
      sub_100008A40(v52, v82, &qword_100074EB8, &qword_10004FD40);
      swift_storeEnumTagMultiPayload();
      sub_1000155F8();
      sub_100015AD8();
      v66 = v84;
      _ConditionalContent<>.init(storage:)();
      sub_100008A40(v66, v87, &qword_100074F58, &qword_10004FE00);
      swift_storeEnumTagMultiPayload();
      sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
      sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView, &unk_10004EF80);
      v45 = v88;
      _ConditionalContent<>.init(storage:)();
      sub_1000059D4(v66, &qword_100074F58, &qword_10004FE00);
      v44 = v52;
    }

    sub_1000059D4(v44, v40, v41);
LABEL_12:
    v48 = &qword_100074F60;
    v49 = &qword_10004FE08;
    sub_100008A40(v45, v74, &qword_100074F60, &qword_10004FE08);
    swift_storeEnumTagMultiPayload();
    sub_10001596C();
    sub_100008D7C(&qword_100074FA8, &qword_100074F30, &qword_10004FDD8, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    v50 = v45;
    return sub_1000059D4(v50, v48, v49);
  }

  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100011498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v74 = sub_100004944(&qword_100074FB0, &qword_10004FE68);
  v3 = __chkstk_darwin(v74);
  v78 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v75 = &v68[-v5];
  v72 = sub_100004944(&qword_100074FB8, &qword_10004FE70);
  v6 = __chkstk_darwin(v72);
  v76 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v68[-v8];
  v71 = sub_100004944(&qword_100074FC0, &qword_10004FE78);
  v10 = __chkstk_darwin(v71);
  v73 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v68[-v12];
  *v13 = swift_getKeyPath();
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ColorSwatchPickerView(0);
  v15 = (v13 + v14[5]);
  v16 = type metadata accessor for ColorPickerState(0);
  v79 = sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v80 = v16;
  *v15 = EnvironmentObject.init()();
  v15[1] = v17;
  v18 = v13 + v14[6];
  LOBYTE(v95[0]) = 0;
  GestureState.init(wrappedValue:)();
  v19 = *(&v81 + 1);
  v20 = v82;
  *v18 = v81;
  *(v18 + 1) = v19;
  *(v18 + 1) = v20;
  *(v13 + v14[7]) = &off_10006C248;
  v21 = v14[8];
  if (qword_1000743C8 != -1)
  {
    swift_once();
  }

  *(v13 + v21) = qword_1000754D0;

  sub_100011C64();
  *(v13 + *(sub_100004944(&qword_100074ED8, &qword_10004FD50) + 36)) = v22;
  KeyPath = swift_getKeyPath();
  v24 = (v13 + *(sub_100004944(&qword_100074EB8, &qword_10004FD40) + 36));
  v70 = sub_100004944(&qword_100074EF8, &qword_10004FD58);
  v25 = *(v70 + 28);
  v26 = enum case for LayoutDirection.leftToRight(_:);
  v27 = type metadata accessor for LayoutDirection();
  v28 = *(*(v27 - 8) + 104);
  v69 = v26;
  v29 = v26;
  v30 = v28;
  v28(v24 + v25, v29, v27);
  *v24 = KeyPath;
  v31 = EnvironmentObject.init()();
  v32 = *(v71 + 9);
  v71 = v13;
  v33 = v13 + v32;
  *v33 = v31;
  *(v33 + 1) = v34;
  v33[16] = 0;
  v35 = *a1;
  if (*a1)
  {
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v35;
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v35;
    swift_retain_n();
    Binding.init(get:set:)();
    v38 = EnvironmentObject.init()();
    sub_1000249B8(v95, v38, v39, &v81);
    sub_100011C64();
    v41 = v40;
    v42 = swift_getKeyPath();
    v43 = &v9[*(sub_100004944(&qword_100074F40, &qword_10004FDE8) + 36)];
    v30(v43 + *(v70 + 28), v69, v27);
    *v43 = v42;
    v44 = v92;
    *(v9 + 10) = v91;
    *(v9 + 11) = v44;
    *(v9 + 12) = v93;
    *(v9 + 26) = v94;
    v45 = v88;
    *(v9 + 6) = v87;
    *(v9 + 7) = v45;
    v46 = v90;
    *(v9 + 8) = v89;
    *(v9 + 9) = v46;
    v47 = v84;
    *(v9 + 2) = v83;
    *(v9 + 3) = v47;
    v48 = v86;
    *(v9 + 4) = v85;
    *(v9 + 5) = v48;
    v49 = v82;
    *v9 = v81;
    *(v9 + 1) = v49;
    *(v9 + 27) = v41;
    v50 = EnvironmentObject.init()();
    v51 = &v9[*(v72 + 36)];
    *v51 = v50;
    *(v51 + 1) = v52;
    v51[16] = 1;
    v53 = EnvironmentObject.init()();
    v54 = v75;
    *v75 = v53;
    *(v54 + 8) = v55;
    type metadata accessor for ColorPickerConfiguration(0);
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    *(v54 + 16) = Environment.init<A>(_:)();
    *(v54 + 24) = v56 & 1;
    v57 = *(type metadata accessor for RGBAView(0) + 24);
    *(v54 + v57) = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    v58 = EnvironmentObject.init()();
    v59 = v73;
    v60 = v54 + *(v74 + 36);
    *v60 = v58;
    *(v60 + 8) = v61;
    *(v60 + 16) = 2;
    v62 = v71;
    sub_100008A40(v71, v59, &qword_100074FC0, &qword_10004FE78);
    v63 = v76;
    sub_100008A40(v9, v76, &qword_100074FB8, &qword_10004FE70);
    v64 = v78;
    sub_100008A40(v54, v78, &qword_100074FB0, &qword_10004FE68);
    v65 = v77;
    sub_100008A40(v59, v77, &qword_100074FC0, &qword_10004FE78);
    v66 = sub_100004944(&qword_100074FC8, &qword_10004FE80);
    sub_100008A40(v63, v65 + *(v66 + 48), &qword_100074FB8, &qword_10004FE70);
    sub_100008A40(v64, v65 + *(v66 + 64), &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v54, &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v9, &qword_100074FB8, &qword_10004FE70);
    sub_1000059D4(v62, &qword_100074FC0, &qword_10004FE78);
    sub_1000059D4(v64, &qword_100074FB0, &qword_10004FE68);
    sub_1000059D4(v63, &qword_100074FB8, &qword_10004FE70);
    return sub_1000059D4(v59, &qword_100074FC0, &qword_10004FE78);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100011C64()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();
    }
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100011E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a5;
  v28 = sub_100004944(&qword_100075148, &qword_100050370);
  __chkstk_darwin(v28);
  v8 = &v28 - v7;
  v9 = sub_100004944(&qword_100075150, &qword_100050378);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_100004944(&qword_100075158, &qword_100050380);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v31)
    {
      if (v31 == 1)
      {
        v15 = 0x6D75727463657053;
      }

      else
      {
        v15 = 0x73726564696C53;
      }

      if (v31 == 1)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = 0xE700000000000000;
      }

      v17 = a4;
      if (a4)
      {
LABEL_10:
        if (v17 == 1)
        {
          v18 = 0x6D75727463657053;
        }

        else
        {
          v18 = 0x73726564696C53;
        }

        if (v17 == 1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        if (v15 != v18)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      v15 = 1684632135;
      v17 = a4;
      if (a4)
      {
        goto LABEL_10;
      }
    }

    v19 = 0xE400000000000000;
    if (v15 != 1684632135)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (v16 == v19)
    {

      goto LABEL_23;
    }

LABEL_22:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v22 = 0;
      v21 = 0.0;
      goto LABEL_25;
    }

LABEL_23:
    v21 = 1.0;
    v22 = 1;
LABEL_25:
    v23 = sub_100004944(&qword_100075160, &qword_100050388);
    (*(*(v23 - 8) + 16))(v8, v29, v23);
    *&v8[*(v28 + 36)] = v21;
    sub_1000084B0(v8, v11, &qword_100075148, &qword_100050370);
    v11[*(v9 + 36)] = v22;
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = v22 ^ 1;
    sub_1000084B0(v11, v14, &qword_100075150, &qword_100050378);
    v26 = &v14[*(v12 + 36)];
    *v26 = KeyPath;
    v26[1] = sub_100016CAC;
    v26[2] = v25;
    sub_100016CB4();
    View.accessibilityHidden(_:)();
    return sub_1000059D4(v14, &qword_100075158, &qword_100050380);
  }

  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100012234(uint64_t a1, double a2)
{
  v4 = sub_100004944(&qword_100075010, &qword_1000500F8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_100004944(&qword_100075018, &qword_100050100);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = sub_100004944(&qword_100075020, &qword_100050108);
  v13 = *(*(v12 - 8) + 16);
  if (v11 == 6)
  {
    v13(v9, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10001607C();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v13(v6, a1, v12);
    v15 = &v6[*(v4 + 36)];
    *v15 = a2;
    *(v15 + 4) = 0;
    sub_100008A40(v6, v9, &qword_100075010, &qword_1000500F8);
    swift_storeEnumTagMultiPayload();
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10001607C();
    _ConditionalContent<>.init(storage:)();
    return sub_1000059D4(v6, &qword_100075010, &qword_1000500F8);
  }
}

uint64_t sub_1000124E8()
{
  type metadata accessor for FavoriteColorPickerView.Model(0);
  swift_allocObject();
  return sub_10002D660();
}

uint64_t sub_100012520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_100004944(&qword_100075040, &qword_100050118);
  v4 = __chkstk_darwin(v3 - 8);
  v91 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v83 = &v77[-v6];
  v7 = type metadata accessor for Divider();
  v86 = *(v7 - 8);
  v87 = v7;
  __chkstk_darwin(v7);
  v79 = &v77[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100004944(&qword_100075048, &qword_100050120);
  v10 = __chkstk_darwin(v9 - 8);
  v89 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v77[-v12];
  v80 = sub_100004944(&qword_100075050, &qword_100050128);
  __chkstk_darwin(v80);
  v15 = &v77[-v14];
  v16 = type metadata accessor for ColorSlider(0);
  v17 = *(v16 - 1);
  __chkstk_darwin(v16);
  v19 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_100004944(&qword_100075058, &qword_100050130);
  v20 = __chkstk_darwin(v81);
  v88 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v85 = &v77[-v23];
  __chkstk_darwin(v22);
  v25 = &v77[-v24];
  v26 = sub_100004944(&qword_100075060, &qword_100050138);
  v27 = __chkstk_darwin(v26 - 8);
  v84 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v93 = &v77[-v29];
  if (!*a1)
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v30 = v98[0];
  v78 = v98[0] > 1.0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = v13;
  v82 = v17;
  if (v97)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v30 <= 1.0)
    {
      v38 = 1;
    }

    else
    {
      type metadata accessor for ColorPickerState(0);
      sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
      v31 = EnvironmentObject.init()();
      v33 = v32;
      *&v19[v16[7]] = swift_getKeyPath();
      sub_100004944(&qword_100074A18, &unk_100051000);
      swift_storeEnumTagMultiPayload();
      *v19 = 5;
      *(v19 + 1) = v31;
      *(v19 + 2) = v33;
      type metadata accessor for ColorPickerConfiguration(0);
      sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
      *(v19 + 3) = Environment.init<A>(_:)();
      v19[32] = v34 & 1;
      v35 = &v19[v16[8]];
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      v36 = v16[9];
      static Font.Weight.semibold.getter();
      *&v19[v36] = v37;
      sub_1000163AC(v19, v25, type metadata accessor for ColorSlider);
      v38 = 0;
    }

    (*(v17 + 56))(v25, v38, 1, v16);
    sub_100008A40(v25, v15, &qword_100075058, &qword_100050130);
    swift_storeEnumTagMultiPayload();
    sub_100016290();
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider, &unk_1000532EC);
    v46 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1000059D4(v25, &qword_100075058, &qword_100050130);
    v47 = 0;
    v13 = v92;
    goto LABEL_9;
  }

  if (v30 > 1.0)
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v39 = EnvironmentObject.init()();
    v41 = v40;
    *&v19[v16[7]] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    *v19 = 4;
    *(v19 + 1) = v39;
    *(v19 + 2) = v41;
    type metadata accessor for ColorPickerConfiguration(0);
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    *(v19 + 3) = Environment.init<A>(_:)();
    v19[32] = v42 & 1;
    v43 = &v19[v16[8]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = v16[9];
    static Font.Weight.semibold.getter();
    *&v19[v44] = v45;
    sub_100016228(v19, v15, type metadata accessor for ColorSlider);
    swift_storeEnumTagMultiPayload();
    sub_100016290();
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider, &unk_1000532EC);
    v46 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_100016344(v19, type metadata accessor for ColorSlider);
    v47 = 0;
LABEL_9:
    v48 = v85;
    goto LABEL_11;
  }

  v47 = 1;
  v48 = v85;
  v46 = v93;
LABEL_11:
  v49 = sub_100004944(&qword_100075068, &qword_1000501D0);
  v50 = 1;
  (*(*(v49 - 8) + 56))(v46, v47, 1, v49);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v96 == 1)
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v51 = EnvironmentObject.init()();
    v53 = v52;
    *&v19[v16[7]] = swift_getKeyPath();
    sub_100004944(&qword_100074A18, &unk_100051000);
    swift_storeEnumTagMultiPayload();
    *v19 = 3;
    *(v19 + 1) = v51;
    *(v19 + 2) = v53;
    type metadata accessor for ColorPickerConfiguration(0);
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    *(v19 + 3) = Environment.init<A>(_:)();
    v19[32] = v54 & 1;
    v55 = &v19[v16[8]];
    *v55 = swift_getKeyPath();
    v55[8] = 0;
    v56 = v16[9];
    static Font.Weight.semibold.getter();
    *&v19[v56] = v57;
    sub_1000163AC(v19, v48, type metadata accessor for ColorSlider);
    v50 = 0;
  }

  (*(v82 + 56))(v48, v50, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v95 == 1)
  {

    v58 = v93;
LABEL_16:
    v59 = 1;
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v93;
  v59 = v78;
  if (v94 == 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  v60 = [objc_opt_self() currentDevice];
  v61 = [v60 userInterfaceIdiom];

  v62 = 1;
  if (v61 == 6)
  {
    v64 = v86;
    v63 = v87;
  }

  else
  {
    v64 = v86;
    v63 = v87;
    if (v59)
    {
      v65 = v79;
      Divider.init()();
      (*(v64 + 32))(v13, v65, v63);
      v62 = 0;
    }
  }

  (*(v64 + 56))(v13, v62, 1, v63);
  v66 = static VerticalAlignment.top.getter();
  v67 = v83;
  *v83 = v66;
  *(v67 + 8) = 0x4030000000000000;
  *(v67 + 16) = 0;
  v68 = sub_100004944(&qword_100075070, &qword_100050220);
  sub_100013388(a1, (v67 + *(v68 + 44)));
  v69 = v84;
  sub_100008A40(v58, v84, &qword_100075060, &qword_100050138);
  v70 = v88;
  sub_100008A40(v48, v88, &qword_100075058, &qword_100050130);
  v71 = v89;
  sub_100008A40(v13, v89, &qword_100075048, &qword_100050120);
  v72 = v48;
  v73 = v91;
  sub_10001614C(v67, v91);
  v74 = v90;
  sub_100008A40(v69, v90, &qword_100075060, &qword_100050138);
  v75 = sub_100004944(&qword_100075078, &qword_100050228);
  sub_100008A40(v70, v74 + v75[12], &qword_100075058, &qword_100050130);
  sub_100008A40(v71, v74 + v75[16], &qword_100075048, &qword_100050120);
  sub_10001614C(v73, v74 + v75[20]);
  sub_1000161BC(v67);
  sub_1000059D4(v92, &qword_100075048, &qword_100050120);
  sub_1000059D4(v72, &qword_100075058, &qword_100050130);
  sub_1000059D4(v93, &qword_100075060, &qword_100050138);
  sub_1000161BC(v73);
  sub_1000059D4(v71, &qword_100075048, &qword_100050120);
  sub_1000059D4(v70, &qword_100075058, &qword_100050130);
  return sub_1000059D4(v69, &qword_100075060, &qword_100050138);
}

uint64_t sub_100013388@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for ContentShapeKinds();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for RoundedRectangle();
  v5 = __chkstk_darwin(v111);
  v99 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (&v85 - v7);
  v9 = sub_100004944(&qword_100075090, &qword_100050260);
  __chkstk_darwin(v9);
  v11 = &v85 - v10;
  v96 = sub_100004944(&qword_100075098, &qword_100050268);
  __chkstk_darwin(v96);
  v97 = &v85 - v12;
  v13 = sub_100004944(&qword_1000750A0, &qword_100050270);
  __chkstk_darwin(v13 - 8);
  v98 = &v85 - v14;
  v100 = sub_100004944(&qword_1000750A8, &qword_100050278);
  __chkstk_darwin(v100);
  v101 = &v85 - v15;
  v16 = sub_100004944(&qword_1000750B0, &qword_100050280);
  v107 = *(v16 - 8);
  v108 = v16;
  v17 = __chkstk_darwin(v16);
  v106 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v112 = &v85 - v19;
  v105 = a1;
  v20 = *a1;
  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v88 = *&v124[24];
    v89 = *&v124[16];
    v87 = *&v124[32];
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    v85 = *v124;
    v86 = v123;
    v21 = EnvironmentObject.init()();
    v23 = v22;
    v110 = objc_opt_self();
    v24 = v20;
    v25 = [v110 currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 6)
    {
      v27 = 22.0;
    }

    else
    {
      v27 = 10.0;
    }

    v28 = *(v111 + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v94 = enum case for RoundedCornerStyle.continuous(_:);
    v93 = type metadata accessor for RoundedCornerStyle();
    v30 = *(v93 - 8);
    v92 = *(v30 + 104);
    v95 = v30 + 104;
    v92(v8 + v28, v29, v93);
    *v8 = v27;
    v8[1] = v27;
    v31 = &v11[*(v9 + 36)];
    v91 = &type metadata accessor for RoundedRectangle;
    sub_1000163AC(v8, v31, &type metadata accessor for RoundedRectangle);
    *(v31 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
    *v11 = v21;
    *(v11 + 1) = v23;
    v32 = v85;
    *(v11 + 1) = v86;
    *(v11 + 2) = v32;
    v33 = v88;
    *(v11 + 6) = v89;
    *(v11 + 7) = v33;
    *(v11 + 32) = v87;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v34 = v110;
    v35 = [v110 currentDevice];
    [v35 userInterfaceIdiom];

    v36 = [v34 currentDevice];
    [v36 userInterfaceIdiom];

    swift_getKeyPath();
    swift_getKeyPath();

    v90 = v24;
    static Published.subscript.getter();

    v37 = [v34 currentDevice];
    [v37 userInterfaceIdiom];

    v38 = [v34 currentDevice];
    [v38 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v39 = v97;
    sub_1000084B0(v11, v97, &qword_100075090, &qword_100050260);
    v40 = (v39 + *(v96 + 36));
    v41 = *&v125[47];
    *v40 = *&v125[31];
    v40[1] = v41;
    v40[2] = *&v125[63];
    sub_100008BD8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v44 = String._bridgeToObjectiveC()();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *&v123 = v47;
    *(&v123 + 1) = v49;
    sub_10000C030();
    v50 = Text.init<A>(_:)();
    v52 = v51;
    LOBYTE(v46) = v53;
    sub_100016414();
    v54 = v98;
    View.accessibility(label:)();
    sub_10000C084(v50, v52, v46 & 1);

    sub_1000059D4(v39, &qword_100075098, &qword_100050268);
    sub_100004944(&qword_1000750D0, &qword_1000502D8);
    v55 = v103;
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10004E4A0;
    static ContentShapeKinds.dragPreview.getter();
    *&v123 = v56;
    sub_100016780(&qword_1000750D8, &type metadata accessor for ContentShapeKinds, &protocol conformance descriptor for ContentShapeKinds);
    sub_100004944(&qword_1000750E0, &qword_1000502E0);
    sub_100008D7C(&qword_1000750E8, &qword_1000750E0, &qword_1000502E0, &protocol conformance descriptor for [A]);
    v57 = v102;
    v58 = v104;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = [v110 currentDevice];
    v60 = [v59 userInterfaceIdiom];

    if (v60 == 6)
    {
      v61 = 22.0;
    }

    else
    {
      v61 = 10.0;
    }

    v62 = v99;
    v92(v99 + *(v111 + 20), v94, v93);
    *v62 = v61;
    v62[1] = v61;
    v63 = v101;
    v64 = &v101[*(v100 + 36)];
    sub_1000163AC(v62, v64, v91);
    v65 = sub_100004944(&qword_1000750F0, &qword_1000502E8);
    (*(v55 + 32))(v64 + *(v65 + 40), v57, v58);
    *(v64 + *(v65 + 36)) = 0;
    sub_1000084B0(v54, v63, &qword_1000750A0, &qword_100050270);
    v66 = v105;
    v128 = v105[2];
    v129 = *(v105 + 24);
    v126 = *(v105 + 2);
    v127 = *(v105 + 48);
    v67 = swift_allocObject();
    v68 = *(v66 + 1);
    *(v67 + 16) = *v66;
    *(v67 + 32) = v68;
    *(v67 + 48) = *(v66 + 2);
    *(v67 + 64) = *(v66 + 48);

    sub_100008A40(&v128, &v123, &qword_1000750F8, &qword_1000502F0);
    sub_100008A40(&v126, &v123, &qword_100075100, &qword_1000502F8);
    sub_1000165B8();
    v69 = v112;
    View.onDrag(_:)();

    sub_1000059D4(v63, &qword_1000750A8, &qword_100050278);
    v70 = static HorizontalAlignment.center.getter();
    v114 = 1;
    sub_1000142C0(v66, &v123);
    v117 = *&v124[16];
    v118 = *&v124[32];
    v115 = v123;
    v116 = *v124;
    v120[2] = *&v124[16];
    v120[3] = *&v124[32];
    v120[4] = *&v124[48];
    v120[1] = *v124;
    v119 = *&v124[48];
    v120[0] = v123;
    sub_100008A40(&v115, v121, &qword_100075120, &qword_100050300);
    sub_1000059D4(v120, &qword_100075120, &qword_100050300);
    *&v113[23] = v116;
    *&v113[39] = v117;
    *&v113[55] = v118;
    *&v113[71] = v119;
    *&v113[7] = v115;
    v71 = v114;
    v73 = v106;
    v72 = v107;
    v74 = *(v107 + 16);
    v75 = v108;
    v74(v106, v69, v108);
    v76 = v109;
    v74(v109, v73, v75);
    v77 = &v76[*(sub_100004944(&qword_100075128, &qword_100050308) + 48)];
    v121[0] = v70;
    v121[1] = 0;
    v122[0] = v71;
    *&v122[1] = *v113;
    *&v122[17] = *&v113[16];
    *&v122[65] = *&v113[64];
    *&v122[80] = *&v113[79];
    *&v122[49] = *&v113[48];
    *&v122[33] = *&v113[32];
    v78 = *v122;
    *v77 = v70;
    *(v77 + 1) = v78;
    v79 = *&v122[16];
    v80 = *&v122[32];
    v81 = *&v122[48];
    v82 = *&v122[64];
    *(v77 + 12) = *&v122[80];
    *(v77 + 4) = v81;
    *(v77 + 5) = v82;
    *(v77 + 2) = v79;
    *(v77 + 3) = v80;
    sub_100008A40(v121, &v123, &qword_100075130, &qword_100050310);
    v83 = *(v72 + 8);
    v83(v112, v75);
    *&v124[33] = *&v113[32];
    *&v124[49] = *&v113[48];
    *v125 = *&v113[64];
    *&v124[1] = *v113;
    v123 = v70;
    v124[0] = v71;
    *&v125[15] = *&v113[79];
    *&v124[17] = *&v113[16];
    sub_1000059D4(&v123, &qword_100075130, &qword_100050310);
    return (v83)(v73, v75);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_100014164(uint64_t *a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v5 & 0xFF00) == 0x200)
    {
      v1 = [objc_opt_self() clearColor];
    }

    else
    {
      sub_100018314();
    }

    v2 = v1;
    v3 = [objc_allocWithZone(NSItemProvider) initWithObject:v1];

    return v3;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000142C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v40 = a1[2];
  v41 = *(a1 + 24);
  v5 = a1[4];
  v4 = a1[5];
  v6 = swift_allocObject();
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 2);
  *(v6 + 64) = *(a1 + 48);
  if (v3)
  {
    v8 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_100008A40(&v40, &v28, &qword_1000750F8, &qword_1000502F0);
    sub_1000155E8(v5, v4);
    static Published.subscript.getter();

    v9 = objc_opt_self();
    v10 = [v9 currentDevice];
    [v10 userInterfaceIdiom];

    v11 = [v9 currentDevice];
    [v11 userInterfaceIdiom];

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = v36;
    v21 = v34;
    v18 = v39;
    v19 = v38;
    v33 = v35;
    v32 = v37;
    type metadata accessor for FavoriteColorPickerView.Model(0);
    sub_100016780(&qword_100075138, type metadata accessor for FavoriteColorPickerView.Model, &unk_100052018);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = 0;
    v13 = 0;
    if (v28 > 1)
    {
      StateObject.wrappedValue.getter();
      v12 = ObservedObject.init(wrappedValue:)();
      v13 = v14;
    }

    *&v24 = sub_100016778;
    *(&v24 + 1) = v8;
    *&v25 = v21;
    BYTE8(v25) = v33;
    *&v26 = v20;
    BYTE8(v26) = v32;
    *&v27 = v19;
    *(&v27 + 1) = v18;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100008A40(&v24, v23, &qword_100075140, &qword_100050360);
    v15 = v29;
    *a2 = v28;
    *(a2 + 16) = v15;
    v16 = v31;
    *(a2 + 32) = v30;
    *(a2 + 48) = v16;
    *(a2 + 64) = v12;
    *(a2 + 72) = v13;
  }

  else
  {
    sub_100008A40(&v40, &v28, &qword_1000750F8, &qword_1000502F0);
    sub_1000155E8(v5, v4);
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000146EC(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for FavoriteColorPickerView.Model(0);
  sub_100016780(&qword_100075138, type metadata accessor for FavoriteColorPickerView.Model, &unk_100052018);
  StateObject.wrappedValue.getter();
  GeometryProxy.size.getter();
  v4 = *a1;
  v5 = a1[1];
  v19 = sub_1000167D0(*a1, v5, v6);
  type metadata accessor for ColorPickerState(0);
  sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v18 = EnvironmentObject.init()();
  v8 = v7;
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  sub_100030C10(_swiftEmptyArrayStorage);
  sub_100004944(&qword_100076330, &qword_100050368);
  State.init(wrappedValue:)();
  v12 = static Edge.Set.horizontal.getter();
  GeometryProxy.size.getter();
  sub_100016A48(v4, v5, v13);
  EdgeInsets.init(_all:)();
  *a2 = v18;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = 0;
}

uint64_t sub_1000148A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  LOBYTE(v11) = *(v1 + 48);
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = 0x4038000000000000;
  }

  else
  {
    v6 = 0x4036000000000000;
  }

  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v7 = sub_100004944(&qword_100075038, &qword_100050110);
  return sub_100012520(v9, a1 + *(v7 + 44));
}

uint64_t sub_100014A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_100014AFC@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100014B7C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100014C0C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100014C9C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100014D0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10006A610, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

double sub_100014D58(uint64_t a1)
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  result = 24.0;
  if (v2 != 6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    result = 16.0;
    if (v4)
    {
      return 20.0;
    }
  }

  return result;
}

unint64_t sub_100014E24()
{
  result = qword_100074DB8;
  if (!qword_100074DB8)
  {
    sub_100008B90(&qword_100074D90, &qword_10004FAD0);
    sub_100014EDC();
    sub_100008D7C(&qword_100074DD0, &qword_100074DD8, &qword_10004FAF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074DB8);
  }

  return result;
}

unint64_t sub_100014EDC()
{
  result = qword_100074DC0;
  if (!qword_100074DC0)
  {
    sub_100008B90(&qword_100074D88, &qword_10004FAC8);
    sub_100008D7C(&qword_100074DC8, &qword_100074D80, &qword_10004FAC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074DC0);
  }

  return result;
}

uint64_t sub_100014F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100074DA0, &qword_10004FAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ColorPickerContent(uint64_t a1)
{
  result = qword_100074E58;
  if (!qword_100074E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001515C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10001516C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100015190(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10001526C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100004944(&qword_100074910, &unk_10004EF60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001531C(uint64_t a1)
{
  sub_100005880(319);
  if (v1 <= 0x3F)
  {
    sub_1000153A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000153A0(uint64_t a1)
{
  if (!qword_100074988)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100074988);
    }
  }
}

unint64_t sub_10001540C()
{
  result = qword_100074E90;
  if (!qword_100074E90)
  {
    sub_100008B90(&qword_100074DE0, &qword_10004FB48);
    sub_100015498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074E90);
  }

  return result;
}

unint64_t sub_100015498()
{
  result = qword_100074E98;
  if (!qword_100074E98)
  {
    sub_100008B90(&qword_100074DA0, &qword_10004FAE0);
    sub_100008B90(&qword_100074D90, &qword_10004FAD0);
    type metadata accessor for ColorPickerConfiguration(255);
    sub_100014E24();
    sub_100016780(&qword_100074A50, type metadata accessor for ColorPickerConfiguration, &unk_100052C80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074E98);
  }

  return result;
}

unint64_t sub_1000155F8()
{
  result = qword_100074EC8;
  if (!qword_100074EC8)
  {
    sub_100008B90(&qword_100074EB8, &qword_10004FD40);
    sub_1000156B0();
    sub_100008D7C(&qword_100074EF0, &qword_100074EF8, &qword_10004FD58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074EC8);
  }

  return result;
}

unint64_t sub_1000156B0()
{
  result = qword_100074ED0;
  if (!qword_100074ED0)
  {
    sub_100008B90(&qword_100074ED8, &qword_10004FD50);
    sub_100016780(&qword_100074EE0, type metadata accessor for ColorSwatchPickerView, &unk_100051050);
    sub_10001576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074ED0);
  }

  return result;
}

unint64_t sub_10001576C()
{
  result = qword_100074EE8;
  if (!qword_100074EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074EE8);
  }

  return result;
}

unint64_t sub_1000157C0()
{
  result = qword_100074F00;
  if (!qword_100074F00)
  {
    sub_100008B90(&qword_100074EA8, &qword_10004FD30);
    sub_100008D7C(&qword_100074F08, &qword_100074F10, &qword_10004FD60, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100008D7C(&qword_100074F18, &qword_100074F20, &qword_10004FD68, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F00);
  }

  return result;
}

unint64_t sub_10001596C()
{
  result = qword_100074F70;
  if (!qword_100074F70)
  {
    sub_100008B90(&qword_100074F60, &qword_10004FE08);
    sub_100015A54(&qword_100074F78, &qword_100074F58, &qword_10004FE00, sub_100015AD8);
    sub_100016780(&qword_100074FA0, type metadata accessor for RGBAView, &unk_10004EF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F70);
  }

  return result;
}

uint64_t sub_100015A54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008B90(a2, a3);
    sub_1000155F8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015AD8()
{
  result = qword_100074F80;
  if (!qword_100074F80)
  {
    sub_100008B90(&qword_100074F40, &qword_10004FDE8);
    sub_100015B90();
    sub_100008D7C(&qword_100074EF0, &qword_100074EF8, &qword_10004FD58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F80);
  }

  return result;
}

unint64_t sub_100015B90()
{
  result = qword_100074F88;
  if (!qword_100074F88)
  {
    sub_100008B90(&qword_100074F90, &qword_10004FE18);
    sub_100015C1C();
    sub_10001576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F88);
  }

  return result;
}

unint64_t sub_100015C1C()
{
  result = qword_100074F98;
  if (!qword_100074F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074F98);
  }

  return result;
}

unint64_t sub_100015C7C()
{
  result = qword_100074FE0;
  if (!qword_100074FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074FE0);
  }

  return result;
}

unint64_t sub_100015CD0()
{
  result = qword_100074FE8;
  if (!qword_100074FE8)
  {
    sub_100008B90(&qword_100074FD8, &unk_10004FE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100074FE8);
  }

  return result;
}

__n128 sub_100015D64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100015D80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t sub_100015DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_100015E50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100015E64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_100015EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100015F78()
{
  sub_100008B90(&qword_100074FD0, &qword_10004FE88);
  type metadata accessor for SegmentedPickerStyle();
  sub_100008D7C(&qword_100074FF0, &qword_100074FD0, &qword_10004FE88, &protocol conformance descriptor for Picker<A, B, C>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001607C()
{
  result = qword_100075030;
  if (!qword_100075030)
  {
    sub_100008B90(&qword_100075010, &qword_1000500F8);
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075030);
  }

  return result;
}

uint64_t sub_10001614C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075040, &qword_100050118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161BC(uint64_t a1)
{
  v2 = sub_100004944(&qword_100075040, &qword_100050118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100016290()
{
  result = qword_100075080;
  if (!qword_100075080)
  {
    sub_100008B90(&qword_100075058, &qword_100050130);
    sub_100016780(&qword_100075088, type metadata accessor for ColorSlider, &unk_1000532EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075080);
  }

  return result;
}

uint64_t sub_100016344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000163AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100016414()
{
  result = qword_1000750B8;
  if (!qword_1000750B8)
  {
    sub_100008B90(&qword_100075098, &qword_100050268);
    sub_1000164A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750B8);
  }

  return result;
}

unint64_t sub_1000164A0()
{
  result = qword_1000750C0;
  if (!qword_1000750C0)
  {
    sub_100008B90(&qword_100075090, &qword_100050260);
    sub_100016558();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750C0);
  }

  return result;
}

unint64_t sub_100016558()
{
  result = qword_1000750C8;
  if (!qword_1000750C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000750C8);
  }

  return result;
}

unint64_t sub_1000165B8()
{
  result = qword_100075108;
  if (!qword_100075108)
  {
    sub_100008B90(&qword_1000750A8, &qword_100050278);
    sub_100016670();
    sub_100008D7C(&qword_100075118, &qword_1000750F0, &qword_1000502E8, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075108);
  }

  return result;
}

unint64_t sub_100016670()
{
  result = qword_100075110;
  if (!qword_100075110)
  {
    sub_100008B90(&qword_1000750A0, &qword_100050270);
    sub_100016414();
    sub_100016780(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075110);
  }

  return result;
}

uint64_t sub_10001672C()
{

  sub_1000155F0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100016780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000167D0(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 30.0;
  if (v16)
  {
    v7 = 28.0;
  }

  if (v6 == 6)
  {
    v8 = 42.0;
  }

  else
  {
    v8 = v7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = [v4 currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6)
  {
    v11 = 20.0;
  }

  else
  {
    v11 = 18.0;
    if (v15)
    {
      v11 = 16.0;
    }
  }

  v12 = 50.0;
  if (a3 > 50.0)
  {
    v12 = a3;
  }

  v13 = (v12 + v11) / (v8 + v11);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    type metadata accessor for ColorPickerState(a1);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (2 * v13 >= 16)
  {
    return 16;
  }

  else
  {
    return 2 * v13;
  }
}

uint64_t sub_100016A48(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v6 = objc_opt_self();
    v7 = [v6 currentDevice];
    [v7 userInterfaceIdiom];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = [v6 currentDevice];
    [v8 userInterfaceIdiom];

    return sub_1000167D0(a1, a2, a3);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100016780(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100016CB4()
{
  result = qword_100075168;
  if (!qword_100075168)
  {
    sub_100008B90(&qword_100075158, &qword_100050380);
    sub_100016D6C();
    sub_100008D7C(&qword_100075188, &qword_100075190, &qword_1000503C0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075168);
  }

  return result;
}

unint64_t sub_100016D6C()
{
  result = qword_100075170;
  if (!qword_100075170)
  {
    sub_100008B90(&qword_100075150, &qword_100050378);
    sub_100016DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075170);
  }

  return result;
}

unint64_t sub_100016DF8()
{
  result = qword_100075178;
  if (!qword_100075178)
  {
    sub_100008B90(&qword_100075148, &qword_100050370);
    sub_100008D7C(&qword_100075180, &qword_100075160, &qword_100050388, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075178);
  }

  return result;
}

unint64_t sub_100016EB4()
{
  result = qword_100075198;
  if (!qword_100075198)
  {
    sub_100008B90(&qword_1000751A0, &qword_1000503C8);
    sub_100008D7C(&qword_100075028, &qword_100075020, &qword_100050108, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10001607C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075198);
  }

  return result;
}

unint64_t sub_100016FB4()
{
  result = qword_1000751B8;
  if (!qword_1000751B8)
  {
    sub_100008B90(&qword_1000751C0, &qword_1000503D8);
    sub_100016CB4();
    sub_100016780(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000751B8);
  }

  return result;
}

id sub_100017094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [a1 setNumberOfPages:v6];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return [a1 setCurrentPage:v6];
  }

  return result;
}

id sub_1000172AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageControl.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100017360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000173B8@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for PageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV20ColorPickerUIService11PageControl11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000176A8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000176A8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000174F4(uint64_t a1)
{
  sub_1000176A8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100017520()
{
  result = qword_1000751F8;
  if (!qword_1000751F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000751F8);
  }

  return result;
}

id sub_10001758C()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  v1 = objc_opt_self();
  v2 = [v1 secondaryLabelColor];
  [v0 setPageIndicatorTintColor:v2];

  v3 = [v1 labelColor];
  [v0 setCurrentPageIndicatorTintColor:v3];

  [v0 setHidesForSinglePage:1];
  sub_100004944(&qword_100075200, &qword_1000505E0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v5 action:"valueChanged:" forControlEvents:4096];

  return v0;
}

unint64_t sub_1000176A8()
{
  result = qword_100075208;
  if (!qword_100075208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075208);
  }

  return result;
}

id sub_1000177D4(void *a1)
{
  v3 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_plusImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView;
  type metadata accessor for ShapeView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AddColorCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000178B0();
  }

  return v6;
}

void sub_1000178B0()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v0 contentView];
  v5 = objc_allocWithZone(UIColor);
  if (v3 == 6)
  {
    v6 = 0.58;
  }

  else
  {
    v6 = 0.85;
  }

  v7 = [v5 initWithRed:v6 green:v6 blue:v6 alpha:1.0];
  [v4 setBackgroundColor:v7];

  v8 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_plusImageView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 contentView];
  [v9 addSubview:v8];

  v10 = [v0 contentView];
  v11 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView];
  [v10 setMaskView:v11];

  v12 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:17.0];
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
  v14 = [v1 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    v16 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

    v13 = v16;
  }

  v34 = v12;
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v34];

  if (v18)
  {
    v19 = [v18 imageWithTintColor:v13 renderingMode:1];

    [v8 setImage:v19];
    v20 = [objc_opt_self() blackColor];
    v21 = [v11 layer];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    if (v20)
    {
      v23 = v22;
      v24 = [v20 CGColor];
      v22 = v23;
    }

    else
    {
      v24 = 0;
    }

    [v22 setFillColor:v24];

    v25 = objc_opt_self();
    sub_100004944(&qword_1000746F0, &qword_10004E888);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10004E490;
    v27 = [v0 centerXAnchor];
    v28 = [v8 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v0 centerYAnchor];
    v31 = [v8 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    sub_10000598C(0, &qword_100075248, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100017D8C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AddColorCell();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v0 bounds];
  Height = CGRectGetHeight(v9);
  if (Height < Width)
  {
    Width = Height;
  }

  v3 = *&v0[OBJC_IVAR____TtC20ColorPickerUIService12AddColorCell_maskShapeView];
  [v3 setFrame:{0.0, 0.0, Width, Width}];
  v4 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, Width, Width}];
  v5 = *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath];
  *&v3[OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath] = v4;
  v6 = v4;

  sub_1000367F8();
}

id sub_100017F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddColorCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017FF0()
{
  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

__n128 sub_1000180F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001810C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100018150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000181B4()
{
  sub_100004944(&qword_100075300, &qword_100050C20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004F930;
  v2 = *v0 * 255.0;
  v3 = lroundf(v2);
  *(v1 + 56) = &type metadata for Int;
  *(v1 + 64) = &protocol witness table for Int;
  *(v1 + 32) = v3;
  v4 = v0[1] * 255.0;
  v5 = lroundf(v4);
  *(v1 + 96) = &type metadata for Int;
  *(v1 + 104) = &protocol witness table for Int;
  *(v1 + 72) = v5;
  v6 = v0[2] * 255.0;
  v7 = lroundf(v6);
  *(v1 + 136) = &type metadata for Int;
  *(v1 + 144) = &protocol witness table for Int;
  *(v1 + 112) = v7;
  v8 = String.init(format:_:)();
  v10 = v9;
  sub_100004944(&qword_100075308, &qword_100050C28);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004E4A0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;

  print(_:separator:terminator:)();

  return v8;
}

void sub_100018314()
{
  v1 = &kCGColorSpaceDisplayP3;
  if (!*(v0 + 49))
  {
    v1 = &kCGColorSpaceSRGB;
  }

  v2 = CGColorSpaceCreateWithName(*v1);
  if (v2)
  {
    v3 = v2;
    sub_100004944(&qword_100076300, &qword_100051020);
    inited = swift_initStackObject();
    v5 = *v0;
    v6 = v0[1];
    *(inited + 16) = xmmword_100050620;
    *(inited + 32) = v5;
    *(inited + 48) = v6;
    v8 = inited;
    if ((v0[3] & 1) == 0)
    {
      sub_100019328(&v8, *(v0 + 5));
      inited = v8;
    }

    v7 = CGColorCreate(v3, (inited + 32));

    if (v7)
    {
      [objc_allocWithZone(UIColor) initWithCGColor:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10001840C()
{
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_100018564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100018604(uint64_t a1)
{
  v2 = sub_10001AF88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018640(uint64_t a1)
{
  v2 = sub_10001AF88();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001867C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000186C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100018710(void *a1, char a2)
{
  v3 = sub_100004944(&qword_1000752D8, &qword_100050A58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100008948(a1, a1[3]);
  sub_10001AF88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100018880()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000188F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100018938@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001A098(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_100018994(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((*(v1 + 49) & 1) == 0)
  {
    v17 = *(v1 + 49);
    v18 = *(v1 + 48);
    v16 = *(v1 + 40);
    Alpha = *(v1 + 24);
    v12 = *(v1 + 32);
    v14 = *(v1 + 8);
    v15 = *(v1 + 16);
    v13 = *v1;
    goto LABEL_7;
  }

  sub_100018314();
  v5 = v4;
  v6 = [v4 CGColor];

  v7 = UISCreateCachedColorTransform();
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = CGColorGetColorSpace(v6);
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  if (CGColorRef.components.getter())
  {
    CGColorTransformConvertColorComponents();

    Alpha = CGColorGetAlpha(v6);
    v12 = *(v2 + 32);

    v13 = sub_10001B2A0(0.0);
    v14 = sub_10001B2A0(0.0);
    v15 = sub_10001B2A0(0.0);
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_7:
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = Alpha;
    *(a1 + 32) = v12;
    *(a1 + 40) = v16;
    *(a1 + 48) = v18;
    *(a1 + 49) = v17;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100018B1C(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 49) == 1)
  {
    v4 = *(v1 + 49);
    v5 = *(v1 + 48);
    v6 = *(v1 + 40);
    Alpha = *(v1 + 24);
    v8 = *(v1 + 32);
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *v1;
LABEL_7:
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = Alpha;
    *(a1 + 32) = v8;
    *(a1 + 40) = v6;
    *(a1 + 48) = v5;
    *(a1 + 49) = v4;
    return;
  }

  sub_100018314();
  v13 = v12;
  v14 = [v12 CGColor];

  v15 = UISCreateCachedColorTransform();
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = CGColorGetColorSpace(v14);
  if (!v17)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  if (CGColorRef.components.getter())
  {
    CGColorTransformConvertColorComponents();

    Alpha = CGColorGetAlpha(v14);
    v8 = *(v2 + 32);

    v11 = sub_10001B2A0(0.0);
    v10 = sub_10001B2A0(0.0);
    v9 = sub_10001B2A0(0.0);
    v6 = 0;
    v5 = 1;
    v4 = 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_100018CC4()
{
  v1 = *v0;
  v2 = 114;
  v3 = 0x6A644174736F6F62;
  if (v1 != 5)
  {
    v3 = 0x617053726F6C6F63;
  }

  v4 = 97;
  if (v1 != 3)
  {
    v4 = 1852399975;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 103;
  if (v1 != 1)
  {
    v5 = 98;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100018D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001A258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100018DAC(uint64_t a1)
{
  v2 = sub_10001A7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018DE8(uint64_t a1)
{
  v2 = sub_10001A7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100018E24(void *a1)
{
  v3 = v1;
  v5 = sub_100004944(&qword_100075270, &qword_100050728);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100008948(a1, a1[3]);
  sub_10001A7C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = 0;
  sub_10001A8C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[1];
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[2];
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[3];
    v12 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[4];
    v12 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[5];
    v11 = *(v3 + 48);
    v12 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 49);
    v12 = 6;
    sub_10001A918();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10001910C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v0 + 24);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 32);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
  }

  Hasher._combine(_:)(*(v0 + 49));
}

Swift::Int sub_1000191E0()
{
  Hasher.init(_seed:)();
  sub_10001910C();
  return Hasher._finalize()();
}

Swift::Int sub_100019224(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10001910C();
  return Hasher._finalize()();
}

uint64_t sub_100019260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100019DF8(v5, v7) & 1;
}

double sub_1000192BC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10001A484(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100019328(uint64_t *a1, double a2)
{
  v5 = *v2;
  v4 = v2[1];
  if (*v2 > v4)
  {
    v6 = *v2;
  }

  else
  {
    v6 = v2[1];
  }

  v7 = v2[2];
  if (v6 > v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v2[2];
  }

  v9 = a2 + 1.0;
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (v8 > 0.0)
  {
    v11 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_100019C30(v11);
      v11 = result;
      v13 = *(result + 16);
      if (v13)
      {
LABEL_13:
        v14 = v10 / v8;
        *(v11 + 32) = v5 * (v10 / v8);
        if (v13 != 1)
        {
          *(v11 + 40) = v4 * v14;
          if (v13 >= 3)
          {
            v10 = v7 * v14;
LABEL_20:
            *(v11 + 48) = v10;
            *a1 = v11;
            return result;
          }

          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    result = sub_100019C30(v11);
    v11 = result;
    v15 = *(result + 16);
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v11 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(v11 + 16);
  if (!v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  *(v11 + 32) = v10;
  if (v15 == 1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v11 + 40) = v10;
  if (v15 >= 3)
  {
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10001944C()
{
  v1 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004944(&qword_100076300, &qword_100051020);
  inited = swift_initStackObject();
  v6 = *v0;
  v7 = *(v0 + 1);
  inited[1] = xmmword_100050620;
  inited[2] = v6;
  inited[3] = v7;
  v12 = inited;
  if ((v0[6] & 1) == 0)
  {
    sub_100019328(&v12, v0[5]);
    inited = v12;
  }

  v8 = &enum case for Color.RGBColorSpace.displayP3(_:);
  if (!*(v0 + 49))
  {
    v8 = &enum case for Color.RGBColorSpace.sRGB(_:);
  }

  result = (*(v2 + 104))(v4, *v8, v1);
  v10 = *(inited + 2);
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 != 3)
  {

    return Color.init(_:red:green:blue:opacity:)();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1000195E4(double a1)
{
  sub_100004944(&qword_100076300, &qword_100051020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100050620;
  v4 = *(v1 + 1);
  *(inited + 32) = *v1;
  *(inited + 40) = v4;
  v5 = *(v1 + 3);
  *(inited + 48) = *(v1 + 2);
  *(inited + 56) = v5;
  v16 = inited;
  if (*(v1 + 48))
  {
    v6 = &kCGColorSpaceDisplayP3;
    if (!*(v1 + 49))
    {
      v6 = &kCGColorSpaceSRGB;
    }

    v7 = CGColorSpaceCreateWithName(*v6);
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = v7;
    v1 = _UICreateBoostedRGBColor();

    if (v1)
    {
LABEL_16:

      return;
    }

    __break(1u);
  }

  v9 = *(v1 + 5);
  sub_100019328(&v16, v9);
  v10 = v16;
  if (v9 > 0.0)
  {
    sub_100019E94(v9, a1);
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v11 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 < 3)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = &kCGColorSpaceDisplayP3;
  if (!*(v1 + 49))
  {
    v12 = &kCGColorSpaceSRGB;
  }

  v13 = CGColorSpaceCreateWithName(*v12);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  v15 = _UICreateBoostedRGBColor();

  if (v15)
  {
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_10001979C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B030(*a1);
  *a2 = result;
  return result;
}

_OWORD *sub_1000197D4@<X0>(_OWORD *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, unint64_t a4@<D0>)
{
  v6 = v4[1];
  v25 = *v4;
  v26 = v6;
  v27 = v4[2];
  v28 = *(v4 + 24);
  if (result > 2u)
  {
    if (result == 3)
    {
      *(&v26 + 1) = a4;
    }

    else if (result == 4)
    {
      v27 = a4;
      LOBYTE(v28) = 1;
    }

    else
    {
      *(&v27 + 1) = a4;
      LOBYTE(v28) = 0;
    }

    goto LABEL_28;
  }

  v7 = result;
  swift_getKeyPath();
  if (a2)
  {
LABEL_27:

LABEL_28:
    v23 = v26;
    *a3 = v25;
    *(a3 + 16) = v23;
    *(a3 + 32) = v27;
    *(a3 + 48) = v28;
    return result;
  }

  if (v4[3])
  {
LABEL_26:
    v24 = a4;
    swift_setAtWritableKeyPath();
    goto LABEL_27;
  }

  v10 = *(v4 + 5);
  v11 = v4[1];
  v29 = *v4;
  v30 = v11;
  v31 = v4[2];
  v32 = *(v4 + 24);
  sub_100004944(&qword_100076300, &qword_100051020);
  result = swift_initStackObject();
  v12 = result;
  v13 = v29;
  v14 = v30;
  result[1] = xmmword_100050620;
  result[2] = v13;
  result[3] = v14;
  v24 = result;
  if ((v32 & 1) == 0)
  {
    result = sub_100019328(&v24, *(&v31 + 1));
    v12 = v24;
  }

  v15 = off_10006D418[v7];
  v16 = v15[2];
  if (v10 <= 0.0)
  {
    if (!v16)
    {
LABEL_25:

      LOBYTE(v28) = 1;
      v27 = 0x3FF0000000000000uLL;
      goto LABEL_26;
    }

LABEL_20:
    v21 = 0;
    while (v21 < v15[2])
    {
      v22 = *(v15 + v21 + 32);
      if (v22 > 2)
      {
        goto LABEL_34;
      }

      result = swift_getKeyPath();
      if (*(v12 + 2) <= v22)
      {
        goto LABEL_30;
      }

      ++v21;
      swift_setAtWritableKeyPath();

      if (v16 == v21)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v15 + 32);
  v18 = *(v12 + 2);
  if (v18 > v17)
  {
    v19 = v16[(v15 + 4) - 1];
    if (v18 <= v19)
    {
      goto LABEL_33;
    }

    v20 = *(v12 + v17 + 4);
    if (v20 <= *(v12 + v19 + 4))
    {
      v20 = *(v12 + v19 + 4);
    }

    if (v20 >= 1.0)
    {

      goto LABEL_26;
    }

    goto LABEL_20;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_100019A94(unsigned __int8 a1, char a2)
{
  if (a1 <= 2u)
  {
    if (a2)
    {
      sub_100004944(&qword_100076300, &qword_100051020);
      inited = swift_initStackObject();
      v5 = *v2;
      v6 = *(v2 + 1);
      inited[1] = xmmword_100050620;
      inited[2] = v5;
      inited[3] = v6;
      v12 = inited;
      if (v2[6])
      {
        v7 = 4;
      }

      else
      {
        sub_100019328(&v12, v2[5]);
        v7 = *(v12 + 2);
      }

      if (v7 > a1)
      {
LABEL_13:

        return;
      }
    }

    else
    {
      sub_100004944(&qword_100076300, &qword_100051020);
      v8 = swift_initStackObject();
      v9 = *v2;
      *(v8 + 16) = xmmword_10004F930;
      *(v8 + 32) = v9;
      *(v8 + 48) = v2[2];
      v12 = v8;
      v10 = 3;
      if ((v2[6] & 1) == 0)
      {
        v11 = v2[5];
        if (v11 < 0.0)
        {
          sub_100019328(&v12, v11);
          v10 = *(v12 + 2);
        }
      }

      if (v10 > a1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100019C44(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  [a1 _boost];
  v7 = v6;
  if (v6 <= 1.0)
  {
    v10 = [a1 CGColor];
LABEL_5:
    v11 = UISCreateCachedColorTransform();
    if (v11)
    {
      v12 = v11;
      v13 = CGColorGetColorSpace(v10);
      if (v13)
      {
        v14 = v13;
        if (CGColorRef.components.getter())
        {
          CGColorTransformConvertColorComponents();

          Alpha = CGColorGetAlpha(v10);

          *a3 = 0uLL;
          *(a3 + 16) = 0;
          *(a3 + 24) = Alpha;
          *(a3 + 32) = v7;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 49) = a2 & 1;
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = [a1 _standardDynamicRangeColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 CGColor];

    goto LABEL_5;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      return 0;
    }

    return (*(a1 + 49) ^ *(a2 + 49) ^ 1) & 1;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  return (*(a1 + 49) ^ *(a2 + 49) ^ 1) & 1;
}

uint64_t sub_100019EAC(uint64_t a1)
{
  type metadata accessor for CFString(0);
  sub_10000DB6C();
  if (static _CFObject.== infix(_:_:)() & 1) != 0 || (static _CFObject.== infix(_:_:)())
  {
    return 0;
  }

  v2 = static _CFObject.== infix(_:_:)();
  result = 1;
  if ((v2 & 1) == 0)
  {
    if (static _CFObject.== infix(_:_:)())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

double sub_100019F88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 CGColor];
  v5 = CGColorGetColorSpace(v4);

  if (v5)
  {
    v6 = CGColorSpaceCopyName(v5);
    if (v6)
    {
      v7 = v6;
      v8 = sub_100019EAC(v6);

      if (v8 != 2)
      {
        sub_100019C44(a1, v8 & 1, v11);

        goto LABEL_8;
      }
    }
  }

  if (qword_1000743E0 != -1)
  {
    swift_once();
  }

  sub_100019C44(a1, byte_10007B138, v11);
LABEL_8:
  v9 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v9;
  result = *&v12;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_10001A098(void *a1)
{
  v3 = sub_100004944(&qword_1000752C0, &qword_100050A50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100008948(a1, a1[3]);
  sub_10001AF88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000898C(a1);
  }

  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100019EAC(v7);

  if (v8 == 2)
  {
    sub_10001AFDC();
    swift_allocError();
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    return sub_10000898C(a1);
  }

  (*(v4 + 8))(v6, v3);
  sub_10000898C(a1);
  return v8 & 1;
}

uint64_t sub_10001A258(uint64_t a1, uint64_t a2)
{
  if (a1 == 114 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 103 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 97 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852399975 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6A644174736F6F62 && a2 == 0xEF746E656D747375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10001A484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004944(&qword_100075250, &qword_100050720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100008948(a1, a1[3]);
  sub_10001A7C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000898C(a1);
  }

  v21 = 0;
  sub_10001A81C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v19;
  v21 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v19;
  v21 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v21 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v19;
  v21 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v19;
  v21 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v19;
  v22 = v20;
  v21 = 6;
  sub_10001A870();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v19;
  v16 = v22;
  result = sub_10000898C(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 49) = v15;
  return result;
}

unint64_t sub_10001A7C8()
{
  result = qword_100075258;
  if (!qword_100075258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075258);
  }

  return result;
}

unint64_t sub_10001A81C()
{
  result = qword_100075260;
  if (!qword_100075260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075260);
  }

  return result;
}

unint64_t sub_10001A870()
{
  result = qword_100075268;
  if (!qword_100075268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075268);
  }

  return result;
}

unint64_t sub_10001A8C4()
{
  result = qword_100075278;
  if (!qword_100075278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075278);
  }

  return result;
}

unint64_t sub_10001A918()
{
  result = qword_100075280;
  if (!qword_100075280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SomeColor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SomeColor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}