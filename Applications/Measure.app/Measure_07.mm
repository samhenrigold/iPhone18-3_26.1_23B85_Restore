void sub_100095D28(void *a1)
{
  v45 = a1;
  v1 = sub_10000F974(&qword_1004A2968, &unk_1003D7100);
  __chkstk_darwin(v1 - 8);
  v3 = v41 - v2;
  v43 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v47._object = 0xE000000000000000;
  v15._object = 0x8000000100404380;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v41[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v47)._object;

  [v45 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for ButtonWithCustomBackgroundColor();
  v46.receiver = objc_allocWithZone(v25);
  v46.super_class = v25;
  v26 = objc_msgSendSuper2(&v46, "initWithFrame:", v18, v20, v22, v24);
  static UIButton.Configuration.glass()();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.large(_:), v42);
  UIButton.Configuration.buttonSize.setter();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v43);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.title.setter();
  (*(v11 + 16))(v3, v13, v10);
  (*(v11 + 56))(v3, 0, 1, v10);
  UIButton.configuration.setter();
  [v26 setTintColor:0];

  (*(v11 + 8))(v13, v10);
  [v26 addTarget:v44 action:"copyMeasurement" forControlEvents:0x2000];
  v27 = v26;
  v28 = v45;
  [v45 addSubview:v27];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1003D6290;
  v30 = [v27 centerXAnchor];
  v31 = [v28 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v29 + 32) = v32;
  v33 = [v27 centerYAnchor];

  v34 = [v28 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v29 + 40) = v35;
  v36 = [v27 widthAnchor];

  v37 = [v28 widthAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v29 + 48) = v38;
  v39 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];
}

id sub_1000962E8()
{
  v1 = *(v0 + qword_1004A5D90);
  if (qword_1004A0548 != -1)
  {
    v7 = *(v0 + qword_1004A5D90);
    swift_once();
    v1 = v7;
  }

  [v1 setTextColor:qword_1004D50B8];
  v2 = *(v0 + qword_1004A5DA0);
  if (qword_1004A0550 != -1)
  {
    v8 = *(v0 + qword_1004A5DA0);
    swift_once();
    v2 = v8;
  }

  [v2 setTextColor:qword_1004D50C0];
  [*(v0 + qword_1004A5DA8) setTextColor:qword_1004D50C0];
  v3 = *(v0 + qword_1004A5DD0);
  if (qword_1004A0558 != -1)
  {
    v9 = *(v0 + qword_1004A5DD0);
    swift_once();
    v3 = v9;
  }

  [v3 setBackgroundColor:qword_1004D50C8];
  v4 = *(v0 + qword_1004A5DC8);
  v5 = qword_1004D50C8;

  return [v4 setBackgroundColor:v5];
}

void sub_100096458(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v3 setRightBarButtonItem:v4];

  v5 = *(v1 + qword_1004A5D98);
  v6 = [objc_opt_self() mainBundle];
  v12._object = 0xE000000000000000;
  v7._object = 0x8000000100404350;
  v7._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  v9 = String._bridgeToObjectiveC()();

  [v5 setText:v9];

  v10 = [a1 navigationItem];
  [v10 setTitleView:v5];
}

void *sub_1000965D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_1004A5D08;
  if (qword_1004A0540 != -1)
  {
    swift_once();
  }

  *&v5[v10] = dword_1004D50B0;
  *&v5[qword_1004A5D10] = 1136361472;
  *&v5[qword_1004A5D18] = 0x4038000000000000;
  *&v5[qword_1004A5D20] = 0x4030000000000000;
  *&v5[qword_1004A5D28] = 0x4046800000000000;
  *&v5[qword_1004A5D30] = 0x402E000000000000;
  *&v5[qword_1004A5D38] = 0x3FE3333333333333;
  *&v5[qword_1004A5D40] = 0x3FF0000000000000;
  *&v5[qword_1004A5D48] = 0x3FE0000000000000;
  *&v5[qword_1004A5D50] = 0x4030000000000000;
  *&v5[qword_1004A5D58] = 0x402E000000000000;
  *&v5[qword_1004A5D60] = 0x4068600000000000;
  *&v5[qword_1004A5D68] = 0x4056800000000000;
  *&v5[qword_1004A5D70] = 0x4056800000000000;
  *&v5[qword_1004A5D78] = 0x402E000000000000;
  *&v5[qword_1004A5D80] = 0x4051600000000000;
  *&v5[qword_1004A5D88] = 0x403C000000000000;
  v11 = qword_1004A5D90;
  *&v5[v11] = [objc_allocWithZone(UILabel) init];
  v12 = qword_1004A5D98;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  v13 = qword_1004A5DA0;
  *&v5[v13] = [objc_allocWithZone(UILabel) init];
  v14 = qword_1004A5DA8;
  *&v5[v14] = [objc_allocWithZone(UILabel) init];
  v15 = qword_1004A5DB0;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = qword_1004A5DB8;
  v17 = [objc_opt_self() sharedApplication];
  v18 = [v17 userInterfaceLayoutDirection];

  v5[v16] = v18 == 1;
  v19 = qword_1004A5DC0;
  *&v5[v19] = [objc_allocWithZone(UIView) init];
  v20 = qword_1004A5DC8;
  *&v5[v20] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = qword_1004A5DD0;
  *&v5[v21] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[qword_1004A5B30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v5[qword_1004A5B40];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v5[qword_1004A5B38];
  *v23 = a2;
  v23[1] = a3;
  sub_100038EBC(a4, a5);
  v29.receiver = v5;
  v29.super_class = type metadata accessor for GenericPlatter(0);
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v25 = *((swift_isaMask & *v24) + 0x138);
  v26 = v24;
  v25();
  sub_1000223C4(a4, a5);

  return v26;
}

id sub_1000969BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1004A5D08;
  if (qword_1004A0540 != -1)
  {
    swift_once();
  }

  *&v1[v4] = dword_1004D50B0;
  *&v1[qword_1004A5D10] = 1136361472;
  *&v1[qword_1004A5D18] = 0x4038000000000000;
  *&v1[qword_1004A5D20] = 0x4030000000000000;
  *&v1[qword_1004A5D28] = 0x4046800000000000;
  *&v1[qword_1004A5D30] = 0x402E000000000000;
  *&v1[qword_1004A5D38] = 0x3FE3333333333333;
  *&v1[qword_1004A5D40] = 0x3FF0000000000000;
  *&v1[qword_1004A5D48] = 0x3FE0000000000000;
  *&v1[qword_1004A5D50] = 0x4030000000000000;
  *&v1[qword_1004A5D58] = 0x402E000000000000;
  *&v1[qword_1004A5D60] = 0x4068600000000000;
  *&v1[qword_1004A5D68] = 0x4056800000000000;
  *&v1[qword_1004A5D70] = 0x4056800000000000;
  *&v1[qword_1004A5D78] = 0x402E000000000000;
  *&v1[qword_1004A5D80] = 0x4051600000000000;
  *&v1[qword_1004A5D88] = 0x403C000000000000;
  v5 = qword_1004A5D90;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = qword_1004A5D98;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = qword_1004A5DA0;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = qword_1004A5DA8;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = qword_1004A5DB0;
  *&v1[v9] = [objc_allocWithZone(UIView) init];
  v10 = qword_1004A5DB8;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  v1[v10] = v12 == 1;
  v13 = qword_1004A5DC0;
  *&v1[v13] = [objc_allocWithZone(UIView) init];
  v14 = qword_1004A5DC8;
  *&v1[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = qword_1004A5DD0;
  *&v1[v15] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

void sub_100096D0C()
{
  v1 = *(v0 + qword_1004A5DD0);
}

void sub_100096DAC(uint64_t a1)
{
  v2 = *(a1 + qword_1004A5DD0);
}

uint64_t type metadata accessor for LabelDetailsPlatter(uint64_t a1)
{
  result = qword_1004A5E00;
  if (!qword_1004A5E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100096F44()
{
  v1 = v0 + qword_1004A5B30;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = [objc_opt_self() generalPasteboard];
  v5 = [*(v0 + qword_1004A5D90) text];
  [v4 setString:v5];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 8);
    v7 = swift_getObjectType();
    (*(v6 + 24))(v7, v6);
    swift_unknownObjectRelease();
  }

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4F08;

  v9 = v8 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v9 + 56) + 1.0;
  *(v9 + 56) = result;
  return result;
}

id sub_100097108(void *a1, void *a2)
{
  [a1 bounds];
  Width = CGRectGetWidth(v10);
  [a2 bounds];
  v5 = CGRectGetWidth(v11);
  if (v5 >= Width)
  {
    v6 = "setAdjustsFontSizeToFitWidth:";
    v7 = a1;
  }

  else
  {
    [a2 bounds];
    CGRectGetWidth(v12);
    [a1 bounds];
    CGRectGetHeight(v13);
    CGSize.init(_:_:)();
    [a1 bounds];
    [a1 setBounds:?];
    [a1 setAdjustsFontSizeToFitWidth:1];
    v6 = "setMinimumScaleFactor:";
    v5 = 0.3;
    v7 = a1;
  }

  return [v7 v6];
}

uint64_t sub_100097234(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100097290(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100097308(uint64_t a1)
{
  result = sub_100097330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100097330()
{
  result = qword_1004A6090;
  if (!qword_1004A6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6090);
  }

  return result;
}

uint64_t sub_100097384(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    type metadata accessor for WorldEdge();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      type metadata accessor for WorldEdge();
      v10 = a4;
      v11 = a2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_100097454()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [v4 fontDescriptor];

  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    [v1 setFont:v7];
    v8 = [objc_opt_self() secondaryLabelColor];
    [v1 setTextColor:v8];

    v9 = String._bridgeToObjectiveC()();
    [v1 setAccessibilityIdentifier:v9];

    v10 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    [v10 setUserInteractionEnabled:1];
    v12 = [v3 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    [v10 setFont:v12];

    v13 = String._bridgeToObjectiveC()();
    [v10 setAccessibilityIdentifier:v13];

    v14 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
    v15 = String._bridgeToObjectiveC()();
    [v14 setAccessibilityIdentifier:v15];

    [v0 addSubview:v1];
    [v0 addSubview:v10];

    [v0 addSubview:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_10009772C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v70 = *&v0[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003D6280;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:16.0];

  *(v4 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];

  *(v4 + 40) = v10;
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = v4;

  v72 = v3;
  v11 = [v3 bottomAnchor];
  v12 = [v1 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-13.0];

  LODWORD(v14) = 1148813312;
  [v13 setPriority:v14];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003D6280;
  v71 = v2;
  v16 = [v2 topAnchor];
  v17 = [v1 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  *(v15 + 32) = v18;
  *(v15 + 40) = v13;
  v19 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
  swift_beginAccess();
  *&v1[v19] = v15;
  v69 = v13;

  sub_100103C58(v20);
  swift_endAccess();
  v21 = *&v1[v19];
  if (v21 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v24 setActive:1];

      ++v23;
      if (v26 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_12:

  v27 = [v72 font];
  v28 = 1.0;
  if (v27)
  {
    v29 = v27;
    v30 = [*(*&v70[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) font];
    v31 = &off_100494000;
    if (v30)
    {
      v32 = v30;
      [v29 descender];
      v34 = v33;
      [v29 leading];
      v36 = v34 + v35;
      [v32 descender];
      v38 = v36 - v37;
      [v32 leading];
      v40 = v39;

      v28 = v38 - v40 + 1.0;
    }

    else
    {
    }
  }

  else
  {
    v31 = &off_100494000;
  }

  v41 = [v70 bottomAnchor];
  v42 = [v72 bottomAnchor];
  v67 = [v41 constraintEqualToAnchor:v42 constant:v28];

  LODWORD(v43) = 1148813312;
  [v67 v31[134]];
  v68 = objc_opt_self();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1003D7B50;
  v45 = [v71 trailingAnchor];
  v46 = [v70 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-16.0];

  *(v44 + 32) = v47;
  v48 = [v72 topAnchor];
  v49 = [v71 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [v72 trailingAnchor];
  v52 = [v70 leadingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-16.0];

  *(v44 + 48) = v53;
  v54 = [v70 topAnchor];
  v55 = [v1 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v44 + 56) = v56;
  *(v44 + 64) = v67;
  v57 = v67;
  v58 = [v70 widthAnchor];
  v59 = [v58 constraintEqualToConstant:103.66];

  *(v44 + 72) = v59;
  v60 = [v70 trailingAnchor];
  v61 = [v1 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-16.0];

  *(v44 + 80) = v62;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:isa];

  LODWORD(v64) = 1112014848;
  [v71 setContentHuggingPriority:1 forAxis:v64];
  LODWORD(v65) = 1148846080;
  [v71 setContentCompressionResistancePriority:1 forAxis:v65];
  LODWORD(v66) = 1148846080;
  [v72 setContentCompressionResistancePriority:1 forAxis:v66];
}

id sub_100097F44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits;
  type metadata accessor for InteractiveLabel();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = _swiftEmptyArrayStorage;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100097454();
  sub_10009772C();

  return v13;
}

id sub_1000980A8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits;
  type metadata accessor for InteractiveLabel();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_horizontalConstraints] = _swiftEmptyArrayStorage;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100097454();
    sub_10009772C();
  }

  return v8;
}

uint64_t sub_1000982AC()
{
  result = Contexts.UIKit.init()();
  qword_1004D4BA0 = result;
  return result;
}

id sub_1000982CC@<X0>(void *a1@<X8>)
{
  if (qword_1004A01E0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4BA0;
  *a1 = qword_1004D4BA0;

  return v2;
}

unint64_t sub_10009833C(uint64_t a1)
{
  result = sub_100098364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100098364()
{
  result = qword_1004A6110;
  if (!qword_1004A6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6110);
  }

  return result;
}

id sub_1000983B8()
{
  v0 = [objc_opt_self() currentMeasureUnits];
  v1 = [objc_opt_self() standardUserDefaults];
  Defaults.showOppositeUnits.unsafeMutableAddressor();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 BOOLForKey:v2];

  v4 = 1;
  if (v0 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0;
  }

  if (v0)
  {
    v4 = v5;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v0;
  }
}

void sub_1000985D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure16RoundCloseButton_closeImageView);
}

void sub_1000987B4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView;
  if (!*&v0[OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView])
  {
    __break(1u);
    goto LABEL_7;
  }

  [v0 addSubview:?];
  v4 = *&v0[v3];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v0 bounds];
  [v5 setFrame:?];
}

id sub_100098994(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1000987B4();
  }

  return v5;
}

void sub_100098B24(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v3 = 3.14159265;
      break;
    case 4:
      v3 = -*CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    case 3:
      v3 = *CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    default:
      v3 = 0.0;
      break;
  }

  CGAffineTransformMakeRotation(&v28, v3);
  *&v27.a = *&v28.m11;
  *&v27.c = *&v28.m13;
  *&v27.tx = *&v28.m21;
  CATransform3DMakeAffineTransform(&v28, &v27);
  sub_100098D80();
  v4 = (v1 + qword_1004A6198);
  *v4 = v5;
  v4[1] = v6;
  v7 = sub_1000990B8();
  CATransform3DMakeTranslation(&v28, v7, v8, 0.0);
  v9 = sub_1000996BC();
  if (qword_1004A0538 != -1)
  {
    v25 = v9;
    v26 = v10;
    swift_once();
    v10 = v26;
    v9 = v25;
  }

  v11 = *&qword_1004D50A8 * 0.5;
  v12 = v9 + *&qword_1004D50A8 * 0.5;
  v13 = v10 + *&qword_1004D50A8 * 0.5;
  v14 = v11 + sub_100099D50();
  v16 = v11 + v15;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = *&v28.m33;
  *(v19 + 88) = *&v28.m31;
  *(v19 + 104) = v20;
  v21 = *&v28.m43;
  *(v19 + 120) = *&v28.m41;
  *(v19 + 136) = v21;
  v22 = *&v28.m13;
  *(v19 + 24) = *&v28.m11;
  *(v19 + 40) = v22;
  v23 = *&v28.m23;
  *(v19 + 56) = *&v28.m21;
  *(v19 + 16) = v18;
  *(v19 + 72) = v23;
  *(v19 + 152) = a1;
  *(v19 + 160) = v14;
  *(v19 + 168) = v16;
  *(v19 + 176) = v12;
  *(v19 + 184) = v13;
  *&v27.tx = sub_10009A950;
  *&v27.ty = v19;
  *&v27.a = _NSConcreteStackBlock;
  *&v27.b = 1107296256;
  *&v27.c = sub_100041180;
  *&v27.d = &unk_10046BC48;
  v24 = _Block_copy(&v27);

  [v17 animateWithDuration:0 delay:v24 options:0 animations:0.25 completion:0.25];
  _Block_release(v24);
}

void sub_100098D80()
{

  StateValue.wrappedValue.getter();

  switch(v1)
  {
    case 2:
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      if (qword_1004A0518 != -1)
      {
        goto LABEL_19;
      }

      break;
    case 4:
      CGRectGetWidth(*(v0 + qword_1004A4FA8));
      if (qword_1004A0518 != -1)
      {
        swift_once();
      }

      if (qword_1004A0510 != -1)
      {
        goto LABEL_19;
      }

      break;
    case 3:
      CGRectGetWidth(*(v0 + qword_1004A4FA8));
      if (qword_1004A0518 != -1)
      {
        swift_once();
      }

      if (qword_1004A0510 == -1)
      {
        return;
      }

LABEL_19:
      swift_once();
      return;
    default:
      CGRectGetWidth(*(v0 + qword_1004A4FA8));
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      if (qword_1004A0518 != -1)
      {
        goto LABEL_19;
      }

      break;
  }
}

double sub_1000990B8()
{
  v1 = *(v0 + qword_1004A4F58);
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  StateValue.wrappedValue.getter();

  switch(v20)
  {
    case 4:
      v5 = *(v0 + qword_1004A6198);
      if (qword_1004A0518 != -1)
      {
        swift_once();
      }

      v6 = v5 + *&qword_1004D5088;
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v3 = v6 + 30.0;

      break;
    case 3:
      v4 = *(v0 + qword_1004A6198);
      if (qword_1004A0518 != -1)
      {
        swift_once();
      }

      v3 = v4 + *&qword_1004D5088 + 30.0;
      [v2 frame];
      CGRectGetWidth(v22);

      break;
    case 2:
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v3 = *&qword_1004D5090;
      [v2 frame];
      CGRectGetWidth(v21);

      break;
    default:
      Width = CGRectGetWidth(*(v0 + qword_1004A4FA8));
      if (qword_1004A0510 != -1)
      {
        v19 = Width;
        swift_once();
        Width = v19;
      }

      v8 = Width - *&qword_1004D5080;
      v9 = v2;
      [v9 frame];
      v3 = v8 + CGRectGetWidth(v23) * -0.5;
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v24.origin.x = v11;
      v24.origin.y = v13;
      v24.size.width = v15;
      v24.size.height = v17;
      CGRectGetWidth(v24);

      break;
  }

  return v3;
}

void sub_1000993DC(uint64_t a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *&Strong[qword_1004A4F58];
    v16 = Strong;
    if (v15)
    {
      v17 = [v15 layer];
      v18 = a2[5];
      v39 = a2[4];
      v40 = v18;
      v19 = a2[7];
      v41 = a2[6];
      v42 = v19;
      v20 = a2[1];
      *&v37.a = *a2;
      *&v37.c = v20;
      v21 = a2[3];
      *&v37.tx = a2[2];
      v38 = v21;
      [v17 setTransform:&v37];
    }

    v22 = qword_1004A4F40;
    v23 = *&v14[qword_1004A4F40];
    if (v23)
    {
      v24 = *(v23 + 40);
      if (!v24 || (a3 == 2 ? (v25 = 3.14159265) : a3 == 4 ? (v25 = -*CGFloat.piDiv2.unsafeMutableAddressor()) : a3 != 3 ? (v25 = 0.0) : (v25 = *CGFloat.piDiv2.unsafeMutableAddressor()), CGAffineTransformMakeRotation(&v37, v25), [v24 setTransform:&v37], (v23 = *&v14[v22]) != 0))
      {
        v26 = *(v23 + 40);
        if (v26)
        {
          [v26 setCenter:{a4, a5}];
        }
      }
    }

    v27 = qword_1004A4F38;
    v28 = *&v14[qword_1004A4F38];
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (!v29 || (a3 == 2 ? (v30 = 3.14159265) : a3 == 4 ? (v30 = -*CGFloat.piDiv2.unsafeMutableAddressor()) : a3 != 3 ? (v30 = 0.0) : (v30 = *CGFloat.piDiv2.unsafeMutableAddressor()), CGAffineTransformMakeRotation(&v37, v30), [v29 setTransform:&v37], (v28 = *&v14[v27]) != 0))
      {
        v31 = *(v28 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
        if (v31)
        {
          [v31 setCenter:{a6, a7}];
        }
      }
    }

    v32 = *&v14[qword_1004A4F50];
    v33 = v32;

    if (v32)
    {
      v34 = *&v33[OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton];

      v35 = *&v14[qword_1004A6198];
      v36 = *&v14[qword_1004A6198 + 8];
      [v34 frame];
      [v34 setFrame:{v35, v36}];
    }
  }
}

double sub_1000996BC()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  switch(v25)
  {
    case 4:
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v11 = *&qword_1004D5090;
      if (qword_1004A0538 != -1)
      {
        swift_once();
      }

      v5 = *&qword_1004D50A8;
      v6 = v11 + *&qword_1004D50A8 * 0.5;
      v12 = [objc_opt_self() sharedApplication];
      v13 = [v12 userInterfaceLayoutDirection];

      if (v13 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    case 3:
      [v0 bounds];
      Width = CGRectGetWidth(v26);
      if (qword_1004A0538 != -1)
      {
        v22 = Width;
        swift_once();
        Width = v22;
      }

      v5 = *&qword_1004D50A8;
      v8 = Width - *&qword_1004D50A8 * 0.5;
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v6 = v8 - *&qword_1004D5090;
      v9 = [objc_opt_self() sharedApplication];
      v10 = [v9 userInterfaceLayoutDirection];

      if (v10 == 1)
      {
LABEL_30:
        [v1 bounds];
        CGRectGetHeight(v28);
        goto LABEL_31;
      }

      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

LABEL_31:
      if (qword_1004A0538 == -1)
      {
        return v6 - v5 * 0.5;
      }

      goto LABEL_32;
    case 2:
      v2 = [objc_opt_self() sharedApplication];
      v3 = [v2 userInterfaceLayoutDirection];

      if (v3 == 1)
      {
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v4 = *&qword_1004D5090;
        if (qword_1004A0538 != -1)
        {
          swift_once();
        }

        v5 = *&qword_1004D50A8;
        v6 = v4 + *&qword_1004D50A8 * 0.5;
      }

      else
      {
        [v1 bounds];
        v18 = CGRectGetWidth(v29);
        if (qword_1004A0538 != -1)
        {
          v24 = v18;
          swift_once();
          v18 = v24;
        }

        v5 = *&qword_1004D50A8;
        v19 = v18 + *&qword_1004D50A8 * -0.5;
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v6 = v19 - *&qword_1004D5090;
      }

      [v1 bounds];
      CGRectGetHeight(v30);
      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      if (qword_1004A0538 == -1)
      {
        return v6 - v5 * 0.5;
      }

LABEL_32:
      swift_once();
      return v6 - v5 * 0.5;
  }

  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 userInterfaceLayoutDirection];

  if (v15 == 1)
  {
    [v1 bounds];
    v16 = CGRectGetWidth(v27);
    if (qword_1004A0538 != -1)
    {
      v23 = v16;
      swift_once();
      v16 = v23;
    }

    v5 = *&qword_1004D50A8;
    v17 = v16 + *&qword_1004D50A8 * -0.5;
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v6 = v17 - *&qword_1004D5090;
  }

  else
  {
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v20 = *&qword_1004D5090;
    if (qword_1004A0538 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1004D50A8;
    v6 = v20 + *&qword_1004D50A8 * 0.5;
  }

  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  if (qword_1004A0538 != -1)
  {
    goto LABEL_32;
  }

  return v6 - v5 * 0.5;
}

double sub_100099D50()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  switch(v25)
  {
    case 4:
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v12 = *&qword_1004D5090;
      if (qword_1004A0538 != -1)
      {
        swift_once();
      }

      v5 = *&qword_1004D50A8;
      v7 = v12 + *&qword_1004D50A8 * 0.5;
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 userInterfaceLayoutDirection];

      if (v14 == 1)
      {
        [v1 bounds];
        CGRectGetHeight(v29);
        if (qword_1004A0528 == -1)
        {
LABEL_24:
          if (qword_1004A0538 == -1)
          {
            return v7 - v5 * 0.5;
          }

          goto LABEL_25;
        }

LABEL_50:
        swift_once();
        goto LABEL_24;
      }

LABEL_23:
      if (qword_1004A0528 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_50;
    case 3:
      [v0 bounds];
      Width = CGRectGetWidth(v27);
      if (qword_1004A0538 != -1)
      {
        v22 = Width;
        swift_once();
        Width = v22;
      }

      v5 = *&qword_1004D50A8;
      v9 = Width - *&qword_1004D50A8 * 0.5;
      if (qword_1004A0520 != -1)
      {
        swift_once();
      }

      v7 = v9 - *&qword_1004D5090;
      v10 = [objc_opt_self() sharedApplication];
      v11 = [v10 userInterfaceLayoutDirection];

      if (v11 != 1)
      {
        [v1 bounds];
        CGRectGetHeight(v28);
        goto LABEL_24;
      }

      goto LABEL_23;
    case 2:
      v2 = [objc_opt_self() sharedApplication];
      v3 = [v2 userInterfaceLayoutDirection];

      if (v3 == 1)
      {
        [v1 bounds];
        v4 = CGRectGetWidth(v26);
        if (qword_1004A0538 != -1)
        {
          v23 = v4;
          swift_once();
          v4 = v23;
        }

        v5 = *&qword_1004D50A8;
        v6 = v4 + *&qword_1004D50A8 * -0.5;
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v7 = v6 - *&qword_1004D5090;
      }

      else
      {
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v18 = *&qword_1004D5090;
        if (qword_1004A0538 != -1)
        {
          swift_once();
        }

        v5 = *&qword_1004D50A8;
        v7 = v18 + *&qword_1004D50A8 * 0.5;
      }

      [v1 bounds];
      CGRectGetHeight(v30);
      if (qword_1004A0528 != -1)
      {
        swift_once();
      }

      if (qword_1004A0538 == -1)
      {
        return v7 - v5 * 0.5;
      }

LABEL_25:
      swift_once();
      return v7 - v5 * 0.5;
  }

  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 userInterfaceLayoutDirection];

  if (v16 == 1)
  {
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v17 = *&qword_1004D5090;
    if (qword_1004A0538 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1004D50A8;
    v7 = v17 + *&qword_1004D50A8 * 0.5;
  }

  else
  {
    [v1 bounds];
    v19 = CGRectGetWidth(v31);
    if (qword_1004A0538 != -1)
    {
      v24 = v19;
      swift_once();
      v19 = v24;
    }

    v5 = *&qword_1004D50A8;
    v20 = v19 + *&qword_1004D50A8 * -0.5;
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v7 = v20 - *&qword_1004D5090;
  }

  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  if (qword_1004A0538 != -1)
  {
    goto LABEL_25;
  }

  return v7 - v5 * 0.5;
}

id sub_10009A414()
{
  v1 = *&v0[qword_1004A4FA8];
  v2 = *&v0[qword_1004A4FA8 + 8];
  v3 = *&v0[qword_1004A4FA8 + 16];
  v4 = *&v0[qword_1004A4FA8 + 24];
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  Width = CGRectGetWidth(v9);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  Height = CGRectGetHeight(v10);

  return [v0 setFrame:{0.0, 0.0, Width, Height}];
}

uint64_t sub_10009A4B0()
{
  v1 = [objc_allocWithZone(CUShutterButton) init];
  v2 = *(v0 + qword_1004A4F58);
  *(v0 + qword_1004A4F58) = v1;

  return _objc_release_x1(v1, v2);
}

double sub_10009A500()
{
  v1 = sub_100099D50();
  v3 = v2;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D50A8;
  type metadata accessor for DeleteButtonSolarium();
  swift_allocObject();
  *(v0 + qword_1004A4F40) = sub_100054014(v1, v3, v4, v4);

  return result;
}

uint64_t sub_10009A5C8()
{
  v1 = sub_1000996BC();
  v3 = v2;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D50A8;
  v5 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v6 = sub_1001B2FB4(v1, v3, v4, v4);
  v7 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v6;

  return _objc_release_x1(v6, v7);
}

uint64_t sub_10009A684()
{
  sub_100098D80();
  v2 = v1;
  v4 = v3;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1004D5088;
  v6 = objc_allocWithZone(type metadata accessor for EditButtonSolarium());
  v7 = sub_10013772C(v2, v4, v5, v5);
  v8 = *(v0 + qword_1004A4F50);
  *(v0 + qword_1004A4F50) = v7;

  return _objc_release_x1(v7, v8);
}

id sub_10009A740(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1004A6198];
  *v11 = 0;
  *(v11 + 1) = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

char *sub_10009A7C0(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = &a1[qword_1004A6198];
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", v7);

  if (v8)
  {
  }

  return v8;
}

uint64_t type metadata accessor for EditViewRegular(uint64_t a1)
{
  result = qword_1004A61C8;
  if (!qword_1004A61C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A8E0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10009A918()
{

  return _swift_deallocObject(v0, 192, 7);
}

double sub_10009A968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10009A984()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for ViewController(0);
    swift_dynamicCastClassUnconditional();
    v3 = type metadata accessor for MeasurementDetailSheetViewController();
    v4 = objc_allocWithZone(v3);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v7.receiver = v4;
    v7.super_class = v3;
    v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

    v6 = *(v0 + qword_1004A6650);
    *(v0 + qword_1004A6650) = v5;

    sub_10009AE78();
    sub_1000DB8FC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10009AA68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + qword_1004A65A0) && (v4 = Strong + qword_1004A65C0, swift_unknownObjectWeakLoadStrong()))
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10009AB3C()
{
  v1 = v0;
  v2 = qword_1004A6590;
  KeyPath = swift_getKeyPath();
  v4 = sub_10000F974(&qword_1004A6990, &qword_1003DA430);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v4 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004A6598;
  v8 = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A7300, &qword_1003DA438);
  *(v1 + v7) = (*(v9 + 272))(v8, v5);
  *(v1 + qword_1004A65A0) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004A65B0) = 0;
  v10 = qword_1004A65B8;
  v11 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  v12 = swift_getKeyPath();
  *(v1 + v10) = (*(v11 + 272))(v12, v5);
  *(v1 + qword_1004A65C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004A65C8) = 0;
  *(v1 + qword_1004A65D0) = 0;
  v13 = qword_1004A65D8;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = qword_1004A65E0;
  *(v1 + v14) = [objc_allocWithZone(UILabel) init];
  v15 = qword_1004A65E8;
  *(v1 + v15) = [objc_allocWithZone(UIImageView) init];
  v16 = qword_1004A65F0;
  *(v1 + v16) = [objc_allocWithZone(UIView) init];
  v17 = qword_1004A65F8;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v18 = qword_1004A6600;
  *(v1 + v18) = [objc_allocWithZone(UIView) init];
  *(v1 + qword_1004A6608) = 0;
  *(v1 + qword_1004A6610) = 0;
  v19 = qword_1004A6618;
  *(v1 + v19) = CACurrentMediaTime();
  *(v1 + qword_1004A6620) = 0;
  *(v1 + qword_1004A6628) = 0;
  *(v1 + qword_1004A6648) = 0x3F91111111111111;
  *(v1 + qword_1004A6650) = 0;
  v20 = v1 + qword_1004A6658;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 1;
  *(v1 + qword_1004A6660) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10009AE78()
{
  v5 = v0;
  v137 = type metadata accessor for MeasurementHistoryItem(0);
  v6 = *(v137 - 8);
  __chkstk_darwin(v137);
  v8 = (&v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v126 - v10);
  KeyPath = sub_10000F974(&qword_1004A6928, &qword_1003DA300);
  v139 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v133 = (&v126 - v13);
  v14 = sub_10000F974(&unk_1004A6930, &qword_1003DA308);
  __chkstk_darwin(v14 - 8);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v126 - v18;
  v20 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v20 - 8);
  v22 = (&v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v23 - 8);
  v131 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v126 - v27;
  v29 = qword_1004A65F0;
  [*(v5 + qword_1004A65F0) removeFromSuperview];
  if ([objc_opt_self() jasperAvailable])
  {
    v129 = v8;
    v132 = v6;
    v30 = *(v6 + 56);
    v134 = v28;
    v135 = v30;
    v136 = v6 + 56;
    v30(v28, 1, 1, v137);
    v31 = *(**(v5 + qword_1004A6590) + 144);

    v31(v32);

    v33 = *v22;

    sub_10009FD64(v22, type metadata accessor for MeasurementsHistory);
    v34 = 0;
    v130 = v5;
    v35 = (v5 + qword_1004A6640);
    v36 = (v139 + 56);
    v37 = v33[2];
    v139 += 48;
    v38 = v134;
    if (v37)
    {
      goto LABEL_6;
    }

LABEL_5:
    v39 = 1;
    v34 = v37;
    while (1)
    {
      (*v36)(v16, v39, 1, KeyPath);
      sub_10009FCE4(v16, v19, &unk_1004A6930, &qword_1003DA308);
      if ((*v139)(v19, 1, KeyPath) == 1)
      {
        break;
      }

      sub_10008C998(&v19[*(KeyPath + 48)], v11);
      if (*v11 == *v35 && v11[1] == v35[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100018F04(v38, &qword_1004A28C0, &qword_1003D7080);
        sub_10008C998(v11, v38);
        v135(v38, 0, 1, v137);
        if (v34 == v37)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
        if (v34 == v37)
        {
          goto LABEL_5;
        }
      }

LABEL_6:
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
        goto LABEL_33;
      }

      if (v34 >= v33[2])
      {
        goto LABEL_36;
      }

      v138 = (v34 + 1);
      v40 = v33 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v34;
      v41 = *(KeyPath + 48);
      v42 = v37;
      v43 = v36;
      v44 = v11;
      v45 = KeyPath;
      v46 = v19;
      v47 = v35;
      v48 = v33;
      v49 = v16;
      v50 = v133;
      *v133 = v34;
      sub_100023338(v40, v50 + v41);
      v51 = v50;
      v16 = v49;
      v33 = v48;
      v35 = v47;
      v19 = v46;
      KeyPath = v45;
      v11 = v44;
      v36 = v43;
      v37 = v42;
      sub_10009FCE4(v51, v16, &qword_1004A6928, &qword_1003DA300);
      v39 = 0;
      v34 = v138;
      v38 = v134;
    }

    v57 = v38;
    v58 = v131;
    sub_10006C92C(v57, v131, &qword_1004A28C0, &qword_1003D7080);
    v59 = v137;
    if ((*(v132 + 48))(v58, 1, v137) == 1)
    {
      goto LABEL_41;
    }

    v60 = v58;
    v61 = v129;
    sub_10008C998(v60, v129);
    v62 = sub_10019B2F4(v61);
    v64 = v63;
    v66 = v65;
    v68 = *v35;
    v67 = v35[1];
    v69 = *(v61 + *(v59 + 32));
    v58 = sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
    if (static UIDevice.isIPhone()())
    {
      v70 = (v130 + qword_1004A6658);
      if (*(v130 + qword_1004A6658 + 32))
      {
        goto LABEL_40;
      }

      v2 = v70[2];
      v1 = v70[3];
      v4 = *v70;
      v3 = v70[1];
    }

    else
    {
      [*(v130 + qword_1004A6630) bounds];
      v4 = v81;
      v3 = v82;
      v2 = v83;
      v1 = v84;
    }

    ObjectType = swift_getObjectType();
    v86 = (*(v66 + 72))(ObjectType, v66);
    if (v86)
    {
      v87 = v86;
      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();
      if (!v58)
      {
      }
    }

    else
    {
      v58 = 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      goto LABEL_39;
    }

    v133 = v68;
    v135 = v66;
    v136 = v67;
    v137 = Strong;
    v138 = v58;
    LODWORD(v139) = v69;
    v37 = type metadata accessor for SpatialGenericPlatter(0);
    v33 = objc_allocWithZone(v37);
    v132 = qword_1004ADDB8;
    *(v33 + qword_1004ADDB8) = 0;
    v11 = (v33 + qword_1004ADDC0);
    *(v33 + qword_1004ADDC0 + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + qword_1004ADDC8 + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + qword_1004ADDD0) = 0;
    swift_unknownObjectWeakInit();
    v131 = qword_1004ADDE8;
    swift_unknownObjectWeakInit();
    *(v33 + qword_1004ADDF0) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v33 + qword_1004ADE08) = 0;
    v34 = qword_1004ADE10;
    v38 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
    KeyPath = swift_getKeyPath();
    v89 = qword_1004A04D8;
    v128 = v64;
    v127 = v62;
    if (v89 != -1)
    {
      goto LABEL_37;
    }

LABEL_33:
    v90 = qword_1004D5058;
    v91 = *(v38 + 272);
    swift_retain_n();
    *(v33 + v34) = v91(KeyPath, v90);
    v92 = qword_1004ADE18;
    sub_10000F974(&unk_1004ABB10, &qword_1003DF460);
    swift_getKeyPath();
    *(v33 + v92) = MutableStateValue.__allocating_init(_:_:)();
    v93 = qword_1004ADE20;
    v94 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
    v95 = swift_getKeyPath();
    *(v33 + v93) = (*(v94 + 272))(v95, v90);
    v96 = qword_1004ADE28;
    v97 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
    v98 = swift_getKeyPath();
    *(v33 + v96) = (*(v97 + 272))(v98, v90);
    v99 = qword_1004ADE30;
    sub_10000F974(&unk_1004A6960, &qword_1003DF4F0);
    swift_getKeyPath();
    *(v33 + v99) = MutableStateValue.__allocating_init(_:_:)();
    v100 = qword_1004ADE38;
    sub_10000F974(&qword_1004ABB20, &qword_1003DF520);
    swift_getKeyPath();
    *(v33 + v100) = MutableStateValue.__allocating_init(_:_:)();
    *(v33 + qword_1004ADE40) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + qword_1004ADE50) = 1;
    v101 = (v33 + qword_1004ADDD8);
    *v101 = v4;
    v101[1] = v3;
    v101[2] = v2;
    v101[3] = v1;
    v102 = (v33 + qword_1004ADDB0);
    v103 = v136;
    *v102 = v133;
    v102[1] = v103;
    v104 = v138;
    swift_unknownObjectWeakAssign();
    v11[1] = v135;
    v105 = v128;
    swift_unknownObjectWeakAssign();
    v106 = v127;
    v107 = *(*&v127[OBJC_IVAR____TtC7Measure17CardContainerView_titleView] + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView);
    v108 = objc_opt_self();

    v109 = v107;
    v110 = [v108 mainBundle];
    v142._object = 0xE000000000000000;
    v111._countAndFlagsBits = 0xD00000000000001DLL;
    v111._object = 0x8000000100404760;
    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    v142._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v142);

    v113 = String._bridgeToObjectiveC()();

    [v109 setPlaceholder:v113];

    v114 = objc_allocWithZone(type metadata accessor for CardContainerController());
    v115 = v106;
    v116 = sub_10018E2F0(v115);
    v117 = *(v33 + v132);
    *(v33 + v132) = v116;

    v118 = v137;
    swift_unknownObjectWeakAssign();
    v140.receiver = v33;
    v140.super_class = v37;
    v58 = objc_msgSendSuper2(&v140, "initWithFrame:", v4, v3, v2, v1);
    sub_1001940A0(v139);
    v119 = swift_unknownObjectWeakLoadStrong();
    if (v119)
    {
      v120 = v119;

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakDestroy();
      v121 = v130;
      v122 = *(v130 + qword_1004A65A0);
      *(v130 + qword_1004A65A0) = v58;
      v123 = v58;

      v124 = v121 + qword_1004A65C0;
      swift_unknownObjectWeakLoadStrong();
      *&v123[qword_1004ADDC8 + 8] = *(v124 + 8);
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v125 = *(v121 + qword_1004A6630);
      [v125 setNeedsLayout];
      [v125 layoutIfNeeded];

      sub_10009FD64(v129, type metadata accessor for MeasurementHistoryItem);
      sub_100018F04(v134, &qword_1004A28C0, &qword_1003D7080);
      return;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_100018F04(v58, &qword_1004A28C0, &qword_1003D7080);
    goto LABEL_42;
  }

  [*(v5 + qword_1004A65F8) addSubview:*(v5 + v29)];
  [*(v5 + v29) addSubview:*(v5 + qword_1004A65D8)];
  if (*(v5 + qword_1004A65C8))
  {
    if (*(v5 + qword_1004A65C8) != 1)
    {
LABEL_42:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v71 = *(v5 + qword_1004A6630);
    v72 = *(v5 + qword_1004A6640);
    v73 = *(v5 + qword_1004A6640 + 8);
    objc_allocWithZone(type metadata accessor for RectangleLabelDetailsPlatter(0));
    v74 = v71;

    v56 = sub_1001A5D6C(v74, v72, v73, 0, 0);
  }

  else
  {
    v52 = *(v5 + qword_1004A6630);
    v53 = *(v5 + qword_1004A6640);
    v54 = *(v5 + qword_1004A6640 + 8);
    objc_allocWithZone(type metadata accessor for LabelDetailsPlatter(0));
    v55 = v52;

    v56 = sub_1000965D8(v55, v53, v54, 0, 0);
  }

  v75 = *(v5 + qword_1004A65D0);
  *(v5 + qword_1004A65D0) = v56;
  v76 = v56;

  v77 = v5 + qword_1004A65C0;
  swift_unknownObjectWeakLoadStrong();
  *(v76 + qword_1004A5B30 + 8) = *(v77 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v78 = objc_opt_self();
  v79 = v76;
  v139 = [v78 clearColor];
  [v79 setBackgroundColor:v139];

  v80 = v139;
}

void sub_10009BD94(id a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  if (![objc_opt_self() jasperAvailable] || (v10 = *(v5 + qword_1004A65A0)) == 0)
  {
LABEL_12:
    v24 = *(v5 + qword_1004A65E0);
    v25 = String._bridgeToObjectiveC()();
    [v24 setText:v25];

    [v24 sizeToFit];
    v26 = *(v5 + qword_1004A65F8);
    [v26 setUserInteractionEnabled:1];
    [v26 setAlpha:1.0];
    *(v5 + qword_1004A6620) = 1;
    *(v5 + qword_1004A6618) = CACurrentMediaTime();
    sub_10009C6D4(a1);
    v27 = *(v5 + qword_1004A6650);
    if (!v27)
    {
      return;
    }

    v28 = *(v5 + qword_1004A65D0);
    if (!v28)
    {
      return;
    }

    v29 = v28;
    v69 = v27;
    v30 = [v69 view];
    if (v30)
    {
      v31 = v30;
      v18 = v29;
      [v31 addSubview:v18];

      (*((swift_isaMask & *v18) + 0x150))(v69);
      v19 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v69];
      v32 = [v19 presentationController];
      [v32 setDelegate:a2];

      v33 = [v19 navigationBar];
      [v33 frame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v71.origin.x = v35;
      v71.origin.y = v37;
      v71.size.width = v39;
      v71.size.height = v41;
      Height = CGRectGetHeight(v71);
      v43 = [v18 topAnchor];

      v44 = [v69 view];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 topAnchor];

        v47 = [v43 constraintEqualToAnchor:v46 constant:Height];
        [v47 setActive:1];

        v48 = [v18 bottomAnchor];
        v49 = [v69 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 bottomAnchor];

          v52 = [v48 constraintEqualToAnchor:v51];
          [v52 setActive:1];

          v53 = [v18 leadingAnchor];
          v54 = [v69 view];
          if (v54)
          {
            v55 = v54;
            v56 = [v54 leadingAnchor];

            v57 = [v53 constraintEqualToAnchor:v56];
            [v57 setActive:1];

            v58 = [v18 trailingAnchor];
            v59 = [v69 view];
            if (v59)
            {
              v60 = v59;
              v61 = [v59 trailingAnchor];

              v62 = [v58 constraintEqualToAnchor:v61];
              [v62 setActive:1];

              sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
              isa = v19;
              if ((static UIDevice.isIPhone()() & 1) == 0)
              {
                goto LABEL_22;
              }

              v64 = [v19 sheetPresentationController];

              if (v64)
              {
                sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
                v65 = swift_allocObject();
                *(v65 + 16) = xmmword_1003D56B0;
                *(v65 + 32) = [objc_opt_self() mediumDetent];
                sub_100018630(0, &qword_1004A6920, UISheetPresentationControllerDetent_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v64 setDetents:isa];

LABEL_22:
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  goto LABEL_23;
                }

                goto LABEL_36;
              }

LABEL_30:
              v67 = v69;
              goto LABEL_24;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v5 + qword_1004A65E0);
  v69 = v10;
  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  [v11 sizeToFit];
  v13 = *(v5 + qword_1004A65F8);
  [v13 setUserInteractionEnabled:0];
  [v13 setAlpha:1.0];
  *(v5 + qword_1004A6620) = 1;
  *(v5 + qword_1004A6618) = CACurrentMediaTime();
  sub_10009C6D4(a1);
  if (a3)
  {

    a3(v14);
    sub_1000223C4(a3, a4);
  }

  v15 = *(v5 + qword_1004A6650);
  if (!v15)
  {
    v68 = v69;
    goto LABEL_27;
  }

  v16 = *&v69[qword_1004ADDB8];
  if (!v16)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v17 = *(v16 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
  v18 = v15;
  [v18 setView:v17];
  sub_1001937D8(v18);
  v19 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v18];
  v20 = [v19 presentationController];
  [v20 setDelegate:a2];

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  a1 = v19;
  if (static UIDevice.isIPhone()())
  {
    a1 = [v19 sheetPresentationController];

    if (!a1)
    {
      goto LABEL_30;
    }

    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1003D6280;
    v21 = objc_opt_self();
    *(a2 + 32) = [v21 mediumDetent];
    *(a2 + 40) = [v21 largeDetent];
    sub_100018630(0, &qword_1004A6920, UISheetPresentationControllerDetent_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setDetents:v22];

    [a1 setPrefersGrabberVisible:1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_23:
  v66 = Strong;
  [Strong presentViewController:v19 animated:1 completion:0];

  v67 = v18;
  v18 = v19;
  v19 = v66;
LABEL_24:

  v68 = v19;
LABEL_27:
}

void sub_10009C6D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v84 = *(a1 + 8);
  v85 = v4;
  v5 = *(a1 + 56);
  v86 = *(a1 + 40);
  v87 = v5;
  v75 = qword_1004A6620;
  if (v1[qword_1004A6620])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  sub_10009F898(a1, &v79);
  if (qword_1004A0590 != -1)
  {
    swift_once();
  }

  if (qword_1004A0800 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5398;
  v8 = qword_1004D53A0;
  if (byte_1004D53A8)
  {
    v9 = byte_1004D53B8;
    v10 = qword_1004D53B0;
    v11 = byte_1004AF8C0;
    v12 = qword_1004D5398;
    v78 = sub_10007836C(v11, v10, v9);
    sub_10009F954(v7, v8, 1);
  }

  else
  {
    if (byte_1004AF8C0)
    {
      v13 = qword_1004D53A0;
    }

    else
    {
      v13 = qword_1004D5398;
    }

    v78 = v13;
  }

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.isIPhone()() & 1) != 0 && [objc_opt_self() jasperAvailable] && v2[v75] != 1)
  {
    *&v14 = 360.0;
  }

  else
  {
    *&v14 = 400.0;
  }

  v15 = *&v14;
  v16 = CACurrentMediaTime();
  v17 = qword_1004A6618;
  v18 = v16 - *&v2[qword_1004A6618];
  if (v18 >= 0.0166666667)
  {
    v19 = qword_1004A6608;
    v20 = qword_1004A6610;
    v21 = *&v2[qword_1004A6608];
    do
    {
      v22 = *&v2[v20] + ((v21 - v6) * -v15 + *&v2[v20] * -36.0) * 0.0166666667;
      *&v2[v20] = v22;
      v21 = v21 + v22 * 0.0166666667;
      *&v2[v19] = v21;
      v18 = v18 + -0.0166666667;
    }

    while (v18 >= 0.0166666667);
  }

  *&v2[v17] = v16 - v18;
  if (vabdd_f64(*&v2[qword_1004A6608], v6) >= 0.01 || (v23 = qword_1004A6610, fabs(*&v2[qword_1004A6610]) >= 0.01))
  {
    v76 = 0;
  }

  else
  {
    *&v2[qword_1004A6608] = v6;
    *&v2[v23] = 0;
    v76 = 1;
  }

  v24 = qword_1004A65F0;
  v25 = [*&v2[qword_1004A65F0] layer];
  mix(_:_:_:)();
  [v25 setCornerRadius:?];

  v26 = *a1;
  v74 = objc_opt_self();
  if ([v74 jasperAvailable] && *&v2[qword_1004A65A0])
  {
    v27 = *&v2[qword_1004A6628];
    v26 = v26 - v27;
  }

  v28 = fabsf(v26);
  if (v28 > 3.1416)
  {
    v26 = *Float.pi2.unsafeMutableAddressor() - v28;
  }

  v29 = *&v2[qword_1004A65D8];
  mix(_:_:_:)();
  [v29 setAlpha:?];
  [v29 bounds];
  [v29 setBounds:?];
  [*&v2[v24] bounds];
  v30 = CGRectGetWidth(v88) * 0.5;
  [*&v2[v24] bounds];
  [v29 setCenter:{v30, CGRectGetHeight(v89) * 0.5}];
  v31 = *&v2[qword_1004A65E8];
  [v31 setAlpha:1.0];
  [v29 bounds];
  Width = CGRectGetWidth(v90);
  if (qword_1004A05A8 != -1)
  {
    swift_once();
  }

  v77 = v24;
  v33 = *&qword_1004D5120;
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v34 = qword_1004D50E8;
  v35 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_1004D50E8];
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v36 = qword_1004D4970;
  v37 = static UIContentSizeCategory.> infix(_:_:)();

  if (v37)
  {

    v36 = UIContentSizeCategoryAccessibilityLarge;
  }

  v38 = objc_opt_self();
  v39 = [v38 traitCollectionWithPreferredContentSizeCategory:v36];

  [v35 scaledValueForValue:v39 compatibleWithTraitCollection:v33];
  v41 = v40;

  [v29 bounds];
  [v31 setCenter:{Width - v41, CGRectGetHeight(v91) * 0.5}];
  v42 = *&v2[qword_1004A65E0];
  [v29 bounds];
  v43 = CGRectGetWidth(v92) * 0.5;
  if (qword_1004A05B0 != -1)
  {
    swift_once();
  }

  v44 = *&qword_1004D5128;
  v45 = v43 - *&qword_1004D5128;
  [v29 bounds];
  [v42 setCenter:{v45, CGRectGetHeight(v93) * 0.5}];
  if (v2[qword_1004A6638] == 1)
  {
    v46 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:v34];
    v47 = qword_1004D4970;
    v48 = static UIContentSizeCategory.> infix(_:_:)();

    if (v48)
    {

      v47 = UIContentSizeCategoryAccessibilityLarge;
    }

    v49 = [v38 traitCollectionWithPreferredContentSizeCategory:v47];

    [v46 scaledValueForValue:v49 compatibleWithTraitCollection:v33];
    v51 = v50;

    [v29 bounds];
    [v31 setCenter:{v51, CGRectGetHeight(v94) * 0.5}];
    [v29 bounds];
    v52 = v44 + CGRectGetWidth(v95) * 0.5;
    [v29 bounds];
    [v42 setCenter:{v52, CGRectGetHeight(v96) * 0.5}];
  }

  v53 = *&v2[qword_1004A65D0];
  *&v79 = v26;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  if (v53)
  {
    v54 = v53;
    sub_10009F9AC(&v79);
    [v54 setAlpha:1.0];
  }

  else
  {
    sub_10009F9AC(&v79);
  }

  if (v76)
  {
    v55 = v2[v75];
    v56 = &v2[qword_1004A65C0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v55 == 1)
    {
      if (Strong)
      {
        v58 = *(v56 + 1);
        ObjectType = swift_getObjectType();
        (*(v58 + 8))(ObjectType, v58);
        swift_unknownObjectRelease();
      }

      if ([v74 jasperAvailable])
      {
        v60 = *&v2[qword_1004A65A0];
        if (v60)
        {
          v61 = *&v2[v77];
          v62 = v60;
          [v61 setAlpha:0.0];
          v63 = qword_1004ADE30;
          v64 = *(**&v62[qword_1004ADE30] + 144);

          v64(&v79, v65);

          v66 = &v62[qword_1004ADDB0];
          v67 = sub_10009F2F8(*&v62[qword_1004ADDB0], *&v62[qword_1004ADDB0 + 8], v79);

          if (v67)
          {
            v68 = *v66;
            v69 = v66[1];
            v70 = *(**&v62[v63] + 400);

            v71 = v70(&v79);
            sub_10009F3F0(v68, v69);

            v71(&v79, 0);
          }
        }
      }
    }

    else
    {
      if (Strong)
      {
        v72 = *(v56 + 1);
        v73 = swift_getObjectType();
        (*(v72 + 16))(v73, v72);
        swift_unknownObjectRelease();
      }

      [v2 performSelector:"hide" withObject:0 afterDelay:0.03];
      [*&v2[qword_1004A65F8] setUserInteractionEnabled:0];
    }
  }
}

void sub_10009D0C4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[qword_1004A6620] = 0;
  v7 = *&v3[qword_1004A65D0];
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 sharedMenuController];
    [v10 hideMenu];
  }

  if ([objc_opt_self() jasperAvailable] && (v11 = *&v3[qword_1004A65A0]) != 0)
  {
    v12 = *&v3[qword_1004A6650];
    if (!v12)
    {
      return;
    }

    v13 = swift_allocObject();
    v14 = *a1;
    *(v13 + 56) = a1[1];
    v15 = a1[3];
    *(v13 + 72) = a1[2];
    *(v13 + 88) = v15;
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v3;
    *(v13 + 104) = *(a1 + 8);
    *(v13 + 40) = v14;
    v30 = sub_10009F944;
    v31 = v13;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100041180;
    v29 = &unk_10046BE08;
    v16 = _Block_copy(&aBlock);
    v17 = v11;
    v18 = v12;
    sub_100038EBC(a2, a3);
    v19 = v3;
    sub_10009F898(a1, v25);

    [v18 dismissViewControllerAnimated:1 completion:v16];
  }

  else
  {
    v20 = *&v3[qword_1004A6650];
    if (!v20)
    {
      return;
    }

    v21 = swift_allocObject();
    v22 = *a1;
    *(v21 + 40) = a1[1];
    v23 = a1[3];
    *(v21 + 56) = a1[2];
    *(v21 + 72) = v23;
    *(v21 + 16) = v3;
    *(v21 + 88) = *(a1 + 8);
    *(v21 + 24) = v22;
    v30 = sub_10009F88C;
    v31 = v21;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100041180;
    v29 = &unk_10046BDB8;
    v16 = _Block_copy(&aBlock);
    v24 = v3;
    sub_10009F898(a1, v25);
    v18 = v20;

    [v18 dismissViewControllerAnimated:1 completion:v16];
  }

  _Block_release(v16);
}

void sub_10009D3A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    a1(v8);
    sub_1000223C4(a1, a2);
  }

  *(a3 + qword_1004A6618) = CACurrentMediaTime();
  v9 = *(a3 + qword_1004A65E0);
  v10 = String._bridgeToObjectiveC()();
  [v9 setText:v10];

  [v9 sizeToFit];
  sub_10009C6D4(a4);
}

void sub_10009D450(uint64_t a1, uint64_t a2)
{
  *(a1 + qword_1004A6618) = CACurrentMediaTime();
  v4 = *(a1 + qword_1004A65E0);
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  [v4 sizeToFit];
  sub_10009C6D4(a2);
}

id sub_10009D4D4(uint64_t a1)
{
  [*(a1 + qword_1004A65F8) setAlpha:0.0];
  [*(a1 + qword_1004A65F0) setAlpha:0.0];
  sub_10009D530();
  return sub_10009D698();
}

void sub_10009D530()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v1 = *(v0 + qword_1004A65A0);
    if (v1)
    {
      v2 = qword_1004ADE30;
      v3 = *(**&v1[qword_1004ADE30] + 144);
      v4 = v1;

      v3(v11, v5);

      v6 = &v4[qword_1004ADDB0];
      LOBYTE(v3) = sub_10009F2F8(*&v4[qword_1004ADDB0], *&v4[qword_1004ADDB0 + 8], v11[0]);

      if (v3)
      {
        v7 = *v6;
        v8 = v6[1];
        v9 = *(**&v1[v2] + 400);

        v10 = v9(v11);
        sub_10009F3F0(v7, v8);

        v10(v11, 0);
      }
    }
  }
}

id sub_10009D698()
{
  v1 = *(v0 + qword_1004A65D0);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  if (![objc_opt_self() jasperAvailable])
  {
    return [*(v0 + qword_1004A65F8) removeFromSuperview];
  }

  v2 = qword_1004A65A0;
  v3 = *(v0 + qword_1004A65A0);
  if (!v3)
  {
    return [*(v0 + qword_1004A65F8) removeFromSuperview];
  }

  v4 = v3;
  [v4 removeFromSuperview];
  v5 = *(v0 + v2);
  *(v0 + v2) = 0;

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.isIPhone()() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AB8 + 1);
  if (*(&xmmword_1004D4AB8 + 1))
  {
    v7 = [*(&xmmword_1004D4AB8 + 1) tabBarController];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 tabBar];
      [v9 alpha];
      v11 = v10;

      if (v11 == 1.0)
      {
      }

      else
      {
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        *(v13 + 24) = 0x3FF0000000000000;
        v16[4] = sub_10009F2AC;
        v16[5] = v13;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 1107296256;
        v16[2] = sub_100041180;
        v16[3] = &unk_10046BD18;
        v14 = _Block_copy(v16);
        v15 = v8;

        [v12 animateWithDuration:0 delay:v14 options:0 animations:0.15 completion:0.0];

        _Block_release(v14);
      }

      return [*(v0 + qword_1004A65F8) removeFromSuperview];
    }

LABEL_12:

    return [*(v0 + qword_1004A65F8) removeFromSuperview];
  }

  __break(1u);
  return result;
}

void sub_10009D914(void *a1)
{
  v1 = a1;
  sub_10009DD74(&unk_10046BEB8, sub_10009FDD4, &unk_10046BED0);
}

uint64_t sub_10009D984()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10009F2F0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046BD68;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_10009DC1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + qword_1004A65E0) setFrame:{0.0, 0.0, 0.0, 0.0}];
    [*&v2[qword_1004A65D8] setAlpha:1.0];
    v3 = qword_1004A65F8;
    [*&v2[qword_1004A65F8] setAlpha:0.0];
    [*&v2[v3] setUserInteractionEnabled:0];
    v2[qword_1004A6620] = 0;
    *&v2[qword_1004A6608] = 0;
    *&v2[qword_1004A6610] = 0;
    v4 = *&v2[qword_1004A65D0];
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    sub_10009D530();
    v5 = *&v2[qword_1004A6650];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_10009DD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10009DFFC(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *&a1[qword_1004A65F0];
  v6 = a4;
  v7 = a1;
  [v5 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 locationInView:*&v7[qword_1004A65F8]];
  v19.x = v16;
  v19.y = v17;
  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  LODWORD(v5) = CGRectContainsPoint(v20, v19);

  return v5 ^ 1;
}

double sub_10009E0E8()
{

  swift_unknownObjectWeakDestroy();

  sub_10001B9D0(v0 + qword_1004A65C0);

  return result;
}

double sub_10009E22C(uint64_t a1)
{

  swift_unknownObjectWeakDestroy();

  sub_10001B9D0(a1 + qword_1004A65C0);

  return result;
}

uint64_t type metadata accessor for LabelDetailsPlatterWrapper(uint64_t a1)
{
  result = qword_1004A66F0;
  if (!qword_1004A66F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009E49C()
{
  v1 = qword_1004A65D0;
  v2 = *(v0 + qword_1004A65D0);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  if (*(v0 + qword_1004A6620) == 1)
  {
    v4 = v0 + qword_1004A65C0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 40))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    v7 = *(v0 + v1);
    if (v7)
    {

      [v7 setAlpha:1.0];
    }
  }
}

void sub_10009E740(void *a1)
{
  v38.receiver = v1;
  v38.super_class = type metadata accessor for MeasurementDetailSheetViewController();
  objc_msgSendSuper2(&v38, "buildMenuWithBuilder:", a1);
  sub_100018630(0, &unk_1004A1910, UIMenuSystem_ptr);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    sub_100018630(0, &unk_1004A6980, UIKeyCommand_ptr);
    v6 = objc_opt_self();
    v7 = [v6 mainBundle];
    swift__string._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0xD000000000000014;
    v8._object = 0x80000001003FFDD0;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, swift__string);

    v10 = String._bridgeToObjectiveC()();
    v11 = objc_opt_self();
    v12 = [v11 systemImageNamed:v10];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v14 = [v6 mainBundle];
    swift__stringa._object = 0xE000000000000000;
    v15._object = 0x80000001003FFDF0;
    v15._countAndFlagsBits = 0xD000000000000010;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    swift__stringa._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, swift__stringa);

    v17 = String._bridgeToObjectiveC()();
    v18 = [v11 systemImageNamed:v17];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v20 = [v6 mainBundle];
    swift__stringb._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x5349485F574F4853;
    v21._object = 0xEC00000059524F54;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    swift__stringb._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, swift__stringb);

    v23 = String._bridgeToObjectiveC()();
    v24 = [v11 systemImageNamed:v23];

    v25 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_100018630(0, &unk_1004A1920, UIMenu_ptr);
    LOBYTE(v10) = String._bridgeToObjectiveC()();
    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1003D6290;
    *(preferredElementSize + 32) = v13;
    *(preferredElementSize + 40) = v19;
    *(preferredElementSize + 48) = v25;
    v27 = v13;
    v28 = v19;
    v29 = v25;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v39.value.super.isa = 0;
    v39.is_nil = v10;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, 0, v39, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    v32 = swift_allocObject();
    *(v32 + 16) = isa;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100025004;
    *(v33 + 24) = v32;
    aBlock[4] = sub_10002500C;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10014B1C8;
    aBlock[3] = &unk_10046BE80;
    v34 = _Block_copy(aBlock);
    v35 = isa;

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuView fromChildrenBlock:v34];

    _Block_release(v34);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

char *sub_10009EDA4(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = sub_1001CCD0C();
LABEL_7:
      v8 = v7;

      return (v8 & 1);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = sub_1001CCD38();
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (static Selector.== infix(_:_:)())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = *&result[qword_1004AF910];
    if (v10)
    {
      v11 = v10;
      v12 = sub_10014B260();

      v9 = v11;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v22 = *(v12 + 2);

    return (v22 != 0);
  }

  else
  {
    sub_10006C92C(a2, v24, &unk_1004A6970, &unk_1003D5710);
    v13 = v25;
    if (v25)
    {
      v14 = sub_10000FEBC(v24, v25);
      v15 = *(v13 - 8);
      v16 = __chkstk_darwin(v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      sub_10000FF00(v24);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for MeasurementDetailSheetViewController();
    v23.receiver = v2;
    v23.super_class = v20;
    v21 = objc_msgSendSuper2(&v23, "canPerformAction:withSender:", a1, v19);
    swift_unknownObjectRelease();
    return v21;
  }
}

void sub_10009F0F0(char *a1, uint64_t a2, void (*a3)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    a3();
  }

  else
  {
    __break(1u);
  }
}

id sub_10009F198(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MeasurementDetailSheetViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009F200()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10009F25C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10009F274()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F2B8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10009F2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10009F3F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10009F52C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10009F688(v8);
  *v2 = v16;
  return v12;
}

void sub_10009F52C()
{
  v1 = v0;
  sub_10000F974(&unk_1004A6910, &unk_1003DA2F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10009F688(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
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
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

uint64_t sub_10009F84C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10009F8F4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

void sub_10009F954(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

id sub_10009FA00()
{
  sub_10009E49C();
  v1 = *(v0 + qword_1004A65E0);
  sub_10019F9DC();
  v3 = v2;
  [v1 setFont:v2];

  v4 = *(v0 + qword_1004A65E8);
  result = [v4 image];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  [result size];
  v8 = v7;

  result = [v4 image];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = result;
  [result size];
  v11 = v10;

  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v13 = qword_1004D4970;
  v14 = static UIContentSizeCategory.> infix(_:_:)();

  if (v14)
  {

    v13 = UIContentSizeCategoryAccessibilityLarge;
  }

  v15 = objc_opt_self();
  v16 = objc_opt_self();
  v17 = [v16 traitCollectionWithPreferredContentSizeCategory:v13];

  v18 = [v15 preferredFontForTextStyle:v12 compatibleWithTraitCollection:v17];
  [v18 pointSize];
  v20 = v19;

  v21 = qword_1004D4970;
  LOBYTE(v17) = static UIContentSizeCategory.> infix(_:_:)();

  if (v17)
  {

    v21 = UIContentSizeCategoryAccessibilityLarge;
  }

  v22 = v8 / v11 * (v20 * 0.9);
  v23 = [v16 traitCollectionWithPreferredContentSizeCategory:v21];

  v24 = [v15 preferredFontForTextStyle:v12 compatibleWithTraitCollection:v23];
  [v24 pointSize];
  v26 = v25;

  return [v4 setBounds:{0.0, 0.0, v22, v26 * 0.9}];
}

uint64_t sub_10009FCE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000F974(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009FD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10009FE18(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000A48BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *(v2 + v9 + 8);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 = (v10 + 4);
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_1000A40B8(v16, v17, v18, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
}

uint64_t sub_10009FF78(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

double sub_1000A0068()
{

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1000A00C4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for WorldRectangle();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v5 = v1;
      static os_log_type_t.debug.getter();
      sub_10001D910();
      v4 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_1000A01A0(v3);
    }
  }
}

void sub_1000A01A0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v4 - 8);
  v116 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v89 - v7;
  v9 = type metadata accessor for MeasurementHistoryItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v89 - v15);
  if ((*((swift_isaMask & *a1) + 0xD0))(v14) == 5)
  {
    v114 = v8;
    v115 = v9;
    v91 = v10;
    v17 = *((swift_isaMask & *a1) + 0x230);
    v18 = v17();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v19 = *(v18 + 32);
    }

    v20 = v19;

    v22 = (*((swift_isaMask & *v20) + 0x340))(v21);

    v23 = v17();
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_8;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v24 = *(v23 + 40);
LABEL_8:
      v25 = v24;

      v27 = (*((swift_isaMask & *v25) + 0x340))(v26);

      v28 = v17();
      v29 = v28 & 0xC000000000000001;
      v113 = v2;
      if (v27 >= v22)
      {
        if (v29)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v37 = *(v28 + 32);
        }

        v38 = v37;

        v39 = v38;
        v40 = v17();
        if ((v40 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v41 = *(v40 + 40);
        }

        v35 = v41;
        v36 = v39;
        v32 = v41;
LABEL_23:

        v42 = v35;
        v43 = (*((swift_isaMask & *v32) + 0x340))(v42);

        sub_1000A4B74(v122, v43);
        if (BYTE4(v123))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (BYTE5(v123) == 4)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v44 = sub_100111E38(SBYTE5(v123), 0, *&v123);
        v45 = (*((swift_isaMask & *v36) + 0x340))();

        sub_1000A4B74(v128, v45);
        if (BYTE4(v129))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v92 = v32;
        v93 = v36;
        v90 = v12;
        if (BYTE5(v129) == 4)
        {
LABEL_58:
          __break(1u);
          return;
        }

        v46 = sub_100111E38(SBYTE5(v129), 0, *&v129);
        v47 = v113;
        v48 = *(**(v113 + 88) + 144);

        v48(v49);

        v50 = sub_1000983B8();
        v51 = v50 == 0;
        sub_100112000(v50, 1, 0, 0, &v134, v44 * v46);
        v112 = v134;
        v110 = v136;
        object = v135;
        v52 = v138;
        v108 = v139;
        v109 = v137;
        sub_100112000(v50, 0, 1, 0, v140, v44 * v46);
        v106 = v140[1];
        v107 = v140[0];
        v104 = v140[3];
        v105 = v140[2];
        LOBYTE(v50) = v142;
        v102 = v143;
        v103 = v141;
        sub_100112000(v51, 0, 0, 0, &v144, v44 * v46);
        v101 = v144;
        v99 = v146;
        v100 = v145;
        v97 = v149;
        v98 = v147;
        v119 = v52;
        v118 = v50;
        v117 = v148;
        sub_1000A4B74(&v120[15], sqrtf((v44 * v44) + (v46 * v46)));
        v120[4] = v125;
        v120[5] = v126;
        v120[6] = *v127;
        *(&v120[6] + 14) = *&v127[14];
        v120[0] = v122[0];
        v120[1] = v122[1];
        v120[2] = v123;
        v120[3] = v124;
        *(&v120[10] + 8) = v130;
        *(&v120[9] + 8) = v129;
        *(&v120[8] + 8) = v128[1];
        *(&v120[7] + 8) = v128[0];
        *(&v120[14] + 6) = *&v133[14];
        *(&v120[13] + 8) = *v133;
        *(&v120[12] + 8) = v132;
        *(&v120[11] + 8) = v131;
        v94 = v119;
        v95 = v118;
        v53 = swift_isaMask & *a1;
        v96 = v117;
        v54 = (*(v53 + 184))();
        v56 = v55;
        v57 = [objc_opt_self() mainBundle];
        v150._object = 0xE000000000000000;
        v58._object = 0x8000000100404960;
        v58._countAndFlagsBits = 0xD00000000000001DLL;
        v59._countAndFlagsBits = 0;
        v59._object = 0xE000000000000000;
        v150._countAndFlagsBits = 0;
        v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v150);

        v61 = v115;
        v62 = *(v115 + 24);
        v63 = type metadata accessor for MeasurementCapture(0);
        v64 = *(*(v63 - 8) + 56);
        v89 = v62;
        v64(v16 + v62, 1, 1, v63);
        memcpy(v121, v120, 0x168uLL);
        *&v121[45] = v112;
        v121[47] = object;
        v121[48] = v110;
        LODWORD(v121[49]) = v109;
        BYTE4(v121[49]) = v94;
        BYTE5(v121[49]) = v108;
        v121[50] = v107;
        v121[51] = v106;
        v121[52] = v105;
        v121[53] = v104;
        LODWORD(v121[54]) = v103;
        BYTE4(v121[54]) = v95;
        BYTE5(v121[54]) = v102;
        *&v121[55] = v101;
        v121[57] = v100;
        v121[58] = v99;
        LODWORD(v121[59]) = v98;
        BYTE4(v121[59]) = v96;
        BYTE5(v121[59]) = v97;
        sub_1000A52E4(v121);
        v16->_countAndFlagsBits = v54;
        v16->_object = v56;
        v16[1] = v60;
        object = v60._object;
        memcpy(v16 + *(v61 + 28), v121, 0x346uLL);
        v65 = *(v61 + 32);
        *&v112 = v16;
        *(&v16->_countAndFlagsBits + v65) = 1;
        v66 = v47;
        v67 = *(**(v47 + 64) + 144);

        v69 = v114;
        v67(v68);

        v70 = *v69;

        sub_10009FD64(v69, type metadata accessor for MeasurementsHistory);
        v71 = *(v70 + 16);
        if (!v71)
        {
LABEL_35:

          v76 = v112;
LABEL_39:
          sub_1000A198C(v76, 1);

          sub_10009FD64(v76, type metadata accessor for MeasurementHistoryItem);
          return;
        }

        v72 = 0;
        v73 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v74 = *(v91 + 72);
        while (1)
        {
          v75 = *(v70 + v73) == v54 && *(v70 + v73 + 8) == v56;
          if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v72;
          v73 += v74;
          if (v71 == v72)
          {
            goto LABEL_35;
          }
        }

        v77 = v66;
        v78 = *(**(v66 + 64) + 144);

        v80 = v116;
        v78(v79);

        if (v72 < *(*v80 + 16))
        {
          v81 = *v80 + v73;
          v83 = *(v81 + 16);
          v82 = *(v81 + 24);

          v76 = v112;
          *(v112 + 16) = v83;
          v76[3] = v82;
          sub_10009FD64(v80, type metadata accessor for MeasurementsHistory);
          v84 = *(**(v77 + 64) + 144);

          v84(v85);

          if (v72 < *(*v80 + 16))
          {
            v86 = v90;
            sub_100023338(*v80 + v73, v90);
            v87 = *(v115 + 24);
            v88 = v89;
            sub_100018F04(v76 + v89, &unk_1004ABAD0, &qword_1003D7070);
            sub_10007CC18(v86 + v87, v76 + v88);
            sub_10009FD64(v86, type metadata accessor for MeasurementHistoryItem);
            sub_10009FD64(v80, type metadata accessor for MeasurementsHistory);
            goto LABEL_39;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (!v29)
      {
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v28 + 32);
LABEL_12:
          v31 = v30;

          v32 = v31;
          v33 = v17();
          if ((v33 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_15;
          }

          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v34 = *(v33 + 40);
LABEL_15:
            v35 = v34;
            v36 = v34;
            goto LABEL_23;
          }

          goto LABEL_51;
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_45:
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }
}

void sub_1000A0D0C(void *a1)
{
  v3 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v55 - v7);
  v9 = type metadata accessor for MeasurementHistoryItem(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v55 - v15);
  v17 = (*((swift_isaMask & *a1) + 0xD0))(v14);
  if (v17 > 7 || ((1 << v17) & 0x98) == 0)
  {
    v60 = v5;
    v61 = v10;
    v58 = v12;
    v64 = v1;
    sub_1000A12C8(a1, v65);
    v19 = (*((swift_isaMask & *a1) + 0xB8))();
    v20 = v9;
    v22 = v21;
    v23 = [objc_opt_self() mainBundle];
    v67._object = 0xE000000000000000;
    v24._object = 0x80000001004048B0;
    v24._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v67);

    v27 = v20[6];
    v28 = type metadata accessor for MeasurementCapture(0);
    v29 = *(*(v28 - 8) + 56);
    v56 = v27;
    v29(v16 + v27, 1, 1, v28);
    memcpy(v66, v65, 0x10DuLL);
    sub_1000A4D80(v66);
    v16->_countAndFlagsBits = v19;
    v16->_object = v22;
    v16[1] = v26;
    object = v26._object;
    v30 = memcpy(v16 + v20[7], v66, 0x346uLL);
    v57 = v20;
    v31 = v20[8];
    v32 = swift_isaMask & *a1;
    v62 = *(v32 + 0x2C8);
    v63 = v32 + 712;
    *(&v16->_countAndFlagsBits + v31) = v62(v30) & 1;
    v33 = *(**(v64 + 64) + 144);

    v33(v34);

    v35 = *v8;

    sub_10009FD64(v8, type metadata accessor for MeasurementsHistory);
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v39 = *(v61 + 72);
      while (1)
      {
        v40 = *(v35 + v38) == v19 && *(v35 + v38 + 8) == v22;
        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v37;
        v38 += v39;
        if (v36 == v37)
        {
          goto LABEL_14;
        }
      }

      v42 = v64;
      v43 = *(**(v64 + 64) + 144);

      v45 = v60;
      v43(v44);

      if (v37 >= *(*v45 + 16))
      {
        __break(1u);
      }

      else
      {
        v46 = *v45 + v38;
        v48 = *(v46 + 16);
        v47 = *(v46 + 24);

        v16[1]._countAndFlagsBits = v48;
        v16[1]._object = v47;
        sub_10009FD64(v45, type metadata accessor for MeasurementsHistory);
        v49 = *(**(v42 + 64) + 144);

        v49(v50);

        if (v37 < *(*v45 + 16))
        {
          v51 = v58;
          sub_100023338(*v45 + v38, v58);
          v52 = v56;
          v53 = v57[6];
          sub_100018F04(v16 + v56, &unk_1004ABAD0, &qword_1003D7070);
          sub_10007CC18(v51 + v53, v16 + v52);
          sub_10009FD64(v51, type metadata accessor for MeasurementHistoryItem);
          v41 = sub_10009FD64(v45, type metadata accessor for MeasurementsHistory);
          goto LABEL_18;
        }
      }

      __break(1u);
      return;
    }

LABEL_14:

LABEL_18:
    v54 = v62(v41);
    sub_1000A198C(&v16->_countAndFlagsBits, v54 & 1);
    sub_10009FD64(v16, type metadata accessor for MeasurementHistoryItem);
  }
}

void sub_1000A12C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*((swift_isaMask & *a1) + 0x340))();
  sub_1000A4B74(&v65, v5);
  v6 = *(**(v2 + 80) + 144);

  v6(v56, v7);

  if (v57)
  {
LABEL_17:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_19;
  }

  v9 = (*((swift_isaMask & *a1) + 0x250))(v8);
  swift_getKeyPath();
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  *&v56[0] = _swiftEmptyArrayStorage;
  sub_1000A2550(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = 0;
  v12 = *&v56[0];
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    *&v60[0] = v13;
    v14 = v13;
    swift_getAtKeyPath();

    *&v56[0] = v12;
    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      sub_1000A2550((v15 > 1), v16 + 1, 1);
      v12 = *&v56[0];
    }

    ++v11;
    *(v12 + 2) = v16 + 1;
    *(v12 + v16 + 8) = v55;
  }

  while (v10 != v11);

LABEL_15:
  *&v56[0] = v12;

  sub_10009FE18(v56);

  if (!*(*&v56[0] + 16))
  {
LABEL_34:

    __break(1u);

    __break(1u);
    return;
  }

  v17 = *(*&v56[0] + 32);

  v8 = simd_float4x4.position.getter();
  if ((v17 - v18) < 0.00000011921)
  {
    goto LABEL_17;
  }

  sub_1000A5058(v60, v17 - v18);
  v53 = v60[1];
  v54 = v60[0];
  v51 = v60[2];
  v52 = v60[3];
  v49 = v60[5];
  v50 = v60[4];
  v19 = v61;
  v20 = v62;
  v21 = v63 | (v64 << 32);
LABEL_19:
  v22 = *((swift_isaMask & *a1) + 0x250);
  v23 = v22(v8);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v24 = *(v23 + 40);
  }

  v25 = v24;

  (*((swift_isaMask & *v25) + 0x2B0))(v26);

  v27 = simd_float4x4.position.getter();
  v48 = v28;
  v29 = v22(v27);
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v30 = *(v29 + 32);
LABEL_25:
  v31 = v30;

  (*((swift_isaMask & *v31) + 0x2B0))(v32);

  simd_float4x4.position.getter();
  v34 = vsubq_f32(v48, v33);
  v35 = vmulq_f32(v34, v34);
  *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
  *v35.f32 = vrsqrte_f32(v36);
  *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
  v37 = vmulq_f32(*SIMD3<>.up.unsafeMutableAddressor(), vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]));
  v38 = fabsf(acosf(v37.f32[2] + vaddv_f32(*v37.f32)) * 57.296);
  if (v38 >= 90.0)
  {
    v39 = v38 + -90.0;
  }

  else
  {
    v39 = 90.0 - v38;
  }

  v40 = (*((swift_isaMask & *a1) + 0x268))();
  (*((swift_isaMask & *v40) + 0x2B0))();

  simd_float4x4.position.getter();
  *&v59[14] = *(v71 + 14);
  v58 = v70;
  v41 = v70;
  *v59 = v71[0];
  v56[3] = v68;
  v42 = v68;
  v57 = v69;
  v44 = v66;
  v56[0] = v65;
  v43 = v65;
  v56[1] = v66;
  v56[2] = v67;
  v45 = v67;
  *(a2 + 64) = v69;
  *(a2 + 80) = v41;
  *(a2 + 32) = v45;
  *(a2 + 48) = v42;
  *a2 = v43;
  *(a2 + 16) = v44;
  v46 = *&v59[16];
  *(a2 + 96) = *v59;
  *(a2 + 112) = v46;
  *(a2 + 128) = v47;
  *(a2 + 144) = v54;
  *(a2 + 160) = v53;
  *(a2 + 176) = v51;
  *(a2 + 192) = v52;
  *(a2 + 208) = v50;
  *(a2 + 224) = v49;
  *(a2 + 240) = v19;
  *(a2 + 248) = v20;
  *(a2 + 260) = WORD2(v21);
  *(a2 + 256) = v21;
  *(a2 + 264) = v39;
  *(a2 + 268) = 0;
}

void sub_1000A198C(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000A1CB4(*a1, a1[1]);
  v9 = **(v2 + 64);
  if ((v10 & 1) == 0)
  {
    v23 = *(v9 + 200);

    v25 = v23(v24);

    v27 = __chkstk_darwin(v26);
    LOBYTE(v28) = a2 & 1;
    v29 = a1;
    (*(*v25 + 416))(sub_1000A4E7C, v27);
    goto LABEL_5;
  }

  v11 = *(v9 + 144);

  v11(v12);

  __chkstk_darwin(v13);
  v28 = a1;
  v15 = sub_10009FF78(sub_1000A4E88, &v30[-32], v14, type metadata accessor for MeasurementHistoryItem);
  v17 = v16;
  sub_10009FD64(v8, type metadata accessor for MeasurementsHistory);
  if ((v17 & 1) == 0)
  {
    v18 = *(**(v3 + 64) + 200);

    v20 = v18(v19);

    v22 = __chkstk_darwin(v21);
    *&v30[-32] = v15;
    *&v30[-24] = a1;
    LOBYTE(v28) = a2 & 1;
    (*(*v20 + 416))(sub_1000A4EE0, v22);
LABEL_5:

    return;
  }

  LODWORD(v29) = 0;
  v28 = 167;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A1CB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MeasurementHistoryItem(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(**(v2 + 64) + 144);

  v12(v13);

  v14 = *v11;
  v15 = *(*v11 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v15 - 1;
    while (v16 < *(v14 + 16))
    {
      sub_100023338(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8);
      v18 = *v8 == a1 && v8[1] == a2;
      if (v18)
      {
        sub_10009FD64(v8, type metadata accessor for MeasurementHistoryItem);
        goto LABEL_14;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10009FD64(v8, type metadata accessor for MeasurementHistoryItem);
      if ((v19 & 1) == 0)
      {
        v18 = v17 == v16++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_10009FD64(v11, type metadata accessor for MeasurementsHistory);
  }
}

uint64_t sub_1000A1ED0(double **a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for MeasurementHistoryItem(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = *(type metadata accessor for MeasurementsHistory(0) + 20);
    sub_100018F04(a1 + v10, &qword_1004A28C0, &qword_1003D7080);
    sub_100023338(a3, a1 + v10);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  sub_100023338(a3, v9);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1000678BC(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1000678BC((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  result = sub_10008C998(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  *a1 = v11;
  return result;
}

uint64_t sub_1000A2070(unint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10006B7A4(v8);
  v8 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (*(v8 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = type metadata accessor for MeasurementHistoryItem(0);
  v14 = *(v10 - 8);
  sub_1000A4EEC(a3, v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a2);
  *a1 = v8;
  if (a4)
  {
    v11 = *(type metadata accessor for MeasurementsHistory(0) + 20);
    sub_100018F04(a1 + v11, &qword_1004A28C0, &qword_1003D7080);
    sub_100023338(a3, a1 + v11);
    (*(v14 + 56))(a1 + v11, 0, 1, v10);
  }

  v12 = *(type metadata accessor for MeasurementsHistory(0) + 24);
  sub_100018F04(a1 + v12, &qword_1004A28C0, &qword_1003D7080);
  sub_100023338(a3, a1 + v12);
  v13 = *(v14 + 56);

  return v13(a1 + v12, 0, 1, v10);
}

uint64_t sub_1000A2218(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1000A4954(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

double sub_1000A231C()
{

  return result;
}

uint64_t sub_1000A235C()
{
  StateObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoryTracker(uint64_t a1)
{
  result = qword_1004A69C0;
  if (!qword_1004A69C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double *sub_1000A246C(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A27F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A248C(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A33B0(a1, a2, a3, *v3, &qword_1004A6AE8, &qword_1003DA4F0, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

double *sub_1000A24D0(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A28F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A24F0(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2510(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2530(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2550(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2570(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A2E40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2590(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3090(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A25B0(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A33B0(a1, a2, a3, *v3, &qword_1004A3DD0, &qword_1003D7F40, type metadata accessor for MeasurementHistoryItem);
  *v3 = result;
  return result;
}

double *sub_1000A25F4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A358C(a1, a2, a3, *v3, &qword_1004A6B38, &qword_1003DA5E0);
  *v3 = result;
  return result;
}

double *sub_1000A2624(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A358C(a1, a2, a3, *v3, &qword_1004A6B40, &qword_1003DA5E8);
  *v3 = result;
  return result;
}

double *sub_1000A2654(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3688(a1, a2, a3, *v3, &qword_1004A6B28, &qword_1003DA5D0, &qword_1004A6B30, &qword_1003DA5D8);
  *v3 = result;
  return result;
}

double *sub_1000A2694(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3688(a1, a2, a3, *v3, &qword_1004A6B10, &qword_1003DA5B8, &qword_1004A6B18, &qword_1003DA5C0);
  *v3 = result;
  return result;
}

double *sub_1000A26D4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A37BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A26F4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A38B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2714(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A39B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2734(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3AC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2754(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2774(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A2794(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A27B4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A32A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A27D4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000A3F84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1000A27F4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A4000, &qword_1003D5620);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

double *sub_1000A28F8(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E00, &unk_1003D7F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A2A14(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&unk_1004ABEA0, &qword_1003D7F68);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_1000A2B18(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E28, &qword_1003D7F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A2C38(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A6AE0, &qword_1003DA4E8);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1000A2D3C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3DE0, &qword_1003D7F50);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

double *sub_1000A2E40(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E38, &qword_1003D7FA0);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_1000A2F44(double *result, int64_t a2, char a3, double *a4)
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
    sub_10000F974(&qword_1004A3EE0, &qword_1003D8038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3ED8, &qword_1003D8030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A3090(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A46E0, &qword_1003D5618);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A31A0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E78, &qword_1003D7FE0);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1000A32A4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3DB8, &qword_1003D7F30);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A33B0(double *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_10000F974(a5, a6);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_1000A358C(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 16);
  if (v9 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000F974(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = (v12 + 4);
  v16 = (a4 + 32);
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

double *sub_1000A3688(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000F974(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 5);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1000A37BC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A6B20, &qword_1003DA5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_1000A38B0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E10, &qword_1003D7F80);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1000A39B4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A6B08, &qword_1003DA5B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

double *sub_1000A3AC4(double *result, int64_t a2, char a3, double *a4)
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
    sub_10000F974(&qword_1004A3E88, &qword_1003D7FF0);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3E90, &qword_1003D7FF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A3BF8(double *result, int64_t a2, char a3, double *a4)
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
    sub_10000F974(&qword_1004A3FF0, &qword_1003D82C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3FF8, &unk_1003D82D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A3D40(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A6AF0, &qword_1003DA4F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

double *sub_1000A3E5C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000F974(&qword_1004A3E08, &qword_1003DF270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1000A3F84(double *result, int64_t a2, char a3, double *a4)
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
    sub_10000F974(&qword_1004A3E18, &unk_1003D7F88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10000F974(&qword_1004A3E20, &unk_1003D7890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000A40B8(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1000A4894(v8);
    }

    v76 = v8 + 2;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1000A4614((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100067218(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_100067218((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = *(v73 + 1);
        sub_1000A4614((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1000A4614(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1000A4808(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000A4894(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000A4954(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  v7 = sub_1000315D4(v19);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  sub_10000F974(&qword_1004A6AF8, &qword_1003DA500);
  swift_getKeyPath();
  a2[8] = MutableStateBinding.__allocating_init(_:_:)();
  v8 = sub_10000F974(&qword_1004A6B00, &qword_1003DA530);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v8 + 272);
  swift_retain_n();
  a2[9] = v11(KeyPath, v10);
  v12 = swift_getKeyPath();
  v13 = sub_10000F974(&qword_1004A8770, &qword_1003DCD10);
  a2[10] = (*(v13 + 272))(v12, v10);
  v14 = swift_getKeyPath();
  v15 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  a2[11] = (*(v15 + 272))(v14, v10);
  sub_1000336B4(v19, &v18);
  v16 = StateObserver.init(configuration:)();
  sub_10000FF00(v19);
  return v16;
}

void sub_1000A4B74(uint64_t a1@<X8>, float a2@<S0>)
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  v4 = sub_1000983B8();
  sub_10010DE20(v4, 0, 0, v23, a2);
  v5 = v23[0];
  v6 = v25;
  v20 = v23[2];
  v21 = v23[1];
  v19 = v23[3];
  v17 = v26;
  v18 = v24;
  if (v4 == 1)
  {
    sub_1001117E8(0, &v27);
    v7 = 1;
LABEL_7:
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v16 = v27;
    sub_10010DE20(v4 == 0, 0, 0, v32, a2);
    v12 = v32[0];
    v13 = v32[1];
    v14 = v34;
    v15 = v36;
    v22 = v35;
    *a1 = v5;
    *(a1 + 8) = v21;
    *(a1 + 16) = v20;
    *(a1 + 24) = v19;
    *(a1 + 32) = v18;
    *(a1 + 36) = v6;
    *(a1 + 37) = v17;
    *(a1 + 40) = v16;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    *(a1 + 72) = v10;
    *(a1 + 76) = v11;
    *(a1 + 77) = v7;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    *(a1 + 96) = v33;
    *(a1 + 112) = v14;
    *(a1 + 116) = v22;
    *(a1 + 117) = v15;
    return;
  }

  if (!v4)
  {
    sub_10011062C(1, 0, &v27);
    v7 = 2;
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A4D80(uint64_t result)
{
  v1 = *(result + 72) & 0xFF01FFFFFFFFLL;
  v2 = *(result + 112) & 0xFF01FFFFFFFFLL;
  v3 = *(result + 272) & 0xFF01FFFFFFFFLL;
  v4 = *(result + 312) & 0xFF01FFFFFFFFLL;
  v5 = *(result + 352) & 0xFF01FFFFFFFFLL;
  v6 = *(result + 392) & 0xFF01FFFFFFFFLL;
  v7 = *(result + 432) & 0xFF01FFFFFFFFLL;
  v8 = *(result + 472) & 0xFF01FFFFFFFFLL;
  v9 = *(result + 512) & 0xFF01FFFFFFFFLL;
  v10 = *(result + 552) & 0xFF01FFFFFFFFLL;
  v11 = *(result + 592) & 0xFF01FFFFFFFFLL;
  v12 = *(result + 632) & 0xFF01FFFFFFFFLL;
  v13 = *(result + 672) & 0xFF01FFFFFFFFLL;
  v14 = *(result + 712) & 0xFF01FFFFFFFFLL;
  v15 = *(result + 752) & 0xFF01FFFFFFFFLL;
  v16 = *(result + 792) & 0xFF01FFFFFFFFLL;
  v17 = (*(result + 832) | (*(result + 836) << 32)) & 0xFFFFFF01FFFFFFFFLL;
  *(result + 32) &= 0xFF01FFFFFFFFuLL;
  *(result + 72) = v1;
  *(result + 112) = v2;
  *(result + 272) = v3;
  *(result + 312) = v4;
  *(result + 352) = v5;
  *(result + 392) = v6;
  *(result + 432) = v7;
  *(result + 472) = v8;
  *(result + 512) = v9;
  *(result + 552) = v10;
  *(result + 592) = v11;
  *(result + 632) = v12;
  *(result + 672) = v13;
  *(result + 712) = v14;
  *(result + 752) = v15;
  *(result + 792) = v16;
  *(result + 832) = v17;
  *(result + 836) = WORD2(v17);
  return result;
}

uint64_t sub_1000A4E88(uint64_t *a1)
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

uint64_t sub_1000A4EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1000A4F50(void **a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = (*((swift_isaMask & **a1) + 0x2B0))();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

unint64_t sub_1000A4FEC()
{
  result = qword_1004A6AD8;
  if (!qword_1004A6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6AD8);
  }

  return result;
}

float sub_1000A5040@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_1000A504C(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

void sub_1000A5058(uint64_t a1@<X8>, float a2@<S0>)
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  PublishedValue.wrappedValue.getter();

  v4 = sub_1000983B8();
  v5 = v4;
  if (a2 <= 0.06)
  {
    a2 = 0.0;
  }

  sub_10010DE20(v4, 1, 0, v24, a2);
  v6 = v24[0];
  v7 = v26;
  v21 = v24[2];
  v22 = v24[1];
  v20 = v24[3];
  v18 = v27;
  v19 = v25;
  if (v5 == 1)
  {
    sub_1001117E8(0, &v28);
    v8 = 1;
LABEL_9:
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v17 = v28;
    sub_10010DE20(v5 == 0, 1, 0, v33, a2);
    v13 = v33[0];
    v14 = v33[1];
    v15 = v35;
    v16 = v37;
    v23 = v36;
    *a1 = v6;
    *(a1 + 8) = v22;
    *(a1 + 16) = v21;
    *(a1 + 24) = v20;
    *(a1 + 32) = v19;
    *(a1 + 36) = v7;
    *(a1 + 37) = v18;
    *(a1 + 40) = v17;
    *(a1 + 56) = v9;
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
    *(a1 + 76) = v12;
    *(a1 + 77) = v8;
    *(a1 + 80) = v13;
    *(a1 + 88) = v14;
    *(a1 + 96) = v34;
    *(a1 + 112) = v15;
    *(a1 + 116) = v23;
    *(a1 + 117) = v16;
    return;
  }

  if (!v5)
  {
    sub_10011062C(1, 1, &v28);
    v8 = 2;
    goto LABEL_9;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A527C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000A52E4(uint64_t result)
{
  v1 = *(result + 72) & 0xFF01FFFFFFFFLL;
  v2 = *(result + 112) & 0xFF01FFFFFFFFLL;
  v3 = *(result + 272) & 0xFF01FFFFFFFFLL;
  v4 = *(result + 312) & 0xFF01FFFFFFFFLL;
  v5 = *(result + 352) & 0xFF01FFFFFFFFLL;
  v6 = *(result + 392) & 0xFF01FFFFFFFFLL;
  v7 = *(result + 432) & 0xFF01FFFFFFFFLL;
  v8 = *(result + 472) & 0xFF01FFFFFFFFLL;
  v9 = *(result + 512) & 0xFF01FFFFFFFFLL;
  v10 = *(result + 552) & 0xFF01FFFFFFFFLL;
  v11 = *(result + 592) & 0xFF01FFFFFFFFLL;
  v12 = *(result + 632) & 0xFF01FFFFFFFFLL;
  v13 = *(result + 672) & 0xFF01FFFFFFFFLL;
  v14 = *(result + 712) & 0xFF01FFFFFFFFLL;
  v15 = *(result + 752) & 0xFF01FFFFFFFFLL;
  v16 = *(result + 792) & 0xFF01FFFFFFFFLL;
  v17 = (*(result + 832) | (*(result + 836) << 32)) & 0xFFFFFF01FFFFFFFFLL;
  *(result + 32) &= 0xFF01FFFFFFFFuLL;
  *(result + 72) = v1;
  *(result + 112) = v2;
  *(result + 272) = v3;
  *(result + 312) = v4;
  *(result + 352) = v5;
  *(result + 392) = v6;
  *(result + 432) = v7;
  *(result + 472) = v8;
  *(result + 512) = v9;
  *(result + 552) = v10;
  *(result + 592) = v11;
  *(result + 632) = v12;
  *(result + 672) = v13;
  *(result + 712) = v14;
  *(result + 752) = v15;
  *(result + 792) = v16;
  *(result + 832) = v17;
  *(result + 836) = (v17 | 0x4000000000) >> 32;
  return result;
}

id sub_1000A53E4()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel];
  v2 = [objc_opt_self() systemFontOfSize:60.0 weight:UIFontWeightRegular];
  [v1 setFont:v2];

  [v1 setTextAlignment:1];
  [v1 setUserInteractionEnabled:1];
  [v0 addSubview:v1];
  v3 = *&v0[OBJC_IVAR____TtC7Measure11LabelsStrip_secondaryLabelStack];

  return [v0 addSubview:v3];
}

void sub_1000A54C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v1[OBJC_IVAR____TtC7Measure11LabelsStrip_secondaryLabelStack];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 font];
  v5 = 1.0;
  if (v4)
  {
    v6 = v4;
    v7 = [*(*&v3[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) font];
    if (v7)
    {
      v8 = v7;
      [v6 descender];
      v10 = v9;
      [v6 leading];
      v12 = v10 + v11;
      [v8 descender];
      v14 = v12 - v13;
      [v8 leading];
      v16 = v15;

      v5 = v14 - v16 + 1.0;
    }

    else
    {
    }
  }

  v41 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1003D8370;
  v18 = [v2 leadingAnchor];
  v19 = [v1 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:16.0];

  *(v17 + 32) = v20;
  v21 = [v2 topAnchor];
  v22 = [v1 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [v2 trailingAnchor];
  v25 = [v3 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-16.0];

  *(v17 + 48) = v26;
  v27 = [v2 bottomAnchor];
  v28 = [v1 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-18.0];

  *(v17 + 56) = v29;
  v30 = [v3 trailingAnchor];
  v31 = [v1 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-16.0];

  *(v17 + 64) = v32;
  v33 = [v3 topAnchor];
  v34 = [v1 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v17 + 72) = v35;
  v36 = [v3 bottomAnchor];
  v37 = [v2 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:v5];

  *(v17 + 80) = v38;
  v39 = [v3 widthAnchor];
  v40 = [v39 constraintEqualToConstant:103.66];

  *(v17 + 88) = v40;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];
}

id sub_1000A5A74(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure11LabelsStrip_primaryLabel;
  type metadata accessor for InteractiveLabel();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC7Measure11LabelsStrip_secondaryLabelStack;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for NewSecondaryLabelStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1000A53E4();
    sub_1000A54C4();
  }

  return v7;
}

id sub_1000A5C88()
{
  v1 = qword_1004A6B90;
  v2 = *(v0 + qword_1004A6B90);
  if (v2)
  {
    v3 = *(v0 + qword_1004A6B90);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for EventsRecorder(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1000A5CFC()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1000A5D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + qword_1004A6B88) && (*(a2 + qword_1004A6BA0 + 8) & 1) == 0 && *(a2 + qword_1004A6BA0) - *(a1 + 8) <= 5.0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1000A5E28();
    }
  }
}

void sub_1000A5E28()
{
  v1 = (v0 + qword_1004A6B88);
  v2 = *(v0 + qword_1004A6B88);
  v3 = *(v0 + qword_1004A6B88 + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1000A6EB0(v2, v3);
  v4 = *(v0 + qword_1004A6B98);
  if (v4)
  {
    v5 = *(v0 + qword_1004A6B98 + 8);

    v4(v6);
    sub_1000223C4(v4, v5);
  }

  if (qword_1004A0268 != -1)
  {
    swift_once();
  }

  v7 = 0x8000000100404B40;
  v8 = 0xD000000000000010;

  Log.default(_:isPrivate:)(*&v8, 0);
}

id sub_1000A5EFC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a1;
  v51 = type metadata accessor for URL();
  v7 = *(v51 - 8);
  __chkstk_darwin(v51);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() BOOLForKey:ARSessionReplayFilePathManuallyUserDefaultsKey];
  NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  RecordReplayOption.replayFile.getter();
  v11 = (v4 + qword_1004A6B98);
  v12 = *(v4 + qword_1004A6B98);
  v13 = *(v4 + qword_1004A6B98 + 8);
  *v11 = a2;
  v11[1] = a3;
  sub_100038EBC(a2, a3);
  sub_1000223C4(v12, v13);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v53._countAndFlagsBits = 0;
  v17 = ARReplaySensorClassForMovieURL();

  v19 = v53._countAndFlagsBits;
  if (v17 && ((URL._bridgeToObjectiveC()(v18), v21 = v20, !v10) ? (v22 = 0) : (v22 = 3), swift_getObjCClassMetadata(), v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSequenceURL:v21 replayMode:v22], v21, v23))
  {
    v50 = v19;
    if (qword_1004A0268 != -1)
    {
      swift_once();
    }

    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v53._countAndFlagsBits = 0xD000000000000025;
    v53._object = 0x8000000100404A70;
    v24._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v24);

    Log.default(_:isPrivate:)(v53, 0);

    [v23 setReplaySensorDelegate:v4];
    v25 = sub_1000A5C88();
    sub_1000744D8(v23, v25);

    v26 = objc_allocWithZone(ARReplayConfiguration);
    v27 = [v26 initWithBaseConfiguration:v52 replaySensor:v23 replayingResultDataClasses:0];
    (*(v7 + 8))(v9, v51);
    v28 = (v4 + qword_1004A6B88);
    v29 = *(v4 + qword_1004A6B88);
    v30 = *(v4 + qword_1004A6B88 + 8);
    *v28 = v27;
    v28[1] = v23;
    v31 = v27;
    sub_1000A6EB0(v29, v30);
    v19 = v50;
  }

  else
  {
    v32 = 0xE000000000000000;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v53._countAndFlagsBits = 0xD000000000000020;
    v53._object = 0x8000000100404A40;
    v33._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x7265206874697720;
    v34._object = 0xED0000203A726F72;
    String.append(_:)(v34);
    if (v19)
    {
      v35 = [v19 localizedDescription];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v37;
    }

    else
    {
      v36 = 0;
    }

    v38._countAndFlagsBits = v36;
    v38._object = v32;
    String.append(_:)(v38);

    countAndFlagsBits = v53._countAndFlagsBits;
    object = v53._object;
    v41 = qword_1004A0268;

    if (v41 != -1)
    {
      swift_once();
    }

    v42._countAndFlagsBits = countAndFlagsBits;
    v42._object = object;
    Log.error(_:isPrivate:)(v42, 0);

    sub_1000A6E5C();
    swift_allocError();
    *v43 = countAndFlagsBits;
    v43[1] = object;
    swift_getErrorValue();
    v44 = Error.localizedDescription.getter();
    sub_100053D0C(v44, v45, 0x462079616C706552, 0xED000064656C6961);

    (*(v7 + 8))(v9, v51);

    v46 = (v4 + qword_1004A6B88);
    v47 = *(v4 + qword_1004A6B88);
    v48 = *(v4 + qword_1004A6B88 + 8);
    *v46 = 0;
    v46[1] = 0;
    sub_1000A6EB0(v47, v48);
    v31 = v52;
  }

  return v31;
}

id sub_1000A6418(uint64_t a1)
{
  v2 = v1 + qword_1004A6B88;
  if (*(v1 + qword_1004A6B88))
  {
    v4 = *(v2 + 8);
    swift_unknownObjectRetain();
    v5 = [objc_allocWithZone(ARReplayConfiguration) initWithBaseConfiguration:a1 replaySensor:v4 replayingResultDataClasses:0];
    [v4 setReplaySensorDelegate:v1];
    v6 = *v2;
    v7 = *(v2 + 8);
    *v2 = v5;
    *(v2 + 8) = v4;
    v8 = v5;
    sub_1000A6EB0(v6, v7);
    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A654C(void *a1)
{
  v2 = v1;
  v4 = qword_1004A6B80;
  v5 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v7 = qword_1004D5058;
  v8 = *(v5 + 272);

  *(v2 + v4) = v8(KeyPath, v7);
  v9 = (v2 + qword_1004A6B88);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + qword_1004A6B90) = 0;
  v10 = (v2 + qword_1004A6B98);
  *v10 = 0;
  v10[1] = 0;
  v11 = v2 + qword_1004A6BA0;
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_1000336B4(a1, v14);
  v12 = StateObservingNSObject.init(configuration:)();
  sub_10000FF00(a1);
  return v12;
}

id sub_1000A668C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = qword_1004A6B80;
  v4 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);

  *&v1[v3] = v7(KeyPath, v6);
  v8 = &v1[qword_1004A6B88];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v1[qword_1004A6B90] = 0;
  v9 = &v1[qword_1004A6B98];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v1[qword_1004A6BA0];
  *v10 = 0;
  v10[8] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

double sub_1000A67E4()
{

  sub_1000A6EB0(*(v0 + qword_1004A6B88), *(v0 + qword_1004A6B88 + 8));

  v1 = *(v0 + qword_1004A6B98);
  v2 = *(v0 + qword_1004A6B98 + 8);

  return sub_1000223C4(v1, v2);
}

double sub_1000A684C(uint64_t a1)
{

  sub_1000A6EB0(*(a1 + qword_1004A6B88), *(a1 + qword_1004A6B88 + 8));

  v2 = *(a1 + qword_1004A6B98);
  v3 = *(a1 + qword_1004A6B98 + 8);

  return sub_1000223C4(v2, v3);
}

uint64_t type metadata accessor for SessionSimulator(uint64_t a1)
{
  result = qword_1004A6BD0;
  if (!qword_1004A6BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A697C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSUserDefaults.recordReplayOption.unsafeMutableAddressor();
  RecordReplayOption.replayFile.getter();
  v10 = URL.path.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = a2 - a1;
  v14 = v3 + qword_1004A6BA0;
  *v14 = a2;
  *(v14 + 8) = 0;
  if (qword_1004A0268 != -1)
  {
    swift_once();
  }

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x8000000100404AF0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v10;
  v16._object = v12;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x7564206874697720;
  v17._object = 0xEF206E6F69746172;
  String.append(_:)(v17);
  Double.write<A>(to:)();
  v18._countAndFlagsBits = 115;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  Log.default(_:isPrivate:)(v33, 0);

  if (v13 >= 0.0)
  {

    if (*(v3 + qword_1004A6B88))
    {
      v25 = *(v3 + qword_1004A6B88 + 8);
      swift_unknownObjectRetain();
      v26 = objc_opt_self();
      [v26 floatForKey:ARReplaySensorFilePathAdvanceFramesPerSecondMultiplierUserDefaultsKey];
      v28 = v27;
      v29 = [v26 integerForKey:ARReplaySensorFilePathAdvanceToFrameUserDefaultsKey];
      if (v29 <= 0)
      {
        v30 = -1;
      }

      else
      {
        v30 = v29;
      }

      [v25 advanceToFrameIndex:v30];
      LODWORD(v31) = 1.0;
      if (v28 > 0.0)
      {
        *&v31 = v28;
      }

      [v25 setAdvanceFramesPerSecondMultiplier:v31];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v33._countAndFlagsBits = 0xD000000000000010;
    v33._object = 0x8000000100404B20;
    v19._countAndFlagsBits = v10;
    v19._object = v12;
    String.append(_:)(v19);

    countAndFlagsBits = v33._countAndFlagsBits;
    object = v33._object;
    sub_1000A6E5C();
    swift_allocError();
    *v22 = countAndFlagsBits;
    v22[1] = object;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    sub_100053D0C(v23, v24, 0x462079616C706552, 0xED000064656C6961);
  }
}

uint64_t sub_1000A6D64(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A6D7C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

void *sub_1000A6E20(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1000A6E5C()
{
  result = qword_1004A6D60;
  if (!qword_1004A6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6D60);
  }

  return result;
}

void *sub_1000A6EB0(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000A6EF4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000A6F34(uint64_t a1, int a2)
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

uint64_t sub_1000A6F7C(uint64_t result, int a2, int a3)
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

id sub_1000A6FC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  *&v4[v10] = [objc_allocWithZone(UITableView) init];
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_1000A70E0();
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setAccessibilityIdentifier:v12];

  return v11;
}

void sub_1000A70E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
  v2 = [objc_allocWithZone(UIView) init];
  [v1 setTableFooterView:v2];

  type metadata accessor for LineHistoryCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  type metadata accessor for LineHistoryCellWithScreenshot();
  v5 = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  [v1 registerClass:v5 forCellReuseIdentifier:v6];

  type metadata accessor for RectangleHistoryCell();
  v7 = swift_getObjCClassFromMetadata();
  v8 = String._bridgeToObjectiveC()();
  [v1 registerClass:v7 forCellReuseIdentifier:v8];

  type metadata accessor for RectangleHistoryCellWithScreenshot();
  v9 = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v1 registerClass:v9 forCellReuseIdentifier:v10];

  type metadata accessor for ObjectHistoryCell();
  v11 = swift_getObjCClassFromMetadata();
  v12 = String._bridgeToObjectiveC()();
  [v1 registerClass:v11 forCellReuseIdentifier:v12];

  [v1 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v13 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v13];

  [v1 setRowHeight:UITableViewAutomaticDimension];
  v14 = [objc_opt_self() currentTraitCollection];
  v15 = [v14 preferredContentSizeCategory];

  LOBYTE(v14) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v16 = 88.0;
  if (v14)
  {
    v16 = 222.0;
  }

  [v1 setEstimatedRowHeight:v16];
  [v1 setAllowsFocus:1];
  sub_1000A7498();

  sub_1000DB924();
}

void sub_1000A7498()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1004A0858 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5430;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_1000A7818;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000DB768;
  v7[3] = &unk_10046C120;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

id sub_1000A75F4(uint64_t a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
    if ((static UIDevice.isIPhone()() & 1) == 0)
    {
      sub_100018630(0, &qword_1004AE0D0, NSObject_ptr);
      if ((static NSObject.== infix(_:_:)() & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v9 = Strong, Strong, v7 == v9))
      {

        return 0;
      }
    }
  }

  return v7;
}

uint64_t sub_1000A77E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000A7834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000A784C(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *(a3 + 80);
  if (*(v4 + 16))
  {
    v6 = sub_10019C35C(a4);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v6);
      v9 = type metadata accessor for PersonHeightInstrument(0);

      sub_1000AA710(v9, &off_100469D00, v8, a2);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000A78DC(uint64_t a1)
{
  sub_10000F974(&qword_1004A6FD8, &qword_1003DA880);
  swift_allocObject();
  v1[8] = PassthroughSubject.init()();
  sub_10000F974(&qword_1004A6FE0, &qword_1003DA888);
  swift_getKeyPath();
  v1[9] = MutableStateBinding.__allocating_init(_:_:)();
  v1[11] = _swiftEmptyArrayStorage;
  v1[12] = _swiftEmptyArrayStorage;
  v1[13] = _swiftEmptyDictionarySingleton;
  v1[14] = _swiftEmptyDictionarySingleton;
  v34 = v1;
  v1[15] = _swiftEmptyDictionarySingleton;
  sub_10000F974(&qword_1004A6FE8, &unk_1003DA8B8);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  v5 = 0;
  v38 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v36 = v3;
  v37 = v3 + 64;
  v35 = v12;
  if (v11)
  {
    do
    {
      v13 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v42 = *(*(v38 + 48) + v16);
      v17 = *(*(v38 + 56) + 8 * v16);
      v18 = *(v17 + 16);

      v19 = 0;
      v20 = v17 + 32;
      v21 = _swiftEmptyArrayStorage;
LABEL_11:
      v22 = (v20 + 16 * v19);
      while (v18 != v19)
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        ++v19;
        v23 = v22 + 2;
        v24 = *v22;
        v22 += 2;
        if (v24)
        {
          v39 = *(v23 - 1);
          v40 = v20;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100067764(0, *(v21 + 2) + 1, 1, v21);
          }

          v26 = *(v21 + 2);
          v25 = *(v21 + 3);
          v20 = v40;
          if (v26 >= v25 >> 1)
          {
            v28 = sub_100067764((v25 > 1), v26 + 1, 1, v21);
            v20 = v40;
            v21 = v28;
          }

          *(v21 + 2) = v26 + 1;
          v27 = &v21[2 * v26];
          *(v27 + 4) = v24;
          *(v27 + 5) = v39;
          v12 = v35;
          v4 = v36;
          goto LABEL_11;
        }
      }

      *(v37 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(v4[6] + v16) = v42;
      *(v4[7] + 8 * v16) = v21;
      v29 = v4[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v4[2] = v31;
      v11 = v41;
    }

    while (v41);
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {

      v34[10] = v4;
      v32 = StateObserver.init(configuration:)();

      sub_1000A7C64();
      v33 = [objc_opt_self() defaultCenter];
      [v33 addObserver:v32 selector:"thermalStateDidChange" name:NSProcessInfoThermalStateDidChangeNotification object:0];

      return;
    }

    v15 = *(v7 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

double sub_1000A7C64()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];

  if (v3 == 1 || v3 == 2)
  {
    sub_1000A7F08(v3, v4);
    v5 = *(**(v0 + 72) + 400);

    v6 = v5(v9);
    *v7 = v3;
    v6(v9, 0);
  }

  return v4.n128_f64[0];
}

void sub_1000A7D7C()
{
  sub_10000F974(&qword_1004A6FD8, &qword_1003DA880);
  swift_allocObject();
  PassthroughSubject.init()();

  sub_10000F974(&qword_1004A6FE0, &qword_1003DA888);
  swift_getKeyPath();
  MutableStateBinding.__allocating_init(_:_:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1000A7E3C()
{
  v1 = *(**(v0 + 72) + 200);

  v3 = v1(v2);

  (*(*v3 + 296))(sub_1000AB1F8, v0);

  return result;
}

void sub_1000A7F08(uint64_t a1, __n128 a2)
{
  v3 = a1;
  v4 = *(v2 + 80);
  if (*(v4 + 16) && (v5 = sub_10019C35C(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_beginAccess();

    sub_1000A80B0(v8);

    sub_1000A84C0(v7, v3);
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v9._countAndFlagsBits = 0x2065646F4DLL;
    v9._object = 0xE500000000000000;
    String.append(_:)(v9);
    _print_unlocked<A, B>(_:_:)();
    v10._object = 0x8000000100404D70;
    v10._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v10);
    sub_10000F974(&qword_1004A6FA8, &qword_1003DA868);
    sub_1000AB200();
    v11._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v11);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

double sub_1000A80B0(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A6F08, &qword_1003DA808);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = sub_10000F974(&qword_1004A6F10, &qword_1003DA810);
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  v21 = a1;
  if (v9)
  {
    v23 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v13 = swift_unknownObjectRetain();
      sub_1000AA92C(v13, v12, 0);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 2;
      --v9;
    }

    while (v9);
    v10 = v23;
  }

  v23 = v10;
  sub_10000F974(&qword_1004A6F18, &qword_1003DA818);
  sub_10000F974(&qword_1004A6F20, &unk_1003DA820);
  sub_10001D47C(&qword_1004A6F28, &qword_1004A6F18, &qword_1003DA818, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001D47C(&qword_1004A6F30, &qword_1004A6F20, &unk_1003DA820, &protocol conformance descriptor for [A]);
  Publishers.MergeMany.init<A>(_:)();
  sub_10001D47C(&qword_1004A6F38, &qword_1004A6F08, &qword_1003DA808, &protocol conformance descriptor for Publishers.MergeMany<A>);
  Publisher.collect()();
  (*(v3 + 8))(v5, v2);
  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v21;
  *(v14 + 24) = v15;
  sub_10001D47C(&qword_1004A6F40, &qword_1004A6F10, &qword_1003DA810, &protocol conformance descriptor for Publishers.Collect<A>);

  v16 = v20;
  Publisher<>.sink(receiveValue:)();

  (*(v19 + 8))(v8, v16);
  swift_beginAccess();
  sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
  sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return result;
}

void sub_1000A84C0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v75) = a2;
  v72 = sub_10000F974(&qword_1004A6FB8, &qword_1003DA870);
  v60 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v59 - v5;
  v68 = type metadata accessor for UUID();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v76 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000F974(&qword_1004A6F08, &qword_1003DA808);
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v61 = &v59 - v8;
  v9 = sub_10000F974(&qword_1004A6F10, &qword_1003DA810);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = &v59 - v10;
  swift_beginAccess();

  sub_100103B54(v11);
  swift_endAccess();
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v73 = v2;
  if (v12)
  {
    v78 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v70 = a1;
    v14 = (a1 + 40);
    v74 = v12;
    while (1)
    {
      v17 = *(v14 - 1);
      v18 = *v14;
      ObjectType = swift_getObjectType();
      v20 = *(v18 + 48);
      swift_unknownObjectRetain();
      if (v20(ObjectType, v18))
      {
        v21 = objc_opt_self();
        v22 = [v21 processInfo];
        v23 = [v22 thermalState];

        if (v23 >= 4)
        {
          goto LABEL_32;
        }

        v24 = qword_1003DA8C8[v23];
        v25 = *(v18 + 24);
        if (v24 < v25(ObjectType, v18))
        {
          v26 = [v21 processInfo];
          v27 = [v26 thermalState];

          if (v27 >= 4)
          {
            goto LABEL_32;
          }

          v16 = 0x20303u >> (8 * v27);
          goto LABEL_5;
        }

        v15 = (v25)(ObjectType, v18);
      }

      else
      {
        v15 = (*(v18 + 24))(ObjectType, v18);
      }

      v16 = v15;
LABEL_5:
      sub_1000AA92C(v17, v18, v16);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 2;
      if (!--v12)
      {
        v13 = v78;
        v3 = v73;
        v12 = v74;
        a1 = v70;
        break;
      }
    }
  }

  v78 = v13;
  v28 = sub_10000F974(&qword_1004A6F18, &qword_1003DA818);
  sub_10000F974(&qword_1004A6F20, &unk_1003DA820);
  v29 = sub_10001D47C(&qword_1004A6F28, &qword_1004A6F18, &qword_1003DA818, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001D47C(&qword_1004A6F30, &qword_1004A6F20, &unk_1003DA820, &protocol conformance descriptor for [A]);
  v30 = v61;
  v69 = v29;
  v70 = v28;
  Publishers.MergeMany.init<A>(_:)();
  sub_10001D47C(&qword_1004A6F38, &qword_1004A6F08, &qword_1003DA808, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v31 = v63;
  v32 = v64;
  Publisher.collect()();
  (*(v62 + 8))(v30, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  *(v33 + 24) = v75;
  sub_10001D47C(&qword_1004A6F40, &qword_1004A6F10, &qword_1003DA810, &protocol conformance descriptor for Publishers.Collect<A>);

  v34 = v67;
  Publisher<>.sink(receiveValue:)();

  v66[1](v32, v34);
  swift_beginAccess();
  sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
  sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_beginAccess();
  v35 = *(v3 + 112);

  if (!v12)
  {
LABEL_29:
    *(v3 + 112) = v35;

    return;
  }

  v36 = (a1 + 32);
  v64 = (v65 + 16);
  v66 = (v65 + 8);
  v67 = (v60 + 8);
  while (1)
  {
    v74 = v12;
    v75 = *v36;
    v37 = swift_getObjectType();
    swift_unknownObjectRetain();
    v38 = *(&v75 + 1);
    sub_10008E3F4(v37, *(&v75 + 1));
    v77 = (*(v38 + 40))(v37, v38);
    v39 = swift_allocObject();
    *(v39 + 16) = v73;
    *(v39 + 24) = v75;

    swift_unknownObjectRetain();
    static Subscribers.Demand.unlimited.getter();
    sub_10000F974(&qword_1004A6FC0, &qword_1003DA878);
    sub_10001D47C(&qword_1004A6FC8, &qword_1004A6FC0, &qword_1003DA878, &protocol conformance descriptor for AnyPublisher<A, B>);
    v40 = v71;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    sub_10001D47C(&qword_1004A6FD0, &qword_1004A6FB8, &qword_1003DA870, &protocol conformance descriptor for Publishers.FlatMap<A, B>);

    v41 = v72;
    v42 = Publisher<>.sink(receiveValue:)();

    (*v67)(v40, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v35;
    v45 = sub_100198568(v76);
    v46 = v35[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      break;
    }

    v49 = v44;
    if (v35[3] >= v48)
    {
      v52 = v74;
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v77;
        if (v44)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1000BE094();
        v35 = v77;
        if (v49)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1000B7360(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_100198568(v76);
      v52 = v74;
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_33;
      }

      v45 = v50;
      v35 = v77;
      if (v49)
      {
LABEL_15:
        *(v35[7] + 8 * v45) = v42;
        swift_unknownObjectRelease();

        (*v66)(v76, v68);
        goto LABEL_16;
      }
    }

    v35[(v45 >> 6) + 8] |= 1 << v45;
    v53 = v65;
    v54 = v76;
    v55 = v68;
    (*(v65 + 16))(v35[6] + *(v65 + 72) * v45, v76, v68);
    *(v35[7] + 8 * v45) = v42;
    swift_unknownObjectRelease();
    (*(v53 + 8))(v54, v55);
    v56 = v35[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_31;
    }

    v35[2] = v58;
LABEL_16:
    ++v36;
    v12 = v52 - 1;
    if (!v12)
    {
      v3 = v73;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double sub_1000A8F3C()
{

  return result;
}

void *sub_1000A8F9C()
{
  v0 = StateObserver.deinit();

  return v0;
}

uint64_t sub_1000A9004()
{
  sub_1000A8F9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstrumentationCoordinator(uint64_t a1)
{
  result = qword_1004A6DC8;
  if (!qword_1004A6DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A90E0()
{
  v17 = *v0;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  aBlock._countAndFlagsBits = 0xD00000000000001ALL;
  aBlock._object = 0x8000000100404D20;
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 thermalState];

  v26 = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  Log.default(_:isPrivate:)(aBlock, 0);

  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v13 = v17;
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v24 = sub_1000AA90C;
  v25 = v12;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v22 = sub_100041180;
  v23 = &unk_10046C198;
  v14 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1000AB038(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v3, v1);
  return (*(v18 + 8))(v6, v19);
}

void sub_1000A950C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 thermalState];

    if (v2 >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      sub_1000A95F8(0x20303u >> (8 * v2));
    }
  }
}

double sub_1000A95F8(uint64_t a1)
{
  v3 = sub_10000F974(&qword_1004A6F08, &qword_1003DA808);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - v4;
  v5 = sub_10000F974(&qword_1004A6F10, &qword_1003DA810);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v25 = &v21 - v7;
  swift_beginAccess();
  v8 = *(v1 + 88);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v21 = v3;
    v22 = v6;
    v23 = v5;
    v27 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v16 = v15(ObjectType, v13);
      v17 = a1;
      if ((v16 & 1) == 0)
      {
        v17 = (*(v13 + 32))(ObjectType, v13, a1);
      }

      sub_1000AA92C(v12, v13, v17);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 2;
      --v9;
    }

    while (v9);

    v10 = v27;
    v6 = v22;
    v5 = v23;
    v3 = v21;
  }

  v27 = v10;
  sub_10000F974(&qword_1004A6F18, &qword_1003DA818);
  sub_10000F974(&qword_1004A6F20, &unk_1003DA820);
  sub_10001D47C(&qword_1004A6F28, &qword_1004A6F18, &qword_1003DA818, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001D47C(&qword_1004A6F30, &qword_1004A6F20, &unk_1003DA820, &protocol conformance descriptor for [A]);
  v18 = v24;
  Publishers.MergeMany.init<A>(_:)();
  sub_10001D47C(&qword_1004A6F38, &qword_1004A6F08, &qword_1003DA808, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v19 = v25;
  Publisher.collect()();
  (*(v26 + 8))(v18, v3);
  sub_10001D47C(&qword_1004A6F40, &qword_1004A6F10, &qword_1003DA810, &protocol conformance descriptor for Publishers.Collect<A>);

  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v19, v5);
  swift_beginAccess();
  sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
  sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return result;
}

void sub_1000A9AB8(uint64_t *a1, uint64_t a2)
{
  v36 = a2;
  v39 = sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = *a1;
  v13 = sub_10019AA84(_swiftEmptyArrayStorage);
  v38 = *(v12 + 16);
  if (!v38)
  {
LABEL_16:
    v34 = v36;
    swift_beginAccess();
    *(v34 + 120) = v13;

    return;
  }

  v14 = 0;
  v37 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (v14 < *(v12 + 16))
  {
    v17 = v3;
    sub_1000AAFC8(v37 + *(v3 + 72) * v14, v11);
    sub_1000AAFC8(v11, v8);
    sub_1000AAFC8(v11, v5);
    v18 = v5[*(v39 + 48)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v13;
    v20 = sub_100198568(v8);
    v22 = v13[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_18;
    }

    v26 = v21;
    if (v13[3] < v25)
    {
      sub_1000B773C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_100198568(v8);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v13 = v40;
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v20;
    sub_1000BE3A0();
    v20 = v33;
    v13 = v40;
    if (v26)
    {
LABEL_3:
      *(v13[7] + v20) = v18;
      sub_100018F04(v11, &qword_1004A6F48, &unk_1003DA830);
      goto LABEL_4;
    }

LABEL_12:
    v13[(v20 >> 6) + 8] |= 1 << v20;
    v28 = v13[6];
    v29 = v20;
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 16))(v28 + *(*(v30 - 8) + 72) * v29, v8, v30);
    *(v13[7] + v29) = v18;
    sub_100018F04(v11, &qword_1004A6F48, &unk_1003DA830);
    v31 = v13[2];
    v24 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v24)
    {
      goto LABEL_19;
    }

    v13[2] = v32;
LABEL_4:
    ++v14;
    v15 = type metadata accessor for UUID();
    v16 = *(*(v15 - 8) + 8);
    v16(v8, v15);
    v16(v5, v15);
    v3 = v17;
    if (v38 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  type metadata accessor for UUID();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A9E3C(uint64_t *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v38 = a2;
  v43 = sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  __chkstk_darwin(v10);
  v44 = &v38 - v11;
  v12 = *a1;
  v13 = sub_10019AA84(_swiftEmptyArrayStorage);
  v42 = *(v12 + 16);
  if (!v42)
  {
LABEL_17:
    v37 = v38;
    swift_beginAccess();
    *(v37 + 120) = v13;

    v45[0] = v39;
    v46 = v13;
    PassthroughSubject.send(_:)();

    return;
  }

  v14 = 0;
  v15 = *(v4 + 80);
  v40 = v12;
  v41 = v12 + ((v15 + 32) & ~v15);
  while (v14 < *(v12 + 16))
  {
    v18 = v4;
    v19 = v44;
    sub_1000AAFC8(v41 + *(v4 + 72) * v14, v44);
    sub_1000AAFC8(v19, v9);
    sub_1000AAFC8(v19, v6);
    v20 = v6;
    v21 = v6[*(v43 + 48)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v13;
    v23 = v9;
    v25 = sub_100198568(v9);
    v26 = v13[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v13[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v47;
        if (v24)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1000BE3A0();
        v13 = v47;
        if (v29)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1000B773C(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_100198568(v23);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_21;
      }

      v25 = v30;
      v13 = v47;
      if (v29)
      {
LABEL_3:
        *(v13[7] + v25) = v21;
        sub_100018F04(v44, &qword_1004A6F48, &unk_1003DA830);
        v9 = v23;
        goto LABEL_4;
      }
    }

    v13[(v25 >> 6) + 8] |= 1 << v25;
    v32 = v13[6];
    v33 = type metadata accessor for UUID();
    v9 = v23;
    (*(*(v33 - 8) + 16))(v32 + *(*(v33 - 8) + 72) * v25, v23, v33);
    *(v13[7] + v25) = v21;
    sub_100018F04(v44, &qword_1004A6F48, &unk_1003DA830);
    v34 = v13[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    v13[2] = v36;
LABEL_4:
    ++v14;
    v16 = type metadata accessor for UUID();
    v17 = *(*(v16 - 8) + 8);
    v17(v9, v16);
    v6 = v20;
    v17(v20, v16);
    v4 = v18;
    v12 = v40;
    if (v42 == v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  type metadata accessor for UUID();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double sub_1000AA214(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19[-1] - v9;
  sub_1000AAFC8(a1, &v19[-1] - v9);
  sub_1000AAFC8(a1, v7);
  v11 = v7[*(v5 + 56)];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  sub_1000BB8F0(v11, v10, isUniquelyReferenced_nonNull_native);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 8);
  v14(v10, v13);
  *(a2 + 120) = v18;
  swift_endAccess();
  v14(v7, v13);
  v15 = *(**(a2 + 72) + 144);

  v15(v19, v16);

  v19[1] = *(a2 + 120);

  PassthroughSubject.send(_:)();

  return result;
}

uint64_t sub_1000AA3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = type metadata accessor for UUID();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_weakInit();
  v10 = *(a2 + 16);
  swift_beginAccess();
  v33 = v10;
  if (v10)
  {
    v11 = 0;
    v32 = a2 + 32;
    v12 = (v4 + 8);
    do
    {
      v13 = (v32 + 16 * v11);
      v14 = *v13;
      v37 = v13[1];
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v35 = v11;
        v16 = Strong;
        swift_beginAccess();
        v34 = v16;
        v17 = *(v16 + 88);
        v18 = *(v17 + 16);
        v38 = v14;
        swift_unknownObjectRetain();

        if (v18)
        {
          v20 = 0;
          v21 = (v17 + 40);
          while (1)
          {
            if (v20 >= *(v17 + 16))
            {
              __break(1u);
              return result;
            }

            v22 = *v21;
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            sub_10008E3F4(ObjectType, v22);
            v24 = swift_getObjectType();
            sub_10008E3F4(v24, v37);
            LOBYTE(v22) = static UUID.== infix(_:_:)();
            swift_unknownObjectRelease();
            v25 = *v12;
            v26 = v36;
            (*v12)(v6, v36);
            result = (v25)(v9, v26);
            if (v22)
            {
              break;
            }

            ++v20;
            v21 += 2;
            if (v18 == v20)
            {
              goto LABEL_3;
            }
          }

          swift_beginAccess();
          sub_100054CC0(v20);
          v28 = v27;
          swift_endAccess();
          v29 = swift_getObjectType();
          sub_10008E3F4(v29, v28);
          swift_beginAccess();
          v30 = sub_10013F49C(v9);
          swift_endAccess();
          v25(v9, v36);
          if (v30)
          {
            AnyCancellable.cancel()();
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_3:
        }

        v11 = v35;
        swift_unknownObjectRelease();
      }

      ++v11;
    }

    while (v11 != v33);
  }

  return swift_weakDestroy();
}

BOOL sub_1000AA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 + 32;
  v12 = *(a3 + 16) + 1;
  do
  {
    if (!--v12)
    {
      return 0;
    }

    v13 = v11 + 16;
    ObjectType = swift_getObjectType();
    v11 = v13;
  }

  while (ObjectType != a1);
  v15 = *(v13 - 8);
  v16 = ObjectType;
  swift_unknownObjectRetain();
  sub_10008E3F4(v16, v15);
  if (*(a4 + 16) && (v17 = sub_100198568(v10), (v18 & 1) != 0))
  {
    v19 = *(*(a4 + 56) + v17);
    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
    return (v19 & 0xFE) == 2;
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
    return 1;
  }
}

uint64_t sub_1000AA89C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AA8D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000AA914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}