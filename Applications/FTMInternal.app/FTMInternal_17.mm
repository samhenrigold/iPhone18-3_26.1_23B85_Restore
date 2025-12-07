uint64_t sub_10021B17C()
{
  v1 = (type metadata accessor for Metric(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[13];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_10021B30C()
{
  v1 = *(type metadata accessor for Metric(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100215A1C(v0 + v2, v3);
}

unint64_t sub_10021B398(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_10021B49C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_10021B398(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1001FA690(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_1001FA690(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10021B6C4()
{
  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002F2BC0;
  *(result + 32) = 0xD000000000000016;
  *(result + 40) = 0x80000001002B95F0;
  if (qword_100375018 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = 0x80000001002B96C0;
  if (*(qword_100382500 + 26))
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*(qword_100382500 + 26))
  {
    v1 = 0xE000000000000000;
  }

  *(result + 48) = v2;
  *(result + 56) = v1;
  *(result + 64) = 0xD000000000000011;
  *(result + 72) = 0x80000001002BCE00;
  *(result + 80) = 0xD000000000000013;
  *(result + 88) = 0x80000001002BCE20;
  *(result + 96) = 0xD000000000000011;
  *(result + 104) = 0x80000001002BCEA0;
  *(result + 112) = 0x74635F70637372;
  *(result + 120) = 0xE700000000000000;
  *(result + 128) = 0x74635F306E6365;
  *(result + 136) = 0xE700000000000000;
  return result;
}

_UNKNOWN **sub_10021B808()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v0 = qword_100382500;
  if (*(qword_100382500 + 153) == 1)
  {
    if (*(qword_100382500 + 26))
    {
      return &off_10031A6A8;
    }

    else
    {
      return &off_10031A5A8;
    }
  }

  else
  {
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1002F2BD0;
    result[4] = 0xD000000000000017;
    result[5] = 0x80000001002B92F0;
    result[6] = 0xD000000000000016;
    result[7] = 0x80000001002B9620;
    result[8] = 0xD000000000000011;
    result[9] = 0x80000001002B9640;
    result[10] = 0xD000000000000011;
    result[11] = 0x80000001002B9660;
    strcpy(result + 96, "freq_band_ind");
    *(result + 55) = -4864;
    result[14] = 4801360;
    result[15] = 0xE300000000000000;
    result[16] = 1684955490;
    result[17] = 0xE400000000000000;
    result[18] = 0xD000000000000010;
    result[19] = 0x80000001002B9680;
    result[20] = 0xD000000000000016;
    result[21] = 0x80000001002B96A0;
    result[22] = 0x756C61765F677661;
    result[23] = 0xEF707273725F7365;
    result[24] = 0x756C61765F677661;
    result[25] = 0xEF717273725F7365;
    result[26] = 0xD000000000000010;
    result[27] = 0x80000001002BCE60;
    result[28] = 0xD000000000000010;
    result[29] = 0x80000001002BCE80;
    result[30] = 1886548850;
    result[31] = 0xE400000000000000;
    result[32] = 1903326066;
    result[33] = 0xE400000000000000;
    if (*(v0 + 26))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0xE000000000000000;
      v5 = 0xE000000000000000;
    }

    else
    {
      v4 = 0x80000001002B96C0;
      v2 = 0xD000000000000014;
      v5 = 0xE700000000000000;
      v3 = 0x64695F6C6C6563;
    }

    result[34] = v2;
    result[35] = v4;
    result[36] = v3;
    result[37] = v5;
  }

  return result;
}

_UNKNOWN **sub_10021BA8C()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v0 = qword_100382500;
  if (*(qword_100382500 + 153) == 1)
  {
    if (*(qword_100382500 + 26))
    {
      return &off_10031A8E8;
    }

    else
    {
      return &off_10031A7A8;
    }
  }

  else
  {
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
    result = swift_allocObject();
    *(result + 1) = xmmword_1002F2BE0;
    result[4] = 0xD000000000000017;
    result[5] = 0x80000001002B92F0;
    result[6] = 0xD000000000000016;
    result[7] = 0x80000001002B9620;
    result[8] = 0xD000000000000011;
    result[9] = 0x80000001002B9640;
    result[10] = 0xD000000000000011;
    result[11] = 0x80000001002B9660;
    result[12] = 1684955490;
    result[13] = 0xE400000000000000;
    result[14] = 0xD000000000000010;
    result[15] = 0x80000001002B9680;
    result[16] = 0x6963705F6C6C6563;
    result[17] = 0xE800000000000000;
    result[18] = 0x7273725F6C6C6563;
    result[19] = 0xE900000000000070;
    result[20] = 0x7273725F6C6C6563;
    result[21] = 0xE900000000000071;
    result[22] = 7499379;
    result[23] = 0xE300000000000000;
    result[24] = 0x74635F70727372;
    result[25] = 0xE700000000000000;
    result[26] = 0x74635F726E73;
    result[27] = 0xE600000000000000;
    if (*(v0 + 26))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0xE000000000000000;
      v5 = 0xE000000000000000;
    }

    else
    {
      v4 = 0x80000001002B96C0;
      v2 = 0xD000000000000014;
      v5 = 0xE700000000000000;
      v3 = 0x64695F6C6C6563;
    }

    result[28] = v2;
    result[29] = v4;
    result[30] = v3;
    result[31] = v5;
  }

  return result;
}

uint64_t sub_10021BCA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021BCF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  LOBYTE(v46) = a5;
  object = a1;
  v6 = &unk_10031AA48;
  if ((a1 & 1) == 0)
  {
    v6 = &unk_10031AAA8;
  }

  v7 = *v6;
  v8 = &unk_10031AAB8;
  if (a1)
  {
    v8 = &unk_10031AA58;
  }

  v9 = (v7 & ~(v7 >> 63)) + 1;
  v10 = v8 + 8;
  while (1)
  {
    if (!v7)
    {

      if (object)
      {
        v15 = sub_10021BA8C();
        v16 = v15 + 5;
        v17 = -v15[2];
        v18 = -1;
        while (v17 + v18 != -1)
        {
          if (++v18 >= v15[2])
          {
            goto LABEL_70;
          }

          v19 = String.lowercased()();
          object = v19._object;
          v20 = String.lowercased()();
          if (v19._countAndFlagsBits == v20._countAndFlagsBits && v19._object == v20._object)
          {

LABEL_65:

            object = 18229;
            goto LABEL_26;
          }

          v16 += 2;
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
        v29 = sub_10021B808();
        v30 = v29 + 5;
        v31 = -v29[2];
        v32 = -1;
        while (v31 + v32 != -1)
        {
          if (++v32 >= v29[2])
          {
            goto LABEL_71;
          }

          v33 = String.lowercased()();
          object = v33._object;
          v34 = String.lowercased()();
          if (v33._countAndFlagsBits == v34._countAndFlagsBits && v33._object == v34._object)
          {

LABEL_67:

            object = 4543564;
            goto LABEL_26;
          }

          v30 += 2;
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v36)
          {
            goto LABEL_67;
          }
        }
      }

      object = 5521746;

      goto LABEL_26;
    }

    if (!--v9)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v11 = String.lowercased()();
    v12 = String.lowercased()();
    if (v11._countAndFlagsBits == v12._countAndFlagsBits && v11._object == v12._object)
    {
      break;
    }

    v10 += 16;
    --v7;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_25;
    }
  }

LABEL_25:

  object = 5521746;
LABEL_26:
  if ((a4 & 1) == 0)
  {
LABEL_46:
    if ((v46 & 1) == 0)
    {
      return object;
    }

    goto LABEL_50;
  }

  if (qword_100375018 != -1)
  {
LABEL_72:
    swift_once();
  }

  v23 = 0;
  while (1)
  {
    v24 = v23 + 16;
    if (v23 == 96)
    {
      swift_arrayDestroy();
      goto LABEL_46;
    }

    v25 = String.lowercased()();
    v26 = String.lowercased()();
    if (v25._countAndFlagsBits == v26._countAndFlagsBits && v25._object == v26._object)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v24;
    if (v28)
    {
      goto LABEL_49;
    }
  }

LABEL_49:

  swift_arrayDestroy();
  object = 5067591;
  if (v46)
  {
LABEL_50:
    v46 = object;
    v37 = sub_10021B6C4();
    v38 = v37 + 40;
    object = -*(v37 + 16);
    v39 = -1;
    while (1)
    {
      if (object + v39 == -1)
      {

        return v46;
      }

      if (++v39 >= *(v37 + 16))
      {
        goto LABEL_69;
      }

      v40 = String.lowercased()();
      v41 = String.lowercased()();
      if (v40._countAndFlagsBits == v41._countAndFlagsBits && v40._object == v41._object)
      {
        break;
      }

      v38 += 16;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
        object = 1398033749;

        goto LABEL_61;
      }
    }

    object = 1398033749;

LABEL_61:
  }

  return object;
}

uint64_t sub_10021C2E0(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FTMNetworkInfoDataModel(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10021C33C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FTMNetworkInfoDataModel(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021C3A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021C3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021C448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10021C528()
{
  v1 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView);
  }

  else
  {
    v4 = sub_10021C58C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10021C58C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() colorNamed:v3];

  [v2 setBackgroundColor:v4];
  type metadata accessor for MultiSelectionModalCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v6 = String._bridgeToObjectiveC()();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

  [v2 setDelegate:a1];
  [v2 setDataSource:a1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

id sub_10021C6F4()
{
  v0 = [objc_allocWithZone(UIButton) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2 forState:0];
  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemFontOfSize:50.0 weight:UIFontWeightBold];
    [v4 setFont:v5];
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v0 setTintColor:v7];
  sub_1001A551C(&qword_100377C38, &qword_1002F2E90);
  [v0 addTarget:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() action:"didTapDismiss:" forControlEvents:{64, sub_10021C8F4, 0}];
  swift_unknownObjectRelease();
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_10021C8F4@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v6 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10021D79C;
  *(v4 + 24) = v3;
  *a2 = sub_10021D80C;
  a2[1] = v4;

  return v6;
}

void sub_10021CA84()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_10021C528();
  [v2 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_dismissButton];
  [v4 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() colorNamed:v9];

  [v8 setBackgroundColor:v10];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002F1540;
  v12 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView;
  v13 = [*&v0[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView] leftAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leftAnchor];
  v18 = [v13 constraintEqualToSystemSpacingAfterAnchor:v17 multiplier:0.7];

  *(v11 + 32) = v18;
  v19 = [*&v0[v12] rightAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 rightAnchor];
  v24 = [v19 constraintEqualToSystemSpacingAfterAnchor:v23 multiplier:0.7];

  *(v11 + 40) = v24;
  v25 = [*&v0[v12] bottomAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v11 + 48) = v30;
  v31 = [*&v0[v12] topAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 topAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v11 + 56) = v36;
  v37 = [v6 topAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v11 + 64) = v42;
  v43 = [v6 rightAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 safeAreaLayoutGuide];

  v48 = [v47 rightAnchor];
  v49 = [v43 constraintEqualToAnchor:v48 constant:-15.0];

  *(v11 + 72) = v49;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];
}

id sub_10021D0EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MultiChoiceSelectionModal();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10021D284(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 cellForRowAtIndexPath:isa];

  if (v10)
  {
    type metadata accessor for MultiSelectionModalCell();
    if (swift_dynamicCastClass())
    {
      v5 = sub_1001D1570();
      v6 = [v5 text];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1002826D0(v7, v9);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

unint64_t sub_10021D4DC(void *a1)
{
  v2 = v1;

  v4 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for MultiSelectionModalCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1001D1570();
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(*(v2 + OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_tableViewData) + 16))
    {

      v11 = String._bridgeToObjectiveC()();

      [v9 setText:v11];

      return v8;
    }

    __break(1u);
  }

  else
  {

    v12 = objc_allocWithZone(UITableViewCell);

    return [v12 init];
  }

  return result;
}

uint64_t sub_10021D764()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10021D79C()
{
  v1 = [*(v0 + 16) self];

  return v1;
}

uint64_t sub_10021D7D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021D80C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

id sub_10021DAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10021DB64()
{
  v0 = objc_allocWithZone(type metadata accessor for SPCarrierBundleViewModel(0));

  return [v0 init];
}

uint64_t sub_10021DB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FTMInternal_4(0);
  sub_10021F72C(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

char *sub_10021DD8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10021DB64;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = type metadata accessor for FTMInternal_4(0);
  v4 = v3[5];
  *(a1 + v4) = swift_getKeyPath();
  sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppDelegate();
  UIApplicationDelegateAdaptor.init(_:)();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v5 = qword_100382500;
  *(a1 + v3[7]) = qword_100382500;
  v6 = objc_opt_self();
  swift_retain_n();
  result = [v6 sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for PersistanceStore());
    result = sub_10025C2CC(v5, v8);
    *(a1 + v3[8]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10021DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FTMInternal_4(0);
  v6 = *(a1 + *(v5 + 32));
  v7 = *(a1 + *(v5 + 28));
  type metadata accessor for MainWindowViewModel();
  swift_allocObject();
  v8 = v6;

  v9 = sub_1001D5808(v8, v7);

  type metadata accessor for SPCarrierBundleViewModel(0);
  sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel, &unk_1002F317C);
  v10 = EnvironmentObject.init()();
  v23 = v11;
  v24 = v10;
  sub_1001E1BB4(0, &qword_100377E10, UIPageControl_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [ObjCClassFromMetadata appearance];
  sub_1001E1BB4(0, &qword_100377E18, UIColor_ptr);
  static Color.primary.getter();
  v14 = UIColor.init(_:)();
  [v13 setCurrentPageIndicatorTintColor:v14];

  v15 = [ObjCClassFromMetadata appearance];
  static Color.secondary.getter();
  v16 = UIColor.init(_:)();
  [v15 setPageIndicatorTintColor:v16];

  v17 = *(v9 + 16);
  type metadata accessor for AllMetricsViewModel();
  swift_allocObject();
  v18 = v17;
  v20 = sub_1002327C4(v18, v19);

  v21 = StateObject.wrappedValue.getter();
  result = static ObservableObject.environmentStore.getter();
  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = sub_1001D3A60;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v20;
  *(a2 + 48) = v9;
  *(a2 + 56) = result;
  *(a2 + 64) = v21;
  return result;
}

void sub_10021E104(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ScenePhase.background(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v8 = qword_100382490;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Background", 32, 2, &_mh_execute_header, v8, v9, _swiftEmptyArrayStorage);
    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();
      [v11 removeAWDConfigForAppid:v12];

      v13 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Background successfully removed AWDConfig", 63, 2, &_mh_execute_header, v8, v13, _swiftEmptyArrayStorage);
LABEL_11:

      return;
    }

    v34 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Background ABMWrapper.sharedInstance  returned nil", 72, 2, &_mh_execute_header, v8, v34, _swiftEmptyArrayStorage);
  }

  else if (v7 == enum case for ScenePhase.inactive(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v14 = qword_100382490;
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Inactive", 30, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v11 = v16;
      v17 = String._bridgeToObjectiveC()();
      [v11 removeAWDConfigForAppid:v17];

      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Inactive successfully removed AWDConfig", 61, 2, &_mh_execute_header, v14, v18, _swiftEmptyArrayStorage);
      goto LABEL_11;
    }

    v39 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Inactive ABMWrapper.sharedInstance  returned nil", 70, 2, &_mh_execute_header, v14, v39, _swiftEmptyArrayStorage);
  }

  else if (v7 == enum case for ScenePhase.active(_:))
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v19 = qword_100382490;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Active", 28, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);
    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v21 = qword_100382500;
    if (*(qword_100382500 + 24) == 1)
    {
      sub_10020B25C();
    }

    type metadata accessor for SPCarrierBundleViewModel(0);
    sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel, &unk_1002F317C);
    v22 = StateObject.wrappedValue.getter();
    sub_1002224F0();

    v23 = [objc_opt_self() sharedInstance];
    if (v23)
    {
      v24 = v23;
      v25 = [objc_opt_self() mainBundle];

      v26 = String._bridgeToObjectiveC()();

      v27 = String._bridgeToObjectiveC()();
      v28 = [v25 pathForResource:v26 ofType:v27];

      if (v28)
      {
        v29 = String._bridgeToObjectiveC()();
        v30 = [v24 addAWDConfigForAppId:v29 andProtofFilePath:v28];

        if (v30)
        {
          [v24 listen];
          v31 = String._bridgeToObjectiveC()();
          [v24 querySpecificMetric:v31 triggerRef:9999 triggerType:0 triggerID:*(v21 + 192) profileID:0 metricID:0];

          if (qword_100374F98 != -1)
          {
            swift_once();
          }

          v32 = qword_100382480;
          v33 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("successfully started listening ABM applicationDidBecomeActive", 61, 2, &_mh_execute_header, v32, v33, _swiftEmptyArrayStorage);
        }
      }

      else
      {
        if (qword_100374F98 != -1)
        {
          swift_once();
        }

        v41 = qword_100382480;
        v42 = static os_log_type_t.error.getter();
        os_log(_:dso:log:type:_:)("Metric Log File path doesn't exist", 34, 2, &_mh_execute_header, v41, v42, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v40 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("SwiftUI Scene Phase - Active ABMWrapper.sharedInstance returned nil", 67, 2, &_mh_execute_header, v19, v40, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    if (qword_100375040 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10021F6F4(v35, qword_100382540);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unknown ScenePhase. Ignoring", v38, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10021E8D0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = sub_1001A551C(&qword_100377DB8, &qword_1002F2F40);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  sub_10021F170(v1, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_10021F1D8(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1001A551C(&qword_100377DC0, &qword_1002F2F48);
  sub_10021F2AC();
  WindowGroup.init(id:title:lazyContent:)();
  v9 = &v6[*(v4 + 36)];
  sub_10021DB9C(v9);
  sub_10021F170(v1, &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_10021F1D8(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  v11 = (v9 + *(sub_1001A551C(&qword_100377DE8, &qword_1002F2F58) + 36));
  *v11 = sub_10021F544;
  v11[1] = v10;
  sub_10021F5A8();
  static SceneBuilder.buildBlock<A>(_:)();
  return sub_10021F68C(v6);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FTMInternal_4(0);
  sub_10021FE34(&qword_100377C40, type metadata accessor for FTMInternal_4, &unk_1002F2EC8);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for FTMInternal_4(uint64_t a1)
{
  result = qword_100377D48;
  if (!qword_100377D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10021EBEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001A551C(&qword_100377CE0, &qword_1002F2EA8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10021ED20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001A551C(&qword_100377CE0, &qword_1002F2EA8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10021EE3C(uint64_t a1)
{
  sub_10021EF6C(319);
  if (v1 <= 0x3F)
  {
    sub_10021F000(319, &qword_100377D68, 255, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      sub_10021F000(319, &unk_100377D70, v2, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
      if (v4 <= 0x3F)
      {
        type metadata accessor for HardwareManager();
        if (v5 <= 0x3F)
        {
          type metadata accessor for PersistanceStore();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10021EF6C(uint64_t a1)
{
  if (!qword_100377D58)
  {
    type metadata accessor for SPCarrierBundleViewModel(255);
    sub_10021FE34(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel, &unk_1002F317C);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100377D58);
    }
  }
}

void sub_10021F000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10021F0A4(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10021F170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMInternal_4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMInternal_4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F23C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FTMInternal_4(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10021DECC(v4, a1);
}

unint64_t sub_10021F2AC()
{
  result = qword_100377DC8;
  if (!qword_100377DC8)
  {
    sub_1001A55C8(&qword_100377DC0, &qword_1002F2F48);
    sub_10021F364();
    sub_1001AD0C8(&qword_100377DD8, &qword_100377DE0, &qword_1002F2F50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DC8);
  }

  return result;
}

unint64_t sub_10021F364()
{
  result = qword_100377DD0;
  if (!qword_100377DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DD0);
  }

  return result;
}

uint64_t sub_10021F3B8()
{
  v1 = type metadata accessor for FTMInternal_4(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1001D4A08(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = v1[5];
  sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  v9 = sub_1001A551C(&qword_100377CE8, &qword_1002F2EB0);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

unint64_t sub_10021F5A8()
{
  result = qword_100377DF0;
  if (!qword_100377DF0)
  {
    sub_1001A55C8(&qword_100377DB8, &qword_1002F2F40);
    sub_1001AD0C8(&qword_100377DF8, &qword_100377E00, &unk_1002F2F60, &protocol conformance descriptor for WindowGroup<A>);
    sub_1001AD0C8(&qword_100377E08, &qword_100377DE8, &qword_1002F2F58, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377DF0);
  }

  return result;
}

uint64_t sub_10021F68C(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100377DB8, &qword_1002F2F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021F6F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10021F72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377DB0, &qword_1002F2F38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F79C(uint64_t a1)
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100382490;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Appdelegate - didFinishLaunchingWithOptions", 43, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  sub_1001FD260(_swiftEmptyArrayStorage);
  v3 = String._bridgeToObjectiveC()();
  sub_1001E1BB4(0, &qword_100376D68, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return 1;
}

uint64_t sub_10021FE34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10021FE84(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  v9 = objc_msgSendSuper2(&v33, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    sub_100220304();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 frame];
    Width = CGRectGetWidth(v34);
    if ([v13 presentationSectionIndexForDataSourceSectionIndex:0] && v11)
    {
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v32 = v13;
      if (v11 >> 62)
      {
        goto LABEL_36;
      }

      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      if (v16)
      {
        v17 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *(v15 + 16))
            {
              goto LABEL_35;
            }

            v18 = *(v11 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v16 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_9;
          }

          v21 = [v18 representedElementKind];
          if (!v21)
          {
            break;
          }

          v22 = v15;
          v23 = v21;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v26)
          {
            v15 = v22;
            goto LABEL_12;
          }

          if (v24 == v27 && v26 == v28)
          {

            v15 = v22;
LABEL_28:
            [v19 frame];
            [v19 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v35)}];
            goto LABEL_13;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v15 = v22;
          if (v30)
          {
            goto LABEL_28;
          }

LABEL_13:

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_32;
          }
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_12:

        goto LABEL_13;
      }

LABEL_32:
    }

    else
    {
    }
  }

  else
  {

    return 0;
  }

  return v11;
}

id sub_1002202AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TopHeaderCustomFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100220304()
{
  result = qword_100377E50;
  if (!qword_100377E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100377E50);
  }

  return result;
}

uint64_t sub_100220350()
{
  v0 = sub_1001FCF0C(&off_10031A380);
  sub_1001A551C(&qword_100377E58, &qword_1002F2FE8);
  result = swift_arrayDestroy();
  qword_100382510 = v0;
  return result;
}

uint64_t MetricGroupV2.tech.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricGroupV2.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetricGroupV2.className.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricGroupV2.deviceType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MetricGroupV2.deviceType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 sub_1002204D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002204FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100220544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002205A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = a3;
  v7._object = a4;
  String.append(_:)(v7);

  v8 = a1;
  if (qword_100375028 != -1)
  {
    swift_once();
    v8 = a1;
  }

  v9 = qword_100382510;
  if (!*(qword_100382510 + 16))
  {

    return 0;
  }

  v10 = sub_1001F66B8(v8, a2);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = (*(v9 + 56) + 16 * v10);
  if (*v13 == a3 && v13[1] == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 sub_1002206F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100220704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10022074C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002207C0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = sub_1001A551C(&qword_100377E78, &unk_1002F30A0);
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v48 - v6;
  v50 = sub_1001A551C(&qword_1003755A0, &qword_1002EF750);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v48 - v7;
  v8 = sub_1001A551C(&qword_100377E80, &unk_1002F30B0);
  __chkstk_darwin(v8 - 8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v48 - v11;
  v65 = *a1;
  v66 = v65;
  sub_1001A56A0();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_1001ACFEC(v12, v14, v16 & 1);

  static Color.secondary.getter();
  v53 = Text.foregroundColor(_:)();
  v58 = v22;
  v59 = v23;
  v52 = v24;

  v25 = v19;
  v26 = v50;
  sub_1001ACFEC(v17, v25, v21 & 1);

  v65 = *(a1 + 24);
  v64[0] = *(a1 + 24);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v27 = v51;
  v28 = 1;
  if (v63 == 1)
  {
    v29 = v49;
    ProgressView<>.init<>()();
    (*(v27 + 32))(v62, v29, v26);
    v28 = 0;
  }

  v30 = v62;
  (*(v27 + 56))(v62, v28, 1, v26);
  v31 = swift_allocObject();
  v32 = a1[1];
  *(v31 + 16) = *a1;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(a1 + 4);
  __chkstk_darwin(v31);
  *(&v48 - 2) = a1;
  sub_1001ACE9C(&v66, v64);

  sub_1001AC934(&v65, v64, &qword_100375298, &qword_1002EF0A0);
  sub_1001A551C(&qword_100377E88, &qword_1002F30C0);
  sub_100221D60();
  v33 = v61;
  Button.init(action:label:)();
  v34 = v60;
  sub_1001AC934(v30, v60, &qword_100377E80, &unk_1002F30B0);
  v35 = v55;
  v36 = v56;
  v37 = *(v56 + 16);
  v38 = v33;
  v39 = v57;
  v37(v55, v38, v57);
  v40 = v53;
  v41 = v54;
  v42 = v58;
  *v54 = v53;
  v41[1] = v42;
  v43 = v52 & 1;
  *(v41 + 16) = v52 & 1;
  v41[3] = v59;
  v41[4] = 0;
  *(v41 + 40) = 1;
  v44 = sub_1001A551C(&qword_100377EA8, &qword_1002F30D0);
  sub_1001AC934(v34, v41 + *(v44 + 64), &qword_100377E80, &unk_1002F30B0);
  v37(v41 + *(v44 + 80), v35, v39);
  v45 = v58;
  sub_1001A5174(v40, v58, v43);
  v46 = *(v36 + 8);

  v46(v61, v39);
  sub_1001AC99C(v62, &qword_100377E80, &unk_1002F30B0);
  v46(v35, v39);
  sub_1001AC99C(v60, &qword_100377E80, &unk_1002F30B0);
  sub_1001ACFEC(v40, v45, v43);
}

void sub_100220D78(__int128 *a1)
{
  v2 = sub_1001A551C(&qword_100377EB0, &unk_1002F3108);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  v13 = *(a1 + 24);
  v14 = v13;
  v15 = *(&v13 + 1);
  sub_1001AC934(&v15, &v11, &qword_1003752E0, &qword_1002EF150);
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v11 = v14;
  v10[15] = (v12 & 1) == 0;
  State.wrappedValue.setter();
  sub_1001AC99C(&v14, &qword_100375298, &qword_1002EF0A0);
  v13 = v14;
  State.wrappedValue.getter();
  if (v11 == 1)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v13 = *a1;
    type metadata accessor for MainActor();
    sub_1001AC934(&v14, &v11, &qword_100375298, &qword_1002EF0A0);
    sub_1001ACE9C(&v13, &v11);

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = &protocol witness table for MainActor;
    v8 = a1[1];
    *(v7 + 32) = *a1;
    *(v7 + 48) = v8;
    *(v7 + 64) = *(a1 + 4);
    sub_100221998(0, 0, v4, &unk_1002F3120, v7);
  }

  else
  {
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v9 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj);
    sub_100269AC0();
  }
}

uint64_t sub_100221000@<X0>(uint64_t *a2@<X8>)
{
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.getter();
  v3 = Image.init(systemName:)();
  v4 = static Color.blue.getter();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

uint64_t sub_1002210B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v9;
  v4[35] = v8;

  return _swift_task_switch(sub_10022126C, v9, v8);
}

uint64_t sub_10022126C()
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj);
  v2 = *(v0 + 176);
  *(v0 + 288) = v1;
  *(v0 + 88) = *(v2 + 24);
  *(v0 + 120) = *(v2 + 24);
  v1;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  v5 = *(v0 + 80);
  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_1002213A4;

  return sub_100268B94(v3, v4, v5);
}

uint64_t sub_1002213A4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_100221804;
  }

  else
  {
    v6 = v2[36];

    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_1002214D8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002214D8()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[22];

  sub_1002181D0();
  *(v0 + 13) = *v4;
  v18 = (v2 + 8);
  v19 = (v3 + 8);
  v5 = 4;
  v6 = (v1 + 8);
  do
  {
    v7 = v0[31];
    v20 = v0[32];
    v8 = v0[28];
    v9 = v0[29];
    v24 = v0[26];
    v21 = v0[25];
    v10 = v0[22];
    v11 = v0[23];
    v22 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *v6;
    (*v6)(v7, v9);
    v12 = swift_allocObject();
    v13 = *(v10 + 32);
    v14 = *(v10 + 16);
    *(v12 + 16) = *v10;
    *(v12 + 32) = v14;
    *(v12 + 48) = v13;
    v0[6] = sub_100222010;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10020C96C;
    v0[5] = &unk_10031F638;
    v15 = _Block_copy(v0 + 2);
    sub_1001ACE9C((v0 + 13), (v0 + 17));

    sub_1001AC934((v0 + 11), (v0 + 19), &qword_100375298, &qword_1002EF0A0);
    static DispatchQoS.unspecified.getter();
    v0[21] = _swiftEmptyArrayStorage;
    sub_100222030();
    sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
    sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v15);

    (*v19)(v21, v11);
    (*v18)(v8, v24);
    v23(v20, v9);

    v5 += 4;
  }

  while (v5 != 16);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100221804()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1002218C8(uint64_t a1)
{
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002EED40;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD00000000000002CLL;
  *(v2 + 40) = 0x80000001002BD590;
  print(_:separator:terminator:)();

  v3 = *(*(a1 + 16) + 16);
  sub_10025D620(0);
}

uint64_t sub_100221998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001A551C(&qword_100377EB0, &unk_1002F3108);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001AC934(a3, v22 - v9, &qword_100377EB0, &unk_1002F3108);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1001AC99C(v10, &qword_100377EB0, &unk_1002F3108);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1001AC99C(a3, &qword_100377EB0, &unk_1002F3108);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001AC99C(a3, &qword_100377EB0, &unk_1002F3108);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_100221C44@<D0>(uint64_t a9@<X8>)
{
  v11 = *(v9 + 16);
  v26[0] = *v9;
  v26[1] = v11;
  v27 = *(v9 + 32);
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v12 = sub_1001A551C(&qword_100377E60, &qword_1002F3088);
  sub_1002207C0(v26, (a9 + *(v12 + 44)));
  v13 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a9 + *(sub_1001A551C(&qword_100377E68, &qword_1002F3090) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = static Edge.Set.horizontal.getter();
  v24 = a9 + *(sub_1001A551C(&qword_100377E70, &qword_1002F3098) + 36);
  *v24 = v23;
  result = 0.0;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  return result;
}

unint64_t sub_100221D60()
{
  result = qword_100377E90;
  if (!qword_100377E90)
  {
    sub_1001A55C8(&qword_100377E88, &qword_1002F30C0);
    sub_1001AD0C8(&qword_100377E98, &qword_100377EA0, &qword_1002F30C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377E90);
  }

  return result;
}

uint64_t sub_100221E18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100221E44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100221EC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100221F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001DD5F4;

  return sub_1002210B4(a1, v4, v5, v1 + 32);
}

uint64_t sub_100221FC8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100222018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100222030()
{
  result = qword_1003784A0;
  if (!qword_1003784A0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003784A0);
  }

  return result;
}

unint64_t sub_10022208C()
{
  result = qword_100377EB8;
  if (!qword_100377EB8)
  {
    sub_1001A55C8(&qword_100377E70, &qword_1002F3098);
    sub_100222118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377EB8);
  }

  return result;
}

unint64_t sub_100222118()
{
  result = qword_100377EC0;
  if (!qword_100377EC0)
  {
    sub_1001A55C8(&qword_100377E68, &qword_1002F3090);
    sub_1001AD0C8(&qword_100377EC8, &qword_100377ED0, &qword_1002F3128, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377EC0);
  }

  return result;
}

void sub_1002221D4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RootViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (!v1 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      v5 = [objc_opt_self() colorNamed:v4];

      [v3 setBackgroundColor:v5];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100222470(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002224F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service];
  [v1 isDualSimON];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  static Published.subscript.setter();
  [v1 isSlicingSetup];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  v4 = [v1 isLLPHSApplicationEnabled];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v31) = v4;
  v5 = v3;
  static Published.subscript.setter();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v6 = qword_100382500;
  if (*(qword_100382500 + 24) == 1)
  {
    v7 = [v1 getCarrierBundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *(v6 + 136) = v9;

    v10 = [v1 getCarrierBundleVersion];
    if (v10)
    {
      v11 = v10;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    *(v6 + 128) = v12;
  }

  if (qword_100375048 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10021F6F4(v13, qword_100382558);
  v14 = v5;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v30)
    {
      v19 = 0x64656C62616E45;
    }

    else
    {
      v19 = 0x64656C6261736944;
    }

    if (v30)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xE800000000000000;
    }

    v21 = sub_100223114(v19, v20, &v31);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "DSDS state: %s", v17, 0xCu);
    sub_1001A5654(v18);
  }

  v22 = v14;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v30)
    {
      v27 = 0x64656C62616E45;
    }

    else
    {
      v27 = 0x64656C6261736944;
    }

    if (v30)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE800000000000000;
    }

    v29 = sub_100223114(v27, v28, &v31);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "NRSlicing state: %s", v25, 0xCu);
    sub_1001A5654(v26);
  }
}

uint64_t sub_1002229EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

char *sub_100222AA8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service;
  *&v0[v6] = [objc_allocWithZone(SPCarrierBundleAdapter) init];
  v7 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__dualSim;
  v17 = 0;
  Published.init(initialValue:)();
  v8 = *(v3 + 32);
  v8(&v0[v7], v5, v2);
  v9 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__slicingSetup;
  v17 = 0;
  Published.init(initialValue:)();
  v8(&v0[v9], v5, v2);
  v10 = OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel__llphsTestApp;
  v17 = 0;
  Published.init(initialValue:)();
  v8(&v0[v10], v5, v2);
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = *&v11[OBJC_IVAR____TtC11FTMInternal24SPCarrierBundleViewModel_service];
  v13 = v11;
  [v12 setDelegate:v13];
  sub_1002224F0();

  return v13;
}

uint64_t type metadata accessor for SPCarrierBundleViewModel(uint64_t a1)
{
  result = qword_100377F48;
  if (!qword_100377F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100222DE0(uint64_t a1)
{
  sub_1001CCEDC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100222E84()
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10021F6F4(v0, qword_100382528);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "delegate callback received", v3, 2u);
  }

  sub_1002224F0();
}

uint64_t sub_100222FB8(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return static Published.subscript.setter();
}

unint64_t sub_100223114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1002231E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001A773C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1001A5654(v11);
  return v7;
}

unint64_t sub_1002231E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1002232EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1002232EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100223338(a1, a2);
  sub_100223468(&off_100319ED8);
  return v3;
}

char *sub_100223338(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1001A5A04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001A5A04(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100223468(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100223554(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100223554(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100377290, &qword_1002F2470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100223648()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v1 = [v2 processName];
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_100382518 = v3;
  unk_100382520 = v5;
}

uint64_t sub_100223740(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  sub_100223820(v4, a2);
  sub_10021F6F4(v4, a2);
  if (qword_100375030 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100223820(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100223884()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  result = *(qword_100382500 + 32);
  v1 = result == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (v1 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v2 = 16.0, (result & 1) != 0))
  {
    v2 = 20.0;
  }

  qword_100382570 = *&v2;
  return result;
}

uint64_t sub_100223914()
{
  v1 = v0;
  String.lowercased()();
  sub_1001A56A0();
  v2 = StringProtocol.contains<A>(_:)();

  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = StringProtocol.components<A>(separatedBy:)();
  if (!v3[2])
  {

LABEL_5:
    v8 = *(v1 + 64);
    v9 = *(v1 + 72);
    v10 = objc_opt_self();

    v11 = [v10 mainBundle];
    v16._object = v9;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = v8;
    v13._object = v9;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v16._countAndFlagsBits = v8;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v16)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v4 = v3[4];
  v5 = v3[5];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return 0x20646E6142;
}

uint64_t sub_100223AD4()
{
  v1 = v0;
  v72 = String.lowercased()();
  sub_1001A56A0();
  v2 = StringProtocol.contains<A>(_:)();

  if (v2)
  {
    v3 = v1[16];
    v4 = v1[17];
    v5 = HIBYTE(v4) & 0xF;
    v6 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v3 & 0xFFFFFFFFFFFFLL)
    {
      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v72._countAndFlagsBits = v1[16];
          v72._object = (v4 & 0xFFFFFFFFFFFFFFLL);
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v22 = 0;
                v23 = &v72._countAndFlagsBits + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v22;
                  if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                  {
                    break;
                  }

                  v22 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v5)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_62;
            }

LABEL_129:
            __break(1u);
LABEL_130:
            v70 = v1[16];
            v71 = v1[17];

            sub_1001E248C(v70, v71);
            goto LABEL_107;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v29 = 0;
              v30 = &v72;
              while (1)
              {
                v31 = LOBYTE(v30->_countAndFlagsBits) - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v29;
                if ((v29 * 10) >> 64 != (10 * v29) >> 63)
                {
                  break;
                }

                v29 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  break;
                }

                v30 = (v30 + 1);
                if (!--v5)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

          if (v5)
          {
            if (--v5)
            {
              v14 = 0;
              v15 = &v72._countAndFlagsBits + 1;
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  break;
                }

                v17 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  break;
                }

                ++v15;
                if (!--v5)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = _StringObject.sharedUTF8.getter();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v18 = 0;
                if (v8)
                {
                  v19 = v8 + 1;
                  while (1)
                  {
                    v20 = *v19 - 48;
                    if (v20 > 9)
                    {
                      goto LABEL_62;
                    }

                    v21 = 10 * v18;
                    if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                    {
                      goto LABEL_62;
                    }

                    v18 = v21 + v20;
                    if (__OFADD__(v21, v20))
                    {
                      goto LABEL_62;
                    }

                    ++v19;
                    if (!--v5)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                goto LABEL_54;
              }

              goto LABEL_62;
            }

            goto LABEL_128;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v26 = 0;
              if (v8)
              {
                while (1)
                {
                  v27 = *v8 - 48;
                  if (v27 > 9)
                  {
                    goto LABEL_62;
                  }

                  v28 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v26 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    goto LABEL_62;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_54;
                  }
                }
              }

              goto LABEL_54;
            }

LABEL_62:
            LOBYTE(v5) = 1;
LABEL_63:
            if (v5)
            {
              goto LABEL_64;
            }

LABEL_107:
            v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            v72._object = v63;
LABEL_108:
            v49 = 2051558688;
            goto LABEL_109;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_62;
                  }

                  v13 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_62;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_63;
                  }
                }
              }

LABEL_54:
              LOBYTE(v5) = 0;
              goto LABEL_63;
            }

            goto LABEL_62;
          }

          __break(1u);
        }

        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      sub_1001A5A78(v3, v4, 10);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_107;
      }
    }
  }

LABEL_64:
  v33 = v1[6];
  v34 = v1[7];
  v35 = v33 == 0x696C696261706143 && v34 == 0xEC00000073656974;
  if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v33 == 1347572562 && v34 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v48 = v1[17];
      v72._countAndFlagsBits = v1[16];
      v72._object = v48;

      v49 = 1833067552;
LABEL_109:
      v57 = 0xE400000000000000;
      goto LABEL_110;
    }

    if (v33 == 1364349778 && v34 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_98:
      v56 = v1[17];
      v72._countAndFlagsBits = v1[16];
      v72._object = v56;

      v49 = 4351008;
      v57 = 0xE300000000000000;
LABEL_110:
      String.append(_:)(*&v49);
      goto LABEL_111;
    }

    if (v33 == 0x30524E4953 && v34 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v33 == 0x31524E4953 && v34 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v50 = v1[16];
      v51 = v1[17];

      LOBYTE(v50) = sub_100217ACC(v50, v51);

      if (v50)
      {
        v52 = v1[16];
        v53 = v1[17];
        v72._countAndFlagsBits = 0;

        LOBYTE(v52) = sub_10022464C(v52, v53, &v72);

        if (v52)
        {
          v54 = *&v72._countAndFlagsBits / 10.0;
        }

        else
        {
          v54 = 0.0;
        }

        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1002EED40;
        *(v55 + 56) = &type metadata for Double;
        *(v55 + 64) = &protocol witness table for Double;
        *(v55 + 32) = v54;
        v43 = String.init(format:_:)();
LABEL_73:
        countAndFlagsBits = v43;
        object = v44;
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    if (v33 == 1684955458 && v34 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v1[4] == 18229 && v1[5] == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v72._countAndFlagsBits = 110;
        v72._object = 0xE100000000000000;
        v58 = v1[16];
        v59 = v1[17];

        v60._countAndFlagsBits = v58;
        v60._object = v59;
        String.append(_:)(v60);

LABEL_111:
        countAndFlagsBits = v72._countAndFlagsBits;
        object = v72._object;
        goto LABEL_112;
      }

LABEL_124:
      countAndFlagsBits = v1[16];
      object = v1[17];

      goto LABEL_112;
    }

    if ((v33 != 0x74646977646E6142 || v34 != 0xE900000000000068) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_124;
    }

    if (v1[4] == 18229 && v1[5] == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v68 = v1[9], v72._countAndFlagsBits = v1[8], v72._object = v68, StringProtocol.caseInsensitiveCompare<A>(_:)()))
    {
      v69 = v1[17];
      v72._countAndFlagsBits = v1[16];
      v72._object = v69;

      goto LABEL_108;
    }

    goto LABEL_130;
  }

  v36 = v1[16];
  v37 = v1[17];

  v38 = sub_100217ACC(v36, v37);

  v40 = v1[16];
  v39 = v1[17];
  if (v38)
  {

    v41 = sub_1001E248C(v40, v39);
    if (v42)
    {
      v41 = 0;
    }

    v43 = sub_100224744(v41);
    goto LABEL_73;
  }

  v72._countAndFlagsBits = v1[16];
  v72._object = v39;
  v47 = StringProtocol.caseInsensitiveCompare<A>(_:)();
  if (v47)
  {
    countAndFlagsBits = 0;
  }

  else
  {
    countAndFlagsBits = 16723;
  }

  if (v47)
  {
    object = 0xE000000000000000;
  }

  else
  {
    object = 0xE200000000000000;
  }

LABEL_112:
  v72._countAndFlagsBits = countAndFlagsBits;
  v72._object = object;
  v64 = StringProtocol.components<A>(separatedBy:)();
  if (v64[2])
  {
    v66 = v64[4];
    v65 = v64[5];
  }

  else
  {
    v66 = 0;
    v65 = 0xE000000000000000;
  }

  v1[14] = v66;
  v1[15] = v65;

  return countAndFlagsBits;
}

void *sub_1002243A0()
{

  sub_1001C2EE8(v0 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp);
  return v0;
}

uint64_t sub_100224408()
{
  sub_1002243A0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMAllMetricsModel(uint64_t a1)
{
  result = qword_100378090;
  if (!qword_100378090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002244B4(uint64_t a1)
{
  sub_1001C1F1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100224580@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMAllMetricsModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_1002245C0@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

_BYTE *sub_1002245D0@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL sub_10022464C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_100224744(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 4543564;
      }

      if (a1 != 1)
      {
        return dispatch thunk of CustomStringConvertible.description.getter();
      }

      return 0x41534E204735;
    }

    if (a1 == 2)
    {
      return 16723;
    }

    return 0x41534E2B4153;
  }

  if (a1 <= 5)
  {
    return 0x41534E204735;
  }

  if (a1 == 6 || a1 == 7)
  {
    return 0x41534E2B4153;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

_BYTE *sub_100224828@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_1002248CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1002249D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100378358, &qword_1002F33E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100224AFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224C0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100378320, &qword_1002F33B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224D30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224E64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100377128, &qword_1002F22E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100224F8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100377278, &qword_1002F2458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002250D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100378328, &qword_1002F33B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100225204(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_1003771A8, &qword_1002F2350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100225320(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_1003771E0, &qword_1002F2388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100225470(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100377130, &qword_1002F22F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002255A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100378338, &qword_1002F33C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001A551C(&qword_1003771F8, &qword_1002F23A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100225764(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001A551C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100225940(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A551C(&qword_100378330, &qword_1002F33C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_100225A48(uint64_t a1, uint64_t a2)
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

  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
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

void *sub_100225ACC(uint64_t a1, uint64_t a2)
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

  sub_1001A551C(&qword_100377128, &qword_1002F22E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *sub_100225B64(uint64_t a1, uint64_t a2)
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

  sub_1001A551C(&qword_100377298, &unk_1002F2478);
  v4 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100225C6C(uint64_t a1, uint64_t a2)
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

  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100225D18(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v6)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1001A773C(*(a1 + 56) + 32 * v12, v25);
      v24[0] = v15;
      v24[1] = v14;
      if (!v8)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v21 = 0u;
      v22 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v24, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v22 + 1))
      {
        sub_100201570(&v21, v23);
        sub_100201570(v23, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        sub_100201570(&v21, &v10[32 * v20 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v21, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v25, &v21);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v24);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_100225FE8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorDeploymentType;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v11 = __clz(__rbit64(v5)) | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1001A773C(*(a1 + 56) + 32 * v11, v29);
      v28[0] = v14;
      v28[1] = v13;
      if (!v7)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }

      v25 = 0u;
      v26 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v28, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v26 + 1))
      {
        sub_100201570(&v25, v27);
        sub_100201570(v27, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100224AFC(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        if (v19 >= v18 >> 1)
        {
          v9 = sub_100224AFC((v18 > 1), v19 + 1, 1, v9);
        }

        *(v9 + 2) = v19 + 1;
        sub_100201570(&v25, &v9[32 * v19 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v25, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v29, &v25);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (*(v9 + 2))
  {
    sub_1001A773C((v9 + 32), v30);

    if ((swift_dynamicCast() & 1) != 0 && v28[0] != -1)
    {
      return;
    }
  }

  else
  {
  }

  sub_100226320(a1, &kCTCellMonitorCellRadioAccessTechnology);
  if (!kCTCellMonitorRadioAccessTechnologyNR)
  {
    goto LABEL_41;
  }

  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_100226320(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v6)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1001A773C(*(a1 + 56) + 32 * v12, v25);
      v24[0] = v15;
      v24[1] = v14;
      if (!v8)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v21 = 0u;
      v22 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v24, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v22 + 1))
      {
        sub_100201570(&v21, v23);
        sub_100201570(v23, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        sub_100201570(&v21, &v10[32 * v20 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v21, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v25, &v21);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v26);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_1002265B8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorNeighborType;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v11 = __clz(__rbit64(v5)) | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1001A773C(*(a1 + 56) + 32 * v11, v24);
      v23[0] = v14;
      v23[1] = v13;
      if (!v7)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }

      v20 = 0u;
      v21 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v23, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v21 + 1))
      {
        sub_100201570(&v20, v22);
        sub_100201570(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100224AFC(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        if (v19 >= v18 >> 1)
        {
          v9 = sub_100224AFC((v18 > 1), v19 + 1, 1, v9);
        }

        *(v9 + 2) = v19 + 1;
        sub_100201570(&v20, &v9[32 * v19 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v20, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v24, &v20);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (*(v9 + 2))
  {
    sub_1001A773C((v9 + 32), v23);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_100226854(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorBandwidth;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v11 = __clz(__rbit64(v5)) | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1001A773C(*(a1 + 56) + 32 * v11, v24);
      v23[0] = v14;
      v23[1] = v13;
      if (!v7)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }

      v20 = 0u;
      v21 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v23, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v21 + 1))
      {
        sub_100201570(&v20, v22);
        sub_100201570(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100224AFC(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        if (v19 >= v18 >> 1)
        {
          v9 = sub_100224AFC((v18 > 1), v19 + 1, 1, v9);
        }

        *(v9 + 2) = v19 + 1;
        sub_100201570(&v20, &v9[32 * v19 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v20, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v24, &v20);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (*(v9 + 2))
  {
    sub_1001A773C((v9 + 32), v23);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_100226B28(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorRSRP;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v11 = __clz(__rbit64(v5)) | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1001A773C(*(a1 + 56) + 32 * v11, v24);
      v23[0] = v14;
      v23[1] = v13;
      if (!v7)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }

      v20 = 0u;
      v21 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v23, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v21 + 1))
      {
        sub_100201570(&v20, v22);
        sub_100201570(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100224AFC(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        if (v19 >= v18 >> 1)
        {
          v9 = sub_100224AFC((v18 > 1), v19 + 1, 1, v9);
        }

        *(v9 + 2) = v19 + 1;
        sub_100201570(&v20, &v9[32 * v19 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v20, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v24, &v20);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (*(v9 + 2))
  {
    sub_1001A773C((v9 + 32), v23);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_100226DD4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = kCTCellMonitorRSRQ;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
LABEL_10:
      v11 = __clz(__rbit64(v5)) | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1001A773C(*(a1 + 56) + 32 * v11, v24);
      v23[0] = v14;
      v23[1] = v13;
      if (!v7)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }

      v20 = 0u;
      v21 = 0u;
LABEL_19:
      v5 &= v5 - 1;
      sub_1001AC99C(v23, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v21 + 1))
      {
        sub_100201570(&v20, v22);
        sub_100201570(v22, &v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100224AFC(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        if (v19 >= v18 >> 1)
        {
          v9 = sub_100224AFC((v18 > 1), v19 + 1, 1, v9);
        }

        *(v9 + 2) = v19 + 1;
        sub_100201570(&v20, &v9[32 * v19 + 32]);
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v20, &qword_100375D68, &unk_1002F2370);
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v24, &v20);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (*(v9 + 2))
  {
    sub_1001A773C((v9 + 32), v23);

    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_100227088(uint64_t a1, uint64_t *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a2;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  if (v6)
  {
    while (1)
    {
LABEL_10:
      v12 = __clz(__rbit64(v6)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1001A773C(*(a1 + 56) + 32 * v12, v25);
      v24[0] = v15;
      v24[1] = v14;
      if (!v8)
      {
LABEL_30:
        __break(1u);
        return;
      }

      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v16)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      v21 = 0u;
      v22 = 0u;
LABEL_19:
      v6 &= v6 - 1;
      sub_1001AC99C(v24, &qword_1003771F8, &qword_1002F23A0);
      if (*(&v22 + 1))
      {
        sub_100201570(&v21, v23);
        sub_100201570(v23, &v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100224AFC(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_100224AFC((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        sub_100201570(&v21, &v10[32 * v20 + 32]);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1001AC99C(&v21, &qword_100375D68, &unk_1002F2370);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_18:
    sub_1001A773C(v25, &v21);
    goto LABEL_19;
  }

  while (1)
  {
LABEL_6:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  if (*(v10 + 2))
  {
    sub_1001A773C((v10 + 32), v24);

    swift_dynamicCast();
  }

  else
  {
  }
}

double sub_100227368@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v22 = 1;
  a1(&v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_1001AC934(&v23, &v11, &qword_1003769F0, &qword_1002F1A88);
  sub_1001AC99C(v32, &qword_1003769F0, &qword_1002F1A88);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1002274C8@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.blue.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_1001ACFEC(v2, v4, v6 & 1);

  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_1001ACFEC(v7, v9, v11 & 1);

  v16 = Text.bold()();
  v37 = v17;
  v38 = v16;
  LOBYTE(v7) = v18;
  v41 = v19;
  sub_1001ACFEC(v12, v14, v4 & 1);

  v39 = v7 & 1;
  v40 = static Edge.Set.vertical.getter();
  LOBYTE(v51[0]) = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;

  sub_1001ACFEC(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  *&v44 = v38;
  *(&v44 + 1) = v37;
  LOBYTE(v45) = v39;
  *(&v45 + 1) = v41;
  v46[0] = v40;
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v49 = *v46;
  v50[0] = *&v46[16];
  *(v50 + 9) = *&v46[25];
  v47 = v44;
  v48 = v45;
  v32 = v44;
  v33 = v45;
  v34 = v50[1];
  *(a1 + 48) = v50[0];
  *(a1 + 64) = v34;
  v35 = v49;
  *(a1 + 16) = v33;
  *(a1 + 32) = v35;
  *a1 = v32;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = v12 & 1;
  *(a1 + 104) = v30;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_1001AC934(&v44, v51, &qword_1003755C0, &qword_1002F1E70);
  sub_1001A5174(v25, v27, v12 & 1);

  sub_1001ACFEC(v25, v27, v12 & 1);

  v51[0] = v38;
  v51[1] = v37;
  v52 = v39;
  *v53 = *v43;
  *&v53[3] = *&v43[3];
  v54 = v41;
  v55 = v40;
  *v56 = *v42;
  *&v56[3] = *&v42[3];
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  return sub_1001AC99C(v51, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_100227820@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.blue.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_1001ACFEC(v2, v4, v6 & 1);

  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_1001ACFEC(v7, v9, v11 & 1);

  v16 = Text.bold()();
  v37 = v17;
  v38 = v16;
  LOBYTE(v7) = v18;
  v41 = v19;
  sub_1001ACFEC(v12, v14, v4 & 1);

  v39 = v7 & 1;
  v40 = static Edge.Set.vertical.getter();
  LOBYTE(v51[0]) = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;

  sub_1001ACFEC(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  *&v44 = v38;
  *(&v44 + 1) = v37;
  LOBYTE(v45) = v39;
  *(&v45 + 1) = v41;
  v46[0] = v40;
  memset(&v46[8], 0, 32);
  v46[40] = 1;
  v49 = *v46;
  v50[0] = *&v46[16];
  *(v50 + 9) = *&v46[25];
  v47 = v44;
  v48 = v45;
  v32 = v44;
  v33 = v45;
  v34 = v50[1];
  *(a1 + 48) = v50[0];
  *(a1 + 64) = v34;
  v35 = v49;
  *(a1 + 16) = v33;
  *(a1 + 32) = v35;
  *a1 = v32;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = v12 & 1;
  *(a1 + 104) = v30;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_1001AC934(&v44, v51, &qword_1003755C0, &qword_1002F1E70);
  sub_1001A5174(v25, v27, v12 & 1);

  sub_1001ACFEC(v25, v27, v12 & 1);

  v51[0] = v38;
  v51[1] = v37;
  v52 = v39;
  *v53 = *v43;
  *&v53[3] = *&v43[3];
  v54 = v41;
  v55 = v40;
  *v56 = *v42;
  *&v56[3] = *&v42[3];
  v57 = 0u;
  v58 = 0u;
  v59 = 1;
  return sub_1001AC99C(v51, &qword_1003755C0, &qword_1002F1E70);
}

unint64_t sub_100227B7C()
{
  result = qword_100376A00;
  if (!qword_100376A00)
  {
    sub_1001A55C8(&qword_1003769F8, &qword_1002F1A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A00);
  }

  return result;
}

uint64_t sub_100227BE0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100227C14@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100227CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[1] = a2;
  v29[2] = a4;
  v29[0] = a1;
  v29[3] = a5;
  v6 = sub_1001A551C(&qword_100378398, &qword_1002F3538);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  v9 = sub_1001A551C(&qword_100378388, &qword_1002F3530);
  __chkstk_darwin(v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = sub_1001A551C(&qword_1003783A0, &qword_1002F3540);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = sub_1001A551C(&qword_100378378, &qword_1002F3528);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v29 - v20;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v22 = sub_1001A551C(&qword_1003783A8, &qword_1002F3548);
    sub_100228314(a3, &v8[*(v22 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1001B603C(v8, v11, &qword_100378398, &qword_1002F3538);
    v23 = &v11[*(v9 + 36)];
    v24 = v35;
    *(v23 + 4) = v34;
    *(v23 + 5) = v24;
    *(v23 + 6) = v36;
    v25 = v31;
    *v23 = v30;
    *(v23 + 1) = v25;
    v26 = v33;
    *(v23 + 2) = v32;
    *(v23 + 3) = v26;
    sub_1001B603C(v11, v14, &qword_100378388, &qword_1002F3530);
    sub_1001AC934(v14, v17, &qword_100378388, &qword_1002F3530);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100378370, &qword_100378378, &qword_1002F3528, &protocol conformance descriptor for ScrollView<A>);
    sub_10022F5DC();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v14, &qword_100378388, &qword_1002F3530);
  }

  else
  {
    v28 = static Axis.Set.horizontal.getter();
    __chkstk_darwin(v28);
    sub_10022F5DC();
    ScrollView.init(_:showsIndicators:content:)();
    (*(v19 + 16))(v17, v21, v18);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100378370, &qword_100378378, &qword_1002F3528, &protocol conformance descriptor for ScrollView<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v19 + 8))(v21, v18);
  }
}

__n128 sub_1002281B0@<Q0>(uint64_t a1@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_1001A551C(&qword_100378398, &qword_1002F3538);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_1001A551C(&qword_1003783A8, &qword_1002F3548);
  sub_100228314(a1, &v7[*(v8 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v7, a3, &qword_100378398, &qword_1002F3538);
  v9 = a3 + *(sub_1001A551C(&qword_100378388, &qword_1002F3530) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_100228314@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v59 = a3;
  v53 = sub_1001A551C(&qword_1003783B0, &qword_1002F3550);
  __chkstk_darwin(v53);
  v56 = v47 - v3;
  v54 = sub_1001A551C(&qword_1003783B8, &qword_1002F3558);
  __chkstk_darwin(v54);
  v58 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = v47 - v6;
  __chkstk_darwin(v7);
  v57 = v47 - v8;
  v9 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v9);
  v48 = sub_1001A551C(&qword_1003783C0, &qword_1002F3560);
  __chkstk_darwin(v48);
  v11 = v47 - v10;
  v49 = sub_1001A551C(&qword_1003783C8, &qword_1002F3568);
  __chkstk_darwin(v49);
  v13 = v47 - v12;
  v50 = sub_1001A551C(&qword_1003783D0, &qword_1002F3570);
  __chkstk_darwin(v50);
  v52 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v47 - v16;
  __chkstk_darwin(v18);
  v51 = v47 - v19;
  v20 = qword_100375050;

  if (v20 != -1)
  {
    v21 = swift_once();
  }

  v47[1] = qword_100382570;
  __chkstk_darwin(v21);
  static HorizontalAlignment.center.getter();
  LODWORD(v68) = 0;
  v47[0] = sub_10022F7BC(&qword_1003783D8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022F6AC();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v22 = static Edge.Set.all.getter();
  v23 = &v11[*(v48 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001B603C(v11, v13, &qword_1003783C0, &qword_1002F3560);
  v24 = &v13[*(v49 + 36)];
  v25 = v66;
  *(v24 + 4) = v65;
  *(v24 + 5) = v25;
  *(v24 + 6) = v67;
  v26 = v62;
  *v24 = v61;
  *(v24 + 1) = v26;
  v27 = v64;
  *(v24 + 2) = v63;
  *(v24 + 3) = v27;
  static Color.gray.getter();
  v28 = Color.opacity(_:)();

  v29 = static Edge.Set.all.getter();
  sub_1001B603C(v13, v17, &qword_1003783C8, &qword_1002F3568);
  v30 = &v17[*(v50 + 36)];
  *v30 = v28;
  v30[8] = v29;
  v31 = v51;
  v32 = sub_1001B603C(v17, v51, &qword_1003783D0, &qword_1002F3570);
  __chkstk_darwin(v32);

  static HorizontalAlignment.center.getter();
  LODWORD(v68) = 0;
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1001A551C(&qword_1003783E8, &qword_1002F3578);
  sub_10022F708();
  v33 = v56;
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v34 = static Edge.Set.all.getter();
  v35 = v33 + *(v53 + 36);
  *v35 = v34;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v55;
  sub_1001B603C(v33, v55, &qword_1003783B0, &qword_1002F3550);
  v37 = (v36 + *(v54 + 36));
  v38 = v73;
  v37[4] = v72;
  v37[5] = v38;
  v37[6] = v74;
  v39 = v69;
  *v37 = v68;
  v37[1] = v39;
  v40 = v71;
  v37[2] = v70;
  v37[3] = v40;
  v41 = v57;
  sub_1001B603C(v36, v57, &qword_1003783B8, &qword_1002F3558);
  v42 = v52;
  sub_1001AC934(v31, v52, &qword_1003783D0, &qword_1002F3570);
  v43 = v58;
  sub_1001AC934(v41, v58, &qword_1003783B8, &qword_1002F3558);
  v44 = v59;
  sub_1001AC934(v42, v59, &qword_1003783D0, &qword_1002F3570);
  v45 = sub_1001A551C(&qword_100378400, &unk_1002F3580);
  sub_1001AC934(v43, v44 + *(v45 + 48), &qword_1003783B8, &qword_1002F3558);
  sub_1001AC99C(v41, &qword_1003783B8, &qword_1002F3558);
  sub_1001AC99C(v31, &qword_1003783D0, &qword_1002F3570);
  sub_1001AC99C(v43, &qword_1003783B8, &qword_1002F3558);
  return sub_1001AC99C(v42, &qword_1003783D0, &qword_1002F3570);
}

uint64_t sub_100228B38(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  type metadata accessor for FTMBandDataView(0);
  sub_1001DBBC0();
  sub_10022F7BC(&qword_1003783F8, type metadata accessor for FTMBandDataView, &unk_1002EF9F4);
  return ForEach<>.init(_:id:content:)();
}

void sub_100228C50(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = type metadata accessor for FTMBandInfoDataModel(0);
  v7 = *(v6 - 8);
  sub_1001BB760(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, a3);
  (*(v7 + 56))(a3, 0, 1, v6);
  *(a3 + *(type metadata accessor for FTMBandDataView(0) + 20)) = a2;
}

uint64_t sub_100228D50(uint64_t a1, uint64_t a2)
{
  v2 = 0x41534E20524ELL;
  v3 = *(a1 + 25);
  if (v3 > 3)
  {
    if (*(a1 + 25) <= 5u)
    {
      if (v3 == 4)
      {
        v5 = 0xE500000000000000;
        v4 = 0x4E41525455;
      }

      else
      {
        v5 = 0xE300000000000000;
        v4 = 5067591;
      }

      goto LABEL_18;
    }

    if (v3 == 6)
    {
      v5 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E55;
      goto LABEL_18;
    }

LABEL_16:
    v5 = 0xE300000000000000;
    v4 = 4543564;
    goto LABEL_18;
  }

  if (*(a1 + 25) > 1u)
  {
    if (v3 != 2)
    {
      v5 = 0xE400000000000000;
      v4 = 1398033749;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (*(a1 + 25))
  {
    v4 = 21070;
  }

  else
  {
    v4 = 0x41534E20524ELL;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

LABEL_18:
  v6 = 0xE600000000000000;
  v7 = *(a2 + 25);
  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E55;
  if (v7 != 6)
  {
    v9 = 4543564;
    v8 = 0xE300000000000000;
  }

  v10 = 0xE500000000000000;
  v11 = 0x4E41525455;
  if (v7 != 4)
  {
    v11 = 5067591;
    v10 = 0xE300000000000000;
  }

  if (*(a2 + 25) <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0xE300000000000000;
  v13 = 4543564;
  if (v7 != 2)
  {
    v13 = 1398033749;
    v12 = 0xE400000000000000;
  }

  if (*(a2 + 25))
  {
    v2 = 21070;
    v6 = 0xE200000000000000;
  }

  if (*(a2 + 25) > 1u)
  {
    v2 = v13;
    v6 = v12;
  }

  if (*(a2 + 25) <= 3u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v9;
  }

  if (*(a2 + 25) <= 3u)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  if (v4 == v14 && v5 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t sub_100228F28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10022BC34(v3);
  v1 = v0;

  sub_10022C460(v1);
  static Axis.Set.vertical.getter();
  sub_1001A551C(&qword_100378360, &qword_1002F3520);
  sub_10022F524();
  ScrollView.init(_:showsIndicators:content:)();
}

void sub_100229038(void *a1)
{
  v2 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100229190(v5);
  *a1 = v3;
}

void sub_1002290E0(void *a1)
{
  v2 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002292BC(v5);
  *a1 = v3;
}

void sub_100229190(uint64_t *a1)
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
        type metadata accessor for FTMBandInfoDataModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1002299B0(v8, v9, a1, v4);
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
    sub_1002293E8(0, v2, 1, a1);
  }
}

void sub_1002292BC(uint64_t *a1)
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
        type metadata accessor for FTMBandInfoDataModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FTMBandInfoDataModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10022A5F8(v8, v9, a1, v4);
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
    sub_1002297A0(0, v2, 1, a1);
  }
}

void sub_1002293E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = type metadata accessor for FTMBandInfoDataModel(0);
  __chkstk_darwin(v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v44 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v49 = *a4;
    v43 = v16;
    v20 = v49 + v16 * a3;
LABEL_6:
    v47 = v17;
    v48 = a3;
    v45 = v20;
    v46 = v19;
    while (1)
    {
      sub_1001BB760(v20, v15);
      sub_1001BB760(v17, v11);
      v21 = v15[25];
      v22 = 0xE300000000000000;
      if (v21 > 3)
      {
        if (v15[25] > 5u)
        {
          v27 = 4543564;
          if (v21 == 6)
          {
            v22 = 0xE700000000000000;
            v27 = 0x6E776F6E6B6E55;
          }
        }

        else
        {
          if (v21 == 4)
          {
            v27 = 0x4E41525455;
          }

          else
          {
            v27 = 5067591;
          }

          if (v21 == 4)
          {
            v22 = 0xE500000000000000;
          }

          else
          {
            v22 = 0xE300000000000000;
          }
        }
      }

      else
      {
        v23 = 1398033749;
        if (v21 == 2)
        {
          v23 = 4543564;
        }

        v24 = 0xE400000000000000;
        if (v21 == 2)
        {
          v24 = 0xE300000000000000;
        }

        v25 = 0x41534E20524ELL;
        if (v15[25])
        {
          v25 = 21070;
        }

        v26 = 0xE600000000000000;
        if (v15[25])
        {
          v26 = 0xE200000000000000;
        }

        if (v15[25] <= 1u)
        {
          v27 = v25;
        }

        else
        {
          v27 = v23;
        }

        if (v15[25] <= 1u)
        {
          v22 = v26;
        }

        else
        {
          v22 = v24;
        }
      }

      v28 = v11[25];
      v29 = 0x6E776F6E6B6E55;
      if (v28 != 6)
      {
        v29 = 4543564;
      }

      v30 = 0xE700000000000000;
      if (v28 != 6)
      {
        v30 = 0xE300000000000000;
      }

      v31 = 0x4E41525455;
      if (v28 != 4)
      {
        v31 = 5067591;
      }

      v32 = 0xE500000000000000;
      if (v28 != 4)
      {
        v32 = 0xE300000000000000;
      }

      if (v11[25] <= 5u)
      {
        v29 = v31;
        v30 = v32;
      }

      v33 = 1398033749;
      if (v28 == 2)
      {
        v33 = 4543564;
      }

      v34 = 0xE400000000000000;
      if (v28 == 2)
      {
        v34 = 0xE300000000000000;
      }

      v35 = 0x41534E20524ELL;
      if (v11[25])
      {
        v35 = 21070;
      }

      v36 = 0xE600000000000000;
      if (v11[25])
      {
        v36 = 0xE200000000000000;
      }

      if (v11[25] <= 1u)
      {
        v33 = v35;
        v34 = v36;
      }

      if (v11[25] <= 3u)
      {
        v37 = v33;
      }

      else
      {
        v37 = v29;
      }

      if (v11[25] <= 3u)
      {
        v38 = v34;
      }

      else
      {
        v38 = v30;
      }

      if (v27 == v37 && v22 == v38)
      {

        sub_1001BB7C4(v11);
        sub_1001BB7C4(v15);
LABEL_5:
        a3 = v48 + 1;
        v17 = v47 + v43;
        v19 = v46 - 1;
        v20 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return;
        }

        goto LABEL_6;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1001BB7C4(v11);
      sub_1001BB7C4(v15);
      if ((v39 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v40 = v50;
      sub_1001BB4B8(v20, v50);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001BB4B8(v40, v17);
      v17 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1002297A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for FTMBandInfoDataModel(0);
  __chkstk_darwin(v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1001BB760(v22, v16);
      sub_1001BB760(v19, v12);
      if (v16[24])
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v16 + 2);
      }

      if (v12[24])
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v12 + 2);
      }

      sub_1001BB7C4(v12);
      sub_1001BB7C4(v16);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1001BB4B8(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001BB4B8(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002299B0(uint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v146 = a1;
  v160 = type metadata accessor for FTMBandInfoDataModel(0);
  v156 = *(v160 - 8);
  __chkstk_darwin(v160);
  v149 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v159 = &v141 - v11;
  __chkstk_darwin(v12);
  v161 = &v141 - v13;
  __chkstk_darwin(v14);
  v16 = &v141 - v15;
  __chkstk_darwin(v17);
  v154 = (&v141 - v18);
  __chkstk_darwin(v19);
  v157 = &v141 - v20;
  __chkstk_darwin(v21);
  v143 = &v141 - v22;
  __chkstk_darwin(v23);
  v142 = &v141 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_216:
    v5 = *v146;
    if (!*v146)
    {
      goto LABEL_258;
    }

    a4 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v135 = a4;
    }

    else
    {
LABEL_252:
      v135 = sub_1001FA564(a4);
    }

    v162 = v135;
    v136 = *(v135 + 2);
    if (v136 >= 2)
    {
      while (*a3)
      {
        a4 = v136 - 1;
        v137 = *&v135[16 * v136];
        v138 = v135;
        v139 = *&v135[16 * v136 + 24];
        sub_10022AF2C(*a3 + *(v156 + 72) * v137, *a3 + *(v156 + 72) * *&v135[16 * v136 + 16], *a3 + *(v156 + 72) * v139, v5);
        if (v6)
        {
          goto LABEL_230;
        }

        if (v139 < v137)
        {
          goto LABEL_245;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_1001FA564(v138);
        }

        if (v136 - 2 >= *(v138 + 2))
        {
          goto LABEL_246;
        }

        v140 = &v138[16 * v136];
        *v140 = v137;
        *(v140 + 1) = v139;
        v162 = v138;
        sub_1001FA4D8(a4);
        v135 = v162;
        v136 = *(v162 + 2);
        if (v136 <= 1)
        {
          goto LABEL_230;
        }
      }

      goto LABEL_256;
    }

    goto LABEL_230;
  }

  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v145 = a4;
  v147 = a3;
  while (1)
  {
    v150 = v27;
    if (v26 + 1 < v25)
    {
      v158 = v25;
      v28 = *a3;
      v29 = *(v156 + 72);
      v5 = *a3 + v29 * (v26 + 1);
      v30 = v142;
      sub_1001BB760(v5, v142);
      v31 = v28 + v29 * v26;
      v32 = v26;
      v33 = v143;
      sub_1001BB760(v31, v143);
      LODWORD(v155) = sub_100228D50(v30, v33);
      if (!v6)
      {
        sub_1001BB7C4(v33);
        sub_1001BB7C4(v30);
        v144 = v32;
        v34 = v32 + 2;
        v35 = v28 + v29 * (v32 + 2);
        a3 = v154;
        while (1)
        {
          v37 = v158;
          if (v158 == v34)
          {
            break;
          }

          v38 = v157;
          sub_1001BB760(v35, v157);
          sub_1001BB760(v5, a3);
          v39 = *(v38 + 25);
          if (v39 > 3)
          {
            v42 = 0x41534E20524ELL;
            if (*(v38 + 25) > 5u)
            {
              if (v39 == 6)
              {
                v45 = 0x6E776F6E6B6E55;
              }

              else
              {
                v45 = 4543564;
              }

              if (v39 == 6)
              {
                v46 = 0xE700000000000000;
              }

              else
              {
                v46 = 0xE300000000000000;
              }
            }

            else if (v39 == 4)
            {
              v46 = 0xE500000000000000;
              v45 = 0x4E41525455;
            }

            else
            {
              v46 = 0xE300000000000000;
              v45 = 5067591;
            }
          }

          else
          {
            if (v39 == 2)
            {
              v40 = 4543564;
            }

            else
            {
              v40 = 1398033749;
            }

            if (v39 == 2)
            {
              v41 = 0xE300000000000000;
            }

            else
            {
              v41 = 0xE400000000000000;
            }

            v42 = 0x41534E20524ELL;
            if (*(v38 + 25))
            {
              v43 = 21070;
            }

            else
            {
              v43 = 0x41534E20524ELL;
            }

            if (*(v38 + 25))
            {
              v44 = 0xE200000000000000;
            }

            else
            {
              v44 = 0xE600000000000000;
            }

            if (*(v38 + 25) <= 1u)
            {
              v45 = v43;
            }

            else
            {
              v45 = v40;
            }

            if (*(v38 + 25) <= 1u)
            {
              v46 = v44;
            }

            else
            {
              v46 = v41;
            }
          }

          v47 = *(a3 + 25);
          v48 = 0x6E776F6E6B6E55;
          if (v47 != 6)
          {
            v48 = 4543564;
          }

          v49 = 0xE700000000000000;
          if (v47 != 6)
          {
            v49 = 0xE300000000000000;
          }

          v50 = 0x4E41525455;
          if (v47 != 4)
          {
            v50 = 5067591;
          }

          v51 = 0xE500000000000000;
          if (v47 != 4)
          {
            v51 = 0xE300000000000000;
          }

          if (*(a3 + 25) <= 5u)
          {
            v48 = v50;
            v49 = v51;
          }

          if (v47 == 2)
          {
            v52 = 4543564;
          }

          else
          {
            v52 = 1398033749;
          }

          if (v47 == 2)
          {
            v53 = 0xE300000000000000;
          }

          else
          {
            v53 = 0xE400000000000000;
          }

          if (*(a3 + 25))
          {
            v42 = 21070;
            v54 = 0xE200000000000000;
          }

          else
          {
            v54 = 0xE600000000000000;
          }

          if (*(a3 + 25) <= 1u)
          {
            v52 = v42;
            v53 = v54;
          }

          if (*(a3 + 25) <= 3u)
          {
            v55 = v52;
          }

          else
          {
            v55 = v48;
          }

          if (*(a3 + 25) <= 3u)
          {
            v56 = v53;
          }

          else
          {
            v56 = v49;
          }

          if (v45 == v55 && v46 == v56)
          {
            v36 = 0;
          }

          else
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          a3 = v154;
          sub_1001BB7C4(v154);
          sub_1001BB7C4(v157);
          ++v34;
          v35 += v29;
          v5 += v29;
          if ((v155 ^ v36))
          {
            v37 = v34 - 1;
            break;
          }
        }

        v26 = v144;
        a4 = v145;
        if ((v155 & 1) == 0)
        {
          goto LABEL_84;
        }

        if (v37 < v144)
        {
          goto LABEL_251;
        }

        if (v144 < v37)
        {
          v141 = 0;
          v57 = v29 * (v37 - 1);
          v5 = v37 * v29;
          v158 = v37;
          v58 = v144;
          v59 = v144 * v29;
          do
          {
            if (v58 != --v37)
            {
              v60 = *v147;
              if (!*v147)
              {
                goto LABEL_255;
              }

              sub_1001BB4B8(v60 + v59, v149);
              if (v59 < v57 || v60 + v59 >= (v60 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001BB4B8(v149, v60 + v57);
            }

            ++v58;
            v57 -= v29;
            v5 -= v29;
            v59 += v29;
          }

          while (v58 < v37);
          v6 = v141;
          a3 = v147;
          v26 = v144;
          a4 = v145;
          v37 = v158;
        }

        else
        {
LABEL_84:
          a3 = v147;
        }

        goto LABEL_86;
      }

      sub_1001BB7C4(v33);
      sub_1001BB7C4(v30);
LABEL_230:

      return;
    }

    v37 = v26 + 1;
LABEL_86:
    v61 = a3[1];
    if (v37 >= v61)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v37, v26))
    {
      goto LABEL_248;
    }

    if (v37 - v26 >= a4)
    {
LABEL_95:
      v5 = v37;
      if (v37 < v26)
      {
        goto LABEL_247;
      }

      goto LABEL_96;
    }

    if (__OFADD__(v26, a4))
    {
      goto LABEL_249;
    }

    if (v26 + a4 >= v61)
    {
      v5 = a3[1];
    }

    else
    {
      v5 = v26 + a4;
    }

    if (v5 < v26)
    {
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v37 == v5)
    {
      goto LABEL_95;
    }

    v141 = v6;
    v107 = *a3;
    v108 = *(v156 + 72);
    v109 = *a3 + v108 * (v37 - 1);
    v110 = v26;
    v111 = -v108;
    v144 = v110;
    v112 = v110 - v37;
    v148 = v108;
    v113 = v107 + v37 * v108;
    v151 = v5;
LABEL_148:
    v158 = v37;
    v152 = v113;
    v153 = v112;
    v114 = v113;
    v155 = v109;
    v115 = v109;
LABEL_149:
    sub_1001BB760(v114, v16);
    sub_1001BB760(v115, v161);
    v116 = v16[25];
    v117 = 0xE300000000000000;
    if (v116 > 3)
    {
      v120 = 0x41534E20524ELL;
      if (v16[25] > 5u)
      {
        v123 = 4543564;
        if (v116 == 6)
        {
          v117 = 0xE700000000000000;
          v123 = 0x6E776F6E6B6E55;
        }
      }

      else
      {
        v123 = v116 == 4 ? 0x4E41525455 : 5067591;
        v117 = v116 == 4 ? 0xE500000000000000 : 0xE300000000000000;
      }
    }

    else
    {
      v118 = v116 == 2 ? 4543564 : 1398033749;
      v119 = v116 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v120 = 0x41534E20524ELL;
      v121 = v16[25] ? 21070 : 0x41534E20524ELL;
      v122 = v16[25] ? 0xE200000000000000 : 0xE600000000000000;
      v123 = v16[25] <= 1u ? v121 : v118;
      v117 = v16[25] <= 1u ? v122 : v119;
    }

    v124 = *(v161 + 25);
    v125 = 0x6E776F6E6B6E55;
    if (v124 != 6)
    {
      v125 = 4543564;
    }

    v126 = 0xE700000000000000;
    if (v124 != 6)
    {
      v126 = 0xE300000000000000;
    }

    v127 = 0x4E41525455;
    if (v124 != 4)
    {
      v127 = 5067591;
    }

    v128 = 0xE500000000000000;
    if (v124 != 4)
    {
      v128 = 0xE300000000000000;
    }

    if (*(v161 + 25) <= 5u)
    {
      v125 = v127;
      v126 = v128;
    }

    if (v124 == 2)
    {
      v129 = 4543564;
    }

    else
    {
      v129 = 1398033749;
    }

    if (v124 == 2)
    {
      v130 = 0xE300000000000000;
    }

    else
    {
      v130 = 0xE400000000000000;
    }

    if (*(v161 + 25))
    {
      v120 = 21070;
      v131 = 0xE200000000000000;
    }

    else
    {
      v131 = 0xE600000000000000;
    }

    if (*(v161 + 25) <= 1u)
    {
      v129 = v120;
      v130 = v131;
    }

    v132 = *(v161 + 25) <= 3u ? v129 : v125;
    a4 = *(v161 + 25) <= 3u ? v130 : v126;
    if (v123 != v132 || v117 != a4)
    {
      break;
    }

    sub_1001BB7C4(v161);
    sub_1001BB7C4(v16);
LABEL_147:
    v37 = v158 + 1;
    v109 = v155 + v148;
    v112 = v153 - 1;
    v113 = v152 + v148;
    v5 = v151;
    if (v158 + 1 != v151)
    {
      goto LABEL_148;
    }

    v6 = v141;
    a3 = v147;
    v26 = v144;
    if (v151 < v144)
    {
      goto LABEL_247;
    }

LABEL_96:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v150;
    }

    else
    {
      v27 = sub_1001FA578(0, *(v150 + 2) + 1, 1, v150);
    }

    a4 = *(v27 + 2);
    v62 = *(v27 + 3);
    v63 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v27 = sub_1001FA578((v62 > 1), a4 + 1, 1, v27);
    }

    *(v27 + 2) = v63;
    v64 = &v27[16 * a4];
    *(v64 + 4) = v26;
    *(v64 + 5) = v5;
    v151 = v5;
    v5 = *v146;
    if (!*v146)
    {
      goto LABEL_257;
    }

    if (a4)
    {
      while (2)
      {
        v65 = v63 - 1;
        if (v63 >= 4)
        {
          v70 = &v27[16 * v63 + 32];
          v71 = *(v70 - 64);
          v72 = *(v70 - 56);
          v76 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          if (v76)
          {
            goto LABEL_234;
          }

          v75 = *(v70 - 48);
          v74 = *(v70 - 40);
          v76 = __OFSUB__(v74, v75);
          v68 = v74 - v75;
          v69 = v76;
          if (v76)
          {
            goto LABEL_235;
          }

          v77 = &v27[16 * v63];
          v79 = *v77;
          v78 = *(v77 + 1);
          v76 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v76)
          {
            goto LABEL_237;
          }

          v76 = __OFADD__(v68, v80);
          v81 = v68 + v80;
          if (v76)
          {
            goto LABEL_240;
          }

          if (v81 >= v73)
          {
            v99 = &v27[16 * v65 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v76 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v76)
            {
              goto LABEL_244;
            }

            if (v68 < v102)
            {
              v65 = v63 - 2;
            }
          }

          else
          {
LABEL_115:
            if (v69)
            {
              goto LABEL_236;
            }

            v82 = &v27[16 * v63];
            v84 = *v82;
            v83 = *(v82 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_239;
            }

            v88 = &v27[16 * v65 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_242;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_243;
            }

            if (v86 + v91 < v68)
            {
              goto LABEL_129;
            }

            if (v68 < v91)
            {
              v65 = v63 - 2;
            }
          }
        }

        else
        {
          if (v63 == 3)
          {
            v66 = *(v27 + 4);
            v67 = *(v27 + 5);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
            goto LABEL_115;
          }

          v92 = &v27[16 * v63];
          v94 = *v92;
          v93 = *(v92 + 1);
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_129:
          if (v87)
          {
            goto LABEL_238;
          }

          v95 = &v27[16 * v65];
          v97 = *(v95 + 4);
          v96 = *(v95 + 5);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_241;
          }

          if (v98 < v86)
          {
            break;
          }
        }

        a4 = v65 - 1;
        if (v65 - 1 >= v63)
        {
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        if (!*a3)
        {
          goto LABEL_254;
        }

        v103 = v27;
        v104 = *&v27[16 * a4 + 32];
        v105 = *&v27[16 * v65 + 40];
        sub_10022AF2C(*a3 + *(v156 + 72) * v104, *a3 + *(v156 + 72) * *&v27[16 * v65 + 32], *a3 + *(v156 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_230;
        }

        if (v105 < v104)
        {
          goto LABEL_232;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1001FA564(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_233;
        }

        v106 = &v103[16 * a4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v162 = v103;
        sub_1001FA4D8(v65);
        v27 = v162;
        v63 = *(v162 + 2);
        if (v63 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v25 = a3[1];
    v26 = v151;
    a4 = v145;
    if (v151 >= v25)
    {
      goto LABEL_216;
    }
  }

  v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1001BB7C4(v161);
  sub_1001BB7C4(v16);
  if ((v133 & 1) == 0)
  {
    goto LABEL_147;
  }

  if (v107)
  {
    a4 = v159;
    sub_1001BB4B8(v114, v159);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001BB4B8(a4, v115);
    v115 += v111;
    v114 += v111;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_147;
    }

    goto LABEL_149;
  }

  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
}

void sub_10022A5F8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v136 = type metadata accessor for FTMBandInfoDataModel(0);
  v130 = *(v136 - 8);
  __chkstk_darwin(v136);
  v124 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v135 = &v116 - v11;
  __chkstk_darwin(v12);
  v14 = &v116 - v13;
  __chkstk_darwin(v15);
  v17 = &v116 - v16;
  __chkstk_darwin(v18);
  v127 = &v116 - v19;
  __chkstk_darwin(v20);
  v126 = &v116 - v21;
  __chkstk_darwin(v22);
  v119 = &v116 - v23;
  __chkstk_darwin(v24);
  v118 = &v116 - v25;
  v132 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_116:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_154;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_148:
      v28 = sub_1001FA564(v28);
    }

    v137 = v28;
    v112 = *(v28 + 2);
    if (v112 >= 2)
    {
      while (*v132)
      {
        v113 = *&v28[16 * v112];
        v114 = *&v28[16 * v112 + 24];
        sub_10022B740(*v132 + *(v130 + 72) * v113, *v132 + *(v130 + 72) * *&v28[16 * v112 + 16], *v132 + *(v130 + 72) * v114, v5);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v114 < v113)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1001FA564(v28);
        }

        if (v112 - 2 >= *(v28 + 2))
        {
          goto LABEL_142;
        }

        v115 = &v28[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v137 = v28;
        sub_1001FA4D8(v112 - 1);
        v28 = v137;
        v112 = *(v137 + 2);
        if (v112 <= 1)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_152;
    }

LABEL_126:

    return;
  }

  v117 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v125 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v30 >= v26)
    {
      v46 = v30;
    }

    else
    {
      v134 = v26;
      v120 = v6;
      v31 = *v132;
      v6 = *(v130 + 72);
      v5 = *v132 + v6 * v30;
      v32 = v118;
      sub_1001BB760(v5, v118);
      v33 = v119;
      sub_1001BB760(v31 + v6 * v29, v119);
      if (*(v32 + 24))
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v32 + 16);
      }

      v35 = *(v33 + 16);
      if (*(v33 + 24))
      {
        v35 = 0;
      }

      v128 = v35;
      v129 = v34;
      sub_1001BB7C4(v33);
      sub_1001BB7C4(v32);
      v121 = v29;
      v36 = v29 + 2;
      v131 = v6;
      v37 = v31 + v6 * v36;
      while (v134 != v36)
      {
        LODWORD(v133) = v129 < v128;
        v38 = v14;
        v39 = v126;
        sub_1001BB760(v37, v126);
        v40 = v127;
        sub_1001BB760(v5, v127);
        v6 = v28;
        if (*(v39 + 24))
        {
          v41 = 0;
        }

        else
        {
          v41 = *(v39 + 16);
        }

        if (*(v40 + 24))
        {
          v42 = 0;
        }

        else
        {
          v42 = *(v40 + 16);
        }

        sub_1001BB7C4(v40);
        v43 = v39;
        v14 = v38;
        v17 = v125;
        sub_1001BB7C4(v43);
        v44 = v41 < v42;
        v28 = v6;
        v45 = !v44;
        ++v36;
        v37 += v131;
        v5 += v131;
        if (((v133 ^ v45) & 1) == 0)
        {
          v46 = v36 - 1;
          goto LABEL_25;
        }
      }

      v46 = v134;
LABEL_25:
      v29 = v121;
      if (v129 >= v128)
      {
        goto LABEL_38;
      }

      if (v46 < v121)
      {
        goto LABEL_145;
      }

      if (v121 >= v46)
      {
LABEL_38:
        v6 = v120;
      }

      else
      {
        v116 = v28;
        v47 = v131 * (v46 - 1);
        v48 = v46;
        v49 = v46 * v131;
        v134 = v46;
        v50 = v121 * v131;
        do
        {
          if (v29 != --v48)
          {
            v51 = *v132;
            if (!*v132)
            {
              goto LABEL_151;
            }

            v5 = v51 + v50;
            sub_1001BB4B8(v51 + v50, v124);
            if (v50 < v47 || v5 >= v51 + v49)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1001BB4B8(v124, v51 + v47);
          }

          ++v29;
          v47 -= v131;
          v49 -= v131;
          v50 += v131;
        }

        while (v29 < v48);
        v6 = v120;
        v29 = v121;
        v28 = v116;
        v46 = v134;
      }
    }

    v52 = v132[1];
    if (v46 < v52)
    {
      if (__OFSUB__(v46, v29))
      {
        goto LABEL_144;
      }

      if (v46 - v29 < v117)
      {
        if (__OFADD__(v29, v117))
        {
          goto LABEL_146;
        }

        if (v29 + v117 >= v52)
        {
          v53 = v132[1];
        }

        else
        {
          v53 = v29 + v117;
        }

        if (v53 < v29)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (v46 != v53)
        {
          break;
        }
      }
    }

    v54 = v46;
    if (v46 < v29)
    {
      goto LABEL_143;
    }

LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1001FA578(0, *(v28 + 2) + 1, 1, v28);
    }

    v56 = *(v28 + 2);
    v55 = *(v28 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v28 = sub_1001FA578((v55 > 1), v56 + 1, 1, v28);
    }

    *(v28 + 2) = v57;
    v58 = &v28[16 * v56];
    *(v58 + 4) = v29;
    *(v58 + 5) = v54;
    v128 = v54;
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_153;
    }

    if (v56)
    {
      while (1)
      {
        v59 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v28 + 4);
          v61 = *(v28 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_69:
          if (v63)
          {
            goto LABEL_132;
          }

          v76 = &v28[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_135;
          }

          v82 = &v28[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_139;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v57 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v86 = &v28[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_83:
        if (v81)
        {
          goto LABEL_134;
        }

        v89 = &v28[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_137;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_90:
        v97 = v59 - 1;
        if (v59 - 1 >= v57)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v132)
        {
          goto LABEL_150;
        }

        v98 = *&v28[16 * v97 + 32];
        v99 = *&v28[16 * v59 + 40];
        sub_10022B740(*v132 + *(v130 + 72) * v98, *v132 + *(v130 + 72) * *&v28[16 * v59 + 32], *v132 + *(v130 + 72) * v99, v5);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v99 < v98)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1001FA564(v28);
        }

        if (v97 >= *(v28 + 2))
        {
          goto LABEL_129;
        }

        v100 = &v28[16 * v97];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v137 = v28;
        sub_1001FA4D8(v59);
        v28 = v137;
        v57 = *(v137 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v28[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_130;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_131;
      }

      v71 = &v28[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_133;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_136;
      }

      if (v75 >= v67)
      {
        v93 = &v28[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_140;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v26 = v132[1];
    v27 = v128;
    if (v128 >= v26)
    {
      goto LABEL_116;
    }
  }

  v116 = v28;
  v101 = *v132;
  v102 = *(v130 + 72);
  v103 = *v132 + v102 * (v46 - 1);
  v104 = v29;
  v105 = -v102;
  v120 = v6;
  v121 = v104;
  v106 = (v104 - v46);
  v123 = v102;
  v5 = v101 + v46 * v102;
  v128 = v53;
LABEL_101:
  v133 = v103;
  v134 = v46;
  v129 = v5;
  v131 = v106;
  v107 = v106;
  while (1)
  {
    sub_1001BB760(v5, v17);
    sub_1001BB760(v103, v14);
    if (v17[24])
    {
      v108 = 0;
    }

    else
    {
      v108 = *(v17 + 2);
    }

    if (v14[24])
    {
      v109 = 0;
    }

    else
    {
      v109 = *(v14 + 2);
    }

    sub_1001BB7C4(v14);
    sub_1001BB7C4(v17);
    if (v108 >= v109)
    {
LABEL_100:
      v46 = v134 + 1;
      v103 = v133 + v123;
      v106 = v131 - 1;
      v54 = v128;
      v5 = v129 + v123;
      if (v134 + 1 != v128)
      {
        goto LABEL_101;
      }

      v6 = v120;
      v29 = v121;
      v28 = v116;
      if (v128 < v121)
      {
        goto LABEL_143;
      }

      goto LABEL_50;
    }

    if (!v101)
    {
      break;
    }

    v110 = v135;
    sub_1001BB4B8(v5, v135);
    swift_arrayInitWithTakeFrontToBack();
    sub_1001BB4B8(v110, v103);
    v103 += v105;
    v5 += v105;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_10022AF2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = type metadata accessor for FTMBandInfoDataModel(0);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v75 - v10;
  __chkstk_darwin(v11);
  v13 = &v75 - v12;
  __chkstk_darwin(v14);
  v16 = &v75 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_166;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_167;
  }

  v20 = (a2 - a1) / v18;
  v84 = a1;
  v83 = a4;
  v79 = v18;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v77;
    }

    else
    {
      v23 = v77;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v78 = a2;
    v47 = a4 + v22;
    if (v22 >= 1)
    {
      v48 = -v79;
      v49 = a4 + v22;
      do
      {
        v50 = v47;
        v51 = v78;
        v78 += v48;
        v79 = v51;
        v75 = v50;
        while (1)
        {
          if (v51 <= a1)
          {
            v84 = v51;
            v82 = v75;
            goto LABEL_164;
          }

          v52 = a3;
          v76 = v50;
          v53 = v48;
          v50 = v49 + v48;
          v54 = v49 + v48;
          v55 = v80;
          sub_1001BB760(v54, v80);
          sub_1001BB760(v78, v23);
          v56 = *(v55 + 25);
          v57 = 0xE300000000000000;
          if (v56 > 3)
          {
            if (*(v55 + 25) > 5u)
            {
              v62 = 4543564;
              if (v56 == 6)
              {
                v57 = 0xE700000000000000;
                v62 = 0x6E776F6E6B6E55;
              }
            }

            else
            {
              v62 = v56 == 4 ? 0x4E41525455 : 5067591;
              v57 = v56 == 4 ? 0xE500000000000000 : 0xE300000000000000;
            }
          }

          else
          {
            v58 = 1398033749;
            if (v56 == 2)
            {
              v58 = 4543564;
            }

            v59 = 0xE400000000000000;
            if (v56 == 2)
            {
              v59 = 0xE300000000000000;
            }

            v60 = 0x41534E20524ELL;
            if (*(v55 + 25))
            {
              v60 = 21070;
            }

            v61 = 0xE600000000000000;
            if (*(v55 + 25))
            {
              v61 = 0xE200000000000000;
            }

            v62 = *(v55 + 25) <= 1u ? v60 : v58;
            v57 = *(v55 + 25) <= 1u ? v61 : v59;
          }

          v63 = *(v23 + 25);
          v64 = 0x6E776F6E6B6E55;
          if (v63 != 6)
          {
            v64 = 4543564;
          }

          v65 = 0xE700000000000000;
          if (v63 != 6)
          {
            v65 = 0xE300000000000000;
          }

          v66 = 0x4E41525455;
          if (v63 != 4)
          {
            v66 = 5067591;
          }

          v67 = 0xE500000000000000;
          if (v63 != 4)
          {
            v67 = 0xE300000000000000;
          }

          if (*(v23 + 25) <= 5u)
          {
            v64 = v66;
            v65 = v67;
          }

          v68 = 1398033749;
          if (v63 == 2)
          {
            v68 = 4543564;
          }

          v69 = 0xE400000000000000;
          if (v63 == 2)
          {
            v69 = 0xE300000000000000;
          }

          v70 = 0x41534E20524ELL;
          if (*(v23 + 25))
          {
            v70 = 21070;
          }

          v71 = 0xE600000000000000;
          if (*(v23 + 25))
          {
            v71 = 0xE200000000000000;
          }

          if (*(v23 + 25) <= 1u)
          {
            v68 = v70;
            v69 = v71;
          }

          v72 = *(v23 + 25) <= 3u ? v68 : v64;
          v73 = *(v23 + 25) <= 3u ? v69 : v65;
          v74 = v62 == v72 && v57 == v73 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

          a3 = v52 + v53;
          v23 = v77;
          sub_1001BB7C4(v77);
          sub_1001BB7C4(v80);
          if (v74)
          {
            break;
          }

          if (v52 < v49 || a3 >= v49)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v53;
          }

          else
          {
            v48 = v53;
            if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v50;
          v51 = v79;
          if (v50 <= a4)
          {
            v78 = v79;
            v47 = v50;
            goto LABEL_163;
          }
        }

        if (v52 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v48 = v53;
        }

        else
        {
          v48 = v53;
          if (v52 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v76;
      }

      while (v49 > a4);
    }

LABEL_163:
    v84 = v78;
    v82 = v47;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = a4 + v21;
    v82 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        v25 = a2;
        sub_1001BB760(a2, v16);
        sub_1001BB760(a4, v13);
        v26 = v16[25];
        v27 = 0xE300000000000000;
        if (v26 > 3)
        {
          if (v16[25] > 5u)
          {
            v32 = 4543564;
            if (v26 == 6)
            {
              v27 = 0xE700000000000000;
              v32 = 0x6E776F6E6B6E55;
            }
          }

          else
          {
            if (v26 == 4)
            {
              v32 = 0x4E41525455;
            }

            else
            {
              v32 = 5067591;
            }

            if (v26 == 4)
            {
              v27 = 0xE500000000000000;
            }

            else
            {
              v27 = 0xE300000000000000;
            }
          }
        }

        else
        {
          v28 = 1398033749;
          if (v26 == 2)
          {
            v28 = 4543564;
          }

          v29 = 0xE400000000000000;
          if (v26 == 2)
          {
            v29 = 0xE300000000000000;
          }

          v30 = 0x41534E20524ELL;
          if (v16[25])
          {
            v30 = 21070;
          }

          v31 = 0xE600000000000000;
          if (v16[25])
          {
            v31 = 0xE200000000000000;
          }

          if (v16[25] <= 1u)
          {
            v32 = v30;
          }

          else
          {
            v32 = v28;
          }

          if (v16[25] <= 1u)
          {
            v27 = v31;
          }

          else
          {
            v27 = v29;
          }
        }

        v33 = v13[25];
        v34 = 0x6E776F6E6B6E55;
        if (v33 != 6)
        {
          v34 = 4543564;
        }

        v35 = 0xE700000000000000;
        if (v33 != 6)
        {
          v35 = 0xE300000000000000;
        }

        v36 = 0x4E41525455;
        if (v33 != 4)
        {
          v36 = 5067591;
        }

        v37 = 0xE500000000000000;
        if (v33 != 4)
        {
          v37 = 0xE300000000000000;
        }

        if (v13[25] <= 5u)
        {
          v34 = v36;
          v35 = v37;
        }

        v38 = 1398033749;
        if (v33 == 2)
        {
          v38 = 4543564;
        }

        v39 = 0xE400000000000000;
        if (v33 == 2)
        {
          v39 = 0xE300000000000000;
        }

        v40 = 0x41534E20524ELL;
        if (v13[25])
        {
          v40 = 21070;
        }

        v41 = 0xE600000000000000;
        if (v13[25])
        {
          v41 = 0xE200000000000000;
        }

        if (v13[25] <= 1u)
        {
          v38 = v40;
          v39 = v41;
        }

        if (v13[25] <= 3u)
        {
          v42 = v38;
        }

        else
        {
          v42 = v34;
        }

        if (v13[25] <= 3u)
        {
          v43 = v39;
        }

        else
        {
          v43 = v35;
        }

        if (v32 == v42 && v27 == v43)
        {

          sub_1001BB7C4(v13);
          sub_1001BB7C4(v16);
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1001BB7C4(v13);
          sub_1001BB7C4(v16);
          if (v44)
          {
            v45 = v79;
            a2 = v25 + v79;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_84;
          }
        }

        v45 = v79;
        v46 = a4 + v79;
        a2 = v25;
        if (a1 < a4 || a1 >= v46)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v83 = v46;
        a4 += v45;
LABEL_84:
        a1 += v45;
        v84 = a1;
      }

      while (a4 < v80 && a2 < a3);
    }
  }

LABEL_164:
  sub_100252D64(&v84, &v83, &v82);
}

void sub_10022B740(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for FTMBandInfoDataModel(0);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v40 - v10;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v51 = a1;
  v50 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v22;
    if (v22 >= 1)
    {
      v28 = -v18;
      v29 = v27;
      v42 = a1;
      v43 = a4;
      do
      {
        v40 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v44 = v30;
        v45 = v31;
        while (1)
        {
          if (v30 <= a1)
          {
            v51 = v30;
            v49 = v40;
            goto LABEL_70;
          }

          v32 = a3;
          v41 = v27;
          v33 = v29 + v28;
          v34 = v46;
          v35 = v29;
          sub_1001BB760(v29 + v28, v46);
          v36 = v47;
          sub_1001BB760(v31, v47);
          v37 = *(v34 + 24) ? 0 : *(v34 + 16);
          v38 = *(v36 + 24) ? 0 : *(v36 + 16);
          v39 = v32 + v28;
          sub_1001BB7C4(v36);
          sub_1001BB7C4(v34);
          if (v37 < v38)
          {
            break;
          }

          v27 = v33;
          a3 = v32 + v28;
          if (v32 < v35 || v39 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v45;
            a1 = v42;
          }

          else
          {
            v31 = v45;
            a1 = v42;
            if (v32 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v33;
          v30 = v44;
          if (v33 <= v43)
          {
            a2 = v44;
            goto LABEL_69;
          }
        }

        a3 = v32 + v28;
        if (v32 < v44 || v39 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v41;
          a1 = v42;
        }

        else
        {
          a2 = v45;
          v27 = v41;
          a1 = v42;
          if (v32 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v35;
      }

      while (v35 > v43);
    }

LABEL_69:
    v51 = a2;
    v49 = v27;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v21;
    v49 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        v24 = v18;
        sub_1001BB760(a2, v16);
        sub_1001BB760(a4, v13);
        if (v16[24])
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v16 + 2);
        }

        if (v13[24])
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v13 + 2);
        }

        sub_1001BB7C4(v13);
        sub_1001BB7C4(v16);
        if (v25 >= v26)
        {
          v18 = v24;
          if (a1 < a4 || a1 >= a4 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v24;
          a4 += v24;
        }

        else
        {
          v18 = v24;
          if (a1 < a2 || a1 >= a2 + v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        a1 += v18;
        v51 = a1;
      }

      while (a4 < v47 && a2 < a3);
    }
  }

LABEL_70:
  sub_100252D64(&v51, &v50, &v49);
}

void sub_10022BC34(uint64_t **a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0);
  v63 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v59 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v55 - v5;
  __chkstk_darwin(v6);
  v60 = &v55 - v7;
  __chkstk_darwin(v8);
  v62 = (&v55 - v9);
  __chkstk_darwin(v10);
  v12 = &v55 - v11;
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  __chkstk_darwin(v16);
  v56 = (&v55 - v17);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  if (qword_100375018 != -1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    if (*(qword_100382500 + 160))
    {
      return;
    }

    v58 = v12;
    v12 = a1[2];
    if (v12)
    {
      v21 = *(qword_100382500 + 156);
      v22 = *(v63 + 72);
      v57 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v23 = a1 + v57;
      v24 = _swiftEmptyArrayStorage;
      a1 = v56;
      while (1)
      {
        sub_1001BB760(v23, v20);
        if (*(v20 + 8) == 1)
        {
          if (!v21)
          {
            goto LABEL_10;
          }
        }

        else if (*v20 == v21)
        {
LABEL_10:
          sub_1001BB4B8(v20, a1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001F5438(0, v24[2] + 1, 1);
            a1 = v56;
            v24 = v65;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            sub_1001F5438((v26 > 1), v27 + 1, 1);
            a1 = v56;
            v24 = v65;
          }

          v24[2] = v27 + 1;
          sub_1001BB4B8(a1, v24 + v57 + v27 * v22);
          goto LABEL_7;
        }

        sub_1001BB7C4(v20);
LABEL_7:
        v23 += v22;
        if (!--v12)
        {
          goto LABEL_16;
        }
      }
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_16:
    v28 = v24[2];
    v29 = v58;
    if (!v28)
    {
      break;
    }

    v20 = 0;
    v30 = _swiftEmptyArrayStorage;
    while (v20 < v24[2])
    {
      v12 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v31 = *(v63 + 72);
      sub_1001BB760(&v12[v24 + v31 * v20], v15);
      v32 = v15[9];
      if (v32 <= 1)
      {
        if (!v15[9])
        {
LABEL_26:

LABEL_30:
          sub_1001BB4B8(v15, v29);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v30;
          if ((v34 & 1) == 0)
          {
            a1 = &v65;
            sub_1001F5438(0, v30[2] + 1, 1);
            v30 = v65;
          }

          v36 = v30[2];
          v35 = v30[3];
          if (v36 >= v35 >> 1)
          {
            a1 = &v65;
            sub_1001F5438((v35 > 1), v36 + 1, 1);
            v30 = v65;
          }

          v30[2] = v36 + 1;
          v37 = &v12[v30 + v36 * v31];
          v29 = v58;
          sub_1001BB4B8(v58, v37);
          goto LABEL_19;
        }

        a1 = 0xE100000000000000;
      }

      else if (v32 == 2)
      {
        a1 = 0xE200000000000000;
      }

      else
      {
        if (v32 != 3)
        {
          goto LABEL_26;
        }

        a1 = 0xE200000000000000;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_30;
      }

      sub_1001BB7C4(v15);
LABEL_19:
      if (v28 == ++v20)
      {
        v58 = v28;
        v15 = 0;
        a1 = _swiftEmptyArrayStorage;
        v38 = &v12[v24];
        while (1)
        {
          if (v15 >= v24[2])
          {
            goto LABEL_75;
          }

          v39 = v62;
          sub_1001BB760(v38, v62);
          v40 = *(v39 + 9);
          if (v40 == 2)
          {
            break;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v41)
          {
            goto LABEL_44;
          }

          if (v40 == 3)
          {
            break;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_44;
          }

          sub_1001BB7C4(v62);
LABEL_37:
          ++v15;
          v38 += v31;
          if (v58 == v15)
          {
            goto LABEL_50;
          }
        }

LABEL_44:
        sub_1001BB4B8(v62, v60);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v65 = a1;
        if ((v42 & 1) == 0)
        {
          sub_1001F5438(0, a1[2] + 1, 1);
          a1 = v65;
        }

        v20 = a1[2];
        v43 = a1[3];
        if (v20 >= v43 >> 1)
        {
          sub_1001F5438((v43 > 1), v20 + 1, 1);
          a1 = v65;
        }

        a1[2] = (v20 + 1);
        sub_1001BB4B8(v60, &v12[a1 + v20 * v31]);
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    swift_once();
  }

  v30 = _swiftEmptyArrayStorage;
  a1 = _swiftEmptyArrayStorage;
LABEL_50:
  v65 = a1;

  sub_1002290E0(&v65);

  sub_100229038(&v65);
  v60 = 0;

  v62 = v65;
  v12 = v24[2];
  if (v12)
  {
    v44 = 0;
    a1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v44 >= v24[2])
      {
        goto LABEL_76;
      }

      v15 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v45 = *(v63 + 72);
      v46 = v61;
      sub_1001BB760(&v15[v24 + v45 * v44], v61);
      v47 = *(v46 + 9);
      v20 = 0xE100000000000000;
      if (v47 <= 1)
      {
        if (v47)
        {

LABEL_66:
          sub_1001BB4B8(v61, v59);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v65 = a1;
          if ((v50 & 1) == 0)
          {
            sub_1001F5438(0, a1[2] + 1, 1);
            a1 = v65;
          }

          v52 = a1[2];
          v51 = a1[3];
          v20 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            sub_1001F5438((v51 > 1), v52 + 1, 1);
            a1 = v65;
          }

          a1[2] = v20;
          sub_1001BB4B8(v59, &v15[a1 + v52 * v45]);
          goto LABEL_53;
        }
      }

      else
      {
        if (v47 == 3)
        {
          v48 = 0xE200000000000000;
        }

        else
        {
          v48 = 0xE100000000000000;
        }

        if (v47 == 2)
        {
          v20 = 0xE200000000000000;
        }

        else
        {
          v20 = v48;
        }
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
        goto LABEL_66;
      }

      sub_1001BB7C4(v61);
LABEL_53:
      if (v12 == ++v44)
      {
        goto LABEL_72;
      }
    }
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_72:

  v65 = a1;

  v53 = v60;
  sub_1002290E0(&v65);
  if (v53)
  {

    __break(1u);
  }

  else
  {

    v54 = v65;
    v64 = v30;
    sub_1001E2F7C(v62);
    sub_1001E2F7C(v54);
  }
}