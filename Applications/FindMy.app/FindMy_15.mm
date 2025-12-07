uint64_t sub_10019A848(uint64_t *a1)
{
  v3 = *(type metadata accessor for CharacterSet() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  return sub_1001954AC(a1, v7, v1 + v4, v9, v10, v11);
}

double sub_10019A8F8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

double sub_10019A904()
{
  v1 = *(type metadata accessor for CharacterSet() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100195924(v5, v6, v0 + v2, v8, v9, v10, v11);
}

uint64_t sub_10019A9B4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10019AA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMItemCellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10019AA78(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *&a1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *&a1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    type metadata accessor for FMContactsUtilities();

    if (sub_100476878(v8, v7))
    {

      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      v39 = sub_10019BFB4;
      v40 = v11;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100004AE4;
      v38 = &unk_10062B4B0;
      v12 = _Block_copy(&aBlock);
      v13 = a1;

      [v10 showOfferToSelfErrorInViewController:0 completion:v12];
      _Block_release(v12);
    }

    else
    {

      v15 = sub_100477BA0(v8, v7, 0);

      if (v15)
      {
      }

      else
      {
        sub_10000905C(0, &qword_1006B50C0, NSPredicate_ptr);
        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100552220;
        *(v16 + 56) = &type metadata for String;
        v17 = sub_10008EE84();
        *(v16 + 64) = v17;
        *(v16 + 32) = 0xD000000000000029;
        *(v16 + 40) = 0x8000000100580FB0;
        v18 = NSPredicate.init(format:_:)();
        v19 = String._bridgeToObjectiveC()();
        v20 = [v18 evaluateWithObject:v19];

        if (!v20)
        {
          v21 = objc_opt_self();
          v22 = [v21 mainBundle];
          v42._object = 0x8000000100583E60;
          v23._object = 0x8000000100583E40;
          v42._countAndFlagsBits = 0xD000000000000030;
          v23._countAndFlagsBits = 0xD00000000000001ELL;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v42);

          v25 = [v21 mainBundle];
          v43._object = 0x8000000100583ED0;
          v26._countAndFlagsBits = 0xD000000000000020;
          v26._object = 0x8000000100583EA0;
          v43._countAndFlagsBits = 0xD000000000000032;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v43);

          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_100552220;
          *(v28 + 56) = &type metadata for String;
          *(v28 + 64) = v17;
          *(v28 + 32) = v8;
          *(v28 + 40) = v7;
          String.init(format:_:)();

          v29 = objc_opt_self();
          v30 = String._bridgeToObjectiveC()();

          v31 = String._bridgeToObjectiveC()();

          v32 = swift_allocObject();
          *(v32 + 16) = a1;
          v39 = sub_10019BFB4;
          v40 = v32;
          aBlock = _NSConcreteStackBlock;
          v36 = 1107296256;
          v37 = sub_100004AE4;
          v38 = &unk_10062B460;
          v33 = _Block_copy(&aBlock);
          v34 = a1;

          [v29 showSimpleAlertWithTitle:v30 message:v31 handler:v33];
          _Block_release(v33);

          return result;
        }
      }

      sub_100193E8C(v8, v7, sub_10019B018, v6);
    }
  }

  else
  {
LABEL_8:
  }

  return result;
}

char *sub_10019B020(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_39:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      sub_10000905C(0, &qword_1006B50C0, NSPredicate_ptr);
      v3 = 0;
      v40 = v1 & 0xC000000000000001;
      v38 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = _swiftEmptyArrayStorage;
      v39 = v1;
      while (1)
      {
        if (v40)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v38 + 16))
          {
            goto LABEL_38;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v9 = v2;
        v10 = [v6 address];
        if (v10)
        {
          v11 = v10;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100552220;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_10008EE84();
        *(v14 + 32) = 0xD000000000000029;
        *(v14 + 40) = 0x8000000100580FB0;
        v15 = NSPredicate.init(format:_:)();
        v16 = v13 ? String._bridgeToObjectiveC()() : 0;
        v17 = [v15 evaluateWithObject:{v16, v38}];

        swift_unknownObjectRelease();
        result = [v7 address];
        v19 = result;
        if (v17)
        {
          break;
        }

        if (result)
        {
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v29 = sub_100477BA0(v26, v28, 1);
        v31 = v30;
        v33 = v32;

        if (v29)
        {
          if (v33)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_10008B9E4(0, *(v4 + 2) + 1, 1, v4);
            }

            v35 = *(v4 + 2);
            v34 = *(v4 + 3);
            if (v35 >= v34 >> 1)
            {
              v4 = sub_10008B9E4((v34 > 1), v35 + 1, 1, v4);
            }

            *(v4 + 2) = v35 + 1;
            v36 = &v4[16 * v35];
            *(v36 + 4) = v31;
            *(v36 + 5) = v33;
            goto LABEL_5;
          }

          v37 = [v7 address];
          if (v37)
          {
            v19 = v37;
LABEL_19:
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_10008B9E4(0, *(v4 + 2) + 1, 1, v4);
            }

            v24 = *(v4 + 2);
            v23 = *(v4 + 3);
            if (v24 >= v23 >> 1)
            {
              v4 = sub_10008B9E4((v23 > 1), v24 + 1, 1, v4);
            }

            *(v4 + 2) = v24 + 1;
            v25 = &v4[16 * v24];
            *(v25 + 4) = v20;
            *(v25 + 5) = v22;
            goto LABEL_5;
          }
        }

        else
        {
        }

LABEL_5:
        ++v3;
        v2 = v9;
        v5 = v8 == v9;
        v1 = v39;
        if (v5)
        {
          return v4;
        }
      }

      if (!result)
      {
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_10019B404()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (v1)
  {
    v2 = [v1 textView];
    if (v2)
    {
      v3 = v2;
      [v2 resignFirstResponder];

      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      v6[4] = sub_1000822F4;
      v6[5] = v4;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_100004AE4;
      v6[3] = &unk_10062B500;
      v5 = _Block_copy(v6);

      [v0 dismissViewControllerAnimated:1 completion:v5];
      _Block_release(v5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10019B510()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView) = 0;
  v2 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint) = 0;
  v3 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  *(v0 + v3) = [objc_allocWithZone(UITableView) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView;
  *(v0 + v4) = [objc_allocWithZone(UITableView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_hideSuggestedContactsLabel) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem) = 0;
  v5 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  *(&v29 + 1) = &type metadata for SolariumFeatureFlag;
  *&v30 = sub_10000BD04();
  v6 = isFeatureEnabled(_:)();
  sub_100006060(&v28);
  if (v6)
  {
    if (qword_1006AEAC8 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_1006D3F20;
  }

  else
  {
    if (qword_1006AEAC0 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_1006D3E60;
  }

  v8 = v7[9];
  v36 = v7[8];
  v37 = v8;
  v9 = v7[11];
  v38 = v7[10];
  v39 = v9;
  v10 = v7[5];
  v32 = v7[4];
  v33 = v10;
  v11 = v7[7];
  v34 = v7[6];
  v35 = v11;
  v12 = v7[1];
  v28 = *v7;
  v29 = v12;
  v13 = v7[3];
  v30 = v7[2];
  v31 = v13;
  v14 = (v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style);
  v15 = v37;
  v14[8] = v36;
  v14[9] = v15;
  v16 = v39;
  v14[10] = v38;
  v14[11] = v16;
  v17 = v33;
  v14[4] = v32;
  v14[5] = v17;
  v18 = v35;
  v14[6] = v34;
  v14[7] = v18;
  v19 = v29;
  *v14 = v28;
  v14[1] = v19;
  v20 = v31;
  v14[2] = v30;
  v14[3] = v20;
  v21 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_contactStore;
  v22 = objc_allocWithZone(CNContactStore);
  sub_10019A9DC(&v28, v27);
  *(v0 + v21) = [v22 init];
  v23 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_operationQueue;
  *(v0 + v23) = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_alertedOfferOutOfNetworkHandles) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_reachabilityOperation) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) = 0;
  v24 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  v25 = type metadata accessor for MessagingCapability();
  (*(*(v25 - 8) + 56))(v0 + v24, 1, 1, v25);
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10019B990(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10019B9B4(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v4 = v1[5];
  v9 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E3478;

  return sub_100198498(a1, v11, v10, v9, v4, v5, v6);
}

uint64_t sub_10019BAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3658, &qword_100555320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019BB68()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10019BBE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 58))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(v4 + 57))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100197E5C(a1, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), v5 | v6 | *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), a2, a3, a4);
}

uint64_t sub_10019BC64()
{

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10019BCD4(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, void, void))
{
  if (*(v1 + 58))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 57))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v2 | v3 | *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
}

uint64_t sub_10019BD4C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10019BDAC(uint64_t a1)
{
  v10 = v1[3];
  v11 = v1[2];
  v4 = v1[5];
  v9 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_100196B04(a1, v11, v10, v9, v4, v5, v6);
}

uint64_t sub_10019BEF0(char a1)
{
  v3 = *(v1 + 24);
  result = sub_1003EB538();
  if (v3)
  {
    return v3(a1 & 1);
  }

  return result;
}

uint64_t type metadata accessor for FMChooseMapView(uint64_t a1)
{
  result = qword_1006B5168;
  if (!qword_1006B5168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019C054(uint64_t a1)
{
  sub_10019C118(319);
  if (v1 <= 0x3F)
  {
    sub_10019C1AC(319);
    if (v2 <= 0x3F)
    {
      sub_10019C204(319);
      if (v3 <= 0x3F)
      {
        sub_10019C268(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10019C118(uint64_t a1)
{
  if (!qword_1006B5178)
  {
    type metadata accessor for FMChooseMapViewModel(255);
    sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B5178);
    }
  }
}

void sub_10019C1AC(uint64_t a1)
{
  if (!qword_1006B5188)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B5188);
    }
  }
}

void sub_10019C204(uint64_t a1)
{
  if (!qword_1006B5190)
  {
    sub_10007EC08(&qword_1006B5198, &qword_100557030);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B5190);
    }
  }
}

void sub_10019C268(uint64_t a1)
{
  if (!qword_1006B51A0)
  {
    sub_10019C2C4();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B51A0);
    }
  }
}

unint64_t sub_10019C2C4()
{
  result = qword_1006B51A8;
  if (!qword_1006B51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B51A8);
  }

  return result;
}

uint64_t sub_10019C318(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019C338(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_10019C398@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17[1] = a2;
  v18 = a1;
  v7 = sub_10007EBC0(&qword_1006B5230, &qword_1005570F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = sub_10007EBC0(&qword_1006B5210, &qword_1005570D0);
  __chkstk_darwin(v11 - 8);
  v13 = v17 - v12;
  sub_100007204(v5, v17 - v12, &qword_1006B5210, &qword_1005570D0);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_100035318(v13, v10, &qword_1006B5230, &qword_1005570F0);
  v18(v10);
  if (!v4)
  {
    sub_100012DF0(v10, &qword_1006B5230, &qword_1005570F0);
    v14 = 0;
LABEL_4:
    v15 = sub_10007EBC0(&qword_1006B5238, &qword_1005570F8);
    return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
  }

  result = sub_100012DF0(v10, &qword_1006B5230, &qword_1005570F0);
  __break(1u);
  return result;
}

__n128 sub_10019C5CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v3);
  v4 = sub_10007EBC0(&qword_1006B51E8, &qword_1005570B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6];
  static HorizontalAlignment.leading.getter();
  v13 = v1;
  LODWORD(v14) = 0;
  sub_1001A2084(&qword_1006B51F0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10007EBC0(&qword_1006B51F8, &qword_1005570C0);
  sub_100004098(&qword_1006B5200, &qword_1006B51F8, &qword_1005570C0, &protocol conformance descriptor for TupleView<A>);
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v5 + 32))(a1, v7, v4);
  v8 = a1 + *(sub_10007EBC0(&qword_1006B5208, &qword_1005570C8) + 36);
  v9 = v19;
  *(v8 + 64) = v18;
  *(v8 + 80) = v9;
  *(v8 + 96) = v20;
  v10 = v15;
  *v8 = v14;
  *(v8 + 16) = v10;
  result = v17;
  *(v8 + 32) = v16;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_10019C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_10007EBC0(&qword_1006B5210, &qword_1005570D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10007EBC0(&qword_1006B5218, &qword_1005570D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_10007EBC0(&qword_1006B5220, &qword_1005570E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  sub_10019CB90(&v22 - v16);
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  v18 = StateObject.wrappedValue.getter();
  sub_100007204(v18 + OBJC_IVAR____TtC6FindMy20FMChooseMapViewModel_mapAttribution, v5, &qword_1006B5210, &qword_1005570D0);

  v25 = a1;
  sub_10019C398(sub_1001A13F8, v24, v11);
  sub_100012DF0(v5, &qword_1006B5210, &qword_1005570D0);
  sub_100007204(v17, v14, &qword_1006B5220, &qword_1005570E0);
  sub_100007204(v11, v8, &qword_1006B5218, &qword_1005570D8);
  v19 = v23;
  sub_100007204(v14, v23, &qword_1006B5220, &qword_1005570E0);
  v20 = sub_10007EBC0(&qword_1006B5228, &qword_1005570E8);
  sub_100007204(v8, v19 + *(v20 + 48), &qword_1006B5218, &qword_1005570D8);
  sub_100012DF0(v11, &qword_1006B5218, &qword_1005570D8);
  sub_100012DF0(v17, &qword_1006B5220, &qword_1005570E0);
  sub_100012DF0(v8, &qword_1006B5218, &qword_1005570D8);
  return sub_100012DF0(v14, &qword_1006B5220, &qword_1005570E0);
}

uint64_t sub_10019CB90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_10007EBC0(&qword_1006B52B0, &qword_100557170);
  __chkstk_darwin(v43);
  v40 = &v37 - v3;
  v4 = sub_10007EBC0(&qword_1006B52B8, &qword_100557178);
  __chkstk_darwin(v4 - 8);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v39 = &v37 - v10;
  __chkstk_darwin(v11);
  v38 = &v37 - v12;
  v41 = sub_10007EBC0(&qword_1006B52C0, &qword_100557180);
  __chkstk_darwin(v41);
  v14 = &v37 - v13;
  v42 = sub_10007EBC0(&qword_1006B52C8, &qword_100557188);
  __chkstk_darwin(v42);
  v16 = &v37 - v15;
  v17 = type metadata accessor for DynamicTypeSize();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  type metadata accessor for FMChooseMapView(0);
  sub_1001A1530(v23);
  (*(v18 + 104))(v20, enum case for DynamicTypeSize.accessibility2(_:), v17);
  sub_1001A2084(&qword_1006B52A0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v24 = dispatch thunk of static Comparable.< infix(_:_:)();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v23, v17);
  if (v24)
  {
    v26 = v38;
    sub_10019D330(0, v38);
    v27 = v39;
    sub_10019D330(1u, v39);
    sub_100007204(v26, v8, &qword_1006B52B8, &qword_100557178);
    v28 = v37;
    sub_100007204(v27, v37, &qword_1006B52B8, &qword_100557178);
    v29 = v40;
    sub_100007204(v8, v40, &qword_1006B52B8, &qword_100557178);
    v30 = sub_10007EBC0(&qword_1006B52E8, &qword_100557198);
    sub_100007204(v28, v29 + *(v30 + 48), &qword_1006B52B8, &qword_100557178);
    sub_100012DF0(v28, &qword_1006B52B8, &qword_100557178);
    sub_100012DF0(v8, &qword_1006B52B8, &qword_100557178);
    sub_100007204(v29, v14, &qword_1006B52B0, &qword_100557170);
    swift_storeEnumTagMultiPayload();
    sub_100004098(&qword_1006B52D8, &qword_1006B52C8, &qword_100557188, &protocol conformance descriptor for HStack<A>);
    sub_100004098(&qword_1006B52E0, &qword_1006B52B0, &qword_100557170, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100012DF0(v29, &qword_1006B52B0, &qword_100557170);
    sub_100012DF0(v27, &qword_1006B52B8, &qword_100557178);
    v31 = v26;
    v32 = &qword_1006B52B8;
    v33 = &qword_100557178;
  }

  else
  {
    v34 = *v2;
    *v16 = static VerticalAlignment.center.getter();
    *(v16 + 1) = v34;
    v16[16] = 0;
    v35 = sub_10007EBC0(&qword_1006B52D0, &qword_100557190);
    sub_10019D178(&v16[*(v35 + 44)]);
    sub_100007204(v16, v14, &qword_1006B52C8, &qword_100557188);
    swift_storeEnumTagMultiPayload();
    sub_100004098(&qword_1006B52D8, &qword_1006B52C8, &qword_100557188, &protocol conformance descriptor for HStack<A>);
    sub_100004098(&qword_1006B52E0, &qword_1006B52B0, &qword_100557170, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v31 = v16;
    v32 = &qword_1006B52C8;
    v33 = &qword_100557188;
  }

  return sub_100012DF0(v31, v32, v33);
}

uint64_t sub_10019D178@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&qword_1006B52B8, &qword_100557178);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_10019D330(0, &v16 - v12);
  sub_10019D330(1u, v10);
  sub_100007204(v13, v7, &qword_1006B52B8, &qword_100557178);
  sub_100007204(v10, v4, &qword_1006B52B8, &qword_100557178);
  sub_100007204(v7, a1, &qword_1006B52B8, &qword_100557178);
  v14 = sub_10007EBC0(&qword_1006B52E8, &qword_100557198);
  sub_100007204(v4, a1 + *(v14 + 48), &qword_1006B52B8, &qword_100557178);
  sub_100012DF0(v10, &qword_1006B52B8, &qword_100557178);
  sub_100012DF0(v13, &qword_1006B52B8, &qword_100557178);
  sub_100012DF0(v4, &qword_1006B52B8, &qword_100557178);
  return sub_100012DF0(v7, &qword_1006B52B8, &qword_100557178);
}

uint64_t sub_10019D330@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v131 = a1;
  v123 = a2;
  v4 = 0x65726F6C707865;
  v118 = sub_10007EBC0(&qword_1006B52F0, &qword_1005571A0);
  __chkstk_darwin(v118);
  v119 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v99 - v7;
  v9 = sub_10007EBC0(&qword_1006B52F8, &qword_1005571A8);
  __chkstk_darwin(v9 - 8);
  v132 = (&v99 - v10);
  v120 = sub_10007EBC0(&qword_1006B5300, &qword_1005571B0);
  __chkstk_darwin(v120);
  v121 = &v99 - v11;
  v112 = type metadata accessor for PlainButtonStyle();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AccessibilityTraits();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMChooseMapView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v102 = sub_10007EBC0(&qword_1006B5308, &qword_1005571B8);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v18 = &v99 - v17;
  v101 = sub_10007EBC0(&qword_1006B5310, &qword_1005571C0);
  __chkstk_darwin(v101);
  v103 = &v99 - v19;
  v110 = sub_10007EBC0(&qword_1006B5318, &qword_1005571C8);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v124 = &v99 - v20;
  v107 = sub_10007EBC0(&qword_1006B5320, &qword_1005571D0);
  __chkstk_darwin(v107);
  v130 = &v99 - v21;
  v114 = sub_10007EBC0(&qword_1006B5328, &qword_1005571D8);
  __chkstk_darwin(v114);
  v116 = &v99 - v22;
  v115 = sub_10007EBC0(&qword_1006B5330, &unk_1005571E0);
  __chkstk_darwin(v115);
  v117 = &v99 - v23;
  sub_1001A1A64(v2, &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMChooseMapView);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_1001A1750(&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = v131 & 1;
  *(v25 + v24 + v16) = v26;
  v131 = v26;
  v133 = v26;
  if (v26)
  {
    v4 = 0x74696C6C65746173;
    v27 = 0xE900000000000065;
  }

  else
  {
    v27 = 0xE700000000000000;
  }

  sub_10007EBC0(&qword_1006B5348, &qword_1005571F8);
  sub_1001A183C();
  Button.init(action:label:)();
  v28 = *(v3 + 40);
  v29 = *(v3 + 48);
  v122 = v3;
  v30 = *(v3 + 56);
  v31 = type metadata accessor for FMChooseMapViewModel(0);
  v32 = sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  v128 = v29;
  v129 = v28;
  v127 = v30;
  v125 = v32;
  v126 = v31;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134)
  {
    v33 = 0x74696C6C65746173;
  }

  else
  {
    v33 = 0x65726F6C707865;
  }

  if (v134)
  {
    v34 = 0xE900000000000065;
  }

  else
  {
    v34 = 0xE700000000000000;
  }

  v113 = v4;
  if (v33 == v4 && v34 == v27)
  {

LABEL_14:
    v36 = v104;
    static AccessibilityTraits.isSelected.getter();
    v37 = v106;
    goto LABEL_16;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_14;
  }

  v134 = _swiftEmptyArrayStorage;
  sub_1001A2084(&qword_1006B5370, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_10007EBC0(&qword_1006B5378, &qword_100557250);
  sub_100004098(&qword_1006B5380, &qword_1006B5378, &qword_100557250, &protocol conformance descriptor for [A]);
  v36 = v104;
  v37 = v106;
  dispatch thunk of SetAlgebra.init<A>(_:)();
LABEL_16:
  sub_100004098(&qword_1006B5388, &qword_1006B5308, &qword_1005571B8, &protocol conformance descriptor for Button<A>);
  v38 = v103;
  v39 = v102;
  View.accessibility(addTraits:)();
  (*(v105 + 8))(v36, v37);
  (*(v100 + 8))(v18, v39);
  v40 = v109;
  PlainButtonStyle.init()();
  sub_1001A197C();
  sub_1001A2084(&qword_1006B5298, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v41 = v112;
  View.buttonStyle<A>(_:)();
  (*(v111 + 8))(v40, v41);
  sub_100012DF0(v38, &qword_1006B5310, &qword_1005571C0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134)
  {
    v42 = 0x74696C6C65746173;
  }

  else
  {
    v42 = 0x65726F6C707865;
  }

  if (v134)
  {
    v43 = 0xE900000000000065;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  v44 = v113;
  v45 = v122;
  if (v42 == v113 && v43 == v27)
  {

    v46 = 0;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v47 ^ 1;
  }

  v48 = v130;
  (*(v108 + 32))(v130, v124, v110);
  *(v48 + *(v107 + 36)) = v46 & 1;
  v49 = static HorizontalAlignment.center.getter();
  v50 = v132;
  *v132 = v49;
  v50[1] = 0;
  *(v50 + 16) = 0;
  v51 = v50 + *(sub_10007EBC0(&qword_1006B5398, &qword_100557258) + 44);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v52 = 1;
  v8[16] = 1;
  v53 = sub_10007EBC0(&qword_1006B53A0, &qword_100557260);
  sub_10019E988(v131, v45, &v8[*(v53 + 44)]);
  LOBYTE(v48) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = &v8[*(sub_10007EBC0(&qword_1006B53A8, &qword_100557268) + 36)];
  *v62 = v48;
  *(v62 + 1) = v55;
  *(v62 + 2) = v57;
  *(v62 + 3) = v59;
  *(v62 + 4) = v61;
  v62[40] = 0;
  LOBYTE(v48) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = &v8[*(sub_10007EBC0(&qword_1006B53B0, &qword_100557270) + 36)];
  *v71 = v48;
  *(v71 + 1) = v64;
  *(v71 + 2) = v66;
  *(v71 + 3) = v68;
  *(v71 + 4) = v70;
  v71[40] = 0;
  v72 = &v8[*(v118 + 36)];
  static Material.regular.getter();
  v73 = static Edge.Set.all.getter();
  v72[*(sub_10007EBC0(&qword_1006B53B8, &qword_100557278) + 36)] = v73;
  v74 = v119;
  sub_100007204(v8, v119, &qword_1006B52F0, &qword_1005571A0);
  *v51 = 0;
  v51[8] = 1;
  v75 = sub_10007EBC0(&qword_1006B53C0, &qword_100557280);
  sub_100007204(v74, &v51[*(v75 + 48)], &qword_1006B52F0, &qword_1005571A0);
  sub_100012DF0(v8, &qword_1006B52F0, &qword_1005571A0);
  sub_100012DF0(v74, &qword_1006B52F0, &qword_1005571A0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v134)
  {
    v76 = 0x74696C6C65746173;
  }

  else
  {
    v76 = 0x65726F6C707865;
  }

  if (v134)
  {
    v77 = 0xE900000000000065;
  }

  else
  {
    v77 = 0xE700000000000000;
  }

  if (v76 != v44 || v77 != v27)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v78 = v121;
  sub_100035318(v132, v121, &qword_1006B52F8, &qword_1005571A8);
  *(v78 + *(v120 + 36)) = v52 & 1;
  v79 = static Alignment.center.getter();
  v81 = v80;
  v82 = v116;
  v83 = &v116[*(v114 + 36)];
  sub_100035318(v78, v83, &qword_1006B5300, &qword_1005571B0);
  v84 = (v83 + *(sub_10007EBC0(&qword_1006B53C8, &qword_100557288) + 36));
  *v84 = v79;
  v84[1] = v81;
  sub_100035318(v130, v82, &qword_1006B5320, &qword_1005571D0);
  v85 = *(v45 + 8);
  v86 = v117;
  v87 = &v117[*(v115 + 36)];
  v88 = *(type metadata accessor for RoundedRectangle() + 20);
  v89 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  (*(*(v90 - 8) + 104))(&v87[v88], v89, v90);
  *v87 = v85;
  *(v87 + 1) = v85;
  *&v87[*(sub_10007EBC0(&qword_1006B53D0, &qword_100557290) + 36)] = 256;
  sub_100035318(v82, v86, &qword_1006B5328, &qword_1005571D8);
  v91 = static Alignment.center.getter();
  v93 = v92;
  v94 = sub_10007EBC0(&qword_1006B52B8, &qword_100557178);
  v95 = v123;
  v96 = v123 + *(v94 + 36);
  sub_10019E54C(v45, v131, v96);
  v97 = (v96 + *(sub_10007EBC0(&qword_1006B53D8, &qword_100557298) + 36));
  *v97 = v91;
  v97[1] = v93;
  return sub_100035318(v86, v95, &qword_1006B5330, &unk_1005571E0);
}

double sub_10019E2B8(uint64_t a1, char a2)
{
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  StateObject.wrappedValue.getter();
  sub_10024B578(a2 & 1);

  return result;
}

double sub_10019E368(char a1)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 & 1;
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v10[3] = v7;
  v10[4] = 0;
  v11 = 1;
  v10[1] = sub_100230A00(v6);
  v10[2] = v8;
  sub_10007EBC0(&qword_1006B5360, &qword_100557200);
  sub_1001A18F8();
  sub_100035F3C();
  View.accessibilityLabel<A>(_:)();

  return result;
}

uint64_t sub_10019E54C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10007EBC0(&qword_1006B53E0, &qword_1005572A0);
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v35 - v9;
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v38)
  {
    v11 = 0x74696C6C65746173;
  }

  else
  {
    v11 = 0x65726F6C707865;
  }

  if (v38)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (a2)
  {
    v13 = 0x74696C6C65746173;
  }

  else
  {
    v13 = 0x65726F6C707865;
  }

  if (a2)
  {
    v14 = 0xE900000000000065;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v33 = 1;
      v23 = v36;
      v32 = v37;
      return (*(v8 + 56))(v32, v33, 1, v23);
    }
  }

  v16 = *(a1 + 8);
  v17 = *(v5 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v7[v17], v18, v19);
  *v7 = v16;
  *(v7 + 1) = v16;
  v20 = [objc_opt_self() systemBlueColor];
  v21 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1001A1A64(v7, v10, &type metadata accessor for RoundedRectangle);
  v22 = *&v38 * 0.5;
  v23 = v36;
  v24 = &v10[*(v36 + 68)];
  sub_1001A1A64(v7, v24, &type metadata accessor for RoundedRectangle);
  *(v24 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v22;
  v25 = v24 + *(sub_10007EBC0(&qword_1006B53E8, &qword_1005572A8) + 36);
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v40;
  v27 = sub_10007EBC0(&qword_1006B53F0, &qword_1005572B0);
  *(v24 + *(v27 + 52)) = v21;
  *(v24 + *(v27 + 56)) = 256;
  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_1001A1ACC(v7);
  v31 = (v24 + *(sub_10007EBC0(&qword_1006B53F8, &qword_1005572B8) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = v37;
  sub_100035318(v10, v37, &qword_1006B53E0, &qword_1005572A0);
  v33 = 0;
  return (*(v8 + 56))(v32, v33, 1, v23);
}

uint64_t sub_10019E988@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v3 = a1;
  v41 = a1;
  v43 = sub_10007EBC0(&qword_1006B5400, &qword_1005572C0);
  v38 = *(v43 - 8);
  v5 = v38;
  __chkstk_darwin(v43);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v36 - v8;
  v52 = sub_100230A00(v3 & 1);
  v53 = v9;
  sub_100035F3C();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.subheadline.getter();
  v15 = Text.font(_:)();
  v40 = v15;
  v36 = v16;
  v18 = v17;
  v37 = v19;

  sub_1001A1B28(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v39 = KeyPath;
  v21 = swift_getKeyPath();
  v22 = v18 & 1;
  LOBYTE(v52) = v18 & 1;
  LOBYTE(v47) = 0;
  v23 = v45;
  sub_10019ECF4(v41 & 1, v45);
  v24 = *(v5 + 16);
  v25 = v42;
  v26 = v43;
  v24(v42, v23, v43);
  v27 = v36;
  *&v47 = v15;
  *(&v47 + 1) = v36;
  LOBYTE(v48) = v22;
  *(&v48 + 1) = *v46;
  DWORD1(v48) = *&v46[3];
  v28 = v37;
  *(&v48 + 1) = v37;
  *&v49 = KeyPath;
  *(&v49 + 1) = 0x3FE3333333333333;
  *&v50 = v21;
  *(&v50 + 1) = 1;
  v51 = 0;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v32 = v50;
  *(a3 + 64) = 0;
  *(a3 + 32) = v31;
  *(a3 + 48) = v32;
  *a3 = v29;
  *(a3 + 16) = v30;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  v33 = (a3 + *(sub_10007EBC0(&qword_1006B5408, &qword_100557328) + 64));
  v24(v33, v25, v26);
  sub_100007204(&v47, &v52, &qword_1006B5410, &qword_100557330);
  v34 = *(v38 + 8);
  v34(v45, v26);
  v34(v25, v26);
  v52 = v40;
  v53 = v27;
  v54 = v22;
  *v55 = *v46;
  *&v55[3] = *&v46[3];
  v56 = v28;
  v57 = v39;
  v58 = 0x3FE3333333333333;
  v59 = v21;
  v60 = 1;
  v61 = 0;
  return sub_100012DF0(&v52, &qword_1006B5410, &qword_100557330);
}

uint64_t sub_10019ECF4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v21 = a2;
  v20 = sub_10007EBC0(&qword_1006B5418, &qword_100557338);
  __chkstk_darwin(v20);
  v4 = &v19 - v3;
  v5 = sub_10007EBC0(&qword_1006B5420, &qword_100557340);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v26 = sub_10007EBC0(&qword_1006B5428, &qword_100557348);
  __chkstk_darwin(v26);
  v9 = &v19 - v8;
  v27 = v2;
  sub_10007EBC0(&qword_1006B5430, &qword_100557350);
  sub_10007EBC0(&qword_1006B5438, &qword_100557358);
  sub_1001A1B40();
  sub_100004098(&qword_1006B5460, &qword_1006B5438, &qword_100557358, &protocol conformance descriptor for TupleView<A>);
  v23 = v7;
  Menu.init(content:label:)();
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v28)
  {
    v10 = 0x74696C6C65746173;
  }

  else
  {
    v10 = 0x65726F6C707865;
  }

  if (v28)
  {
    v11 = 0xE900000000000065;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v22)
  {
    v12 = 0x74696C6C65746173;
  }

  else
  {
    v12 = 0x65726F6C707865;
  }

  if (v22)
  {
    v13 = 0xE900000000000065;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0.0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = 1.0;
  if ((v28 & 1) == 0)
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

LABEL_19:
  (*(v24 + 32))(v9, v23, v25);
  *&v9[*(v26 + 36)] = v15;
  v16 = enum case for DynamicTypeSize.xxxLarge(_:);
  v17 = type metadata accessor for DynamicTypeSize();
  (*(*(v17 - 8) + 104))(v4, v16, v17);
  sub_1001A2084(&qword_1006B5468, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1001A1C60();
    sub_100004098(&qword_1006B5480, &qword_1006B5418, &qword_100557338, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100012DF0(v4, &qword_1006B5418, &qword_100557338);
    return sub_100012DF0(v9, &qword_1006B5428, &qword_100557348);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019F298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for FMChooseMapView(0);
  v55 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v56 = v4;
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B5488, &qword_1005573A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = v46 - v8;
  v9 = sub_10007EBC0(&qword_1006B5490, &qword_1005573A8);
  __chkstk_darwin(v9 - 8);
  v52 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = v46 - v12;
  __chkstk_darwin(v13);
  v50 = v46 - v14;
  __chkstk_darwin(v15);
  v58 = v46 - v16;
  v17 = *(a1 + 48);
  v54 = a1;
  v18 = type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  v48 = v17;
  v19 = v18;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v5;
  if (v59 == 1)
  {
    v46[0] = v7;
    if (qword_1006AEB40 != -1)
    {
      swift_once();
    }

    v60 = xmmword_1006D4170;
    sub_1001A1A64(v54, v5, type metadata accessor for FMChooseMapView);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1001A1750(v5, v22 + v21);
    v23 = StateObject.wrappedValue.getter();
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = sub_1001A1D30;
    v24[5] = v23;
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = sub_1001A1D38;
    v25[5] = v24;
    Binding.init(get:set:)();
    sub_100035F3C();
    v26 = v57;
    v27 = v19;
    Toggle<>.init<A>(_:isOn:)();
    v7 = v46[0];
    v28 = v58;
    (*(v46[0] + 32))(v58, v26, v6);
    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v58;
    v27 = v18;
  }

  v46[1] = v27;
  v47 = v6;
  v48 = *(v7 + 56);
  v48(v28, v29, 1, v6);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (qword_1006AEB38 != -1)
  {
    swift_once();
  }

  v60 = xmmword_1006D4160;
  v30 = v49;
  sub_1001A1A64(v54, v49, type metadata accessor for FMChooseMapView);
  type metadata accessor for MainActor();

  v31 = static MainActor.shared.getter();
  v32 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = &protocol witness table for MainActor;
  sub_1001A1750(v30, v33 + v32);
  v34 = StateObject.wrappedValue.getter();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = sub_1001A203C;
  v35[5] = v34;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = sub_1001A21FC;
  v36[5] = v35;
  Binding.init(get:set:)();
  sub_100035F3C();
  v37 = v57;
  Toggle<>.init<A>(_:isOn:)();
  v38 = v50;
  v39 = v47;
  (*(v7 + 32))(v50, v37, v47);
  v48(v38, 0, 1, v39);
  v40 = v58;
  v41 = v51;
  sub_100007204(v58, v51, &qword_1006B5490, &qword_1005573A8);
  v42 = v52;
  sub_100007204(v38, v52, &qword_1006B5490, &qword_1005573A8);
  v43 = v53;
  sub_100007204(v41, v53, &qword_1006B5490, &qword_1005573A8);
  v44 = sub_10007EBC0(&qword_1006B5498, &qword_1005573B0);
  sub_100007204(v42, v43 + *(v44 + 48), &qword_1006B5490, &qword_1005573A8);
  sub_100012DF0(v38, &qword_1006B5490, &qword_1005573A8);
  sub_100012DF0(v40, &qword_1006B5490, &qword_1005573A8);
  sub_100012DF0(v42, &qword_1006B5490, &qword_1005573A8);
  return sub_100012DF0(v41, &qword_1006B5490, &qword_1005573A8);
}

void sub_10019FAF0(_BYTE *a2@<X8>)
{
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void sub_10019FBE0(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = BYTE1(v37[0]);
  v5 = BYTE2(v37[0]);
  if (LOBYTE(v37[0]))
  {
    v5 = a1;
    v4 = BYTE1(v37[0]) & a1;
  }

  v6 = *(*(a2 + 16) + 56);
  v7 = (v6 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  *v7 = v37[0];
  v7[1] = v4 & 1;
  v7[2] = v5 & 1;
  v8 = qword_1006AEBE0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37[0] = v13;
    *v12 = 136315138;
    if (v7[2])
    {
      v14 = 0x10000;
    }

    else
    {
      v14 = 0;
    }

    if (v7[1])
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1002318A0(v15 | *v7 | v14);
    v18 = sub_100005B4C(v16, v17, v37);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMSelectionController: map configuration updated %s", v12, 0xCu);
    sub_100006060(v13);
  }

  v19 = *v7;
  v20 = v7[1];
  v21 = v7[2];
  v22 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v37[3] = My;
  v37[4] = sub_1001A2084(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v24 = sub_100008FC0(v37);
  (*(*(My - 8) + 104))(v24, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v25 = isFeatureEnabled(_:)();
  sub_100006060(v37);
  if (v21)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  if (v20)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  sub_100231DAC(v22, v25 & 1, v27 | v19 | v26);

  swift_beginAccess();
  v28 = *(v6 + 16);
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_21;
    }

LABEL_38:

    return;
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (v29 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v29; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v28 + 8 * i + 32);
      }

      v36 = v35 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v36 + 8);
        ObjectType = swift_getObjectType();
        if (v7[2])
        {
          v33 = 0x10000;
        }

        else
        {
          v33 = 0;
        }

        if (v7[1])
        {
          v34 = 256;
        }

        else
        {
          v34 = 0;
        }

        (*(v31 + 16))(v6, v34 | *v7 | v33, ObjectType, v31);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_1001A0048(_BYTE *a2@<X8>)
{
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void sub_1001A0138(unsigned __int8 a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = BYTE2(v36[0]) | a1;
  v5 = *(*(a2 + 16) + 56);
  v6 = (v5 + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  *v6 = v36[0];
  v6[1] = a1;
  v6[2] = v4 & 1;
  v7 = qword_1006AEBE0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36[0] = v12;
    *v11 = 136315138;
    if (v6[2])
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }

    if (v6[1])
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1002318A0(v14 | *v6 | v13);
    v17 = sub_100005B4C(v15, v16, v36);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMSelectionController: map configuration updated %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v18 = *v6;
  v19 = v6[1];
  v20 = v6[2];
  v21 = [objc_opt_self() standardUserDefaults];
  My = type metadata accessor for Feature.FindMy();
  v36[3] = My;
  v36[4] = sub_1001A2084(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v23 = sub_100008FC0(v36);
  (*(*(My - 8) + 104))(v23, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  v24 = isFeatureEnabled(_:)();
  sub_100006060(v36);
  if (v20)
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  if (v19)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  sub_100231DAC(v21, v24 & 1, v26 | v18 | v25);

  swift_beginAccess();
  v27 = *(v5 + 16);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_36:

    return;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_36;
  }

LABEL_19:
  if (v28 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v27 + 8 * i + 32);
      }

      v35 = v34 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v35 + 8);
        ObjectType = swift_getObjectType();
        if (v6[2])
        {
          v32 = 0x10000;
        }

        else
        {
          v32 = 0;
        }

        if (v6[1])
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        (*(v30 + 16))(v5, v33 | *v6 | v32, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1001A058C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B5448, &qword_100557360);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v17 = Image.init(systemName:)();
  static SymbolVariants.circle.getter();
  View.symbolVariant(_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);

  static SymbolVariants.fill.getter();
  v17 = &type metadata for Image;
  v18 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  v10 = v16;
  View.symbolVariant(_:)();
  v9(v4, v1);
  (*(v6 + 8))(v8, v5);
  v11 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10007EBC0(&qword_1006B5430, &qword_100557350);
  v14 = (v10 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_1001A07EC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v60 = a3;
  v73 = a1;
  v59 = sub_10007EBC0(&qword_1006B5240, &qword_100557100);
  __chkstk_darwin(v59);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v49 - v5;
  v6 = type metadata accessor for DynamicTypeSize();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v49 - v9;
  v58 = sub_10007EBC0(&qword_1006B5248, &qword_100557108);
  __chkstk_darwin(v58);
  v67 = &v49 - v10;
  v11 = type metadata accessor for PlainButtonStyle();
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B5250, &qword_100557110);
  v62 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v52 = sub_10007EBC0(&qword_1006B5258, &qword_100557118);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v18 = &v49 - v17;
  v55 = sub_10007EBC0(&qword_1006B5260, &qword_100557120);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v49 - v19;
  type metadata accessor for FMChooseMapViewModel(0);
  sub_1001A2084(&qword_1006B5180, type metadata accessor for FMChooseMapViewModel, &unk_10055A440);
  v20 = v61;
  StateObject.wrappedValue.getter();
  v68 = v73;
  sub_10007EBC0(&qword_1006B5268, &qword_100557128);
  sub_1001A1424();
  v21 = v63;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v22 = sub_100004098(&qword_1006B5290, &qword_1006B5250, &qword_100557110, &protocol conformance descriptor for Button<A>);
  v23 = sub_1001A2084(&qword_1006B5298, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v50 = v18;
  v49 = v23;
  View.buttonStyle<A>(_:)();
  v24 = *(v64 + 8);
  v64 = v11;
  v24(v13, v11);
  v25 = *(v62 + 8);
  v62 = v14;
  v25(v16, v14);
  v26 = v66;
  v27 = v65;
  v28 = *(v65 + 104);
  v28(v20, enum case for DynamicTypeSize.medium(_:), v66);
  v28(v21, enum case for DynamicTypeSize.xxxLarge(_:), v26);
  sub_1001A2084(&qword_1006B52A0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v30 = v27;
    v31 = *(v27 + 32);
    v32 = v56;
    v31(v56, v20, v26);
    v61 = v22;
    v33 = v59;
    v31((v32 + *(v59 + 48)), v21, v26);
    v34 = v57;
    sub_100007204(v32, v57, &qword_1006B5240, &qword_100557100);
    v35 = *(v33 + 48);
    v31(v67, v34, v26);
    v36 = *(v30 + 8);
    v36(v34 + v35, v26);
    sub_100035318(v32, v34, &qword_1006B5240, &qword_100557100);
    v37 = *(v33 + 48);
    v38 = v67;
    v31(&v67[*(v58 + 36)], (v34 + v37), v26);
    v36(v34, v26);
    v69 = v62;
    v70 = v64;
    v71 = v61;
    v72 = v49;
    swift_getOpaqueTypeConformance2();
    sub_100004098(&qword_1006B52A8, &qword_1006B5248, &qword_100557108, &protocol conformance descriptor for ClosedRange<A>);
    v39 = v53;
    v40 = v52;
    v41 = v50;
    View.dynamicTypeSize<A>(_:)();
    sub_100012DF0(v38, &qword_1006B5248, &qword_100557108);
    (*(v51 + 8))(v41, v40);
    v42 = *(sub_10007EBC0(&qword_1006B5230, &qword_1005570F0) + 48);
    v43 = type metadata accessor for URL();
    v44 = (*(*(v43 - 8) + 48))(v73 + v42, 1, v43) == 1;
    KeyPath = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    v47 = v60;
    (*(v54 + 32))(v60, v39, v55);
    result = sub_10007EBC0(&qword_1006B5238, &qword_1005570F8);
    v48 = (v47 + *(result + 36));
    *v48 = KeyPath;
    v48[1] = sub_1001A1730;
    v48[2] = v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A10C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10007EBC0(&qword_1006B5230, &qword_1005570F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v10 - v6);
  sub_100007204(a1, &v10 - v6, &qword_1006B5230, &qword_1005570F0);
  v8 = *v7;
  result = sub_100012DF0(v7 + *(v5 + 56), &unk_1006B0120, &qword_100552B60);
  *a2 = v8;
  *(a2 + 8) = 0;
  return result;
}

id sub_1001A1194(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setAttributedText:a2];
  [v3 setNumberOfLines:3];
  [v3 setTextAlignment:4];
  [v3 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  return v3;
}

id sub_1001A12A8(uint64_t a1, int a2, id a3)
{
  result = [a3 systemLayoutSizeFittingSize:{*a1, 1.79769313e308}];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1001A12F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A21A4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001A1358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A21A4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001A13BC(uint64_t a1)
{
  sub_1001A21A4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001A1424()
{
  result = qword_1006B5270;
  if (!qword_1006B5270)
  {
    sub_10007EC08(&qword_1006B5268, &qword_100557128);
    sub_1001A14DC();
    sub_100004098(&qword_1006B5280, &qword_1006B5288, &qword_100557130, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5270);
  }

  return result;
}

unint64_t sub_1001A14DC()
{
  result = qword_1006B5278;
  if (!qword_1006B5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5278);
  }

  return result;
}

uint64_t sub_1001A1530@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B5338, &qword_10055A850);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100007204(v2, &v14 - v9, &qword_1006B5338, &qword_10055A850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
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

uint64_t sub_1001A1750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMChooseMapView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1001A17B4()
{
  v1 = *(type metadata accessor for FMChooseMapView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_10019E2B8(v2, v3);
}

unint64_t sub_1001A183C()
{
  result = qword_1006B5350;
  if (!qword_1006B5350)
  {
    sub_10007EC08(&qword_1006B5348, &qword_1005571F8);
    sub_1001A18F8();
    sub_1001A2084(&qword_1006B5368, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5350);
  }

  return result;
}

unint64_t sub_1001A18F8()
{
  result = qword_1006B5358;
  if (!qword_1006B5358)
  {
    sub_10007EC08(&qword_1006B5360, &qword_100557200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5358);
  }

  return result;
}

unint64_t sub_1001A197C()
{
  result = qword_1006B5390;
  if (!qword_1006B5390)
  {
    sub_10007EC08(&qword_1006B5310, &qword_1005571C0);
    sub_100004098(&qword_1006B5388, &qword_1006B5308, &qword_1005571B8, &protocol conformance descriptor for Button<A>);
    sub_1001A2084(&qword_1006B5368, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5390);
  }

  return result;
}

uint64_t sub_1001A1A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A1ACC(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001A1B28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1001A1B40()
{
  result = qword_1006B5440;
  if (!qword_1006B5440)
  {
    sub_10007EC08(&qword_1006B5430, &qword_100557350);
    sub_10007EC08(&qword_1006B5448, &qword_100557360);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004098(&qword_1006B5450, &qword_1006B5458, &qword_100557368, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5440);
  }

  return result;
}

unint64_t sub_1001A1C60()
{
  result = qword_1006B5470;
  if (!qword_1006B5470)
  {
    sub_10007EC08(&qword_1006B5428, &qword_100557348);
    sub_100004098(&qword_1006B5478, &qword_1006B5420, &qword_100557340, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5470);
  }

  return result;
}

uint64_t sub_1001A1D8C()
{
  v1 = type metadata accessor for FMChooseMapView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1001A1748(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v6 = v1[6];
  sub_10007EBC0(&qword_1006B5338, &qword_10055A850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[7];
  sub_10007EBC0(&qword_1006B5340, &qword_1005571F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(sub_10007EBC0(&qword_1006B5198, &qword_100557030) + 32);
    v11 = type metadata accessor for PresentationMode();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  v12 = v1[8];
  v13 = sub_10007EBC0(&qword_1006B5108, &qword_100557010);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001A1FB4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMChooseMapView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_1001A2044()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A2084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001A20DC()
{
  result = qword_1006B54A0;
  if (!qword_1006B54A0)
  {
    sub_10007EC08(&qword_1006B5208, &qword_1005570C8);
    sub_100004098(&qword_1006B54A8, &qword_1006B51E8, &qword_1005570B8, &protocol conformance descriptor for LazyVStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B54A0);
  }

  return result;
}

unint64_t sub_1001A21A4()
{
  result = qword_1006B54B0;
  if (!qword_1006B54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B54B0);
  }

  return result;
}

char *sub_1001A2204(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel;
  *&v4[v8] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction] = 0;
  v4[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_scrollView] = a1;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel];
  v12 = v10;
  v13 = v11;
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v11 setText:{v14, v16.receiver, v16.super_class}];

  sub_1001A2348();
  sub_1001A2588();

  return v10;
}

void sub_1001A2348()
{
  v1 = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:*&v0[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_scrollView] edge:1];
  [v1 _setActive:0];
  [v0 addInteraction:v1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction];
  *&v0[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction] = v1;
  v14 = v1;

  v3 = OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] setNumberOfLines:1];
  [*&v0[v3] setAlpha:0.0];
  v4 = *&v0[v3];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 labelColor];
  [v6 setTextColor:v7];

  [*&v0[v3] setTextAlignment:1];
  [*&v0[v3] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v3] setAccessibilityTraits:UIAccessibilityTraitHeader];
  v8 = *&v0[v3];
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *&v0[v3];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v12 setFont:v13];

  [v0 addSubview:*&v0[v3]];
}

void sub_1001A2588()
{
  v1 = OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1006D4558;
  v3 = *&qword_1006D4570;
  v4 = *&qword_1006D4510 + *&qword_1006D4510 + *&qword_1006D4518;
  v5 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [*&v0[v1] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:v3];

  *(v6 + 32) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v4];

  *(v6 + 40) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v2];

  *(v6 + 48) = v15;
  v16 = [*&v0[v1] trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-v4];

  *(v6 + 56) = v18;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_1001A28F8(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel);
  v3 = 0.0;
  if (a2)
  {
    v3 = 1.0;
  }

  return [v2 setAlpha:v3];
}

uint64_t sub_1001A29D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1001A29E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001A2A0C(uint64_t a1, int a2)
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

uint64_t sub_1001A2A54(uint64_t result, int a2, int a3)
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

double sub_1001A2AB4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37[1] = a1;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0xD000000000000037;
  v40 = 0x8000000100584220;
  v41 = *v1;
  v42 = v41;

  static CharacterSet.urlPathAllowed.getter();
  sub_100035F3C();
  v7 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100102394(&v42);
  if (v9)
  {
    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100552220;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10008EE84();
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    v12._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v12);
  }

  v41 = v2[1];
  v38 = v2[1];

  static CharacterSet.urlPathAllowed.getter();
  v13 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v15 = v14;
  v10(v6, v3);
  sub_100102394(&v41);
  if (v15)
  {
    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10008EE84();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    v17._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v17);
  }

  v18 = *(v2 + 5);
  if (v18)
  {
    v38._countAndFlagsBits = *(v2 + 4);
    v38._object = v18;

    static CharacterSet.urlPathAllowed.getter();
    v19 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v21 = v20;
    v10(v6, v3);

    if (v21)
    {
      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100552220;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_10008EE84();
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      v23._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v23);
    }
  }

  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = *(v2 + 49);
  v26 = 0x656E696C66666FLL;
  v27 = 0xE600000000000000;
  if (v25 == 1)
  {
    v27 = 0xE700000000000000;
  }

  else
  {
    v26 = 0x64656B636F6CLL;
  }

  v28 = v25 == 0;
  if (*(v2 + 49))
  {
    v29 = v26;
  }

  else
  {
    v29 = 0x656E696C6E6FLL;
  }

  if (v28)
  {
    v30 = 0xE600000000000000;
  }

  else
  {
    v30 = v27;
  }

  v38._countAndFlagsBits = v29;
  v38._object = v30;

  v31._countAndFlagsBits = 45;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);

  String.append(_:)(v38);

  if (*(v2 + 48))
  {
    v32 = 0x786F626F666E69;
  }

  else
  {
    v32 = 0x696C656372756F73;
  }

  if (*(v2 + 48))
  {
    v33 = 0xE700000000000000;
  }

  else
  {
    v33 = 0xEA00000000007473;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  if (qword_1006AEAD0 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_1006D3FF8);
  v35._countAndFlagsBits = 1735290926;
  v35._object = 0xE400000000000000;
  String.append(_:)(v35);
  URL.init(string:)();

  return result;
}

uint64_t sub_1001A2F48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x786F626F666E69;
  }

  else
  {
    v3 = 0x696C656372756F73;
  }

  if (v2)
  {
    v4 = 0xEA00000000007473;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x786F626F666E69;
  }

  else
  {
    v5 = 0x696C656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007473;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001A2FF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001A307C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001A30F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001A3174(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622220, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1001A31D4(uint64_t *a1@<X8>)
{
  v2 = 0x696C656372756F73;
  if (*v1)
  {
    v2 = 0x786F626F666E69;
  }

  v3 = 0xEA00000000007473;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001A3218(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x656E696C66666FLL;
  if (v2 != 1)
  {
    v4 = 0x64656B636F6CLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696C6E6FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656E696C66666FLL;
  if (*a2 != 1)
  {
    v8 = 0x64656B636F6CLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C6E6FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int sub_1001A3310()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001A33AC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001A3434(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A34CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A396C(*a1);
  *a2 = result;
  return result;
}

void sub_1001A34FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656E696C66666FLL;
  if (v2 != 1)
  {
    v5 = 0x64656B636F6CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001A3554()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  if (v3 <= 1.0)
  {
    result = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100552220;
    v5 = [v0 mainScreen];
    [v5 scale];
    v7 = v6;

    *(v4 + 56) = &type metadata for CGFloat;
    *(v4 + 64) = sub_1001A3848();
    *(v4 + 32) = v7;
    result = String.init(format:_:)();
  }

  *&xmmword_1006D3FF8 = result;
  *(&xmmword_1006D3FF8 + 1) = v9;
  return result;
}

uint64_t sub_1001A366C()
{
  _StringGuts.grow(_:)(60);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._object = 0x8000000100557550;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x6A624F796E41203ALL;
  v3._object = 0xED0000203A746365;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x203A6C65646F6D20;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 0x203A726F6C6F6320;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  if (v0[2]._object)
  {
    countAndFlagsBits = v0[2]._countAndFlagsBits;
    object = v0[2]._object;
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 9071406774580000;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x746E616972617620;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

unint64_t sub_1001A3848()
{
  result = qword_1006B5500;
  if (!qword_1006B5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5500);
  }

  return result;
}

unint64_t sub_1001A38C0()
{
  result = qword_1006B5508;
  if (!qword_1006B5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5508);
  }

  return result;
}

unint64_t sub_1001A3918()
{
  result = qword_1006B5510;
  if (!qword_1006B5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5510);
  }

  return result;
}

unint64_t sub_1001A396C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622270, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001A3A3C(uint64_t a1)
{
  v3 = type metadata accessor for FMIPUnknownItem();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC6FindMy16FMInfoAnnotation_unknownItem, v3, v5);
  FMIPUnknownItem.identifier.getter();
  (*(v4 + 8))(v7, v3);
  type metadata accessor for FMAnnotationIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1001A3B78()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMInfoAnnotation_unknownItem;
  v2 = type metadata accessor for FMIPUnknownItem();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy16FMInfoAnnotation_updateQueue);
}

id sub_1001A3C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMInfoAnnotation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A3D30(void **a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v9 = type metadata accessor for FMIPActionStatus();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10010478C(v15);
LABEL_4:
    (*(v10 + 104))(v12, enum case for FMIPActionStatus.error(_:), v9, v18);
    sub_1001A57A8();
    v20 = swift_allocError();
    *v21 = 1;
    v57(v12, v20);

    return (*(v10 + 8))(v12, v9);
  }

  v23 = v56;
  (*(v17 + 32))(v56, v15, v16);
  v24 = *(v5 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  if (v24)
  {
    v25 = qword_1006AEBE0;
    v55 = v24;
    if (a3)
    {
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100005B14(v26, qword_1006D4630);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v59 = v30;
        aBlock = a1;
        *v29 = 136315138;
        v61 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v31 = String.init<A>(describing:)();
        v33 = sub_100005B4C(v31, v32, &v59);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "FMFindingExperienceCoordinatorActions: Perform start fast advt action %s", v29, 0xCu);
        sub_100006060(v30);
        v23 = v56;
      }

      v34.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v35 = swift_allocObject();
      v36 = v58;
      *(v35 + 16) = v57;
      *(v35 + 24) = v36;
      v64 = sub_1001A60F4;
      v65 = v35;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1001A44B4;
      v63 = &unk_10062BE48;
      v37 = _Block_copy(&aBlock);

      v38 = v55;
      [v55 startFastAdvertisingForBeacon:v34.super.isa completion:v37];
      _Block_release(v37);
    }

    else
    {
      if (v25 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100005B14(v42, qword_1006D4630);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v59 = v46;
        aBlock = a1;
        *v45 = 136315138;
        v61 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v47 = String.init<A>(describing:)();
        v49 = sub_100005B4C(v47, v48, &v59);

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "FMFindingExperienceCoordinatorActions: Perform stop fast advt action %s", v45, 0xCu);
        sub_100006060(v46);
        v23 = v56;
      }

      v34.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v50 = swift_allocObject();
      v51 = v58;
      *(v50 + 16) = v57;
      *(v50 + 24) = v51;
      v64 = sub_1001A60F0;
      v65 = v50;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1001A44B4;
      v63 = &unk_10062BDF8;
      v52 = _Block_copy(&aBlock);

      v53 = v55;
      [v55 stopFastAdvertisingForBeacon:v34.super.isa completion:v52];

      _Block_release(v52);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v34.super.isa = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34.super.isa, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v34.super.isa, v40, "FMFindingExperienceCoordinatorActions: Trying to perform start fast advt but spFindingSession is nil", v41, 2u);
    }
  }

  return (*(v17 + 8))(v23, v16);
}

void sub_1001A44B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1001A4520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a1, v8);
  v34 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = a2;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_1001A4F54();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v32[1] = a1;
    v21 = a3;
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v20, v23, aBlock);
    a3 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMFindingExperienceCoordinatorActions: Perform Start Finding Action %s", v17, 0xCu);
    sub_100006060(v19);
    a2 = v33;

    v4 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v25 = *(v4 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  if (v25)
  {
    v26 = v25;
    v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    aBlock[4] = sub_1001A4FAC;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A44B4;
    aBlock[3] = &unk_10062BD08;
    v29 = _Block_copy(aBlock);

    [v26 startFindingBeacon:v27.super.isa completion:v29];
    _Block_release(v29);
  }

  else
  {
    v27.super.isa = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27.super.isa, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27.super.isa, v30, "FMFindingExperienceCoordinatorActions: Trying to perform start finding but spFindingSession is nil", v31, 2u);
    }
  }
}

void sub_1001A48DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a1, v8);
  v34 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = a2;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_1001A4F54();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v32[1] = a1;
    v21 = a3;
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v20, v23, aBlock);
    a3 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMFindingExperienceCoordinatorActions: Perform Stop Finding Action %s", v17, 0xCu);
    sub_100006060(v19);
    a2 = v33;

    v4 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v25 = *(v4 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  if (v25)
  {
    v26 = v25;
    v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    aBlock[4] = sub_1001A4F30;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A44B4;
    aBlock[3] = &unk_10062BCB8;
    v29 = _Block_copy(aBlock);

    [v26 stopFindingBeacon:v27.super.isa completion:v29];
    _Block_release(v29);
  }

  else
  {
    v27.super.isa = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27.super.isa, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27.super.isa, v30, "FMFindingExperienceCoordinatorActions: Trying to perform stop finding but spFindingSession is nil", v31, 2u);
    }
  }
}

uint64_t sub_1001A4C98(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for FMIPActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v13;
    v15 = v14;
    v24 = swift_slowAlloc();
    v26 = a1;
    v27 = v24;
    *v15 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v16 = String.init<A>(describing:)();
    v23 = a4;
    v18 = a2;
    v19 = sub_100005B4C(v16, v17, &v27);

    *(v15 + 4) = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v12, v25, v23, v15, 0xCu);
    sub_100006060(v24);
  }

  v20 = &enum case for FMIPActionStatus.success(_:);
  if (a1)
  {
    v20 = &enum case for FMIPActionStatus.error(_:);
  }

  (*(v8 + 104))(v10, *v20, v7);
  a2(v10, a1);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1001A4F54()
{
  result = qword_1006B7830;
  if (!qword_1006B7830)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B7830);
  }

  return result;
}

double sub_1001A4FD0(void **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v56 = a3;
  v8 = type metadata accessor for FMIPActionStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {

    goto LABEL_5;
  }

  v19 = v18;
  v57 = a5;

  UUID.init(uuidString:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10010478C(v14);
    a5 = v57;
LABEL_5:
    (*(v9 + 104))(v11, enum case for FMIPActionStatus.error(_:), v8);
    sub_1001A57A8();
    v20 = swift_allocError();
    *v21 = 1;
    sub_10020F7E0(v11, v20, a5);

    (*(v9 + 8))(v11, v8);
    goto LABEL_23;
  }

  v22 = v19;
  (*(v16 + 32))(v19, v14, v15);
  v23 = *(v58 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  if (v23)
  {
    v24 = qword_1006AEBE0;
    v25 = v23;
    if (v56)
    {
      v26 = a1;
      if (v24 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100005B14(v27, qword_1006D4630);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59 = v31;
        aBlock = v26;
        *v30 = 136315138;
        v61 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v32 = String.init<A>(describing:)();
        v34 = sub_100005B4C(v32, v33, &v59);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "FMFindingExperienceCoordinatorActions: Perform start fast advt action %s", v30, 0xCu);
        sub_100006060(v31);
      }

      v35.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v36 = swift_allocObject();
      v37 = v57;
      *(v36 + 16) = sub_1001A57A0;
      *(v36 + 24) = v37;
      v64 = sub_1001A5820;
      v65 = v36;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1001A44B4;
      v63 = &unk_10062BDA8;
      v38 = _Block_copy(&aBlock);

      [v25 startFastAdvertisingForBeacon:v35.super.isa completion:v38];
      _Block_release(v38);
    }

    else
    {
      v42 = a1;
      if (v24 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100005B14(v43, qword_1006D4630);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v59 = v47;
        aBlock = v42;
        *v46 = 136315138;
        v61 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v48 = String.init<A>(describing:)();
        v50 = sub_100005B4C(v48, v49, &v59);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "FMFindingExperienceCoordinatorActions: Perform stop fast advt action %s", v46, 0xCu);
        sub_100006060(v47);
      }

      v35.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v51 = swift_allocObject();
      v52 = v57;
      *(v51 + 16) = sub_1001A57A0;
      *(v51 + 24) = v52;
      v64 = sub_1001A57FC;
      v65 = v51;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_1001A44B4;
      v63 = &unk_10062BD58;
      v53 = _Block_copy(&aBlock);

      [v25 stopFastAdvertisingForBeacon:v35.super.isa completion:v53];

      _Block_release(v53);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v35.super.isa = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35.super.isa, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v35.super.isa, v40, "FMFindingExperienceCoordinatorActions: Trying to perform start fast advt but spFindingSession is nil", v41, 2u);
    }
  }

  (*(v16 + 8))(v22, v15);
LABEL_23:

  return result;
}

unint64_t sub_1001A57A8()
{
  result = qword_1006B5568;
  if (!qword_1006B5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5568);
  }

  return result;
}

double sub_1001A5844(void **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v60 = a4;
  v59 = a3;
  v10 = type metadata accessor for FMIPActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v14 - 8);
  v16 = &v58 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v61 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  v62 = v20;
  if (!a2)
  {

    goto LABEL_5;
  }

  v58 = a1;
  UUID.init(uuidString:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10010478C(v16);
LABEL_5:
    (*(v11 + 104))(v13, enum case for FMIPActionStatus.error(_:), v10);
    sub_1001A57A8();
    v21 = swift_allocError();
    *v22 = 1;
    sub_10045A78C(v13, v21, a5, a6);

    (*(v11 + 8))(v13, v10);
    goto LABEL_23;
  }

  v23 = v61;
  (*(v18 + 32))(v61, v16, v17);
  v24 = *(v60 + OBJC_IVAR____TtC6FindMy30FMFindingExperienceCoordinator_spFindingSession);
  v25 = v18;
  if (v24)
  {
    v26 = qword_1006AEBE0;
    v27 = v24;
    v28 = v62;
    if (v59)
    {
      v29 = v58;
      if (v26 != -1)
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
        aBlock = v29;
        *v33 = 136315138;
        v65 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v35 = String.init<A>(describing:)();
        v37 = v25;
        v38 = sub_100005B4C(v35, v36, &v63);

        *(v33 + 4) = v38;
        v25 = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "FMFindingExperienceCoordinatorActions: Perform start fast advt action %s", v33, 0xCu);
        sub_100006060(v34);
        v23 = v61;
      }

      v39.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1001A604C;
      *(v40 + 24) = v28;
      v68 = sub_1001A60F4;
      v69 = v40;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1001A44B4;
      v67 = &unk_10062BF10;
      v41 = _Block_copy(&aBlock);

      [v27 startFastAdvertisingForBeacon:v39.super.isa completion:v41];
      _Block_release(v41);
    }

    else
    {
      v45 = v58;
      if (v26 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100005B14(v46, qword_1006D4630);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v63 = v50;
        aBlock = v45;
        *v49 = 136315138;
        v65 = a2;

        sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
        v51 = String.init<A>(describing:)();
        v53 = v25;
        v54 = sub_100005B4C(v51, v52, &v63);

        *(v49 + 4) = v54;
        v25 = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "FMFindingExperienceCoordinatorActions: Perform stop fast advt action %s", v49, 0xCu);
        sub_100006060(v50);
        v23 = v61;
      }

      v39.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1001A604C;
      *(v55 + 24) = v28;
      v68 = sub_1001A60F0;
      v69 = v55;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1001A44B4;
      v67 = &unk_10062BEC0;
      v56 = _Block_copy(&aBlock);

      [v27 stopFastAdvertisingForBeacon:v39.super.isa completion:v56];

      _Block_release(v56);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v39.super.isa = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39.super.isa, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v39.super.isa, v43, "FMFindingExperienceCoordinatorActions: Trying to perform start fast advt but spFindingSession is nil", v44, 2u);
    }
  }

  (*(v25 + 8))(v23, v17);
LABEL_23:

  return result;
}

unint64_t sub_1001A6068()
{
  result = qword_1006B5570;
  if (!qword_1006B5570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5570);
  }

  return result;
}

void sub_1001A60F8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryVideoCard();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() mainBundle];
  v3 = *&v1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
  *&v1[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle] = v2;

  v4 = [v0 contentView];
  [v4 addSubview:v1];

  [v0 setDismissalType:3];
  sub_1001A6224();
}

void sub_1001A6224()
{
  v1 = v0;
  v27 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552F00;
  v3 = *&v1[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 mainContentGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v2 + 32) = v8;
  v9 = [v3 trailingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  v14 = [v3 topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 topAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v2 + 48) = v18;
  v19 = [v3 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 bottomAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];

  *(v2 + 56) = v23;
  v24 = [v3 heightAnchor];
  v25 = [v3 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:0.75];

  *(v2 + 64) = v26;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

id sub_1001A663C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryVideoCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A66A4()
{
  if (v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionButtonHidden] == 1)
  {
    [*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton] removeFromSuperview];
    [*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator] removeFromSuperview];
    v1 = &selRef_deactivateConstraints_;
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton]];
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator]];
    v1 = &selRef_activateConstraints_;
  }

  v2 = objc_opt_self();
  sub_10002B27C();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 *v1];
}

void *sub_1001A67B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_sectionLabel;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView;
  *&v2[v6] = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton;
  *&v2[v7] = [objc_opt_self() buttonWithType:1];
  v8 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator;
  *&v2[v8] = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentView;
  *&v2[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_platterBackgroundView;
  v11 = type metadata accessor for FMPlatterBackgroundView();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v23.receiver = v12;
  v23.super_class = v11;
  v13 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v3[v10] = v13;
  *&v3[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButtonShowingConstraints] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionEnabled] = 1;
  v3[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionButtonHidden] = 1;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for FMPlatterButtonGroupView();
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = v14;
  if (a2)
  {
    v16 = *(v14 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton);
    v17 = v14;
    v18 = v16;
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19 forState:0];
  }

  else
  {
    v20 = v14;
  }

  (*((swift_isaMask & *v15) + 0xE8))(v20);
  sub_1001A705C();

  return v15;
}

void sub_1001A6A2C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentView];
  v2 = [v1 layer];
  [v2 setCornerCurve:kCACornerCurveContinuous];

  v3 = [v1 layer];
  v41 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v42 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v40);
  v6 = _UISheetCornerRadius;
  if (v5)
  {
    v6 = 26.0;
  }

  [v3 setCornerRadius:v6];

  v7 = [v1 layer];
  [v7 setMasksToBounds:0];

  v41 = &type metadata for SolariumFeatureFlag;
  v42 = v4;
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100006060(v40);
  if (v7)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_platterBackgroundView]];
  }

  else
  {
    v8 = [v1 layer];
    [v8 setShouldRasterize:1];

    v9 = [v1 layer];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v9 setRasterizationScale:v12];
    v13 = [v1 layer];
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 CGColor];

    [v13 setShadowColor:v15];
    v16 = [v1 layer];
    LODWORD(v17) = 1031127695;
    [v16 setShadowOpacity:v17];

    v18 = [v1 layer];
    [v18 setShadowRadius:16.0];

    v19 = [v1 layer];
    [v19 setShadowOffset:{0.0, 0.0}];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v20 = [v0 traitCollection];
  v21 = sub_100356E0C(v20);

  [v1 setBackgroundColor:v21];
  v39 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView];
  [v39 setAxis:1];
  v22 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_sectionLabel];
  v23 = objc_opt_self();
  v24 = [v23 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v22 setFont:v24];

  [v22 setNumberOfLines:0];
  v25 = objc_opt_self();
  v26 = [v25 secondaryLabelColor];
  [v22 setTextColor:v26];

  [v22 setAdjustsFontForContentSizeCategory:1];
  v27 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton];
  v28 = [v27 titleLabel];
  if (v28)
  {
    v29 = v28;
    v30 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
    [v29 setFont:v30];
  }

  v31 = [v27 titleLabel];
  [v31 setAdjustsFontForContentSizeCategory:1];

  v32 = [v25 clearColor];
  [v27 setBackgroundColor:v32];

  [v27 setContentHorizontalAlignment:4];
  [v27 addTarget:v0 action:"handleAction" forControlEvents:64];
  v33 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator];
  v34 = [v25 labelColor];
  v35 = [v34 colorWithAlphaComponent:0.1];

  [v33 setBackgroundColor:v35];
  [v0 addSubview:v22];
  [v0 addSubview:v1];
  [v0 addSubview:v39];
  v36 = [v27 titleLabel];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 text];

    if (v38)
    {

      [v0 addSubview:v27];
    }
  }
}

void sub_1001A705C()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006D4798;
  v81 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v82 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v80);
  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = *&qword_1006D4798;
  }

  [*&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator] setTranslatesAutoresizingMaskIntoConstraints:0];
  v78 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton];
  [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
  v79 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_sectionLabel];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = &type metadata for SolariumFeatureFlag;
  v82 = v2;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v80);
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_platterBackgroundView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v77 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1005521F0;
    v10 = [v8 topAnchor];
    v11 = [v6 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v8 leadingAnchor];
    v14 = [v5 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v8 trailingAnchor];
    v17 = [v5 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v8 bottomAnchor];
    v20 = [v5 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:isa];
  }

  v76 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100552EF0;
  v24 = [v79 topAnchor];
  v25 = [v0 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v23 + 32) = v26;
  v27 = [v79 leadingAnchor];
  v28 = [v0 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  v30 = [v79 trailingAnchor];
  v31 = [v0 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-v4];

  *(v23 + 48) = v32;
  sub_10002B27C();
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v33];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1005521F0;
  v35 = [v5 topAnchor];
  v36 = [v6 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [v5 leadingAnchor];
  v39 = [v6 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v4];

  *(v34 + 40) = v40;
  v41 = [v5 trailingAnchor];
  v42 = [v6 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v4];

  *(v34 + 48) = v43;
  v44 = [v5 bottomAnchor];
  v45 = [v0 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v34 + 56) = v46;
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v47];

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100552EF0;
  v49 = [v6 topAnchor];
  v50 = [v79 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:7.0];

  *(v48 + 32) = v51;
  v52 = [v6 leadingAnchor];
  v53 = [v0 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v4];

  *(v48 + 40) = v54;
  v55 = [v6 trailingAnchor];
  v56 = [v0 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-v4];

  *(v48 + 48) = v57;
  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v58];

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1005521F0;
  v60 = [v78 topAnchor];
  v61 = [v6 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:8.0];

  *(v59 + 32) = v62;
  v63 = [v78 leadingAnchor];
  v64 = [v0 leadingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:v1];

  *(v59 + 40) = v65;
  v66 = [v78 trailingAnchor];
  v67 = [v0 trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-v1];

  *(v59 + 48) = v68;
  v69 = [v78 bottomAnchor];
  v70 = [v0 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:-12.0];

  *(v59 + 56) = v71;
  *&v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButtonShowingConstraints] = v59;

  v72 = [v78 titleLabel];
  if (v72 && (v73 = v72, v74 = [v72 text], v73, v74))
  {

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v0[OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionButtonHidden] = v75;
  sub_1001A66A4();
}

id sub_1001A7C20(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMPlatterButtonGroupView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001A7D14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_sectionLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton;
  *(v0 + v4) = [objc_opt_self() buttonWithType:1];
  v5 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_buttonSeparator;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_platterBackgroundView;
  v8 = type metadata accessor for FMPlatterBackgroundView();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v11.receiver = v9;
  v11.super_class = v8;
  v10 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v7) = v10;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButtonShowingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_isActionButtonHidden) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001A7EC4(void *a1)
{
  v3 = [a1 viewForKey:UITransitionContextToViewKey];
  if (!v3)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v44 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v44, v21, "FMR1FindingViewPresentedTransition: Invalid presented view controller", v22, 2u);
    }

    goto LABEL_22;
  }

  v44 = v3;
  v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v4 || (v5 = v4, v6 = [v4 view], v5, !v6))
  {
LABEL_17:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMR1FindingViewPresentedTransition: Invalid presenting view controller", v26, 2u);
    }

LABEL_22:

    return;
  }

  v7 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v7)
  {
    v8 = v6;
LABEL_16:

    goto LABEL_17;
  }

  v8 = v7;
  type metadata accessor for FMCardContainerViewController();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_16;
  }

  v10 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer;
  v11 = v9;
  [*(v9 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer) bounds];
  Width = CGRectGetWidth(v52);
  [*(v11 + v10) bounds];
  Height = CGRectGetHeight(v53);
  [v6 bounds];
  v12 = CGRectGetWidth(v54);
  [v6 bounds];
  v13 = CGRectGetHeight(v55);
  [v44 setFrame:0.0, 0.0, v12, v13];
  v14 = [a1 containerView];
  [v14 insertSubview:v44 belowSubview:v6];

  [v44 layoutIfNeeded];
  [v44 setFrame:0.0, 0.0, v12, v13];
  [v44 setAlpha:0.0];
  v15 = [a1 containerView];
  type metadata accessor for FMPassthroughView();
  v16 = v15;
  v17 = v16;
  while (1)
  {
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      break;
    }

    v19 = [v16 superview];

    v17 = v19;
    if (!v19)
    {
      v17 = v16;
      goto LABEL_26;
    }
  }

  v27 = v18;

  *(v27 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 0;
LABEL_26:

  sub_100249010(a1);
  v28 = objc_opt_self();
  v29 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_duration);
  v30 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_delay);
  v31 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_animationOptions);
  v32 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_mass);
  v33 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_stiffness);
  v34 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_springDamping);
  v35 = *(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_initialSpringVelocity);
  v36 = swift_allocObject();
  *(v36 + 2) = v44;
  *(v36 + 3) = v6;
  v36[4] = Width;
  v36[5] = Height;
  v36[6] = v12;
  v36[7] = v13;
  v49 = sub_1001A8624;
  v50 = v36;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100004AE4;
  v48 = &unk_10062BFF0;
  v37 = _Block_copy(&aBlock);
  v38 = v44;
  v39 = v6;

  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  v49 = sub_1001A8698;
  v50 = v40;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_10037A044;
  v48 = &unk_10062C040;
  v41 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v28 _animateUsingSpringWithDuration:v31 delay:v37 options:v41 mass:v29 stiffness:v30 damping:v32 initialVelocity:v33 animations:v34 completion:v35];
  _Block_release(v41);
  _Block_release(v37);
}

id sub_1001A85CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMR1FindingViewPresentedTransition();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001A8624()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setFrame:{0.0, v2, v3, v4}];
}

id sub_1001A8698()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

unint64_t sub_1001A8700(uint64_t a1, void *a2, void *a3, void *a4)
{
  _StringGuts.grow(_:)(38);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x203A747261747320;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v10 = [a3 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x203A646E6520;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16 = [a4 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return 0xD00000000000001BLL;
}

uint64_t sub_1001A8864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1001A8AD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for IndexPath() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_1001A8DD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1001A9010(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1001A92DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1001A9540(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for IndexPath() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

void *sub_1001A986C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton;
  v4 = type metadata accessor for FMEmptyListButton();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v7 = objc_opt_self();
  *&v5[v6] = [v7 systemBlueColor];
  v5[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v2 + v3) = sub_100038758([v7 tertiarySystemFillColor], 1, 1, 0);
  *(v2 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButtonHeight) = 0;
  v8 = OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButton;
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v9[v10] = [v7 systemBlueColor];
  v9[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v2 + v8) = sub_100038758([v7 tertiarySystemFillColor], 1, 1, 0);
  *(v2 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButtonHeight) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_cardChangeSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_devicesSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_lastCardPercentage) = 0;

  v12 = sub_10003C3C0(v11);
  sub_1001AA268();

  return v12;
}

double sub_1001A9A14()
{
  swift_unknownObjectRelease();

  return result;
}

id sub_1001A9A94()
{
  sub_1001AA5E8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemTerminalView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A9BC8()
{
  v1 = v0;
  sub_10003C490();
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView);
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v7 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000, v3, v4, v5, v6, v51);
  [v2 setImage:v7];

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton);
  v9 = *&v8[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v10 = objc_opt_self();
  v11 = v9;
  v52 = v10;
  v12 = [v10 mainBundle];
  v53._object = 0x8000000100579A00;
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100584560;
  v14.value._object = 0x80000001005799E0;
  v53._countAndFlagsBits = 0xD000000000000018;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v53);

  v16 = String._bridgeToObjectiveC()();

  [v11 setText:v16];

  v17 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v17];

  v18 = *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton);
  v19 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v20 = *&v18[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v21 = [v20 font];
  if (v21)
  {
    v22 = v21;
    sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightRegular;
    v24 = UIFontWeightTrait;
    v25 = sub_10002AB84(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
    v26 = sub_10002ACDC(v25);

    [v20 setFont:v26];

    v27 = *&v18[v19];
    v28 = [v52 mainBundle];
    v54._object = 0x8000000100579A00;
    v29._countAndFlagsBits = 0xD000000000000019;
    v29._object = 0x8000000100584580;
    v30.value._object = 0x80000001005799E0;
    v54._countAndFlagsBits = 0xD000000000000018;
    v30.value._countAndFlagsBits = 0xD000000000000013;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v54);

    v32 = String._bridgeToObjectiveC()();

    [v27 setText:v32];

    v33 = String._bridgeToObjectiveC()();
    [v18 setAccessibilityIdentifier:v33];

    v34 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView);
    [v34 addArrangedSubview:v18];
    v35 = *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButton);
    v36 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
    v37 = *&v35[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
    v38 = [v37 font];
    if (v38)
    {
      v39 = v38;
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_100552220;
      *(v40 + 32) = v24;
      v41 = v40 + 32;
      *(v40 + 40) = UIFontWeightRegular;
      v42 = sub_10002AB84(v40);
      swift_setDeallocating();
      sub_100012DF0(v41, &qword_1006B47A0, &qword_100552690);
      v43 = sub_10002ACDC(v42);

      [v37 setFont:v43];

      v44 = *&v35[v36];
      v45 = [v52 mainBundle];
      v55._object = 0x8000000100579A00;
      v46._countAndFlagsBits = 0xD00000000000001DLL;
      v46._object = 0x80000001005845C0;
      v47.value._object = 0x80000001005799E0;
      v55._countAndFlagsBits = 0xD000000000000018;
      v47.value._countAndFlagsBits = 0xD000000000000013;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v55);

      v49 = String._bridgeToObjectiveC()();

      [v44 setText:v49];

      v50 = String._bridgeToObjectiveC()();
      [v35 setAccessibilityIdentifier:v50];

      [v34 addArrangedSubview:v35];
      sub_1001AA740(0, 1.0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1001AA194()
{
  sub_10003B068();
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton) heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.0];

  v3 = *(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButtonHeight);
  *(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButtonHeight) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setActive:1];
  }
}

uint64_t sub_1001AA268()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24);
  type metadata accessor for FMDevicesSubscription(0);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062C250;
  swift_unknownObjectWeakAssign();
  v4 = *(v2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_devicesSubscription) = v3;

  v5 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  v6 = qword_1006D4E20;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001AB748;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10046DEDC;
  aBlock[3] = &unk_10062C408;
  v8 = _Block_copy(aBlock);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_cardChangeSubscription) = v9;
  return swift_unknownObjectRelease();
}

void sub_1001AA4A4(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v9), (v5 & 1) == 0))
  {

    sub_10004CDB8(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v10);
  sub_10004CDB8(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_100012DF0(&v10, &unk_1006B8740, &unk_100552DA0);
    return;
  }

  if (swift_dynamicCast())
  {
    v6 = *v9;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1001AA740(1, v6);
    }
  }
}

void sub_1001AA5E8()
{
  v1 = OBJC_IVAR____TtC6FindMy18FMItemTerminalView_devicesSubscription;
  if (*(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_devicesSubscription))
  {
    v2 = *(*(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 24) + 16);

    os_unfair_lock_lock((v2 + 24));
    sub_10008FB6C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));

    *(v0 + v1) = 0;

    v3 = [objc_opt_self() defaultCenter];
    v4 = v3;
    if (qword_1006AEDB8 != -1)
    {
      swift_once();
      v3 = v4;
    }

    [v3 removeObserver:v0 name:qword_1006D4E20 object:{0, v4}];
  }
}

void sub_1001AA740(char a1, double a2)
{
  v3 = v2;
  v21 = &type metadata for SolariumFeatureFlag;
  v6 = sub_10000BD04();
  v22 = v6;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v20);
  if (v7)
  {
    if (a2 >= 0.5)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else if (a2 >= 0.64)
  {
    goto LABEL_3;
  }

  v9 = sub_1000E4BAC();

  v10 = v9[2];

  v8 = v10 != 0;
LABEL_6:
  v21 = &type metadata for SolariumFeatureFlag;
  v22 = v6;
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v20);
  if (v11)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 0.64;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v12 > a2;
  *&v3[OBJC_IVAR____TtC6FindMy18FMItemTerminalView_lastCardPercentage] = a2;
  if (a1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    v16[2] = sub_1001AB6A4;
    v16[3] = v13;
    v16[4] = sub_1001AB6D4;
    v16[5] = v14;
    v22 = sub_1001AB704;
    v23 = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100004AE4;
    v21 = &unk_10062C3B8;
    v17 = _Block_copy(v20);
    v18 = v3;

    [v15 animateWithDuration:0x20000 delay:v17 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:0.4];
    _Block_release(v17);
  }

  else
  {
    v19 = v3;
    sub_1001AAA10(v19, v8, &OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton, &OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButtonHeight);
    sub_1001AAA10(v19, v12 > a2, &OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButton, &OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButtonHeight);
  }
}

id sub_1001AAA10(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = *(a1 + *a3);
  v8 = a2 ^ 1;
  if ((([v7 isHidden] ^ a2) & 1) == 0)
  {
    [v7 setHidden:v8 & 1];
  }

  v9 = *&v7[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  if ((([v9 isHidden] ^ a2) & 1) == 0)
  {
    [v9 setHidden:v8 & 1];
  }

  v10 = 0.0;
  if (a2)
  {
    v10 = 1.0;
  }

  [v7 setAlpha:v10];
  v11 = *(a1 + *a4);

  return [v11 setActive:v8 & 1];
}

void sub_1001AAB08()
{
  sub_10003D290();
  if (*(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5._countAndFlagsBits = 0xD000000000000016;
  v21._object = 0x8000000100579A00;
  v5._object = 0x80000001005844D0;
  v6.value._object = 0x80000001005799E0;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v21);

  v8 = String._bridgeToObjectiveC()();

  [v2 setText:v8];

  v9 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v10 = [v3 mainBundle];
  v22._object = 0x8000000100579A00;
  v11._object = 0x80000001005844F0;
  v12.value._object = 0x80000001005799E0;
  v11._countAndFlagsBits = 0xD000000000000018;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v22);

  v14 = String._bridgeToObjectiveC()();

  [v9 setText:v14];

  v15 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v16 = [v3 mainBundle];
  v17._countAndFlagsBits = 0xD000000000000011;
  v23._object = 0x8000000100584530;
  v17._object = 0x8000000100584510;
  v23._countAndFlagsBits = 0xD000000000000023;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v23);

  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];
}

void sub_1001AAEE8()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) addGestureRecognizer:v1];

  v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleSecondaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton) addGestureRecognizer:v2];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTertiaryAction"];
  [*(v0 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButton) addGestureRecognizer:v3];
}

uint64_t sub_1001AB064(const char *a1, char a2)
{
  v5 = v2;
  v6 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  v16 = *(*(v5 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v16 + v17, v8);
  swift_beginAccess();

  sub_100058530(v11, v16 + v17);
  swift_endAccess();
  sub_100058594(v8);

  sub_10005D4E4(v8);
  return sub_10005D4E4(v11);
}

uint64_t sub_1001AB2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v9;
    v18 = v6;
    v19 = v11;
    v20 = v7;
    v21 = v4;
    v22 = v10;
    v23 = v17;
    *v17 = 134217984;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "FMNoItemView: devicesProvider didUpdate unknownItems %ld", v23, 0xCu);
    v10 = v22;
    v4 = v21;
    v7 = v20;
    v11 = v19;
    v6 = v18;
    v9 = v33;
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  aBlock[4] = sub_1001AB670;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062C318;
  v26 = _Block_copy(aBlock);
  v27 = v4;

  v28 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v28, v29, v30);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1001AB704()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

void sub_1001AB750()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButton;
  v3 = type metadata accessor for FMEmptyListButton();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v6 = objc_opt_self();
  *&v4[v5] = [v6 systemBlueColor];
  v4[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v2) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_secondaryActionButtonHeight) = 0;
  v7 = OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButton;
  v8 = objc_allocWithZone(v3);
  v9 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *&v8[v9] = [v6 systemBlueColor];
  v8[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v7) = sub_100038758([v6 tertiarySystemFillColor], 1, 1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_tertiaryActionButtonHeight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_cardChangeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_devicesSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMItemTerminalView_lastCardPercentage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001AB900(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = &type metadata for SolariumFeatureFlag;
  v25[4] = sub_10000BD04();
  v8 = isFeatureEnabled(_:)();
  sub_100006060(v25);
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    goto LABEL_9;
  }

  type metadata accessor for FMAppDelegate();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = *(v11 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController)) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_100062074(a2, v7);
    objc_allocWithZone(type metadata accessor for FMChooseMapSheetControllerLegacy(0));

    return sub_1001ABB10(v17, v7);
  }

  v13 = *(v12 + OBJC_IVAR____TtC6FindMy20FMMainViewController_mapController);
  v14 = a3;
  if (!a3)
  {
    v15 = *(v13 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
    if (v15)
    {
      v14 = *(v15 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton);
      v16 = v14;
    }

    else
    {
      v14 = 0;
    }
  }

  v19 = *(v13 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  sub_100062074(a2, v7);
  objc_allocWithZone(type metadata accessor for FMMapKitOptionsViewController(0));
  v20 = a3;
  v21 = v19;

  v23 = sub_10050FEC4(v22, v21, v7, v14);
  swift_unknownObjectRelease();
  return v23;
}

id sub_1001ABB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_blurredBackground;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for FMChooseMapSheetControllerLegacy.FMBlurredBackgroundView()) init];
  v8 = OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_closeButton;
  *&v3[v8] = [objc_opt_self() buttonWithType:7];
  *&v3[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_mediator] = a1;
  sub_100062074(a2, &v3[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_previousSelection]);
  My = type metadata accessor for Feature.FindMy();
  v36[3] = My;
  v36[4] = sub_1000069D8();
  v10 = sub_100008FC0(v36);
  (*(*(My - 8) + 104))(v10, enum case for Feature.FindMy.springfieldIntegration(_:), My);

  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v36);
  if (My)
  {
    v11 = objc_allocWithZone(type metadata accessor for FMChooseMapViewController());

    v13 = sub_100259DF0(v12);
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for FMMapSettingsViewController());

    v13 = sub_10010C160(v15);
  }

  *&v3[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_content] = v13;
  v35.receiver = v3;
  v35.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v35, "initWithNibName:bundle:", 0, 0);
  v17 = qword_1006AEC30;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = [objc_opt_self() mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  [v18 setPreferredContentSize:{fmin(v21, 420.0), fmin(v23, 420.0)}];
  v24 = [v18 presentationController];

  if (v24)
  {
    [v24 setDelegate:v18];
  }

  v25 = v18;
  v26 = [v25 sheetPresentationController];
  if (v26)
  {
    v27 = v26;
    [v26 setPrefersGrabberVisible:1];
  }

  v28 = [v25 sheetPresentationController];

  if (v28)
  {
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1005528C0;
    sub_10000905C(0, &qword_1006B5940, UISheetPresentationControllerDetent_ptr);
    v30 = String._bridgeToObjectiveC()();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100557A60;
    *(v31 + 32) = xmmword_100557A70;
    v32 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v29 + 32) = v32;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 setDetents:isa];

    sub_10005D4E4(a2);
  }

  else
  {
    sub_10005D4E4(a2);
  }

  return v25;
}

uint64_t sub_1001ABFCC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v17 - v9;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1, v8);
  v11 = *&v1[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_mediator];
  v12 = *(v11 + 56);
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v13, v10);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v12) = sub_10005F7D0(v10, v6);
  sub_10005D4E4(v6);
  result = sub_10005D4E4(v10);
  if (v12)
  {
    v15 = *(v11 + 56);
    sub_100062074(&v1[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_previousSelection], v10);
    v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v15 + v16, v6);
    swift_beginAccess();

    sub_100058530(v10, v15 + v16);
    swift_endAccess();
    sub_100058594(v6);

    sub_10005D4E4(v6);
    return sub_10005D4E4(v10);
  }

  return result;
}

id sub_1001AC1F0()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_blurredBackground];
  [result addSubview:v3];

  v4 = *&v0[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_closeButton];
  [v4 addTarget:v0 action:"handleCloseAction" forControlEvents:64];
  v5 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100584810;
  v6._countAndFlagsBits = 0x55425F45534F4C43;
  v6._object = 0xEC0000004E4F5454;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v14);

  v8 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v8];

  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  [result addSubview:v4];

  v10 = *&v0[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_content];
  [v0 addChildViewController:v10];
  v11 = [v3 contentView];
  result = [v10 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = result;
  [v11 addSubview:result];

  return [v10 didMoveToParentViewController:v0];
}

void sub_1001AC410()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_blurredBackground];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v2 topAnchor];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v2 bottomAnchor];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v3 + 40) = v13;
  v14 = [v2 leadingAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v3 + 48) = v18;
  v19 = [v2 trailingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 trailingAnchor];

  v24 = [v19 constraintEqualToAnchor:v23];
  *(v3 + 56) = v24;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v74 = v22;
  [v22 activateConstraints:isa];

  v26 = *&v1[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_closeButton];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1005521F0;
  v28 = [v26 topAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor:v31 constant:15.0];
  *(v27 + 32) = v32;
  v33 = [v26 trailingAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v33 constraintEqualToAnchor:v37];

  *(v27 + 40) = v38;
  v39 = [v26 heightAnchor];
  v40 = [v39 constraintEqualToConstant:36.0];

  *(v27 + 48) = v40;
  v41 = [v26 widthAnchor];
  v42 = [v41 constraintEqualToConstant:36.0];

  *(v27 + 56) = v42;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:v43];

  v44 = *&v1[OBJC_IVAR____TtC6FindMyP33_57E27A9BE53D2C5A673EFEC8E661CDD732FMChooseMapSheetControllerLegacy_content];
  v45 = [v44 view];
  if (!v45)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v45;
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = [v44 view];
  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = v47;
  [v47 setPreservesSuperviewLayoutMargins:1];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1005521F0;
  v50 = [v44 view];
  if (!v50)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v51 = v50;
  v52 = [v50 topAnchor];

  v53 = [v2 contentView];
  v54 = [v53 topAnchor];

  v55 = [v52 constraintEqualToAnchor:v54];
  *(v49 + 32) = v55;
  v56 = [v44 view];
  if (!v56)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v57 = v56;
  v58 = [v56 bottomAnchor];

  v59 = [v2 contentView];
  v60 = [v59 bottomAnchor];

  v61 = [v58 constraintEqualToAnchor:v60];
  *(v49 + 40) = v61;
  v62 = [v44 view];
  if (!v62)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v2 contentView];
  v66 = [v65 leadingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66];
  *(v49 + 48) = v67;
  v68 = [v44 view];
  if (!v68)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v69 = v68;
  v70 = [v68 trailingAnchor];

  v71 = [v2 contentView];
  v72 = [v71 trailingAnchor];

  v73 = [v70 constraintEqualToAnchor:v72];
  *(v49 + 56) = v73;
  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:v75];
}

id sub_1001ACCD8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v1 = [objc_opt_self() effectWithStyle:1100];
  v2 = objc_msgSendSuper2(&v7, "initWithEffect:", v1);

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 _setGroupName:{v4, v7.receiver, v7.super_class}];

  if (qword_1006AEC38 != -1)
  {
    swift_once();
  }

  v5 = qword_1006D47B8;
  [v3 _setCaptureView:v5];

  return v3;
}

uint64_t type metadata accessor for FMChooseMapSheetControllerLegacy(uint64_t a1)
{
  result = qword_1006B5900;
  if (!qword_1006B5900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ACFBC(uint64_t a1)
{
  result = type metadata accessor for FMSelectedSection(319);
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

id sub_1001AD0D0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController;
  *&v4[v9] = [objc_opt_self() sharedMenuController];
  v4[OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FMCopyableLabel();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v10 setUserInteractionEnabled:1];
  v11 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v10 action:"showMenuWithSender:"];
  [v10 addGestureRecognizer:v11];

  return v10;
}

id sub_1001AD200(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController;
  *&v1[v3] = [objc_opt_self() sharedMenuController];
  v1[OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMCopyableLabel();
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setUserInteractionEnabled:1];
    v7 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v6 action:"showMenuWithSender:"];
    [v6 addGestureRecognizer:v7];

    a1 = v7;
  }

  return v5;
}

id sub_1001AD4F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMCopyableLabel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001AD55C()
{
  result = [v0 becomeFirstResponder];
  if (v0[OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled] == 1)
  {
    v2 = OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController;
    result = [*&v0[OBJC_IVAR____TtC6FindMy15FMCopyableLabel_menuController] isMenuVisible];
    if ((result & 1) == 0)
    {
      [*&v0[v2] setArrowDirection:2];
      [v0 bounds];
      v4 = v3;
      [v0 bounds];
      v6 = v5 + 4.0;
      [v0 bounds];
      v8 = v7;
      [v0 bounds];
      v9 = *&v0[v2];

      return [v9 showMenuFromView:v0 rect:{v4, v6, v8}];
    }
  }

  return result;
}

uint64_t sub_1001AD66C(uint64_t a1, int a2)
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

uint64_t sub_1001AD6B4(uint64_t result, int a2, int a3)
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

Swift::Int sub_1001AD70C()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1001AD7B0(uint64_t a1)
{
  v2 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1001AD868(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001AD908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1001AD9AC(v5, v7) & 1;
}

unint64_t sub_1001AD958()
{
  result = qword_1006B5980;
  if (!qword_1006B5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5980);
  }

  return result;
}

uint64_t sub_1001AD9AC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (v7)
        {
          sub_100152B54();
          v8 = v7;
          v9 = v6;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001ADA70(uint64_t a1)
{
  v42 = type metadata accessor for FMItemCellViewModel(0);
  v2 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  result = sub_100153604(_swiftEmptyArrayStorage);
  v44 = result;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = *(v2 + 80);
  v40 = v9;
  v41 = (v9 + 32) & ~v9;
  v10 = a1 + v41;
  v11 = *(v2 + 72);
  v39 = xmmword_100552220;
  while (1)
  {
    sub_1001ADDF8(v10, v6);
    v12 = v6[*(v42 + 84)];
    v13 = v44;
    if (*(v44 + 16))
    {
      sub_1001C2758();
      if (v14)
      {
        v16 = sub_1004B1D94(v43, v12);
        if (*v15)
        {
          v17 = v15;
          sub_1001ADDF8(v6, v38);
          v18 = *v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v17 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_10008BB7C(0, v18[2] + 1, 1, v18);
            *v17 = v18;
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_10008BB7C((v20 > 1), v21 + 1, 1, v18);
            *v17 = v18;
          }

          v18[2] = v21 + 1;
          sub_10019AA14(v38, v18 + v41 + v21 * v11);
        }

        (v16)(v43, 0);
        sub_1001ADE5C(v6);
        goto LABEL_5;
      }
    }

    sub_10007EBC0(&unk_1006AF8A0, &unk_100555DE0);
    v22 = v41;
    v23 = swift_allocObject();
    *(v23 + 16) = v39;
    sub_1001ADDF8(v6, v23 + v22);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v13;
    v26 = sub_1001C2758();
    v27 = v13[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v13[3] >= v29)
    {
      if (v24)
      {
        v33 = v43[0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1001BDC10();
        v33 = v43[0];
        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1001B5C84(v29, v24);
      v31 = sub_1001C2758();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

      v26 = v31;
      v33 = v43[0];
      if ((v30 & 1) == 0)
      {
LABEL_22:
        v33[(v26 >> 6) + 8] |= 1 << v26;
        *(v33[6] + v26) = v12;
        *(v33[7] + 8 * v26) = v23;
        sub_1001ADE5C(v6);
        v34 = v33[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_29;
        }

        v33[2] = v36;
        goto LABEL_4;
      }
    }

    *(v33[7] + 8 * v26) = v23;

    sub_1001ADE5C(v6);
LABEL_4:
    v44 = v33;
LABEL_5:
    v10 += v11;
    if (!--v8)
    {
      return v44;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001ADDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMItemCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ADE5C(uint64_t a1)
{
  v2 = type metadata accessor for FMItemCellViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *FMTaskScheduler.shared.unsafeMutableAddressor()
{
  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  return &static FMTaskScheduler.shared;
}

uint64_t sub_1001ADF1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  sub_100003E90();
  v25 = a1;
  v26 = a2;

  v12._object = 0x8000000100584940;
  v12._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v12);
  static DispatchQoS.default.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  *(v2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = [objc_allocWithZone(NSOperationQueue) init];
  *(v3 + 24) = v13;
  v14 = v24;
  v25 = v24;
  v26 = a2;

  v15 = v13;
  v16._object = 0x8000000100584960;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  [v15 setName:v17];

  [*(v3 + 24) setMaxConcurrentOperationCount:-1];
  [*(v3 + 24) setUnderlyingQueue:*(v3 + 16)];
  v18 = [objc_allocWithZone(NSOperationQueue) init];
  *(v3 + 32) = v18;
  v25 = v14;
  v26 = a2;

  v19 = v18;
  v20._countAndFlagsBits = 0xD000000000000019;
  v20._object = 0x8000000100584980;
  String.append(_:)(v20);

  v21 = String._bridgeToObjectiveC()();

  [v19 setName:v21];

  [*(v3 + 32) setMaxConcurrentOperationCount:1];
  return v3;
}

uint64_t sub_1001AE250()
{
  type metadata accessor for FMTaskScheduler();
  v0 = swift_allocObject();
  result = sub_1001ADF1C(0x746C7561666564, 0xE700000000000000);
  static FMTaskScheduler.shared = v0;
  return result;
}

double static FMTaskScheduler.shared.getter()
{
  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  return result;
}

void FMTaskScheduler.schedule(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_10062C4E0;
  v4 = _Block_copy(v5);

  [v3 addOperationWithBlock:v4];
  _Block_release(v4);
}

void FMTaskScheduler.scheduleAfter(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v28 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v27 = *(v5 + 16);
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v14 + 8);
  v20(v16, v13);
  v21 = swift_allocObject();
  v22 = v28;
  v21[2] = v5;
  v21[3] = v22;
  v21[4] = a2;
  aBlock[4] = sub_1001AE7E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062C530;
  v23 = _Block_copy(aBlock);

  v24 = static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100037918(v24, v25, v26);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v9, v7);
  (*(v29 + 8))(v12, v30);
  v20(v19, v13);
}

void sub_1001AE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_10062C5D0;
  v4 = _Block_copy(v5);

  [v3 addOperationWithBlock:v4];
  _Block_release(v4);
}

void FMTaskScheduler.scheduleLowPriority(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_10062C558;
  v4 = _Block_copy(v5);

  [v3 addOperationWithBlock:v4];
  _Block_release(v4);
}

uint64_t FMTaskScheduler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static FMTaskScheduler.schedule(_:)(uint64_t a1)
{
  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  v2 = *(static FMTaskScheduler.shared + 24);

  return [v2 addOperation:a1];
}

void static FMTaskScheduler.schedule(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEAD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = *(static FMTaskScheduler.shared + 24);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100004AE4;
  v6[3] = &unk_10062C580;
  v4 = _Block_copy(v6);

  [v3 addOperationWithBlock:v4];
  _Block_release(v4);
}

void static FMTaskScheduler.scheduleAfter(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_1006AEAD8 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a1 = v4;
    a2 = v5;
  }

  FMTaskScheduler.scheduleAfter(_:_:)(a1, a2, a3, a4);
}

id static FMTaskScheduler.callbackQueue.getter()
{
  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  v0 = *(static FMTaskScheduler.shared + 16);

  return v0;
}

id static FMTaskScheduler.scheduleLowPriority(_:)(uint64_t a1)
{
  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  v2 = *(static FMTaskScheduler.shared + 32);

  return [v2 addOperation:a1];
}

void static FMTaskScheduler.scheduleLowPriority(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEAD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = *(static FMTaskScheduler.shared + 32);
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100004AE4;
  v6[3] = &unk_10062C5A8;
  v4 = _Block_copy(v6);

  [v3 addOperationWithBlock:v4];
  _Block_release(v4);
}

uint64_t sub_1001AED48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1001BBC04(a1, a2, isUniquelyReferenced_nonNull_native, &qword_1006B3928, &qword_100557F60);
    result = sub_1001C21D8(a2, type metadata accessor for FMAccessoryProductImageRequest);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1001B3C04(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1001BE4C0(&qword_1006B3928, &qword_100557F60);
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for FMAccessoryProductImageRequest(0);
      sub_1001C21D8(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for FMAccessoryProductImageRequest);

      sub_1001BA0E4(v10, v12);
      result = sub_1001C21D8(a2, type metadata accessor for FMAccessoryProductImageRequest);
      *v3 = v12;
    }

    else
    {
      return sub_1001C21D8(a2, type metadata accessor for FMAccessoryProductImageRequest);
    }
  }

  return result;
}

uint64_t sub_1001AEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1001BC07C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1001C21D8(a3, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    *v3 = v17;
  }

  else
  {
    v10 = sub_1001B3E04(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_1001BEA1C();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
      sub_1001C21D8(v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);

      sub_1001BA480(v12, v14);
      result = sub_1001C21D8(a3, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      *v4 = v14;
    }

    else
    {
      return sub_1001C21D8(a3, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    }
  }

  return result;
}

void sub_1001AF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    sub_1001BC22C(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v22;
  }

  else
  {
    v15 = sub_10000726C(a5, a6);
    v17 = v16;

    if (v17)
    {
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v7;
      v23 = *v7;
      if (!v18)
      {
        sub_1001BEC64();
        v19 = v23;
      }

      v20 = *(v19 + 56) + 32 * v15;
      v21 = *(v20 + 16);

      sub_1001BA7C0(v15, v19);
      *v7 = v19;
    }
  }
}

uint64_t sub_1001AF140(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007EBC0(&qword_1006B5CB0, &qword_100557E88);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for FMUnknownItemCellViewModel(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_100012DF0(a1, &qword_1006B5CB0, &qword_100557E88);
    sub_1001B4E50(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100012DF0(v7, &qword_1006B5CB0, &qword_100557E88);
  }

  else
  {
    sub_1001C252C(a1, v11, type metadata accessor for FMUnknownItemCellViewModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1001BC748(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1001AF360(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1001BC930(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1001C21D8(a3, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
    *v3 = v18;
  }

  else
  {
    v10 = sub_1001B3D38(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v19 = *v4;
      if (!v13)
      {
        sub_1001BF688();
        v14 = v19;
      }

      v15 = *(v14 + 48);
      v16 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
      sub_1001C21D8(v15 + *(*(v16 - 8) + 72) * v12, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      v17 = *(*(v14 + 56) + 16 * v12);

      sub_1001BAE48(v12, v14);
      result = sub_1001C21D8(a3, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      *v4 = v14;
    }

    else
    {
      return sub_1001C21D8(a3, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
    }
  }

  return result;
}

Swift::Int sub_1001AF4C0()
{
  Hasher.init(_seed:)();
  FMIPDevice.identifier.getter();
  String.hash(into:)();

  type metadata accessor for FMIPDeviceImageSize();
  sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001AF580(uint64_t a1)
{
  FMIPDevice.identifier.getter();
  String.hash(into:)();

  type metadata accessor for FMIPDeviceImageSize();
  sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001AF628(uint64_t a1)
{
  Hasher.init(_seed:)();
  FMIPDevice.identifier.getter();
  String.hash(into:)();

  type metadata accessor for FMIPDeviceImageSize();
  sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001AF6E8()
{
  if (*(v0 + 32))
  {
    v1 = *(*(v0 + 16) + 16);

    os_unfair_lock_lock((v1 + 24));
    sub_10008FB6C((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return v0;
}

uint64_t sub_1001AF7B0()
{
  sub_1001AF6E8();

  return swift_deallocClassInstance();
}

unint64_t sub_1001AF7E4(void *a1)
{
  _StringGuts.grow(_:)(50);

  sub_1000244BC(a1, a1[3]);
  swift_getDynamicType();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  return 0xD000000000000030;
}

uint64_t sub_1001AF880(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B5D30, &unk_100557EF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for FMIPProductType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for FMIPProductType.b389(_:))
  {
    (*(v12 + 96))(v15, v11);
    sub_10007EBC0(&unk_1006B3B20, &unk_100557F50);
    swift_allocObject();
    v21 = Future.init(_:)();
    sub_100004098(&qword_1006C39C0, &unk_1006B3B20, &unk_100557F50, &protocol conformance descriptor for Future<A, B>);
    v17 = Publisher.eraseToAnyPublisher()();

    sub_100012DF0(v15, &qword_1006B1AA8, &qword_100554140);
  }

  else if (v16 == enum case for FMIPProductType.zeus(_:))
  {
    (*(v12 + 96))(v15, v11);
    sub_10007EBC0(&unk_1006B3B20, &unk_100557F50);
    swift_allocObject();
    v21 = Future.init(_:)();
    sub_100004098(&qword_1006C39C0, &unk_1006B3B20, &unk_100557F50, &protocol conformance descriptor for Future<A, B>);
    v17 = Publisher.eraseToAnyPublisher()();

    v18 = type metadata accessor for FMIPZeusProductInformation();
    (*(*(v18 - 8) + 8))(v15, v18);
  }

  else if (v16 == enum case for FMIPProductType.hawkeye(_:))
  {
    (*(v12 + 96))(v15, v11);
    sub_100035318(v15, v10, &qword_1006C39A0, &unk_100558B20);
    v17 = sub_1001B0BA8(v10, a2);
    sub_100012DF0(v10, &qword_1006C39A0, &unk_100558B20);
  }

  else
  {
    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    sub_1001C23CC();
    Fail.init(error:)();
    sub_100004098(&unk_1006C39B0, &qword_1006B5D30, &unk_100557EF0, &protocol conformance descriptor for Fail<A, B>);
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v15, v11);
  }

  return v17;
}

uint64_t sub_1001AFD50(uint64_t a1, unsigned int a2)
{
  v87 = a2;
  v3 = type metadata accessor for FMIPUnknownItem();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v70 = v4;
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10007EBC0(&qword_1006B5D50, &qword_100557F08);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v62 - v5;
  v81 = sub_10007EBC0(&qword_1006B5D58, &qword_100557F10);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v62 - v6;
  v82 = sub_10007EBC0(&qword_1006B5D60, &qword_100557F18);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v62 - v7;
  v8 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v8 - 8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v62 - v11;
  v69 = type metadata accessor for FMIPHawkeyeProductInformation();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10007EBC0(&qword_1006B5D30, &unk_100557EF0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v62 - v13;
  v14 = sub_10007EBC0(&qword_1006B5D38, &qword_100563010);
  v83 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10007EBC0(&qword_1006B5D40, &qword_100557F00);
  v84 = *(v17 - 8);
  v85 = v17;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  v20 = type metadata accessor for FMIPProductType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v27 = a1;
  FMIPUnknownItem.productType.getter();
  LOBYTE(a1) = FMIPProductType.isAirTag.getter();
  v28 = *(v21 + 8);
  v28(v26, v20);
  if (a1)
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() imageNamed:v29];

    if (v30)
    {
      v88[0] = v30;
      sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
      v31 = v30;
      Just.init(_:)();
      sub_1001C23CC();
      Just.setFailureType<A>(to:)();
      (*(v83 + 8))(v16, v14);
      sub_100004098(&qword_1006B5D48, &qword_1006B5D40, &qword_100557F00, &protocol conformance descriptor for Result<A, B>.Publisher);
      v32 = v85;
      v33 = Publisher.eraseToAnyPublisher()();

      (*(v84 + 8))(v19, v32);
    }

    else
    {
      sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
      sub_1001C23CC();
      v59 = v64;
      Fail.init(error:)();
      sub_100004098(&unk_1006C39B0, &qword_1006B5D30, &unk_100557EF0, &protocol conformance descriptor for Fail<A, B>);
      v60 = v66;
      v33 = Publisher.eraseToAnyPublisher()();
      (*(v65 + 8))(v59, v60);
    }
  }

  else
  {
    v34 = v87;
    if ((v87 & 0xFE) != 2)
    {
      FMIPUnknownItem.productType.getter();
      FMIPProductType.productInformation.getter();
      v28(v23, v20);
      v51 = v68;
      v52 = (v68 + 56);
      if (v88[3])
      {
        sub_10007EBC0(&unk_1006C1D60, &qword_100557F38);
        v53 = v67;
        v54 = v69;
        v55 = swift_dynamicCast();
        v56 = *(v51 + 56);
        v56(v53, v55 ^ 1u, 1, v54);
        if ((*(v51 + 48))(v53, 1, v54) != 1)
        {
          v57 = v62;
          (*(v51 + 32))(v62, v53, v54);
          v58 = v63;
          (*(v51 + 16))(v63, v57, v54);
          v56(v58, 0, 1, v54);
          v33 = sub_1001B0BA8(v58, v34);
          sub_100012DF0(v58, &qword_1006C39A0, &unk_100558B20);
          (*(v51 + 8))(v57, v54);
          return v33;
        }
      }

      else
      {
        sub_100012DF0(v88, &qword_1006B1328, &qword_100557F30);
        v53 = v67;
        (*v52)(v67, 1, 1, v69);
      }

      sub_100012DF0(v53, &qword_1006C39A0, &unk_100558B20);
      return sub_1001C0EE4(v34);
    }

    v35 = swift_allocObject();
    v36 = v86;
    swift_weakInit();
    v38 = v72;
    v37 = v73;
    v39 = v71;
    (*(v72 + 16))(v71, v27, v73);
    v40 = (*(v38 + 80) + 17) & ~*(v38 + 80);
    v41 = (v70 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v34;
    (*(v38 + 32))(v42 + v40, v39, v37);
    *(v42 + v41) = v35;
    sub_10007EBC0(&qword_1006B5D68, &qword_100557F20);
    swift_allocObject();
    v88[0] = Future.init(_:)();
    sub_100004098(&qword_1006B5D70, &qword_1006B5D68, &qword_100557F20, &protocol conformance descriptor for Future<A, B>);
    v43 = Publisher.eraseToAnyPublisher()();

    v88[0] = v43;

    v85 = static Subscribers.Demand.unlimited.getter();
    v84 = sub_10007EBC0(&qword_1006B5D78, &qword_100557F28);
    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
    sub_100004098(&qword_1006B5D80, &qword_1006B5D78, &qword_100557F28, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
    v44 = v74;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v87;
    sub_100004098(&qword_1006B5D88, &qword_1006B5D50, &qword_100557F08, &protocol conformance descriptor for Publishers.FlatMap<A, B>);

    v46 = v76;
    v47 = v78;
    Publisher.tryCatch<A>(_:)();

    (*(v75 + 8))(v44, v47);
    sub_100004098(&qword_1006B5D90, &qword_1006B5D58, &qword_100557F10, &protocol conformance descriptor for Publishers.TryCatch<A, B>);
    sub_1001C23CC();
    v48 = v77;
    v49 = v81;
    Publisher.mapError<A>(_:)();
    (*(v79 + 8))(v46, v49);
    sub_100004098(&qword_1006B5D98, &qword_1006B5D60, &qword_100557F18, &protocol conformance descriptor for Publishers.MapError<A, B>);
    v50 = v82;
    v33 = Publisher.eraseToAnyPublisher()();
    (*(v80 + 8))(v48, v50);
  }

  return v33;
}

void sub_1001B0AF4(void (*a1)(uint64_t *))
{
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v6 = sub_1003DE3FC(0x676154, 0xE300000000000000, 6778480, 0xE300000000000000, v2, v3, v4, v5, v8);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v7 = v6;
    a1(&v8);
  }

  else
  {
    v8 = 0;
    v9 = 1;
    a1(&v8);
  }
}

uint64_t sub_1001B0BA8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10007EBC0(&qword_1006B5D00, &qword_100557EC8);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = v28 - v7;
  v36 = sub_10007EBC0(&qword_1006B5D08, &unk_100557ED0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = v28 - v8;
  v9 = sub_10007EBC0(&qword_1006C39A0, &unk_100558B20);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = type metadata accessor for FMIPHawkeyeProductInformation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a1, v11, &qword_1006C39A0, &unk_100558B20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006C39A0, &unk_100558B20);
    return sub_1001C0EE4(v37);
  }

  else
  {
    v17 = *(v13 + 32);
    v29 = v15;
    v17(v15, v11, v12);
    v18 = v30;
    v19 = v37;
    (*(v4 + 104))(v6, **(&off_10062C9B8 + v37), v3);
    v21 = sub_1002AC4C4(v15, v6, v20);
    v28[1] = v21;
    (*(v4 + 8))(v6, v3);
    v38 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    *(v22 + 24) = v19;

    sub_10007EBC0(&qword_1006B5D10, &unk_100557EE0);
    sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
    sub_100004098(&qword_1006B5D18, &qword_1006B5D10, &unk_100557EE0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
    v23 = v31;
    Publisher.tryCatch<A>(_:)();

    sub_100004098(&qword_1006B5D20, &qword_1006B5D00, &qword_100557EC8, &protocol conformance descriptor for Publishers.TryCatch<A, B>);
    sub_1001C23CC();
    v24 = v32;
    v25 = v35;
    Publisher.mapError<A>(_:)();
    (*(v33 + 8))(v23, v25);
    sub_100004098(&qword_1006B5D28, &qword_1006B5D08, &unk_100557ED0, &protocol conformance descriptor for Publishers.MapError<A, B>);
    v26 = v36;
    v27 = Publisher.eraseToAnyPublisher()();
    (*(v34 + 8))(v24, v26);
    (*(v13 + 8))(v29, v12);
    return v27;
  }
}

void sub_1001B114C(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v83 = a4;
  v7 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  __chkstk_darwin(v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDevice();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v64 - v13;
  __chkstk_darwin(v14);
  v78 = &v64 - v15;
  v16 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v77 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPDeviceImageSize();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v71 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  v27 = swift_allocObject();
  v75 = a1;
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v74 = v27;
    v67 = v7;
    v68 = v9;
    v29 = v19;
    v31 = *(v19 + 104);
    v30 = (v19 + 104);
    v65 = v76;
    v32 = **(&off_10062C9E0 + v76);
    v76 = Strong;
    v66 = v31;
    v31(v26, v32, v18);
    v33 = (v81 + 16);
    v70 = *(v81 + 16);
    v70(v78, v83, v82);
    (*(v29 + 16))(v23, v26, v18);
    v34 = objc_opt_self();
    v69 = a2;

    v35 = [v34 mainScreen];
    [v35 scale];

    v36 = v77;
    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v79 + 8))(v36, v80);

    v37 = v85;
    (*(v29 + 8))(v26, v18);
    if (v37)
    {

      v85 = v37;
      LOBYTE(v86) = 0;
      v38 = v37;
      v75(&v85);
    }

    else
    {
      v39 = v65;
      v78 = v30;
      v79 = v29;
      v80 = v18;
      v41 = v81;
      v40 = v82;
      v42 = v72;
      v43 = v83;
      v77 = v33;
      v70(v72, v83, v82);
      v44 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100005B14(v45, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v47 = os_log_type_enabled(v46, v44);
      v48 = v68;
      v49 = v39;
      if (v47)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v84 = v51;
        v85 = 0;
        *v50 = 136315138;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(74);
        v52._object = 0x8000000100584AC0;
        v52._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v52);
        v53._countAndFlagsBits = FMIPDevice.identifier.getter();
        v54 = v42;
        String.append(_:)(v53);

        v55._countAndFlagsBits = 0xD000000000000036;
        v55._object = 0x8000000100584AE0;
        String.append(_:)(v55);
        v56 = sub_100005B4C(v85, v86, &v84);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v44, "FMProductAssetProvider: %s", v50, 0xCu);
        sub_100006060(v51);
        v40 = v82;

        v43 = v83;

        (*(v41 + 8))(v54, v40);
      }

      else
      {

        (*(v41 + 8))(v42, v40);
      }

      v57 = v80;
      v58 = v73;
      v70(v73, v43, v40);
      v59 = v71;
      v66(v71, **(&off_10062C9E0 + v49), v57);
      (*(v41 + 32))(v48, v58, v40);
      (*(v79 + 32))(v48 + *(v67 + 20), v59, v57);
      v60 = swift_allocObject();
      v61 = v74;
      *(v60 + 16) = sub_1001C2164;
      *(v60 + 24) = v61;
      v62 = v76;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v62 + 24);
      *(v62 + 24) = 0x8000000000000000;
      sub_1001BC07C(sub_1001C21A4, v60, v48, isUniquelyReferenced_nonNull_native);
      *(v62 + 24) = v84;
      swift_endAccess();

      sub_1001C21D8(v48, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
    }
  }

  else
  {
  }
}

uint64_t sub_1001B196C(void (*a1)(char *), uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v98 = a4;
  v101 = a2;
  v102 = a1;
  v87 = type metadata accessor for UUID();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPUnknownItem();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v95 = *(v9 - 8);
  v96 = v9;
  __chkstk_darwin(v9);
  v89 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10007EBC0(&qword_1006B5DA0, &unk_100557F40);
  __chkstk_darwin(v99);
  v100 = &v85 - v11;
  v12 = sub_10007EBC0(&qword_1006B4DB8, &unk_10055D580);
  __chkstk_darwin(v12 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v21 = sub_10007EBC0(&unk_1006B4D70, &unk_1005569C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  __chkstk_darwin(v27);
  v29 = &v85 - v28;
  v30 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v30 - 8);
  v94 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v85 - v33;
  __chkstk_darwin(v35);
  v37 = &v85 - v36;
  __chkstk_darwin(v38);
  v40 = &v85 - v39;
  __chkstk_darwin(v41);
  v97 = &v85 - v42;
  v88 = a3;
  if (a3)
  {
    if (a3 == 2)
    {
      FMIPUnknownItem.utMetadata.getter();
      v47 = type metadata accessor for FMIPUnknownItemUTMetadata();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v17, 1, v47) == 1)
      {
        v49 = &qword_1006B4DB8;
        v50 = &unk_10055D580;
        v51 = v17;
      }

      else
      {
        FMIPUnknownItemUTMetadata.learnMoreInfo.getter();
        (*(v48 + 8))(v17, v47);
        v60 = type metadata accessor for FMIPUnknownItemProductMetadata();
        v61 = *(v60 - 8);
        if ((*(v61 + 48))(v26, 1, v60) != 1)
        {
          FMIPUnknownItemProductMetadata.image.getter();
          (*(v61 + 8))(v26, v60);
          v40 = v37;
          v45 = v96;
          v54 = v97;
          v46 = v95;
          goto LABEL_23;
        }

        v49 = &unk_1006B4D70;
        v50 = &unk_1005569C0;
        v51 = v26;
      }

      sub_100012DF0(v51, v49, v50);
      v45 = v96;
      v54 = v97;
      v46 = v95;
      (*(v95 + 56))(v37, 1, 1, v96);
      v40 = v37;
    }

    else
    {
      if (a3 != 3)
      {
        v56 = v100;
        swift_storeEnumTagMultiPayload();
        v102(v56);
        v57 = &qword_1006B5DA0;
        v58 = &unk_100557F40;
        v59 = v56;
        return sub_100012DF0(v59, v57, v58);
      }

      FMIPUnknownItem.utMetadata.getter();
      v43 = type metadata accessor for FMIPUnknownItemUTMetadata();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v20, 1, v43) == 1)
      {
        sub_100012DF0(v20, &qword_1006B4DB8, &unk_10055D580);
        v46 = v95;
        v45 = v96;
LABEL_19:
        v55 = v94;
        (*(v46 + 56))(v40, 1, 1, v45);
        v54 = v97;
        goto LABEL_24;
      }

      FMIPUnknownItemUTMetadata.disableInfo.getter();
      (*(v44 + 8))(v20, v43);
      v65 = type metadata accessor for FMIPUnknownItemProductMetadata();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 48))(v29, 1, v65);
      v46 = v95;
      v45 = v96;
      if (v67 == 1)
      {
        sub_100012DF0(v29, &unk_1006B4D70, &unk_1005569C0);
        goto LABEL_19;
      }

      FMIPUnknownItemProductMetadata.image.getter();
      (*(v66 + 8))(v29, v65);
      v54 = v97;
    }

LABEL_23:
    v55 = v94;
    goto LABEL_24;
  }

  FMIPUnknownItem.utMetadata.getter();
  v52 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v14, 1, v52) == 1)
  {
    sub_100012DF0(v14, &qword_1006B4DB8, &unk_10055D580);
    v45 = v96;
    v54 = v97;
    v55 = v94;
    v46 = v95;
  }

  else
  {
    FMIPUnknownItemUTMetadata.learnMoreInfo.getter();
    (*(v53 + 8))(v14, v52);
    v62 = type metadata accessor for FMIPUnknownItemProductMetadata();
    v63 = *(v62 - 8);
    v64 = (*(v63 + 48))(v23, 1, v62);
    v45 = v96;
    v54 = v97;
    v55 = v94;
    v46 = v95;
    if (v64 != 1)
    {
      FMIPUnknownItemProductMetadata.image.getter();
      (*(v63 + 8))(v23, v62);
      v40 = v34;
      goto LABEL_24;
    }

    sub_100012DF0(v23, &unk_1006B4D70, &unk_1005569C0);
  }

  (*(v46 + 56))(v34, 1, 1, v45);
  v40 = v34;
LABEL_24:
  sub_100035318(v40, v54, &unk_1006B0120, &qword_100552B60);
  sub_100007204(v54, v55, &unk_1006B0120, &qword_100552B60);
  if ((*(v46 + 48))(v55, 1, v45) == 1)
  {
    sub_100012DF0(v55, &unk_1006B0120, &qword_100552B60);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      (*(v92 + 16))(v91, v98, v93);
      v68 = static os_log_type_t.error.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100005B14(v69, qword_1006D4630);
      v70 = Logger.logObject.getter();
      if (os_log_type_enabled(v70, v68))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 136315138;
        v104 = 0;
        v105 = 0xE000000000000000;
        v106 = v72;
        _StringGuts.grow(_:)(54);
        v73._countAndFlagsBits = 0xD00000000000001FLL;
        v73._object = 0x8000000100584C60;
        String.append(_:)(v73);
        v74 = v85;
        v75 = v91;
        FMIPUnknownItem.identifier.getter();
        sub_10000E778(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v76 = v87;
        v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v77);

        (*(v86 + 8))(v74, v76);
        v78._object = 0x8000000100584C80;
        v78._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v78);
        v103 = v88;
        _print_unlocked<A, B>(_:_:)();
        v79._countAndFlagsBits = 41;
        v79._object = 0xE100000000000000;
        String.append(_:)(v79);
        v80 = sub_100005B4C(v104, v105, &v106);

        *(v71 + 4) = v80;
        v54 = v97;
        _os_log_impl(&_mh_execute_header, v70, v68, "FMProductAssetProvider: %s", v71, 0xCu);
        sub_100006060(v72);

        (*(v92 + 8))(v75, v93);
      }

      else
      {

        (*(v92 + 8))(v91, v93);
      }
    }

    v83 = v100;
    swift_storeEnumTagMultiPayload();
    v102(v83);
    sub_100012DF0(v83, &qword_1006B5DA0, &unk_100557F40);
  }

  else
  {
    v81 = v89;
    (*(v46 + 32))(v89, v55, v45);
    v82 = v100;
    (*(v46 + 16))(v100, v81, v45);
    swift_storeEnumTagMultiPayload();
    v102(v82);
    sub_100012DF0(v82, &qword_1006B5DA0, &unk_100557F40);
    (*(v46 + 8))(v81, v45);
  }

  v57 = &unk_1006B0120;
  v58 = &qword_100552B60;
  v59 = v54;
  return sub_100012DF0(v59, v57, v58);
}

uint64_t sub_1001B267C(uint64_t a1)
{
  v48 = type metadata accessor for NSURLSession.DataTaskPublisher();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B5CD0, &qword_100557EB8);
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v46 = &v36 - v4;
  v5 = sub_10007EBC0(&qword_1006B5CD8, &qword_100557EC0);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v36 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = *(v8 + 16);
  v42 = a1;
  v40 = v14;
  (v14)(&v36 - v12, a1, v7, v11);
  v15 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    v39 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = v20;
    v38 = v3;
    *v19 = 136315138;
    v50 = 0;
    v51 = 0xE000000000000000;
    v52 = v20;
    _StringGuts.grow(_:)(43);

    v50 = 0xD000000000000029;
    v51 = 0x8000000100584B90;
    sub_10000E778(&qword_1006B0668, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v15;
    String.append(_:)(v21);

    v23 = sub_100005B4C(v50, v51, &v52);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v22, "FMProductAssetProvider: %s", v19, 0xCu);
    sub_100006060(v37);
    v3 = v38;

    v5 = v39;
  }

  (*(v8 + 8))(v13, v7);
  v24 = v42;
  v25 = v43;
  NSURLSession.dataTaskPublisher(for:)();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v41;
  v40(v41, v24, v7);
  v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  (*(v8 + 32))(v29 + v28, v27, v7);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1001C2304;
  *(v30 + 24) = v29;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  sub_10000E778(&qword_1006B5CE0, &type metadata accessor for NSURLSession.DataTaskPublisher, &protocol conformance descriptor for NSURLSession.DataTaskPublisher);
  v31 = v46;
  v32 = v48;
  Publisher.tryMap<A>(_:)();

  (*(v45 + 8))(v25, v32);
  sub_100004098(&qword_1006B5CE8, &qword_1006B5CD0, &qword_100557EB8, &protocol conformance descriptor for Publishers.TryMap<A, B>);
  sub_1001C23CC();
  v33 = v47;
  Publisher.mapError<A>(_:)();
  (*(v49 + 8))(v31, v3);
  sub_100004098(&qword_1006B5CF8, &qword_1006B5CD8, &qword_100557EC0, &protocol conformance descriptor for Publishers.MapError<A, B>);
  v34 = Publisher.eraseToAnyPublisher()();
  (*(v44 + 8))(v33, v5);
  return v34;
}

unint64_t sub_1001B2DC0()
{
  result = qword_1006B5C38;
  if (!qword_1006B5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B5C38);
  }

  return result;
}

id sub_1001B2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithData:isa];

  if (!v12)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      (*(v7 + 16))(v9, a5, v6);
      v13 = static os_log_type_t.error.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100005B14(v14, qword_1006D4630);
      v15 = Logger.logObject.getter();
      if (os_log_type_enabled(v15, v13))
      {
        v16 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = 0;
        v24 = v21;
        *v16 = 136315138;
        v23 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v22 = 0xD00000000000001ALL;
        v23 = 0x8000000100584BC0;
        sub_10000E778(&qword_1006B0668, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v7;
        String.append(_:)(v17);

        v19 = sub_100005B4C(v22, v23, &v24);

        *(v16 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v15, v13, "FMProductAssetProvider: %s", v16, 0xCu);
        sub_100006060(v21);

        (*(v18 + 8))(v9, v6);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }
    }

    sub_1001C23CC();
    swift_allocError();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1001B316C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20[0] = a1;
  v20[1] = a3;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B5C40, &qword_100557DE8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  v16 = *a2;
  v15 = a2[1];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  sub_1001C229C(v20[0], v14, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
  v18 = &v14[*(v9 + 56)];
  *v18 = sub_1001C2760;
  *(v18 + 1) = v17;
  sub_100007204(v14, v11, &qword_1006B5C40, &qword_100557DE8);

  (*(v5 + 16))(v7, v11, v4);
  sub_1001C21D8(v11, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
  LOBYTE(v9) = static FMIPDevice.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  sub_100012DF0(v14, &qword_1006B5C40, &qword_100557DE8);
  return v9 & 1;
}

void sub_1001B33C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void), uint64_t a6)
{
  v50 = a6;
  v51 = a5;
  v49 = a4;
  v53 = a1;
  v54 = a3;
  v7 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDeviceImageSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v52 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v20 = *(v52 - 8);
  v21 = __chkstk_darwin(v52);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v53 + 24);
  v24 = *(v8 + 28);
  v46 = v15;
  v25 = *(v15 + 16);
  v44 = a2;
  v47 = v14;
  v26 = v14;
  v27 = v25;
  (v25)(v19, a2, v26, v21);
  (*(v11 + 16))(v13, v54 + v24, v10);
  v28 = [objc_opt_self() mainScreen];
  [v28 scale];

  FMIPDeviceImageCacheRequest.init(device:size:scale:)();
  dispatch thunk of FMImageCache.cachedImage(for:completion:)();
  (*(v20 + 8))(v23, v52);
  v29 = v58;
  if (v58)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v30 = v45;
      v31 = v47;
      v27(v45, v44, v47);
      v32 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100005B14(v33, qword_1006D4630);
      v34 = Logger.logObject.getter();
      if (os_log_type_enabled(v34, v32))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55[0] = v36;
        *v35 = 136315138;
        v56 = 0;
        v57 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v37._object = 0x8000000100584A80;
        v37._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v37);
        v38._countAndFlagsBits = FMIPDevice.identifier.getter();
        String.append(_:)(v38);

        v39._countAndFlagsBits = 0x726177726F66202CLL;
        v39._object = 0xEC000000676E6964;
        String.append(_:)(v39);
        v40 = sub_100005B4C(v56, v57, v55);

        *(v35 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v32, "FMProductAssetProvider: %s", v35, 0xCu);
        sub_100006060(v36);
      }

      (*(v46 + 8))(v30, v31);
    }

    v41 = v29;
    v51(v29, 0);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v42 = v48;
      sub_1001C229C(v54, v48, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      swift_beginAccess();
      sub_1001AEEB8(0, 0, v42);
      swift_endAccess();
    }
  }
}

unint64_t sub_1001B3964(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000E778(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001B41BC(a1, v2, &type metadata accessor for UUID, &qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1001B3A38(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001B4ADC(a1, v2);
}

unint64_t sub_1001B3AC8(uint64_t a1)
{
  type metadata accessor for FMIPPlaySoundChannels();
  sub_10000E778(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001B41BC(a1, v2, &type metadata accessor for FMIPPlaySoundChannels, &qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
}

unint64_t sub_1001B3B9C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_1001B435C(v1, v2);
}

unint64_t sub_1001B3C04(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_10000E778(&qword_1006B5C78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FMAccessoryProductImageRequest(0);
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001B43CC(a1, v2);
}

unint64_t sub_1001B3D38(uint64_t *a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_10000E778(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001B4590(a1, v2);
}

unint64_t sub_1001B3E04(uint64_t a1)
{
  Hasher.init(_seed:)();
  FMIPDevice.identifier.getter();
  String.hash(into:)();

  type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  type metadata accessor for FMIPDeviceImageSize();
  sub_10000E778(&qword_1006B5C50, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001B474C(a1, v2);
}

unint64_t sub_1001B3EEC(uint64_t a1)
{
  type metadata accessor for FMItemCapabilities();
  sub_10000E778(&qword_1006B5C90, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001B41BC(a1, v2, &type metadata accessor for FMItemCapabilities, &qword_1006B5C98, &type metadata accessor for FMItemCapabilities, &protocol conformance descriptor for FMItemCapabilities);
}

unint64_t sub_1001B3FC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10000E778(&qword_1006B5C88, type metadata accessor for CFString, &unk_100551E98);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001B49D0(a1, v2);
}

unint64_t sub_1001B4074(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10017D71C(v4);
  v2 = Hasher._finalize()();

  return sub_1001B4BE0(a1, v2);
}

unint64_t sub_1001B40E0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (a2 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    Hasher._combine(_:)(4uLL);
    String.hash(into:)();
    goto LABEL_12;
  }

  if (!a2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  Hasher._combine(_:)(v4);
LABEL_12:
  v5 = Hasher._finalize()();

  return sub_1001B4D40(a1, a2, v5);
}

unint64_t sub_1001B41BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_10000E778(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1001B435C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1001B43CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMAccessoryProductImageRequest(0);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1001C229C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for FMAccessoryProductImageRequest);
      if (static URL.== infix(_:_:)() & 1) != 0 && (static FMIPHawkeyeProductInformation.AssetType.== infix(_:_:)())
      {
        v13 = *(v5 + 24);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_1001C21D8(v8, type metadata accessor for FMAccessoryProductImageRequest);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_1001C21D8(v8, type metadata accessor for FMAccessoryProductImageRequest);
  }

  return v10;
}

unint64_t sub_1001B4590(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  __chkstk_darwin(v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1001C229C(*(v2 + 48) + v14 * v10, v8, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static FMIPHawkeyeProductInformation.AssetType.== infix(_:_:)())
      {
        break;
      }

      sub_1001C21D8(v8, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_1001C21D8(v8, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
  }

  return v10;
}

unint64_t sub_1001B474C(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for FMProductAssetProvider.DeviceFetchingContext(0);
  __chkstk_darwin(v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *(v4 + 72);
    v13 = v10;
    do
    {
      sub_1001C229C(*(v2 + 48) + v10 * v8, v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      if (static FMIPDevice.== infix(_:_:)())
      {
        type metadata accessor for FMIPDeviceImageSize();
        sub_10000E778(&qword_1006B5C58, &type metadata accessor for FMIPDeviceImageSize, &protocol conformance descriptor for FMIPDeviceImageSize);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v17 == v15 && v18 == v16)
        {
          sub_1001C21D8(v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);

          return v8;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1001C21D8(v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);

        v10 = v13;
        if (v11)
        {
          return v8;
        }
      }

      else
      {
        sub_1001C21D8(v6, type metadata accessor for FMProductAssetProvider.DeviceFetchingContext);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1001B49D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000E778(&qword_1006B5C88, type metadata accessor for CFString, &unk_100551E98);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1001B4ADC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001B4BE0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMAnnotationIdentifier(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1001C229C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for FMAnnotationIdentifier);
      v13 = sub_10017E734(v8, a1);
      sub_1001C21D8(v8, type metadata accessor for FMAnnotationIdentifier);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1001B4D40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          if (a2 == 2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 3)
        {
          if (a2 == 3)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 4)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1001B4E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1001B3964(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001BF1FC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for FMUnknownItemCellViewModel(0);
    v20 = *(v13 - 8);
    sub_1001C252C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for FMUnknownItemCellViewModel);
    sub_1001BA970(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FMUnknownItemCellViewModel(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1001B4FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10007EBC0(&qword_1006B38A8, &qword_100555770);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1001B528C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FMIPPlaySoundChannels();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10007EBC0(&qword_1006B5CC8, &qword_100557EB0);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000E778(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}