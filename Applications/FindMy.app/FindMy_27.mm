uint64_t sub_1002D3DFC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B00C8, &qword_10055C900);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v32 = v30;
  v33 = v31;
  v5._countAndFlagsBits = 60;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  swift_getObjectType();
  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203A6469203ALL;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier));
  v8._countAndFlagsBits = 0x736572646461202CLL;
  v8._object = 0xEF203A6570795473;
  String.append(_:)(v8);
  v9 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_100007204(v1 + v9, v4, &qword_1006B00C8, &qword_10055C900);
  v10 = type metadata accessor for FMFLocationAlertAddressType();
  result = (*(*(v10 - 8) + 48))(v4, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x3A656C746974202CLL;
    v13._object = 0xEA00000000002720;
    String.append(_:)(v13);
    v14 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8);
    if (v14)
    {
      v15 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title);
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8);
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x6C6562616C202C27;
    v18._object = 0xEA0000000000273DLL;
    String.append(_:)(v18);
    v19 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8);
    if (v19)
    {
      v20 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8);
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0x6572646461202C27;
    v23._object = 0xEC000000273D7373;
    String.append(_:)(v23);
    v24 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8);
    if (v24)
    {
      v25 = *(v1 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress);
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 15911;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    return v32;
  }

  return result;
}

id sub_1002D4100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFenceMapTransientRecord(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFenceMapTransientRecord(uint64_t a1)
{
  result = qword_1006BA938;
  if (!qword_1006BA938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D42C8(uint64_t a1)
{
  sub_1002D44C0(319, &qword_1006C07D0, &type metadata accessor for FMFLocation);
  if (v1 <= 0x3F)
  {
    sub_1002D44C0(319, &qword_1006BA948, &type metadata accessor for FMFLabelledLocation);
    if (v2 <= 0x3F)
    {
      sub_1002D44C0(319, &qword_1006C07E0, &type metadata accessor for FMFLocationAlertAddressType);
      if (v3 <= 0x3F)
      {
        sub_1002D44C0(319, &qword_1006BA950, &type metadata accessor for FMFAddress);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002D44C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1002D4514()
{
  result = qword_1006BA958;
  if (!qword_1006BA958)
  {
    type metadata accessor for FMFLocationAlertAddressType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BA958);
  }

  return result;
}

uint64_t sub_1002D4578()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D45D4()
{
  v1 = sub_10007EBC0(&qword_1006B3B10, &unk_100558780);
  __chkstk_darwin(v1 - 8);
  v3 = v37 - v2;
  v4 = type metadata accessor for FMIPPerson();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v37 - v9;
  __chkstk_darwin(v11);
  v43 = v37 - v12;
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = FMIPDevice.ownerIdentifier.getter();
  v18 = v17;
  if (v16 == FMIPDefaultOwnerIdentifier.getter() && v18 == v19)
  {
    goto LABEL_3;
  }

  v42 = v15;
  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_5;
  }

  if (v16 == FMIPDefaultBeaconOwnerIdentifier.getter() && v18 == v26)
  {
LABEL_3:

LABEL_5:

    goto LABEL_6;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_5;
  }

  v37[1] = v0;
  result = FMIPManager.familyMembers.getter();
  v28 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v29 = 0;
    v40 = v5 + 16;
    v41 = (v5 + 8);
    v38 = v5;
    while (v29 < *(v28 + 16))
    {
      (*(v5 + 16))(v10, v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v4);
      if (FMIPPerson.identifier.getter() == v16 && v30 == v18)
      {

LABEL_24:
        v33 = *(v5 + 32);
        v34 = v43;
        v33(v43, v10, v4);
        v35 = v42;
        v33(v42, v34, v4);
        v22 = FMIPPerson.username.getter();
        v24 = v36;
        (*(v5 + 8))(v35, v4);
        goto LABEL_8;
      }

      v31 = v16;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {

        v5 = v38;
        goto LABEL_24;
      }

      ++v29;
      result = (*v41)(v10, v4);
      v16 = v31;
      v5 = v38;
      if (v39 == v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_21:

LABEL_6:
  FMIPManager.owner.getter();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  (*(v5 + 32))(v7, v3, v4);
  v22 = FMIPPerson.username.getter();
  v24 = v23;
  (*(v5 + 8))(v7, v4);
LABEL_8:

  v25 = sub_100477BA0(v22, v24, 0);

  if (v25)
  {
    v22 = sub_100123238(v22, v24);
  }

  return v22;
}

void sub_1002D4A6C(uint64_t a1)
{
  v2 = *(v1 + qword_1006BA9B8);
  *(v1 + qword_1006BA9B8) = a1;
}

void sub_1002D4A80(uint64_t a1)
{
  v2 = *(v1 + qword_1006BA9C0);
  *(v1 + qword_1006BA9C0) = a1;
}

void sub_1002D4A94(uint64_t a1)
{
  v2 = *(v1 + qword_1006BA9C8);
  *(v1 + qword_1006BA9C8) = a1;
}

double sub_1002D4AA8(uint64_t a1)
{
  *(v1 + qword_1006BA9D0) = a1;

  return result;
}

void sub_1002D4B88(char a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v2) + 0x70);
  v5 = *((swift_isaMask & *v2) + 0x78);
  v8 = *((swift_isaMask & *v2) + 0x60);
  v7 = v8;
  v9 = v4;
  v10 = v5;
  v6 = type metadata accessor for FMListViewController(0, &v8);
  v11.receiver = v2;
  v11.super_class = v6;
  objc_msgSendSuper2(&v11, "viewWillDisappear:", a1 & 1);
  (*(v5 + 48))(0, v7, v5);
  sub_1002D4DF8();
  sub_1002D4CDC();
}

void sub_1002D4C88(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002D4B88(a3);
}

void sub_1002D4CDC()
{
  v1 = *(v0 + qword_1006BA9D0);
  if (v1)
  {
    v2 = v0;
    v3 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
    v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();

    v5 = v3;
    v7 = sub_1003CD738(&v3[v4], v1, v6);
    v8 = *&v3[v4];
    if (v8 >> 62)
    {
      v10 = v7;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v10;
      if (v9 >= v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_4:
        sub_1003CDB08(v7, v9);
        swift_endAccess();

        *(v2 + qword_1006BA9D0) = 0;

        return;
      }
    }

    __break(1u);
  }
}

void sub_1002D4DF8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationDidBecomeActiveNotification object:0];
}

void sub_1002D4EE4(void *a1)
{
  v1 = a1;
  sub_1002D4E6C();
}

void sub_1002D4F2C(void *a1)
{
  v3 = swift_isaMask & *v1;
  v14[3] = &type metadata for SolariumFeatureFlag;
  v14[4] = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v14);
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle1];
    v7 = 2;
  }

  else
  {
    v8 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v6 = sub_100039388(0x8000);

    v7 = 1;
  }

  v9 = sub_100039388(2);

  [a1 setFont:v9];
  [a1 setNumberOfLines:v7];
  v10 = [objc_opt_self() labelColor];
  [a1 setTextColor:v10];

  (*(*(v3 + 120) + 16))(*(v3 + 96));
  v11 = String._bridgeToObjectiveC()();

  [a1 setText:v11];

  [a1 setAdjustsFontForContentSizeCategory:1];
  [a1 setAccessibilityTraits:UIAccessibilityTraitHeader];
  LODWORD(v12) = 1148846080;
  [a1 setContentCompressionResistancePriority:1 forAxis:v12];
  v13 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v13];
}

uint64_t sub_1002D51A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&unk_1006C2670, &qword_10055DDB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  sub_1002D4E6C();

  return sub_100012DF0(v9, &unk_1006C2670, &qword_10055DDB0);
}

id sub_1002D52DC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_1002D7AE8(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

id sub_1002D53EC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_100042090(v6, a4);

  return v8;
}

uint64_t sub_1002D5454(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_1002D7BF8(v9);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t sub_1002D556C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id sub_1002D5674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);

  return 0;
}

void sub_1002D5750(void *a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    [v5 contentOffset];
    v10 = CGPoint.debugDescription.getter();
    v12 = sub_100005B4C(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMListViewController: scrollView did scroll %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = *(v2 + qword_1006BA9C8);
  if (v13)
  {
    v14 = *(v2 + qword_1006BA9B8);
    if (v14)
    {
      v15 = v13;
      v26 = v14;
      [v5 contentOffset];
      v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled] = v16 >= 10.0;
      v17 = *&v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction];
      if (v17)
      {
        [v17 _setActive:v16 >= 10.0];
      }

      [v5 contentOffset];
      v19 = v18;
      [v15 frame];
      MaxY = CGRectGetMaxY(v29);
      [*&v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] alpha];
      if (v19 >= MaxY == v21 <= 0.0)
      {
        v22 = objc_opt_self();
        v23 = swift_allocObject();
        *(v23 + 16) = v26;
        *(v23 + 24) = v19 >= MaxY;
        aBlock[4] = sub_10027E1B4;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_100634DB8;
        v24 = _Block_copy(aBlock);
        v25 = v26;

        [v22 animateWithDuration:v24 animations:0.3];

        _Block_release(v24);
      }

      else
      {
      }
    }
  }
}

void sub_1002D5ABC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002D5750(v4);
}

void sub_1002D5B24(uint64_t a1, char a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v43 = &type metadata for SolariumFeatureFlag;
  v44 = sub_10000BD04();
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v42);
  if (v11)
  {
    v12 = *(v2 + qword_1006BA990);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v12 cellForRowAtIndexPath:isa];

    if (v14 && (v42[0] = v14, sub_10000905C(0, &qword_1006B00B0, UITableViewCell_ptr), sub_10007EBC0(&qword_1006BAAA8, &unk_10055CB18), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v40 + 1))
      {
        sub_100006A54(&v39, v42);
        v15 = v43;
        v16 = v44;
        sub_1000244BC(v42, v43);
        v17 = (*(v16 + 8))(v15, v16);
        v18 = v17;
        v19 = 0.0;
        if (a2)
        {
          v19 = 1.0;
        }

        [v17 setAlpha:v19];

        sub_100006060(v42);
LABEL_22:
        if (!__OFSUB__(IndexPath.row.getter(), 1))
        {
          IndexPath.section.getter();
          IndexPath.init(row:section:)();
          v31 = IndexPath._bridgeToObjectiveC()().super.isa;
          v32 = [v12 cellForRowAtIndexPath:v31];

          if (v32)
          {
            v38[1] = v32;
            sub_10000905C(0, &qword_1006B00B0, UITableViewCell_ptr);
            sub_10007EBC0(&qword_1006BAAA8, &unk_10055CB18);
            if (swift_dynamicCast())
            {
              if (*(&v40 + 1))
              {
                sub_100006A54(&v39, v42);
                v33 = v43;
                v34 = v44;
                sub_1000244BC(v42, v43);
                v35 = (*(v34 + 8))(v33, v34);
                v36 = v35;
                v37 = 0.0;
                if (a2)
                {
                  v37 = 1.0;
                }

                [v35 setAlpha:v37];

                (*(v5 + 8))(v10, v4);
                sub_100006060(v42);
                return;
              }
            }

            else
            {
              v41 = 0;
              v39 = 0u;
              v40 = 0u;
            }

            (*(v5 + 8))(v10, v4);
          }

          else
          {
            (*(v5 + 8))(v10, v4);
            v41 = 0;
            v39 = 0u;
            v40 = 0u;
          }

          sub_100012DF0(&v39, &unk_1006BAA98, &qword_10055CB10);
          return;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    sub_100012DF0(&v39, &unk_1006BAA98, &qword_10055CB10);
    goto LABEL_22;
  }

  v20 = *(v2 + qword_1006BA990);
  v21 = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [v20 cellForRowAtIndexPath:v21];

  if (v22)
  {
    sub_10007EBC0(&qword_1006BAA90, &qword_10055CB08);
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = *(v23 + qword_1006B72B8);
      v25 = 0.0;
      if (a2)
      {
        v25 = 1.0;
      }

      [v24 setAlpha:v25];
    }
  }

  if (__OFSUB__(IndexPath.row.getter(), 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  IndexPath.section.getter();
  IndexPath.init(row:section:)();
  v26 = IndexPath._bridgeToObjectiveC()().super.isa;
  v27 = [v20 cellForRowAtIndexPath:v26];

  if (!v27)
  {
LABEL_34:
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_10007EBC0(&qword_1006BAA90, &qword_10055CB08);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_34;
  }

  v29 = *(v28 + qword_1006B72B8);
  v30 = 0.0;
  if (a2)
  {
    v30 = 1.0;
  }

  [v29 setAlpha:v30];
  (*(v5 + 8))(v7, v4);
}

id sub_1002D6074()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMListViewController: Showing empty list", v5, 2u);
  }

  v6 = *(v1 + qword_1006BA980);
  [v6 setUserInteractionEnabled:1];
  [v6 setHidden:0];
  [v6 setNeedsLayout];
  [v6 layoutIfNeeded];
  sub_1002D62B4(1);

  v7 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  v8 = v7 ^ 1;
  v9 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton;
  v10 = *&v6[OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton];
  v10[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = (v7 ^ 1) & 1;
  v11 = *&v10[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v12 = *&v10[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor];
  if (v7)
  {
    v13 = v10;
    v14 = [v12 colorWithAlphaComponent:0.5];
    [v11 setTextColor:v14];
  }

  else
  {
    [v11 setTextColor:v12];
  }

  v15 = *&v6[v9];

  return [v15 setUserInteractionEnabled:v8 & 1];
}

id sub_1002D62B4(char a1)
{
  [*(v1 + qword_1006BA990) setHidden:a1 & 1];
  v5[3] = &type metadata for SolariumFeatureFlag;
  v5[4] = sub_10000BD04();
  v3 = isFeatureEnabled(_:)();
  result = sub_100006060(v5);
  if (v3)
  {
    return [*(v1 + qword_1006BA998) setHidden:(a1 & 1) == 0];
  }

  return result;
}

void sub_1002D63C0(void *a1)
{
  v1 = a1;
  sub_1002D6348();
}

void *sub_1002D6408()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  v4 = [objc_opt_self() configurationWithFont:v3];

  v73 = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 _systemImageNamed:v5 withConfiguration:v73];

  v8 = String._bridgeToObjectiveC()();
  v68 = v6;
  v63 = [v6 systemImageNamed:v8 withConfiguration:v73];

  v9 = String._bridgeToObjectiveC()();
  v61 = [v6 systemImageNamed:v9 withConfiguration:v73];

  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  v72 = objc_opt_self();
  v10 = [v72 mainBundle];
  v74._object = 0x8000000100579630;
  v11._object = 0x8000000100579600;
  v74._countAndFlagsBits = 0xD000000000000033;
  v11._countAndFlagsBits = 0xD000000000000021;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v74);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v67 = v7;
  v15 = *((v2 & v1) + 0x60);
  v14[2] = v15;
  v16 = *((v2 & v1) + 0x68);
  v14[3] = v16;
  v17 = v1;
  v18 = *((v2 & v1) + 0x70);
  v14[4] = v18;
  v19 = *((v2 & v17) + 0x78);
  v14[5] = v19;
  v14[6] = v13;
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v20 = [v72 mainBundle];
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v75._object = 0x800000010058E290;
  v21._object = 0x800000010058E270;
  v75._countAndFlagsBits = 0xD00000000000002FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v75);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *&v25 = v15;
  *(&v25 + 1) = v16;
  v70 = v25;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  v69 = v26;
  *(v24 + 16) = v25;
  *(v24 + 32) = v26;
  *(v24 + 48) = v23;
  v66 = v63;
  v62 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27 = [v72 mainBundle];
  v76._object = 0x800000010058E2F0;
  v28._object = 0x800000010058E2C0;
  v76._countAndFlagsBits = 0xD000000000000033;
  v28._countAndFlagsBits = 0xD000000000000021;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v76);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v70;
  *(v31 + 32) = v69;
  *(v31 + 48) = v30;
  v64 = v61;
  v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v68 systemImageNamed:v33 withConfiguration:{v73, 0, 0, 0, sub_1002D78EC, v31}];

  v35 = [v72 mainBundle];
  v36.value._countAndFlagsBits = 0xD000000000000010;
  v77._countAndFlagsBits = 0xD000000000000015;
  v77._object = 0x80000001005797A0;
  v37._countAndFlagsBits = 0xD000000000000022;
  v37._object = 0x800000010058E330;
  v36.value._object = 0x8000000100579780;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v36, v35, v38, v77);

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v70;
  *(v40 + 32) = v69;
  *(v40 + 48) = v39;
  v71 = v34;
  v60 = v40;
  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v42 = v32;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v43 = [objc_opt_self() currentDevice];
  v44 = [v43 userInterfaceIdiom];

  if (v44 == 1)
  {
    if (qword_1006AECB8 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD0 == 1)
    {
      v45 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v46 = v62;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v47 = String._bridgeToObjectiveC()();
  v48 = MGGetBoolAnswer();

  if (v48)
  {
    v49 = String._bridgeToObjectiveC()();
    v50 = [v68 systemImageNamed:v49 withConfiguration:v73];

    v51 = [v72 mainBundle];
    v78._object = 0x800000010058E390;
    v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v52.value._object = 0xEC00000031656C62;
    v53._countAndFlagsBits = 0xD000000000000028;
    v53._object = 0x800000010058E360;
    v78._countAndFlagsBits = 0xD00000000000003ALL;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v52, v51, v54, v78);

    v55 = v50;
    v56 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  v57 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  if (v57)
  {
  }

  else
  {
    v58 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1002D6F78(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(*&result[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
    v10 = result;
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v9 + v11, v4);
    swift_beginAccess();

    sub_100058530(v7, v9 + v11);
    swift_endAccess();
    sub_100058594(v4);

    sub_10005D4E4(v4);
    return sub_10005D4E4(v7);
  }

  return result;
}

char *sub_1002D70E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator;
    v18 = *(*&result[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
    v19 = result;
    v20 = type metadata accessor for FMSelectionPendingAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
    v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();
    v22 = v19;

    sub_1000BBF40(v15, v18 + v21, &unk_1006B8DD0, &unk_100555060);
    swift_endAccess();

    v23 = *&v19[v17];

    v24 = *(v23 + 56);

    swift_storeEnumTagMultiPayload();
    v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v24 + v25, v9);
    swift_beginAccess();
    sub_100058530(v12, v24 + v25);
    swift_endAccess();
    sub_100058594(v9);

    sub_10005D4E4(v9);
    return sub_10005D4E4(v12);
  }

  return result;
}

void sub_1002D7388()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + qword_1006BA9E0);
}

id sub_1002D747C()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  v4[0] = *((swift_isaMask & *v0) + 0x60);
  v4[1] = v1;
  v2 = type metadata accessor for FMListViewController(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1002D74F4(uint64_t a1)
{

  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1006BA9E0);
}

__n128 sub_1002D75F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1002D7620(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002D7674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

void sub_1002D7718()
{
  v1 = (v0 + qword_1006BA970);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000100588620;
  v2 = qword_1006BA998;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = qword_1006BA9A0;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  v4 = qword_1006BA9A8;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_1006BA9B8) = 0;
  *(v0 + qword_1006BA9C0) = 0;
  *(v0 + qword_1006BA9C8) = 0;
  *(v0 + qword_1006BA9D0) = 0;
  *(v0 + qword_1006BA9D8) = 0;
  v5 = qword_1006BA9E0;
  v6 = [objc_opt_self() buttonWithType:1];
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v7];

  *(v0 + v5) = v6;
  *(v0 + qword_1006BA9E8) = 0;
  *(v0 + qword_1006BA9F0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002D7924(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = sub_10007EBC0(&unk_1006C2670, &qword_10055DDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + qword_1006BA990);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  swift_beginAccess();
  sub_1000BBF40(v7, v8 + v11, &unk_1006C2670, &qword_10055DDB0);
  swift_endAccess();
  sub_1002D5B24(a1, 0);
  return (*(*((v4 & v3) + 0x78) + 112))(a1, *((v4 & v3) + 0x60));
}

id sub_1002D7AE8(uint64_t a1)
{
  if (!(*(*((swift_isaMask & *v1) + 0x78) + 136))(a1, *((swift_isaMask & *v1) + 0x60)))
  {
    return [objc_allocWithZone(UISwipeActionsConfiguration) init];
  }

  sub_10000905C(0, &qword_1006BAAC0, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithActions:isa];

  [v3 setPerformsFirstActionWithFullSwipe:0];
  return v3;
}

id sub_1002D7C20()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v67 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v61[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v61[-v9];
  *&v0[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_opt_self() mainBundle];
  v73._object = 0x800000010058E7F0;
  v12._object = 0x800000010058E7C0;
  v73._countAndFlagsBits = 0xD00000000000003BLL;
  v12._countAndFlagsBits = 0xD000000000000029;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v73);
  object = v14._object;
  countAndFlagsBits = v14._countAndFlagsBits;

  v65 = v2;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v10, 0, 1, v2);
  v71 = &type metadata for SolariumFeatureFlag;
  v66 = sub_10000BD04();
  v72 = v66;
  v62 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v15 = type metadata accessor for FMMultiSettingsRowView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v16[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v16[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v16[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v16[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v23 = sub_1003DE824();
  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];

  *&v16[v22] = v24;
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v16[v25] = [objc_allocWithZone(UIView) init];
  v26 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v16[v28] = [objc_opt_self() secondaryLabelColor];
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v29 = object;
  *v26 = countAndFlagsBits;
  v26[1] = v29;

  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v62 & 1) == 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v69.receiver = v16;
  v69.super_class = v15;
  v30 = objc_msgSendSuper2(&v69, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v31 = v10;
  sub_100007204(v10, v7, &qword_1006B3298, &unk_100558AB0);
  if ((*(v3 + 48))(v7, 1, v65) == 1)
  {
    v32 = v66;
    v33 = v30;
    sub_100012DF0(v7, &qword_1006B3298, &unk_100558AB0);
  }

  else
  {
    v34 = v67;
    sub_10015DA28(v7, v67);
    v35 = v30;
    v36 = sub_10043BBEC(v34, 0);
    v38 = v37;
    v39 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v35[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v36];
    [*&v35[v39] setTintAdjustmentMode:1];
    v71 = &type metadata for SolariumFeatureFlag;
    v32 = v66;
    v72 = v66;
    v40 = isFeatureEnabled(_:)();
    sub_100006060(v70);
    if (v40)
    {
      [*&v35[v39] setTintColor:v38];

      sub_1000D59F8(v67);
    }

    else
    {
      sub_1000D59F8(v67);
    }
  }

  v41 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow;
  [v30 setUserInteractionEnabled:0];
  *(v30 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_100012DF0(v31, &qword_1006B3298, &unk_100558AB0);
  *&v1[v41] = v30;
  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v32;
  v42 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v43 = 16.0;
  v44 = 16.0;
  if ((v42 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v44 = *&qword_1006D4798;
  }

  v45 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow;
  v46 = type metadata accessor for FMSettingSingleRowView();
  v47 = objc_allocWithZone(v46);
  *&v1[v45] = sub_10030E068(1, v44);
  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v32;
  v48 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  if ((v48 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v43 = *&qword_1006D4798;
  }

  v49 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow;
  v50 = objc_allocWithZone(v46);
  *&v1[v49] = sub_10030E068(0, v43);
  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v32;
  v51 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v52 = 16.0;
  if ((v51 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v52 = *&qword_1006D4798;
  }

  v53 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow;
  v54 = objc_allocWithZone(v46);
  *&v1[v53] = sub_10030E068(0, v52);
  v55 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner;
  *&v1[v55] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v56 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch;
  *&v1[v56] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v1[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted] = 0;
  v57 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meLocation;
  v58 = type metadata accessor for FMFLocation();
  (*(*(v58 - 8) + 56))(&v1[v57], 1, 1, v58);
  v59 = type metadata accessor for FMLocationSettingsView(0);
  v68.receiver = v1;
  v68.super_class = v59;
  return objc_msgSendSuper2(&v68, "init");
}

void sub_1002D847C()
{
  v1 = v0;
  sub_10011FD34();
  [v0 setClipsToBounds:1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch];
  v3 = objc_opt_self();
  v42 = v3;
  v4 = [v3 mainBundle];
  v47._object = 0x800000010058E590;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v5._object = 0x800000010058E560;
  v47._countAndFlagsBits = 0xD000000000000041;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v47);

  *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v7;

  v8 = *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 1;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:1];
  *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100634DE0;
  swift_unknownObjectWeakAssign();
  v11 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v11];

  v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  v12 = *&v1[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow];
  *(v12 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine) = 1;
  [*(v12 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel) setNumberOfLines:1];
  v45 = &type metadata for SolariumFeatureFlag;
  v13 = sub_10000BD04();
  v46 = v13;
  v14 = isFeatureEnabled(_:)();
  sub_100006060(&v43);
  if (v14)
  {
    v15 = 0xD000000000000019;
  }

  else
  {
    v15 = 0xD000000000000014;
  }

  if (v14)
  {
    v16 = "ME_TAB_FROM_DEVICE_INFO_LONG";
  }

  else
  {
    v16 = "ShareLocationSwitch";
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v43 = 0xD000000000000012;
  v44 = 0x800000010057A180;
  v17._object = (v16 | 0x8000000000000000);
  v17._countAndFlagsBits = v15;
  String.append(_:)(v17);
  v18 = v43;
  v19 = v44;
  v20 = [v3 mainBundle];
  v48._object = v19;
  v21._object = (v16 | 0x8000000000000000);
  v21._countAndFlagsBits = v15;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v48._countAndFlagsBits = v18;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v48);

  *(v12 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title) = v23;

  v24 = *(v12 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);

  v25 = v24;
  v26 = String._bridgeToObjectiveC()();

  [v25 setText:v26];

  v27 = *&v1[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow];
  v45 = &type metadata for SolariumFeatureFlag;
  v46 = v13;
  v28 = isFeatureEnabled(_:)();
  sub_100006060(&v43);
  if (v28)
  {
    v29 = 0xD00000000000001CLL;
  }

  else
  {
    v29 = 0xD000000000000017;
  }

  if (v28)
  {
    v30 = "ME_TAB_FROM_DEVICE_INFO";
  }

  else
  {
    v30 = "ME_TAB_LOCATION_INFO";
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v43 = 0xD000000000000012;
  v44 = 0x800000010057A180;
  v31._object = (v30 | 0x8000000000000000);
  v31._countAndFlagsBits = v29;
  String.append(_:)(v31);
  v32 = v43;
  v33 = v44;
  v34 = [v42 mainBundle];
  v49._object = v33;
  v35._object = (v30 | 0x8000000000000000);
  v35._countAndFlagsBits = v29;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v49._countAndFlagsBits = v32;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v49);

  *(v27 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title) = v37;

  v38 = *(v27 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);

  v39 = v38;
  v40 = String._bridgeToObjectiveC()();

  [v39 setText:v40];

  v41 = *&v1[OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView];
  [v41 addArrangedSubview:*&v1[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow]];
  [v41 addArrangedSubview:v2];
  sub_1002D9B48();
}

void sub_1002D89F0()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handleEditLocationName"];
  [*&v2[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleChangeMeDevice"];

  [*&v2[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow] addGestureRecognizer:v4];
}

uint64_t sub_1002D8AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v51[-v8];
  __chkstk_darwin(v10);
  v12 = &v51[-v11];
  v54 = a2;
  sub_100110854(sub_1002DA86C, a1, &v51[-v11]);
  sub_100007204(v12, v9, &qword_1006B68E8, &unk_100563FF0);
  v13 = type metadata accessor for FMFDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_100012DF0(v9, &qword_1006B68E8, &unk_100563FF0);
    v52 = 0;
  }

  else
  {
    v52 = FMFDevice.autoMeCapable.getter();
    (*(v14 + 8))(v9, v13);
  }

  v16 = FMFMyInfo.deviceId.getter();
  v18 = v17;
  v19 = FMFMyInfo.meDeviceId.getter();
  if (v20)
  {
    if (v16 == v19 && v20 == v18)
    {

      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
LABEL_10:
      v22 = sub_10022E294(0xD000000000000023, 0x800000010058E790);
      v24 = v23;
      if (v52)
      {
        v25 = [objc_opt_self() mainBundle];
        v55._object = 0x800000010058E750;
        v26._object = 0x800000010058E720;
        v55._countAndFlagsBits = 0xD000000000000037;
        v26._countAndFlagsBits = 0xD000000000000025;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v55);
        countAndFlagsBits = v28._countAndFlagsBits;
        object = v28._object;
      }

      else
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  v31 = objc_opt_self();
  v32 = [v31 mainBundle];
  v56._object = 0x800000010058E6D0;
  v33._countAndFlagsBits = 0xD00000000000002ELL;
  v33._object = 0x800000010058E6A0;
  v56._countAndFlagsBits = 0xD000000000000040;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v56);
  v24 = v35._object;

  sub_100007204(v12, v6, &qword_1006B68E8, &unk_100563FF0);
  if (v15(v6, 1, v13) == 1)
  {
    sub_100012DF0(v6, &qword_1006B68E8, &unk_100563FF0);
LABEL_22:
    countAndFlagsBits = 0;
    object = 0;
    v22 = v35._countAndFlagsBits;
    goto LABEL_23;
  }

  v36 = v31;
  v22 = FMFDevice.name.getter();
  v38 = v37;
  (*(v14 + 8))(v6, v13);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

    goto LABEL_22;
  }

  if (v52)
  {
    v40 = [v36 mainBundle];
    v57._object = 0x800000010058E750;
    v41._object = 0x800000010058E720;
    v57._countAndFlagsBits = 0xD000000000000037;
    v41._countAndFlagsBits = 0xD000000000000025;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v57);
    countAndFlagsBits = v43._countAndFlagsBits;
    object = v43._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v24 = v38;
LABEL_23:
  v44 = *(v53 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow);
  v45 = &v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
  *v45 = v22;
  v45[1] = v24;

  v46 = *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

  v47 = String._bridgeToObjectiveC()();

  [v46 setText:v47];

  if (object)
  {
    v48 = countAndFlagsBits;
  }

  else
  {
    v48 = 0;
  }

  if (object)
  {
    v49 = object;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  sub_10030DEB8(v48, v49);
  [v44 setUserInteractionEnabled:0];
  return sub_100012DF0(v12, &qword_1006B68E8, &unk_100563FF0);
}

uint64_t sub_1002D906C(uint64_t a1)
{
  v1 = FMFDevice.identifier.getter();
  v3 = v2;
  v4 = FMFMyInfo.meDeviceId.getter();
  if (v5)
  {
    if (v1 == v4 && v5 == v3)
    {

      return 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v7 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1002D912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, void *a7)
{
  v8 = v7;
  v12 = a4;
  v53 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v53);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v16 - 8);
  v18 = &v52 - v17;
  sub_100007204(a5, &v52 - v17, &qword_1006AF740, &unk_100552330);
  v19 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meLocation;
  swift_beginAccess();
  sub_1002DA7B0(v18, v8 + v19);
  swift_endAccess();
  sub_1002D8AD4(a2, a3);
  sub_1002D9800(a3, v12);
  v20 = *(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow);
  [v20 setHidden:(v12 & 1) == 0];
  if (a7)
  {
    object = a7;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v58._object = 0x800000010058C090;
    v23._object = 0x800000010058C070;
    v58._countAndFlagsBits = 0xD000000000000027;
    v23._countAndFlagsBits = 0xD000000000000015;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, countAndFlagsBits, v22, v24, v58);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v26 = &v20[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
  *v26 = countAndFlagsBits;
  *(v26 + 1) = object;

  v27 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v28 = *&v20[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

  v29 = v28;
  v30 = String._bridgeToObjectiveC()();

  [v29 setText:v30];

  v20[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine] = 1;
  [*&v20[v27] setNumberOfLines:1];
  v20[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleIsSingleLine] = 1;
  [*&v20[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel] setNumberOfLines:1];
  v31 = *(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch);
  *(v31 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = (*(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted) & 1) == 0;
  sub_10014B454();
  *(v31 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated) = 1;
  [*(v31 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator) setHidden:0];
  v32 = *(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
  *(v32 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated) = 0;
  [*(v32 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator) setHidden:1];
  if ((v12 & 1) == 0)
  {
    v56 = &type metadata for SolariumFeatureFlag;
    v57 = sub_10000BD04();
    v40 = isFeatureEnabled(_:)();
    sub_100006060(v55);
    if (v40)
    {
      v41 = v54;
      swift_storeEnumTagMultiPayload();
      v35 = sub_100438138(2);
      v37 = v42;
      sub_1000D59F8(v41);
      v43 = *(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow);
      v44 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
      [*(v43 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView) setImage:v35];
      v45 = *(v43 + v44);
      v46 = "setTintColor:";
LABEL_12:
      [v45 v46];
      goto LABEL_13;
    }

    v51 = *(*(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView);
    v48 = v54;
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    v49 = v48;
    v50 = 2;
LABEL_11:
    v37 = sub_10043B9F4(v49, v50);
    sub_1000D59F8(v48);
    v46 = "setImage:";
    v45 = v35;
    goto LABEL_12;
  }

  v56 = &type metadata for SolariumFeatureFlag;
  v57 = sub_10000BD04();
  v33 = isFeatureEnabled(_:)();
  sub_100006060(v55);
  if ((v33 & 1) == 0)
  {
    v47 = *(*(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow) + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView);
    v48 = v54;
    swift_storeEnumTagMultiPayload();
    v35 = v47;
    v49 = v48;
    v50 = 0;
    goto LABEL_11;
  }

  v34 = v54;
  swift_storeEnumTagMultiPayload();
  v35 = sub_100438138(0);
  v37 = v36;
  sub_1000D59F8(v34);
  v38 = *(v8 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow);
  v39 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  [*(v38 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView) setImage:v35];
  [*(v38 + v39) setTintColor:v37];
  [*(v38 + v39) setTintAdjustmentMode:1];
LABEL_13:
}

id sub_1002D968C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView);
  [v1 addArrangedSubview:*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow)];
  [v1 addArrangedSubview:*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow)];
  [v1 addArrangedSubview:*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow)];
  v2 = FMFMyInfo.deviceId.getter();
  v4 = v3;
  v5 = FMFMyInfo.meDeviceId.getter();
  if (v6)
  {
    if (v2 == v5 && v6 == v4)
    {

LABEL_8:
      [*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow) removeFromSuperview];
      goto LABEL_10;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted) == 1)
  {
    goto LABEL_8;
  }

  [v1 addArrangedSubview:*(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow)];
LABEL_10:
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch);

  return [v1 addArrangedSubview:v8];
}

void sub_1002D9800(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView);
  [v4 addArrangedSubview:*(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow)];
  [v4 addArrangedSubview:*(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch)];
  v5 = *(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow);
  [v4 addArrangedSubview:v5];
  v6 = *(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow);
  [v4 addArrangedSubview:v6];
  v5[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated] = 1;
  [*&v5[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator] setHidden:0];
  v6[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated] = 1;
  [*&v6[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator] setHidden:0];
  if (a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v14 = v7;
  v8 = FMFMyInfo.deviceId.getter();
  v10 = v9;
  v11 = FMFMyInfo.meDeviceId.getter();
  if (v12)
  {
    if (v8 == v11 && v12 == v10)
    {

LABEL_11:
      [*(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow) removeFromSuperview];
      goto LABEL_13;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted) == 1)
  {
    goto LABEL_11;
  }

  v14 = *(v2 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
  [v4 addArrangedSubview:?];
LABEL_13:
  v14[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated] = 0;
  [*&v14[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator] setHidden:1];
}

void sub_1002D9B48()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] = 1;
  v3 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine;
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine] = 1;
  v4 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  [*&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel] setNumberOfLines:1];
  v34 = &type metadata for KoreaFeatureFlag;
  v35 = sub_10001ABFC();
  v5 = isFeatureEnabled(_:)();
  sub_100006060(&v32);
  if ((v5 & 1) != 0 || (sub_1002DA820(), (static FMSystemInfo.isKoreaSKU()() & 1) == 0))
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1095256927;
  }

  v32 = 0xD000000000000017;
  v33 = 0x800000010058E680;
  v8 = v6;
  String.append(_:)(*&v7);

  v9 = sub_10022E294(v32, v33);
  v11 = v10;

  v12 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title];
  *v12 = v9;
  v12[1] = v11;

  v13 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel;
  v14 = *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel];

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  v17 = &v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
  *v17 = 0;
  v17[1] = 0;

  [*&v2[v4] setText:0];
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible] = 0;
  [*&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron] setHidden:1];
  sub_10030E8AC(*&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundOffset]);
  v18 = *&v2[v13];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemBlueColor];
  [v20 setTextColor:v21];

  v22 = [v19 clearColor];
  v23 = *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor];
  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor] = v22;
  v24 = v22;

  [*&v2[v4] setTextColor:v24];
  v2[v3] = 1;
  [*&v2[v4] setNumberOfLines:1];
  v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  sub_10030DFDC();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = *(v1 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v25];
  v26 = [v25 trailingAnchor];
  v27 = [v2 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  [v28 setActive:1];
  v29 = [v25 centerYAnchor];
  v30 = [v2 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  [v31 setActive:1];
}

uint64_t sub_1002D9F58()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_delegate);

  return sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meLocation, &qword_1006AF740, &unk_100552330);
}

id sub_1002D9FFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLocationSettingsView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLocationSettingsView(uint64_t a1)
{
  result = qword_1006BAB38;
  if (!qword_1006BAB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DA138(uint64_t a1)
{
  sub_1002DA1F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002DA1F4(uint64_t a1)
{
  if (!qword_1006C07D0)
  {
    type metadata accessor for FMFLocation();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006C07D0);
    }
  }
}

uint64_t sub_1002DA24C(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100087D88(v2, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002DA2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v9 = *(a5 + 24);
  LODWORD(v10) = *(a5 + 32);
  v11 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  if (v9)
  {
    v14 = *(a5 + 16);
    v49 = (v10 >> 8) & 1;
  }

  else
  {
    v49 = 0;
    LODWORD(v10) = 0;
    v14 = 0;
    v9 = 0xE000000000000000;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v16 = v5;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = v10;
    v10 = v21;
    v44 = swift_slowAlloc();
    v45 = a4;
    v52[0] = v44;
    v52[1] = v14;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v10 = v16;
    *(v20 + 12) = 2080;
    v52[2] = v9;
    v51[0] = 10;
    v51[1] = 0xE100000000000000;
    v50[0] = 10649826;
    v50[1] = 0xA300000000000000;
    v22 = sub_100035F3C();
    v23 = v16;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v51, v50, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v22, v22, v22);
    v26 = v13;
    v27 = v14;
    v28 = sub_100005B4C(v24, v25, v52);

    *(v20 + 14) = v28;
    v14 = v27;
    v13 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@: update to '%s'", v20, 0x16u);
    sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);
    LOBYTE(v10) = v46;

    sub_100006060(v44);
    a4 = v45;

    a3 = v47;
  }

  sub_1002D8AD4(v48, a3);
  sub_100007204(a4, v13, &qword_1006AF740, &unk_100552330);
  v29 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meLocation;
  swift_beginAccess();
  sub_1002DA7B0(v13, &v16[v29]);
  swift_endAccess();
  v30 = *&v16[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow];
  v31 = (v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle);
  *v31 = v14;
  v31[1] = v9;

  v32 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v33 = *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel);

  v34 = v33;
  v35 = String._bridgeToObjectiveC()();

  [v34 setText:v35];

  LOBYTE(v34) = v49;
  v36 = v10 & (v49 ^ 1);
  v37 = v36 & 1;
  *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isChevronVisible) = v36 & 1;
  [*(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_chevron) setHidden:(v36 & 1) == 0];
  sub_10030E8AC(*(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_backgroundOffset));
  v38 = objc_opt_self();
  v39 = &selRef_secondaryLabelColor;
  if (((v10 | v34) & 1) == 0)
  {
    v39 = &selRef_redColor;
  }

  v40 = [v38 *v39];
  v41 = *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor);
  *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor) = v40;
  v42 = v40;

  [*(v30 + v32) setTextColor:v42];
  *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsSingleLine) = v37;
  [*(v30 + v32) setNumberOfLines:v36 & 1];
  *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = v37;
  *(v30 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleIsCopyToPasteboardEnabled) = 1;
  sub_10030DFDC();
  *(*&v16[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch] + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = (v16[OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted] & 1) == 0;
  sub_10014B454();
  return sub_1002D968C();
}

uint64_t sub_1002DA7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002DA820()
{
  result = qword_1006BAB48;
  if (!qword_1006BAB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BAB48);
  }

  return result;
}

uint64_t sub_1002DA88C()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v60[-v9];
  *(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_opt_self() mainBundle];
  v71._object = 0x800000010058E7F0;
  v12._countAndFlagsBits = 0xD000000000000029;
  v12._object = 0x800000010058E7C0;
  v71._countAndFlagsBits = 0xD00000000000003BLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v71);
  object = v14._object;
  countAndFlagsBits = v14._countAndFlagsBits;

  v64 = v2;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v10, 0, 1, v2);
  v69 = &type metadata for SolariumFeatureFlag;
  v65 = sub_10000BD04();
  v70 = v65;
  v61 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  v15 = type metadata accessor for FMMultiSettingsRowView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v16[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v16[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v16[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v16[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v23 = sub_1003DE824();
  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];

  *&v16[v22] = v24;
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v16[v25] = [objc_allocWithZone(UIView) init];
  v26 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v16[v28] = [objc_opt_self() secondaryLabelColor];
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v29 = object;
  *v26 = countAndFlagsBits;
  v26[1] = v29;

  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v61 & 1) == 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v67.receiver = v16;
  v67.super_class = v15;
  v30 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v31 = v10;
  sub_100007204(v10, v7, &qword_1006B3298, &unk_100558AB0);
  if ((*(v3 + 48))(v7, 1, v64) == 1)
  {
    v32 = v65;
    v33 = v30;
    sub_100012DF0(v7, &qword_1006B3298, &unk_100558AB0);
  }

  else
  {
    v34 = v66;
    sub_10015DA28(v7, v66);
    v35 = v30;
    v36 = sub_10043BBEC(v34, 0);
    v38 = v37;
    v39 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v35[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v36];
    [*&v35[v39] setTintAdjustmentMode:1];
    v69 = &type metadata for SolariumFeatureFlag;
    v32 = v65;
    v70 = v65;
    v40 = isFeatureEnabled(_:)();
    sub_100006060(v68);
    if (v40)
    {
      [*&v35[v39] setTintColor:v38];

      sub_1000D59F8(v66);
    }

    else
    {
      sub_1000D59F8(v66);
    }
  }

  v41 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meDeviceRow;
  [v30 setUserInteractionEnabled:0];
  *(v30 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_100012DF0(v31, &qword_1006B3298, &unk_100558AB0);
  *(v1 + v41) = v30;
  v69 = &type metadata for SolariumFeatureFlag;
  v70 = v32;
  v42 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  v43 = 16.0;
  v44 = 16.0;
  if ((v42 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v44 = *&qword_1006D4798;
  }

  v45 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow;
  v46 = type metadata accessor for FMSettingSingleRowView();
  v47 = objc_allocWithZone(v46);
  *(v1 + v45) = sub_10030E068(1, v44);
  v69 = &type metadata for SolariumFeatureFlag;
  v70 = v32;
  v48 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  if ((v48 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v43 = *&qword_1006D4798;
  }

  v49 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_fromRow;
  v50 = objc_allocWithZone(v46);
  *(v1 + v49) = sub_10030E068(0, v43);
  v69 = &type metadata for SolariumFeatureFlag;
  v70 = v32;
  v51 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  v52 = 16.0;
  if ((v51 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v52 = *&qword_1006D4798;
  }

  v53 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow;
  v54 = objc_allocWithZone(v46);
  *(v1 + v53) = sub_10030E068(0, v52);
  v55 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner;
  *(v1 + v55) = [objc_allocWithZone(UIActivityIndicatorView) init];
  v56 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch;
  *(v1 + v56) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  *(v1 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_friendsOperationsRestricted) = 0;
  v57 = OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_meLocation;
  v58 = type metadata accessor for FMFLocation();
  (*(*(v58 - 8) + 56))(v1 + v57, 1, 1, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1002DB1D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for FMOnboardingNavigationController();
  objc_msgSendSuper2(&v15, "viewWillDisappear:", v4 & 1);
  v5 = OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription;
  v6 = *&v3[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription];
  if (v6)
  {
    v7 = *(*&v3[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_mediator] + 16);
    v8 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();

    v9 = v7;
    v11 = sub_1003CD738(&v7[v8], v6, v10);
    v12 = *&v7[v8];
    if (v12 >> 62)
    {
      v14 = v11;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v14;
      if (v13 >= v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v11)
      {
LABEL_4:
        sub_1003CDB08(v11, v13);
        swift_endAccess();

        *&v3[v5] = 0;

        return;
      }
    }

    __break(1u);
  }
}

void sub_1002DB354()
{
  v1 = *(*&v0[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_mediator] + 16);
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized);
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize);
  }

  v4 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
  v5 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged);
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67110400;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable);

    *(v11 + 8) = 1024;
    *(v11 + 10) = v4;
    *(v11 + 14) = 1024;
    *(v11 + 16) = v6;
    *(v11 + 20) = 1024;
    *(v11 + 22) = v2;
    *(v11 + 26) = 1024;
    *(v11 + 28) = v5;
    *(v11 + 32) = 1024;
    *(v11 + 34) = v3;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMOnboardingNavigationController: dismissIfInitialized, isDismissable %{BOOL}d, areAccountsSignedIn: %{BOOL}d\nisNetworkUp: %{BOOL}d, isEverythingInitialized: %{BOOL}d, managed: %{BOOL}d, something failed: %{BOOL}d", v11, 0x26u);
  }

  else
  {

    v9 = v8;
  }

  if (*(&v8->isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable) == 1 && (v2 & 1 | ((v4 & v6 & 1) == 0) | v3 & 1 || v5))
  {
    sub_10042488C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = *(*(Strong + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
      v13[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
      v14 = Strong;
      v15 = v13;
      sub_10041E45C();

      v16 = [objc_opt_self() currentNotificationCenter];
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v8;
      v20[4] = sub_1002DBF10;
      v20[5] = v17;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_1004318E0;
      v20[3] = &unk_100634ED0;
      v18 = _Block_copy(v20);
      v19 = v8;
      swift_unknownObjectRetain();

      [v16 requestAuthorizationWithOptions:7 completionHandler:v18];

      _Block_release(v18);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1002DB730(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMOnboardingNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002DB854()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMOnboardingNavigationController: viewControllerWantsToContinue", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable) = 1;

  sub_1002DB354();
}

uint64_t sub_1002DB950()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMOnboardingNavigationController: viewControllerWantsToDismissIgnore", v5, 2u);
  }

  v1[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable] = 1;
  sub_10042488C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100355CE0(v1, 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1002DBA88(uint64_t a1, char a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_onboardingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_mediator] = a1;
  type metadata accessor for FMNoveltyViewController();
  v6 = swift_retain_n();
  v7 = sub_1004FD990(v6);
  type metadata accessor for FMNotificationAuthOnboardingViewController();

  v9 = sub_1001503CC(v8);
  *&v3[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_noveltyViewController] = v7;
  *&v3[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_notificationAuthViewController] = v9;
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v10 = swift_allocObject();
  if (a2)
  {
    *(v10 + 16) = xmmword_1005528C0;
    *(v10 + 32) = v9;
  }

  else
  {
    *(v10 + 16) = xmmword_100552EE0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    v11 = v7;
  }

  v12 = v9;

  v13 = v7;
  v14 = v12;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_1002DBEC4();

  v15 = objc_allocWithZone(type metadata accessor for FMPageViewController());
  *&v3[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_pageViewController] = sub_100141E10(a1, v10);
  v28.receiver = v3;
  v28.super_class = type metadata accessor for FMOnboardingNavigationController();
  v16 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1005528C0;
  v18 = *&v16[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_pageViewController];
  *(v17 + 32) = v18;
  v19 = v16;
  v20 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setViewControllers:isa];

  v22 = *&v19[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_noveltyViewController];
  if (v22)
  {
    *(v22 + OBJC_IVAR____TtC6FindMy23FMNoveltyViewController_delegate + 8) = &off_100634E90;
    swift_unknownObjectWeakAssign();
  }

  *(*&v19[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_notificationAuthViewController] + OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_delegate + 8) = &off_100634E90;
  swift_unknownObjectWeakAssign();
  v23 = [v19 navigationBar];
  v24 = [objc_allocWithZone(UIImage) init];
  [v23 setBackgroundImage:v24 forBarMetrics:0];

  v25 = [v19 navigationBar];
  v26 = [objc_allocWithZone(UIImage) init];
  [v25 setShadowImage:v26];

  return v19;
}

void sub_1002DBDD0(const char *a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  sub_1002DB354();
}

unint64_t sub_1002DBEC4()
{
  result = qword_1006B87E0;
  if (!qword_1006B87E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B87E0);
  }

  return result;
}

void sub_1002DBF18()
{
  if (qword_1006AEBD8 != -1)
  {
    swift_once();
  }

  v68 = xmmword_1006D4600;
  *v69 = unk_1006D4610;
  *&v69[9] = *(&qword_1006D4618 + 1);
  v64 = xmmword_1006D45C0;
  v65 = unk_1006D45D0;
  v66 = xmmword_1006D45E0;
  v67 = *&qword_1006D45F0;
  v60 = xmmword_1006D4580;
  v61 = *&qword_1006D4590;
  v62 = xmmword_1006D45A0;
  v63 = unk_1006D45B0;
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
  v2 = byte_1006D4628;
  v3 = xmmword_1006D4580;
  v4 = *(&xmmword_1006D4580 + 1) + *(&xmmword_1006D4580 + 1);
  if (byte_1006D4628)
  {
    v5 = *&xmmword_1006D4580 - (*(&xmmword_1006D4580 + 1) + *(&xmmword_1006D4580 + 1));
  }

  else
  {
    v5 = *&xmmword_1006D4580;
  }

  [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle] setFrame:{*(&xmmword_1006D4580 + 1), *(&xmmword_1006D4580 + 1), v5, v5}];
  [v1 setCornerRadius:v5 * 0.5];
  [v1 setAnchorPoint:{0.5, 0.5}];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder];
  [v6 setCornerRadius:(v5 + -4.0) * 0.5];
  [v1 addSublayer:v6];
  [v1 addSublayer:*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage]];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_accuracyLayer];
  v8 = objc_opt_self();
  v56 = v8;
  v9 = [v8 bezierPathWithOvalInRect:{0.0, 0.0, 0.0, 0.0}];
  v10 = [v9 CGPath];

  [v7 setPath:v10];
  [v7 setFillColor:*&v69[16]];
  if (v2)
  {
    v11 = *&v62 - v4;
  }

  else
  {
    v11 = *&v62;
  }

  v58 = sub_10043C1C0(*&v62 * 0.5, *&v62 * 0.125);
  v12 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer];
  v13 = [v58 CGPath];
  [v12 setPath:v13];

  [v12 setFrame:{*(&v3 + 1) + *&v61 - (*&v3 - *&v61) * 0.5 + 1.0, v11 * -0.25 - *&v62 * 0.125 + -2.0, *&v62, *&v62}];
  [v12 setAnchorPoint:{0.5, 1.0}];
  v57 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage];
  [v12 addSublayer:?];
  [v1 bounds];
  sub_1002DEDB0(v1, v14, v15, v16, v17);
  [v12 bounds];
  sub_1002DEDB0(v12, v18, v19, v20, v21);
  v22 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeBackground];
  v23 = *(&v66 + 1);
  v24 = [v8 bezierPathWithOvalInRect:{0.0, 0.0, *&v65 + v23 + v23, *(&v65 + 1) + v23 + v23}];
  v25 = [v24 CGPath];

  [v22 setPath:v25];
  v26 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer];
  [v26 addSublayer:v22];
  v27 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeImageLayer];
  [v26 addSublayer:v27];
  [v26 setFrame:{*&v3 - *&v64, *&v3 - *(&v64 + 1), v65}];
  [v22 setFrame:{0.0, 0.0, v65}];
  [v27 setFrame:{v23, v23, v65}];
  v28 = [v0 layer];
  [v28 setFrame:{0.0, 0.0, *&v3, *&v3}];

  v29 = [v0 layer];
  [v29 addSublayer:v7];

  v30 = [v0 layer];
  [v30 addSublayer:v1];

  v31 = [v0 layer];
  [v31 addSublayer:v12];

  v32 = [v0 layer];
  [v32 addSublayer:v26];

  v33 = *v69;
  v34 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer];
  [v34 setFrame:{(*&v3 - *&v68) * 0.5 + *&v3 * *&v67, (*&v3 - *(&v68 + 1)) * 0.5 + *&v3 * *(&v67 + 1), v68}];
  v35 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeBackground];
  v36 = [v56 bezierPathWithOvalInRect:{0.0, 0.0, v68}];
  v37 = [v36 CGPath];

  [v35 setPath:v37];
  v38 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeCircleLayer];
  v39 = [v56 bezierPathWithOvalInRect:{0.0, 0.0, *&v68 - (v33 + v33), *(&v68 + 1) - (v33 + v33)}];
  v40 = [v39 CGPath];

  [v38 setPath:v40];
  [v35 setFrame:{0.0, 0.0, v68}];
  v41 = objc_opt_self();
  v42 = [v41 whiteColor];
  v43 = [v42 CGColor];

  [v35 setFillColor:v43];
  [v35 frame];
  [v38 setFrame:{sub_10010B270(v44, v45, v46, v47, v33, v33)}];
  v48 = [v41 blackColor];
  v49 = [v48 CGColor];

  [v38 setFillColor:v49];
  v50 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeImageLayer];
  [v38 frame];
  [v50 setFrame:{sub_10010B270(v51, v52, v53, v54, v33, v33)}];
  [v50 setContentsGravity:kCAGravityResizeAspectFill];
  [v34 addSublayer:v35];
  [v34 addSublayer:v38];
  [v34 addSublayer:v50];
  v55 = [v0 layer];
  [v55 addSublayer:v34];

  sub_1002DC768(&v60);
  CATransform3DMakeScale(&v59, 0.0, 0.0, 1.0);
  [v12 setTransform:&v59];
  [v12 setOpacity:0.0];
  [v57 setOpacity:0.0];
  [v7 setOpacity:0.0];
}

id sub_1002DC768(uint64_t a1)
{
  v3 = *(a1 + 168);
  v4 = *a1;
  v5 = *a1;
  if (v3)
  {
    v5 = v4 - (*(a1 + 8) + *(a1 + 8));
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage) setFrame:{(v5 - *(a1 + 24)) * 0.5, (v5 - *(a1 + 24)) * 0.5, *(a1 + 24), *(a1 + 24)}];
  if (v3)
  {
    v4 = v4 - (*(a1 + 8) + *(a1 + 8));
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder) setFrame:{2.0, 2.0, v4 + -4.0, v4 + -4.0}];
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage);
  v7 = (*(a1 + 32) - *(a1 + 40)) * 0.5;

  return [v6 setFrame:{v7, v7}];
}

void sub_1002DC850(void *a1)
{
  v2 = v1;
  (*((swift_isaMask & *a1) + 0x158))(v40);
  sub_1002DC768(v40);
  v4 = sub_1002DF344(v40);
  v5 = *&v1[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage];
  v6 = *((swift_isaMask & *a1) + 0x188);
  v7 = (v6)(v4);
  v8 = [v7 CGImage];

  [v5 setContents:v8];
  v9 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage];
  v10 = v6();
  v11 = [v10 CGImage];

  [v9 setContents:v11];
  v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_canShowBalloon] = (*((swift_isaMask & *a1) + 0x170))() & 1;
  LODWORD(v12) = 1132068864;
  [v2 setDisplayPriority:v12];
  [v2 setCollisionMode:1];
  v13 = OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou;
  if (*(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) == 1 && ([v2 isSelected] & 1) != 0)
  {
    v14 = 0.65;
  }

  else
  {
    v14 = 0.5;
  }

  v15 = [v2 layer];
  [v15 setAnchorPoint:{0.5, v14}];

  v16 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder];
  v17 = (*((swift_isaMask & *a1) + 0x160))();
  v18 = 0.0;
  if (v17)
  {
    *&v18 = 1.0;
  }

  [v16 setOpacity:v18];
  v19 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
  [v19 setHidden:*(a1 + v13)];
  if (v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCenterCircle] == 1)
  {
    [v19 setHidden:1];
  }

  [v2 _updateFromMap];
  [v2 setUserInteractionEnabled:1];
  v20 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeImageLayer];
  v21 = *(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage);
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemGrayColor];
  v25 = sub_1003DE2DC(v24);

  if (v25)
  {
    v26 = [v25 CGImage];

    if (v26)
    {
      v38 = v26;
      type metadata accessor for CGImage(0);
      v25 = _bridgeAnythingToObjectiveC<A>(_:)();

      goto LABEL_14;
    }

LABEL_13:
    v25 = 0;
  }

LABEL_14:
  [v20 setContents:{v25, v38}];
  swift_unknownObjectRelease();
  v27 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeImageLayer];
  v28 = *(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage);
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 whiteColor];
  v32 = sub_1003DE2DC(v31);

  if (!v32)
  {
    goto LABEL_19;
  }

  v33 = [v32 CGImage];

  if (v33)
  {
    v39 = v33;
    type metadata accessor for CGImage(0);
    v32 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
LABEL_18:
    v32 = 0;
  }

LABEL_19:
  [v27 setContents:{v32, v39}];
  swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive))
  {
    v34 = &v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated];
    v35 = v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated];
    v36 = (*(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate) & 1) == 0;
    v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated] = v36;
    if (v35 == v36)
    {
      return;
    }
  }

  else
  {
    v34 = &v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated];
    v37 = v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated];
    v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated] = 0;
    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  if (([v2 isSelected] & 1) != 0 && *v34 == 1)
  {
    sub_1002DD0BC();
  }

  else
  {
    sub_1002DD5D8();
  }
}

void sub_1002DCDC8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = [v0 isSelected];
  v4 = objc_opt_self();
  if (v2 == 2)
  {
    v5 = &selRef_systemGray2Color;
    if (v3)
    {
      v5 = &selRef_systemGray3Color;
    }

    v6 = [v4 *v5];
    v7 = [v6 CGColor];

    v8 = [objc_opt_self() systemGray3Color];
    v9 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
    v10 = v7;
    [v9 setBackgroundColor:v10];
    v11 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder];
    v12 = [v8 CGColor];
    [v11 setBackgroundColor:v12];

    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer] setFillColor:v10];
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeBackground] setFillColor:v10];
  }

  else
  {
    v13 = &selRef_systemGray6Color;
    if (v3)
    {
      v13 = &selRef_whiteColor;
    }

    v14 = [v4 *v13];
    v15 = [v14 CGColor];

    v16 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
    v10 = v15;
    [v16 setBackgroundColor:v10];
    v17 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder];
    v18 = [objc_opt_self() whiteColor];
    v19 = [v18 CGColor];

    [v17 setBackgroundColor:v19];
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer] setFillColor:v10];
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeBackground] setFillColor:v10];
  }

  if ([v0 isSelected] && v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated] == 1)
  {

    sub_1002DD0BC();
  }

  else
  {

    sub_1002DD5D8();
  }
}

void sub_1002DD0BC()
{
  if (!*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer])
  {
    v28 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer;
    v1 = [objc_opt_self() systemGreenColor];
    v2 = [v1 CGColor];

    if (qword_1006AEBD8 != -1)
    {
      swift_once();
    }

    v3 = *&xmmword_1006D4580;
    v4 = [objc_allocWithZone(CAShapeLayer) init];
    v5 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, v3, v3}];
    v6 = [v5 CGPath];

    [v4 setPath:v6];
    v7 = v4;
    [v7 setAnchorPoint:{0.5, 0.5}];
    [v7 setFrame:{0.0, -v3, v3, v3}];
    [v7 setFillColor:v2];
    [v7 setOpacity:0.0];

    v8 = String._bridgeToObjectiveC()();
    v9 = objc_opt_self();
    v10 = [v9 animationWithKeyPath:v8];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v10 setFromValue:isa];

    v12 = Double._bridgeToObjectiveC()().super.super.isa;
    [v10 setToValue:v12];

    v13 = v10;
    [v13 setRemovedOnCompletion:0];
    [v13 setDuration:1.5];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v9 animationWithKeyPath:v14];

    v16 = Float._bridgeToObjectiveC()().super.super.isa;
    [v15 setFromValue:v16];

    v17 = Float._bridgeToObjectiveC()().super.super.isa;
    [v15 setToValue:v17];

    v18 = v15;
    [v18 setRemovedOnCompletion:0];
    [v18 setDuration:1.5];
    v19 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100552EE0;
    *(v20 + 32) = v13;
    *(v20 + 40) = v18;
    sub_1002DF2F8();
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setAnimations:v21];

    v22 = v19;
    [v22 setDuration:1.5];
    [v22 setRepeatCount:0.0];
    v23 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
    [v22 setTimingFunction:v23];

    [v22 setRemovedOnCompletion:0];
    LODWORD(v24) = 2139095040;
    [v22 setRepeatCount:v24];

    v25 = [v0 layer];
    [v25 insertSublayer:v7 atIndex:0];

    v26 = String._bridgeToObjectiveC()();
    [v7 addAnimation:v22 forKey:v26];

    v27 = *&v0[v28];
    *&v0[v28] = v7;
  }
}

void sub_1002DD5D8()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer);
  if (v2)
  {
    [v2 removeAllAnimations];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 removeFromSuperlayer];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

__n128 sub_1002DD63C()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  v2 = [v1 CGColor];
  xmmword_1006D4580 = xmmword_10055CC90;
  *&qword_1006D4590 = xmmword_10055CCA0;
  xmmword_1006D45A0 = xmmword_10055CCB0;
  unk_1006D45B0 = xmmword_1005526C0;
  __asm
  {
    FMOV            V0.2D, #20.0
    FMOV            V1.2D, #15.0
  }

  xmmword_1006D45C0 = _Q0;
  unk_1006D45D0 = _Q1;
  xmmword_1006D45E0 = xmmword_10055CCC0;
  *&qword_1006D45F0 = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #30.0 }

  xmmword_1006D4600 = result;
  unk_1006D4610 = xmmword_10055CCD0;
  qword_1006D4620 = v2;
  byte_1006D4628 = 1;
  return result;
}

id sub_1002DD734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle;
  *&v3[v6] = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder;
  *&v3[v7] = [objc_allocWithZone(CALayer) init];
  v8 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage;
  *&v3[v8] = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer;
  *&v3[v9] = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage;
  *&v3[v10] = [objc_allocWithZone(CALayer) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer;
  *&v3[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeBackground;
  *&v3[v12] = [objc_allocWithZone(CAShapeLayer) init];
  v13 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeImageLayer;
  *&v3[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer;
  *&v3[v14] = [objc_allocWithZone(CALayer) init];
  v15 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeBackground;
  *&v3[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeCircleLayer;
  *&v3[v16] = [objc_allocWithZone(CAShapeLayer) init];
  v17 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeImageLayer;
  *&v3[v17] = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_accuracyLayer;
  *&v3[v18] = [objc_allocWithZone(CAShapeLayer) init];
  *&v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isShowingInaccurate] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCallout] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCenterCircle] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_applyShadowToBalloonTail] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated] = 0;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_canShowBalloon] = 1;
  v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isPulsating] = 0;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v23.receiver = v3;
  v23.super_class = type metadata accessor for FMMapAnnotationView();
  v20 = objc_msgSendSuper2(&v23, "initWithAnnotation:reuseIdentifier:", a1, v19);

  v21 = v20;
  sub_1002DBF18();
  sub_1002DCDC8();

  swift_unknownObjectRelease();
  return v21;
}

id sub_1002DDAF8()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v37, "_updateFromMap");
  result = [v0 annotation];
  if (result)
  {
    type metadata accessor for FMAnnotation();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      return swift_unknownObjectRelease();
    }

    v3 = v2;
    if (qword_1006AEBD8 != -1)
    {
      swift_once();
    }

    v4 = xmmword_1006D4580;
    v5 = *&qword_1006D4598;
    v6 = *&qword_1006D4618;
    [v0 _pointsForDistance:*(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy)];
    v8 = v7;
    v9 = v7 + v7;
    v10 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_accuracyLayer];
    v11 = [objc_opt_self() bezierPathWithOvalInRect:{1.0, 1.0, v9, v9}];
    v12 = [v11 CGPath];

    [v10 setPath:v12];
    [v10 setFrame:{*&v4 * 0.5 - v8, *&v4 * 0.5 - v8, v9, v9}];
    [v0 _mapPitchRadians];
    CATransform3DMakeRotation(&v36, v13, 1.0, 0.0, 0.0);
    [v10 setTransform:&v36];
    [v10 setZPosition:-100.0];
    v14 = OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate;
    if (v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isShowingInaccurate] == *(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate))
    {
      if (!*(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate))
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v0 setSelected:objc_msgSend(v0 animated:{"isSelected"), 0}];
      if ((*(v3 + v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v0 isSelected])
    {
      [v10 setLineWidth:v6];
      v15 = [objc_opt_self() whiteColor];
      v16 = [v15 CGColor];

      [v10 setStrokeColor:v16];
      v17 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer];
      [v17 setOpacity:0.0];
      v18 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage];
      [v18 setOpacity:0.0];
      v19 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
      [v19 setOpacity:0.0];
      if ((*(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) & 1) == 0)
      {
        LODWORD(v20) = 1.0;
        [v10 setOpacity:v20];
      }

      if (v9 >= *(&v4 + 1) + v5)
      {
        goto LABEL_18;
      }

      v21 = *&CATransform3DIdentity.m33;
      *&v36.m31 = *&CATransform3DIdentity.m31;
      *&v36.m33 = v21;
      v22 = *&CATransform3DIdentity.m43;
      *&v36.m41 = *&CATransform3DIdentity.m41;
      *&v36.m43 = v22;
      v23 = *&CATransform3DIdentity.m13;
      *&v36.m11 = *&CATransform3DIdentity.m11;
      *&v36.m13 = v23;
      v24 = *&CATransform3DIdentity.m23;
      *&v36.m21 = *&CATransform3DIdentity.m21;
      *&v36.m23 = v24;
      [v19 setTransform:&v36];
      CATransform3DMakeScale(&v36, 0.0, 0.0, 1.0);
      [v17 setTransform:&v36];
      v25 = 0.0;
      [v17 setOpacity:0.0];
      [v18 setOpacity:0.0];
      LODWORD(v26) = 1.0;
      [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage] setOpacity:v26];
      LODWORD(v27) = 1.0;
      [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder] setOpacity:v27];
      LODWORD(v28) = 1.0;
      [v19 setOpacity:v28];
LABEL_17:
      *&v29 = v25;
      [v10 setOpacity:v29];
LABEL_18:
      if (*(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage))
      {
        *&v20 = 1.0;
      }

      else
      {
        *&v20 = 0.0;
      }

      [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer] setOpacity:v20];
      if (*(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage))
      {
        *&v35 = 1.0;
      }

      else
      {
        *&v35 = 0.0;
      }

      [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer] setOpacity:v35];
      return swift_unknownObjectRelease();
    }

LABEL_14:
    [v10 setLineWidth:0.0];
    v30 = [objc_opt_self() clearColor];
    v31 = [v30 CGColor];

    [v10 setStrokeColor:v31];
    [v10 setLineWidth:0.0];
    v25 = 1.0;
    LODWORD(v32) = 1.0;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer] setOpacity:v32];
    LODWORD(v33) = 1.0;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage] setOpacity:v33];
    LODWORD(v34) = 1.0;
    [*&v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle] setOpacity:v34];
    if (![v0 isSelected] || *(v3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) == 1)
    {
      v25 = 0.0;
    }

    goto LABEL_17;
  }

  return result;
}

void sub_1002DE0D8(char a1, char a2)
{
  v62.receiver = v2;
  v62.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v62, "setSelected:animated:", a1 & 1, a2 & 1);
  if (qword_1006AEBD8 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_1006D4580 + 1);
  v5 = *&xmmword_1006D4580;
  v58 = *&qword_1006D4590;
  v7 = *&xmmword_1006D45A0;
  v9 = *(&xmmword_1006D45C0 + 1);
  v8 = *&xmmword_1006D45C0;
  v10 = *&xmmword_1006D45E0;
  v11 = qword_1006D45F0;
  v12 = unk_1006D45F8;
  v13 = byte_1006D4628;
  if ([v2 annotation])
  {
    type metadata accessor for FMAnnotation();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v55 = v6;
      v16 = v8;
      v17 = v5;
      v18 = v10;
      v19 = v7;
      v20 = v9;
      v21 = v12;
      v22 = v11;
      if (*(v14 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) == 1 && ([v2 isSelected] & 1) != 0)
      {
        v23 = 0.65;
      }

      else
      {
        v23 = 0.5;
      }

      v24 = [v2 layer];
      [v24 setAnchorPoint:{0.5, v23}];

      v25 = *(v15 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate);
      swift_unknownObjectRelease();
      v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isShowingInaccurate] = v25;
      v11 = v22;
      v12 = v21;
      v9 = v20;
      v7 = v19;
      v10 = v18;
      v5 = v17;
      v8 = v16;
      v6 = v55;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v26 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer];
  if (a2)
  {
    sub_10007EBC0(&qword_1006BAC80, &qword_10055CD58);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100552220;
    *(v27 + 32) = 0x726F66736E617274;
    *(v27 + 40) = 0xE90000000000006DLL;
    *(v27 + 48) = [objc_opt_self() springAnimationWithDuration:0.638 dampingRatio:0.7 velocity:0.0];
    sub_10015419C(v27);
    swift_setDeallocating();
    sub_1002DF04C(v27 + 32);
    swift_deallocClassInstance();
    sub_10007EBC0(&qword_1006BAC90, qword_10055CD68);
    v28.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setActions:v28.super.isa];

  if ((a1 & 1) != 0 && (v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isShowingInaccurate] & 1) == 0 && v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_canShowBalloon] == 1)
  {
    v29 = v5 - (v6 + v6);
    if (!v13)
    {
      v29 = v5;
    }

    v56 = *&v11;
    v30 = v58 / v29;
    v31 = (v29 - v58) * 0.5 + v6 * -4.0 + -1.0;
    CATransform3DMakeTranslation(&v61, v31, v31, 1.0);
    CATransform3DScale(&v60, &v61, v30, v30, 1.0);
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle] setTransform:&v60];
    v32 = *&CATransform3DIdentity.m33;
    *&v61.m31 = *&CATransform3DIdentity.m31;
    *&v61.m33 = v32;
    v33 = *&CATransform3DIdentity.m43;
    *&v61.m41 = *&CATransform3DIdentity.m41;
    *&v61.m43 = v33;
    v34 = *&CATransform3DIdentity.m13;
    *&v61.m11 = *&CATransform3DIdentity.m11;
    *&v61.m13 = v34;
    v35 = *&CATransform3DIdentity.m23;
    *&v61.m21 = *&CATransform3DIdentity.m21;
    *&v61.m23 = v35;
    [v26 setTransform:&v61];
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage] setOpacity:0.0];
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder] setOpacity:0.0];
    CATransform3DMakeTranslation(&v61, (v5 - v8) * 0.25, -((v5 - v9) * v10), 1.0);
    v36 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer];
    CATransform3DScale(&v60, &v61, v10, v10, 1.0);
    [v36 setTransform:&v60];
    LODWORD(v37) = 1.0;
    [v36 setOpacity:v37];
    CATransform3DMakeTranslation(&v61, (v7 - v5) * 0.5 * v56, (v7 - v5) * 0.5 * v12 - (v7 * 0.5 + v7 * 0.125 + v7 * 0.125), 1.0);
    v38 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer];
    [v38 setTransform:&v61];
  }

  else
  {
    v38 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
    v57 = *&CATransform3DIdentity.m33;
    *&v61.m31 = *&CATransform3DIdentity.m31;
    v59 = *&v61.m31;
    *&v61.m33 = v57;
    v52 = *&CATransform3DIdentity.m43;
    *&v61.m41 = *&CATransform3DIdentity.m41;
    *&v61.m43 = v52;
    v49 = *&CATransform3DIdentity.m13;
    *&v61.m11 = *&CATransform3DIdentity.m11;
    *&v61.m13 = v49;
    v46 = *&CATransform3DIdentity.m23;
    *&v61.m21 = *&CATransform3DIdentity.m21;
    *&v61.m23 = v46;
    [v38 setTransform:{&v61, v46, *&v61.m21, *&v61.m22, v49, *&v61.m11, *&v61.m12, v52, *&v61.m41, *&v61.m42}];
    CATransform3DMakeScale(&v61, 0.0, 0.0, 1.0);
    [v26 setTransform:&v61];
    [v26 setOpacity:0.0];
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage] setOpacity:0.0];
    v40 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer];
    *&v61.m31 = v59;
    *&v61.m33 = v57;
    *&v61.m41 = v54;
    *&v61.m43 = v53;
    *&v61.m11 = v51;
    *&v61.m13 = v50;
    *&v61.m21 = v48;
    *&v61.m23 = v47;
    [v40 setTransform:&v61];
    LODWORD(v41) = 1.0;
    [v40 setOpacity:v41];
    v42 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer];
    *&v61.m31 = v59;
    *&v61.m33 = v57;
    *&v61.m41 = v54;
    *&v61.m43 = v53;
    *&v61.m11 = v51;
    *&v61.m13 = v50;
    *&v61.m21 = v48;
    *&v61.m23 = v47;
    [v42 setTransform:&v61];
    LODWORD(v43) = 1.0;
    [v42 setOpacity:v43];
    LODWORD(v44) = 1.0;
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage] setOpacity:v44];
    LODWORD(v45) = 1.0;
    [*&v2[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder] setOpacity:v45];
  }

  LODWORD(v39) = 1.0;
  [v38 setOpacity:v39];
  sub_1002DCDC8();
}

char *sub_1002DE7A8(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for FMMapAnnotationView();
  result = objc_msgSendSuper2(&v17, "hitTest:withEvent:", a1, a2, a3);
  if (!result)
  {
    v8 = [v3 rightCalloutAccessoryView];
    if (v8)
    {
      v9 = v8;
      [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
      v10 = [v9 hitTest:a1 withEvent:?];

      return v10;
    }

    else
    {
      if (qword_1006AEBD8 != -1)
      {
        swift_once();
      }

      v11 = *&xmmword_1006D4580;
      [*&v3[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle] frame];
      if (sqrt((a2 - (v13 + v12 * 0.5)) * (a2 - (v13 + v12 * 0.5)) + (a3 - (v15 + v14 * 0.5)) * (a3 - (v15 + v14 * 0.5))) >= v11 * 0.5)
      {
        return 0;
      }

      else
      {
        v16 = v3;
        return v3;
      }
    }
  }

  return result;
}

void sub_1002DEA60()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  [v0 setUserInteractionEnabled:1];
  v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_canShowBalloon] = 1;
  v1 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated;
  v2 = v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated];
  v0[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated] = 0;
  if (v2 == 1)
  {
    if (([v0 isSelected] & 1) != 0 && v0[v1] == 1)
    {
      sub_1002DD0BC();
    }

    else
    {
      sub_1002DD5D8();
    }
  }
}

id sub_1002DEB4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMapAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1002DECB0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1002DECEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DED34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1002DEDB0(void *a1, double a2, double a3, double a4, double a5)
{
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v6 = CGPathCreateWithEllipseInRect(*&a2, &transform);
  [a1 setShadowPath:v6];

  v7 = [objc_opt_self() blackColor];
  v8 = [v7 CGColor];

  [a1 setShadowColor:v8];
  [a1 setShadowOffset:{0.0, 0.0}];
  LODWORD(v9) = 1045220557;
  [a1 setShadowOpacity:v9];
  if (qword_1006AEBD8 != -1)
  {
    swift_once();
  }

  return [a1 setShadowRadius:*(&xmmword_1006D4580 + 1)];
}

id sub_1002DEF14(void *a1)
{
  v2 = [a1 path];
  [a1 setShadowPath:v2];

  v3 = [objc_opt_self() blackColor];
  v4 = [v3 CGColor];

  [a1 setShadowColor:v4];
  [a1 setShadowOffset:{0.0, 0.0}];
  LODWORD(v5) = 1045220557;
  [a1 setShadowOpacity:v5];
  if (qword_1006AEBD8 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_1006D4580 + 1);

  return [a1 setShadowRadius:v6];
}

uint64_t sub_1002DF04C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BAC88, &qword_10055CD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002DF0B4()
{
  v1 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage;
  *(v0 + v3) = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonImage;
  *(v0 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeLayer;
  *(v0 + v6) = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeBackground;
  *(v0 + v7) = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_badgeImageLayer;
  *(v0 + v8) = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeLayer;
  *(v0 + v9) = [objc_allocWithZone(CALayer) init];
  v10 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeBackground;
  *(v0 + v10) = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeCircleLayer;
  *(v0 + v11) = [objc_allocWithZone(CAShapeLayer) init];
  v12 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_stewieBadgeImageLayer;
  *(v0 + v12) = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_accuracyLayer;
  *(v0 + v13) = [objc_allocWithZone(CAShapeLayer) init];
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_pulseLayer) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isShowingInaccurate) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCallout) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCenterCircle) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_applyShadowToBalloonTail) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isLiveAnimated) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_canShowBalloon) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_isPulsating) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002DF2F8()
{
  result = qword_1006B8248;
  if (!qword_1006B8248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B8248);
  }

  return result;
}

id sub_1002DF374(char a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator;
  *&v2[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView;
  *&v2[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView;
  *&v2[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_badgeLabel;
  v13 = objc_opt_self();
  v14 = [v13 systemBlueColor];
  v15 = [v13 whiteColor];
  v16 = objc_allocWithZone(type metadata accessor for FMBadge());
  *&v3[v12] = sub_10022616C(v14, v15, 0.0);
  v17 = &v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_subtitle];
  *v18 = 0;
  v18[1] = 0;
  v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separated] = 1;
  *&v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image] = 0;
  v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_deletable] = a1;
  v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_addable] = a2;
  *&v3[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] = 0;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for FMDeletableRowView();
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002DF5A0();
  sub_1002DFB68();

  return v19;
}

void sub_1002DF5A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 setFont:v6];

  [*&v1[v2] setNumberOfLines:0];
  [*&v1[v2] setAdjustsFontForContentSizeCategory:1];
  v39 = v2;
  [*&v1[v2] setContentMode:0];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_badgeLabel];
  v8 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption2];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v10 = UIFontWeightTrait;
  v11 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v12 = sub_10002ACDC(v11);

  [v7 setFont:v12];

  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  v40 = v7;
  [v7 setTextColor:v14];

  v15 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel;
  v16 = *&v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel];
  v17 = [v4 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v16 setFont:v17];

  v18 = *&v1[v15];
  v19 = [v13 secondaryLabelColor];
  [v18 setTextColor:v19];

  [*&v1[v15] setTextAlignment:4];
  [*&v1[v15] setNumberOfLines:0];
  [*&v1[v15] setAdjustsFontForContentSizeCategory:1];
  v20 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator;
  v21 = *&v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator];
  v22 = [v13 labelColor];
  v23 = [v22 colorWithAlphaComponent:0.1];

  [v21 setBackgroundColor:v23];
  v24 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView;
  v25 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_addable;
  if (v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_addable])
  {
    v26 = 0;
  }

  else
  {
    v26 = v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_deletable] ^ 1;
  }

  [*&v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView] setHidden:v26 & 1];
  v27 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_deletable;
  if (v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_deletable] == 1)
  {
    v28 = objc_opt_self();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    v31 = [v30 imageWithRenderingMode:2];
  }

  else
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() systemImageNamed:v32];

    if (!v33)
    {
      v31 = 0;
      goto LABEL_10;
    }

    v30 = [v13 systemBlueColor];
    v31 = [v33 imageWithTintColor:v30 renderingMode:1];
  }

LABEL_10:
  v34 = [objc_allocWithZone(UIImageView) initWithImage:v31];

  v35 = *&v1[v24];
  *&v1[v24] = v34;
  v36 = v34;

  if (v1[v27])
  {
    v37 = &selRef_systemRedColor;
  }

  else
  {
    v37 = &selRef_systemBlueColor;
  }

  v38 = [v13 *v37];
  [v36 setTintColor:v38];

  [v1 addSubview:*&v1[v39]];
  [v1 addSubview:*&v1[v15]];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView]];
  [v1 addSubview:*&v1[v20]];
  [v1 addSubview:v40];
  if ((v1[v25] & 1) != 0 || v1[v27] == 1)
  {
    [v1 addSubview:*&v1[v24]];
  }
}

void sub_1002DFB68()
{
  v93 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v94 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v90 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = *&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_badgeLabel];
  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
  v88 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v97 = &type metadata for SolariumFeatureFlag;
  v89 = sub_10000BD04();
  v98 = v89;
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v96);
  v3 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v3 = *&qword_1006D4798;
  }

  v4 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [*&v0[v1] centerYAnchor];
  v7 = [v0 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [*&v0[v1] heightAnchor];
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v13 = *&qword_1006D4DD8;
  v14 = [v12 constraintEqualToConstant:*&qword_1006D4DD8];

  *(v5 + 48) = v14;
  v15 = [*&v0[v1] widthAnchor];
  v16 = [v15 constraintEqualToConstant:v13];

  *(v5 + 56) = v16;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552EE0;
  v95 = v4;
  v19 = [*&v0[v93] topAnchor];
  v20 = [v0 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:15.0];

  *(v18 + 32) = v21;
  v22 = [*&v0[v93] leadingAnchor];
  v92 = v1;
  v23 = [*&v0[v1] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v3];

  *(v18 + 40) = v24;
  v25 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:v25];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100552EF0;
  v27 = [*&v0[v94] topAnchor];
  v28 = [*&v0[v93] bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:2.0];

  *(v26 + 32) = v29;
  v30 = [*&v0[v94] bottomAnchor];
  v31 = [v0 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31 constant:-15.0];

  *(v26 + 40) = v32;
  v33 = [*&v0[v94] leadingAnchor];
  v34 = [*&v0[v93] leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v26 + 48) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:v36];

  if ((v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_addable] & 1) != 0 || v0[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_deletable] == 1)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100552F00;
    v38 = [*&v0[v88] centerYAnchor];
    v39 = [v0 centerYAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v37 + 32) = v40;
    v41 = [*&v0[v88] heightAnchor];
    v42 = [v41 constraintEqualToConstant:22.0];

    *(v37 + 40) = v42;
    v43 = [*&v0[v88] widthAnchor];
    v44 = [v43 constraintEqualToConstant:22.0];

    *(v37 + 48) = v44;
    v45 = [*&v0[v88] leadingAnchor];
    v46 = [*&v0[v94] trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v37 + 56) = v47;
    v48 = [*&v0[v88] trailingAnchor];
    v49 = [v0 trailingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v37 + 64) = v50;
    v51 = Array._bridgeToObjectiveC()().super.isa;

    v52 = v4;
    [v4 activateConstraints:v51];

    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100552EE0;
    v54 = [*&v0[v93] trailingAnchor];
    v55 = [*&v0[v88] leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];

    *(v53 + 32) = v56;
    v57 = [*&v0[v94] trailingAnchor];
    v58 = [*&v0[v88] leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:0.0];
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100552EE0;
    v61 = [*&v0[v93] trailingAnchor];
    v62 = [v0 trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-v3];

    *(v53 + 32) = v63;
    v57 = [*&v0[v94] trailingAnchor];
    v58 = [v0 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:-v3];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v52 = v95;
  }

  v64 = v59;

  *(v53 + 40) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v52 p:v65 ivar:?lyt[436]];

  v97 = &type metadata for SolariumFeatureFlag;
  v98 = v89;
  v66 = isFeatureEnabled(_:)();
  sub_100006060(v96);
  if (v66)
  {
    v3 = 0.0;
  }

  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1005521F0;
  v68 = [*&v0[v90] leadingAnchor];
  v69 = [v0 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v67 + 32) = v70;
  v71 = [*&v0[v90] trailingAnchor];
  v72 = [v0 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v3];

  *(v67 + 40) = v73;
  v74 = [*&v0[v90] bottomAnchor];
  v75 = [v0 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:0.0];

  *(v67 + 48) = v76;
  v77 = [*&v0[v90] heightAnchor];
  v78 = [v77 constraintEqualToConstant:1.0];

  *(v67 + 56) = v78;
  v79 = Array._bridgeToObjectiveC()().super.isa;

  [v95 activateConstraints:v79];

  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100552EE0;
  v81 = [v91 trailingAnchor];
  v82 = [*&v0[v93] leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-4.0];

  *(v80 + 32) = v83;
  v84 = [v91 bottomAnchor];
  v85 = [*&v0[v92] bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:8.0];

  *(v80 + 40) = v86;
  v87 = Array._bridgeToObjectiveC()().super.isa;

  [v95 activateConstraints:v87];
}

void sub_1002E08C4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, SEL *a6)
{
  sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14.receiver = v11;
  v14.super_class = type metadata accessor for FMDeletableRowView();
  objc_msgSendSuper2(&v14, *a5, isa, v10);

  v13 = [objc_opt_self() *a6];
  [v11 setBackgroundColor:v13];
}

id sub_1002E0A1C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMDeletableRowView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002E0B4C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separator;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView;
  *(v0 + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_actionIconView;
  *(v0 + v7) = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_badgeLabel;
  v9 = objc_opt_self();
  v10 = [v9 systemBlueColor];
  v11 = [v9 whiteColor];
  v12 = objc_allocWithZone(type metadata accessor for FMBadge());
  *(v1 + v8) = sub_10022616C(v10, v11, 0.0);
  v13 = (v1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_subtitle);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_separated) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1002E0D10(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v3 - 8);
  v62 = &v53 - v4;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for FMIPFeatures();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v54 = a2;
  FMIPDevice.features.getter();
  static FMIPFeatures.locateAfterEraseSupported.getter();
  sub_100179F58();
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  v20 = 0xD00000000000001BLL;
  if (v18)
  {
    v20 = 0xD000000000000027;
  }

  v56 = v20;
  if (v18)
  {
    v21 = "DEVICE_ERASE_TITLE";
  }

  else
  {
    v21 = "DEVICE_ERASE_FOOTER";
  }

  v55 = v21;
  v61 = v6;
  v22 = *(v6 + 16);
  v22(v10, a2, v5);
  v23 = *(v6 + 56);
  v23(v10, 0, 1, v5);
  v59 = v23;
  v60 = v6 + 56;
  v24 = sub_10022F104(0xD000000000000012, 0x800000010058ED80, v10);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = sub_10022E0A8(v24, v26, v28, v30, 0, 0);
  v57 = v32;
  v58 = v31;

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v10);
  v33 = v54;
  v22(v10, v54, v5);
  v23(v10, 0, 1, v5);
  v34 = sub_10022F104(v56, v55 | 0x8000000000000000, v10);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_10022E0A8(v34, v36, v38, v40, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v10);
  v22(v65, v33, v5);
  v41 = type metadata accessor for FMIPItem();
  v42 = v62;
  (*(*(v41 - 8) + 56))(v62, 1, 1, v41);
  v43 = objc_allocWithZone(v63);
  v44 = String._bridgeToObjectiveC()();

  v45 = String._bridgeToObjectiveC()();

  v46 = [v43 initWithTitle:v44 detailText:v45 icon:0 contentLayout:1];

  v47 = v61;
  (*(v61 + 8))(v33, v5);
  *&v46[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator] = v64;
  v48 = v46;

  (*(v47 + 32))(v10, v65, v5);
  v59(v10, 0, 1, v5);
  v49 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_1000BBF40(v10, &v48[v49], &unk_1006BBCE0, &unk_1005534C0);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
  swift_beginAccess();
  sub_1000BBF40(v42, &v48[v50], &qword_1006B07D0, qword_100552820);
  swift_endAccess();
  v51 = &v48[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  *v51 = 4;
  v51[4] = 0;

  return v48;
}

void sub_1002E1308()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  sub_1003BB990();
  v4 = *&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton];
  v5 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_10018F460(&v0[v5], v3);
  v6 = sub_10022F104(0xD000000000000025, 0x800000010058ED10, v3);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10022E0A8(v6, v8, v10, v12, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v3);
  v13 = String._bridgeToObjectiveC()();

  [v4 setTitle:v13 forState:0];

  v14 = [v0 buttonTray];
  sub_10018F460(&v0[v5], v3);
  v15 = sub_10022F104(0xD000000000000013, 0x800000010058ED40, v3);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10022E0A8(v15, v17, v19, v21, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v3);
  v22 = String._bridgeToObjectiveC()();

  [v14 setCaptionText:v22];
}

id sub_1002E1554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for FMDeviceEraseViewController(0);
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_1002E17B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceEraseViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceEraseViewController(uint64_t a1)
{
  result = qword_1006BAD58;
  if (!qword_1006BAD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002E1864()
{
  v1 = v0;
  sub_100455328();
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v54._object = 0x800000010058EEF0;
  v5._countAndFlagsBits = 0xD00000000000001CLL;
  v5._object = 0x800000010058EED0;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v54);

  *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v7;

  v8 = *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 1;
  [*&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:1];
  *&v2[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_100635058;
  swift_unknownObjectWeakAssign();
  v11 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v11];

  v12 = *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editFindMyNotificationSettingsButton);
  v13 = [v3 mainBundle];
  v55._object = 0x800000010058EF70;
  v14._countAndFlagsBits = 0xD000000000000026;
  v14._object = 0x800000010058EF40;
  v55._countAndFlagsBits = 0xD000000000000038;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v55);

  *&v12[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v16;

  v17 = *&v12[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();

  [v18 setText:v19];

  v20 = String._bridgeToObjectiveC()();
  [v12 setAccessibilityIdentifier:v20];

  v21 = objc_opt_self();
  v22 = [v21 systemBlueColor];
  v23 = *&v12[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor];
  *&v12[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor] = v22;
  v24 = v22;

  sub_100503F58();
  v25 = *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editSafetyAlertsNotificationSettingsButton);
  v26 = [v3 mainBundle];
  v56._object = 0x800000010058F010;
  v27._countAndFlagsBits = 0xD00000000000002CLL;
  v27._object = 0x800000010058EFE0;
  v56._countAndFlagsBits = 0xD00000000000003ELL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v56);

  *&v25[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v29;

  v30 = *&v25[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v31 = v30;
  v32 = String._bridgeToObjectiveC()();

  [v31 setText:v32];

  v33 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v33];

  v34 = [v21 systemBlueColor];
  v35 = *&v25[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor];
  *&v25[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor] = v34;
  v36 = v34;

  sub_100503F58();
  v37 = *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton);
  v38 = [v3 mainBundle];
  v39._countAndFlagsBits = 0xD000000000000011;
  v40.value._countAndFlagsBits = 0xD000000000000013;
  v57._object = 0x8000000100579A00;
  v39._object = 0x800000010058F080;
  v40.value._object = 0x80000001005799E0;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD000000000000018;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v57);

  *&v37[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v42;

  v43 = *&v37[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v44 = v43;
  v45 = String._bridgeToObjectiveC()();

  [v44 setText:v45];

  v46 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v46];

  v47 = [v21 systemBlueColor];
  v48 = *&v37[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor];
  *&v37[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleColor] = v47;
  v49 = v47;

  sub_100503F58();
  v50 = *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);
  [v50 addArrangedSubview:v2];
  [v50 addArrangedSubview:v37];
  [v50 addArrangedSubview:v12];
  v25[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow] = 1;
  sub_10050265C();
  [v50 addArrangedSubview:v25];
  v51 = (*(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_showClearButton) & 1) == 0;

  return [v37 setHidden:v51];
}

void sub_1002E1F80()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handleEditFindMyNotificationsLabel"];
  [*&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editFindMyNotificationSettingsButton] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleEditSafetyAlertsNotificationsLabel"];
  [*&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editSafetyAlertsNotificationSettingsButton] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleClearTags"];

  [*&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton] addGestureRecognizer:v5];
}

void sub_1002E20AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v212 = a3;
  v211 = a1;
  v220 = 0;
  v237 = type metadata accessor for FMPlatterIcon(0);
  v5 = *(v237 - 8);
  __chkstk_darwin(v237);
  v7 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v8 - 8);
  v224 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v239 = &v181 - v11;
  v203 = type metadata accessor for FMFFriend();
  v208 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v201 = &v181 - v14;
  v191 = type metadata accessor for PersonNameComponents();
  v15 = *(v191 - 8);
  __chkstk_darwin(v191);
  v215 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v17 = *(v207 - 8);
  __chkstk_darwin(v207);
  v183 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_10007EBC0(&unk_1006C3CA0, qword_100555B10);
  __chkstk_darwin(v206);
  v205 = &v181 - v19;
  v20 = sub_10007EBC0(&unk_1006BC950, &unk_10055CEA0);
  __chkstk_darwin(v20 - 8);
  v190 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v181 - v23;
  __chkstk_darwin(v25);
  v219 = (&v181 - v26);
  v27 = type metadata accessor for FMFLocationAlertTarget();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v231 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v230 = &v181 - v31;
  __chkstk_darwin(v32);
  v236 = &v181 - v33;
  __chkstk_darwin(v34);
  v235 = &v181 - v35;
  v227 = type metadata accessor for FMFLocationAlert();
  v36 = *(v227 - 1);
  __chkstk_darwin(v227);
  v204 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v238 = &v181 - v39;
  sub_1002E3FA8();
  p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);
  if (!a2)
  {
    goto LABEL_90;
  }

  v181 = v5;
  v213 = v7;
  v226 = v3;
  v41 = *(a2 + 16);
  if (v41)
  {
    v209 = v24;
    v43 = *(v36 + 16);
    v42 = v36 + 16;
    ObjCClassFromMetadata = v43;
    v200 = *(v42 + 64);
    v210 = (v200 + 32) & ~v200;
    v44 = a2 + v210;
    v233 = (v28 + 104);
    v232 = (v28 + 8);
    v198 = (v17 + 104);
    v197 = (v17 + 56);
    v214 = (v17 + 48);
    v182 = (v17 + 32);
    v185 = (v17 + 8);
    v189 = (v15 + 8);
    LODWORD(v223) = enum case for FMFLocationAlertTarget.alertFriends(_:);
    v194 = v208 + 16;
    v193 = v208 + 32;
    LODWORD(v216) = enum case for FMFLocationAlertTarget.alertMe(_:);
    v192 = v208 + 8;
    v184 = (v42 + 16);
    v45 = &_swiftEmptyDictionarySingleton;
    v196 = enum case for FMFLocationAlertAcceptanceStatus.hidden(_:);
    v188 = CNContactNicknameKey;
    v221 = (v42 - 8);
    v187 = CNContactGivenNameKey;
    v186 = CNContactFamilyNameKey;
    v199 = xmmword_100552220;
    v229 = v42;
    v46 = v227;
    v47 = v238;
    v222 = *(v42 + 56);
    v195 = v27;
    while (1)
    {
      v234 = v41;
      (ObjCClassFromMetadata)(v47, v44, v46);
      FMFLocationAlert.locationAlertTarget.getter();
      v57 = *v233;
      (*v233)(v236, v223, v27);
      sub_10000A030(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget, &protocol conformance descriptor for FMFLocationAlertTarget);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v241 == v245 && v242 == v246)
      {
        v59 = 1;
      }

      else
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v60 = *v232;
      (*v232)(v236, v27);
      v60(v235, v27);

      if (v59 & 1) != 0 && (FMFLocationAlert.setByMe.getter())
      {
        goto LABEL_28;
      }

      v47 = v238;
      FMFLocationAlert.locationAlertTarget.getter();
      v57(v231, v216, v27);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v241 == v245 && v242 == v246)
      {
        v60(v231, v27);
        v60(v230, v27);

        v61 = v219;
      }

      else
      {
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v60(v231, v27);
        v60(v230, v27);

        v61 = v219;
        if ((v62 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v63 = FMFLocationAlert.setOnMe.getter();
      v64 = v214;
      if ((v63 & 1) == 0)
      {
LABEL_23:
        v46 = v227;
LABEL_24:
        v50 = v222;
        goto LABEL_6;
      }

      v217 = v45;
      FMFLocationAlert.acceptanceStatus.getter();
      v65 = v209;
      v66 = v207;
      (*v198)(v209, v196, v207);
      (*v197)(v65, 0, 1, v66);
      v67 = *(v206 + 48);
      v68 = v205;
      sub_100007204(v61, v205, &unk_1006BC950, &unk_10055CEA0);
      sub_100007204(v65, v68 + v67, &unk_1006BC950, &unk_10055CEA0);
      v69 = *v64;
      if ((*v64)(v68, 1, v66) == 1)
      {
        break;
      }

      v70 = v190;
      sub_100007204(v68, v190, &unk_1006BC950, &unk_10055CEA0);
      if (v69(v68 + v67, 1, v66) == 1)
      {
        sub_100012DF0(v209, &unk_1006BC950, &unk_10055CEA0);
        sub_100012DF0(v219, &unk_1006BC950, &unk_10055CEA0);
        (*v185)(v70, v66);
LABEL_27:
        sub_100012DF0(v68, &unk_1006C3CA0, qword_100555B10);
        v27 = v195;
        v45 = v217;
        goto LABEL_28;
      }

      v92 = v183;
      (*v182)(v183, v68 + v67, v66);
      sub_10000A030(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus, &protocol conformance descriptor for FMFLocationAlertAcceptanceStatus);
      v93 = dispatch thunk of static Equatable.== infix(_:_:)();
      v94 = *v185;
      (*v185)(v92, v66);
      sub_100012DF0(v209, &unk_1006BC950, &unk_10055CEA0);
      sub_100012DF0(v219, &unk_1006BC950, &unk_10055CEA0);
      v94(v70, v66);
      sub_100012DF0(v68, &unk_1006BC950, &unk_10055CEA0);
      v27 = v195;
      v45 = v217;
      if (v93)
      {
        v46 = v227;
        v47 = v238;
        goto LABEL_24;
      }

LABEL_28:
      v71 = v238;
      v72 = FMFLocationAlert.emails.getter();
      *&v218 = v44;
      if (v72)
      {
        if (v72[2])
        {
          v73 = v72[4];
          v74 = v72[5];
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v73 = 0;
          v74 = 0xE000000000000000;
        }
      }

      else
      {
        v73 = 0;
        v74 = 0xE000000000000000;
      }

      v3 = dispatch thunk of FMFContactsDataController.searchInStore(handle:keysToFetch:)();

      if (!v3)
      {
        goto LABEL_51;
      }

      if (v3 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_50:

LABEL_51:
          v91 = 0;
          v217 = 0;
          v90 = 0xE000000000000000;
          goto LABEL_52;
        }
      }

      else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v76 = *(v3 + 32);
      }

      v77 = v76;

      v78 = v77;
      PersonNameComponents.init()();
      if ([v78 isKeyAvailable:v188])
      {
        v79 = [v78 nickname];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.nickname.setter();
      }

      if ([v78 isKeyAvailable:{v187, v181}])
      {
        v80 = [v78 givenName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.givenName.setter();
      }

      v81 = v73;
      if ([v78 isKeyAvailable:v186])
      {
        v82 = [v78 familyName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        PersonNameComponents.familyName.setter();
      }

      v83 = objc_opt_self();
      v84 = v215;
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v86 = [v83 localizedStringFromPersonNameComponents:isa style:1 options:0];

      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v78;
      v90 = v89;

      (*v189)(v84, v191);
      v217 = v88;

      v73 = v81;
      v91 = v87;
LABEL_52:
      v95 = HIBYTE(v90) & 0xF;
      v96 = v45;
      if ((v90 & 0x2000000000000000) == 0)
      {
        v95 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (!v95)
      {

        v91 = v73;
        v90 = v74;
      }

      __chkstk_darwin(v75);
      v257._object = v71;
      v97 = v211;

      v98 = v220;
      sub_100104904(sub_1002E66CC, (&v181 - 4), v97);
      v3 = v99;
      v220 = v98;
      v100 = *(v99 + 16);
      if (v100)
      {

        if (!*(v3 + 16))
        {
          goto LABEL_106;
        }

        v101 = v96;
        v102 = v208;
        v103 = v202;
        v104 = v203;
        (*(v208 + 16))(v202, v3 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v203);

        v105 = v201;
        (*(v102 + 32))(v201, v103, v104);
        v225 = FMFFriend.identifier.getter();
        v74 = v106;
        v91 = FMFFriend.name.getter();
        v90 = v107;
        (*(v102 + 8))(v105, v104);
        if (!v101[2])
        {
          goto LABEL_4;
        }
      }

      else
      {
        v225 = v73;

        v101 = v96;
        if (!v96[2])
        {
          goto LABEL_4;
        }
      }

      v108 = sub_10000726C(v225, v74);
      if (v109)
      {
        v110 = *(v101[7] + 48 * v108 + 40);
        (ObjCClassFromMetadata)(v204, v238, v227);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_10008BC40(0, *(v110 + 2) + 1, 1, v110);
        }

        v112 = *(v110 + 2);
        v111 = *(v110 + 3);
        if (v112 >= v111 >> 1)
        {
          v110 = sub_10008BC40((v111 > 1), v112 + 1, 1, v110);
        }

        *(v110 + 2) = v112 + 1;
        v50 = v222;
        v46 = v227;
        (*v184)(&v110[v210 + v112 * v222], v204, v227);
        v113 = v225;
        *&v252 = v225;
        *(&v252 + 1) = v74;
        v253 = v91;
        v254 = v90;
        v255 = v100 != 0;
        v256 = v110;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v241 = v101;
        sub_1001BB714(&v252, v113, v74, isUniquelyReferenced_nonNull_native);

        v45 = v241;
        v47 = v238;
        goto LABEL_5;
      }

LABEL_4:
      v48 = v100 != 0;
      sub_10007EBC0(&unk_1006AF8E0, &unk_10055CEB0);
      v49 = v210;
      v50 = v222;
      v51 = swift_allocObject();
      *(v51 + 16) = v199;
      v52 = v51 + v49;
      v47 = v238;
      v53 = v227;
      (ObjCClassFromMetadata)(v52, v238, v227);
      v54 = v91;
      v55 = v225;
      *&v247 = v225;
      *(&v247 + 1) = v74;
      v248 = v54;
      v249 = v90;
      v250 = v48;
      v46 = v53;
      v251 = v51;

      v56 = swift_isUniquelyReferenced_nonNull_native();
      v241 = v101;
      sub_1001BB714(&v247, v55, v74, v56);

      v45 = v241;
LABEL_5:
      v44 = v218;
LABEL_6:
      (*v221)(v47, v46);
      v44 += v50;
      v41 = v234 - 1;
      if (v234 == 1)
      {
        goto LABEL_69;
      }
    }

    sub_100012DF0(v65, &unk_1006BC950, &unk_10055CEA0);
    sub_100012DF0(v61, &unk_1006BC950, &unk_10055CEA0);
    if (v69(v68 + v67, 1, v66) == 1)
    {
      sub_100012DF0(v68, &unk_1006BC950, &unk_10055CEA0);
      v46 = v227;
      v47 = v238;
      v50 = v222;
      v27 = v195;
      v45 = v217;
      goto LABEL_6;
    }

    goto LABEL_27;
  }

  v45 = &_swiftEmptyDictionarySingleton;
LABEL_69:
  v115 = v45[2];
  v217 = v45;
  if (!v115)
  {
    goto LABEL_72;
  }

  v116 = sub_10008CA70(v115, 0);
  v117 = sub_1004A2A30(&v241, (v116 + 4), v115, v45);
  v118 = v241;
  swift_bridgeObjectRetain_n();
  sub_10000BEC8(v118);
  if (v117 != v115)
  {
    __break(1u);
LABEL_72:

    v116 = _swiftEmptyArrayStorage;
  }

  v241 = v116;
  v119 = v220;
  sub_1002E51EC(&v241);
  v120 = v181;
  if (v119)
  {

    __break(1u);
    return;
  }

  v216 = v241;
  v121 = v241[2];
  if (v121)
  {
    v229 = "handleFriendTapWithGestureRecognizer:";
    type metadata accessor for FMCopyableLabel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v227 = objc_opt_self();
    v225 = objc_opt_self();
    v222 = "ClearIgnoredTagsButton";
    v221 = 0x800000010058F0F0;
    v220 = (v120 + 56);
    v219 = (v120 + 48);
    v122 = (v216 + 11);
    v218 = xmmword_100552220;
    v223 = (v226 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_friendsRow);
    do
    {
      v123 = *(v122 - 4);
      v231 = *(v122 - 5);
      v124 = *(v122 - 2);
      v232 = *(v122 - 3);
      v125 = *v122;
      v234 = *(*v122 + 16);

      v233 = v125;

      v126 = objc_allocWithZone(UITapGestureRecognizer);
      v235 = [v126 initWithTarget:v226 action:v229];
      (*v220)(v239, 1, 1, v237);
      v243 = &type metadata for SolariumFeatureFlag;
      v230 = sub_10000BD04();
      v244 = v230;
      v127 = isFeatureEnabled(_:)();
      sub_100006060(&v241);
      v128 = 16.0;
      if ((v127 & 1) == 0)
      {
        if (qword_1006AEC30 != -1)
        {
          swift_once();
        }

        v128 = *&qword_1006D4798;
      }

      v236 = v122;
      v238 = v121;
      v129 = type metadata accessor for FMMultiSettingsRowView();
      v130 = objc_allocWithZone(v129);
      v131 = &v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
      *v131 = 0;
      v131[1] = 0;
      v132 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
      *&v130[v132] = [objc_allocWithZone(UIView) init];
      v133 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
      *&v130[v133] = [objc_allocWithZone(UIImageView) init];
      v134 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
      *&v130[v134] = [objc_allocWithZone(UILabel) init];
      v135 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
      *&v130[v135] = [objc_allocWithZone(ObjCClassFromMetadata) init];
      v136 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
      v137 = sub_1003DE824();
      v138 = [objc_allocWithZone(UIImageView) initWithImage:v137];

      *&v130[v136] = v138;
      v139 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
      *&v130[v139] = [objc_allocWithZone(UIView) init];
      v140 = &v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
      *v140 = 0;
      v140[1] = 0;
      v141 = &v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
      *v141 = 0;
      v141[1] = 0;
      v142 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
      *&v130[v142] = [v227 secondaryLabelColor];
      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
      *v140 = 0;
      v140[1] = 0;

      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 0;
      *&v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = v128;
      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = 0;
      v130[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
      v240.receiver = v130;
      v240.super_class = v129;
      v143 = objc_msgSendSuper2(&v240, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v144 = v224;
      sub_100007204(v239, v224, &qword_1006B3298, &unk_100558AB0);
      if ((*v219)(v144, 1, v237) == 1)
      {
        v145 = v143;
        sub_100012DF0(v144, &qword_1006B3298, &unk_100558AB0);
        v146 = v238;
        v147 = v236;
      }

      else
      {
        v148 = v144;
        v149 = v213;
        sub_10015DA28(v148, v213);
        v150 = v143;
        v151 = sub_10043BBEC(v149, 0);
        v153 = v152;
        v154 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
        [*&v150[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v151];
        [*&v150[v154] setTintAdjustmentMode:1];
        v243 = &type metadata for SolariumFeatureFlag;
        v244 = v230;
        v155 = isFeatureEnabled(_:)();
        sub_100006060(&v241);
        if (v155)
        {
          [*&v150[v154] setTintColor:v153];

          sub_1000D59F8(v149);
        }

        else
        {
          sub_1000D59F8(v149);
        }

        v146 = v238;
        v147 = v236;
      }

      [v143 setUserInteractionEnabled:{1, v181}];
      v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 1;
      sub_1004EE178();
      sub_1004EE5A4(v128);

      sub_100012DF0(v239, &qword_1006B3298, &unk_100558AB0);
      v156 = &v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
      *v156 = v231;
      *(v156 + 1) = v123;

      v157 = &v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
      *v157 = v232;
      v157[1] = v124;

      v158 = *&v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel];

      v159 = v158;
      v160 = String._bridgeToObjectiveC()();
      [v159 setText:v160];

      v161 = [v225 mainBundle];
      v257._object = v221;
      v162._object = (v222 | 0x8000000000000000);
      v257._countAndFlagsBits = 0xD000000000000034;
      v162._countAndFlagsBits = 0xD000000000000022;
      v163._countAndFlagsBits = 0;
      v163._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v162, 0, v161, v163, v257);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v164 = swift_allocObject();
      *(v164 + 16) = v218;
      *(v164 + 56) = &type metadata for Int;
      *(v164 + 64) = &protocol witness table for Int;
      *(v164 + 32) = v234;
      v165 = String.init(format:_:)();
      v167 = v166;

      v168 = &v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
      *v168 = v165;
      v168[1] = v167;

      v169 = *&v143[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel];

      v170 = v169;
      v171 = String._bridgeToObjectiveC()();

      [v170 setText:v171];

      v172 = v235;
      [v143 addGestureRecognizer:v235];
      v173 = v223;
      swift_beginAccess();
      v174 = v143;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v122 = v147 + 64;
      v121 = v146 - 1;
    }

    while (v121);
  }

  v3 = v226;
  *(v226 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_rowViewModel) = v217;

  p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
LABEL_90:
  v175 = p_cache[435];
  swift_beginAccess();
  v27 = *&v175[v3];
  if (v27 >> 62)
  {
    goto LABEL_108;
  }

  v176 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_92:
  if (v176)
  {
    v177 = *(v3 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);

    while (1)
    {
      if (__OFSUB__(v176--, 1))
      {
        __break(1u);
LABEL_102:

        break;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v178 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v176 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          v176 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_92;
        }

        if (v176 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v178 = *(v27 + 32 + 8 * v176);
      }

      v179 = v178;
      [v177 insertArrangedSubview:v178 atIndex:{1, v181}];

      if (!v176)
      {
        goto LABEL_102;
      }
    }
  }

  [*(v3 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView) layoutSubviews];
}

double sub_1002E3FA8()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_friendsRow;
  swift_beginAccess();
  v9 = v1;
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
      [*(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView) removeArrangedSubview:v6];

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

  *(v0 + v9) = _swiftEmptyArrayStorage;

  return result;
}

uint64_t sub_1002E41C0()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMMeNotificationView: clear ignored tags", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10008893C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002E4324(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v19 = v2;
    type metadata accessor for FMMultiSettingsRowView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier + 8);
      if (v4)
      {
        v5 = *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_rowViewModel);
        if (*(v5 + 16))
        {
          v6 = *(v3 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier);

          v7 = sub_10000726C(v6, v4);
          v9 = v8;

          if (v9)
          {
            v10 = (*(v5 + 56) + 48 * v7);
            v11 = v10[2];
            v22 = v10[1];
            v23 = v11;
            v21 = *v10;
            v24 = v21;
            v25 = v22;
            v26 = *(&v11 + 1);
            sub_1002E6670(&v24, v20);
            sub_1002E6670(&v25, v20);
            sub_100007204(&v26, v20, &qword_1006BADD8, &unk_10055CE90);

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v13 = Strong;
              v14 = objc_allocWithZone(type metadata accessor for FMFriendLocationAlertsViewController(0));

              v16 = sub_100158EB8(v15, &v21);
              objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
              v17 = v16;
              v18 = sub_1000CC510(v17, 2);
              [v13 presentViewController:v18 animated:1 completion:0];

              swift_unknownObjectRelease();
            }

            else
            {
              sub_100102394(&v24);
              sub_100102394(&v25);
              sub_100012DF0(&v26, &qword_1006BADD8, &unk_10055CE90);
            }

            return;
          }
        }
      }
    }
  }
}

void sub_1002E45D8(uint64_t a1, uint64_t a2)
{
  if (FMFLocationAlert.setByMe.getter())
  {
    v31[5] = a2;
    v33 = v2;
    v4 = FMFFriend.contactHandles.getter();
    v5 = v4;
    v6 = 0;
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v4 + 56;
    v10 = v8 & *(v4 + 56);
    v11 = (v7 + 63) >> 6;
    while (v10)
    {
LABEL_11:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (*(v5 + 48) + ((v6 << 10) | (16 * v13)));
      v16 = *v14;
      v15 = v14[1];

      v17 = FMFLocationAlert.emails.getter();
      if (v17)
      {
        v18 = v17;
        v32[0] = v16;
        v32[1] = v15;
        __chkstk_darwin(v17);
        v31[2] = v32;
        v19 = v33;
        v20 = sub_10008A40C(sub_10011F7D4, v31, v18);
        v33 = v19;

        if (v20)
        {
LABEL_13:

          return;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_13;
      }

      v10 = *(v9 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v21 = FMFLocationAlert.followerIds.getter();
    if (v21)
    {
      v22 = v21;
      v23 = (v21 + 40);
      v24 = -*(v21 + 16);
      v25 = -1;
      while (1)
      {
        if (v24 + v25 == -1)
        {

          return;
        }

        if (++v25 >= *(v22 + 16))
        {
          goto LABEL_30;
        }

        v27 = *(v23 - 1);
        v26 = *v23;

        if (FMFFriend.identifier.getter() == v27 && v28 == v26)
        {
          break;
        }

        v23 += 2;
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v30)
        {
          goto LABEL_27;
        }
      }

LABEL_27:
    }
  }
}

double sub_1002E4848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100012DF0(v12, &unk_1006B0120, &qword_100552B60);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = v39;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMMeNotificationView<%@>: error opening settings. Invalid URL", v24, 0xCu);
      sub_100012DF0(v25, &unk_1006AF760, &qword_100552DB0);
    }
  }

  else
  {
    v46 = v3;
    v39 = *(v14 + 32);
    v28 = v12;
    v29 = v13;
    (v39)(v19, v28);
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v45 = static OS_dispatch_queue.global(qos:)();
    (*(v7 + 8))(v9, v6);
    v30 = v19;
    (*(v14 + 16))(v16, v19, v13);
    v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v32 = swift_allocObject();
    (v39)(v32 + v31, v16, v13);
    aBlock[4] = sub_1002E6610;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100635098;
    v33 = _Block_copy(aBlock);
    v34 = v40;
    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_10000A030(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v35 = v42;
    v36 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v45;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v44 + 8))(v35, v36);
    (*(v41 + 8))(v34, v43);
    (*(v14 + 8))(v30, v29);
  }

  return result;
}

void sub_1002E4EC4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v2 openSensitiveURL:v4 withOptions:isa];
  }
}

double sub_1002E4F8C()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_delegate);

  return result;
}

id sub_1002E502C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMMeNotificationView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002E5140(uint64_t a1, char a2)
{
  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10008F0AC(a2 & 1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1002E51EC(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10025F390(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1002E5258(v4);
  *a1 = v2;
}

void sub_1002E5258(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&qword_1006B4168, &qword_100555E10);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1002E543C(v7, v8, a1, v4);
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
    sub_1002E5360(0, v2, 1, a1);
  }
}

uint64_t sub_1002E5360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 32);
      v11 = result == *(v10 - 32) && *(v10 + 40) == *(v10 - 24);
      if (v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 64;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = (v10 - 64);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v16 = *v10;
      v15 = *(v10 + 16);
      v17 = *(v10 - 48);
      *v10 = *(v10 - 64);
      *(v10 + 16) = v17;
      v18 = *(v10 - 16);
      *(v10 + 32) = *(v10 - 32);
      *(v10 + 48) = v18;
      *v12 = v16;
      v12[1] = v15;
      v10 -= 64;
      v12[2] = v14;
      v12[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002E543C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = sub_10025EFD4(v7);
    }

    v91 = v7 + 16;
    v92 = *(v7 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v7[16 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_1002E5A1C((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v8);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v96 < v94)
        {
          goto LABEL_129;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_130;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_131;
        }

        v92 = *v91 - 1;
        memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_141;
    }

LABEL_114:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + (v6 << 6);
      v10 = *a3 + (v8 << 6);
      if (*(v9 + 32) == *(v10 + 32) && *(v9 + 40) == *(v10 + 40))
      {
        v12 = 0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 168);
        do
        {
          if (*(v13 - 1) == *(v13 - 9) && *v13 == *(v13 - 8))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          v13 += 8;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = (v6 << 6) - 64;
          v16 = v8 << 6;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v28 + v16);
              v20 = (v28 + v15);
              v22 = v19[2];
              v21 = v19[3];
              v24 = *v19;
              v23 = v19[1];
              v25 = v20[3];
              v27 = *v20;
              v26 = v20[1];
              v19[2] = v20[2];
              v19[3] = v25;
              *v19 = v27;
              v19[1] = v26;
              *v20 = v24;
              v20[1] = v23;
              v20[2] = v22;
              v20[3] = v21;
            }

            ++v18;
            v15 -= 64;
            v16 += 64;
          }

          while (v18 < v17);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
    }

    v46 = *(v7 + 2);
    v45 = *(v7 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v7 = sub_10008B8B8((v45 > 1), v46 + 1, 1, v7);
    }

    *(v7 + 2) = v47;
    v48 = &v7[16 * v46];
    *(v48 + 4) = v8;
    *(v48 + 5) = v6;
    v49 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v7[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v7[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v88 = *&v7[16 * v8 + 32];
        v89 = *&v7[16 * v50 + 40];
        sub_1002E5A1C((*a3 + (v88 << 6)), (*a3 + (*&v7[16 * v50 + 32] << 6)), (*a3 + (v89 << 6)), v49);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v89 < v88)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v90 = &v7[16 * v8];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_10025EF48(v50);
        v47 = *(v7 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v7[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + (v6 << 6);
  v98 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 32) == *(v35 - 32) && *(v35 + 40) == *(v35 - 24);
    if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v32 += 64;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v98;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v37 = (v35 - 64);
    v39 = *(v35 + 32);
    v38 = *(v35 + 48);
    v41 = *v35;
    v40 = *(v35 + 16);
    v42 = *(v35 - 48);
    *v35 = *(v35 - 64);
    *(v35 + 16) = v42;
    v43 = *(v35 - 16);
    *(v35 + 32) = *(v35 - 32);
    *(v35 + 48) = v43;
    *v37 = v41;
    v37[1] = v40;
    v35 -= 64;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_1002E5A1C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *(v6 + 4) == *(v4 + 4) && *(v6 + 5) == *(v4 + 5);
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v5 -= 64;
    do
    {
      v20 = *(v14 - 4) == *(v6 - 4) && *(v14 - 3) == *(v6 - 3);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = v6 - 64;
        if (v5 + 64 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 64, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v21 = v14 - 64;
      if (v5 + 64 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 64;
      v14 -= 64;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

char *sub_1002E5C5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMPlatterIcon(0);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v7 - 8);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = v68 - v11;
  *&v1[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v76 = &type metadata for SolariumFeatureFlag;
  v72 = sub_10000BD04();
  v77 = v72;
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100006060(v75);
  v13 = 16.0;
  v14 = 16.0;
  if ((v12 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v14 = *&qword_1006D4798;
  }

  v69 = v9;
  v15 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editFindMyNotificationSettingsButton;
  v16 = type metadata accessor for FMSettingRowView();
  v17 = objc_allocWithZone(v16);
  *&v2[v15] = sub_100502750(0, v14);
  v76 = &type metadata for SolariumFeatureFlag;
  v77 = v72;
  v18 = isFeatureEnabled(_:)();
  sub_100006060(v75);
  if ((v18 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v13 = *&qword_1006D4798;
  }

  v68[0] = v6;
  v19 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editSafetyAlertsNotificationSettingsButton;
  v20 = objc_allocWithZone(v16);
  *&v2[v19] = sub_100502750(0, v13);
  v76 = &type metadata for SolariumFeatureFlag;
  v77 = v72;
  v21 = isFeatureEnabled(_:)();
  sub_100006060(v75);
  v22 = 16.0;
  if ((v21 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v22 = *&qword_1006D4798;
  }

  v23 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton;
  v24 = objc_allocWithZone(v16);
  *&v2[v23] = sub_100502750(0, v22);
  *&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_friendsRow] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_rowViewModel] = &_swiftEmptyDictionarySingleton;
  v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_showClearButton] = 0;
  v25 = [objc_opt_self() mainBundle];
  v78._object = 0x80000001005819F0;
  v26._object = 0x80000001005819D0;
  v78._countAndFlagsBits = 0xD00000000000002ALL;
  v26._countAndFlagsBits = 0xD000000000000018;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v78);
  v68[1] = v28._object;
  v68[2] = v28._countAndFlagsBits;

  *&v2[OBJC_IVAR____TtC6FindMy20FMMeNotificationView_mediator] = a1;
  v29 = v71;
  swift_storeEnumTagMultiPayload();
  v30 = v70;
  (*(v70 + 56))(v29, 0, 1, v4);
  v31 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v32 = objc_allocWithZone(UILabel);

  *&v2[v31] = [v32 init];
  v33 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v2[v33] = [objc_allocWithZone(UILabel) init];
  v34 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v2[v34] = [objc_allocWithZone(UIStackView) init];
  v35 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v2[v35] = [objc_allocWithZone(UIStackView) init];
  v36 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v37 = objc_opt_self();
  *&v2[v36] = [v37 buttonWithType:1];
  v38 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v2[v38] = [v37 buttonWithType:1];
  v39 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v2[v39] = [objc_allocWithZone(UIView) init];
  v40 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v2[v40] = [objc_allocWithZone(UIView) init];
  v41 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v2[v41] = [objc_allocWithZone(UIView) init];
  v42 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v43 = type metadata accessor for FMPlatterBackgroundView();
  v44 = objc_allocWithZone(v43);
  v44[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v74.receiver = v44;
  v74.super_class = v43;
  v45 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v2[v42] = v45;
  v46 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v2[v46] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v47 = &v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v2[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 1;
  v48 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v73.receiver = v2;
  v73.super_class = v48;
  v49 = objc_msgSendSuper2(&v73, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v50 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v51 = *&v49[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v52 = v49;
  v53 = v51;
  v54 = String._bridgeToObjectiveC()();

  [v53 setText:v54];

  [*&v49[v50] setAdjustsFontForContentSizeCategory:1];
  v55 = *&v49[v50];
  v56 = String._bridgeToObjectiveC()();
  [v55 setAccessibilityIdentifier:v56];

  v57 = v69;
  sub_100007204(v29, v69, &qword_1006B3298, &unk_100558AB0);
  if ((*(v30 + 48))(v57, 1, v4) == 1)
  {
    v58 = sub_100012DF0(v57, &qword_1006B3298, &unk_100558AB0);
  }

  else
  {
    v59 = v68[0];
    sub_10015DA28(v57, v68[0]);
    v76 = &type metadata for SolariumFeatureFlag;
    v77 = v72;
    v60 = isFeatureEnabled(_:)();
    sub_100006060(v75);
    if (v60)
    {
      v61 = sub_100438138(0);
      v63 = v62;
      v64 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v52[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v61];
      [*&v52[v64] setTintColor:v63];
      [*&v52[v64] setTintAdjustmentMode:1];
    }

    else
    {
      v61 = *&v52[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v63 = sub_10043B9F4(v59, 0);
      [v61 setImage:v63];
    }

    v58 = sub_1000D59F8(v59);
  }

  (*((swift_isaMask & *v52) + 0x1E0))(v58);
  sub_100455CF8();
  (*((swift_isaMask & *v52) + 0x1F8))();
  v65 = v52;
  v66 = String._bridgeToObjectiveC()();
  [v65 setAccessibilityIdentifier:v66];

  sub_100012DF0(v71, &qword_1006B3298, &unk_100558AB0);
  return v65;
}

void sub_1002E6610()
{
  type metadata accessor for URL();

  sub_1002E4EC4();
}

uint64_t sub_1002E66EC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_allowFriendRequestSwitch;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v18 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v19 = v3;
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  v4 = 16.0;
  v5 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1006D4798;
  }

  v6 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editFindMyNotificationSettingsButton;
  v7 = type metadata accessor for FMSettingRowView();
  v8 = objc_allocWithZone(v7);
  *(v1 + v6) = sub_100502750(0, v5);
  v18 = &type metadata for SolariumFeatureFlag;
  v19 = v3;
  v9 = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if ((v9 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1006D4798;
  }

  v10 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_editSafetyAlertsNotificationSettingsButton;
  v11 = objc_allocWithZone(v7);
  *(v1 + v10) = sub_100502750(0, v4);
  v18 = &type metadata for SolariumFeatureFlag;
  v19 = v3;
  v12 = isFeatureEnabled(_:)();
  sub_100006060(v17);
  v13 = 16.0;
  if ((v12 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v13 = *&qword_1006D4798;
  }

  v14 = OBJC_IVAR____TtC6FindMy20FMMeNotificationView_clearIgnoredTagsButton;
  v15 = objc_allocWithZone(v7);
  *(v1 + v14) = sub_100502750(0, v13);
  *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_friendsRow) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_rowViewModel) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC6FindMy20FMMeNotificationView_showClearButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E6944()
{
  v1[3] = &type metadata for SolariumFeatureFlag;
  v1[4] = sub_10000BD04();
  isFeatureEnabled(_:)();
  return sub_100006060(v1);
}

BOOL sub_1002E69F8(uint64_t a1)
{
  swift_getObjectType();
  sub_10017EE08(a1, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      if (CGRectEqualToRect(*(v1 + OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame), *&v5[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_badgeViewFrame]))
      {
        v3 = CGRectEqualToRect(*(v1 + OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame), *&v5[OBJC_IVAR____TtCC6FindMy29FMTableViewCellImageContainerP33_39D425E43D70273F0BCEA8DCE959394914MaskingContext_maskViewFrame]);

        return v3;
      }
    }
  }

  else
  {
    sub_10000D2C0(v6);
  }

  return 0;
}

void sub_1002E6C08(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  Hasher._combine(_:)(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  Hasher._combine(_:)(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  Hasher._combine(_:)(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  Hasher._combine(_:)(*&v9);
}

id sub_1002E6CD8()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1006BADE0 = result;
  return result;
}

id sub_1002E6DAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002E6E18()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_style;
  *v1 = xmmword_10055CEC0;
  *(v1 + 16) = xmmword_10055CED0;
  *(v1 + 32) = 0x4047000000000000;
  v2 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_maskableContainer;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateLayer;
  *(v0 + v3) = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_imageView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_badgeView;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_hasBackplate) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_backplateStrokeColor) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMTableViewCellImageContainer_currentMaskingContext) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_1002E6F48(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1002E6F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002E6FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1002E7064(void *a1, double a2)
{
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle] = 0;
  v5 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 14) = 0;
  v6 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager;
  *&v2[v6] = [objc_allocWithZone(SFDeviceAssetManager) init];
  v7 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_time];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v7[24] = 1;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerStartedObservation] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerEndedObserver] = 0;
  v8 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerTimeObserver];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem] = 0;
  v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying] = 0;
  v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isShown] = 0;
  v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_disableAutoLoop] = 0;
  v10 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_showHideHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_placeholderView] = a1;
  *&v2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_crossDissolveDuration] = a2;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for FMAVPlayerView();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = qword_1006AEBE0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "🧭 FMAVPlayerView: init", v20, 2u);
  }

  v21 = objc_opt_self();
  v22 = [v21 sharedInstance];
  v35 = 0;
  v23 = [v22 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v35];

  v24 = v35;
  if (v23 && (v25 = v35, v26 = [v21 sharedInstance], v35 = 0, v27 = objc_msgSend(v26, "setActive:error:", 1, &v35), v26, v24 = v35, v27))
  {
    v28 = v35;
  }

  else
  {
    v29 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "🧭 FMAVPlayerView: failed to set the audio session", v32, 2u);
    }
  }

  v33 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager;
  [*&v16[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager] setUseProcessLocalCache:1];
  [*&v16[v33] activate];

  return v16;
}

id sub_1002E74A0()
{
  [*&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAVPlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002E76F0()
{
  v1 = type metadata accessor for DispatchWallTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
  if (v9)
  {
    if (*&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8])
    {
      v29 = v9;
      sub_1002EA324();
      v10 = v29;
    }
  }

  else
  {
    v27 = v7;
    v28 = v2;
    v29 = v1;
    v11 = [objc_allocWithZone(SFDeviceAssetQuery) initWithTagColor:0];
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v13 = objc_allocWithZone(SFDeviceAssetRequestConfiguration);
    v35 = sub_1002EAB1C;
    v36 = v12;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1002EA928;
    v34 = &unk_1006354D0;
    v14 = _Block_copy(&aBlock);
    v15 = v0;
    v16 = [v13 initWithQueryResultHandler:v14];
    _Block_release(v14);

    v17 = *&v15[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager];
    v25 = v16;
    v26 = v11;
    [v17 getAssetBundleForDeviceQuery:v11 withRequestConfiguration:v16];
    v18 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem;
    if (*&v15[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem])
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_1002EAB24;
    v36 = v19;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100004AE4;
    v34 = &unk_1006354F8;
    _Block_copy(&aBlock);
    v30 = _swiftEmptyArrayStorage;
    sub_10000A2B8(&qword_1006AEDE0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v20 = DispatchWorkItem.init(flags:block:)();

    *&v15[v18] = v20;

    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    static DispatchWallTime.now()();
    v22 = v27;
    + infix(_:_:)();
    v23 = v29;
    v24 = *(v28 + 8);
    v24(v4, v29);
    OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

    v24(v22, v23);
  }
}

uint64_t sub_1002E7BAC(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v24 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for DispatchQoS();
  v14 = *(v26 - 8);
  __chkstk_darwin(v26);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v24;
  *(v17 + 56) = a5;
  aBlock[4] = sub_1002EAB2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100635548;
  v18 = _Block_copy(aBlock);
  v19 = a6;
  v20 = a1;

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A2B8(&qword_1006AEDE0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

void sub_1002E7EB0(char *a1, void *a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  if (*&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10055CF70;
    *(v11 + 56) = type metadata accessor for FMAVPlayerView();
    *(v11 + 64) = sub_10000A2B8(&qword_1006BAF58, v12, type metadata accessor for FMAVPlayerView, &protocol conformance descriptor for NSObject);
    *(v11 + 32) = a1;
    v13 = *&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
    v14 = *&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8];
    v61 = &a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
    *(v11 + 96) = &type metadata for String;
    v15 = sub_10008EE84();
    v16 = a2;
    v17 = v15;
    *(v11 + 104) = v15;
    if (v14)
    {
      v18 = v13;
    }

    else
    {
      v18 = 7104878;
    }

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    *(v11 + 72) = v18;
    *(v11 + 80) = v19;
    v62 = v16;
    v63 = v16;
    v60 = v16;
    v20 = a1;

    sub_10007EBC0(&qword_1006BAF60, qword_10055D018);
    v21 = String.init<A>(describing:)();
    *(v11 + 136) = &type metadata for String;
    *(v11 + 144) = v17;
    *(v11 + 112) = v21;
    *(v11 + 120) = v22;
    *(v11 + 176) = &type metadata for String;
    *(v11 + 184) = v17;
    *(v11 + 152) = a3;
    *(v11 + 160) = a4;
    v23 = 20302;
    if (a5)
    {
      v23 = 5457241;
    }

    v24 = 0xE200000000000000;
    if (a5)
    {
      v24 = 0xE300000000000000;
    }

    *(v11 + 216) = &type metadata for String;
    *(v11 + 224) = v17;
    *(v11 + 192) = v23;
    *(v11 + 200) = v24;
    v63 = a6;

    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v25 = String.init<A>(describing:)();
    *(v11 + 256) = &type metadata for String;
    *(v11 + 264) = v17;
    *(v11 + 232) = v25;
    *(v11 + 240) = v26;
    v27 = String.init(format:_:)();
    v29 = v28;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100005B14(v30, qword_1006D4630);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63 = v34;
      *v33 = 136315138;
      v35 = sub_100005B4C(v27, v29, &v63);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s", v33, 0xCu);
      sub_100006060(v34);
    }

    else
    {
    }

    v56 = *&v20[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
    *&v20[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle] = v62;

    v57 = *(v61 + 1);
    v58 = v60;
    if (v57)
    {
      sub_1002EA324();
    }
  }

  else
  {
    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1005528D0;
    *(v36 + 56) = type metadata accessor for FMAVPlayerView();
    *(v36 + 64) = sub_10000A2B8(&qword_1006BAF58, v37, type metadata accessor for FMAVPlayerView, &protocol conformance descriptor for NSObject);
    *(v36 + 32) = a1;
    v38 = *&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
    v39 = *&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8];
    *(v36 + 96) = &type metadata for String;
    v40 = sub_10008EE84();
    *(v36 + 104) = v40;
    if (v39)
    {
      v41 = v38;
    }

    else
    {
      v41 = 7104878;
    }

    v42 = 0xE300000000000000;
    if (v39)
    {
      v42 = v39;
    }

    *(v36 + 72) = v41;
    *(v36 + 80) = v42;
    v63 = a2;
    v43 = a2;

    v44 = a1;
    sub_10007EBC0(&qword_1006BAF60, qword_10055D018);
    v45 = String.init<A>(describing:)();
    *(v36 + 136) = &type metadata for String;
    *(v36 + 144) = v40;
    *(v36 + 112) = v45;
    *(v36 + 120) = v46;
    v47 = String.init(format:_:)();
    v49 = v48;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100005B14(v50, qword_1006D4630);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v53 = 136315138;
      v55 = sub_100005B4C(v47, v49, &v63);

      *(v53 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s", v53, 0xCu);
      sub_100006060(v54);
    }

    else
    {
    }
  }
}

void sub_1002E8464(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v2;
      *(v7 + 12) = 2080;
      v10 = &v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
      if (*&v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8])
      {
        v11 = *v10;
        v12 = v10[1];
      }

      else
      {
        v12 = 0xE300000000000000;
        v11 = 7104878;
      }

      v13 = v4;

      v14 = sub_100005B4C(v11, v12, &v18);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "🧭 FMAVPlayerView%@: SFDeviceAssetManager.request('%s') never returned (59783662), using local asset", v7, 0x16u);
      sub_100012DF0(v8, &unk_1006AF760, &qword_100552DB0);

      sub_100006060(v9);
    }

    *&v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem] = 0;

    v15 = [objc_opt_self() mainBundle];
    v16 = *&v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
    *&v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle] = v15;

    if (*&v4[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8])
    {
      v17 = v15;
      sub_1002EA324();
    }
  }
}

void sub_1002E86D8(uint64_t a1, uint64_t a2, void *a3)
{
  v86 = a1;
  v87 = a2;
  v84 = type metadata accessor for URL();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String._bridgeToObjectiveC()();
  v85 = a3;
  v6 = [a3 pathsForResourcesOfType:v5 inDirectory:0];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = (v89 + 40);
    *&v8 = 136315138;
    v91 = v8;
    do
    {
      v15 = *(v10 - 1);
      v14 = *v10;
      v16 = qword_1006AEBE0;

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100005B14(v17, qword_1006D4630);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&aBlock = v12;
        *v11 = v91;
        v13 = sub_100005B4C(v15, v14, &aBlock);

        *(v11 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v18, v19, "🧭 FMAVPlayerView: asset available %s", v11, 0xCu);
        sub_100006060(v12);
      }

      else
      {
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v21 = v86;
  v20 = v87;
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v85 pathForResource:v22 ofType:v23];

  if (v24)
  {
    v25 = v90;
  }

  else
  {
    v26 = [objc_opt_self() mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v24 = [v26 pathForResource:v27 ofType:v28];

    v25 = v90;
    if (!v24)
    {
      goto LABEL_18;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying;
  if (v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying] == 1)
  {
    v30 = *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName + 8];
    if (v30)
    {
      if (*&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName] == v21 && v30 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_18:
        if (qword_1006AEBE0 == -1)
        {
LABEL_19:
          v31 = type metadata accessor for Logger();
          sub_100005B14(v31, qword_1006D4630);
          v32 = v25;
          *&v91 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v91, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v34 = 138412290;
            *(v34 + 4) = v32;
            *v35 = v32;
            v36 = v32;
            _os_log_impl(&_mh_execute_header, v91, v33, "🧭 FMAVPlayerView%@: can't play video", v34, 0xCu);
            sub_100012DF0(v35, &unk_1006AF760, &qword_100552DB0);
          }

          v37 = v91;

          return;
        }

LABEL_44:
        swift_once();
        goto LABEL_19;
      }
    }
  }

  URL.init(fileURLWithPath:)();

  v38 = objc_allocWithZone(AVPlayerItem);
  URL._bridgeToObjectiveC()(v39);
  v41 = v40;
  v42 = [v38 initWithURL:v40];

  v43 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v42];
  v44 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player;
  v45 = *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player];
  *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player] = v43;

  v46 = type metadata accessor for FMAVPlayerView();
  v96.receiver = v25;
  v96.super_class = v46;
  v47 = objc_msgSendSuper2(&v96, "layer");
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    v49 = v48;
    v50 = *&v25[v44];
    [v49 setPlayer:v50];
  }

  v25[v29] = 1;
  v51 = [v42 tracks];
  sub_10000905C(0, &qword_1006BAF48, AVPlayerItemTrack_ptr);
  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_34:

LABEL_35:
    v56 = 600;
    goto LABEL_36;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_34;
  }

LABEL_28:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v53 = *(v52 + 32);
  }

  v54 = v53;

  v55 = [v54 assetTrack];

  if (!v55)
  {
    goto LABEL_35;
  }

  [v55 timeRange];
  v56 = DWORD2(aBlock);

LABEL_36:
  v57 = *&v25[v44];
  if (v57)
  {
    v58 = v57;
    v98 = CMTime.init(seconds:preferredTimescale:)(0.0166666667, v56);
    value = v98.value;
    timescale = v98.timescale;
    epoch = v98.epoch;
    v62 = HIDWORD(*&v98.timescale);
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v63 = static OS_dispatch_queue.main.getter();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = sub_1002EA9E4;
    v95 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v93 = sub_1002E9598;
    *(&v93 + 1) = &unk_100635278;
    v65 = _Block_copy(&aBlock);

    *&aBlock = value;
    *(&aBlock + 1) = __PAIR64__(v62, timescale);
    v25 = v90;
    *&v93 = epoch;
    v66 = [v58 addPeriodicTimeObserverForInterval:&aBlock queue:v63 usingBlock:v65];
    _Block_release(v65);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v93 = 0u;
  }

  v67 = v83;
  v68 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerTimeObserver;
  swift_beginAccess();
  sub_1002EA9EC(&aBlock, &v25[v68]);
  swift_endAccess();
  v69 = *&v25[v44];
  if (v69)
  {
    *&aBlock = *&v25[v44];
    swift_getKeyPath();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1002EAA68;
    *(v71 + 24) = v70;
    v72 = v69;
    v69 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  v73 = v84;
  v74 = *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerStartedObservation];
  *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerStartedObservation] = v69;

  v75 = [objc_opt_self() defaultCenter];
  v76 = String._bridgeToObjectiveC()();
  v77 = objc_opt_self();
  v78 = v42;
  v79 = [v77 mainQueue];
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = sub_1002EAA9C;
  v95 = v80;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v93 = sub_10046DEDC;
  *(&v93 + 1) = &unk_1006352C8;
  v81 = _Block_copy(&aBlock);

  v82 = [v75 addObserverForName:v76 object:v78 queue:v79 usingBlock:v81];
  _Block_release(v81);

  (*(v67 + 8))(v88, v73);
  *&v25[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerEndedObserver] = v82;
  swift_unknownObjectRelease();
}

void sub_1002E91B8(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler);
    if (v9)
    {
      v10 = *(Strong + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler + 8);

      v9(a1, a2, a3);
      sub_10001835C(v9, v10);
    }

    v12 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info];
    v11 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 16];
    v13 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 48];
    v45 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 32];
    v46 = v13;
    v43 = v12;
    v44 = v11;
    v15 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 80];
    v14 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 96];
    v16 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 64];
    v50 = *&v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 112];
    v48 = v15;
    v49 = v14;
    v47 = v16;
    if (v50 && (v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_disableAutoLoop] & 1) == 0)
    {
      v18 = *(&v45 + 1);
      v17 = v45;
      v19 = v46;
      v20 = v47;
      v41[4] = v47;
      v41[5] = v48;
      v41[6] = v49;
      v42 = v50;
      v41[0] = v43;
      v41[1] = v44;
      v41[2] = v45;
      v41[3] = v46;
      sub_1002EAAC0(v41, &time1);
      time1.value = a1;
      *&time1.timescale = a2;
      time1.epoch = a3;
      time2.value = *(&v19 + 1);
      *&time2.timescale = v20;
      if (CMTimeCompare(&time1, &time2) == -1)
      {

        sub_100012DF0(&v43, &qword_1006BAF50, &qword_10055D010);
      }

      else
      {
        sub_100012DF0(&v43, &qword_1006BAF50, &qword_10055D010);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100005B14(v21, qword_1006D4630);
        v22 = v8;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v35 = v17;
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412546;
          *(v25 + 4) = v22;
          *v26 = v8;
          *(v25 + 12) = 2048;
          v27 = v22;
          CMTime.seconds.getter();
          *(v25 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v23, v24, "🧭 FMAVPlayerView%@: restarting playing video (inner loop at %f)", v25, 0x16u);
          sub_100012DF0(v26, &unk_1006AF760, &qword_100552DB0);

          v17 = v35;
        }

        v29 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player;
        [*&v22[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player] pause];
        v30 = *&v22[v29];
        if (v30)
        {
          v31 = swift_allocObject();
          *(v31 + 16) = *(&v19 + 1);
          v39 = sub_1002EACDC;
          v40 = v31;
          time1.value = _NSConcreteStackBlock;
          *&time1.timescale = 1107296256;
          time1.epoch = sub_10037A044;
          v38 = &unk_100635480;
          v32 = _Block_copy(&time1);
          v33 = *(&v19 + 1);
          v34 = v30;

          time1.value = v17;
          *&time1.timescale = v18;
          time1.epoch = v19;
          [v34 seekToTime:&time1 completionHandler:v32];

          _Block_release(v32);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

double sub_1002E9598(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

void sub_1002E9604(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (!a1)
    {
LABEL_11:

      return;
    }

    v6 = a1;
    if ([v6 status] != 1)
    {

      goto LABEL_11;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v5;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "🧭 FMAVPlayerView%@: ready to play video", v11, 0xCu);
      sub_100012DF0(v12, &unk_1006AF760, &qword_100552DB0);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v6;
    v15 = &v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_time];
    if (v8[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_time + 24])
    {
      v5 = v6;
      v16 = v8;
      sub_1002E9A1C(v16, v5);

      goto LABEL_11;
    }

    v18 = v15[1];
    v17 = v15[2];
    v34 = *v15;
    v19 = v8;
    v33 = v6;
    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v5;
      *(v23 + 12) = 2048;
      v25 = v20;
      CMTime.seconds.getter();
      *(v23 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "🧭 FMAVPlayerView%@: seek to %f sec before playing video", v23, 0x16u);
      sub_100012DF0(v24, &unk_1006AF760, &qword_100552DB0);
    }

    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    v29 = v17;
    epoch = kCMTimeZero.epoch;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1002EAAF8;
    *(v31 + 24) = v14;
    v47 = sub_100009624;
    v48 = v31;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_10037A044;
    v46 = &unk_100635390;
    v32 = _Block_copy(&aBlock);

    v42 = epoch;
    aBlock = v34;
    v44 = v18;
    v45 = v29;
    v38 = epoch;
    value = kCMTimeZero.value;
    v40 = timescale;
    v41 = flags;
    v35 = kCMTimeZero.value;
    v36 = timescale;
    v37 = flags;
    [v33 seekToTime:&aBlock toleranceBefore:&value toleranceAfter:&v35 completionHandler:v32];

    _Block_release(v32);
  }
}

void sub_1002E9A1C(_BYTE *a1, void *a2)
{
  a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isShown] = 1;
  v4 = objc_opt_self();
  v5 = *&a1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_crossDissolveDuration];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v17 = sub_1002EAB00;
  v18 = v6;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100004AE4;
  v16 = &unk_1006353E0;
  v7 = _Block_copy(&v13);
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v17 = sub_1002EAB14;
  v18 = v9;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10037A044;
  v16 = &unk_100635430;
  v10 = _Block_copy(&v13);
  v11 = v8;
  v12 = a2;

  [v4 animateWithDuration:v7 animations:v10 completion:v5];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_1002E9BD0(int a1, char *a2, id a3)
{
  if (a2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying] == 1)
  {
    v5 = *&a2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_placeholderView];
    if (v5)
    {
      [v5 setAlpha:0.0];
    }

    v6 = *&a2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_showHideHandler];
    if (v6)
    {
      v7 = *&a2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_showHideHandler + 8];
      v8 = *&a2[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_crossDissolveDuration];

      v6(1, v8);
      sub_10001835C(v6, v7);
    }

    [a3 play];
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v10 = a2;
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      v15 = "🧭 FMAVPlayerView%@: started playing video";
LABEL_14:
      _os_log_impl(&_mh_execute_header, oslog, v11, v15, v12, 0xCu);
      sub_100012DF0(v13, &unk_1006AF760, &qword_100552DB0);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = a2;
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v17;
      *v13 = v17;
      v18 = v17;
      v15 = "🧭 FMAVPlayerView%@: did not start playing video (aborted)";
      goto LABEL_14;
    }
  }
}

void sub_1002E9E74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player;
    [*(Strong + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player) pause];
    if (v3[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_disableAutoLoop] == 1)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100005B14(v5, qword_1006D4630);
      v6 = v3;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v6;
        *v10 = v3;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, v8, "🧭 FMAVPlayerView%@: will not restart playing video", v9, 0xCu);
        sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);
      }

      v12 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler];
      if (v12)
      {
        v13 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler + 8];
        v14 = *&kCMTimeZero.timescale;
        epoch = kCMTimeZero.epoch;

        v12(kCMTimeZero.value, v14, epoch);
        sub_10001835C(v12, v13);
      }

      goto LABEL_17;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v6 = v3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v6;
      *v20 = v3;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v17, v18, "🧭 FMAVPlayerView%@: restarting playing video", v19, 0xCu);
      sub_100012DF0(v20, &unk_1006AF760, &qword_100552DB0);
    }

    v23 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 80];
    v22 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 96];
    v24 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 64];
    v54 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 112];
    v25 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 48];
    v27 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info];
    v26 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 16];
    v49 = *&v6[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info + 32];
    v50 = v25;
    v47 = v27;
    v48 = v26;
    v52 = v23;
    v53 = v22;
    v51 = v24;
    if (v54)
    {
      v44 = v52;
      v45 = v53;
      aBlock = v47;
      v40 = v48;
      v41 = v49;
      v46 = v54;
      v42 = v50;
      v43 = v51;
      sub_1002EAAC0(&aBlock, v38);
      CMTime.seconds.getter();
      v55 = CMTime.init(seconds:preferredTimescale:)(v28, 600);
      value = v55.value;
      timescale = v55.timescale;
      v31 = v55.epoch;
      v32 = HIDWORD(*&v55.timescale);
      sub_100012DF0(&v47, &qword_1006BAF50, &qword_10055D010);
      v33 = *&v3[v4];
      if (v33)
      {
LABEL_15:
        v34 = swift_allocObject();
        *(v34 + 16) = v6;
        *&v41 = sub_1002EAAA4;
        *(&v41 + 1) = v34;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_10037A044;
        *(&v40 + 1) = &unk_100635318;
        v35 = _Block_copy(&aBlock);
        v36 = v6;
        v37 = v33;

        *&aBlock = value;
        *(&aBlock + 1) = __PAIR64__(v32, timescale);
        *&v40 = v31;
        [v37 seekToTime:&aBlock completionHandler:v35];

        _Block_release(v35);
        return;
      }
    }

    else
    {
      value = kCMTimeZero.value;
      timescale = kCMTimeZero.timescale;
      LODWORD(v32) = kCMTimeZero.flags;
      v31 = kCMTimeZero.epoch;
      v33 = *&v3[v4];
      if (v33)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
  }
}

void sub_1002EA324()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
  if (!v1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = v0;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, oslog, v19, "🧭 FMAVPlayerView%@: cannot load assets for nil bundle", v20, 0xCu);
      sub_100012DF0(v21, &unk_1006AF760, &qword_100552DB0);
    }

    goto LABEL_31;
  }

  v2 = *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName + 8];
  if (!v2)
  {
    v33 = qword_1006AEBE0;
    v9 = v1;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4630);
    v35 = v0;
    oslog = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v36))
    {
      goto LABEL_30;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v35;
    *v12 = v35;
    v37 = v35;
    v14 = "🧭 FMAVPlayerView%@: cannot load video for nil asset name";
    v15 = v36;
    v16 = oslog;
    goto LABEL_29;
  }

  v3 = *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
  if (v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying] == 1)
  {
    v4 = *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName + 8];
    if (v4)
    {
      v5 = v3 == *&v0[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName] && v2 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = qword_1006AEBE0;
        oslog = v1;
        if (v6 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_100005B14(v7, qword_1006D4630);
        v8 = v0;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_30;
        }

        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        v14 = "🧭 FMAVPlayerView%@: did not start playing playing since it's already playing";
        v15 = v10;
        v16 = v9;
LABEL_29:
        _os_log_impl(&_mh_execute_header, v16, v15, v14, v11, 0xCu);
        sub_100012DF0(v12, &unk_1006AF760, &qword_100552DB0);

LABEL_30:

LABEL_31:

        return;
      }
    }
  }

  v23 = qword_1006AEBE0;
  v24 = v1;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005B14(v25, qword_1006D4630);
  v26 = v0;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "🧭 FMAVPlayerView%@: will start playing video", v29, 0xCu);
    sub_100012DF0(v30, &unk_1006AF760, &qword_100552DB0);
  }

  sub_1002E86D8(v3, v2, v24);
  v32 = &v26[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName];
  *v32 = v3;
  v32[1] = v2;
}

void sub_1002EA928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = a2;
  v12 = a5;
  v8(a2, v9, v11, a4, a5);
}

uint64_t sub_1002EA9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B8740, &unk_100552DA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002EAB40()
{
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle) = 0;
  v1 = v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_info;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  v2 = OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetManager;
  *(v0 + v2) = [objc_allocWithZone(SFDeviceAssetManager) init];
  v3 = v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_time;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_player) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerStartedObservation) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerEndedObserver) = 0;
  v4 = (v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playerTimeObserver);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingAssetName);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_deviceAssetRequestWatchDogWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_isShown) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_disableAutoLoop) = 0;
  v6 = (v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_playingHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_showHideHandler);
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002EAD00()
{
  sub_100038EE8();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v4 = UIFontWeightTrait;
  v5 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v6 = sub_10002ACDC(v5);

  [v1 setFont:v6];

  v7 = [objc_opt_self() whiteColor];
  [v1 setTextColor:v7];

  [v1 setNumberOfLines:0];
  LODWORD(v8) = 1148846080;
  return [v1 setContentCompressionResistancePriority:1 forAxis:v8];
}

void sub_1002EAE84()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor:v3];
  v4 = [v0 layer];
  [v4 setCornerRadius:10.0];
}

id sub_1002EAFE4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMOnboardingButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1002EB03C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView);
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = v3[1];
  v7 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  [*(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel) setHidden:v7 != 0];
  v8 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton);
  v9 = v3[1];
  v10 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  return [v8 setHidden:v10 == 0];
}

id sub_1002EB140(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji);
  *v5 = a1;
  v5[1] = a2;

  v6 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  v8 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPlaceholder);

  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return [v8 setHidden:v9 != 0];
}

char *sub_1002EB214()
{
  *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_contentView;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView;
  type metadata accessor for CustomTextView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v2] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPlaceholder;
  *&v0[v5] = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground;
  *&v0[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel;
  *&v0[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  *&v0[v8] = [objc_allocWithZone(UIButton) init];
  v9 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput;
  *&v0[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = &v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPickerEnabled] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for FMCustomRoleView();
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002EB464();
  sub_1002EBBD8();
  v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v12 action:"customizeEmoji"];
  [*&v12[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground] addGestureRecognizer:v13];

  return v12;
}

id sub_1002EB464()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  [v2 setImage:v5 forState:0];
  [v2 addTarget:v1 action:"clearTextView" forControlEvents:64];
  v46 = v2;
  [v2 setHidden:1];
  v6 = objc_opt_self();
  v7 = [v6 tertiaryLabelColor];
  [v2 setTintColor:v7];

  v8 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground];
  v9 = [v6 tertiarySystemFillColor];
  [v8 setBackgroundColor:v9];

  v10 = [v8 layer];
  [v10 setCornerRadius:20.0];

  v11 = [v8 layer];
  [v11 setMasksToBounds:1];

  v12 = [v8 layer];
  v13 = [v6 systemBlueColor];
  v14 = [v13 CGColor];

  [v12 setBorderColor:v14];
  v15 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPlaceholder];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v4 systemImageNamed:v16];

  v45 = v15;
  [v15 setImage:v17];

  v18 = [v6 tertiaryLabelColor];
  [v15 setTintColor:v18];

  v19 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel];
  v44 = v19;
  v20 = objc_opt_self();
  v21 = [v20 systemFontOfSize:20.0];
  [v19 setFont:v21];

  [v19 setUserInteractionEnabled:0];
  v22 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel];
  v23 = [v20 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v22 setFont:v23];

  v24 = [v6 secondaryLabelColor];
  [v22 setTextColor:v24];

  v25 = [objc_opt_self() mainBundle];
  v48._object = 0x8000000100579A00;
  v26._countAndFlagsBits = 0xD000000000000017;
  v26._object = 0x800000010058F850;
  v27.value._countAndFlagsBits = 0xD000000000000013;
  v27.value._object = 0x80000001005799E0;
  v48._countAndFlagsBits = 0xD000000000000018;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v48);

  v29 = String._bridgeToObjectiveC()();

  [v22 setText:v29];

  v30 = [v6 secondarySystemGroupedBackgroundColor];
  v31 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_contentView];
  [v31 setBackgroundColor:v30];

  v32 = [v31 layer];
  v47[3] = &type metadata for SolariumFeatureFlag;
  v47[4] = sub_10000BD04();
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100006060(v47);
  v33 = _UISheetCornerRadius;
  if (v29)
  {
    v33 = 26.0;
  }

  [v32 setCornerRadius:v33];

  v34 = [v31 layer];
  [v34 setMasksToBounds:1];

  v35 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView];
  v36 = [v20 preferredFontForTextStyle:UIFontTextStyleHeadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v38 = UIFontWeightTrait;
  v39 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
  v40 = sub_10002ACDC(v39);

  [v35 setFont:v40];

  [v35 setDelegate:v1];
  v41 = [v6 clearColor];
  [v35 setBackgroundColor:v41];

  [v35 setAdjustsFontForContentSizeCategory:1];
  [v35 setScrollEnabled:0];
  v42 = *&v1[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput];
  [v42 setScrollEnabled:0];
  [v42 setAlpha:0.0];
  [v42 setDelegate:v1];
  [v42 setKeyboardType:124];
  [v31 addSubview:v35];
  [v31 addSubview:v22];
  [v31 addSubview:v8];
  [v31 addSubview:v45];
  [v31 addSubview:v44];
  [v31 addSubview:v46];
  [v1 addSubview:v31];
  return [v1 addSubview:v42];
}

void sub_1002EBBD8()
{
  v1 = v0;
  v101 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput];
  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_contentView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v105 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView];
  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel];
  [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPlaceholder];
  [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
  v104 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel];
  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  v103 = *&v0[OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton];
  [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1006D4798;
  v107 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [v2 topAnchor];
  v7 = [v1 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:7.0];

  *(v5 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-12.0];

  *(v5 + 56) = v17;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:isa];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1005521F0;
  v20 = [v3 centerYAnchor];
  v106 = v2;
  v21 = [v2 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [v3 widthAnchor];
  v24 = [v23 constraintEqualToConstant:*&qword_1006BAFA8];

  *(v19 + 40) = v24;
  v25 = [v3 heightAnchor];
  v26 = [v25 constraintEqualToConstant:*&qword_1006BAFA8];

  *(v19 + 48) = v26;
  v27 = [v3 leadingAnchor];
  v28 = [v2 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v4];

  *(v19 + 56) = v29;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v30];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100552EE0;
  v32 = [v100 centerXAnchor];
  v33 = [v3 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v100 centerYAnchor];
  v36 = [v3 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1005521F0;
  v40 = [v101 heightAnchor];
  v41 = [v3 heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v39 + 32) = v42;
  v43 = [v101 widthAnchor];
  v44 = [v3 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v39 + 40) = v45;
  v46 = [v101 centerXAnchor];
  v47 = [v3 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v39 + 48) = v48;
  v49 = [v101 centerYAnchor];
  v50 = [v3 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v39 + 56) = v51;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v52];

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100552EE0;
  v54 = [v102 centerXAnchor];
  v55 = [v3 centerXAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v53 + 32) = v56;
  v57 = [v102 centerYAnchor];
  v58 = [v3 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v53 + 40) = v59;
  v60 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v60];

  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1005521F0;
  v62 = [v103 widthAnchor];
  v63 = [v62 constraintEqualToConstant:*&qword_1006BAFB8];

  *(v61 + 32) = v63;
  v64 = [v103 heightAnchor];
  v65 = [v64 constraintEqualToConstant:*&qword_1006BAFB8];

  *(v61 + 40) = v65;
  v66 = [v103 trailingAnchor];
  v67 = [v106 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-*&qword_1006BAFB0];

  *(v61 + 48) = v68;
  v69 = [v103 centerYAnchor];
  v70 = [v106 centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v61 + 56) = v71;
  v72 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v72];

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1005521F0;
  v74 = [v105 topAnchor];
  v75 = [v106 topAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:*&qword_1006BAFB0];

  *(v73 + 32) = v76;
  v77 = [v105 leadingAnchor];
  v78 = [v3 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:*&qword_1006BAFB0];

  *(v73 + 40) = v79;
  v80 = [v105 trailingAnchor];
  v81 = [v103 leadingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:-v4];

  *(v73 + 48) = v82;
  v83 = [v105 bottomAnchor];
  v84 = [v106 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:-*&qword_1006BAFB0];

  *(v73 + 56) = v85;
  v86 = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v86];

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1005521F0;
  v88 = [v104 centerXAnchor];
  v89 = [v105 centerXAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];

  *(v87 + 32) = v90;
  v91 = [v104 centerYAnchor];
  v92 = [v105 centerYAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v87 + 40) = v93;
  v94 = [v104 leadingAnchor];
  v95 = [v105 leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:3.0];

  *(v87 + 48) = v96;
  v97 = [v104 trailingAnchor];
  v98 = [v105 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v87 + 56) = v99;
  v108.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v107 activateConstraints:v108.super.isa];
}

id sub_1002ECA8C()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMCustomRoleView: customizeEmoji button tapped", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput);

  return [v6 becomeFirstResponder];
}

id sub_1002ECBD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  sub_1002EB03C(0, 0xE000000000000000);
  [*(v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton) setHidden:1];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = [v1 text];
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      sub_1000C8278(v0, v5, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002ECD34(void *a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    v10 = [v5 text];

    if (!v10)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100005B4C(v11, v13, &v34);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMCustomRoleView: textViewDidChange %s", v8, 0xCu);
    sub_100006060(v9);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton);
  v16 = [v5 text];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  [v15 setHidden:v21 == 0];
  v22 = *(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel);
  v23 = [v5 text];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  [v22 setHidden:v28 != 0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = [v5 text];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      sub_1000C8278(v2, v31, v33);

      swift_unknownObjectRelease();
      return;
    }

LABEL_23:
    __break(1u);
  }
}

void sub_1002ED1B4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = [a1 text];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20[0] = v10;
  v20[1] = v12;
  static CharacterSet.whitespaces.getter();
  sub_100035F3C();
  StringProtocol.trimmingCharacters(in:)();
  (*(v5 + 8))(v7, v4);

  v13 = String._bridgeToObjectiveC()();

  [a1 setText:v13];

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v14 = [a1 text];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_1000C8278(v2, v16, v18);

  swift_unknownObjectRelease();
LABEL_6:
  if (static NSObject.== infix(_:_:)())
  {
    v19 = [*(v2 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground) layer];
    [v19 setBorderWidth:0.0];
  }
}

uint64_t sub_1002ED488(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a4 == 10 && a5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    [a1 resignFirstResponder];
    return 0;
  }

  if (a3 >= 1)
  {
    v11 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v11 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 1;
    }
  }

  result = [a1 text];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = String.characterCount.getter();

  if (v13 >= qword_1006BAFC0)
  {
    return 0;
  }

  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  sub_1002EB140(a4, a5);
  v14 = String._bridgeToObjectiveC()();
  [a1 setText:v14];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = [*(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel) text];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = *(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji);
      v19 = *(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji + 8);
    }

    sub_1000C844C(v5, v17, v19);

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_1002ED870(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return 0;
  }

  sub_10017EE08(a2, v16);
  v6 = v17;
  if (v17)
  {
    v7 = sub_1000244BC(v16, v17);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100006060(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for CustomTextView();
  v15.receiver = v2;
  v15.super_class = v13;
  v14 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  return v14;
}

id sub_1002EDB88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002EDBE4()
{
  *(v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_textView;
  type metadata accessor for CustomTextView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v2) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPlaceholder;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_placeholderLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_deleteButton;
  *(v0 + v8) = [objc_allocWithZone(UIButton) init];
  v9 = OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiInput;
  *(v0 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = (v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__roleName);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView__emoji);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPickerEnabled) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1002EDD90()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 systemBlueColor];
  v3 = [v0 systemWhiteColor];
  v4 = [v0 systemBlueColor];
  qword_1006D4648 = v1;
  unk_1006D4650 = v2;
  qword_1006D4658 = v3;
  unk_1006D4660 = v4;
  result = 26.0;
  xmmword_1006D4668 = xmmword_100552160;
  qword_1006D4678 = 0x4046000000000000;
  return result;
}