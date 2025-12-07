char *sub_100302F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_10077C168 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_10077C190] = 0;
  *&v3[qword_10077C198] = 1;
  v3[qword_10077C1A0] = 1;
  *&v3[qword_10077C1A8] = 0;
  *&v3[qword_10077C1B0] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(UIPickerView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[qword_10077C170] = v5;
  v6 = objc_allocWithZone(UILabel);
  v7 = v5;
  v8 = [v6 init];
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x800000010067A990;
  v10._countAndFlagsBits = 0xD000000000000037;
  v10._object = 0x800000010067A9B0;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = String._bridgeToObjectiveC()();

  [v8 setText:v11];

  v12 = [objc_allocWithZone(UISwitch) init];
  *&v4[qword_10077C180] = v12;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D410;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v48 = v12;
  v44 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() containerStackViewWithAxis:0 arrangedSubviews:isa];

  v16 = v15;
  [v16 setLayoutMargins:{0.0, 8.0, 0.0, 8.0}];
  [v16 setLayoutMarginsRelativeArrangement:1];
  [v16 setPreservesSuperviewLayoutMargins:0];
  *&v4[qword_10077C178] = v16;
  v17 = v16;
  v18._countAndFlagsBits = 0xD000000000000050;
  v18._object = 0x8000000100681460;
  v19._object = 0x80000001006814C0;
  v20._countAndFlagsBits = 0xD000000000000201;
  v20._object = 0x80000001006814E0;
  v19._countAndFlagsBits = 0xD000000000000019;
  v21 = TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v22 = sub_1003058BC(v21._countAndFlagsBits, v21._object);

  sub_100305E50(v22);
  v23 = &v4[qword_10077C188];
  *v23 = v22;
  v23[1] = v24;
  if (a3)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithStyle:reuseIdentifier:", a1, v25, a2);

  v27 = v26;
  v28 = TTRIStaticTableViewBaseCell.containerView.getter();
  [v28 setAxis:1];

  [v7 setDelegate:v27];
  v29 = v48;
  [v48 addTarget:v27 action:"includePastDueSwitchAction:" forControlEvents:4096];

  v30 = TTRIStaticTableViewBaseCell.containerView.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10062D410;
  *(v31 + 32) = v7;
  *(v31 + 40) = v17;
  v32 = v7;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setArrangedSubviews:v33];

  v34 = qword_10077C170;
  result = [*&v27[qword_10077C170] numberOfComponents];
  v36 = &v27[qword_10077C188];
  v37 = *&v27[qword_10077C188 + 8];
  if (!*(v37 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v37 + 32) < result)
  {
    [*&v27[v34] selectRow:v27[qword_10077C190] inComponent:? animated:?];
  }

  result = [*&v27[v34] numberOfComponents];
  v38 = *(v36 + 1);
  if (*(v38 + 16) < 2uLL)
  {
    goto LABEL_17;
  }

  if (*(v38 + 40) < result)
  {
    v39 = *&v27[qword_10077C198];
    if (__OFSUB__(v39, 1))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    [*&v27[v34] selectRow:v39 - 1 inComponent:? animated:?];
  }

  result = [*&v27[v34] numberOfComponents];
  v40 = *(v36 + 1);
  if (*(v40 + 16) < 3uLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v40 + 48) >= result)
  {
    v41 = v32;
    v32 = v48;
    v29 = v44;
    v42 = v17;
    v17 = v27;
  }

  else
  {
    [*&v27[v34] selectRow:v27[qword_10077C1A0] inComponent:? animated:?];
    v41 = v27;
    v42 = v44;
  }

  return v27;
}

char *sub_1003034CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100302F4C(a3, a4, v6);
}

void sub_10030354C()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_10077C168 + 8] = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003035C8(char *a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Substring.lowercased()();
  static CharacterSet.whitespaces.getter();
  sub_10007D420();
  v5 = StringProtocol.trimmingCharacters(in:)();
  v7 = v6;
  (*(v2 + 8))(v4, v1);

  v8 = v5 == 0x6F69746365726964 && v7 == 0xE90000000000006ELL;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
  }

  else
  {
    v10 = v5 == 0x647574696E67616DLL && v7 == 0xE900000000000065;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      v11 = v5 == 0x7374696E75 && v7 == 0xE500000000000000;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 2;
      }

      else
      {
        if (qword_1007671A8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100003E30(v12, qword_10077C0D0);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v20._countAndFlagsBits = v16;
          *v15 = 136315138;
          v17 = sub_100004060(v5, v7, &v20._countAndFlagsBits);

          *(v15 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER elmenents must be one of 'direction', 'magnitude', 'units', but the actual content is %s", v15, 0xCu);
          sub_100004758(v16);
        }

        else
        {
        }

        v9 = 3;
      }
    }
  }

  *v19 = v9;
}

id sub_100303900(id result)
{
  v2 = qword_10077C190;
  if (*(v1 + qword_10077C190) != (result & 1))
  {
    v3 = *(v1 + qword_10077C170);
    result = [v3 numberOfComponents];
    v4 = *(v1 + qword_10077C188 + 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 32) < result)
      {
        [v3 selectRow:*(v1 + v2) inComponent:? animated:?];
      }

      v5 = *(v1 + v2);
      v6 = *(v1 + qword_10077C178);

      return [v6 setHidden:v5];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1003039D0(id result)
{
  v2 = qword_10077C1A0;
  if (*(v1 + qword_10077C1A0) == result)
  {
    return result;
  }

  v3 = *(v1 + qword_10077C170);
  result = [v3 numberOfComponents];
  v4 = *(v1 + qword_10077C188 + 8);
  if (v4[2] < 3uLL)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4[6] < result)
  {
    result = [v3 selectRow:*(v1 + v2) inComponent:? animated:?];
    if (v4[2] < 2uLL)
    {
      goto LABEL_12;
    }
  }

  result = [v3 reloadComponent:v4[5]];
  if (!v4[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = [v3 reloadComponent:v4[4]];
  if (*(v1 + qword_10077C198) >= 1000)
  {

    return sub_100302E48(0x3E7);
  }

  return result;
}

id sub_100303AE0()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16))
  {
    if (*(v3 + 32) >= result)
    {
      return 0;
    }

    else
    {
      return ([v1 selectedRowInComponent:?] == 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100303B60()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + 40) >= result)
  {
    return 1;
  }

  v4 = [v1 selectedRowInComponent:?];
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    __break(1u);
    return 1;
  }

  return result;
}

int64_t sub_100303BE4()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16) < 3uLL)
  {
    __break(1u);
  }

  else if (*(v3 + 48) >= result)
  {
    return 1;
  }

  else
  {
    result = [v1 selectedRowInComponent:?];
    if (result >= 5)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void sub_100303C68()
{
  v1 = v0;
  [*(v0 + qword_10077C170) frame];
  v2 = CGRectGetWidth(v16) + -46.0;
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v3 = 23.0;
  v4 = static UIFont.roundedSystemFont(ofSize:weight:)();
  sub_100303E5C(v4, v5);
  v7 = v6;

  v14 = v7;
  sub_100058000(&qword_10077C398, &qword_10063A6F0);
  sub_10000E188(&qword_10077C3A0, &qword_10077C398, &qword_10063A6F0, &protocol conformance descriptor for [A]);
  sub_100306440();
  Sequence<>.sum()();
  if (v2 < v15)
  {
    do
    {

      v8 = static UIFont.roundedSystemFont(ofSize:weight:)();

      v4 = v8;
      sub_100303E5C(v4, v9);
      v7 = v10;

      Sequence<>.sum()();
      v3 = v3 + -1.0;
    }

    while (v14 >= v2 && v3 > 12.0 && v2 < v14);
  }

  v13 = *(v1 + qword_10077C1A8);
  *(v1 + qword_10077C1A8) = v4;

  *(v1 + qword_10077C1B0) = v7;
}

void sub_100303E5C(uint64_t a1, __n128 a2)
{
  v61 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v5 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = [objc_allocWithZone(UILabel) init];
  [v54 setFont:a1];
  v56 = objc_opt_self();
  v11 = 0;
  v12 = 0;
  v45 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  v55 = *(v5 + 104);
  v58 = v5 + 104;
  v44 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  v49 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:);
  v53 = (v3 + 104);
  v51 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:);
  v52 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:);
  v13 = (v8 + 8);
  v14 = 0.0;
  v48 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:);
  v15 = 0.0;
  v16 = 0.0;
  v50 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:);
  do
  {
    v17 = 0;
    v46 = v11;
    v18 = v45;
    if (*(&off_100712968 + v12 + 32))
    {
      v18 = v44;
    }

    v62 = v18;
    do
    {
      v19 = 0;
      v20 = *(&off_100712990 + v17 + 4);
      v47 = v17 + 1;
      do
      {
        v55(v7, v62, v59);
        (*v53)(v60);
        v21 = v7;
        REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
        _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO32dateOptionRelativeRangeDirectionySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
        v22 = String._bridgeToObjectiveC()();

        v23 = v54;
        [v54 setText:v22];

        v24 = v23;
        [v24 intrinsicContentSize];
        v26 = v25;
        v27 = [objc_allocWithZone(NSNumber) initWithInteger:v20];
        v28 = [v56 localizedStringFromNumber:v27 numberStyle:1];

        if (!v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = String._bridgeToObjectiveC()();
        }

        ++v19;
        v29 = ceil(v26);
        [v24 setText:v28];

        [v24 intrinsicContentSize];
        v31 = ceil(v30);
        _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO28dateOptionRelativeRangeUnitsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
        v32 = String._bridgeToObjectiveC()();

        [v24 setText:v32];

        [v24 intrinsicContentSize];
        v34 = v33;

        v35 = ceil(v34);
        (*v13)(v10, v57);
        if (v29 > v16)
        {
          v16 = v29;
        }

        if (v31 > v15)
        {
          v15 = v31;
        }

        if (v35 > v14)
        {
          v14 = v35;
        }

        v7 = v21;
      }

      while (v19 != 5);
      v17 = v47;
    }

    while (v47 != 5);
    v11 = 1;
    v12 = &_mh_execute_header.magic + 1;
  }

  while ((v46 & 1) == 0);
  sub_100058000(&qword_10077C3B0, &qword_10063A6F8);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062F800;
  *(v36 + 32) = 0;
  v37 = v36 + 32;
  *(v36 + 40) = 0;
  *(v36 + 48) = 0;
  v38 = *(v43 + qword_10077C188 + 8);
  v39 = v38[2];
  if (!v39)
  {
    __break(1u);
    goto LABEL_26;
  }

  v40 = v38[4];
  if (v40 > 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v37 + 8 * v40) = v16;
  if (v39 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = v38[5];
  if (v41 > 2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v37 + 8 * v41) = v15;
  if (v39 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = v38[6];

  if (v42 <= 2)
  {
    *(v37 + 8 * v42) = v14;
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_100304444(__n128 a1)
{
  v2 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v19 = *(v1 + qword_10077C190);
  v20 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v19)
  {
    v20 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v9 + 104))(v11, *v20, v8, v16);
  (*(v5 + 104))(v7, **(&off_10071F9D8 + *(v1 + qword_10077C1A0)), v4);
  if ((v19 & 1) == 0)
  {
    [*(v1 + qword_10077C180) isOn];
  }

  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  sub_100302550(v18, v21);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_100302C64(v23);
    v25 = *(v24 + qword_10077C0E8);
    if (v25)
    {
      v26 = *(v24 + qword_10077C0E8 + 8);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      (*(v32 + 16))(v31, v14, v33);

      v25(v27);
      sub_10008E7F0(v25, v26);
      swift_unknownObjectRelease();
      sub_1003063E4(v27);
      return (*(v28 + 8))(v14, v29);
    }

    else
    {
      (*(v32 + 8))(v14, v33);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003047E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100304444(v5);

  return sub_100004758(v7);
}

double sub_100304848()
{
  sub_10003B788(v0 + qword_10077C168);

  return result;
}

double sub_1003048EC(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077C168);

  return result;
}

void sub_1003049A4(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = qword_10077C1B0;
  v7 = *&a1[qword_10077C1B0];
  v8 = *(v7 + 16);
  v9 = a1;
  if (v8 <= 2)
  {
    sub_100303C68();
    v7 = *&a1[v6];
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > a4)
  {

    return;
  }

  __break(1u);
}

id sub_100304A58(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10077C1A8;
  if (!*(v1 + qword_10077C1A8))
  {
    sub_100303C68();
  }

  v5 = [*(v1 + qword_10077C170) effectiveUserInterfaceLayoutDirection];
  v6 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v7 = static UIColor.ttrLabelColor.getter();
  [v6 setTextColor:v7];

  [v6 setFont:*(v2 + v4)];
  v8 = 1;
  if (!a1)
  {
    v8 = 2 * (v5 != 1);
  }

  if (a1 == 2)
  {
    v9 = 2 * (v5 == 1);
  }

  else
  {
    v9 = v8;
  }

  [v6 setTextAlignment:v9];
  return v6;
}

void sub_100304B6C(unint64_t a1, unint64_t a2)
{
  v4 = sub_100058000(&qword_10077C388, &qword_10063A6E0);
  __chkstk_darwin(v4 - 8);
  v55 = &v51 - v5;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v51 - v9;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_100058000(&qword_10077C390, &qword_10063A6E8);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  v29 = __chkstk_darwin(v28);
  v31 = &v51 - v30;
  if (a2 > 2)
  {
    goto LABEL_7;
  }

  v32 = *(v60 + qword_10077C188);
  if (*(v32 + 16) <= a2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v33 = *(v32 + a2 + 32);
  if (!v33)
  {
LABEL_7:
    if (a1 == 1)
    {
      v38 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
    }

    else
    {
      if (a1)
      {
        (*(v22 + 56))(v20, 1, 1, v21, v29);
        v39 = &qword_10077C390;
        v40 = &qword_10063A6E8;
        v41 = v20;
LABEL_20:
        sub_1000079B4(v41, v39, v40);
        return;
      }

      v38 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
    }

    (*(v22 + 104))(v20, *v38, v21, v29);
    (*(v22 + 56))(v20, 0, 1, v21);
    (*(v22 + 32))(v31, v20, v21);
    (*(v22 + 16))(v27, v31, v21);
    (*(v58 + 104))(v12, **(&off_10071F9D8 + *(v60 + qword_10077C1A0)), v59);
    REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO32dateOptionRelativeRangeDirectionySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
    (*(v56 + 8))(v17, v57);
    (*(v22 + 8))(v31, v21);
    return;
  }

  if (v33 == 1)
  {
    v34 = objc_opt_self();
    if (!__OFADD__(a1, 1))
    {
      v35 = v34;
      v36 = [objc_allocWithZone(NSNumber) initWithInteger:a1 + 1];
      v37 = [v35 localizedStringFromNumber:v36 numberStyle:1];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }

    goto LABEL_22;
  }

  if (a1 > 4)
  {
    v50 = v55;
    (*(v58 + 56))(v55, 1, 1, v59, v29);
    v39 = &qword_10077C388;
    v40 = &qword_10063A6E0;
    v41 = v50;
    goto LABEL_20;
  }

  v43 = v58;
  v42 = v59;
  v44 = v55;
  (*(v58 + 104))(v55, **(&off_10071F9D8 + a1), v59, v29);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = v54;
  (*(v43 + 32))(v54, v44, v42);
  v46 = v60;
  v47 = *(v60 + qword_10077C190);
  v48 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v47)
  {
    v48 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v22 + 104))(v24, *v48, v21);
  (*(v43 + 16))(v53, v45, v42);
  if ((v47 & 1) == 0)
  {
    [*(v46 + qword_10077C180) isOn];
  }

  v49 = v52;
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO28dateOptionRelativeRangeUnitsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
  (*(v56 + 8))(v49, v57);
  (*(v43 + 8))(v45, v42);
}

id sub_10030525C(void *a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, void *a6)
{
  if (a6 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = a6;
    v14 = a3;
    v15 = a1;
  }

  else
  {
    v16 = a6;
    v17 = a3;
    v18 = a1;
    v12 = sub_100304A58(a5);
  }

  sub_100304B6C(a4, a5);
  v19 = String._bridgeToObjectiveC()();

  [v12 setText:v19];

  return v12;
}

void sub_100305354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100306048();
}

uint64_t sub_1003053E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_100305450(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1003054B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_100305518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_10030557C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1003055E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_10030568C(uint64_t a1)
{
  result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10030575C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_100305790()
{
  result = qword_10077C368;
  if (!qword_10077C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C368);
  }

  return result;
}

unint64_t sub_100305828@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV14HashtagOptionsO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100305868()
{
  result = qword_10077C380;
  if (!qword_10077C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C380);
  }

  return result;
}

char *sub_1003058BC(uint64_t a1, unint64_t a2)
{
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_10007D420();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = _swiftEmptyArrayStorage;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v45 = *(v7 - 3);
      v46 = v10;
      v47 = v9;
      sub_1003035C8(&v44);
      v11 = v44;
      if (v44 != 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100548184(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100548184((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v8[v13 + 32] = v11;
      }

      ++v6;
      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_12:

  if (*(v8 + 2) != 3)
  {

    if (qword_1007671A8 == -1)
    {
LABEL_33:
      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_10077C0D0);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v45 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100004060(a1, a2, &v45);
        _os_log_impl(&_mh_execute_header, v26, v27, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER needs exactly three elements separated by the '-' character, but the actual content is %s", v28, 0xCu);
        sub_100004758(v29);
      }

      return &off_100712908;
    }

LABEL_56:
    swift_once();
    goto LABEL_33;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v8 + 32;
LABEL_14:
  v19 = v17;
  do
  {
    v17 = v19 + 1;
    v20 = v19 == 2;
    if (v18[v19])
    {
      if (v18[v19] != 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v19 == 2)
      {
LABEL_36:
        if ((v15 & 1) == 0)
        {
LABEL_43:

          if (qword_1007671A8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100003E30(v34, qword_10077C0D0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'magnitude' but does not", v37, 2u);
          }

          return &off_1007128B8;
        }

        goto LABEL_37;
      }

      v21 = -2 - v19;
      v22 = &v8[v19 + 33];
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v20 = v21 == -3;
        if (v24)
        {
          break;
        }

        if (--v21 == -4)
        {
          goto LABEL_36;
        }
      }

      if (v23 != 1)
      {
        v17 = -v21;
        v16 = 1;
LABEL_28:
        v14 = 1;
        if (!v20)
        {
          goto LABEL_14;
        }

        if (v16)
        {
          if (v15)
          {
            return v8;
          }

          goto LABEL_43;
        }

        goto LABEL_50;
      }

      v17 = -v21;
      v16 = 1;
    }

    v15 = 1;
    v19 = v17;
  }

  while (!v20);
  if ((v16 & 1) == 0)
  {
LABEL_50:

    if (qword_1007671A8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_10077C0D0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'direction' but does not", v42, 2u);
    }

    return &off_1007128E0;
  }

LABEL_37:
  if ((v14 & 1) == 0)
  {

    if (qword_1007671A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_10077C0D0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'units' but does not", v33, 2u);
    }

    return &off_100712890;
  }

  return v8;
}

double sub_100305E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    while (*(v3 + v2))
    {
      if (v1 == ++v2)
      {
        return result;
      }
    }

    v4 = 0;
    while (*(v3 + v4) != 1)
    {
      if (v1 == ++v4)
      {
        return result;
      }
    }

    v5 = 0;
    while (*(v3 + v5) != 2)
    {
      if (v1 == ++v5)
      {
        return result;
      }
    }

    sub_100058000(&unk_10076B9F0, &qword_10062FD18);
    v6 = swift_allocObject();
    *&result = 3;
    *(v6 + 16) = xmmword_10062F800;
    *(v6 + 32) = v2;
    *(v6 + 40) = v4;
    *(v6 + 48) = v5;
  }

  return result;
}

void sub_100305F38()
{
  *(v0 + qword_10077C168 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_10077C190) = 0;
  *(v0 + qword_10077C198) = 1;
  *(v0 + qword_10077C1A0) = 1;
  *(v0 + qword_10077C1A8) = 0;
  *(v0 + qword_10077C1B0) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV14HashtagOptionsO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100306004(unint64_t result)
{
  if (result > 2)
  {
    return 2;
  }

  v2 = *(v1 + qword_10077C188);
  if (*(v2 + 16) > result)
  {
    return qword_10063A7C0[*(v2 + result + 32)];
  }

  __break(1u);
  return result;
}

uint64_t sub_100306048()
{
  v1 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v1 - 8);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = sub_100303AE0();
  v18 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v8 + 104))(v10, *v18, v7);
  sub_100303B60();
  v19 = sub_100303BE4();
  (*(v4 + 104))(v6, **(&off_10071F9D8 + v19), v3);
  if ((*(v0 + qword_10077C190) & 1) == 0)
  {
    [*(v0 + qword_10077C180) isOn];
  }

  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  sub_100302550(v16, v20);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_100302C64(v22);
    v24 = *(v23 + qword_10077C0E8);
    if (v24)
    {
      v25 = *(v23 + qword_10077C0E8 + 8);
      v26 = v28;
      v27 = v29;
      (*(v11 + 16))(v28, v13, v29);

      v24(v26);
      sub_10008E7F0(v24, v25);
      swift_unknownObjectRelease();
      sub_1003063E4(v26);
      return (*(v11 + 8))(v13, v27);
    }

    else
    {
      (*(v11 + 8))(v13, v29);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003063E4(uint64_t a1)
{
  v2 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100306440()
{
  result = qword_10077C3A8;
  if (!qword_10077C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C3A8);
  }

  return result;
}

unint64_t sub_1003064A8()
{
  result = qword_10077C3B8;
  if (!qword_10077C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C3B8);
  }

  return result;
}

uint64_t type metadata accessor for TTRListAppearanceBadgeGridView(uint64_t a1)
{
  result = qword_10077C3D0;
  if (!qword_10077C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1003065B8(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_10077C3C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_10077C3C8];
  *v11 = 0;
  v11[8] = 1;
  v17.receiver = a1;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a2, a3, a4, a5);
  v13 = objc_allocWithZone(UITapGestureRecognizer);
  v14 = v12;
  v15 = [v13 initWithTarget:v14 action:"didTap:"];
  [v14 addGestureRecognizer:v15];

  return v14;
}

id sub_1003066C4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_10077C3C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[qword_10077C3C8];
  *v4 = 0;
  v4[8] = 1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v5)
  {
    v6 = objc_allocWithZone(UITapGestureRecognizer);
    v7 = v5;
    v8 = [v6 initWithTarget:v7 action:"didTap:"];
    [v7 addGestureRecognizer:v8];

    a1 = v8;
  }

  return v5;
}

void *sub_1003067E4()
{
  v0 = dispatch thunk of TTRListAppearanceGridView.arrangedSubviews.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for TTRListBadgeView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v3);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

void sub_100306954(void *a1)
{
  [a1 locationInView:v1];
  v11 = [v1 hitTest:0 withEvent:?];
  if (v11)
  {
    v2 = sub_1003067E4();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_23:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v11 isDescendantOfView:v7];

      if (v9)
      {

        sub_100306AF0(v6);

        return;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_100306AF0(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + qword_10077C3C8;
  if ((*(v1 + qword_10077C3C8 + 8) & 1) != 0 || *v4 != a1)
  {
    *v4 = a1;
    *(v4 + 8) = 0;
    v5 = sub_1003067E4();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
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
            goto LABEL_14;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v8;
        if (v11 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    v12 = sub_1003067E4();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_28;
    }

    for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v15;
        if (v18 == j)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_29:
  }

  v19 = v2 + qword_10077C3C0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v2, a1, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100306D44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100306954(v4);
}

void sub_100306DAC(void *a1)
{
  v2 = sub_1003067E4();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [a1 isDescendantOfView:v7];

    if (v9)
    {

      sub_100306AF0(v6);
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_20;
    }
  }
}

void *sub_100307038@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X5>, unint64_t *a4@<X6>, uint64_t (*a5)(uint64_t)@<X7>, void *a6@<X8>, uint64_t a7)
{
  v11 = *a1;
  a3(0);
  sub_100307440(a4, a5, a7);
  v12 = v11;
  v13 = a2;
  result = TTRUndoableEditing.init(changeItem:undoManager:)();
  *a6 = v15;
  return result;
}

uint64_t sub_100307104@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a3[3];
  v8 = a3[4];
  v9 = sub_10000C36C(a3, v7);
  result = sub_100307340(v6, a2, v9, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_100307340(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = a4;
  v19[4] = a5;
  v9 = sub_1000317B8(v19);
  (*(*(a4 - 8) + 16))(v9, a3, a4);
  sub_10000B0D8(v19, v18);
  v10 = type metadata accessor for TTRUserDefaults();
  v11 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for TTRListDetailCreationEditor();
  v12 = swift_allocObject();
  v16 = v10;
  v17 = &protocol witness table for TTRUserDefaults;
  *&v15 = v11;
  *(v12 + 16) = a1;
  sub_100005FD0(v18, v12 + 32);
  *(v12 + 24) = a2;
  sub_100005FD0(&v15, v12 + 72);
  v13 = a2;

  sub_100004758(v19);
  return v12;
}

uint64_t sub_100307440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100307488(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 adjustedContentInset];
  v12 = v11;
  v14 = v13;
  v15 = [v2 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v16;

  sub_10030C4A0(&v18);

  sub_100068328(v4, v6, v8, v10, v12, v14);
  __chkstk_darwin(v17);
  sub_100058000(&unk_10078A370, &unk_10063AB80);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10000E188(&unk_100771B00, &unk_10078A370, &unk_10063AB80, &protocol conformance descriptor for [A]);
  Sequence.firstMap<A>(_:)();
}

void sub_1003076AC(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>, CGFloat a8@<D2>, CGFloat a9@<D3>)
{
  v58 = a4;
  v59 = a3;
  v17 = type metadata accessor for UICellConfigurationState();
  v57 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for IndexPath();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [a2 cellForItemAtIndexPath:isa];

  if (!v23)
  {
    v34 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v34 - 8) + 56))(a5, 1, 1, v34);
    return;
  }

  [v23 bounds];
  [a2 convertRect:v23 fromCoordinateSpace:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v62.origin.x = a6;
  v62.origin.y = a7;
  v62.size.width = a8;
  v62.size.height = a9;
  MinY = CGRectGetMinY(v62);
  v63.origin.x = v25;
  v63.origin.y = v27;
  v63.size.width = v29;
  v63.size.height = v31;
  if (CGRectGetHeight(v63) <= 0.0)
  {
    goto LABEL_9;
  }

  v64.origin.x = v25;
  v64.origin.y = v27;
  v64.size.width = v29;
  v64.size.height = v31;
  if (MinY <= CGRectGetMinY(v64))
  {
    v67.origin.x = v25;
    v67.origin.y = v27;
    v67.size.width = v29;
    v67.size.height = v31;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    v65.origin.x = v25;
    v65.origin.y = v27;
    v65.size.width = v29;
    v65.size.height = v31;
    Height = 0.0;
    if (CGRectGetMaxY(v65) > MinY)
    {
      v66.origin.x = v25;
      v66.origin.y = v27;
      v66.size.width = v29;
      v66.size.height = v31;
      Height = CGRectGetMaxY(v66) - MinY;
    }
  }

  v68.origin.x = v25;
  v68.origin.y = v27;
  v68.size.width = v29;
  v68.size.height = v31;
  if (CGRectGetHeight(v68) * 0.5 > Height)
  {
LABEL_9:
    v35 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v35 - 8) + 56))(a5, 1, 1, v35);

    return;
  }

  v55 = v9;
  v56 = a5;
  IndexPath.section.getter();
  IndexPath.init(row:section:)();
  v36 = UICollectionElementKindSectionHeader;
  v37 = IndexPath._bridgeToObjectiveC()().super.isa;
  v38 = [a2 supplementaryViewForElementKind:v36 atIndexPath:v37];

  if (!v38)
  {
    v39 = 0;
    goto LABEL_20;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39 || (v54 = v38, v40 = [v39 _bridgedConfigurationState], static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(), v40, LOBYTE(v40) = UICellConfigurationState.isPinned.getter(), (*(v57 + 8))(v19, v17), (v40 & 1) == 0))
  {

    goto LABEL_20;
  }

  [v39 bounds];
  [a2 convertRect:v39 fromCoordinateSpace:?];
  MaxY = CGRectGetMaxY(v69);
  v70.origin.x = v25;
  v70.origin.y = v27;
  v70.size.width = v29;
  v70.size.height = v31;
  if (CGRectGetHeight(v70) > 0.0)
  {
    v71.origin.x = v25;
    v71.origin.y = v27;
    v71.size.width = v29;
    v71.size.height = v31;
    v42 = MaxY > CGRectGetMinY(v71);
    v43 = v54;
    v44 = v25;
    v45 = v27;
    v46 = v29;
    v47 = v31;
    if (v42)
    {
      v48 = CGRectGetMaxY(*&v44);
      v49 = 0.0;
      v50 = v56;
      if (v48 > MaxY)
      {
        v72.origin.x = v25;
        v72.origin.y = v27;
        v72.size.width = v29;
        v72.size.height = v31;
        v49 = CGRectGetMaxY(v72) - MaxY;
      }
    }

    else
    {
      v49 = CGRectGetHeight(*&v44);
      v50 = v56;
    }

    v73.origin.x = v25;
    v73.origin.y = v27;
    v73.size.width = v29;
    v73.size.height = v31;
    v51 = CGRectGetHeight(v73);

    if (v51 * 0.5 > v49)
    {
      goto LABEL_23;
    }

LABEL_20:
    v59(a1);

    (*(v60 + 8))(v21, v61);
    return;
  }

  v43 = v54;

  v50 = v56;
LABEL_23:
  (*(v60 + 8))(v21, v61);

  v52 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
}

double sub_100307C80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = TTRICollectionViewCollapsedStateChangeContext.shouldUpdateView.getter();

    if (v3)
    {
      TTRICollectionViewCollapsedStateChangeContext.prefersAnimated.getter();
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCollapsedStatesChange(animated:)();
    }

    else
    {
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.invalidateCachedCollapsedStates()();
    }
  }

  return result;
}

double sub_100307D28(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCellPresentationStateChange()();
  }

  return result;
}

double sub_100307D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100307E28(a6, a7, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100307E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v90 = a3;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListPostponeType();
  v89 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRReminderSwipeAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v22 = v5[9];
    v23 = v5[11];
    v24 = sub_10000C36C(v5 + 6, v22);
    v92 = v22;
    v93 = v23;
    v25 = sub_1000317B8(v91);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    v26 = *(v23 + 88);

    v26(a2, sub_10030C468, v21, v22, v23);

    return sub_100004758(v91);
  }

  v84 = a2;
  v85 = a5;
  v27 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    v28 = v5[9];
    v29 = v5[11];
    v30 = sub_10000C36C(v5 + 6, v28);
    v92 = v28;
    v93 = v29;
    v31 = sub_1000317B8(v91);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    (*(v29 + 128))(v84, v90, v27, v85, v28, v29);
    return sub_100004758(v91);
  }

  v33 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    v34 = v5[9];
    v35 = v5[11];
    v36 = sub_10000C36C(v5 + 6, v34);
    v92 = v34;
    v93 = v35;
    v37 = sub_1000317B8(v91);
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    v38 = (*(v35 + 96))(1, v84, v34, v35);
LABEL_10:
    v43 = v38;
LABEL_11:
    sub_100004758(v91);
    return v33(v43 & 1);
  }

  if (v20 == enum case for TTRReminderSwipeAction.unflag(_:))
  {
    v39 = v5[9];
    v40 = v5[11];
    v41 = sub_10000C36C(v5 + 6, v39);
    v92 = v39;
    v93 = v40;
    v42 = sub_1000317B8(v91);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    v38 = (*(v40 + 96))(0, v84, v39, v40);
    goto LABEL_10;
  }

  if (v20 == enum case for TTRReminderSwipeAction.indent(_:))
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v44 = type metadata accessor for TTRRemindersListViewModel.Item();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D400;
    (*(v45 + 16))(v47 + v46, v84, v44);
    v48 = v5[9];
    v49 = v5[11];
    v50 = sub_10000C36C(v5 + 6, v48);
    v92 = v48;
    v93 = v49;
    v51 = sub_1000317B8(v91);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    v52 = (*(v49 + 744))(v47, v48, v49);
LABEL_17:
    v43 = v52;

    goto LABEL_11;
  }

  if (v20 == enum case for TTRReminderSwipeAction.outdent(_:))
  {
    sub_100058000(&qword_100772150, &unk_100635D00);
    v53 = type metadata accessor for TTRRemindersListViewModel.Item();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10062D400;
    (*(v54 + 16))(v56 + v55, v84, v53);
    v57 = v5[9];
    v58 = v5[11];
    v59 = sub_10000C36C(v5 + 6, v57);
    v92 = v57;
    v93 = v58;
    v60 = sub_1000317B8(v91);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v52 = (*(v58 + 752))(v56, v57, v58);
    goto LABEL_17;
  }

  if (v20 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:))
  {
    v61 = &enum case for TTRRemindersListPostponeType.tomorrow(_:);
LABEL_26:
    v63 = v89;
    (*(v89 + 104))(v14, *v61, v12);
    v64 = v5[9];
    v65 = v5[11];
    v66 = sub_10000C36C(v5 + 6, v64);
    v92 = v64;
    v93 = v65;
    v67 = sub_1000317B8(v91);
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    (*(v65 + 712))(v84, v14, v33, v85, v64, v65);
    (*(v63 + 8))(v14, v12);
    return sub_100004758(v91);
  }

  if (v20 == enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) || v20 == enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:))
  {
    v61 = &enum case for TTRRemindersListPostponeType.weekend(_:);
    goto LABEL_26;
  }

  if (v20 == enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:))
  {
    v68 = v86;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v69 = v5[9];
    v70 = v5[11];
    v71 = sub_10000C36C(v5 + 6, v69);
    v92 = v69;
    v93 = v70;
    v72 = sub_1000317B8(v91);
    (*(*(v69 - 8) + 16))(v72, v71, v69);
    (*(v70 + 160))(v84, v68, a4, v85, v69, v70);
    (*(v87 + 8))(v68, v88);
    return sub_100004758(v91);
  }

  v74 = v84;
  v73 = v85;
  if (v20 == enum case for TTRReminderSwipeAction.permanentlyHide(_:))
  {
    v75 = v86;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v76 = v5[9];
    v77 = v5[11];
    v78 = sub_10000C36C(v5 + 6, v76);
    v92 = v76;
    v93 = v77;
    v79 = sub_1000317B8(v91);
    (*(*(v76 - 8) + 16))(v79, v78, v76);
    (*(v77 + 264))(v74, v75, v33, v73, v76, v77);
    (*(v87 + 8))(v75, v88);
    return sub_100004758(v91);
  }

  if (v20 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
  {
    v80 = v5[9];
    v81 = v5[11];
    v82 = sub_10000C36C(v5 + 6, v80);
    v92 = v80;
    v93 = v81;
    v83 = sub_1000317B8(v91);
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    (*(v81 + 272))(v74, v90, v33, v73, v80, v81);
    return sub_100004758(v91);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003088C0()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_100308944@<X0>(uint64_t *a1@<X8>)
{
  v29 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStates.getter();
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 208))(ObjectType, v12);
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();
  v18 = *(v3 + 16);
  v19 = v8;
  v20 = v29;
  v18(v5, v19, v29);
  *a1 = v14;
  a1[1] = v16;
  a1[2] = v17;
  v21 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  v18(a1 + *(v21 + 24), v5, v20);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v22 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v24 = v23;
  v31 = swift_getObjectType();
  v32 = *(v24 + 8);
  v30 = v22;
  TTRRemindersListItemSeparatorStates.init(remindersListTree:)();
  swift_unknownObjectRelease();
  v25 = *(v3 + 8);
  v25(v5, v20);
  return (v25)(v28, v20);
}

void sub_100308B80()
{
  v1 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[9];
  v5 = v0[11];
  v6 = sub_10000C36C(v0 + 6, v4);
  ObjectType = v4;
  v14 = v5;
  v7 = sub_1000317B8(v12);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  (*(v5 + 496))(v4, v5);
  sub_100004758(v12);
  LOBYTE(v4) = TTRModuleState.modelReceived.getter();

  if (v4)
  {
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.presentationTree.getter();
    swift_unknownObjectRetain();
    sub_10030C380(v3);
    swift_getObjectType();
    v8 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v10 = v9;
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v14 = *(v10 + 8);
    v12[0] = v8;
    type metadata accessor for TTRRemindersListViewModel.Item();
    sub_10030DBC0(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    swift_unknownObjectRetain();
    TTRICollectionViewCollapsedStatesPresenterCapability.pruneNonExistentItemIDs<A>(with:)();
    swift_unknownObjectRelease();
    sub_100004758(v12);
  }
}

uint64_t sub_100308D6C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStates.getter();
  v7 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  return (*(v4 + 40))(a2 + *(v7 + 24), v6, v3);
}

void sub_100308E4C(uint64_t a1, uint64_t a2)
{
  v3 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();

  *(a2 + 16) = v3;
}

uint64_t sub_100308EB4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView(0);
    sub_10051B2C8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100308F4C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    v9 = 1;
LABEL_27:
    (*(v4 + 8))(v6, v3);
    return v9;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
  {
    v10 = v1[9];
    v11 = v2[10];
    sub_10000C36C(v2 + 6, v2[9]);
    sub_10045E42C(v10, v11);
    swift_getObjectType();
    v12 = dispatch thunk of TTRRemindersListTreeContentsQueryable.numberOfSubtasks(of:)();
    swift_unknownObjectRelease();
    v9 = v12 > 0;
    goto LABEL_27;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    v9 = 0;
    goto LABEL_27;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v7 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100309194@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v26 = v39[9];
      v27 = v39[10];
      sub_10000C36C(v39 + 6, v26);
      (*(v27 + 16))(v26, v27);
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 144))(ObjectType, v29);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v33 = *(*(v32 - 8) + 104);
      if (v43)
      {
        v33(v44, enum case for TTRICollectionViewCellSelectionOption.selectItem(_:), v32);
        return (*(v15 + 8))(v17, v14);
      }

      a1 = (v15 + 8);
      if (v31)
      {
        v38 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_39:
        v33(v44, *v38, v32);
        return (*a1)(v17, v14);
      }
    }

    else
    {
      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v15 + 8))(v17, v14);
        goto LABEL_21;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_2:
        (*(v15 + 8))(v17, v14);
        goto LABEL_3;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v38 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
    goto LABEL_39;
  }

  (*(v15 + 96))(v17, v14);
  (*(v11 + 32))(v13, v17, v10);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v40 + 8))(v9, v7);
  v24 = v41;
  v23 = v42;
  v25 = (*(v41 + 88))(v6, v42);
  if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {
      (*(v24 + 8))(v6, v23);
      if ((v43 & 1) == 0)
      {
        v34 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v11 + 8))(v13, v10);
        if (v34)
        {
          v19 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
          goto LABEL_4;
        }

LABEL_3:
        v19 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_4:
        v20 = *v19;
        v21 = type metadata accessor for TTRICollectionViewCellSelectionOption();
        return (*(*(v21 - 8) + 104))(v44, v20, v21);
      }
    }

    else
    {
      if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_7;
      }

      if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_3;
  }

LABEL_7:
  (*(v11 + 8))(v13, v10);
  (*(v24 + 8))(v6, v23);
LABEL_21:
  v36 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  if (v43)
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  else
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
  }

  return (*(*(v36 - 8) + 104))(v44, *v37, v36);
}

id sub_100309860(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v1[9];
  v7 = v1[10];
  sub_10000C36C(v1 + 6, v6);
  (*(v7 + 8))(v6, v7);
  v8 = sub_10025D4DC(a1);

  v18 = v1;
  v19 = a1;
  sub_100399264(sub_10030DC08, v17, v8);
  v10 = v9;

  v20 = v10;
  (*(v4 + 16))(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v13 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  sub_100081654(v13);
  sub_10030C418();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() configurationWithActions:isa];

  return v15;
}

uint64_t sub_100309A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  a2[3] = v4;
  a2[4] = &protocol witness table for TTRRemindersListViewModel.Item;
  v5 = sub_1000317B8(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, a1, v4);
}

void sub_100309B14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v21 = a3;
  v20[1] = a1;
  v20[2] = a2;
  v24 = a6;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20[0] = v7;
  v8 = *(v7 - 8);
  v20[3] = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSwipeAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, a1, v11);
  (*(v8 + 16))(v10, v21, v7);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v12 + 32))(v18 + v16, v14, v11);
  (*(v8 + 32))(v18 + v17, v10, v20[0]);

  v19 = TTRReminderSwipeAction.makeContextualAction(handler:)();

  *v24 = v19;
}

uint64_t sub_100309D78(uint64_t a1)
{
  sub_100058000(&qword_10077C860, &qword_100644F30);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860, &qword_100644F30, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>);
  return dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1;
}

uint64_t sub_100309E08(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  if ((sub_100308F4C(a1) & 1) != 0 && (sub_100058000(&qword_10077C860, &qword_100644F30), sub_10000E188(&unk_10078A2E0, &qword_10077C860, &qword_100644F30, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>), (dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1) == 0))
  {
    sub_100058000(&qword_100772760, &unk_100634AE0);
    v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10062D400;
    (*(v3 + 16))(v8 + v7, v5, v2);
    v10[1] = v8;
    sub_100058000(&unk_1007821D0, &unk_100631C10);
    sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
    dispatch thunk of TTRICollectionViewItemCollapsedStates.collapse<A>(_:)();

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.performPendingUpdatesImmediately()();
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v6;
}

id sub_10030A044(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 80);
  sub_10000C36C((*v1 + 48), v4);
  (*(v5 + 8))(v4, v5);
  v7 = sub_10025C730(a1, v6);

  v11[2] = v3;
  v11[3] = a1;
  sub_100399264(sub_10030C3DC, v11, v7);

  sub_10030C418();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() configurationWithActions:isa];

  return v9;
}

id sub_10030A14C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if (![Strong isViewLoaded])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
  if (result)
  {
    result = [result hasActiveDrag];
    if (result)
    {
      v4 = 1;
LABEL_10:
      swift_unknownObjectRelease();
      return v4;
    }

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = v5;
      v4 = [v6 hasActiveDrop];

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030A200@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100058000(&qword_10076E8D0, &unk_10063ABA0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
    v16 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    goto LABEL_7;
  }

  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  (*(v15 + 8))(v5, v14);
  v17 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = (*(v18 + 88))(v8, v17);
  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
  {
    goto LABEL_7;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    v20 = type metadata accessor for TTRIEditableSectionsPresentationTreeMaker();
    v21 = &off_1007168A0;
LABEL_8:
    result = swift_allocObject();
    a1[3] = v20;
    a1[4] = v21;
    *a1 = result;
    return result;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
LABEL_7:
    v20 = type metadata accessor for TTRIDefaultPresentationTreeMaker();
    v21 = &off_1007168C8;
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10030A518()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  v2 = v1;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10030A568()
{
  v0 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v37 = sub_100058000(&qword_10076E0C8, &qword_100631BE8);
  __chkstk_darwin(v37);
  v36 = &v29 - v6;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v40 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100058000(&qword_10077C868, &unk_10063AB90);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v29 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v10;
    v35 = v11;
    v33 = v9;
    TTRRemindersListTreeViewModelUpdateContext.shouldReload.getter();
    TTRRemindersListTreeViewModelUpdateContext.updatedItemIDs.getter();
    TTRRemindersListTreeViewModelUpdateContext.animated.getter();
    v16 = v42;
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsWithLazyViewModelUpdates:animated:)();

    type metadata accessor for TTRIRemindersListContentViewController_collectionView(0);
    sub_10051B2C8(v16);
    TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
    v17 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
    {
      (*(v39 + 8))(v42, v41);
      swift_unknownObjectRelease();
      return sub_1000079B4(v5, &qword_10076E0D0, &unk_100635D70);
    }

    else
    {
      v18 = *(v17 + 48);
      v20 = v36;
      v19 = v37;
      v30 = *(v37 + 48);
      v31 = v18;
      v21 = *(v35 + 32);
      v32 = v15;
      v22 = v34;
      v21(v36, v5);
      v23 = v38;
      v24 = *(v38 + 32);
      v24(&v20[v30], &v5[v31], v7);
      v25 = *(v19 + 48);
      (v21)(v40, v20, v22);
      v26 = &v20[v25];
      v27 = v33;
      v24(v33, v26, v7);
      (*(v23 + 16))(v2, v27, v7);
      (*(v23 + 56))(v2, 0, 1, v7);
      v28 = v40;
      sub_10051901C(v40, v2);
      swift_unknownObjectRelease();
      sub_1000079B4(v2, &unk_100781850, &unk_10063D2D0);
      (*(v23 + 8))(v27, v7);
      (*(v35 + 8))(v28, v22);
      return (*(v39 + 8))(v42, v41);
    }
  }

  return result;
}

uint64_t sub_10030AAA4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v11(v5, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_10038A3F8(v5);
    swift_unknownObjectRelease();
    v13 = *(v3 + 8);
    v13(v5, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_10030AC58(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    (*(v3 + 24))(v7 + v8, v5, v2);
    swift_endAccess();
    sub_10037D260();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10030ADA0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077C868, &unk_10063AB90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  sub_10030DBC0(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForUpdatedLazyViewModels(for:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView(0);
    sub_10051B2C8(v5);
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

char *sub_10030AFA0(void *a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10000C36C(a1, a1[3]);
  TTRRemindersListEditingState.editingItem.getter();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
    v10 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 8))(v4, v8);
    v10 = 0;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v11 - 8) + 56))(v7, v10, 1, v11);
  TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_10000C36C(a1, a1[3]);
    v14 = dispatch thunk of TTRRemindersListEditingState.isEditingTable.getter() & 1;
    sub_10037C41C();
    if (v14 != [v13 isEditing])
    {
      UIViewController.endFirstResponderEditing()();
      v15 = type metadata accessor for TTRIShowRemindersViewController(0);
      v16.receiver = v13;
      v16.super_class = v15;
      objc_msgSendSuper2(&v16, "setEditing:animated:", v14, 1);
      [*&v13[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:v14 animated:1];
      sub_10037DD70(1, 1);
      sub_10037FFC0();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030B250(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775700, &unk_10062E390);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100058000(&qword_10076E0B8, &qword_100631BE0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v21 = v5;
    v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
    swift_beginAccess();
    v15 = *(v9 + 48);
    sub_10000794C(v13 + v14, v11, &qword_100775700, &unk_10062E390);
    v22 = a1;
    sub_10000794C(a1, &v11[v15], &qword_100775700, &unk_10062E390);
    v16 = *(v3 + 48);
    if (v16(v11, 1, v2) == 1)
    {
      if (v16(&v11[v15], 1, v2) == 1)
      {
        swift_unknownObjectRelease();
        return sub_1000079B4(v11, &qword_100775700, &unk_10062E390);
      }
    }

    else
    {
      sub_10000794C(v11, v8, &qword_100775700, &unk_10062E390);
      if (v16(&v11[v15], 1, v2) != 1)
      {
        v17 = &v11[v15];
        v18 = v21;
        (*(v3 + 32))(v21, v17, v2);
        sub_10030DBC0(&qword_10076E0C0, &type metadata accessor for TTRSharedWithYouHighlight, &protocol conformance descriptor for TTRSharedWithYouHighlight);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *(v3 + 8);
        v20(v18, v2);
        v20(v8, v2);
        sub_1000079B4(v11, &qword_100775700, &unk_10062E390);
        if (v19)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }

      (*(v3 + 8))(v8, v2);
    }

    sub_1000079B4(v11, &qword_10076E0B8, &qword_100631BE0);
LABEL_8:
    swift_beginAccess();
    sub_10013EC94(v22, v13 + v14);
    swift_endAccess();
    sub_10037C41C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030B5F0(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_10000794C(a1, v4, &qword_100772140, &qword_10062D9F0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100772140, &qword_10062D9F0);
    v10 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 8))(v4, v8);
    v10 = 0;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v11 - 8) + 56))(v7, v10, 1, v11);
  return TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.setter();
}

uint64_t sub_10030B7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1005127AC(v5);
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      v8 = TTRIRemindersListReminderCell_collectionView.viewForAnchoringPopover.getter();
      if (v8)
      {
        v9 = v8;
        static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

        swift_unknownObjectRelease();
        v10 = type metadata accessor for TTRIPopoverAnchor();
        return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      }
    }

    swift_unknownObjectRelease();
    v14 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    v12 = type metadata accessor for TTRIPopoverAnchor();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_10030B9E4(uint64_t a1)
{
  v1 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v2 + 104))(v4, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v1);
    v5 = TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = type metadata accessor for PromiseError();
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for PromiseError.cancelled(_:), v7);
    sub_100058000(&qword_1007845B0, &qword_10063D2C0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

id sub_10030BBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    result = [Strong isViewLoaded];
    if (result)
    {
      if (*&v7[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView])
      {
        __chkstk_darwin(result);
        v13[2] = v7;
        v13[3] = a1;
        v13[4] = a2;
        v10 = v9;
        sub_100307488(sub_10030DB88, v13);

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, 1, 1, v11);
}

void sub_10030BD14(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore;
    swift_beginAccess();
    sub_10030DB18(v4, v6 + v9);
    swift_endAccess();
    v10 = [v6 viewIfLoaded];
    [v10 setNeedsLayout];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10030BEC4()
{
  sub_100058000(&qword_10076E0B0, &unk_100631BD0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&unk_100784560, &qword_10076E0B0, &unk_100631BD0, &protocol conformance descriptor for [A]);
  sub_10030DBC0(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();
  return TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.setter();
}

uint64_t sub_10030BFC8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10051901C(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C034(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100519328();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C08C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005194C8(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C0E8(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = sub_10051A0F4(a1, a2 & 1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&unk_10078A2F0, &unk_100631BC0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10030C204(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100519960(a1, a2, a3 & 1);
    v7 = v6;
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = type metadata accessor for PromiseError();
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PromiseError.cancelled(_:), v9);
    sub_100058000(&qword_1007845B0, &qword_10063D2C0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10030C380(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListPresentationTree(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10030C418()
{
  result = qword_10076BC40;
  if (!qword_10076BC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BC40);
  }

  return result;
}

uint64_t sub_10030C468(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return (*(v1 + 16))(0);
  }

  return result;
}

void sub_10030C4A0(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF30C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10030C548(v5);
  *a1 = v3;
}

void sub_10030C548(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10030C938(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10030C674(0, v2, 1, a1);
  }
}

void sub_10030C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10030C938(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1000ED7BC(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_10030D360(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000ED7BC(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1000ED730(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100546DD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100546DD8((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_10030D360(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1000ED7BC(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1000ED730(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_10030D360(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1000ED7D0(&v54, &v53, &v52);
}

uint64_t sub_10030D954()
{
  v0 = sub_100058000(&qword_10077C868, &unk_10063AB90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForMoves()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView(0);
    sub_10051B2C8(v3);
    swift_unknownObjectRelease();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_10030DA7C(void (*a1)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
    if (v3)
    {
      v4 = v3;
      a1();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10030DB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030DBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030DC44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100309A8C(v4, a1);
}

uint64_t sub_10030DCB4()
{
  v1 = type metadata accessor for TTRReminderSwipeAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

double sub_10030DE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_100307D94(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10030DF60()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10030E070(uint64_t a1)
{
  v1 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v5 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v2 + 104))(v4, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v1);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10030E1F8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a2(0);
  (*(*(v9 - 8) + 104))(a5, v8, v9);
  v10 = *a3;
  v11 = a4(0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a5, v10, v11);
}

uint64_t sub_10030E2BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v7 - 8) + 104))(a3, v6, v7);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = sub_100313CF4;
  v9[1] = v8;
}

uint64_t sub_10030E3A0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];

    *a2 = v5;
    v6 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v14 = *(v7 - 8);
    (*(v14 + 104))(a2, v6, v7);
    v8 = *(v14 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t sub_10030E4C8@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v23 = 0;
  v56 = v24;
  swift_storeEnumTagMultiPayload();
  v61 = v2;

  TTRRemindersListTreeViewModel.parent(of:)();

  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v20, 1, v25) == 1)
  {
    goto LABEL_2;
  }

  v52 = a2;
  v29 = (*(v26 + 88))(v20, v25);
  if (v29 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    (*(v26 + 96))(v20, v25);
    v31 = v57;
    v30 = v58;
    v57[4](v17, v20, v58);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v61 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v32 = sub_100145ED8(v11);

      (*(v59 + 8))(v11, v60);
      (v31[1])(v17, v30);
      v33 = v52;
      if (v32)
      {
        sub_10014AA9C(v23);
        *v33 = v32;
        v34 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v35 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v35 - 8) + 104))(v33, v34, v35);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      (*(v59 + 8))(v11, v60);
      (v31[1])(v17, v30);
      v33 = v52;
    }

    v27 = v23;
    v28 = v33;
    return sub_10014AA38(v27, v28);
  }

  if (v29 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v26 + 96))(v20, v25);
    v17 = v57;
    v26 = v58;
    v57[4](v14, v20, v58);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v61 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v36 = sub_100145ED8(v8);

      (*(v59 + 8))(v8, v60);
      (*(v17 + 1))(v14, v26);
      v37 = v52;
      if (v36)
      {
        sub_10014AA9C(v23);
        *v37 = v36;
        v38 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v39 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v39 - 8) + 104))(v37, v38, v39);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_27:
      v27 = v23;
      v28 = v37;
      return sub_10014AA38(v27, v28);
    }

LABEL_26:
    (*(v59 + 8))(v8, v60);
    (*(v17 + 1))(v14, v26);
    v37 = v52;
    goto LABEL_27;
  }

  if (v29 != enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    if (v29 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v29 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v29 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v29 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v29 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v29 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      (*(v26 + 8))(v20, v25);
      a2 = v52;
    }

    else
    {
      a2 = v52;
      if (v29 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v29 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_2:
    v27 = v23;
    v28 = a2;
    return sub_10014AA38(v27, v28);
  }

  (*(v26 + 96))(v20, v25);
  v42 = v53;
  v41 = v54;
  v43 = v20;
  v44 = v55;
  (*(v54 + 32))(v53, v43, v55);
  v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v46 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  v47 = v61;
  swift_beginAccess();
  v48 = *(v47 + v46);

  v49 = sub_10013F404(v45, v48);

  (*(v41 + 8))(v42, v44);
  v27 = v23;
  if (v49)
  {
    sub_10014AA9C(v23);
    v50 = v52;
    *v52 = v49;
    v50[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v28 = v52;
  return sub_10014AA38(v27, v28);
}

double sub_10030ECB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_100310CD8();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

BOOL sub_10030EE74(void *a1, __n128 a2)
{
  v3 = sub_100310CD8();
  if (sub_1004B91A4())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v3, ObjectType, v5);
    swift_unknownObjectRelease();
    v7 = [a1 objectID];
    v8 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v9 = *(v8 + 16);

    return v9 == 0;
  }

  else
  {

    return 0;
  }
}

double sub_10030EF48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  sub_100310CD8();
  sub_1004B7628(a1, a2, x8_0);

  return result;
}

double sub_10030EFA4@<D0>(uint64_t a1@<X0>, uint64_t *x8_0@<X8>)
{
  sub_100310CD8();
  sub_1004B7834(a1, x8_0);

  return result;
}

uint64_t sub_10030F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), __n128 a4)
{
  v7 = sub_100310CD8();
  v9 = sub_1004B91A4();
  if (v9)
  {
    v10 = v8;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v7, ObjectType, v10);
    swift_unknownObjectRelease();

    v9 = a3(a1, 1, a2, v7);
  }

  else
  {
  }

  return v9;
}

uint64_t sub_10030F13C@<X0>(void *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListTreeViewModel.parent(of:)();

  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);

    TTRRemindersListTreeViewModel.parent(of:)();

    if (v17(v9, 1, v13) == 1)
    {
      (*(v14 + 8))(v16, v13);
      sub_1000079B4(v9, &qword_100772140, &qword_10062D9F0);
    }

    else if ((*(v14 + 88))(v9, v13) == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      (*(v14 + 96))(v9, v13);
      v19 = v33;
      v18 = v34;
      v20 = v31;
      (*(v33 + 32))();
      v21 = v32;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if (*(v2 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
      {

        v22 = sub_100145ED8(v21);

        (*(v35 + 8))(v21, v36);
        (*(v19 + 8))(v20, v18);
        (*(v14 + 8))(v16, v13);
        if (v22)
        {
          v23 = v37;
          *v37 = v22;
          v24 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
          v25 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
          v26 = *(v25 - 8);
          (*(v26 + 104))(v23, v24, v25);
          return (*(v26 + 56))(v23, 0, 1, v25);
        }
      }

      else
      {
        (*(v35 + 8))(v21, v36);
        (*(v19 + 8))(v20, v18);
        (*(v14 + 8))(v16, v13);
      }
    }

    else
    {
      v28 = *(v14 + 8);
      v28(v16, v13);
      v28(v9, v13);
    }
  }

  v29 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  return (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
}

uint64_t sub_10030F6C0(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v80 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v85 = *(v5 - 1);
  v86 = v5;
  __chkstk_darwin(v5);
  v81 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v69 - v8);
  v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v88 = &v69 - v12;
  v13 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v13 - 8);
  v83 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v84 = v2;

  TTRRemindersListTreeViewModel.parent(of:)();

  v25 = *(v19 + 48);
  if (v25(v17, 1, v18) == 1)
  {
    v26 = v17;
    return sub_1000079B4(v26, &qword_100772140, &qword_10062D9F0);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v21, v24, v18);
  v77 = *(v19 + 88);
  if (v77(v21, v18) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v43 = *(v19 + 8);
    v43(v24, v18);
    return (v43)(v21, v18);
  }

  v75 = v24;
  v69 = v3;
  v28 = *(v19 + 96);
  v73 = v19 + 96;
  v72 = v28;
  v28(v21, v18);
  v74 = v19;
  v29 = v89;
  v30 = *(v89 + 32);
  v76 = v18;
  v31 = v88;
  v32 = v21;
  v33 = v9;
  v34 = v87;
  v71 = v89 + 32;
  v70 = v30;
  v30(v88, v32, v87);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v35 = v85;
  v36 = v86;
  if ((*(v85 + 88))(v33, v86) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v29 + 8))(v31, v34);
    (*(v74 + 8))(v75, v76);
    return (*(v35 + 8))(v33, v36);
  }

  v37 = v34;
  v38 = v74;
  (*(v35 + 96))(v33, v36);
  v39 = *v33;

  v40 = v83;
  v41 = v75;
  TTRRemindersListTreeViewModel.parent(of:)();

  v42 = v76;
  if (v25(v40, 1, v76) == 1)
  {

    (*(v89 + 8))(v88, v37);
    (*(v38 + 8))(v41, v42);
    v26 = v40;
    return sub_1000079B4(v26, &qword_100772140, &qword_10062D9F0);
  }

  v44 = v77(v40, v42);
  v45 = v38;
  v47 = v88;
  v46 = v89;
  if (v44 != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {

    (*(v46 + 8))(v47, v37);
    v64 = *(v45 + 8);
    v64(v41, v42);
    return (v64)(v40, v42);
  }

  v72(v40, v42);
  v48 = v82;
  v70(v82, v40, v37);
  v49 = v81;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (!*(v84 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    (*(v85 + 8))(v49, v86);
LABEL_18:
    v65 = *(v46 + 8);
    v66 = v87;
    v65(v48, v87);
    v65(v47, v66);
    return (*(v45 + 8))(v41, v76);
  }

  v50 = sub_100145ED8(v49);

  (*(v85 + 8))(v49, v86);
  if (!v50)
  {

    v41 = v75;
    goto LABEL_18;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v51 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();
  swift_unknownObjectRelease();
  if (v51)
  {
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    v53 = v78;
    v54 = TTRReminderEditor.changeItem.getter();
    v55 = [v54 objectID];

    *(inited + 32) = v55;
    sub_10001D5F8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for TTRListEditor();
    v91 = v51;
    v86 = v51;
    v56 = TTRReminderEditor.changeItem.getter();
    v57 = [v56 saveRequest];

    v90 = v53;
    type metadata accessor for TTRReminderEditor();
    sub_100313CAC(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
    TTRUndoableEditing.undoManager.getter();
    TTROneshotEditing.init(item:saveRequest:undoManager:)();
    v58 = v79;
    v59 = v80;
    *v79 = v39;
    v60 = v69;
    (*(v59 + 104))(v58, enum case for TTRSectionID.sectioned(_:), v69);
    v61 = v39;
    TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

    (*(v59 + 8))(v58, v60);
    v62 = *(v89 + 8);
    v63 = v87;
    v62(v82, v87);
    v62(v47, v63);
  }

  else
  {

    v67 = *(v46 + 8);
    v68 = v87;
    v67(v48, v87);
    v67(v47, v68);
  }

  return (*(v45 + 8))(v75, v76);
}

uint64_t sub_10031011C()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.all(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_100310270()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100070538();
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.all(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50, &unk_10062DEA0);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50, &unk_10062DEA0);
  sub_100004758(v30);
  return v25;
}

uint64_t sub_100310698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v12, &qword_100772140, &qword_10062D9F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100772140, &qword_10062D9F0);
    v17 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    return (*(*(v17 - 8) + 56))(v39, 1, 1, v17);
  }

  v19 = v39;
  (*(v14 + 32))(v16, v12, v13);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v20 = (*(v7 + 88))(v9, v6);
  if (v20 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:))
  {
    (*(v7 + 96))(v9, v6);
    v21 = v36;
    v22 = v37;
    (*(v36 + 32))(v37, v9, v38);
    v23 = v32;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v35 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v24 = sub_100145ED8(v23);

      (*(v33 + 8))(v23, v34);
      v25 = v19;
      if (v24)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();

        swift_unknownObjectRelease();
        (*(v21 + 8))(v37, v38);
        (*(v14 + 8))(v16, v13);
        if (v26)
        {
          *v19 = v26;
          v27 = v19;
          v28 = enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:);
          v29 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
          v30 = *(v29 - 8);
          (*(v30 + 104))(v27, v28, v29);
          return (*(v30 + 56))(v27, 0, 1, v29);
        }

        goto LABEL_14;
      }
    }

    else
    {
      (*(v33 + 8))(v23, v34);
      v25 = v19;
    }

    (*(v21 + 8))(v22, v38);
    (*(v14 + 8))(v16, v13);
  }

  else if (v20 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    (*(v14 + 8))(v16, v13);
    (*(v7 + 8))(v9, v6);
    v25 = v19;
  }

  else
  {
    if (v20 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v14 + 8))(v16, v13);
    v25 = v19;
  }

LABEL_14:
  v31 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  return (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
}

uint64_t sub_100310CD8()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils;
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_100720150;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100310D74@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v6 - 8);
  v45 = v35 - v7;
  v8 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v8 - 8);
  v43 = v35 - v9;
  v40 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v49 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.all(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v26 = REMSmartListType.title.getter();
  v36 = v27;
  v37 = v26;
  v41 = static TTRListColors.SmartList.all.getter();
  v28 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v29 = *(*(v28 - 8) + 56);
  v42 = v17;
  v29(v17, 1, 1, v28);
  v44 = v1;
  swift_getObjectType();
  v30 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v38 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v39);
  v31 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v49, enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:), v40);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v50, &qword_1007693C0, &unk_100631DE0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v40) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v40) = 0;
  }

  LODWORD(v39) = v31 != 0;
  v35[3] = v30 != 0;
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v33 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

double sub_10031145C()
{

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_1003114AC()
{
  sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowAllRemindersViewModelSource(uint64_t a1)
{
  result = qword_10077C8C0;
  if (!qword_10077C8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031160C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v63 = &v59 - v7;
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v62 = &v59 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v65 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v20 = REMRemindersListDataView.ListsSectionsModel.completedRemindersCount.getter();
  v21 = v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_completedRemindersCount;
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  sub_100310D74(v19);
  v64 = v19;
  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  v23 = (*(v15 + 88))(v17, v14);
  v66 = a2;
  if (v23 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:) || v23 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    *(v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = 0;
LABEL_26:
    v44 = v62;
    v43 = v63;
    v45 = v61;

    v46 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v48 = v47;
    v70 = v47;
    v49 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
    __chkstk_darwin(v49);
    *(&v59 - 4) = v46;
    *(&v59 - 3) = v48;
    v50 = v64;
    *(&v59 - 2) = v3;
    *(&v59 - 1) = v50;
    sub_1003993A8(sub_100313A08, (&v59 - 6), v49);
    v52 = v51;

    v53 = v65;
    (*(v65 + 16))(v44, v50, v45);
    (*(v53 + 56))(v44, 0, 1, v45);
    v54 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v55 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v56 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v56 - 8) + 56))(v43, 1, 1, v56);
    v72[3] = v54;
    v72[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v72[0] = v55;
    sub_10000B0D8(v72, v71);
    v57 = swift_allocObject();
    *(v57 + 16) = v52;
    sub_100005FD0(v71, v57 + 24);
    *(v57 + 64) = v3;

    sub_100586238(1, v44, sub_10014A704, v57, v66, 0, v43);

    sub_1000079B4(v43, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v44, &unk_10078A380, &qword_10062DE60);

    sub_100004758(v72);
    return (*(v53 + 8))(v50, v45);
  }

  if (v23 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
    goto LABEL_31;
  }

  v24 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
  v25 = *(v24 + 16);
  if (!v25)
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_25:
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
    v42 = swift_allocObject();
    *(v42 + 64) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v42 + 128) = 0u;
    *(v42 + 144) = 0u;
    *(v42 + 96) = 0u;
    *(v42 + 112) = 0u;
    *(v42 + 64) = &off_10072ED30;
    swift_unknownObjectWeakAssign();
    *(v42 + 80) = v31;
    *(v42 + 88) = 0;
    *(v42 + 72) = v31;
    *(v42 + 40) = &_swiftEmptySetSingleton;
    *(v42 + 48) = 1;
    *(v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = v42;

    goto LABEL_26;
  }

  v60 = v3;
  v27 = *(v11 + 16);
  v26 = v11 + 16;
  v69 = v27;
  v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
  v59 = v24;
  v29 = v24 + v28;
  v68 = *(v26 + 56);
  v70 = v26;
  v30 = (v26 - 8);
  v31 = _swiftEmptyArrayStorage;
  v27(v13, v24 + v28, v10);
  while (1)
  {
    v32 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v30)(v13, v10);
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v31 = sub_100547DFC(isUniquelyReferenced_nonNull_native, v37, 1, v31);
      if (*(v32 + 16))
      {
LABEL_18:
        v38 = (v31[3] >> 1) - v31[2];
        type metadata accessor for REMRemindersListDataView.SectionLite();
        if (v38 < v33)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v39 = v31[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_30;
          }

          v31[2] = v41;
        }

        goto LABEL_7;
      }
    }

    if (v33)
    {
      goto LABEL_28;
    }

LABEL_7:
    v29 += v68;
    if (!--v25)
    {

      v3 = v60;
      goto LABEL_25;
    }

    v69(v13, v29, v10);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100311D7C@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v182 = a5;
  v181 = a4;
  v163 = a3;
  v162 = a2;
  v227 = a1;
  v142 = a6;
  v161 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v205 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v169 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_100058000(&qword_10076E8D8, &unk_100645250);
  __chkstk_darwin(v201);
  v232 = (&v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v200 = &v138 - v10;
  v199 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v206 = *(v199 - 8);
  __chkstk_darwin(v199);
  v204 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v231 = *(v229 - 8);
  __chkstk_darwin(v229);
  v230 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v13 - 8);
  v219 = &v138 - v14;
  v218 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v225 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = (&v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v143 = *(v209 - 8);
  __chkstk_darwin(v209);
  v198 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v208 = &v138 - v18;
  __chkstk_darwin(v19);
  v145 = &v138 - v20;
  v216 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v224 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v223 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&unk_10076B060, &unk_1006324D0);
  __chkstk_darwin(v23 - 8);
  v212 = &v138 - v24;
  v211 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v148 = *(v221 - 8);
  __chkstk_darwin(v221);
  v197 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v144 = &v138 - v28;
  v220 = type metadata accessor for TTRListColors.Color();
  v147 = *(v220 - 8);
  __chkstk_darwin(v220);
  v233 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v138 - v31;
  v228 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v146 = *(v228 - 8);
  __chkstk_darwin(v228);
  v159 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v138 - v35;
  __chkstk_darwin(v37);
  v39 = &v138 - v38;
  v40 = sub_100058000(&qword_10076E8E0, &unk_100631E00);
  v41 = v40 - 8;
  __chkstk_darwin(v40);
  v43 = (&v138 - v42);
  v44 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v138 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v227, v43, &qword_10076E8E0, &unk_100631E00);
  v48 = *v43;
  v49 = *(v41 + 56);
  v139 = v45;
  v50 = *(v45 + 32);
  v140 = v44;
  v50(v47, v43 + v49, v44);
  v162(v48);
  v51 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
  v196 = type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)();

  REMRemindersListDataView.ListsSectionsModel.List.listName.getter();
  v52 = v147;
  v53 = *(v147 + 16);
  v54 = v210;
  v207 = v32;
  v55 = v32;
  v56 = v220;
  v195 = v147 + 16;
  v194 = v53;
  v53(v210, v55, v220);
  v57 = *(v222 + 104);
  v193 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.listName(_:);
  v222 += 104;
  v192 = v57;
  v57(v54);
  v58 = *(v146 + 16);
  v141 = v39;
  v158 = v146 + 16;
  v157 = v58;
  v58(v36, v39, v228);
  v59 = *(v52 + 56);
  v191 = v52 + 56;
  v190 = v59;
  v59(v212, 1, 1, v56);
  v60 = *(v223 + 104);
  v223 += 104;
  v189 = v60;
  v60(v213, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v214);
  v61 = *(v224 + 104);
  v224 += 104;
  v188 = v61;
  v61(v215, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v216);
  v62 = v144;
  v63 = v229;
  v226 = v36;
  TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
  v64 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v65 = v217;
  *v217 = v64;
  v66 = *(v225 + 104);
  v156 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
  v225 += 104;
  v187 = v66;
  v66(v65);
  v67 = v148;
  v68 = *(v148 + 16);
  v69 = v219;
  v70 = v221;
  v186 = v148 + 16;
  v185 = v68;
  v68(v219, v62, v221);
  v71 = *(v67 + 56);
  v184 = v67 + 56;
  v183 = v71;
  v71(v69, 0, 1, v70);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v72 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
  v73 = v230;
  v227 = v47;
  REMRemindersListDataView.ListsSectionsModel.List.listType.getter();
  v74 = (v231[11])(v73, v63);
  if (v74 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:))
  {
    if ((TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v74 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:))
    {
      goto LABEL_9;
    }

    if (v74 != enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:))
    {
LABEL_25:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  type metadata accessor for TTRUserDefaults();
  v75 = static TTRUserDefaults.appUserDefaults.getter();
  v76 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v77 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

  if ((v77 & 1) != 0 && *(v181 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    v78 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    sub_100148FF8(v78, v79);
    v72 = v80;
  }

LABEL_9:
  v81 = *(v72 + 16);
  if (v81)
  {
    v234 = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v81, 0);
    v82 = v234;
    v182 = *(v72 + 16);
    v83 = 0;
    v179 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v84 = *(v179 - 8);
    v177 = v72 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v176 = v84 + 16;
    v178 = v84;
    v175 = v84 + 32;
    v174 = (v169 + 11);
    v173 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v155 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v172 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
    v171 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:);
    v154 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
    v153 = (v146 + 104);
    v152 = (v205 + 1);
    v170 = (v148 + 8);
    v151 = (v169 + 12);
    v150 = (v146 + 8);
    v149 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v205 = (v143 + 16);
    v169 = (v147 + 8);
    v168 = (v143 + 8);
    v167 = v206 + 32;
    v181 = v72;
    v180 = v81;
    while (v182 != v83)
    {
      if (v83 >= *(v72 + 16))
      {
        goto LABEL_24;
      }

      v231 = v82;
      v85 = v201;
      v86 = *(v201 + 48);
      v87 = v178;
      v88 = v177 + *(v178 + 72) * v83;
      v89 = v200;
      v90 = v83;
      v91 = v179;
      (*(v178 + 16))(&v200[v86], v88, v179);
      v92 = v232;
      *v232 = v90;
      v93 = *(v85 + 48);
      (*(v87 + 32))(&v93[v92], &v89[v86], v91);
      v94 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
      v95 = v233;
      static TTRListColors.color(for:)();

      v230 = v93;
      v96 = v202;
      REMRemindersListDataView.SectionLite.type.getter();
      v97 = v203;
      v98 = (*v174)(v96, v203);
      v229 = v90;
      if (v98 == v173)
      {
        (*v151)(v96, v97);
        v99 = v96[1];
        v166 = *v96;
        v165 = v99;
        v164 = v96[2];

        v100 = v226;
        v162(v90);
        v101 = v210;
        v102 = v220;
        v103 = v194;
        v194(v210, v207, v220);
        v192(v101, v193, v211);
        v189(v213, v172, v214);
        v188(v215, v171, v216);
        v157(v159, v100, v228);
        v104 = v212;
        v103(v212, v95, v102);
        v105 = v102;
        v190(v104, 0, 1, v102);
        v106 = v197;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v108 = v217;
        v107 = v218;
        *v217 = v166;
        v187(v108, v156, v107);
        v109 = v219;
        v110 = v221;
        v185(v219, v106, v221);
        v183(v109, 0, 1, v110);
        v111 = v198;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v170)(v106, v110);
        (*v150)(v226, v228);
      }

      else
      {
        v112 = v220;
        if (v98 != v155)
        {
          goto LABEL_25;
        }

        v113 = *(REMRemindersListDataView.ListsSectionsModel.List.sections.getter() + 16);

        LODWORD(v166) = v113 > 1;
        v114 = v210;
        v115 = v194;
        v194(v210, v207, v112);
        v192(v114, v193, v211);
        v189(v213, v172, v214);
        v188(v215, v171, v216);
        (*v153)(v226, v154, v228);
        v116 = v212;
        v115(v212, v233, v112);
        v105 = v112;
        v190(v116, 0, 1, v112);
        v117 = v197;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v118 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
        v120 = v217;
        v119 = v218;
        *v217 = v118;
        v187(v120, v149, v119);
        v121 = v219;
        v122 = v221;
        v185(v219, v117, v221);
        v183(v121, 0, 1, v122);
        v123 = v160;
        TTRRemindersListSectionMenuCapabilities.init()();
        TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
        (*v152)(v123, v161);
        v111 = v198;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v170)(v117, v122);
      }

      v72 = v181;
      v124 = *v205;
      v125 = v111;
      v126 = v111;
      v127 = v209;
      (*v205)(v208, v125, v209);
      v128 = v232;
      REMRemindersListDataView.SectionLite.reminders.getter();
      v129 = v204;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*v169)(v233, v105);
      (*v168)(v126, v127);
      sub_1000079B4(v128, &qword_10076E8D8, &unk_100645250);
      v82 = v231;
      v234 = v231;
      v131 = v231[2];
      v130 = v231[3];
      if (v131 >= v130 >> 1)
      {
        sub_1004A22E0((v130 > 1), v131 + 1, 1);
        v129 = v204;
        v82 = v234;
      }

      v132 = v229 + 1;
      v82[2] = v131 + 1;
      v133 = v82 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v131;
      v83 = v132;
      (*(v206 + 32))(v133, v129, v199);
      if (v180 == v83)
      {

        v134 = v143;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v134 = v143;
  v124 = *(v143 + 16);
LABEL_22:
  v135 = v145;
  v136 = v209;
  v124(v208, v145, v209);
  TTRRemindersListTreeViewModel.SectionsContainer.init(header:sections:)();
  (*(v134 + 8))(v135, v136);
  (*(v148 + 8))(v144, v221);
  (*(v146 + 8))(v141, v228);
  (*(v147 + 8))(v207, v220);
  return (*(v139 + 8))(v227, v140);
}

double sub_100313698@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    v7 = sub_100145ED8(v6);

    (*(v4 + 8))(v6, v3);
    if (v7)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v8 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();
      swift_unknownObjectRelease();
      if (v8)
      {
        *(a1 + 24) = &type metadata for TTRShowRemindersInListDragAndDropREMListTarget;
        *(a1 + 32) = &off_100714578;

        *a1 = v8;
        return result;
      }
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_100313838(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v10 = type metadata accessor for TTRSection();
    v11 = *(*(v10 - 8) + 56);

    v11(a2, 1, 1, v10);
  }
}

void *sub_100313968(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

void *sub_100313A2C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_100313CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100313CFC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

double sub_100313D4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v5)
  {
LABEL_5:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
      type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();

      dispatch thunk of TTRRemindersBoardCellCellPresentationContext.requestHandleColumnReorderingActiveStateChange(_:)();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100313E4C@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v5 = sub_100058000(&unk_10077CFE0, &unk_10063AD68);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DragItemUserInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_100314074(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &unk_10077CFE0, &unk_10063AD68);
    v14 = sub_100058000(&qword_10077CFD0, &qword_10063AD60);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    sub_100316F84(v7, v11, v13);
    v16 = sub_100058000(&qword_10077CFD0, &qword_10063AD60);
    v17 = *(v16 + 48);
    *a3 = v12;
    sub_100316F84(v11, a3 + v17, v18);
    (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
    return v12;
  }
}

uint64_t sub_100314074@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100058000(&unk_10077CFE0, &unk_10063AD68);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for DragItemUserInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = 0xD00000000000003DLL;
  v14[2] = 0x8000000100681A40;
  AnyHashable.init<A>(_:)();
  UIDragItem.localObject<A>(ofType:forKey:)();
  sub_100077654(v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10077CFE0, &unk_10063AD68);
LABEL_6:
    v12 = 1;
    return (*(v7 + 56))(a2, v12, 1, v6);
  }

  sub_100316F84(v5, v9, v10);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_100317008(v9);
    goto LABEL_6;
  }

  sub_100316F84(v9, a2, v11);
  v12 = 0;
  return (*(v7 + 56))(a2, v12, 1, v6);
}

BOOL sub_10031426C(unsigned __int8 a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v6 - 8);
  v38 = &v33 - v7;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10077CF90, &unk_10063AD38);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!v16)
  {
    return 0;
  }

  v34 = v9;
  v35 = v3;
  v36 = v8;
  v17 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState;
  v41 = *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState);
  v40 = a1;
  sub_100315B44();

  v18 = FromTo.init(_:_:)();
  __chkstk_darwin(v18);
  *(&v33 - 2) = v14;
  v19 = sub_1002ECDA8(sub_100315B98, (&v33 - 4), &off_100712A50);
  (*(v12 + 8))(v14, v11);
  if (v19 == 9)
  {
    v20 = *(v16 + v17);

    return v20 == a1;
  }

  *(v16 + v17) = a1;
  if (v19 > 3)
  {
    if ((v19 - 6) >= 3)
    {
      if (v19 == 4)
      {
        [*(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView) endInteractiveMovement];
        *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 0;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
LABEL_13:
      v22 = 0;
LABEL_15:
      sub_1003147C4(v22, v16, v1);
      goto LABEL_16;
    }

LABEL_14:
    v22 = 1;
    goto LABEL_15;
  }

  if (v19)
  {
    sub_10031495C(0, v16);
    v25 = v39;
    v26 = v35;
    (*(v39 + 16))(v5, v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID, v35);
    v27 = v38;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    (*(v25 + 8))(v5, v26);
    v28 = v34;
    v29 = v36;
    if ((*(v34 + 48))(v27, 1, v36) == 1)
    {
      sub_1000079B4(v27, &unk_100771B10, qword_10062E540);
    }

    else
    {
      v30 = v37;
      (*(v28 + 32))(v37, v27, v29);
      v31 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v31 beginInteractiveMovementForItemAtIndexPath:isa];

      (*(v28 + 8))(v30, v29);
      *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 1;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1001CBB0C();
    swift_unknownObjectRelease();
    *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) = 1;
  }

LABEL_16:
  v23 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView);
  if (v23)
  {
    v24 = v23;
    [v24 removeFromSuperview];
  }

  return 1;
}

void sub_1003147C4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted;
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) == 1)
  {
    v7 = *(*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column) + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator);
    if (!v7)
    {
      __break(1u);
      return;
    }

    memcpy(__dst, (v7 + 32), sizeof(__dst));
    memmove(__src, (v7 + 32), 0x118uLL);
    if (sub_10010896C(__src) != 1)
    {
      memcpy(v12, __src, sizeof(v12));
      swift_unknownObjectRetain();

      sub_10000794C(__dst, &v9, &qword_10076C040, &unk_1006301D0);
      sub_1001054A8(v12);

      swift_unknownObjectRelease();
      sub_1000079B4(__dst, &qword_10076C040, &unk_1006301D0);
    }

    *(a2 + v6) = 0;
  }

  v8 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted;
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) == 1)
  {
    [*(a3 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView) cancelInteractiveMovement];
    *(a2 + v8) = 0;
  }

  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) == 1)
  {
    sub_10031495C(1, a2);
  }

  if (a1)
  {
    sub_100313D4C(0);
  }
}

void sub_10031495C(char a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) == (a1 & 1))
  {
    v3 = a2;
    LOBYTE(v4) = a1;
    *(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) = (a1 & 1) == 0;
    v5 = *(v2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
    v6 = [v5 gestureRecognizers];
    if (v6)
    {
      sub_100003540(0, &unk_10077CFA0, UIGestureRecognizer_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v38 = v4;
        v39 = v5;
        v40 = v3;
        v4 = 0;
        v3 = v7 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v7 + 8 * v4 + 32);
          }

          v6 = v9;
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          swift_getObjectType();
          v11 = [swift_getObjCClassFromMetadata() description];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (v12 == 0xD000000000000022 && 0x8000000100681A10 == v14)
          {

            goto LABEL_19;
          }

          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v5)
          {
            goto LABEL_19;
          }

          ++v4;
          if (v10 == i)
          {
            v6 = 0;
LABEL_19:
            v5 = v39;
            v3 = v40;
            LOBYTE(v4) = v38;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

      v6 = 0;
LABEL_24:
    }

    [v6 setEnabled:v4 & 1];
    if (v4)
    {
      v16 = (v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore);
      if (*(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore + 32))
      {
LABEL_36:
        [v5 _autoScrollTouchInsets];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
        *(v37 + 24) = v30;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        *(v37 + 48) = v36;
        *(v37 + 56) = 0;
        return;
      }

      v17 = v16[2];
      v18 = v16[3];
      v19 = *v16;
      v20 = v16[1];
    }

    else
    {
      [v5 _autoScrollTouchInsets];
      v23 = v22;
      v24 = v21;
      v25 = *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell) - *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
      if (v25 < 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell) - *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
      }

      if (v25 > 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = -v25;
      }

      v20 = v23 - v27;
      v18 = v21 - v26;
      v28 = v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore;
      *v28 = v19;
      *(v28 + 8) = v23;
      *(v28 + 16) = v17;
      *(v28 + 24) = v24;
      *(v28 + 32) = 0;
    }

    [v5 _setAutoScrollTouchInsets:{v19, v20, v17, v18}];
    goto LABEL_36;
  }
}

void sub_100314C80(void *a1)
{
  v3 = sub_100058000(&qword_10077CFB0, &qword_10063AD48);
  __chkstk_darwin(v3 - 8);
  v5 = (aBlock - v4);
  v6 = sub_100058000(&unk_10077CFB8, &unk_10063AD50);
  __chkstk_darwin(v6);
  v8 = (aBlock - v7);
  v9 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 && (*(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) & 1) == 0)
  {
    *(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) = 1;

    v11 = [a1 items];
    sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = v12;
    __chkstk_darwin(v13);
    aBlock[-2] = v1;
    sub_100058000(&qword_10077CFC8, &qword_10063F1F0);
    v14 = sub_100058000(&qword_10077CFD0, &qword_10063AD60);
    sub_100316F20();
    Sequence.firstMap<A>(_:)();

    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {

      sub_1000079B4(v5, &qword_10077CFB0, &qword_10063AD48);
    }

    else
    {
      v16 = *(v14 + 48);
      v17 = *(v6 + 48);
      *v8 = *v5;
      sub_100316F84(v5 + v16, v8 + v17, v15);
      v18 = *v8;
      sub_100317008(v8 + *(v6 + 48));
      if (*(*(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column) + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator))
      {
        swift_unknownObjectRetain();

        v19 = sub_10010570C();
        swift_unknownObjectRelease();

        if (v19)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          aBlock[4] = sub_100317064;
          aBlock[5] = v20;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100313CFC;
          aBlock[3] = &unk_100720208;
          v21 = _Block_copy(aBlock);
          v22 = v19;

          [v18 setPreviewProvider:v21];
          _Block_release(v21);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100315158(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100315210(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077CFE0, &unk_10063AD68);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_10000794C(a1, v9 - v3, &unk_10077CFE0, &unk_10063AD68);
  v5 = type metadata accessor for DragItemUserInfo(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10077CFE0, &unk_10063AD68);
    v11 = 0u;
    v12 = 0u;
  }

  else
  {
    *(&v12 + 1) = v5;
    v6 = sub_1000317B8(&v11);
    sub_100316F84(v4, v6, v7);
  }

  v9[1] = 0xD00000000000003DLL;
  v9[2] = 0x8000000100681A40;
  AnyHashable.init<A>(_:)();
  UIDragItem.setLocalObject(_:forKey:)();
  sub_100077654(v10);
  return sub_1000079B4(&v11, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_1003154D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1003155C8, v7, v6);
}

uint64_t sub_1003155C8()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100315694;

  return sub_100482668(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100315694()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  v3 = v2[14];
  v4 = v2[13];
  if (v0)
  {
    v5 = sub_1003158F8;
  }

  else
  {
    v5 = sub_10031581C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10031581C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4 && *(v4 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState) == 2)
    {
      sub_10031426C(6u);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003158F8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_100315AE0(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
  [a1 locationInView:v2];
  v4 = v3;
  v6 = v5;
  [v2 bounds];
  v8.x = v4;
  v8.y = v6;
  return CGRectContainsPoint(v9, v8);
}

unint64_t sub_100315B44()
{
  result = qword_10077CF98;
  if (!qword_10077CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077CF98);
  }

  return result;
}

void sub_100315BB8(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5)
  {
    if (*(v5 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) == 1)
    {
      v6 = *(a2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);

      [a1 locationInView:v6];
      v9 = sub_100108848(v7, v8, *(v5 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell));
      v11 = sub_100316EF8(v9, v10, *(v5 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter));
      v13 = v12;
      [v6 updateInteractiveMovementTargetPosition:?];
      v14 = v5 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
      *v14 = v11;
      *(v14 + 8) = v13;
      *(v14 + 16) = 0;
    }
  }
}

void *sub_100315CC0(char *a1)
{
  v74 = a1;
  v2 = sub_100058000(&unk_10077CFE0, &unk_10063AD68);
  __chkstk_darwin(v2 - 8);
  v69 = &v63 - v3;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v70 = &v63 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v73 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (!*(v1 + v22))
  {
    v65 = v8;
    v64 = v14;
    v66 = v17;
    v67 = v18;
    v68 = v19;
    v24 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
    [v74 locationInView:v24];
    v25 = [v24 indexPathForItemAtPoint:?];
    if (v25)
    {
      v26 = v21;
      v27 = v25;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v1;
      v29 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      v30 = v73;
      v31 = v12;
      if ((*(v73 + 48))(v11, 1, v12) == 1)
      {
        (*(v68 + 8))(v21, v67);
        sub_1000079B4(v11, &unk_10076BB50, &unk_10062DEA0);
      }

      else
      {
        v32 = v66;
        (*(v30 + 32))(v66, v29, v12);
        result = swift_unknownObjectWeakLoadStrong();
        v33 = v68;
        if (result)
        {
          v34 = result;
          v35 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v36 = v35;
          v37 = v70;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          v39 = v71;
          v38 = v72;
          v40 = (*(v71 + 48))(v37, 1, v72);
          v41 = v65;
          if (v40 == 1)
          {
            swift_unknownObjectRelease();
            sub_1000079B4(v37, &qword_100772140, &qword_10062D9F0);
            v30 = v73;
          }

          else
          {
            (*(v39 + 32))(v65, v37, v38);
            v42 = v41;
            v43 = *(v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v44 = *(v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v43);
            v45 = (*(*(v44 + 8) + 552))(v42, v43);
            if (v45 >> 62)
            {
              v46 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v47 = v28;
            swift_unknownObjectRelease();

            (*(v71 + 8))(v65, v72);
            v30 = v73;
            if (v46)
            {
              v74 = v26;
              v48 = *(v73 + 16);
              v49 = v64;
              v48(v64, v32, v31);
              v50 = v30;
              v51 = type metadata accessor for TTRIRemindersBoardColumnDragItem(0);
              v52 = objc_allocWithZone(v51);
              v48(&v52[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardColumnDragItem_columnID], v49, v31);
              v76.receiver = v52;
              v76.super_class = v51;
              v53 = objc_msgSendSuper2(&v76, "init");
              v73 = *(v50 + 8);
              (v73)(v49, v31);
              v54 = [objc_allocWithZone(NSItemProvider) initWithObject:v53];
              v55 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v54];
              v56 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_id;
              v57 = type metadata accessor for UUID();
              v58 = v47 + v56;
              v59 = v69;
              (*(*(v57 - 8) + 16))(v69, v58, v57);
              v60 = type metadata accessor for DragItemUserInfo(0);
              v48((v59 + *(v60 + 20)), v32, v31);
              (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
              sub_100315210(v59);
              sub_1000079B4(v59, &unk_10077CFE0, &unk_10063AD68);
              aBlock[4] = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
              aBlock[5] = 0;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100313CFC;
              aBlock[3] = &unk_100720280;
              v61 = _Block_copy(aBlock);

              [v55 setPreviewProvider:v61];
              _Block_release(v61);
              sub_100058000(&qword_10076B780, &qword_10062D7C0);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_10062D420;
              *(v62 + 32) = v55;

              (v73)(v32, v31);
              (*(v68 + 8))(v74, v67);
              return v62;
            }
          }
        }

        (*(v30 + 8))(v32, v31);
        (*(v33 + 8))(v26, v67);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003164F0(void *a1)
{
  v74 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v6 = &v67 - v5;
  v77 = type metadata accessor for IndexPath();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10077CFB0, &qword_10063AD48);
  __chkstk_darwin(v8 - 8);
  v10 = (&v67 - v9);
  v11 = sub_100058000(&unk_10077CFB8, &unk_10063AD50);
  __chkstk_darwin(v11);
  v13 = (&v67 - v12);
  v14 = type metadata accessor for DragItemUserInfo(0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v18 = [a1 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v82 = v19;
  v78 = v1;
  v79 = v1;
  sub_100058000(&qword_10077CFC8, &qword_10063F1F0);
  v20 = sub_100058000(&qword_10077CFD0, &qword_10063AD60);
  sub_100316F20();
  Sequence.firstMap<A>(_:)();

  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    v22 = &qword_10077CFB0;
    v23 = &qword_10063AD48;
    v24 = v10;
    return sub_1000079B4(v24, v22, v23);
  }

  v25 = *(v20 + 48);
  v26 = *(v11 + 48);
  *v13 = *v10;
  sub_100316F84(v10 + v25, v13 + v26, v21);

  sub_100316F84(v13 + *(v11 + 48), v17, v27);
  v28 = v78;
  v29 = *(v14 + 20);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v30 = v76;
  v31 = v77;
  if ((*(v76 + 48))(v6, 1, v77) == 1)
  {
    sub_100317008(v17);
    v22 = &unk_100771B10;
    v23 = qword_10062E540;
    v24 = v6;
    return sub_1000079B4(v24, v22, v23);
  }

  v33 = v17;
  v34 = v75;
  (*(v30 + 32))(v75, v6, v31);
  v35 = *(v28 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v37 = [v35 cellForItemAtIndexPath:isa];

  if (!v37)
  {
    goto LABEL_13;
  }

  v38 = IndexPath._bridgeToObjectiveC()().super.isa;
  v39 = [v35 cellForItemAtIndexPath:v38];

  if (!v39)
  {
    v39 = v37;
LABEL_12:

LABEL_13:
    (*(v30 + 8))(v34, v31);
    v66 = v33;
    return sub_100317008(v66);
  }

  swift_getObjectType();
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {

    goto LABEL_12;
  }

  v41 = v72;
  v42 = *(v72 + 16);
  v70 = v33;
  v69 = v40;
  v42(v73, &v33[v29], v74);
  v68 = v39;
  [v37 bounds];
  CGRect.center.getter();
  v44 = v43;
  v46 = v45;
  [v71 locationInView:v37];
  v48 = v47;
  v50 = v49;
  type metadata accessor for TTRIRemindersBoardColumnReorderingContext(0);
  v51 = v30;
  v52 = swift_allocObject();
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState) = 0;
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) = 0;
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) = 0;
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 0;
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_dropInterceptingView) = 0;
  *(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) = 0;
  v53 = v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 1;
  v54 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
  v55 = sub_100058000(&qword_10077CFF0, &qword_1006408C0);
  (*(*(v55 - 8) + 56))(v52 + v54, 1, 1, v55);
  v56 = v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
  v81 = 1;
  v80 = 1;
  v82 = 0uLL;
  v83[0] = 1;
  memset(&v83[8], 0, 32);
  v83[40] = 1;
  v84 = 0;
  v57 = *&v83[32];
  *(v56 + 32) = *&v83[16];
  *(v56 + 48) = v57;
  *(v56 + 64) = 0;
  v58 = *v83;
  *v56 = v82;
  *(v56 + 16) = v58;
  (*(v41 + 32))(v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID, v73, v74);
  v59 = (v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column);
  v60 = v68;
  v61 = v69;
  *v59 = v68;
  v59[1] = v61;
  v62 = (v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
  *v62 = v44;
  v62[1] = v46;
  v63 = (v52 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell);
  *v63 = v48;
  v63[1] = v50;
  *(v56 + 64) = v35;
  v64 = v35;
  sub_100317140(&v82);

  sub_100313D4C(v65);
  sub_10031426C(1u);

  (*(v51 + 8))(v34, v31);
  v66 = v70;
  return sub_100317008(v66);
}

double sub_100316CEC()
{
  v0 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_10031426C(2u);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_100084EC0(0, 0, v2, &unk_10063AD80, v6);

  return result;
}

id sub_100316E44(void *a1)
{
  result = sub_10031426C(3u);
  if (result)
  {
    swift_getObjectType();
    if (sub_100315AE0(a1, v1))
    {
      sub_100315BB8(a1, v1);
    }

    else if (sub_10031426C(4u))
    {
      sub_100314C80(a1);
    }

    result = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView);
    if (result)
    {

      return [result removeFromSuperview];
    }
  }

  return result;
}

unint64_t sub_100316F20()
{
  result = qword_10077CFD8;
  if (!qword_10077CFD8)
  {
    sub_10005D20C(&qword_10077CFC8, &qword_10063F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077CFD8);
  }

  return result;
}

uint64_t sub_100316F84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for DragItemUserInfo(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100317008(uint64_t a1)
{
  v2 = type metadata accessor for DragItemUserInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100317064()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10031708C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1003154D4(a1, v4, v5, v6);
}

char *sub_100317194(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_100317290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_100317334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1003173E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100317494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100317544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10031761C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ItemID();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void sub_1003176FC(uint64_t a1, int a2, __n128 a3)
{
  v4 = v3;
  v43 = a2;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100058000(&qword_10077D178, &qword_10063AE88);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v36[-v11];
  v13 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v13 - 8);
  v44 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v36[-v16];
  v19 = __chkstk_darwin(v18);
  v21 = &v36[-v20];
  v22 = *(v7 + 16);
  v45 = a1;
  v42 = v7 + 16;
  v40 = v22;
  (v22)(&v36[-v20], a1, v6, v19);
  v23 = *(v7 + 56);
  v41 = v7 + 56;
  v39 = v23;
  v23(v21, 0, 1, v6);
  v24 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  v25 = *(v10 + 56);
  sub_10000794C(v21, v12, &qword_100771DD0, qword_100634780);
  v46 = v4;
  sub_10000794C(v4 + v24, &v12[v25], &qword_100771DD0, qword_100634780);
  v26 = *(v7 + 48);
  if (v26(v12, 1, v6) == 1)
  {
    sub_1000079B4(v21, &qword_100771DD0, qword_100634780);
    if (v26(&v12[v25], 1, v6) == 1)
    {
      sub_1000079B4(v12, &qword_100771DD0, qword_100634780);
      return;
    }
  }

  else
  {
    sub_10000794C(v12, v17, &qword_100771DD0, qword_100634780);
    if (v26(&v12[v25], 1, v6) != 1)
    {
      v34 = v38;
      (*(v7 + 32))(v38, &v12[v25], v6);
      sub_10031B444(&qword_10076D1C0, &type metadata accessor for TTRAccountsListsViewModel.PinnedList, &protocol conformance descriptor for TTRAccountsListsViewModel.PinnedList);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v7 + 8);
      v35(v34, v6);
      sub_1000079B4(v21, &qword_100771DD0, qword_100634780);
      v35(v17, v6);
      sub_1000079B4(v12, &qword_100771DD0, qword_100634780);
      v27 = v45;
      v28 = v46;
      if (v37)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000079B4(v21, &qword_100771DD0, qword_100634780);
    (*(v7 + 8))(v17, v6);
  }

  sub_1000079B4(v12, &qword_10077D178, &qword_10063AE88);
  v27 = v45;
  v28 = v46;
LABEL_7:
  v29 = sub_100027EE8();
  __chkstk_darwin(v29);
  *&v36[-16] = v27;
  v30 = sub_1002ECA94(sub_1001C5E40, &v36[-32], v29);

  if (v30)
  {
    sub_10002F124(v43 & 1);
    v31 = type metadata accessor for TTRIPinnedListControl(0);
    v49.receiver = v30;
    v49.super_class = v31;
    v32 = objc_msgSendSuper2(&v49, "isSelected");
    v48.receiver = v30;
    v48.super_class = v31;
    objc_msgSendSuper2(&v48, "setSelected:", 1);
    v47.receiver = v30;
    v47.super_class = v31;
    if (v32 != objc_msgSendSuper2(&v47, "isSelected"))
    {
      sub_1001A86C4();
    }

    v33 = v44;
    v40(v44, v27, v6);
    v39(v33, 0, 1, v6);
    swift_beginAccess();
    sub_10000D184(v33, v28 + v24, &qword_100771DD0, qword_100634780);
    swift_endAccess();
  }
}

void sub_100317CA4(uint64_t a1, __n128 a2)
{
  v80 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v74 = *(v80 - 8);
  __chkstk_darwin(v80);
  v71 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v8 - 8);
  v78 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v66 - v11;
  __chkstk_darwin(v12);
  v81 = &v66 - v13;
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v17 = sub_100058000(&qword_10077D158, &qword_10063AE80);
  __chkstk_darwin(v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  v23 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dropTargetPinnedListID;
  swift_beginAccess();
  v77 = v17;
  v24 = *(v17 + 48);
  v82 = v2;
  sub_10000794C(v2 + v23, v22, &unk_10077D160, &qword_10063C8E0);
  v86 = a1;
  sub_10000794C(a1, &v22[v24], &unk_10077D160, &qword_10063C8E0);
  v83 = v6;
  v25 = *(v6 + 48);
  v26 = v25(v22, 1, v5);
  v84 = v25;
  v85 = v6 + 48;
  if (v26 == 1)
  {
    if (v25(&v22[v24], 1, v5) == 1)
    {
      sub_1000079B4(v22, &unk_10077D160, &qword_10063C8E0);
      return;
    }
  }

  else
  {
    sub_10000794C(v22, v16, &unk_10077D160, &qword_10063C8E0);
    if (v25(&v22[v24], 1, v5) != 1)
    {
      v61 = v83;
      v62 = v70;
      (*(v83 + 32))(v70, &v22[v24], v5);
      sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v61 + 8);
      v64(v62, v5);
      v64(v16, v5);
      sub_1000079B4(v22, &unk_10077D160, &qword_10063C8E0);
      if (v63)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v83 + 8))(v16, v5);
  }

  sub_1000079B4(v22, &qword_10077D158, &qword_10063AE80);
LABEL_7:
  v27 = v86;
  v28 = v81;
  sub_10000794C(v86, v81, &unk_10077D160, &qword_10063C8E0);
  v29 = v82;
  swift_beginAccess();
  sub_10000D184(v28, v29 + v23, &unk_10077D160, &qword_10063C8E0);
  swift_endAccess();
  v30 = sub_100027EE8();
  v31 = v30;
  if (v30 >> 62)
  {
    v65 = v30;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v65;
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v79;
  v34 = v84;
  if (v32)
  {
    if (v32 >= 1)
    {
      v35 = 0;
      v82 = v31 & 0xC000000000000001;
      v76 = (v74 + 6);
      v75 = (v83 + 56);
      v69 = (v74 + 2);
      v68 = (v74 + 1);
      v67 = (v83 + 32);
      v72 = (v83 + 8);
      v74 = v88;
      v83 = v31;
      v73 = v5;
      v81 = v32;
      while (1)
      {
        if (v82)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v45 = *(v31 + 8 * v35 + 32);
        }

        v43 = v45;
        if (v34(v27, 1, v5) == 1)
        {
          goto LABEL_29;
        }

        v46 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
        swift_beginAccess();
        v47 = 1;
        if (!(*v76)(&v43[v46], 1, v80))
        {
          v48 = &v43[v46];
          v49 = v71;
          v50 = v80;
          (*v69)(v71, v48, v80);
          TTRAccountsListsViewModel.PinnedList.id.getter();
          (*v68)(v49, v50);
          v47 = 0;
        }

        (*v75)(v33, v47, 1, v5);
        v51 = *(v77 + 48);
        sub_10000794C(v33, v19, &unk_10077D160, &qword_10063C8E0);
        sub_10000794C(v86, &v19[v51], &unk_10077D160, &qword_10063C8E0);
        v34 = v84;
        if (v84(v19, 1, v5) == 1)
        {
          break;
        }

        sub_10000794C(v19, v78, &unk_10077D160, &qword_10063C8E0);
        if (v34(&v19[v51], 1, v5) == 1)
        {
          sub_1000079B4(v33, &unk_10077D160, &qword_10063C8E0);
          (*v72)(v78, v5);
LABEL_28:
          sub_1000079B4(v19, &qword_10077D158, &qword_10063AE80);
          v5 = v73;
          v27 = v86;
LABEL_29:
          v53 = v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
          v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = 0;
          if (v53)
          {
            goto LABEL_12;
          }

          goto LABEL_15;
        }

        v54 = &v19[v51];
        v55 = v70;
        (*v67)(v70, v54, v5);
        sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        v57 = *v72;
        v58 = v55;
        v59 = v79;
        (*v72)(v58, v5);
        sub_1000079B4(v59, &unk_10077D160, &qword_10063C8E0);
        v57(v78, v5);
        v33 = v59;
        v34 = v84;
        sub_1000079B4(v19, &unk_10077D160, &qword_10063C8E0);
        v60 = v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
        v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = v56 & 1;
        v27 = v86;
        if ((v56 & 1) != v60)
        {
LABEL_12:
          type metadata accessor for TTRUserDefaults();
          v36 = static TTRUserDefaults.appUserDefaults.getter();
          TTRUserDefaults.animationSlowModeEnabled.getter();

          type metadata accessor for TTRIAnimationSlowMode();
          swift_allocObject();
          TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
          v37 = 0.15;
          if (v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
          {
            v37 = 0.25;
          }

          v38 = TTRIAnimationSlowMode.adjust(_:)(v37);
          v39 = swift_allocObject();
          *(v39 + 16) = v43;
          v40 = objc_allocWithZone(UIViewPropertyAnimator);
          v88[2] = sub_10031B43C;
          v88[3] = v39;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v88[0] = sub_10001047C;
          v88[1] = &unk_100720370;
          v41 = _Block_copy(aBlock);
          v42 = v43;
          v34 = v84;

          v43 = [v40 initWithDuration:v41 controlPoint1:v38 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
          v44 = v41;
          v27 = v86;
          _Block_release(v44);
          [v43 startAnimation];

          v33 = v79;
        }

LABEL_15:
        ++v35;

        v31 = v83;
        if (v81 == v35)
        {
          goto LABEL_33;
        }
      }

      sub_1000079B4(v33, &unk_10077D160, &qword_10063C8E0);
      if (v34(&v19[v51], 1, v5) == 1)
      {
        sub_1000079B4(v19, &unk_10077D160, &qword_10063C8E0);
        v52 = v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
        v43[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = 1;
        v5 = v73;
        v27 = v86;
        if ((v52 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

void sub_100318834(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(&a1[v15], v10, &qword_100771DD0, qword_100634780);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100771DD0, qword_100634780);
    return;
  }

  v16 = *(v12 + 32);
  v16(v14, v10, v11);
  sub_10002F124(a2 & 1);
  if (a2)
  {
    v17 = type metadata accessor for TTRIPinnedListControl(0);
    v33.receiver = a1;
    v33.super_class = v17;
    v18 = objc_msgSendSuper2(&v33, "isSelected");
    v32.receiver = a1;
    v32.super_class = v17;
    objc_msgSendSuper2(&v32, "setSelected:", 1);
    v31.receiver = a1;
    v31.super_class = v17;
    v19 = 0;
    v20 = 0;
    if (v18 != objc_msgSendSuper2(&v31, "isSelected"))
    {
      sub_1001A86C4();
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    v27 = v16;
    v28 = v3;
    v29 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = swift_allocObject();
    v19 = sub_10031B434;
    *(v21 + 16) = sub_10031B434;
    *(v21 + 24) = v20;
    aBlock[4] = sub_100026410;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100720320;
    v22 = _Block_copy(aBlock);
    v23 = a1;

    [v29 performWithoutAnimation:v22];
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return;
    }

    v16 = v27;
    v3 = v28;
  }

  v25 = v30;
  v16(v30, v14, v11);
  (*(v12 + 56))(v25, 0, 1, v11);
  v26 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  sub_10000D184(v25, v3 + v26, &qword_100771DD0, qword_100634780);
  swift_endAccess();
  sub_1000301AC(v19, v20);
}

void sub_100318C48(void *a1)
{
  v3 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = type metadata accessor for TTRIPinnedListControl(0);
    v17.receiver = a1;
    v17.super_class = v10;
    v11 = a1;
    if (objc_msgSendSuper2(&v17, "isSelected"))
    {
    }

    else
    {
      v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      sub_10000794C(v11 + v12, v5, &qword_100771DD0, qword_100634780);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1000079B4(v5, &qword_100771DD0, qword_100634780);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_100318834(v11, 1);
        v13 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v13 + 8);
          ObjectType = swift_getObjectType();
          (*(v14 + 8))(v1, v9, ObjectType, v14);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_100318EAC(char *a1, char a2)
{
  v5 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIPinnedListControl(0);
  v19.receiver = a1;
  v19.super_class = v12;
  result = objc_msgSendSuper2(&v19, "isSelected");
  if ((result & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
    swift_beginAccess();
    sub_10000794C(&a1[v14], v7, &qword_100771DD0, qword_100634780);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1000079B4(v7, &qword_100771DD0, qword_100634780);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_100318834(a1, a2 & 1);
      v15 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(v2, v11, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_100319198()
{
  v1 = [v0 subviews];
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 setUserInteractionEnabled:{objc_msgSend(v0, "isUserInteractionEnabled")}];
  }

LABEL_10:
}

void sub_1003192F8()
{
  v0 = sub_100027EE8();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = 0;
        v4 = v1 & 0xC000000000000001;
        v5 = &selRef_layoutIfNeeded;
        v21 = v1;
        do
        {
          if (v4)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v6 = *(v1 + 8 * v3 + 32);
          }

          v7 = v6;
          v8 = type metadata accessor for TTRIPinnedListControl(0);
          v26.receiver = v7;
          v26.super_class = v8;
          if (objc_msgSendSuper2(&v26, v5[504]))
          {
            v25.receiver = v7;
            v25.super_class = v8;
            v9 = objc_msgSendSuper2(&v25, v5[504]);
            v24.receiver = v7;
            v24.super_class = v8;
            objc_msgSendSuper2(&v24, "setSelected:", 0);
            v23.receiver = v7;
            v23.super_class = v8;
            if (v9 != objc_msgSendSuper2(&v23, v5[504]))
            {
              type metadata accessor for TTRUserDefaults();
              v10 = static TTRUserDefaults.appUserDefaults.getter();
              TTRUserDefaults.animationSlowModeEnabled.getter();

              type metadata accessor for TTRIAnimationSlowMode();
              swift_allocObject();
              TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
              v11 = 0.15;
              if (*(v7 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor))
              {
                v11 = 0.25;
              }

              v12 = TTRIAnimationSlowMode.adjust(_:)(v11);
              v13 = swift_allocObject();
              *(v13 + 16) = v7;
              v14 = v2;
              v15 = v5;
              v16 = v4;
              v17 = objc_allocWithZone(UIViewPropertyAnimator);
              aBlock[4] = sub_10031B4B8;
              aBlock[5] = v13;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10001047C;
              aBlock[3] = &unk_1007204D8;
              v18 = _Block_copy(aBlock);
              v19 = v7;

              v20 = v17;
              v4 = v16;
              v5 = v15;
              v2 = v14;
              v1 = v21;
              v7 = [v20 initWithDuration:v18 controlPoint1:v12 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
              _Block_release(v18);
              [v7 startAnimation];
            }
          }

          ++v3;
        }

        while (v2 != v3);
      }

      return;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_10031963C(uint64_t *a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_10077D158, &qword_10063AE80);
  __chkstk_darwin(v39);
  v40 = &v36 - v6;
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  __chkstk_darwin(v16);
  v42 = &v36 - v17;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  v20 = 1;
  if (!(*(v8 + 48))(v18 + v19, 1, v7))
  {
    (*(v8 + 16))(v10, v18 + v19, v7);
    TTRAccountsListsViewModel.PinnedList.id.getter();
    (*(v8 + 8))(v10, v7);
    v20 = 0;
  }

  v21 = *(v4 + 56);
  v22 = v42;
  v21(v42, v20, 1, v3);
  TTRAccountsListsViewModel.PinnedList.id.getter();
  v21(v15, 0, 1, v3);
  v23 = v40;
  v24 = *(v39 + 48);
  sub_10000794C(v22, v40, &unk_10077D160, &qword_10063C8E0);
  sub_10000794C(v15, v23 + v24, &unk_10077D160, &qword_10063C8E0);
  v25 = *(v4 + 48);
  v26 = v25(v23, 1, v3);
  v27 = v3;
  v28 = v23;
  if (v26 != 1)
  {
    v30 = v38;
    sub_10000794C(v23, v38, &unk_10077D160, &qword_10063C8E0);
    if (v25(v23 + v24, 1, v27) != 1)
    {
      v31 = v23 + v24;
      v32 = v37;
      (*(v4 + 32))(v37, v31, v27);
      sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = v30;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v4 + 8);
      v34(v32, v27);
      sub_1000079B4(v15, &unk_10077D160, &qword_10063C8E0);
      sub_1000079B4(v42, &unk_10077D160, &qword_10063C8E0);
      v34(v33, v27);
      sub_1000079B4(v28, &unk_10077D160, &qword_10063C8E0);
      return v29 & 1;
    }

    sub_1000079B4(v15, &unk_10077D160, &qword_10063C8E0);
    sub_1000079B4(v42, &unk_10077D160, &qword_10063C8E0);
    (*(v4 + 8))(v30, v27);
    goto LABEL_8;
  }

  sub_1000079B4(v15, &unk_10077D160, &qword_10063C8E0);
  sub_1000079B4(v42, &unk_10077D160, &qword_10063C8E0);
  if (v25(v23 + v24, 1, v27) != 1)
  {
LABEL_8:
    sub_1000079B4(v23, &qword_10077D158, &qword_10063AE80);
    v29 = 0;
    return v29 & 1;
  }

  sub_1000079B4(v23, &unk_10077D160, &qword_10063C8E0);
  v29 = 1;
  return v29 & 1;
}

void sub_100319BCC(void *a1)
{
  ObjectType = swift_getObjectType();
  v6.receiver = a1;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, "isSelected");
  v5.receiver = a1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "setSelected:", 1);
  v4.receiver = a1;
  v4.super_class = ObjectType;
  if (v3 != objc_msgSendSuper2(&v4, "isSelected"))
  {
    sub_1001A86C4();
  }
}

id sub_100319DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIPinnedListsView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100319E94(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v12, v7, &qword_100771DD0, qword_100634780);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100771DD0, qword_100634780);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v13 = (*(v15 + 16))(v2, v11, a2, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    (*(v9 + 8))(v11, v8);
  }

  return v13;
}

uint64_t sub_10031A0D0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v16, v11, &qword_100771DD0, qword_100634780);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &qword_100771DD0, qword_100634780);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = v4 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v17 = (*(v19 + 48))(v4, v15, a2, ObjectType, v19, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    (*(v13 + 8))(v15, v12);
  }

  return v17;
}

void sub_10031A31C(char *a1)
{
  v3 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus) == 1)
  {
    v10 = type metadata accessor for TTRIPinnedListControl(0);
    v16.receiver = a1;
    v16.super_class = v10;
    if ((objc_msgSendSuper2(&v16, "isSelected") & 1) == 0)
    {
      v11 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      sub_10000794C(&a1[v11], v5, &qword_100771DD0, qword_100634780);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1000079B4(v5, &qword_100771DD0, qword_100634780);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_100318834(a1, 0);
        v12 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 8))(v1, v9, ObjectType, v13);
          swift_unknownObjectRelease();
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_10031A56C(uint64_t a1)
{
  v3 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v10, v5, &qword_100771DD0, qword_100634780);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &qword_100771DD0, qword_100634780);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 56))(v1, v9, ObjectType, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_10031A860(void *a1)
{
  v2 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = a1;
  sub_100317CA4(v4, v7);

  return sub_1000079B4(v4, &unk_10077D160, &qword_10063C8E0);
}

void *sub_10031AA3C(void *a1)
{
  v2 = sub_100027EE8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [a1 locationInView:v6];
      if ([v7 pointInside:0 withEvent:?])
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_10031AB5C()
{
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor) = 0;
  v3 = v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls;
  *v3 = xmmword_10063ADB0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_usesLargeTextLayout) = 0;
  v4 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dropTargetPinnedListID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10031ACD4(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_10031AA3C(a1);
  v19 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  if (!v18)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_6;
  }

  v20 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(&v18[v20], v11, &qword_100771DD0, qword_100634780);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_6:
    sub_1000079B4(v11, &qword_100771DD0, qword_100634780);
    goto LABEL_7;
  }

  (*(v13 + 32))(v17, v11, v12);
  v21 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 32))(v2, v17, a1, ObjectType, v22);

    swift_unknownObjectRelease();
    (*(v13 + 8))(v17, v12);
    v19 = v24;
  }

  else
  {
    (*(v13 + 8))(v17, v12);
  }

LABEL_7:
  if ([v19 operation] - 2 < 2)
  {
    if (v18)
    {
      v27 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      v28 = 1;
      if (!(*(v13 + 48))(&v18[v27], 1, v12))
      {
        v29 = &v18[v27];
        v30 = v34;
        (*(v13 + 16))(v34, v29, v12);
        TTRAccountsListsViewModel.PinnedList.id.getter();
        (*(v13 + 8))(v30, v12);
        v28 = 0;
      }
    }

    else
    {
      v28 = 1;
    }

    v31 = type metadata accessor for UUID();
    v32 = v35;
    (*(*(v31 - 8) + 56))(v35, v28, 1, v31);
    sub_10031B3C4(v32, v8);
  }

  else
  {
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  }

  sub_100317CA4(v8, v26);

  sub_1000079B4(v8, &unk_10077D160, &qword_10063C8E0);
  return v19;
}

char *sub_10031B18C(void *a1)
{
  v3 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10031AA3C(a1);
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
    swift_beginAccess();
    sub_10000794C(&v11[v12], v5, &qword_100771DD0, qword_100634780);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_1000079B4(v5, &qword_100771DD0, qword_100634780);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v13 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        (*(v14 + 40))(v1, v9, a1, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_10031B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031B444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10031B4D0()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10031B534()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10031B598()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.flagged(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10031B6A8(uint64_t a1)
{
  v1 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v5 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v2 + 104))(v4, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.flagged(_:), v1);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10031B7BC()
{
  v1 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380, &qword_10062DE60);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380, &qword_10062DE60);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_10031B918()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

double sub_10031B950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10031C60C();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10031BAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_10031C60C();
  sub_10000794C(a1, v8, &qword_100772140, &qword_10062D9F0);
  v10 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.AttributeMatchingRequest(0);
  v11 = swift_allocObject();
  result = sub_100154F88(v8, v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_parent);
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability) = v9;
  a3[3] = v10;
  a3[4] = &off_10071A4F0;
  *a3 = v11;
  return result;
}

BOOL sub_10031BC24(void *a1)
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v2 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)(), swift_unknownObjectRelease(), (v2 & 1) != 0))
  {
    sub_10000C36C(a1, a1[3]);
    dispatch thunk of TTRReminderProtocol.ttrFlaggedContext.getter();
    if (v6)
    {
      sub_10000C36C(v5, v6);
      v3 = dispatch thunk of TTRReminderFlaggedContextProtocol.flagged.getter();
      sub_100004758(v5);
      return v3 > 0;
    }

    sub_1000079B4(v5, &qword_1007699A0, &qword_10062E3C8);
  }

  return 0;
}

double sub_10031BD24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10031C60C();
  sub_1001D6AC0(a1, a2, a3);

  return result;
}

uint64_t sub_10031BD80()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_10031BED4()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100070538();
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50, &unk_10062DEA0);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50, &unk_10062DEA0);
  sub_100004758(v30);
  return v25;
}

void sub_10031C2FC(void *a1)
{
  v2 = [a1 flaggedContext];
  if (v2)
  {
    v4 = v2;
    if (REMReminderFlaggedContextChangeItem.isFlagged.getter())
    {
    }

    else
    {
      type metadata accessor for TTRReminderEditor();
      sub_10031E630(&unk_1007756A0, &type metadata accessor for TTRReminderEditor, &protocol conformance descriptor for TTRReminderEditor);
      v3 = a1;
      TTRUndoableEditing.init(changeItem:undoManager:)();
      TTRReminderEditor.edit(isFlagged:)(1);
    }
  }
}

id sub_10031C3F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10031C52C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E68(v0, qword_10077D230);
  v1 = sub_100003E30(v0, qword_10077D230);
  v2 = enum case for TTRRemindersListViewModel.SectionID.NamedID.flaggedSection(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_10031C60C()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeFlagged;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_100720500;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10031C6C8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v6 - 8);
  v40 = &v32 - v7;
  v8 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v8 - 8);
  v38 = &v32 - v9;
  v35 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v44 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980, &unk_100631DD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v32 = REMSmartListType.title.getter();
  v36 = static TTRListColors.SmartList.flagged.getter();
  v26 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v27 = *(*(v26 - 8) + 56);
  v37 = v17;
  v27(v17, 1, 1, v26);
  v39 = v1;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v33 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v34);
  v28 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v28)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v44, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v35);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v45, &qword_1007693C0, &unk_100631DE0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v35) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v35) = 0;
  }

  LODWORD(v34) = v28 != 0;
  v29 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

double sub_10031CD94()
{

  return result;
}

uint64_t sub_10031CDD4()
{
  v0 = *(sub_10056FD38() + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowFlaggedViewModelSource(uint64_t a1)
{
  result = qword_10077D290;
  if (!qword_10077D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031CF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v117 = &v97 - v7;
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v116 = &v97 - v9;
  v127 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v115 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v11 - 8);
  v112 = &v97 - v12;
  v109 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v110 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v114 = *(v125 - 8);
  __chkstk_darwin(v125);
  v111 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v123 = &v97 - v16;
  v124 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v113 = *(v124 - 8);
  __chkstk_darwin(v124);
  v128 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_10076F6E8, &unk_1006324C0);
  __chkstk_darwin(v19 - 8);
  v21 = &v97 - v20;
  v107 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v122 = *(v23 - 8);
  __chkstk_darwin(v23);
  v121 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v120 = &v97 - v26;
  v27 = sub_100058000(&qword_100769378, &qword_10062DE80);
  __chkstk_darwin(v27 - 8);
  v29 = &v97 - v28;
  v30 = type metadata accessor for TTRListType.SortingCapability();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v102 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = __chkstk_darwin(v33).n128_u64[0];
  v36 = &v97 - v35;
  v129 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList;
  v130 = a1;
  v37 = *(v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);
  v105 = v21;
  if (v37)
  {
    v118 = v23;
    v38 = [v37 sortingStyle];
    v39 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
    if (!v39)
    {
      if (!v38)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v39 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
    if (!v39)
    {
      v119 = 1;
      goto LABEL_20;
    }

    v118 = v23;
    v38 = 0;
  }

  v40 = v39;
  v41 = [v39 sortingStyle];

  if (!v38)
  {
    if (!v41)
    {
LABEL_14:
      v119 = 1;
      v23 = v118;
      goto LABEL_20;
    }

    v119 = 0;
    goto LABEL_19;
  }

  if (v41)
  {
    v103 = a2;
    v98 = v3;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
    {
      v119 = 1;
    }

    else
    {
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v3 = v98;

    a2 = v103;
    goto LABEL_19;
  }

LABEL_15:
  v119 = 0;
  v41 = v38;
LABEL_19:
  v23 = v118;

LABEL_20:
  v46 = *(v3 + v129);
  v47 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
  v48 = v47;
  if (v47)
  {
  }

  v49 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v31 + 16))(v36, v3 + v49, v30);
  v50 = (*(v31 + 88))(v36, v30);
  if (v50 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    v51 = v122;
    if ((v46 == 0) == (v48 != 0))
    {
      v52 = v50;
      v53 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
      v54 = v53;
      if (v53)
      {
      }

      v55 = v54 != 0;
      v56 = v102;
      *v102 = v55;
      (*(v31 + 104))(v56, v52, v30);
      swift_beginAccess();
      (*(v31 + 40))(v3 + v49, v56, v30);
      swift_endAccess();
    }
  }

  else
  {
    (*(v31 + 8))(v36, v30);
    v51 = v122;
  }

  v57 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
  v58 = *(v3 + v129);
  *(v3 + v129) = v57;

  v59 = v120;
  REMRemindersListDataView.FlaggedModel.flatModel.getter();
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  v60 = *(v51 + 8);
  v60(v59, v23);
  v61 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v29, 1, v61);
  if (v63 == 1)
  {
    sub_1000079B4(v29, &qword_100769378, &qword_10062DE80);
    v64 = 0;
  }

  else
  {
    v64 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v62 + 8))(v29, v61);
  }

  v65 = v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_completedRemindersCount;
  *v65 = v64;
  *(v65 + 8) = v63 == 1;
  v66 = v121;
  REMRemindersListDataView.FlaggedModel.flatModel.getter();
  v67 = REMRemindersListDataView.FlatModel.hasIncompleteOrCompletedReminders.getter();
  v60(v66, v23);
  *(v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) = v67;
  if (v119)
  {
    v103 = a2;
    sub_10031C6C8(v128);
    if (qword_1007671B0 != -1)
    {
      swift_once();
    }

    v68 = v109;
    v69 = sub_100003E30(v109, qword_10077D230);
    (*(v108 + 16))(v110, v69, v68);
    v70 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v70 - 8) + 56))(v112, 1, 1, v70);
    v71 = v123;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v72 = v114;
    (*(v114 + 16))(v111, v71, v125);
    REMRemindersListDataView.FlaggedModel.flatModel.getter();
    REMRemindersListDataView.FlatModel.reminders.getter();
    v60(v66, v23);
    v73 = v126;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v74 = v113;
    v75 = v116;
    v76 = v124;
    (*(v113 + 16))(v116, v128, v124);
    (*(v74 + 56))(v75, 0, 1, v76);
    sub_100058000(&qword_100770900, &qword_100632FD0);
    v77 = v115;
    v78 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_10062D400;
    (*(v77 + 16))(v79 + v78, v73, v127);
    v80 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v81 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v82 = type metadata accessor for TTRRemindersListViewModel.Item();
    v83 = v117;
    (*(*(v82 - 8) + 56))(v117, 1, 1, v82);
    v132[3] = v80;
    v132[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v132[0] = v81;
    sub_10000B0D8(v132, &v131);
    v84 = swift_allocObject();
    *(v84 + 16) = v79;
    sub_100005FD0(&v131, v84 + 24);
    *(v84 + 64) = v3;

    sub_100586238(1, v75, sub_100070528, v84, v103, 0, v83);

    sub_1000079B4(v83, &qword_100772140, &qword_10062D9F0);
    sub_1000079B4(v75, &unk_10078A380, &qword_10062DE60);
    (*(v77 + 8))(v126, v127);
    (*(v72 + 8))(v123, v125);
    (*(v74 + 8))(v128, v124);

    return sub_100004758(v132);
  }

  else
  {
    v86 = *(v3 + v129);
    if (v86)
    {
      v87 = [v86 sortingStyle];
      v88 = v105;
      REMSortingStyle.dataViewSortingStyle.getter();

      v89 = v106;
      v90 = v107;
      (*(v106 + 56))(v88, 0, 1, v107);
      v91 = v104;
      (*(v89 + 32))(v104, v88, v90);
    }

    else
    {
      v89 = v106;
      v93 = v105;
      v90 = v107;
      (*(v106 + 56))(v105, 1, 1, v107);
      v94 = v100;
      v95 = v99;
      v96 = v101;
      (*(v100 + 104))(v99, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v101);
      v91 = v104;
      TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
      (*(v94 + 8))(v95, v96);
      if ((*(v89 + 48))(v93, 1, v90) != 1)
      {
        sub_1000079B4(v93, &qword_10076F6E8, &unk_1006324C0);
      }
    }

    sub_10057A85C(v91, 1, v92);
    return (*(v89 + 8))(v91, v90);
  }
}

uint64_t sub_10031DEFC()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10031E1A4@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (qword_1007671B0 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10077D230);
  v6 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    *a1 = 1;
    v7 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

void *sub_10031E3B0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_10031E630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10031E67C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListBadgeView.Shape();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListBadgeView.ImageParams();
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() configurationWithScale:2];
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v13 = static UIImage.ttr_systemSymbolImage(named:)();
  if (v13)
  {
    sub_100003540(0, &qword_100772610, UIColor_ptr);
    v14 = static UIColor.ttrSecondaryLabelColor.getter();
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
    v29 = v12;
    v16 = v7;
    v17 = v9;
    v18 = v5;
    v19 = v6;
    v20 = v3;
    v21 = v1;
    v22 = v2;
    v23 = v15;

    v13 = [v23 imageWithSymbolConfiguration:v30];
    v2 = v22;
    v1 = v21;
    v3 = v20;
    v6 = v19;
    v5 = v18;
    v9 = v17;
    v7 = v16;
  }

  v24 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge);
  v25 = v13;
  dispatch thunk of TTRListBadgeView.image.setter();
  (*(v7 + 104))(v9, enum case for TTRListBadgeView.ImageContentMode.center(_:), v6);
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  dispatch thunk of TTRListBadgeView.imageParams.setter();
  (*(v3 + 104))(v5, enum case for TTRListBadgeView.Shape.round(_:), v2);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  v28 = [v26 tertiarySystemFillColor];
  [v24 setTintColor:v28];
}

char *sub_10031EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRListBadgeView();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge;
  v10 = *&v8[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  v13 = v8;
  v14 = v10;
  [v12 bounds];
  [v14 setFrame:?];

  [*&v8[v9] setAutoresizingMask:18];
  [*&v8[v11] addSubview:*&v8[v9]];
  [*&v13[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] setEnabled:0];

  return v13;
}

unint64_t sub_10031EC84()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v11, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0, UIAccessibilityCustomAction_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v12 = v3;
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v4 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UIAccessibilityCustomAction);

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10031F0A8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044E9F0;
  aBlock[3] = &unk_100720588;
  v8 = _Block_copy(aBlock);
  [v6 initWithName:v7 image:v4 actionHandler:v8];

  _Block_release(v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v12;
}

uint64_t sub_10031EF64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v4 = sub_1000C3114(v3);

  swift_unknownObjectRelease();
  return v4 & 1;
}