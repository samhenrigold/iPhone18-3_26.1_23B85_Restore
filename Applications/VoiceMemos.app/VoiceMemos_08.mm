uint64_t sub_1001614C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = type metadata accessor for _AssistantIntent.Value();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  _AssistantIntent.IntentProjection.subscript.getter();

  a4(v11);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v8 + 8))(v10, v7);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100242C70;
  *(v13 + 32) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_100161644(uint64_t a1)
{
  v52 = a1;
  v1 = sub_1000C773C(&qword_1002D37E8, &qword_10024BF10);
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  __chkstk_darwin(v1);
  v4 = &v43 - v3;
  v51 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C773C(&qword_1002D37F0, &qword_10024BF18);
  __chkstk_darwin(v8);
  sub_1000131E8();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x66206574656C6564;
  v9._object = 0xEE00207265646C6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v53 = sub_1001635AC(&unk_1002D37D0, &protocol conformance descriptor for <A> [A]);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = *(v5 + 104);
  v50 = v5 + 104;
  LODWORD(v47) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v13 = v51;
  v12(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v51);
  v46 = v12;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v44 = *(v5 + 8);
  v44(v7, v13);
  v45 = v5 + 8;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54 = *(v56 + 8);
  v56 += 8;
  v54(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x206574656C6564;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v51;
  v12(v7, v11, v51);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v17 = v44;
  v44(v7, v16);
  v18._countAndFlagsBits = 0x207265646C6F6620;
  v18._object = 0xEE002064656D616ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v55;
  v54(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x2065766F6D6572;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v51;
  v46(v7, v47, v51);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v17(v7, v22);
  v23._countAndFlagsBits = 0x207265646C6F6620;
  v23._object = 0xEE002064656D616ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v54;
  v54(v4, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x6D206574656C6564;
  v26._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0x7265646C6F6620;
  v27._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v4, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD000000000000015;
  v28._object = 0x8000000100233C40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._object = 0x8000000100233C60;
  v30._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33 = v54;
  v32 = v55;
  v54(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._object = 0x8000000100233C80;
  v34._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v4, v32);
  sub_1000C773C(&qword_1002D37F8, &qword_10024BF20);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100249700;
  v38 = v48;
  *(v37 + 32) = v49;
  *(v37 + 40) = v38;
  v39 = v50;
  *(v37 + 48) = v51;
  *(v37 + 56) = v39;
  v40 = v46;
  *(v37 + 64) = v47;
  *(v37 + 72) = v40;
  *(v37 + 80) = v36;
  v41 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v41;
}

uint64_t sub_100161FA8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1001635AC(&unk_1002D37D0, &protocol conformance descriptor for <A> [A]);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_1000131E8();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100162134()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000C773C(&qword_1002D37E0, &qword_100244518);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002442D0;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

unint64_t sub_100162330()
{
  result = qword_1002D3798;
  if (!qword_1002D3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3798);
  }

  return result;
}

uint64_t sub_100162384(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016241C, v3, v2);
}

uint64_t sub_10016241C()
{
  v1 = *(v0 + 16);

  *v1 = sub_10015BE44();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10016248C()
{
  result = qword_1002D37A0;
  if (!qword_1002D37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D37A0);
  }

  return result;
}

uint64_t sub_1001624E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100162578, v3, v2);
}

uint64_t sub_100162578()
{
  v1 = *(v0 + 16);

  *v1 = sub_10015BC08();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100162664(uint64_t a1)
{
  *(v1 + 56) = a1;
  type metadata accessor for MainActor();
  *(v1 + 64) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001626FC, v3, v2);
}

void sub_1001626FC()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 56) + 40;
    v5 = _swiftEmptyArrayStorage;
    v18 = v4;
    do
    {
      v6 = v4 + 16 * v3;
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }

        v8 = objc_opt_self();

        v9 = [v8 sharedRecordingsModelInteractor];
        v10 = String._bridgeToObjectiveC()();
        v11 = [v9 folderForUUID:v10];

        if (v11)
        {
          break;
        }

        ++v7;
        v6 += 16;
        if (v3 == v2)
        {
          goto LABEL_16;
        }
      }

      swift_getObjectType();
      sub_10015D824(v0 + 16);

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000F2768(0, *(v5 + 2) + 1, 1, v5);
      }

      v4 = v18;
      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1000F2768((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      v15 = *(v0 + 16);
      v16 = *(v0 + 32);
      *(v14 + 8) = *(v0 + 48);
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  v17 = *(v0 + 8);

  v17(v5);
}

uint64_t sub_100162918(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001629B0, v4, v3);
}

char *sub_1001629B0()
{

  v1 = [objc_opt_self() sharedRecordingsModelInteractor];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 allFoldersWithName:v2];

  sub_1000C773C(&qword_1002D1200, &unk_100245410);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1001AE614(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = v1;
  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    sub_10015D824(v0 + 16);
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_1001AE614((v8 > 1), v9 + 1, 1);
    }

    ++v7;
    _swiftEmptyArrayStorage[2] = v9 + 1;
    v10 = &_swiftEmptyArrayStorage[5 * v9];
    v11 = *(v0 + 16);
    v12 = *(v0 + 32);
    v10[8] = *(v0 + 48);
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
  }

  while (v5 != v7);

LABEL_14:
  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100162BE8()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000C773C(&unk_1002D3840, &unk_100244540);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D1D28, &qword_100246C00);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = type metadata accessor for String.IntentInputOptions();
  v19 = 0;
  v20 = 0;
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  IntentDialog.init(stringLiteral:)();
  v15 = type metadata accessor for IntentDialog();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100162F44()
{
  v17[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D3800, &qword_10024BF28);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  IntentDialog.init(stringLiteral:)();
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10016361C();
  sub_10015E4D4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t sub_100163274()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D3868, &qword_10024BFB8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  IntentDialog.init(stringLiteral:)();
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_100163670();
  sub_10015E4D4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t sub_1001635AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002D3720, qword_10024B750);
    sub_10015E150();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016361C()
{
  result = qword_1002D3808;
  if (!qword_1002D3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3808);
  }

  return result;
}

unint64_t sub_100163670()
{
  result = qword_1002D3870;
  if (!qword_1002D3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3870);
  }

  return result;
}

uint64_t sub_1001636C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016370C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D38C0, qword_10024C020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016377C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D38C0, qword_10024C020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RCFoldersCollectionViewController.collectionView(_:appEntityIdentifierForItemAt:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 foldersController];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v3 folderAtIndexPath:isa];

  if (v5)
  {
    swift_getObjectType();
    sub_10015D824(v10);
    sub_10015E4D4();
    EntityIdentifier.init<A>(for:)();
    swift_unknownObjectRelease();
    v6 = type metadata accessor for EntityIdentifier();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for EntityIdentifier();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

unint64_t sub_1001639E4()
{
  result = qword_1002D38D0;
  if (!qword_1002D38D0)
  {
    sub_100163A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D38D0);
  }

  return result;
}

unint64_t sub_100163A3C()
{
  result = qword_1002D38D8;
  if (!qword_1002D38D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D38D8);
  }

  return result;
}

uint64_t sub_100163AF8(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_100163BB4(a3, a4, a5);
  memset(v9, 0, sizeof(v9));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10010D150(v9);
}

uint64_t sub_100163BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100163C24(uint64_t a1)
{
  sub_100163D5C(319, &qword_1002D3A18, &type metadata accessor for ControlSize);
  if (v1 <= 0x3F)
  {
    sub_100163D5C(319, &qword_1002D3A20, &type metadata accessor for DynamicTypeSize);
    if (v2 <= 0x3F)
    {
      sub_100163DB0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for RCRecordButtonViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_100163E00();
          if (v5 <= 0x3F)
          {
            type metadata accessor for RCRecordButtonZoomTransitionSourceView();
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

void sub_100163D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100163DB0()
{
  if (!qword_1002D3A28)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D3A28);
    }
  }
}

unint64_t sub_100163E00()
{
  result = qword_1002D3A30;
  if (!qword_1002D3A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002D3A30);
  }

  return result;
}

void sub_100163E8C(uint64_t a1, SEL *a2, void *a3)
{
  v5 = [objc_opt_self() sharedStyleProvider];
  [v5 *a2];
  v7 = v6;

  *a3 = v7;
}

uint64_t sub_100163EF8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for AttributedString();
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin(v2);
  v91 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AccessibilityTraits();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for ButtonBorderShape();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for GlassProminentButtonStyle();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000C773C(&qword_1002D3A88, &qword_10024C190);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v9 = &v64 - v8;
  v66 = sub_1000C773C(&qword_1002D3A90, &qword_10024C198);
  __chkstk_darwin(v66);
  v11 = &v64 - v10;
  v71 = sub_1000C773C(&qword_1002D3A98, &qword_10024C1A0);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v64 - v12;
  v67 = sub_1000C773C(&qword_1002D3AA0, &qword_10024C1A8);
  __chkstk_darwin(v67);
  v74 = &v64 - v13;
  v73 = sub_1000C773C(&qword_1002D3AA8, &qword_10024C1B0);
  __chkstk_darwin(v73);
  v76 = &v64 - v14;
  v75 = sub_1000C773C(&qword_1002D3AB0, &qword_10024C1B8);
  __chkstk_darwin(v75);
  v81 = &v64 - v15;
  v80 = sub_1000C773C(&qword_1002D3AB8, &qword_10024C1C0);
  __chkstk_darwin(v80);
  v82 = &v64 - v16;
  v84 = sub_1000C773C(&qword_1002D3AC0, &qword_10024C1C8);
  __chkstk_darwin(v84);
  v85 = &v64 - v17;
  v18 = sub_1000C773C(&qword_1002D3AC8, &qword_10024C1D0);
  __chkstk_darwin(v18 - 8);
  v83 = &v64 - v19;
  v86 = sub_1000C773C(&qword_1002D3AD0, &qword_10024C1D8);
  __chkstk_darwin(v86);
  v87 = &v64 - v20;
  v21 = type metadata accessor for RCRecordButton(0);
  v22 = *sub_10000AACC((v1 + *(v21 + 32)), *(v1 + *(v21 + 32) + 24));
  v98[3] = type metadata accessor for RCRecordButtonViewController();
  v98[4] = &off_1002907B8;
  v98[0] = v22;
  sub_1000CC430(v98, &v97);
  v23 = swift_allocObject();
  sub_100015FD0(&v97, v23 + 16);

  sub_100014B64(v98);
  v96 = v1;
  sub_1000C773C(&qword_1002D3AD8, &qword_10024C1E0);
  sub_10016854C(&qword_1002D3AE0, &qword_1002D3AD8, &qword_10024C1E0, sub_1001684EC);
  Button.init(action:label:)();
  v95 = v21;
  v24 = *(v1 + *(v21 + 28));
  swift_getKeyPath();
  v98[0] = v24;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 32))
  {
    v25 = *(v24 + 32);
  }

  else
  {
    v25 = static Color.clear.getter();
  }

  KeyPath = swift_getKeyPath();
  v98[0] = v25;

  v27 = AnyShapeStyle.init<A>(_:)();
  (*(v64 + 32))(v11, v9, v65);
  v28 = &v11[*(v66 + 36)];
  *v28 = KeyPath;
  v28[1] = v27;
  GlassProminentButtonStyle.init()();
  sub_1001690BC();
  sub_10000A1A4(&qword_1002D3B58, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v29 = v68;
  v30 = v72;
  View.buttonStyle<A>(_:)();
  (*(v70 + 8))(v7, v30);
  sub_100003CBC(v11, &qword_1002D3A90, &qword_10024C198);
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = v77;
  if (*(v24 + 16))
  {
    static ButtonBorderShape.capsule.getter();
  }

  else
  {
    static ButtonBorderShape.circle.getter();
  }

  v32 = v81;
  v33 = swift_getKeyPath();
  v34 = v74;
  v35 = &v74[*(v67 + 36)];
  v36 = sub_1000C773C(&qword_1002D3B60, &qword_10024C2C8);
  (*(v78 + 32))(v35 + *(v36 + 28), v31, v79);
  *v35 = v33;
  (*(v69 + 32))(v34, v29, v71);
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v24 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled);
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v40 = v34;
  v41 = v76;
  sub_10001DBEC(v40, v76, &qword_1002D3AA0, &qword_10024C1A8);
  v42 = (v41 + *(v73 + 36));
  *v42 = v38;
  v42[1] = sub_10001C49C;
  v42[2] = v39;
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 17) == 1)
  {
    v43 = static Animation.easeOut(duration:)();
  }

  else
  {
    v43 = 0;
  }

  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v24 + 18);
  sub_10001DBEC(v41, v32, &qword_1002D3AA8, &qword_10024C1B0);
  v45 = v32 + *(v75 + 36);
  *v45 = v43;
  *(v45 + 8) = v44;
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 17) == 1)
  {
    v46 = static Animation.easeOut(duration:)();
  }

  else
  {
    v46 = 0;
  }

  v47 = v82;
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v24 + 16);
  sub_10001DBEC(v32, v47, &qword_1002D3AB0, &qword_10024C1B8);
  v49 = v47 + *(v80 + 36);
  *v49 = v46;
  *(v49 + 8) = v48;
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v24 + 17) == 1)
  {
    v50 = static Animation.easeOut(duration:)();
  }

  else
  {
    v50 = 0;
  }

  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v24 + 32);
  v52 = v85;
  sub_10001DBEC(v47, v85, &qword_1002D3AB8, &qword_10024C1C0);
  v53 = (v52 + *(v84 + 36));
  *v53 = v50;
  v53[1] = v51;

  v54 = v88;
  static AccessibilityTraits.startsMediaSession.getter();
  sub_100169270();
  v55 = v83;
  View.accessibilityAddTraits(_:)();
  (*(v89 + 8))(v54, v90);
  sub_100003CBC(v52, &qword_1002D3AC0, &qword_10024C1C8);
  v56 = v55;
  v57 = v87;
  sub_10001DBEC(v56, v87, &qword_1002D3AC8, &qword_10024C1D0);
  *(v57 + *(v86 + 36)) = 1;
  swift_getKeyPath();
  v98[0] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  (*(v92 + 16))(v91, v24 + v58, v93);
  v59 = Text.init(_:)();
  v61 = v60;
  LOBYTE(v52) = v62;
  sub_100169694();
  View.accessibilityLabel(_:)();
  sub_100008020(v59, v61, v52 & 1);

  return sub_100003CBC(v57, &qword_1002D3AD0, &qword_10024C1D8);
}

void *sub_100164D88(void *a1)
{
  sub_10000AACC(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result recordButtonTapped];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100164DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ControlSize();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C773C(&qword_1002D3B20, &qword_10024C200);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v71 = sub_1000C773C(&qword_1002D3B10, &qword_10024C1F8);
  __chkstk_darwin(v71);
  v74 = &v67 - v11;
  v73 = sub_1000C773C(&qword_1002D3B00, &qword_10024C1F0);
  __chkstk_darwin(v73);
  v76 = &v67 - v12;
  v75 = sub_1000C773C(&qword_1002D3AF0, &qword_10024C1E8);
  __chkstk_darwin(v75);
  v79 = &v67 - v13;
  *v10 = static Alignment.center.getter();
  *(v10 + 1) = v14;
  v15 = sub_1000C773C(&qword_1002D3BF0, &unk_10024C3C0);
  sub_100165644(a1, &v10[*(v15 + 44)]);
  if (qword_1002CDF40 != -1)
  {
    swift_once();
  }

  v16 = qword_1002E90B0;
  if (qword_1002CDF48 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = *(v8 + 36);
  v72 = v10;
  v18 = &v10[v17];
  v19 = v84[1];
  *v18 = v84[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v84[2];
  v68 = type metadata accessor for RCRecordButton(0);
  v20 = *(v68 + 28);
  v82 = a1;
  v21 = *(a1 + v20);
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel___observationRegistrar;
  *&v85 = v21;
  v23 = sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v21 + 16))
  {
    v24 = 147.0;
  }

  else
  {
    v24 = *&v16;
  }

  swift_getKeyPath();
  *&v85 = v21;
  v70 = v22;
  v69 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v21 + 16);
  static Alignment.center.getter();
  if (v25)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *&v16;
  }

  v27 = v26;
  if (v25)
  {
    v27 = v24;
  }

  if (v27 < v24)
  {
    static os_log_type_t.fault.getter();
    v67 = v24;
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v74;
  sub_10001DBEC(v72, v74, &qword_1002D3B20, &qword_10024C200);
  v30 = (v29 + *(v71 + 36));
  v31 = v90;
  v32 = v91;
  v30[4] = v89;
  v30[5] = v31;
  v30[6] = v32;
  v33 = v86;
  *v30 = v85;
  v30[1] = v33;
  v34 = v88;
  v30[2] = v87;
  v30[3] = v34;
  v35 = v77;
  sub_100168E6C(&qword_1002D0F10, &qword_10024C3D0, &type metadata accessor for ControlSize, v77);
  v36 = v80;
  sub_100168E6C(&qword_1002D0F18, &qword_1002450C0, &type metadata accessor for DynamicTypeSize, v80);
  v37 = sub_100169800(v35, v36);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  (*(v5 + 8))(v36, v4);
  (*(v78 + 8))(v35, v81);
  v44 = static Edge.Set.all.getter();
  v45 = v76;
  sub_10001DBEC(v29, v76, &qword_1002D3B10, &qword_10024C1F8);
  v46 = v45 + *(v73 + 36);
  *v46 = v44;
  *(v46 + 8) = -v37;
  *(v46 + 16) = -v39;
  *(v46 + 24) = -v41;
  *(v46 + 32) = -v43;
  *(v46 + 40) = 0;
  LOBYTE(v36) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v79;
  sub_10001DBEC(v45, v79, &qword_1002D3B00, &qword_10024C1F0);
  v56 = v55 + *(v75 + 36);
  *v56 = v36;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  LOBYTE(v36) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  v83 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_10001DBEC(v55, a2, &qword_1002D3AF0, &qword_10024C1E8);
  result = sub_1000C773C(&qword_1002D3AD8, &qword_10024C1E0);
  v66 = a2 + *(result + 36);
  *v66 = v36;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  return result;
}

void sub_100165644(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for RCRecordButton(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_1000C773C(&qword_1002D3BF8, &qword_10024C3D8);
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v38 - v10;
  v11 = sub_1000C773C(&qword_1002D3C00, &qword_10024C3E0);
  __chkstk_darwin(v11 - 8);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v55 = &v38 - v14;
  v48 = *(a1 + *(v4 + 44));
  sub_10001D2BC(v15);
  v16 = *(a1 + *(v4 + 36));
  swift_getKeyPath();
  v56 = v16;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16[2].Description + 2);
  v65 = 0;
  v66 = v17;
  KeyPath = swift_getKeyPath();
  sub_10001D258(a1, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v46 = swift_allocObject();
  sub_100169FD0(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v18, type metadata accessor for RCRecordButton);
  v45 = sub_1000C773C(&qword_1002D1508, &qword_10024C430);
  v44 = sub_1000C773C(&qword_1002D3C08, &qword_10024C438);
  v43 = sub_10001E2F0();
  v42 = sub_1000C7784(&qword_1002D3C10, &unk_10024C440);
  v41 = sub_1000C7784(&qword_1002D1BA0, &qword_100245BB8);
  v40 = sub_1000C7784(&qword_1002D3C18, &qword_10024C450);
  v39 = sub_1000C7784(&qword_1002D3C20, &qword_10024C458);
  v19 = sub_100169B74();
  v20 = sub_10001E568();
  v21 = sub_100169C00();
  v22 = sub_1000C7784(&qword_1002D3C68, &qword_10024C480);
  v23 = sub_1000C7784(&qword_1002D3C70, &qword_10024C488);
  v24 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68, &qword_10024C480, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v25 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70, &qword_10024C488, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v56 = &type metadata for RCRecordButton.TextAnimationValues;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v42;
  v57 = &type metadata for RCRecordButton.TextAnimationValues;
  v58 = v41;
  v59 = v40;
  v60 = v39;
  v61 = v19;
  v62 = v20;
  v63 = v21;
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v54;
  ForEach<>.init(_:id:content:)();
  v28 = v49;
  sub_10000B46C(v55, v49, &qword_1002D3C00, &qword_10024C3E0);
  v30 = v50;
  v29 = v51;
  v31 = *(v51 + 16);
  v32 = v52;
  v31(v50, v27, v52);
  v33 = v53;
  v34 = v48;
  *v53 = v48;
  v35 = sub_1000C773C(&qword_1002D3C88, &qword_10024C490);
  sub_10000B46C(v28, &v33[*(v35 + 48)], &qword_1002D3C00, &qword_10024C3E0);
  v31(&v33[*(v35 + 64)], v30, v32);
  v36 = *(v29 + 8);
  v37 = v34;
  v36(v54, v32);
  sub_100003CBC(v55, &qword_1002D3C00, &qword_10024C3E0);
  v36(v30, v32);
  sub_100003CBC(v28, &qword_1002D3C00, &qword_10024C3E0);
}

uint64_t sub_100165C54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = type metadata accessor for RCRecordButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v69 = type metadata accessor for EnvironmentValues();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000C773C(&qword_1002D3C38, &unk_10024C460);
  __chkstk_darwin(v74);
  v10 = &v66 - v9;
  v84 = sub_1000C773C(&qword_1002D3C10, &unk_10024C440);
  __chkstk_darwin(v84);
  v85 = &v66 - v11;
  v12 = *a1;
  v13 = *(v5 + 28);
  v77 = a2;
  v14 = *(a2 + v13);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel___observationRegistrar;
  v87 = v14;
  v86 = sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v14 + 40);
  if (v12 >= *(v16 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_12;
  }

  v71 = v6;
  v72 = v7;
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v12;
  v17 = v16 + 48 * v12;
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  v78 = v15;
  v20 = *(v17 + 48);
  v21 = *(v17 + 56);
  v22 = *(v17 + 64);
  v23 = *(v17 + 72);
  swift_getKeyPath();
  v87 = v14;
  v81 = v18;
  v80 = v19;
  v79 = v20;
  sub_100007D54(v18, v19, v20);
  v83 = v21;

  v82 = v22;

  v76 = v23;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v14 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled) & 1) == 0)
  {
    v31 = v77 + *(v5 + 24);
    v32 = *v31;
    if (*(v31 + 8) == 1)
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v33 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v34 = v67;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100169AE8(v32, 0);
      (*(v68 + 8))(v34, v69);
      if ((v87 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v35 = Text.font(_:)();
    v37 = v36;
    v39 = v38;
    v69 = v40;
    v87 = v76;

    v24 = Text.foregroundStyle<A>(_:)();
    v26 = v41;
    v28 = v42;
    v30 = v43;
    sub_100008020(v35, v37, v39 & 1);

    goto LABEL_10;
  }

LABEL_4:
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
LABEL_10:
  v7 = v73;
  v44 = &v10[*(v74 + 36)];
  v6 = *(sub_1000C773C(&qword_1002D1680, &qword_100245880) + 28);
  v45 = enum case for Image.Scale.large(_:);
  v46 = type metadata accessor for Image.Scale();
  (*(*(v46 - 8) + 104))(v44 + v6, v45, v46);
  *v44 = swift_getKeyPath();
  *v10 = v24;
  *(v10 + 1) = v26;
  v10[16] = v28 & 1;
  *(v10 + 3) = v30;
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  v87 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v70;
  if ((*(v14 + 16) & 1) != 0 && qword_1002CDF40 != -1)
  {
    goto LABEL_15;
  }

LABEL_12:
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v85;
  sub_10001DBEC(v10, v85, &qword_1002D3C38, &unk_10024C460);
  v56 = v55 + *(v84 + 36);
  *v56 = v6;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  v94 = xmmword_10024C0F0;
  swift_getKeyPath();
  v87 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v14 + 56);
  v92 = *(v14 + 48);
  v93 = v57;
  sub_10001D258(v77, v7);
  v58 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v12;
  sub_100169FD0(v7, v59 + v58, type metadata accessor for RCRecordButton);
  v86 = sub_1000C773C(&qword_1002D1BA0, &qword_100245BB8);
  v78 = sub_1000C773C(&qword_1002D3C18, &qword_10024C450);
  v77 = sub_1000C773C(&qword_1002D3C20, &qword_10024C458);
  v74 = sub_100169B74();
  sub_10001E568();
  sub_100169C00();
  v60 = sub_1000C7784(&qword_1002D3C68, &qword_10024C480);
  v61 = sub_1000C7784(&qword_1002D3C70, &qword_10024C488);
  v62 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68, &qword_10024C480, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v63 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70, &qword_10024C488, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v87 = &type metadata for RCRecordButton.TextAnimationValues;
  v88 = v60;
  v89 = v61;
  v90 = v62;
  v91 = v63;
  swift_getOpaqueTypeConformance2();
  v64 = v85;
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  sub_100008020(v81, v80, v79);

  return sub_100003CBC(v64, &qword_1002D3C10, &unk_10024C440);
}

uint64_t sub_1001665BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1000C773C(&qword_1002D3C60, &qword_10024C478);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + *(sub_1000C773C(&qword_1002D3C50, &qword_10024C470) + 36)) = v5;
  static UnitPoint.center.getter();
  v9 = v8;
  v11 = v10;
  result = sub_1000C773C(&qword_1002D3C18, &qword_10024C450);
  v13 = (a3 + *(result + 36));
  *v13 = v6;
  v13[1] = v6;
  v13[2] = v9;
  v13[3] = v11;
  return result;
}

uint64_t sub_100166688@<X0>(uint64_t a1@<X1>, void (*a2)(void, void)@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v40 = a3;
  v5 = sub_1000C773C(&qword_1002D3C20, &qword_10024C458);
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  __chkstk_darwin(v5);
  v37 = &v30 - v7;
  v8 = sub_1000C773C(&qword_1002D3C70, &qword_10024C488);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v36 = &v30 - v11;
  v12 = sub_1000C773C(&qword_1002D3C68, &qword_10024C480);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v15;
  __chkstk_darwin(v16);
  v32 = &v30 - v17;
  swift_getKeyPath();
  v43 = a1;
  v44 = a2;
  sub_1000C773C(&qword_1002D3C90, &qword_10024C510);
  sub_100008034(&qword_1002D3C98, &qword_1002D3C90, &qword_10024C510, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  KeyframeTrack.init(_:content:)();
  v18 = sub_100008034(&qword_1002D3C78, &qword_1002D3C68, &qword_10024C480, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v19 = *(v13 + 8);
  v33 = v13 + 8;
  v34 = v19;
  v19(v15, v12);
  swift_getKeyPath();
  v42 = v31;
  sub_1000C773C(&qword_1002D3CA0, &qword_10024C538);
  sub_100008034(&qword_1002D3CA8, &qword_1002D3CA0, &qword_10024C538, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v20 = v35;
  KeyframeTrack.init(_:content:)();
  v21 = sub_100008034(&qword_1002D3C80, &qword_1002D3C70, &qword_10024C488, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v22 = v36;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v23 = *(v41 + 8);
  v41 += 8;
  v31 = v23;
  v23(v20, v8);
  v24 = v30;
  v25 = v32;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v26 = v37;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v45 = &type metadata for RCRecordButton.TextAnimationValues;
  v46 = v12;
  v47 = v8;
  v48 = v18;
  v49 = v21;
  swift_getOpaqueTypeConformance2();
  v27 = v38;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v39 + 8))(v26, v27);
  v28 = v34;
  v34(v24, v12);
  v31(v22, v8);
  return v28(v25, v12);
}

uint64_t sub_100166BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v65 = sub_1000C773C(&qword_1002D3CB8, &qword_10024C548);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v57 - v5;
  v76 = sub_1000C773C(&qword_1002D3CD0, &qword_10024C580);
  v68 = *(v76 - 8);
  __chkstk_darwin(v76);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v57 - v8;
  v9 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v9 - 8);
  v69 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C773C(&qword_1002D3CC0, &qword_10024C550);
  v71 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v57 - v14;
  __chkstk_darwin(v15);
  v58 = &v57 - v16;
  __chkstk_darwin(v17);
  v64 = &v57 - v18;
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  __chkstk_darwin(v22);
  v72 = &v57 - v23;
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  __chkstk_darwin(v27);
  v63 = &v57 - v28;
  v29 = sub_1000C773C(&qword_1002D3C90, &qword_10024C510);
  v74 = *(v29 - 8);
  v75 = v29;
  __chkstk_darwin(v29);
  v73 = &v57 - v30;
  v31 = *(type metadata accessor for RCRecordButton(0) + 28);
  v70 = a2;
  v32 = *(a2 + v31);
  swift_getKeyPath();
  v79 = v32;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v32 + 56) | (*(v32 + 48) != a1);
  swift_getKeyPath();
  v79 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v32 + 57))
  {
    v79 = 0;
    if (v33)
    {
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v34 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
      v35 = v72;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v36 = *(v71 + 8);
      v36(v21, v11);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v79 = &type metadata for Double;
      v80 = v11;
      v81 = v11;
      v82 = v34;
      v83 = v34;
      swift_getOpaqueTypeConformance2();
      v37 = v66;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      v36(v21, v11);
      v36(v35, v11);
    }

    else
    {
      swift_getKeyPath();
      v78 = v32;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      static UnitCurve.linear.getter();
      v43 = v58;
      LinearKeyframe.init(_:duration:timingCurve:)();
      v44 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v45 = *(v71 + 8);
      v45(v43, v11);
      v79 = 0x3FF0000000000000;
      swift_getKeyPath();
      v78 = v32;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      static UnitCurve.linear.getter();
      v46 = v59;
      LinearKeyframe.init(_:duration:timingCurve:)();
      v47 = v60;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v45(v46, v11);
      v48 = v72;
      v49 = v64;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v50 = v61;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v79 = &type metadata for Double;
      v80 = v11;
      v81 = v11;
      v82 = v44;
      v83 = v44;
      swift_getOpaqueTypeConformance2();
      v37 = v66;
      v51 = v65;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      (*(v62 + 8))(v50, v51);
      v45(v48, v11);
      v45(v47, v11);
      v45(v49, v11);
    }

    v52 = v76;
    sub_100008034(&qword_1002D3CD8, &qword_1002D3CD0, &qword_10024C580, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v53 = v67;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
    v42 = v73;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v54 = *(v68 + 8);
    v54(v53, v52);
    v54(v37, v52);
  }

  else
  {
    v38 = 1.0;
    if (v33)
    {
      v38 = 0.0;
    }

    v79 = *&v38;
    swift_getKeyPath();
    v78 = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static UnitCurve.linear.getter();
    LinearKeyframe.init(_:duration:timingCurve:)();
    sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
    v39 = v63;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v40 = *(v71 + 8);
    v40(v26, v11);
    v41 = v72;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_100008034(&qword_1002D3CD8, &qword_1002D3CD0, &qword_10024C580, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v42 = v73;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    v40(v41, v11);
    v40(v39, v11);
  }

  sub_100008034(&qword_1002D3C98, &qword_1002D3C90, &qword_10024C510, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v55 = v75;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v74 + 8))(v42, v55);
}

uint64_t sub_100167770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = sub_1000C773C(&qword_1002D3CB0, &qword_10024C540);
  v41 = *(v49 - 8);
  __chkstk_darwin(v49);
  v40 = &v38 - v3;
  v48 = sub_1000C773C(&qword_1002D3CB8, &qword_10024C548);
  v39 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v38 - v4;
  v5 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C773C(&qword_1002D3CC0, &qword_10024C550);
  v47 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v9;
  __chkstk_darwin(v10);
  v51 = &v38 - v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v42 = &v38 - v16;
  v17 = sub_1000C773C(&qword_1002D3CA0, &qword_10024C538);
  v45 = *(v17 - 8);
  v46 = v17;
  __chkstk_darwin(v17);
  v52 = &v38 - v18;
  v19 = *(a1 + *(type metadata accessor for RCRecordButton(0) + 28));
  swift_getKeyPath();
  v54 = v19;
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v19 + 58) == 1)
  {
    v54 = 0x3FF0000000000000;
    swift_getKeyPath();
    v53 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static UnitCurve.linear.getter();
    LinearKeyframe.init(_:duration:timingCurve:)();
    v20 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v21 = *(v47 + 1);
    v21(v14, v6);
    v22 = v21;
    v54 = 0x3FF3333333333333;
    static UnitCurve.linear.getter();
    v23 = v43;
    LinearKeyframe.init(_:duration:timingCurve:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v22(v23, v6);
    v47 = v22;
    v54 = 0x3FF0000000000000;
    static UnitCurve.linear.getter();
    v24 = v38;
    LinearKeyframe.init(_:duration:timingCurve:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v22(v24, v6);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v54 = &type metadata for Double;
    v55 = v6;
    v56 = v6;
    v57 = v20;
    v58 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v40;
    v27 = v48;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v54 = &type metadata for Double;
    v55 = v27;
    v56 = v6;
    v57 = OpaqueTypeConformance2;
    v58 = v20;
    swift_getOpaqueTypeConformance2();
    v28 = v49;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    (*(v41 + 8))(v26, v28);
    (*(v39 + 8))(v44, v27);
    v29 = v47;
    v47(v24, v6);
    v29(v23, v6);
    v29(v51, v6);
    v29(v42, v6);
  }

  else
  {
    v54 = 0x3FF0000000000000;
    static UnitCurve.linear.getter();
    v30 = v43;
    LinearKeyframe.init(_:duration:timingCurve:)();
    v31 = sub_100008034(&qword_1002D3CC8, &qword_1002D3CC0, &qword_10024C550, &protocol conformance descriptor for LinearKeyframe<A>);
    v32 = v51;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v33 = *(v47 + 1);
    v33(v30, v6);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v54 = &type metadata for Double;
    v55 = v6;
    v56 = v6;
    v57 = v31;
    v58 = v31;
    v34 = swift_getOpaqueTypeConformance2();
    v54 = &type metadata for Double;
    v55 = v48;
    v56 = v6;
    v57 = v34;
    v58 = v31;
    swift_getOpaqueTypeConformance2();
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v33(v30, v6);
    v33(v32, v6);
  }

  sub_100008034(&qword_1002D3CA8, &qword_1002D3CA0, &qword_10024C538, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v35 = v52;
  v36 = v46;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v45 + 8))(v35, v36);
}

uint64_t sub_1001680A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016A0A0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100168108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016A0A0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10016816C(uint64_t a1)
{
  sub_10016A0A0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100168194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_100168264@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_100168334@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 18);
  return result;
}

double sub_100168404@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_10016854C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001685D0()
{
  result = qword_1002D3B08;
  if (!qword_1002D3B08)
  {
    sub_1000C7784(&qword_1002D3B10, &qword_10024C1F8);
    sub_10016865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B08);
  }

  return result;
}

unint64_t sub_10016865C()
{
  result = qword_1002D3B18;
  if (!qword_1002D3B18)
  {
    sub_1000C7784(&qword_1002D3B20, &qword_10024C200);
    sub_100008034(&qword_1002D3B28, &qword_1002D3B30, &qword_10024C208, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B18);
  }

  return result;
}

double sub_100168714@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);

  return result;
}

uint64_t sub_1001687EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_100168898(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100168964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100168A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 58);
  *a2 = *(v3 + 57);
  a2[1] = v5;
  return result;
}

uint64_t sub_100168AF8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100168BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  v5 = type metadata accessor for AttributedString();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100168CC8(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10000A734(v5);
}

uint64_t sub_100168D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A1A4(&qword_1002CF718, type metadata accessor for RCRecordButtonViewModel, &unk_10024DE84);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10VoiceMemos23RCRecordButtonViewModel__disabled);
  return result;
}

uint64_t sub_100168E6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C773C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10000B46C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_1001690BC()
{
  result = qword_1002D3B38;
  if (!qword_1002D3B38)
  {
    sub_1000C7784(&qword_1002D3A90, &qword_10024C198);
    sub_100008034(&qword_1002D3B40, &qword_1002D3A88, &qword_10024C190, &protocol conformance descriptor for Button<A>);
    sub_100008034(&qword_1002D3B48, &qword_1002D3B50, &qword_10024C268, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B38);
  }

  return result;
}

uint64_t sub_1001691A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_100169270()
{
  result = qword_1002D3B68;
  if (!qword_1002D3B68)
  {
    sub_1000C7784(&qword_1002D3AC0, &qword_10024C1C8);
    sub_100169328();
    sub_100008034(&qword_1002D3BC8, &qword_1002D3BD0, &qword_10024C390, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B68);
  }

  return result;
}

unint64_t sub_100169328()
{
  result = qword_1002D3B70;
  if (!qword_1002D3B70)
  {
    sub_1000C7784(&qword_1002D3AB8, &qword_10024C1C0);
    sub_1001693E0();
    sub_100008034(&qword_1002D3BB8, &qword_1002D3BC0, &qword_10024C388, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B70);
  }

  return result;
}

unint64_t sub_1001693E0()
{
  result = qword_1002D3B78;
  if (!qword_1002D3B78)
  {
    sub_1000C7784(&qword_1002D3AB0, &qword_10024C1B8);
    sub_100169498();
    sub_100008034(&qword_1002D3BA8, &qword_1002D3BB0, &qword_10024C380, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B78);
  }

  return result;
}

unint64_t sub_100169498()
{
  result = qword_1002D3B80;
  if (!qword_1002D3B80)
  {
    sub_1000C7784(&qword_1002D3AA8, &qword_10024C1B0);
    sub_100169550();
    sub_100008034(&qword_1002D3B98, &qword_1002D3BA0, &qword_10024C378, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B80);
  }

  return result;
}

unint64_t sub_100169550()
{
  result = qword_1002D3B88;
  if (!qword_1002D3B88)
  {
    sub_1000C7784(&qword_1002D3AA0, &qword_10024C1A8);
    sub_1000C7784(&qword_1002D3A90, &qword_10024C198);
    type metadata accessor for GlassProminentButtonStyle();
    sub_1001690BC();
    sub_10000A1A4(&qword_1002D3B58, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002D3B90, &qword_1002D3B60, &qword_10024C2C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3B88);
  }

  return result;
}

unint64_t sub_100169694()
{
  result = qword_1002D3BD8;
  if (!qword_1002D3BD8)
  {
    sub_1000C7784(&qword_1002D3AD0, &qword_10024C1D8);
    sub_10016974C(&qword_1002D3BE0, &qword_1002D3AC8, &qword_10024C1D0, sub_100169270);
    sub_10001D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3BD8);
  }

  return result;
}

uint64_t sub_10016974C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2, a3);
    a4();
    sub_10000A1A4(&qword_1002D1568, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100169800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlSize();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ControlSize.mini(_:) || v13 == enum case for ControlSize.small(_:))
  {
    v15 = 5.0;
  }

  else
  {
    v15 = 7.0;
    if (v13 != enum case for ControlSize.regular(_:))
    {
      if (v13 == enum case for ControlSize.large(_:) || v13 == enum case for ControlSize.extraLarge(_:))
      {
        v15 = 15.0;
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }
  }

  (*(v5 + 16))(v7, a2, v4);
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 != enum case for DynamicTypeSize.accessibility1(_:) && v17 != enum case for DynamicTypeSize.accessibility2(_:) && v17 != enum case for DynamicTypeSize.accessibility3(_:) && v17 != enum case for DynamicTypeSize.accessibility4(_:) && v17 != enum case for DynamicTypeSize.accessibility5(_:))
  {
    (*(v5 + 8))(v7, v4, 10.0);
  }

  return v15;
}

uint64_t sub_100169AE8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_100169AF4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RCRecordButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100165C54(a1, v6, a2);
}

unint64_t sub_100169B74()
{
  result = qword_1002D3C28;
  if (!qword_1002D3C28)
  {
    sub_1000C7784(&qword_1002D3C10, &unk_10024C440);
    sub_10001E3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C28);
  }

  return result;
}

unint64_t sub_100169C00()
{
  result = qword_1002D3C40;
  if (!qword_1002D3C40)
  {
    sub_1000C7784(&qword_1002D3C18, &qword_10024C450);
    sub_100169C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C40);
  }

  return result;
}

unint64_t sub_100169C8C()
{
  result = qword_1002D3C48;
  if (!qword_1002D3C48)
  {
    sub_1000C7784(&qword_1002D3C50, &qword_10024C470);
    sub_100008034(&qword_1002D3C58, &qword_1002D3C60, &qword_10024C478, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3C48);
  }

  return result;
}

uint64_t sub_100169D44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCRecordButton(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100166688(v4, v5, a1);
}

uint64_t sub_100169DD8()
{
  v1 = type metadata accessor for RCRecordButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000C773C(&qword_1002D0F10, &qword_10024C3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ControlSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000C773C(&qword_1002D0F18, &qword_1002450C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_100169AE8(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  sub_100014B64((v5 + v1[8]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100169FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10016A04C()
{
  result = qword_1002D3D70;
  if (!qword_1002D3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D70);
  }

  return result;
}

unint64_t sub_10016A0A0()
{
  result = qword_1002D3D78;
  if (!qword_1002D3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3D78);
  }

  return result;
}

uint64_t sub_10016A0F4(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for TranscriptionData(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptionPresentationModel(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.init()();
  v11 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = v2 + v11;
  v16 = v25;
  v14(v15, v25, v12);
  v14(v6, v16, v12);
  v17 = *(v4 + 28);
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  v18 = &v10[v8[9]];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v10[v8[10]] = _swiftEmptyArrayStorage;
  v19 = &v10[v8[11]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v10[v8[12]] = 0;
  v20 = &v10[v8[8]];
  v21 = type metadata accessor for TranscriptionParagraphFormatter(0);
  v20[3] = v21;
  v20[4] = &off_100293B58;
  v22 = sub_100015800(v20);
  v14(v22 + *(v21 + 20), v6, v12);
  *v22 = 3;
  sub_10016CC98(&v6[v17]);
  (*(v13 + 8))(v25, v12);
  sub_10016E0DC(v6, type metadata accessor for TranscriptionData);
  sub_10016E258(v10, v2 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel, type metadata accessor for TranscriptionPresentationModel);
  return v2;
}

uint64_t sub_10016A37C()
{
  v1 = sub_1000C773C(&qword_1002D3F90, &unk_10024C7D0);
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v21 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  __chkstk_darwin(v21);
  v15 = &v20 - v14;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = v0;
    v17 = *(v8 + 32);
    v17(v6, v13, v7);
    v17(&v6[*(v1 + 48)], v10, v7);
    sub_10000B46C(v6, v3, &qword_1002D3F90, &unk_10024C7D0);
    v18 = *(v1 + 48);
    v17(v15, v3, v7);
    v19 = *(v8 + 8);
    v19(&v3[v18], v7);
    sub_10016E13C(v6, v3);
    v17(&v15[*(v21 + 36)], &v3[*(v1 + 48)], v7);
    v19(v3, v7);
    sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
    AttributedString.removeSubrange<A>(_:)();
    return sub_100003CBC(v15, &qword_1002CFFD8, &qword_1002440C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016A6BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_beginAccess();
    sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    AttributedString.append<A>(_:)();
    swift_endAccess();
    v10 = v3 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
    swift_beginAccess();
    v11 = type metadata accessor for TranscriptionPresentationModel(0);
    sub_10016C970(v9, *(v10 + *(v11 + 40)));
    sub_10016CC98(v9);
    (*(v7 + 8))(v9, v6);
    return swift_endAccess();
  }

  else
  {
    sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v13 = String.init<A>(_:)();
    v15 = v14;
    v16 = v3 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
    swift_beginAccess();
    v17 = (v16 + *(type metadata accessor for TranscriptionPresentationModel(0) + 36));
    *v17 = v13;
    v17[1] = v15;
  }
}

uint64_t sub_10016A974(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for TranscriptionPresentationModel(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptionData(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  swift_beginAccess();
  sub_10016A37C();
  swift_endAccess();
  v14 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v15 = type metadata accessor for Locale();
  v16 = *(*(v15 - 8) + 16);
  v16(v13, v2 + v14, v15);
  v17 = *(v8 + 28);
  v18 = type metadata accessor for AttributedString();
  (*(*(v18 - 8) + 16))(&v13[v17], v26, v18);
  sub_10016E074(v13, v10, type metadata accessor for TranscriptionData);
  AttributedString.init(stringLiteral:)();
  AttributedString.init(stringLiteral:)();
  v19 = &v6[v4[9]];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  *&v6[v4[10]] = _swiftEmptyArrayStorage;
  v20 = &v6[v4[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v6[v4[12]] = 0;
  v21 = &v6[v4[8]];
  v22 = type metadata accessor for TranscriptionParagraphFormatter(0);
  v21[3] = v22;
  v21[4] = &off_100293B58;
  v23 = sub_100015800(v21);
  v16(v23 + *(v22 + 20), v10, v15);
  *v23 = 3;
  sub_10016CC98(&v10[*(v8 + 28)]);
  sub_10016E0DC(v10, type metadata accessor for TranscriptionData);
  sub_10016E0DC(v13, type metadata accessor for TranscriptionData);
  v24 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
  swift_beginAccess();
  sub_10016E1AC(v6, v2 + v24);
  return swift_endAccess();
}

uint64_t sub_10016AC58()
{
  v1 = v0;
  v44 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v44);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributedSubstring();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000C773C(&qword_1002D3F78, &qword_10024C7C8);
  __chkstk_darwin(v45);
  v49 = &v41 - v5;
  v6 = type metadata accessor for AttributedString.Runs.Index();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v50 = type metadata accessor for AttributedString.Runs();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptionPresentationModel(0);
  v14 = v13[8];
  v15 = (v0 + v13[7]);
  v16 = v15[1];
  v56 = *v15;
  v57 = v16;
  v55[5] = *(v1 + v14);
  v17 = v13[5];
  v18 = type metadata accessor for AttributedString();
  v19 = sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);

  v54 = v1;
  v41 = v17;
  v42 = v18;
  v20 = v19;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  sub_10016E210(&qword_1002D3F98, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v21 = v50;
  dispatch thunk of Collection.startIndex.getter();
  v22 = v51;
  dispatch thunk of Collection.endIndex.getter();
  sub_10016E210(&qword_1002D3FA0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v53 + 1);
  v23(v22, v6);
  v23(v10, v6);
  (*(v52 + 8))(v12, v21);
  if ((v16 & 1) == 0)
  {
    v53 = v13;
    v24 = v49;
    AttributedString.endIndex.getter();
    type metadata accessor for AttributedString.Index();
    sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v26 = v54;
    v27 = v42;
    AttributedString.append<A>(_:)();
    sub_100008034(&qword_1002D3F80, &qword_1002D3F78, &qword_10024C7C8, &protocol conformance descriptor for PartialRangeFrom<A>);
    v28 = v46;
    AttributedString.subscript.getter();
    sub_10016E210(byte_1002D1388, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
    v29 = v48;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v30._countAndFlagsBits = String.init<A>(_:)();
    String.append(_:)(v30);

    v55[3] = v27;
    v55[4] = v20;
    v31 = sub_100015800(v55);
    (*(*(v27 - 8) + 16))(v31, v26, v27);
    v32 = sub_10011D638();
    __chkstk_darwin(v32);
    *(&v41 - 2) = v55;
    v33 = sub_10011B1FC(sub_10016E3C4, (&v41 - 4), v32);

    sub_100014B64(v55);
    sub_1001B1E74(v33);
    AttributedString.removeSubrange<A>(_:)();
    (*(v47 + 8))(v28, v29);
    sub_100003CBC(v24, &qword_1002D3F78, &qword_10024C7C8);
    v13 = v53;
  }

  v34 = (v54 + v13[9]);
  v35 = v34[1];
  if (!v35)
  {
    return v56;
  }

  v36 = *v34;
  v37 = *v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v35) & 0xF;
  }

  if (!v37)
  {
    return v56;
  }

  v38 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v38 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v55[0] = v56;
    v55[1] = v57;

    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);

    v40._countAndFlagsBits = v36;
    v40._object = v35;
    String.append(_:)(v40);

    return v55[0];
  }

  else
  {

    return v36;
  }
}

uint64_t sub_10016B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = type metadata accessor for TimeRangeRun(0);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_1000C773C(&qword_1002D3F78, &qword_10024C7C8);
  __chkstk_darwin(v57);
  v56 = &v47 - v6;
  v59 = type metadata accessor for AttributedString();
  v72 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedSubstring();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v69 = type metadata accessor for AttributedString.Index();
  v14 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for TranscriptionFragment(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v67 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AttributedString.init()();
  v66 = *(a1 + 16);
  if (!v66)
  {
    return result;
  }

  v65 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v23 = 0;
  v64 = *(v19 + 24);
  v54 = (v72 + 1);
  v72 = (v14 + 8);
  v63 = *(v20 + 72);
  v70 = (v9 + 8);
  v53 = (v14 + 16);
  v47 = v8;
  v51 = v13;
  v50 = v18;
  v52 = a2;
  while (1)
  {
    v71 = v23;
    v25 = v67;
    sub_10016E074(v65 + v63 * v23, v67, type metadata accessor for TranscriptionFragment);
    v26 = v25[2];
    v27 = *v25;
    AttributedString.endIndex.getter();
    sub_10016BCC4(v13, v27, v25[1]);
    sub_10016E0DC(v25, type metadata accessor for TranscriptionFragment);
    v28 = v18;
    if (sub_10016DED0())
    {
      v29 = v58;
      AttributedString.init(stringLiteral:)();
      static AttributedString.+= infix(_:_:)();
      (*v54)(v29, v59);
    }

    sub_10016E210(byte_1002D1388, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
    AttributedString.append<A>(_:)();
    v30 = v68;
    AttributedString.endIndex.getter();
    sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    v31 = v69;
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    v33 = v30;
    v34 = *v72;
    (*v72)(v33, v31);
    if (v32)
    {
      break;
    }

    (*v70)(v13, v8);
    v24 = v71;
LABEL_4:
    v23 = v24 + 1;
    result = v34(v28, v31);
    v18 = v28;
    if (v23 == v66)
    {
      return result;
    }
  }

  sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  v62 = v34;
  v35 = v56;
  (*v53)(v56, v28, v31);
  sub_100008034(&qword_1002D3F80, &qword_1002D3F78, &qword_10024C7C8, &protocol conformance descriptor for PartialRangeFrom<A>);
  v36 = v55;
  AttributedString.subscript.getter();
  sub_100003CBC(v35, &qword_1002D3F78, &qword_10024C7C8);
  v37 = sub_10011D638();
  v38 = *v70;
  (*v70)(v36, v8);
  v39 = v37[2];
  if (!v39)
  {

LABEL_15:
    v13 = v51;
    v38(v51, v8);
    v28 = v50;
    v24 = v71;
    v34 = v62;
    goto LABEL_4;
  }

  v61 = v38;
  v40 = v26 - v27;
  v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v60 = v37;
  v42 = v37 + v41;
  v43 = *(v48 + 72);
  while (1)
  {
    result = sub_10016E074(v42, v5, type metadata accessor for TimeRangeRun);
    v44 = v40 + *v5;
    v45 = v40 + v5[1];
    if (v44 > v45)
    {
      break;
    }

    sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
    sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
    v46 = AttributedString.subscript.modify();
    v73 = v44;
    v74 = v45;
    v75 = 0;
    sub_1000E78D8();
    AttributedSubstring.subscript.setter();
    v46(v76, 0);
    sub_10016E0DC(v5, type metadata accessor for TimeRangeRun);
    v42 += v43;
    if (!--v39)
    {

      v8 = v47;
      v31 = v69;
      v38 = v61;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10016BCC4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v58 = a1;
  v54 = sub_1000C773C(&qword_1002D3F90, &unk_10024C7D0);
  __chkstk_darwin(v54);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v52 - v8;
  v61 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  __chkstk_darwin(v61);
  v55 = &v52 - v9;
  v57 = type metadata accessor for TimeRangeRun(0);
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v52 - v14;
  __chkstk_darwin(v15);
  v59 = &v52 - v16;
  __chkstk_darwin(v17);
  v19 = (&v52 - v18);
  v56 = v3;
  result = sub_10011D5F0();
  v21 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v23 = 0;
    v24 = _swiftEmptyArrayStorage;
    v62 = v12;
    while (v23 < *(v21 + 16))
    {
      v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v26 = *(v10 + 72);
      sub_10016E074(v21 + v25 + v26 * v23, v19, type metadata accessor for TimeRangeRun);
      v27 = *v19;
      v28 = v19[1];
      if (*v19 <= a3)
      {
        v29 = *v19;
      }

      else
      {
        v29 = a3;
      }

      if (v27 < a2)
      {
        v29 = a2;
      }

      if (v28 >= a2)
      {
        v30 = v19[1];
      }

      else
      {
        v30 = a2;
      }

      if (v28 > a3)
      {
        v30 = a3;
      }

      if (v29 == v27 && v30 == v28)
      {
        sub_10016E258(v19, v12, type metadata accessor for TimeRangeRun);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001AE6B8(0, v24[2] + 1, 1);
          v24 = v63;
        }

        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          sub_1001AE6B8((v33 > 1), v34 + 1, 1);
          v24 = v63;
        }

        v24[2] = v34 + 1;
        v35 = v24 + v25 + v34 * v26;
        v12 = v62;
        result = sub_10016E258(v62, v35, type metadata accessor for TimeRangeRun);
      }

      else
      {
        result = sub_10016E0DC(v19, type metadata accessor for TimeRangeRun);
      }

      if (v22 == ++v23)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_26:

    v36 = v24[2];
    if (!v36)
    {

      return AttributedSubstring.init()();
    }

    v37 = v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v38 = v59;
    sub_10016E074(v37, v59, type metadata accessor for TimeRangeRun);
    v39 = v60;
    sub_10016E074(v37 + *(v10 + 72) * (v36 - 1), v60, type metadata accessor for TimeRangeRun);

    v40 = *(v57 + 20);
    v41 = v40 + *(v61 + 36);
    v42 = type metadata accessor for AttributedString.Index();
    sub_10016E210(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v43 = *(v42 - 8);
      v44 = v43[2];
      v45 = v52;
      v44(v52, v38 + v40, v42);
      v46 = v54;
      v44((v45 + *(v54 + 48)), v39 + v41, v42);
      v47 = v53;
      sub_10000B46C(v45, v53, &qword_1002D3F90, &unk_10024C7D0);
      v48 = *(v46 + 48);
      v49 = v43[4];
      v50 = v55;
      v49(v55, v47, v42);
      v51 = v43[1];
      v51(v47 + v48, v42);
      sub_10016E13C(v45, v47);
      v49((v50 + *(v61 + 36)), v47 + *(v46 + 48), v42);
      v51(v47, v42);
      type metadata accessor for AttributedString();
      sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
      dispatch thunk of AttributedStringProtocol.subscript.getter();
      sub_100003CBC(v50, &qword_1002CFFD8, &qword_1002440C0);
      sub_10016E0DC(v60, type metadata accessor for TimeRangeRun);
      return sub_10016E0DC(v59, type metadata accessor for TimeRangeRun);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10016C33C()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v12[-v5];
  type metadata accessor for AttributedString.CharacterView();
  sub_10016E210(&qword_1002D1CD8, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v7 = 0;
  if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_10016E210(&qword_1002D3F88, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v9 = dispatch thunk of Collection.subscript.read();
    v7 = *v10;

    v9(v12, 0);
    v8(v6, v0);
  }

  return v7;
}

uint64_t sub_10016C53C()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale;
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_liveTranscriptionString;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10016E0DC(v0 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel, type metadata accessor for TranscriptionPresentationModel);

  return swift_deallocClassInstance();
}

uint64_t sub_10016C664(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributedString();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TranscriptionPresentationModel(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10016C7B0(uint64_t a1)
{
  type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    sub_10016C8BC();
    if (v2 <= 0x3F)
    {
      sub_10016C920(319, &unk_1002D3F30, &type metadata for TimedTextRange, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_10016C920(319, &qword_1002D08B8, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10016C8BC()
{
  result = qword_1002D3F28;
  if (!qword_1002D3F28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002D3F28);
  }

  return result;
}

void sub_10016C920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10016C970@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for TimeRangeRun(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  if (a2 == 0.0)
  {

    return v16(a1, v2, v12);
  }

  else
  {
    v29 = v11;
    v16(&v26 - v14, v2, v12);
    v18 = sub_10011D5F0();
    v19 = v18[2];
    if (v19)
    {
      v30 = v15;
      v26 = v10;
      v27 = a1;
      v20 = *(v6 + 80);
      v28 = v18;
      v21 = v18 + ((v20 + 32) & ~v20);
      v22 = *(v6 + 72);
      while (1)
      {
        result = sub_10016E074(v21, v8, type metadata accessor for TimeRangeRun);
        v23 = *v8 + a2;
        v24 = v8[1] + a2;
        if (v23 > v24)
        {
          break;
        }

        sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
        sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
        v25 = AttributedString.subscript.modify();
        v31 = v23;
        v32 = v24;
        v33 = 0;
        sub_1000E78D8();
        AttributedSubstring.subscript.setter();
        v25(v34, 0);
        sub_10016E0DC(v8, type metadata accessor for TimeRangeRun);
        v21 += v22;
        if (!--v19)
        {

          v10 = v26;
          a1 = v27;
          v15 = v30;
          return (*(v10 + 32))(a1, v15, v29);
        }
      }

      __break(1u);
    }

    else
    {

      return (*(v10 + 32))(a1, v15, v29);
    }
  }

  return result;
}

uint64_t sub_10016CC98(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AttributedString.Index();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AttributedString.Runs.Index();
  v39 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = v29 - v7;
  v33 = type metadata accessor for AttributedString.Runs();
  v37 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PartialTranscriptionFormattingResult(0);
  __chkstk_darwin(v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptionPresentationModel(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for AttributedString();
  v16 = sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  AttributedString.append<A>(_:)();
  v38 = v13;
  v17 = (v1 + *(v13 + 24));
  v19 = v17[3];
  v18 = v17[4];
  sub_10000AACC(v17, v19);
  (*(v18 + 16))(v1 + v14, v19, v18);
  sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
  AttributedString.removeSubrange<A>(_:)();
  v29[0] = v16;
  v29[1] = v15;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  sub_10016E210(&qword_1002D3F98, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v20 = v33;
  v21 = v34;
  dispatch thunk of Collection.startIndex.getter();
  v22 = v36;
  dispatch thunk of Collection.endIndex.getter();
  sub_10016E210(&qword_1002D3FA0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
  v23 = v35;
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v39 + 8);
  v25(v22, v23);
  v25(v21, v23);
  (*(v37 + 8))(v9, v20);
  if ((v24 & 1) == 0)
  {
    v26 = v30;
    AttributedString.endIndex.getter();
    AttributedString.append<A>(_:)();
    sub_10016D408(v26);
    (*(v31 + 8))(v26, v32);
  }

  sub_10016E0DC(v12, type metadata accessor for PartialTranscriptionFormattingResult);
  v27 = (v2 + *(v38 + 36));

  *v27 = 0;
  v27[1] = 0;
  return result;
}

uint64_t sub_10016D154(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for AttributedSubstring();
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for TranscriptionPresentationModel(0);
  v20 = v19[5];
  result = static AttributedString.+ infix(_:_:)();
  v22 = *(v2 + v19[10]);
  if (v22 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v32 = v18;
    sub_10016BCC4(v5, 0.0, v22);
    AttributedString.init(_:)();
    v23 = (v2 + v19[6]);
    v30 = v20;
    v31 = v15;
    v25 = v23[3];
    v24 = v23[4];
    sub_10000AACC(v23, v25);
    (*(v24 + 24))(v15, v25, v24);
    AttributedString.init(stringLiteral:)();
    v26 = *(v7 + 40);
    v26(v2 + v30, v9, v6);
    AttributedString.init(stringLiteral:)();
    v26(v2, v9, v6);
    v27 = (v2 + v19[7]);

    *v27 = 0;
    v27[1] = 0xE000000000000000;
    sub_10016CC98(v12);
    v28 = *(v7 + 8);
    v28(v12, v6);
    v28(v31, v6);
    return (v28)(v32, v6);
  }

  return result;
}

uint64_t sub_10016D408(uint64_t a1)
{
  v2 = v1;
  v28 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v28);
  v4 = sub_1000C773C(&qword_1002D3F78, &qword_10024C7C8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for AttributedSubstring();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.startIndex.getter();
  v14 = static AttributedString.Index.== infix(_:_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = type metadata accessor for TranscriptionPresentationModel(0);
    String.removeAll(keepingCapacity:)(0);
    v16 = *(v15 + 32);

    *(v2 + v16) = _swiftEmptyArrayStorage;
  }

  sub_10016E210(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(v11 + 16))(v6, a1, v10);
    sub_100008034(&qword_1002D3F80, &qword_1002D3F78, &qword_10024C7C8, &protocol conformance descriptor for PartialRangeFrom<A>);
    AttributedString.subscript.getter();
    sub_100003CBC(v6, &qword_1002D3F78, &qword_10024C7C8);
    sub_10016E210(byte_1002D1388, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
    v18 = v30;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10016E210(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v19 = String.init<A>(_:)();
    v21 = v20;
    type metadata accessor for TranscriptionPresentationModel(0);
    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = type metadata accessor for AttributedString();
    v31[3] = v23;
    v31[4] = sub_10016E210(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    v24 = sub_100015800(v31);
    (*(*(v23 - 8) + 16))(v24, v2, v23);
    v25 = sub_10011D638();
    __chkstk_darwin(v25);
    *(&v27 - 2) = v31;
    v26 = sub_10011B1FC(sub_10011E0FC, (&v27 - 4), v25);

    sub_100014B64(v31);
    sub_1001B1E74(v26);
    return (*(v29 + 8))(v9, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016D8F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a2[3];
  v12 = sub_10000AACC(a2, v11);
  v13 = type metadata accessor for TimeRangeRun(0);
  v14 = sub_10000B46C(a1 + *(v13 + 20), v8, &qword_1002CFFD8, &qword_1002440C0);
  v15 = __chkstk_darwin(v14);
  (*(v17 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11, v15);
  sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
  result = _NSRange.init<A, B>(_:in:)();
  *a3 = v9;
  a3[1] = v10;
  a3[2] = result;
  a3[3] = v19;
  return result;
}

unint64_t sub_10016DADC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10016DC2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10016DC2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10016DCC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10016DD38(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10016DCC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1000D4010(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10016DD38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10016DE5C(unint64_t a1, unint64_t a2)
{
  if (Character.isWhitespace.getter())
  {
    return 1;
  }

  result = sub_10016DADC(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v5;
  }

  return result;
}

uint64_t sub_10016DED0()
{
  v0 = type metadata accessor for AttributedString.CharacterView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  AttributedString.characters.getter();
  v7 = sub_10016C33C();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v9)
  {
    AttributedSubstring.characters.getter();
    v11 = sub_1001357E8();
    v13 = v12;
    v10(v3, v0);
    if (v13 && (v14 = sub_10016DE5C(v7, v9), , (v14 & 1) == 0))
    {
      v16 = sub_10016DE5C(v11, v13);

      v15 = v16 ^ 1;
    }

    else
    {

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10016E074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016E0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016E13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D3F90, &unk_10024C7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016E1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionPresentationModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016E210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016E258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10016E2E8(uint64_t a1)
{
  sub_10016E36C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10016E36C()
{
  if (!qword_1002D4010)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D4010);
    }
  }
}

id sub_10016E3DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);

  os_unfair_lock_lock(v4 + 4);

  v5 = [a1 format];
  v6 = v2[2];
  sub_10016EBCC();
  v7 = v6;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    v9 = a1;

    v10 = v2[4];

    os_unfair_lock_unlock(v10 + 4);

    return v9;
  }

  v12 = v2[3];
  if (!v12 || (v13 = [v12 outputFormat]) == 0 || (v14 = v13, v15 = v7, v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16 & 1) == 0) || (v17 = v2[3]) == 0 || (v18 = objc_msgSend(v17, "inputFormat")) == 0 || (v19 = v18, v20 = v5, v21 = static NSObject.== infix(_:_:)(), v19, v20, (v21 & 1) == 0))
  {
    v22 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v5 toFormat:v7];
    v23 = v2[3];
    v2[3] = v22;

    v24 = v2[3];
    if (!v24)
    {
LABEL_24:
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100018D90(v49, qword_1002E8CB0);
      v50 = static os_log_type_t.error.getter();
      v5 = v5;

      v51 = Logger.logObject.getter();

      if (os_log_type_enabled(v51, v50))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412546;
        *(v52 + 4) = v5;
        *(v52 + 12) = 2112;
        *(v52 + 14) = v7;
        *v53 = v5;
        v53[1] = v7;
        v54 = v7;
        v55 = v5;
        _os_log_impl(&_mh_execute_header, v51, v50, "Failed to create converter, inputFormat = %@, outputFormat %@", v52, 0x16u);
        sub_1000C773C(&unk_1002D3690, &qword_100242370);
        swift_arrayDestroy();
      }

      sub_10016EC18();
      swift_allocError();
      *v56 = 1;
      swift_willThrow();
      goto LABEL_29;
    }

    [v24 setPrimeMethod:2];
  }

  v25 = v2[3];
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v26 inputFormat];
  [v27 sampleRate];
  if (v28 <= 0.0)
  {
    goto LABEL_22;
  }

  v29 = [v27 channelCount];

  if (!v29)
  {
LABEL_23:

    goto LABEL_24;
  }

  v27 = [v26 outputFormat];
  [v27 sampleRate];
  if (v30 <= 0.0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v31 = [v27 channelCount];

  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = [v26 outputFormat];
  [v32 sampleRate];
  v34 = v33;

  v35 = [v26 inputFormat];
  [v35 sampleRate];
  v37 = v36;

  v38 = ceil(v34 / v37 * [a1 frameLength]);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v38 <= -1.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  if (v38 >= 4294967300.0)
  {
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v26 outputFormat];
  v7 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v40 frameCapacity:v39];

  if (!v7)
  {
    sub_10016EC18();
    swift_allocError();
    *v58 = 2;
    swift_willThrow();

    goto LABEL_30;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a1;
  aBlock[4] = sub_10016EC6C;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016EB3C;
  aBlock[3] = &unk_1002936C0;
  v43 = _Block_copy(aBlock);

  v44 = a1;

  aBlock[0] = 0;
  v45 = [v26 convertToBuffer:v7 error:aBlock withInputFromBlock:v43];
  _Block_release(v43);
  if (v45 != 3)
  {

    v59 = v2[4];

    os_unfair_lock_unlock(v59 + 4);

    return v7;
  }

  v46 = aBlock[0];
  sub_10016EC18();
  swift_allocError();
  *v47 = v46;
  swift_willThrow();
  v48 = v46;

LABEL_29:
LABEL_30:
  v57 = v2[4];

  os_unfair_lock_unlock(v57 + 4);

  return v7;
}

void *sub_10016EAB0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_10016EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

unint64_t sub_10016EBCC()
{
  result = qword_1002D40F8;
  if (!qword_1002D40F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D40F8);
  }

  return result;
}

unint64_t sub_10016EC18()
{
  result = qword_1002D4100;
  if (!qword_1002D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4100);
  }

  return result;
}

double sub_10016EC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10016EC8C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10016ECB0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

void *sub_10016ED0C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

BOOL sub_10016EF24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!(v2 >> 6))
  {
    return v3 < 0x40;
  }

  if (v2 >> 6 == 1)
  {
    return (v3 & 0xC0) == 0x40;
  }

  v4 = *a2;
  if (*a1 | v2 ^ 0x80)
  {
    v5 = v3 & 0xC0;
    if (*(a1 + 8) == 128 && *a1 == 1)
    {
      if (v5 != 128 || v4 != 1)
      {
        return 0;
      }
    }

    else if (v5 != 128 || v4 != 2)
    {
      return 0;
    }
  }

  else if ((v3 & 0xC0) != 0x80 || v4 != 0)
  {
    return 0;
  }

  return v3 == 128;
}

uint64_t sub_10016F144(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10017043C;

  return sub_1000213BC();
}

uint64_t sub_10016F1EC(char a1)
{
  v2 = *v1;
  *(*v1 + 218) = a1;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);

  return _swift_task_switch(sub_10016F314, v4, v3);
}

uint64_t sub_10016F314()
{
  if (*(v0 + 218) == 1)
  {
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;

    CurrentValueSubject.send(_:)();

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 392) = sub_100018D90(v1, qword_1002E8CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Initiating asset download", v4, 2u);
    }

    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);

    static Locale.current.getter();
    Locale.identifier.getter();
    (*(v6 + 8))(v5, v7);
    v8 = objc_allocWithZone(SFEntitledAssetConfig);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithLanguage:v9 taskHint:1009];
    *(v0 + 400) = v10;

    v11 = objc_opt_self();
    v12 = RCVoiceMemosBundleID;
    *(v0 + 408) = RCVoiceMemosBundleID;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v0 + 176) = sub_1001702A8;
    *(v0 + 184) = v13;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10016FFC4;
    *(v0 + 168) = &unk_100293858;
    v14 = _Block_copy((v0 + 144));
    *(v0 + 416) = v14;
    v15 = v12;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_10016F7C8;
    v16 = swift_continuation_init();
    *(v0 + 136) = sub_1000C773C(&qword_1002D4138, &qword_10024C9B8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100170024;
    *(v0 + 104) = &unk_100293880;
    *(v0 + 112) = v16;
    [v11 fetchAssetWithConfig:v10 clientIdentifier:v15 detailedProgress:v14 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    *(v0 + 224) = 1;
    *(v0 + 232) = 0x80;

    CurrentValueSubject.send(_:)();

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100018D90(v17, qword_1002E8CB0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "GASR model not available for this device", v20, 2u);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10016F7C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  if (v2)
  {
    v5 = sub_10016FA38;
  }

  else
  {
    v5 = sub_10016F8F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10016F8F8()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);

  _Block_release(v1);

  *(v0 + 272) = 2;
  *(v0 + 280) = 0x80;

  CurrentValueSubject.send(_:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 400);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Asset download completed", v7, 2u);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10016FA38()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);

  swift_willThrow();

  _Block_release(v2);
  *(v0 + 256) = v1;
  *(v0 + 264) = 64;
  swift_errorRetain();

  CurrentValueSubject.send(_:)();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Asset download failed - error = %@", v7, 0xCu);
    sub_10015D618(v8);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10016FC08(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  sub_100179578(0, 0, v8, &unk_10024C9C8, v11);
}

uint64_t sub_10016FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 49) = a6;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  type metadata accessor for MainActor();
  *(v6 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016FDDC, v8, v7);
}

uint64_t sub_10016FDDC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    CurrentValueSubject.value.getter();

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    v5 = (v4 & 0xC0) == 0x80 && v3 == 2;
    if (!v5 || v4 != 128)
    {
      v6 = *(v0 + 49);
      v7 = *(v0 + 64);
      sub_10010D6F8(v3, v4);
      *(v0 + 40) = v7;
      *(v0 + 48) = v6;

      CurrentValueSubject.send(_:)();

      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100018D90(v8, qword_1002E8CB0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 49);
        v12 = *(v0 + 64);
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = v12;
        *(v13 + 12) = 1024;
        *(v13 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v9, v10, "Asset downloading progress = %ld%%, stalled = %{BOOL}d", v13, 0x12u);
      }
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10016FFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_100170024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000AACC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C773C(&qword_1002D5540, &qword_1002425B0);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return swift_continuation_throwingResume();
  }
}

id sub_100170228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptionModelAssetService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017027C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

double sub_1001702B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001702C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001FF1C;

  return sub_10016FD40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100170390()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_10016F144(v2);
}

uint64_t sub_100170440(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

void sub_100170518(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a1;
    a5();
    swift_unknownObjectRelease();
  }
}

__n128 sub_100170704()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1002D4170 = *&UIEdgeInsetsZero.top;
  *&qword_1002D4180 = v1;
  return result;
}

uint64_t sub_100170720(uint64_t a1)
{
  v3 = sub_1000C773C(&qword_1002D4300, &unk_100246F80);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for TranscriptViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v15[-v11];
  v13 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  sub_10002572C(v1 + v13, v12);
  swift_beginAccess();
  sub_1001725A8(a1, v1 + v13);
  swift_endAccess();
  sub_10002572C(v1 + v13, v9);
  LOBYTE(v13) = sub_1001AD8CC(v12, v9);
  sub_10002A084(v9);
  if (v13)
  {
    sub_10002A084(a1);
  }

  else
  {
    sub_10002572C(v12, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_100027308(v5);
    sub_10002A084(a1);
    sub_100003CBC(v5, &qword_1002D4300, &unk_100246F80);
  }

  return sub_10002A084(v12);
}

void sub_100170A40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  [v2 frame];
  [v2 frame];
  v3 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  v5 = *(v3 + 16);
  if (*(v5 + 16))
  {
    v6 = sub_10002454C(NSFontAttributeName, v4);
    if (v7)
    {
      sub_1000CC230(*(v5 + 56) + 40 * v6, v18);
      v8.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000D513C(v18);
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        [v9 lineHeight];
      }
    }
  }

  [v2 frame];
  v10._countAndFlagsBits = [v2 frame];
  DebugData.init(name:)(v10);
  v11 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView);
  [v11 setFrame:?];
  v12 = [v11 layer];
  v13 = [v12 mask];

  if (v13)
  {
    [v11 bounds];
    [v13 setFrame:?];
  }

  v14._countAndFlagsBits = [v2 frame];
  DebugData.init(name:)(v14);
  v15 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView);
  [v15 setFrame:?];
  v16 = [v15 layer];
  v17 = [v16 mask];

  if (v17)
  {
    [v11 bounds];
    [v17 setFrame:?];
  }
}

void sub_100170C9C()
{
  v1 = *&v0[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
  v2 = [v1 findInteraction];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  Notification.object.getter();
  if (v34 == 0.0)
  {

    v9 = v33;
LABEL_24:
    sub_100003CBC(v9, &qword_1002D06A8, &unk_1002441A0);
    return;
  }

  sub_1000067AC(0, &qword_1002D4330, UIScreen_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v35;
  v5 = [v0 window];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 screen];

    v33[0] = v7;
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  v10 = [v35 isEqual:v8];
  swift_unknownObjectRelease();
  if (!v10)
  {

    return;
  }

  v11 = Notification.userInfo.getter();
  if (!v11)
  {

    v35 = 0u;
    v36 = 0u;
    goto LABEL_23;
  }

  v12 = v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_1000D2DFC(v33), (v14 & 1) == 0))
  {

    sub_1000D513C(v33);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_21;
  }

  sub_10001931C(*(v12 + 56) + 32 * v13, &v35);
  sub_1000D513C(v33);

  if (!*(&v36 + 1))
  {
LABEL_21:

LABEL_23:
    v9 = &v35;
    goto LABEL_24;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v15 = *v33;
    v16 = *&v33[1];
    v17 = *&v33[2];
    v18 = v34;
    v19 = [v4 coordinateSpace];
    v20 = v1;
    [v19 convertRect:v20 toCoordinateSpace:{v15, v16, v17, v18}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 bounds];
    v41.origin.x = v22;
    v41.origin.y = v24;
    v41.size.width = v26;
    v41.size.height = v28;
    v38 = CGRectIntersection(v37, v41);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if ([v3 isFindNavigatorVisible] && (v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, !CGRectIsEmpty(v39)))
    {
      [v20 bounds];
      CGRectGetMaxY(v40);
    }

    else if (qword_1002CDF60 != -1)
    {
      swift_once();
    }

    [v20 contentInset];
    [v20 setContentInset:?];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100171070(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100170C9C();
  }
}

void sub_1001710CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  v4 = [v3 textStorage];
  v5 = [v4 string];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    [a1 locationInView:v3];
    v10 = [v3 closestPositionToPoint:?];
    if (v10)
    {
      v13 = v10;
      v11 = [v3 beginningOfDocument];
      v12 = [v3 offsetFromPosition:v11 toPosition:v13];

      sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
      sub_10017EA14(v12);
    }
  }
}

void *sub_1001713C4(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (v3)
  {
    if (Strong)
    {
      v8 = [Strong endOfDocument];
      [v7 caretRectForPosition:v8];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v40.origin.x = v10;
      v40.origin.y = v12;
      v40.size.width = v14;
      v40.size.height = v16;
      CGRectGetMaxY(v40);
      v17 = v7;
      [v17 adjustedContentInset];
      [v17 bounds];
      CGRectGetHeight(v41);
      [v17 adjustedContentInset];

      return sub_100137894();
    }

    return 0;
  }

  if (!Strong)
  {
    return 0;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v21 = [v19 textLayoutManager];
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  v23 = sub_100029F20(a1, a2);
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v39 = size;
  sub_100137A0C(v23);
  v26 = swift_allocObject();
  *(v26 + 16) = &origin;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100172540;
  *(v27 + 24) = v26;
  v37[4] = sub_100172548;
  v37[5] = v27;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_100170440;
  v37[3] = &unk_100293A78;
  v28 = _Block_copy(v37);

  [v22 enumerateTextSegmentsInRange:v24 type:1 options:3 usingBlock:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    [v20 textContainerInset];
    v30 = v29;
    v32 = v31;

    v33 = v32 + origin.x;
    v34 = v30 + origin.y;
    origin.x = v33;
    origin.y = v34;
    v35 = v39;

    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size = v35;
    CGRectGetMinY(v42);
    [v7 bounds];
    CGRectGetHeight(v43);
    v36 = sub_100137894();

    return v36;
  }

  return result;
}

id sub_10017191C()
{
  v1 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel;
  swift_beginAccess();
  v3 = *(v2 + *(type metadata accessor for TranscriptViewModel(0) + 48));
  v4 = *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView);
  if (v3 != 1)
  {
    [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView) setHidden:1];
    return [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:1];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  [Strong bounds];
  if (CGRectGetHeight(v14) <= 0.0)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  [v7 contentOffset];
  v9 = v8;
  [v7 adjustedContentInset];
  v11 = v10;

  v12 = v9 <= v11;
LABEL_8:
  [v4 setHidden:v12];
  return [*(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView) setHidden:sub_10002A7A4() & 1];
}

void sub_100171A94(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_10017293C(v5);

  swift_unknownObjectRelease();
}

uint64_t sub_100171B10(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer);
  if (!v3)
  {
    return 1;
  }

  sub_1000067AC(0, &qword_1002D42E8, UIGestureRecognizer_ptr);
  v5 = a1;
  v6 = v3;
  LOBYTE(a1) = static NSObject.== infix(_:_:)();

  if ((a1 & 1) == 0)
  {
    return 1;
  }

  v7 = *(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  [v7 selectedRange];
  if (!v8)
  {
    return 1;
  }

  result = [v7 findInteraction];
  if (result)
  {
    v10 = result;
    v11 = [result isFindNavigatorVisible];

    return v11;
  }

  return result;
}

BOOL sub_100171C50(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer);
  result = 0;
  if (v4)
  {
    sub_1000067AC(0, &qword_1002D42E8, UIGestureRecognizer_ptr);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      sub_1000067AC(0, &qword_1002D42F0, NSObject_ptr);
      v8 = [*(v3 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView) panGestureRecognizer];
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100171DBC(char a1)
{
  sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v13[0] = *(result + 32);
    v13[1] = v4;
    *(v14 + 15) = *(result + 47);
    v14[0] = v13[0];
    *(&v14[1] + 4) = *(result + 52);
    HIDWORD(v14[1]) = *(result + 60);
    BYTE3(v14[1]) = a1;
    v15 = v13[0];
    v16 = v4;
    v17[0] = v13[0];
    v17[1] = v4;
    v5 = v14[1];
    *(result + 32) = v13[0];
    *(result + 48) = v5;
    sub_100023708(v13, v12);
    sub_100023708(&v15, v12);
    sub_100023708(v14, v12);
    sub_100023778(v17);
    v6 = 256;
    if (!BYTE1(v16))
    {
      v6 = 0;
    }

    v7 = v6 | v16;
    v8 = 0x10000;
    if (!BYTE2(v16))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v16))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v16))
    {
      v11 = 0;
    }

    sub_1000237CC(v15, *(&v15 + 1), v10 | v11, *(&v16 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v15);
    return sub_100023778(v14);
  }

  return result;
}

id sub_100171EEC(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = *&v2[OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView];
    result = [v5 text];
    if (result)
    {
      v7 = result;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      [v5 selectedRange];
      v12 = v11;
      result = [v5 text];
      if (result)
      {
        v13 = result;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v14 = v8 & 0xFFFFFFFFFFFFLL;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = String.count.getter();

        if (v14)
        {
          return (v12 != v15);
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10000B46C(a2, v26, &qword_1002D06A8, &unk_1002441A0);
  v16 = v27;
  if (v27)
  {
    v17 = sub_10000AACC(v26, v27);
    v18 = *(v16 - 8);
    v19 = __chkstk_darwin(v17);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v16);
    sub_100014B64(v26);
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for TranscriptView(0);
  v25.receiver = v2;
  v25.super_class = v23;
  v24 = objc_msgSendSuper2(&v25, "canPerformAction:withSender:", a1, v22);
  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_1001721D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView);
  sub_10000B46C(a1, v11, &qword_1002D06A8, &unk_1002441A0);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000AACC(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_100014B64(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 selectAll:v9];
  return swift_unknownObjectRelease();
}

id sub_1001723F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_100172574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001725A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10017260C()
{
  v1 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin(v1 - 8);
  v2 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textView;
  type metadata accessor for TranscriptView.TranscriptTextView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_searchButton;
  *(v0 + v3) = [objc_allocWithZone(UIButton) init];
  v4 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_emptyStateView;
  sub_1000067AC(0, &qword_1002D4338, UIContentUnavailableView_ptr);
  static UIContentUnavailableConfiguration.empty()();
  *(v0 + v4) = UIContentUnavailableView.init(configuration:)();
  v5 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_topFadeView;
  v6 = type metadata accessor for TranscriptView.FadeView();
  v7 = objc_allocWithZone(v6);
  *(v0 + v5) = sub_100025FBC(0);
  v8 = OBJC_IVAR____TtC10VoiceMemos14TranscriptView_bottomFadeView;
  v9 = objc_allocWithZone(v6);
  *(v0 + v8) = sub_100025FBC(1);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToLayoutMarginsBottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textBottomAnchorToSearchTopAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_textViewPanGestureRecognizer) = 0;
  v10 = v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_animatedContentOffsetTarget;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_cancellables) = v11;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100172810()
{
  sub_10000AACC((v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v0 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    v11[0] = *(result + 32);
    v11[1] = v2;
    LOWORD(v13) = *(result + 48);
    v12 = v11[0];
    *(&v13 + 2) = *(result + 50);
    *(&v13 + 1) = *(result + 56);
    v14 = v11[0];
    v15 = v2;
    v16[0] = v11[0];
    v16[1] = v2;
    v3 = v13;
    *(result + 32) = v11[0];
    *(result + 48) = v3;
    sub_100023708(v11, v10);
    sub_100023708(&v14, v10);
    sub_100023708(&v12, v10);
    sub_100023778(v16);
    v4 = 256;
    if (!BYTE1(v15))
    {
      v4 = 0;
    }

    v5 = v4 | v15;
    v6 = 0x10000;
    if (!BYTE2(v15))
    {
      v6 = 0;
    }

    v7 = 0x1000000;
    if (!BYTE3(v15))
    {
      v7 = 0;
    }

    v8 = v5 | v6 | v7;
    v9 = &_mh_execute_header;
    if (!BYTE4(v15))
    {
      v9 = 0;
    }

    sub_1000237CC(v14, *(&v14 + 1), v8 | v9, *(&v15 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v14);
    return sub_100023778(&v12);
  }

  return result;
}

uint64_t sub_10017293C(char a1)
{
  sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller), *(v1 + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_controller + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v13[0] = *(result + 32);
    v13[1] = v4;
    LOWORD(v15) = *(result + 48);
    v14 = v13[0];
    BYTE2(v15) = a1;
    *(&v15 + 3) = *(result + 51);
    *(&v15 + 1) = *(result + 56);
    v16 = v13[0];
    v17 = v4;
    v18[0] = v13[0];
    v18[1] = v4;
    v5 = v15;
    *(result + 32) = v13[0];
    *(result + 48) = v5;
    sub_100023708(v13, v12);
    sub_100023708(&v16, v12);
    sub_100023708(&v14, v12);
    sub_100023778(v18);
    v6 = 256;
    if (!BYTE1(v17))
    {
      v6 = 0;
    }

    v7 = v6 | v17;
    v8 = 0x10000;
    if (!BYTE2(v17))
    {
      v8 = 0;
    }

    v9 = 0x1000000;
    if (!BYTE3(v17))
    {
      v9 = 0;
    }

    v10 = v7 | v8 | v9;
    v11 = &_mh_execute_header;
    if (!BYTE4(v17))
    {
      v11 = 0;
    }

    sub_1000237CC(v16, *(&v16 + 1), v10 | v11, *(&v17 + 1));
    swift_unknownObjectRelease();
    sub_100023778(&v16);
    return sub_100023778(&v14);
  }

  return result;
}

uint64_t sub_100172B18()
{
  v113 = type metadata accessor for TranscriptViewModel(0);
  __chkstk_darwin(v113);
  v114 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v102 - v3;
  v5 = sub_1000C773C(&qword_1002D4308, &unk_10024CB40);
  __chkstk_darwin(v5 - 8);
  v121 = &v102 - v6;
  v7 = sub_10000AACC((v0 + 16), *(v0 + 40));
  v8 = *v7;
  v9 = *(*v7 + 32);
  v10 = *(*v7 + 40);
  v11 = *(*v7 + 48);
  v12 = *(*v7 + 56);
  v116 = *(*v7 + 64);
  v120 = *(v8 + 72);
  v119 = *(v8 + 73);
  v13 = *(v8 + 96);
  v126[0] = *(v8 + 80);
  v126[1] = v13;
  v127 = *(v8 + 112);
  v111 = *(v8 + 113);
  v112 = *(v8 + 114);
  v14 = *(v8 + 120);
  v15 = *(v8 + 128);
  v16 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);
  v117 = v9;
  v109 = v10;
  if (v16)
  {

    sub_10000B46C(v126, v124, &qword_1002D4528, &qword_10024CBC0);
    v17 = v11;
    sub_100173B7C(v10, v11, v12);
    v18 = &selRef_canToggleRemoveSilence;
    [v16 currentTime];
    v20 = v19;
  }

  else
  {
    v21 = v10;
    v18 = &selRef_canToggleRemoveSilence;

    sub_10000B46C(v126, v124, &qword_1002D4528, &qword_10024CBC0);
    v17 = v11;
    sub_100173B7C(v21, v11, v12);
    v20 = 0.0;
  }

  v22 = *(v0 + 104);
  v23 = sub_10000AACC((v0 + 56), *(v0 + 80));
  v24 = v116;
  if (v15)
  {
    v115 = 0;
    v110 = 0;
    v25 = v119;
  }

  else
  {
    v26 = v22 > v20 || v14 > v20 - v22;
    v25 = v119;
    if (v26)
    {
      v115 = 0;
      v110 = 0;
    }

    else
    {
      v27 = *v23;
      v108 = v17;
      v28 = *(v27 + 64);
      v29 = *(v27 + 72);
      v30 = objc_allocWithZone(type metadata accessor for TranscriptWaitingViewTextAttachment());

      v31 = [v30 init];
      v32 = [objc_opt_self() attributedStringWithAttachment:v31];
      sub_100028604(v28, v29);
      v34 = v33;

      v110 = v34;
      LODWORD(v30) = v12;
      v35 = v24;
      v36 = objc_allocWithZone(NSMutableAttributedString);
      v37 = String._bridgeToObjectiveC()();
      v25 = v119;

      v38 = v36;
      v24 = v35;
      v39 = [v38 initWithString:v37];

      v17 = v108;
      v115 = v39;
      v40 = v39;
      v12 = v30;
      [v40 appendAttributedString:v32];
    }
  }

  v41 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 80);
  v42 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

  if (v42)
  {
    [v42 currentTime];
    v44 = v43;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = sub_10000AACC((v0 + 56), *(v0 + 80));
  if (v12 == 255)
  {

    goto LABEL_26;
  }

  if ((v12 & 1) == 0)
  {
    sub_100173BD0(v41, v122, v44);

    if ((v123 & 1) == 0)
    {
      v71 = v122[2];
      v70 = v122[3];
      sub_1000C773C(&qword_1002CFFE8, &unk_10024CBD0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100242C70;
      *(v72 + 32) = v71;
      *(v72 + 40) = v70;
      v118 = v72;
      *(v72 + 48) = v109;
      goto LABEL_50;
    }

    sub_100173C8C(v109, v17, v12);
LABEL_26:
    v118 = _swiftEmptyArrayStorage;
    goto LABEL_50;
  }

  v108 = v17;
  v106 = v12;
  v107 = v0;
  v46 = *(*v45 + 64);
  v47 = *(*v45 + 72);

  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = 0;
  v118 = (v49 + 16);
  *(v49 + 32) = 1;
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 16) = 0;
  *(v50 + 32) = 1;
  v124[0] = v46;
  v124[1] = v47;
  v51 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v51 = v46;
  }

  v52 = 11;
  if (((v47 >> 60) & ((v46 & 0x800000000000000) == 0)) == 0)
  {
    v52 = 7;
  }

  v122[0] = 15;
  v122[1] = v52 | (v51 << 16);
  v53 = swift_allocObject();
  v53[2] = v48;
  v53[3] = v50;
  v105 = v46;
  v53[4] = v46;
  v53[5] = v47;
  v53[6] = v49;

  sub_1000C773C(&qword_1002D4530, &qword_10024CBC8);
  sub_100028710();
  sub_1000286AC();
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  v54 = v118;
  swift_beginAccess();
  v104 = *v54;
  v103 = *(v49 + 24);
  v55 = *(v49 + 32);
  swift_beginAccess();
  v56 = *(v50 + 16);
  v57 = *(v50 + 24);
  v0 = *(v50 + 32);

  if (v0)
  {

    v58 = _swiftEmptyArrayStorage;
    v0 = v107;
    v59 = v117;
    v24 = v116;
    v50 = v109;
    goto LABEL_39;
  }

  v60 = (v56 + v57);
  v61 = v117;
  if (__OFADD__(v56, v57))
  {
    __break(1u);
    goto LABEL_75;
  }

  LODWORD(v118) = v55;
  v62 = __OFSUB__(v60, 1);
  v63 = v60 - 1;
  v0 = v107;
  v60 = &v128;
  v50 = v109;
  if (v62)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v55 = sub_100028604(v105, v47);
  v65 = v64;

  v60 = (v55 + v65);
  if (__OFADD__(v55, v65))
  {
LABEL_76:
    __break(1u);
LABEL_77:
    v74 = sub_1000F2520(0, *(*(v60 - 32) + 16) + 1, 1, *(v60 - 32));
    goto LABEL_47;
  }

  v62 = __OFSUB__(v60, 1);
  v67 = v60 - 1;
  if (!v62)
  {
    if (v63 >= v67)
    {
      goto LABEL_34;
    }

    v62 = __OFSUB__(v67, v63);
    v68 = v67 - v63;
    if (v62)
    {
      __break(1u);
    }

    else
    {
      v62 = __OFADD__(v57, v68);
      v57 += v68;
      if (!v62)
      {
LABEL_34:
        if (v115)
        {
          v55 = v61;
        }

        else
        {
          v55 = v108;
        }

        v58 = sub_1000F2520(0, 1, 1, _swiftEmptyArrayStorage);
        v63 = *(v58 + 2);
        v67 = *(v58 + 3);
        v65 = v63 + 1;
        if (v63 < v67 >> 1)
        {
          goto LABEL_38;
        }

        goto LABEL_79;
      }
    }

    __break(1u);
    return result;
  }

  __break(1u);
LABEL_79:
  v58 = sub_1000F2520((v67 > 1), v65, 1, v58);
LABEL_38:
  *(v58 + 2) = v65;
  v69 = &v58[24 * v63];
  *(v69 + 4) = v56;
  *(v69 + 5) = v57;
  *(v69 + 6) = v55;
  v24 = v116;
  v59 = v61;
  LOBYTE(v55) = v118;
LABEL_39:
  v118 = v58;
  v18 = &selRef_canToggleRemoveSilence;
  LOBYTE(v57) = v106;
  if (v55)
  {
    sub_100173C8C(v50, v108, v106);
    v25 = v119;
    goto LABEL_50;
  }

  v47 = v24;
  if (v115)
  {
    v55 = v59;
  }

  else
  {
    v55 = v50;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = &v129;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_77;
  }

  v74 = v118;
LABEL_47:
  v76 = *(v74 + 2);
  v75 = *(v74 + 3);
  v25 = v119;
  if (v76 >= v75 >> 1)
  {
    v74 = sub_1000F2520((v75 > 1), v76 + 1, 1, v74);
  }

  *(v74 + 2) = v76 + 1;
  v118 = v74;
  v77 = &v74[24 * v76];
  v78 = v103;
  *(v77 + 4) = v104;
  *(v77 + 5) = v78;
  *(v77 + 6) = v55;
  sub_100173C8C(v50, v108, v57);
  v24 = v47;
  v18 = &selRef_canToggleRemoveSilence;
LABEL_50:
  if (v120)
  {
    v79 = 0;
  }

  else
  {
    v79 = 0x4020000000000000;
  }

  if (v120)
  {
    v24 = 0;
  }

  v80 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 80);
  v81 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

  if (v81)
  {
    [v81 v18[257]];
  }

  else
  {
    v82 = 0.0;
  }

  v109 = v79;
  v116 = v24;
  if (v25 == 2)
  {
  }

  else
  {
    if (v25)
    {

      v83 = 0;
      v84 = 0;
      v86 = 0;
      v85 = 1;
      goto LABEL_65;
    }

    sub_100173BD0(v80, v124, v82);

    if ((v125 & 1) == 0)
    {
      v85 = 0;
      v86 = 0;
      v83 = v124[2];
      v84 = v124[3];
      goto LABEL_65;
    }
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 1;
LABEL_65:
  v87 = v121;
  sub_1001738C0(v126, v121);
  sub_100003CBC(v126, &qword_1002D4528, &qword_10024CBC0);
  v88 = sub_10000AACC((v0 + 56), *(v0 + 80));
  v90 = *(*v88 + 64);
  v89 = *(*v88 + 72);
  v91 = v113;
  sub_10000B46C(v87, &v4[*(v113 + 40)], &qword_1002D4308, &unk_10024CB40);
  *v4 = v90;
  *(v4 + 1) = v89;
  v92 = v118;
  *(v4 + 2) = v117;
  *(v4 + 3) = v92;
  v93 = v109;
  v94 = v116;
  *(v4 + 4) = v109;
  *(v4 + 5) = v94;
  *(v4 + 6) = v93;
  *(v4 + 7) = v94;
  v4[64] = v120;
  *(v4 + 9) = v83;
  *(v4 + 10) = v84;
  v4[88] = v85;
  v4[89] = v86;
  v95 = v110;
  *(v4 + 12) = v115;
  *(v4 + 13) = v95;
  v4[*(v91 + 44)] = v111;
  v4[*(v91 + 48)] = v112;
  v96 = (*(v0 + 96) + OBJC_IVAR____TtC10VoiceMemos14TranscriptView_viewModel);
  swift_beginAccess();
  if (*v96 == v90 && v96[1] == v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v97 = *(*sub_10000AACC((v0 + 56), *(v0 + 80)) + 56);

    if (v97)
    {
      [v97 currentTime];
    }

    else
    {
      v98 = 0;
    }

    *(v0 + 104) = v98;
  }

  v99 = v114;
  v100 = *(v0 + 96);
  sub_10002572C(v4, v114);
  v101 = v100;
  sub_100170720(v99);

  sub_100003CBC(v121, &qword_1002D4308, &unk_10024CB40);
  return sub_10002A084(v4);
}

uint64_t sub_100173720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  v14 = *(a8 + 16);
  if (v14 == 1)
  {

    sub_1000C773C(&qword_1002D4530, &qword_10024CBC8);
    sub_1000286AC();
    sub_100028710();
    v18 = _NSRange.init<A, B>(_:in:)();
    v20 = v19;
    swift_beginAccess();
    *(a12 + 16) = v18;
    *(a12 + 24) = v20;
    *(a12 + 32) = 0;
    *a7 = 1;
  }

  else if (!v14)
  {

    sub_1000C773C(&qword_1002D4530, &qword_10024CBC8);
    sub_1000286AC();
    sub_100028710();
    v15 = _NSRange.init<A, B>(_:in:)();
    v17 = v16;
    swift_beginAccess();
    *(a9 + 16) = v15;
    *(a9 + 24) = v17;
    *(a9 + 32) = 0;
  }

  result = swift_beginAccess();
  v22 = *(a8 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v24;
  }

  return result;
}

uint64_t sub_1001738C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - v14;
  if (v7 == 255)
  {
    v18 = *(v12 + 56);

    return v18(a2, 1, 1, v8, v13);
  }

  else
  {
    v21 = v12;
    if (v7)
    {

      static UIContentUnavailableConfiguration.empty()();
      UIContentUnavailableConfiguration.secondaryText.setter();
      if (v3)
      {
        v16 = String._bridgeToObjectiveC()();
        v17 = [objc_opt_self() systemImageNamed:v16];

        UIContentUnavailableConfiguration.image.setter();
      }

      (*(v21 + 32))(a2, v10, v8);
    }

    else
    {
      sub_100173B3C(v4, v3, v6, v5, 0);
      static UIContentUnavailableConfiguration.loading()();
      UIContentUnavailableConfiguration.text.setter();
      (*(v21 + 32))(a2, v15, v8);
    }

    return (*(v21 + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_100173AF4()
{
  sub_100014B64((v0 + 16));
  sub_100014B64((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100173B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_100173B7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100173B94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100173B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_100173BD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    v5 = *(result + 40);
    v6 = *(result + 56);
    if (v4 <= a3 && v3 != 1)
    {
      v8 = *(result + 64);
      if (v8 <= a3)
      {
        v9 = (result + 96);
        v10 = v3 - 1;
        do
        {
          v4 = v8;
          v11 = v9;
          if (!--v10)
          {
            break;
          }

          v9 += 4;
          v8 = *v11;
        }

        while (*v11 <= a3);
        v6 = *(v11 - 1);
        v5 = *(v11 - 3);
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0uLL;
    v4 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3 == 0;
  return result;
}

uint64_t sub_100173C8C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100173CA4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100173CA4(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

id sub_100173CF0()
{
  v1 = type metadata accessor for SymbolEffectOptions();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for VariableColorSymbolEffect();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v34 = v10;
  sub_1000C773C(&qword_1002D4568, &qword_10024CC00);
  inited = swift_initStackObject();
  v33 = xmmword_100242C70;
  *(inited + 16) = xmmword_100242C70;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_1000C773C(&qword_1002D4570, &qword_10024CC08);
  v12 = swift_initStackObject();
  *(v12 + 16) = v33;
  *(v12 + 32) = UIFontWeightTrait;
  *(v12 + 40) = UIFontWeightBold;
  v13 = UIFontDescriptorTraitsAttribute;
  v14 = UIFontWeightTrait;
  v15 = sub_1000D4C44(v12);
  swift_setDeallocating();
  sub_100003CBC(v12 + 32, &qword_1002D4578, &qword_10024CC10);
  *(inited + 64) = sub_1000C773C(&qword_1002D4580, &qword_10024CC18);
  *(inited + 40) = v15;
  sub_1000D4D34(inited);
  swift_setDeallocating();
  sub_100003CBC(inited + 32, &qword_1002CEC78, &unk_10024CC20);
  type metadata accessor for AttributeName(0);
  sub_1001744AC(&qword_1002CE380, type metadata accessor for AttributeName, &unk_1002416A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v10 fontDescriptorByAddingAttributes:isa];

  v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  v19 = [objc_opt_self() configurationWithFont:v18];

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v20];

  v23 = type metadata accessor for TranscriptWaitingImageView();
  v41.receiver = v0;
  v41.super_class = v23;
  v24 = objc_msgSendSuper2(&v41, "initWithImage:", v22);
  [v24 setContentMode:1];
  v25 = [objc_opt_self() systemRedColor];
  [v24 setTintColor:v25];

  VariableColorSymbolEffect.init()();
  VariableColorSymbolEffect.dimInactiveLayers.getter();
  v26 = *(v36 + 8);
  v27 = v37;
  v26(v9, v37);
  v28 = v35;
  VariableColorSymbolEffect.cumulative.getter();
  v29 = v6;
  v30 = v27;
  v26(v29, v27);
  v31 = v38;
  static SymbolEffectOptions.default.getter();
  sub_1001744AC(&qword_1002D4588, &type metadata accessor for VariableColorSymbolEffect, &protocol conformance descriptor for VariableColorSymbolEffect);
  UIImageView.addSymbolEffect<A>(_:options:animated:completion:)();

  (*(v39 + 8))(v31, v40);
  v26(v28, v30);
  return v24;
}

id sub_100174454(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TranscriptWaitingImageView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001744AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001744F4(int64_t a1, int64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = a4;
  v39 = a2;
  v37 = type metadata accessor for AttributedString.Index();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = 0;
  v12 = a1;
  while (1)
  {
    v13 = v12 <= v39;
    if (a3 > 0)
    {
      v13 = v12 >= v39;
    }

    if (v13)
    {
      break;
    }

    v14 = __OFADD__(v12, a3);
    v12 += a3;
    if (v14)
    {
      v12 = (v12 >> 63) ^ 0x8000000000000000;
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  v34 = &v33 - v10;
  v40 = _swiftEmptyArrayStorage;
  result = sub_1001AE654(0, v11, 0);
  v16 = v40;
  if (v11)
  {
    v35 = v6 + 32;
    v36 = (v6 + 16);
    while (1)
    {
      v17 = a1 <= v39;
      if (a3 > 0)
      {
        v17 = a1 >= v39;
      }

      if (v17)
      {
        break;
      }

      if (__OFADD__(a1, a3))
      {
        v18 = ((a1 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v18 = a1 + a3;
      }

      if (a1 < 0)
      {
        goto LABEL_42;
      }

      v19 = *v38;
      if (a1 >= *(*v38 + 16))
      {
        goto LABEL_43;
      }

      v20 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
      v21 = v37;
      (*v36)(v8, v19 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * a1 + *(v20 + 36), v37);
      v40 = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_1001AE654((v22 > 1), v23 + 1, 1);
        v16 = v40;
      }

      v16[2] = v23 + 1;
      result = (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v8, v21);
      a1 = v18;
      if (!--v11)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v18 = a1;
LABEL_25:
    v24 = v18 <= v39;
    if (a3 > 0)
    {
      v24 = v18 >= v39;
    }

    if (v24)
    {
      return v16;
    }

    v36 = (v6 + 32);
    v25 = v37;
    while (1)
    {
      v26 = __OFADD__(v18, a3) ? ((v18 + a3) >> 63) ^ 0x8000000000000000 : v18 + a3;
      if (v18 < 0)
      {
        break;
      }

      v27 = *v38;
      if (v18 >= *(*v38 + 16))
      {
        goto LABEL_45;
      }

      v28 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
      v29 = v34;
      (*(v6 + 16))(v34, v27 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)) + *(*(v28 - 8) + 72) * v18 + *(v28 + 36), v25);
      v40 = v16;
      v31 = v16[2];
      v30 = v16[3];
      if (v31 >= v30 >> 1)
      {
        sub_1001AE654((v30 > 1), v31 + 1, 1);
        v16 = v40;
      }

      v16[2] = v31 + 1;
      result = (*(v6 + 32))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v29, v25);
      v32 = v26 <= v39;
      if (a3 > 0)
      {
        v32 = v26 >= v39;
      }

      v18 = v26;
      if (v32)
      {
        return v16;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10017493C()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for AttributedString();
  sub_100018DC8(v1, qword_1002E90F0);
  sub_100018D90(v1, qword_1002E90F0);
  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t sub_1001749F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString.Index();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100174C4C(a1, 0);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);
  v14[1] = a2;
  v10(a2, a1, v9);
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v11 <= *(v8 + 16))
    {
      --v11;
      (*(v5 + 16))(v7, v12 + *(v5 + 72) * v11, v4);
      if (qword_1002CDF68 != -1)
      {
        swift_once();
      }

      sub_100018D90(v9, qword_1002E90F0);
      sub_1001768F0(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      AttributedString.insert<A>(_:at:)();
      (*(v5 + 8))(v7, v4);
      if (!v11)
      {
      }
    }

    __break(1u);
  }
}

uint64_t sub_100174C4C(uint64_t a1, char a2)
{
  v27 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = v25 - v6;
  v8 = type metadata accessor for AttributedString.Index();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10017634C(a1);
  v13 = v12;
  v29 = v12;
  if ((a2 & 1) == 0 || !v12[2])
  {
LABEL_6:
    if (*v2 < 2)
    {
      v18 = v13[2];
      if (!v18)
      {

        return _swiftEmptyArrayStorage;
      }

      v28 = _swiftEmptyArrayStorage;
      sub_1001AE654(0, v18, 0);
      v17 = v28;
      v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v25[1] = v13;
      v20 = v13 + v19;
      v21 = *(v5 + 72);
      v25[2] = v9 + 32;
      v26 = v21;
      do
      {
        sub_10000B46C(v20, v7, &qword_1002CFFD8, &qword_1002440C0);
        (*(v9 + 16))(v11, &v7[*(v27 + 36)], v8);
        sub_100003CBC(v7, &qword_1002CFFD8, &qword_1002440C0);
        v28 = v17;
        v22 = v8;
        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          sub_1001AE654((v23 > 1), v24 + 1, 1);
          v17 = v28;
        }

        v17[2] = v24 + 1;
        (*(v9 + 32))(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, v11, v22);
        v20 += v26;
        --v18;
        v8 = v22;
      }

      while (v18);
    }

    else
    {
      v17 = sub_1001744F4(*v2 - 1, v13[2], *v2, &v29);
    }

    return v17;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v15 = v13[2];
    if (v15)
    {
LABEL_5:
      v16 = v15 - 1;
      sub_100003CBC(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v15 - 1), &qword_1002CFFD8, &qword_1002440C0);
      v13[2] = v16;
      v29 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    result = sub_1001B46F8(v13);
    v13 = result;
    v15 = *(result + 16);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100174F8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v86 = sub_1000C773C(&qword_1002D3F90, &unk_10024C7D0);
  __chkstk_darwin(v86);
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = &v74 - v5;
  v6 = type metadata accessor for AttributedSubstring();
  __chkstk_darwin(v6 - 8);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1000C773C(&qword_1002D4620, qword_10024CC68);
  __chkstk_darwin(v82);
  v9 = &v74 - v8;
  v91 = type metadata accessor for AttributedString();
  v88 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v74 - v12;
  __chkstk_darwin(v13);
  v87 = &v74 - v14;
  v15 = type metadata accessor for AttributedString.Index();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  __chkstk_darwin(v22);
  v24 = &v74 - v23;
  __chkstk_darwin(v25);
  v27 = &v74 - v26;
  v28 = a1;
  v29 = sub_100174C4C(a1, 1);
  v30 = *(v29 + 16);
  if (!v30)
  {
    v45 = v86;

    v46 = v89;
    AttributedString.init(stringLiteral:)();
    AttributedString.startIndex.getter();
    AttributedString.startIndex.getter();
    sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v47 = v21;
      v48 = v16;
      v49 = *(v16 + 32);
      v50 = v84;
      v49(v84, v47, v15);
      v51 = v45;
      v49((v50 + *(v45 + 48)), v18, v15);
      v52 = v85;
      sub_10000B46C(v50, v85, &qword_1002D3F90, &unk_10024C7D0);
      v53 = *(v45 + 48);
      v54 = &v46[*(type metadata accessor for PartialTranscriptionFormattingResult(0) + 20)];
      v49(v54, v52, v15);
      v55 = *(v48 + 8);
      v55(v52 + v53, v15);
      sub_10001DBEC(v50, v52, &qword_1002D3F90, &unk_10024C7D0);
      v56 = *(v51 + 48);
      v57 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
      v49(&v54[*(v57 + 36)], (v52 + v56), v15);
      return (v55)(v52, v15);
    }

    goto LABEL_15;
  }

  v75 = v21;
  v80 = v16;
  v81 = v28;
  v31 = v16 + 16;
  v32 = *(v16 + 16);
  v77 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v78 = v30 - 1;
  v33 = *(v16 + 72);
  v34 = v29;
  v32(v27, v29 + v77 + v33 * (v30 - 1), v15);
  sub_1001768F0(&qword_1002D1CE0, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v36 = v9;
  v74 = v27;
  v90 = v31;
  v76 = v34;
  v37 = v9;
  v38 = v32;
  v32(v36, v27, v15);
  sub_100008034(&qword_1002D4628, &qword_1002D4620, qword_10024CC68, &protocol conformance descriptor for PartialRangeUpTo<A>);
  AttributedString.subscript.getter();
  sub_100003CBC(v37, &qword_1002D4620, qword_10024CC68);
  v39 = v87;
  AttributedString.init(_:)();
  v82 = *(v88 + 16);
  v83 = (v88 + 16);
  v82(v92, v39, v91);
  v40 = (v80 + 8);
  v41 = v76;
  v42 = v76 + v77 + v33 * v78;
  v43 = -v33;
  v44 = v15;
  while (v30 <= *(v41 + 16))
  {
    v38(v24, v42, v44);
    if (qword_1002CDF68 != -1)
    {
      swift_once();
    }

    --v30;
    sub_100018D90(v91, qword_1002E90F0);
    sub_1001768F0(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    AttributedString.insert<A>(_:at:)();
    v15 = *v40;
    (*v40)(v24, v44);
    v42 += v43;
    if (!v30)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:

  v58 = v88;
  v59 = v79;
  v60 = v91;
  (*(v88 + 32))(v79, v92, v91);
  v82(v89, v59, v60);
  v61 = v75;
  v62 = v44;
  AttributedString.startIndex.getter();
  sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v63 = v74;
  v64 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v65 = *(v58 + 8);
  v65(v59, v60);
  result = (v65)(v87, v60);
  if (v64)
  {
    v66 = *(v80 + 32);
    v67 = v84;
    v66(v84, v61, v62);
    v68 = v86;
    v66((v67 + *(v86 + 48)), v63, v62);
    v69 = v85;
    sub_10000B46C(v67, v85, &qword_1002D3F90, &unk_10024C7D0);
    v70 = *(v68 + 48);
    v71 = &v89[*(type metadata accessor for PartialTranscriptionFormattingResult(0) + 20)];
    v66(v71, v69, v62);
    (v15)(v69 + v70, v62);
    sub_10001DBEC(v67, v69, &qword_1002D3F90, &unk_10024C7D0);
    v72 = *(v68 + 48);
    v73 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
    v66(&v71[*(v73 + 36)], (v69 + v72), v62);
    return (v15)(v69, v62);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10017589C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100175B28();
  v12 = *(v11 + 16);
  v13 = *(v8 + 16);
  if (v12)
  {
    v16 = v8;
    v17 = v7;
    v18 = a2;
    result = v13(v10, a1, v7);
    v15 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v12 <= *(v11 + 16))
    {
      --v12;
      sub_10000B46C(v15 + *(v4 + 72) * v12, v6, &qword_1002CFFD8, &qword_1002440C0);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
      AttributedString.removeSubrange<A>(_:)();
      result = sub_100003CBC(v6, &qword_1002CFFD8, &qword_1002440C0);
      if (!v12)
      {

        return (*(v16 + 32))(v18, v10, v17);
      }
    }

    __break(1u);
  }

  else
  {
    v13(a2, a1, v7);
  }

  return result;
}

uint64_t sub_100175B28()
{
  v1 = sub_1000C773C(&qword_1002CF9D8, &qword_100242DB0);
  __chkstk_darwin(v1 - 8);
  v69 = &v52 - v2;
  v68 = type metadata accessor for AttributedSubstring();
  v3 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000C773C(&qword_1002D3F90, &unk_10024C7D0);
  __chkstk_darwin(v66);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v8 = sub_1000C773C(&qword_1002CFFE0, &qword_10024CC60);
  __chkstk_darwin(v8 - 8);
  v76 = &v52 - v9;
  v75 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v52 - v12;
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for AttributedString.Index();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  AttributedString.startIndex.getter();
  AttributedString.endIndex.getter();
  v57 = sub_1001768F0(&qword_1002D1F28, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v26 = *(v17 + 16);
    v25 = v17 + 16;
    v24 = v26;
    v27 = (v25 - 8);
    v59 = (v3 + 8);
    v60 = (v25 + 16);
    v58 = (v70 + 48);
    v28 = _swiftEmptyArrayStorage;
    v74 = v0;
    v56 = v15;
    v55 = v25;
    v54 = v19;
    v62 = v22;
    v53 = v26;
    v61 = (v25 - 8);
    while (1)
    {
      v73 = v28;
      v29 = v65;
      v24(v65, v22, v16);
      v30 = v19;
      v31 = v66;
      v32 = *v60;
      (*v60)(v29 + *(v66 + 48), v30, v16);
      v33 = v16;
      v34 = v64;
      sub_10000B46C(v29, v64, &qword_1002D3F90, &unk_10024C7D0);
      v35 = *(v31 + 48);
      v36 = v63;
      v32(v63, v34, v33);
      v37 = *v27;
      (*v27)(v34 + v35, v33);
      v38 = v29;
      v39 = v75;
      v40 = v76;
      sub_10001DBEC(v38, v34, &qword_1002D3F90, &unk_10024C7D0);
      v32(v36 + *(v39 + 36), (v34 + *(v31 + 48)), v33);
      v41 = v34;
      v16 = v33;
      v72 = v37;
      v37(v41, v33);
      sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
      v42 = v67;
      AttributedString.subscript.getter();
      sub_100003CBC(v36, &qword_1002CFFD8, &qword_1002440C0);
      v77 = 11108578;
      v78 = 0xA300000000000000;
      v43 = type metadata accessor for Locale();
      v44 = v69;
      (*(*(v43 - 8) + 56))(v69, 1, 1, v43);
      sub_1001768F0(byte_1002D1388, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
      sub_100028710();
      v45 = v40;
      v46 = v68;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100003CBC(v44, &qword_1002CF9D8, &qword_100242DB0);
      (*v59)(v42, v46);
      if ((*v58)(v45, 1, v39) == 1)
      {
        break;
      }

      v47 = v56;
      sub_10001DBEC(v76, v56, &qword_1002CFFD8, &qword_1002440C0);
      sub_10000B46C(v47, v71, &qword_1002CFFD8, &qword_1002440C0);
      v28 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1000F2A04(0, v28[2] + 1, 1, v28);
      }

      v19 = v54;
      v27 = v61;
      v48 = v62;
      v50 = v28[2];
      v49 = v28[3];
      if (v50 >= v49 >> 1)
      {
        v28 = sub_1000F2A04((v49 > 1), v50 + 1, 1, v28);
      }

      v72(v48, v33);
      v28[2] = v50 + 1;
      sub_10001DBEC(v71, v28 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v50, &qword_1002CFFD8, &qword_1002440C0);
      v51 = v53;
      v53(v48, (v47 + *(v75 + 36)), v33);
      sub_100003CBC(v47, &qword_1002CFFD8, &qword_1002440C0);
      v22 = v48;
      AttributedString.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      v24 = v51;
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v72(v62, v33);
    sub_100003CBC(v76, &qword_1002CFFE0, &qword_10024CC60);
    return v73;
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void *sub_10017634C(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v6);
  type metadata accessor for AttributedString();
  sub_1001768F0(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  dispatch thunk of AttributedStringProtocol.characters.getter();
  sub_1001768F0(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  String.init<A>(_:)();
  v7 = [objc_allocWithZone(NLTokenizer) initWithUnit:1];
  type metadata accessor for TranscriptionParagraphFormatter(0);
  Locale.language.getter();
  Locale.Language.minimalIdentifier.getter();
  (*(v3 + 8))(v5, v2);
  v8 = String._bridgeToObjectiveC()();

  [v7 setLanguage:v8];

  v9 = String._bridgeToObjectiveC()();
  [v7 setString:v9];

  v10 = NLTokenizer.tokens(for:)();
  v14 = a1;
  v11 = sub_1000EF984(sub_100176830, v13, v10);

  return v11;
}

uint64_t sub_10017663C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4);
  v8 = *a1;
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  sub_1000C773C(&qword_1002D4530, &qword_10024CBC8);
  sub_100008034(&qword_1002D4538, &qword_1002D4530, &qword_10024CBC8, &protocol conformance descriptor for Range<A>);
  sub_1001768F0(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  return Range<>.init<A, B>(_:in:)();
}

uint64_t type metadata accessor for TranscriptionParagraphFormatter(uint64_t a1)
{
  result = qword_1002D45E8;
  if (!qword_1002D45E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100176874(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001768F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001769C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StereoOrientationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100176A38(void *a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = &OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_interfaceOrientation;
  if (v4 != 1)
  {
    v5 = &OBJC_IVAR____TtC10VoiceMemos25StereoOrientationProvider_deviceOrientation;
  }

  v6 = *(v1 + *v5);
  if ((v6 - 1) >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [a1 orientation];
  if (!v8)
  {
    return qword_10024CCC0[v7 - 1];
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return v7;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    return qword_10024CCC0[v7 - 1];
  }

  return v7;
}

double sub_100176BD0(_BYTE *a1, uint64_t a2)
{
  v3 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (*a1 == 1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_100176E08();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return result;
    }

    v8 = *(Strong + 32);
    if (v8)
    {
      v9 = *(Strong + 24);
      v10 = Strong;
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v10;
      v12[5] = v9;
      v12[6] = v8;

      sub_100179578(0, 0, v5, &unk_10024CD80, v12);
    }
  }

  return result;
}

uint64_t sub_100176D54()
{
  if (*(*(v0 + 16) + 16))
  {

    v1 = Activity.id.getter();
    sub_100146AD8(v1, v2);
  }

  sub_10000E274(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_100176E08()
{
  v1 = v0;
  if (*(v0 + 32) && *(*(v0 + 16) + 16))
  {

    v2 = Activity.id.getter();
    sub_100146AD8(v2, v3);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeAudioRecorder];

  if (v5)
  {
    v6 = [v5 context];
    v7 = v6[OBJC_IVAR____TtC10VoiceMemos18VMRecordingContext_isActionButtonInitiated];

    v8 = sub_100145C34(v7);
    v10 = v9;
    swift_unknownObjectRelease();
    *(v1 + 24) = v8;
    *(v1 + 32) = v10;
  }
}

uint64_t sub_100176F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100176F54, 0, 0);
}

uint64_t sub_100176F54()
{
  v0[5] = *(v0[2] + 16);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100176FF0;

  return sub_1001463EC(0);
}

uint64_t sub_100176FF0()
{

  return _swift_task_switch(sub_1001770EC, 0, 0);
}

uint64_t sub_1001770EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1001771F0;

    return sub_1000EAC34();
  }

  else
  {
    if (sub_100146AD8(v0[3], v0[4]))
    {
      v4 = v0[2];
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1001771F0()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100177308, 0, 0);
}

uint64_t sub_100177308()
{
  if (sub_100146AD8(v0[3], v0[4]))
  {
    v1 = v0[2];
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100177380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_100176F30(a1, v4, v5, v6, v7, v8);
}

id sub_1001774B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8, v10);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

void sub_1001775C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100177630()
{
  [*&v0[OBJC_IVAR___RCCaptureToken_operationQueue] setSuspended:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CaptureToken(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CaptureToken(uint64_t a1)
{
  result = qword_1002D47B0;
  if (!qword_1002D47B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017782C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1001779C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ApplicationFileCoordinator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100177A20()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v51 - v5;
  v56 = v51 - v5;
  v7 = type metadata accessor for UUID();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v51 - v10;
  UUID.init()();
  v12 = RCCaptureDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v13 = *(v1 + 8);
  v60 = v1 + 8;
  v57 = v13;
  v52 = v3;
  v13(v3, v0);
  v14 = *(v1 + 16);
  v51[2] = v1 + 16;
  v54 = v0;
  v14(v3, v6, v0);
  v15 = v62;
  v16 = *(v61 + 16);
  v17 = v59;
  v58 = v11;
  v16(v59, v11, v62);
  v55 = type metadata accessor for CaptureToken(0);
  v18 = objc_allocWithZone(v55);
  v19 = OBJC_IVAR___RCCaptureToken_operationQueue;
  v53 = OBJC_IVAR___RCCaptureToken_operationQueue;
  v20 = [objc_allocWithZone(NSOperationQueue) init];
  *&v18[v19] = v20;
  v21 = v52;
  v14(&v18[OBJC_IVAR___RCCaptureToken_directoryURL], v52, v0);
  v22 = v18;
  v16(&v18[OBJC_IVAR___RCCaptureToken_uuid], v17, v15);
  v23 = v15;
  [v20 setSuspended:1];
  v24 = objc_opt_self();
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = [v24 writingIntentWithURL:v26 options:2];

  v29 = [objc_allocWithZone(NSFileCoordinator) init];
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002432F0;
  *(v30 + 32) = v28;
  sub_100177FE8();
  v31 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = v22;
  v34 = *&v22[v53];
  aBlock[4] = DebugData.init(name:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001775C4;
  aBlock[3] = &unk_100293BD8;
  v35 = _Block_copy(aBlock);
  v36 = v34;
  [v29 coordinateAccessWithIntents:isa queue:v36 byAccessor:v35];
  _Block_release(v35);

  v37 = v61;
  v63.receiver = v33;
  v63.super_class = v55;
  v38 = objc_msgSendSuper2(&v63, "init");
  v39 = *(v37 + 8);
  v39(v59, v23);
  v40 = v21;
  v41 = v54;
  v42 = v57;
  v57(v40, v54);
  v43 = [objc_opt_self() defaultManager];
  v44 = v56;
  URL._bridgeToObjectiveC()(v45);
  v47 = v46;
  aBlock[0] = 0;
  LOBYTE(v35) = [v43 createDirectoryAtURL:v46 withIntermediateDirectories:0 attributes:0 error:aBlock];

  if (v35)
  {
    v48 = aBlock[0];
  }

  else
  {
    v49 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v42(v44, v41);
  v39(v58, v62);
  return v38;
}

unint64_t sub_100177FE8()
{
  result = qword_1002D47E8;
  if (!qword_1002D47E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D47E8);
  }

  return result;
}

double sub_100178034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10017804C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000C773C(&qword_1002D5FA0, &qword_100243330);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1000C773C(&qword_1002D4818, &qword_10024CE08);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for CSSearchQuery.Results();
  v2[13] = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002D4820, &qword_10024CE10);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10017825C, 0, 0);
}

uint64_t sub_10017825C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = sub_10017913C(*(v0 + 16), *(v0 + 24));
  CSSearchQuery.results.getter();

  sub_100179520();
  AsyncCompactMapSequence.init(_:transform:)();
  (*(v4 + 16))(v1, v2, v3);
  sub_100008034(&qword_1002D4830, &qword_1002D4820, &qword_10024CE10, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v6 = sub_100008034(&qword_1002D4838, &qword_1002D4818, &qword_10024CE08, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_100178420;
  v8 = *(v0 + 72);
  v9 = *(v0 + 32);

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v8, v6);
}

uint64_t sub_100178420()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_100178840;
  }

  else
  {
    v3 = sub_100178558;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178558()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v6 + 8))(v4, v5);
    sub_1000EA894(v3);

    v7 = v0[1];
    v8 = v0[18];

    return v7(v8);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = *(v2 + 32);
    v12(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v0[18];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1000F2888(0, v14[2] + 1, 1, v0[18]);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1000F2888((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = v0[7];
    v18 = v0[5];
    v19 = v0[6];
    (*(v19 + 8))(v0[8], v18);
    v14[2] = v16 + 1;
    v12(v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v17, v18);
    v0[18] = v14;
    v20 = sub_100008034(&qword_1002D4838, &qword_1002D4818, &qword_10024CE08, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_100178420;
    v22 = v0[9];
    v23 = v0[4];

    return dispatch thunk of AsyncIteratorProtocol.next()(v23, v22, v20);
  }
}

uint64_t sub_100178840()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100178918(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100178938, 0, 0);
}

uint64_t sub_100178938()
{
  v1 = *(v0 + 16);
  v2 = CSSearchQuery.Results.Item.item.getter();
  v3 = [v2 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001789EC(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001789EC@<X0>(char *a3@<X8>)
{
  v4 = sub_1000C773C(&qword_1002D5FA0, &qword_100243330);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v11 = *(v8 + 32);
    v11(v10, v6, v7);
    v12 = URL.scheme.getter();
    if (v13)
    {
      if (v12 == 0x616465726F632D78 && v13 == 0xEA00000000006174)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v11(a3, v10, v7);
      v16 = 0;
      return (*(v8 + 56))(a3, v16, 1, v7);
    }

LABEL_9:
    (*(v8 + 8))(v10, v7);
    goto LABEL_10;
  }

  sub_1000EA894(v6);
LABEL_10:
  v16 = 1;
  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_100178D90(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_100178E60;

  return sub_10017921C(v3, v5);
}

uint64_t sub_100178E60(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

id sub_100179030(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RCTranscriptionSearch();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100179088()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_100178D90(v2, v3);
}

id sub_10017913C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(23);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 1684218410;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6 = objc_allocWithZone(CSSearchQuery);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithQueryString:v7 queryContext:{0, 0xD000000000000011, 0x8000000100234960}];

  return v8;
}

uint64_t sub_10017921C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017923C, 0, 0);
}

uint64_t sub_10017923C()
{
  if (qword_1002CDE28 != -1)
  {
    swift_once();
  }

  v1 = qword_1002E8DC0;

  CurrentValueSubject.value.getter();

  if (*(v0 + 40) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_100179380;
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    return sub_10017804C(v4, v3);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100179380(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100179480(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100178918(a1, a2);
}

unint64_t sub_100179520()
{
  result = qword_1002D4828;
  if (!qword_1002D4828)
  {
    type metadata accessor for CSSearchQuery.Results();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4828);
  }

  return result;
}

uint64_t sub_100179578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D91F8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90, &qword_1002422E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90, &qword_1002422E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003CBC(a3, &unk_1002D1D90, &qword_1002422E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100179868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000D91F8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90, &qword_1002422E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000C773C(&qword_1002CEFA8, &qword_10024D040);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100003CBC(a3, &unk_1002D1D90, &qword_1002422E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003CBC(a3, &unk_1002D1D90, &qword_1002422E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000C773C(&qword_1002CEFA8, &qword_10024D040);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

double sub_100179B88(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = a3 >> 5;
  if (v8 <= 1)
  {
    if (a3 >> 5)
    {
      if ((v7 & 0xE0) != 0x20)
      {
        goto LABEL_48;
      }
    }

    else if (v7 >= 0x20)
    {
      goto LABEL_48;
    }

    v11 = v5 == a1 && v6 == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (v8 == 2)
  {
    if ((v7 & 0xE0) == 0x40)
    {
      if (v5 == a1 && v6 == a2)
      {
        if ((a3 & 1) == (v7 & 1))
        {
          return result;
        }
      }

      else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((a3 ^ v7) & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_48;
  }

  if (v8 == 3)
  {
    if ((v7 & 0xE0) == 0x60 && ((v5 ^ a1) & 1) == 0)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (!(a2 | a1) && a3 == 128)
  {
    if ((v7 & 0xE0) != 0x80 || v6 | v5)
    {
      goto LABEL_48;
    }

LABEL_47:
    if (v7 == 128)
    {
      return result;
    }

    goto LABEL_48;
  }

  if (a1 == 1 && !a2 && a3 == 128)
  {
    if ((v7 & 0xE0) != 0x80 || v5 != 1)
    {
      goto LABEL_48;
    }

LABEL_46:
    if (v6)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (a1 == 2 && !a2 && a3 == 128)
  {
    if ((v7 & 0xE0) == 0x80 && v5 == 2)
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 0xE0) == 0x80 && v5 == 3)
  {
    goto LABEL_46;
  }

LABEL_48:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    v16 = *(v13 + 48);

    sub_10017C690(v14, v15, v16);
    sub_100115920(v14, v15, v16);
    sub_10017C6A8(v14, v15, v16);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100179DB4(void *a1)
{
  if (a1)
  {
    [a1 currentTime];
    v3 = *(v1 + 56);
    if (v3)
    {
      v4 = v2;
      result = [v3 currentTime];
      if (v4 == v6)
      {
        return result;
      }
    }
  }

  else
  {
    result = *(v1 + 56);
    if (!result)
    {
      return result;
    }

    [result currentTime];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002B04C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100179E58()
{
  if (*(v0 + 104))
  {

    Task.cancel()();
  }

  sub_10000E274(v0 + 16);
  sub_10017C6A8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100179EFC()
{
  sub_100179E58();

  return swift_deallocClassInstance();
}

double sub_100179F30(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + 96);
  if (!v10)
  {
LABEL_12:
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;

    *(v3 + 88) = a1;
    *(v3 + 96) = a2;

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = v3;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v17;
    *(v19 + 40) = a1;
    *(v19 + 48) = a2;
    *(v19 + 56) = a3 & 1;
    *(v17 + 104) = sub_100179578(0, 0, v9, &unk_10024D010, v19);

    return result;
  }

  v11 = *(v3 + 88) == a1 && v10 == a2;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (*(v3 + 104))
    {

      Task.cancel()();
    }

    goto LABEL_12;
  }

  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v14 = *(v3 + 48);
  *(v3 + 48) = 32;

  sub_100179B88(v12, v13, v14);

  sub_10017C6A8(v12, v13, v14);
  return result;
}

uint64_t sub_10017A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 97) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 24) = a4;
  type metadata accessor for TranscriptionData(0);
  *(v7 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 56) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;

  return _swift_task_switch(sub_10017A24C, v9, v8);
}

uint64_t sub_10017A24C()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_10017A330;
    v4 = *(v0 + 97);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);

    return sub_10017AC0C(v5, v7, v6, v4);
  }
}

uint64_t sub_10017A330()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10017A4F8;
  }

  else
  {
    v5 = sub_10017A46C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017A46C()
{

  v1 = static Task<>.isCancelled.getter();
  v2 = v0[6];
  if ((v1 & 1) == 0)
  {
    sub_10017BD9C(v0[4], v0[5], v0[6]);
  }

  sub_1000FC460(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10017A4F8()
{
  v1 = *(v0 + 88);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_1000C773C(&qword_1002D5540, &qword_1002425B0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 96) == 4;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v3 = *(v0 + 32);
      v4 = *(v0 + 40);
      v5 = *(v0 + 24);
      *(v5 + 112) = v3;
      *(v5 + 120) = v4;

      sub_1000FC520();
      v6 = swift_allocError();
      *v7 = 4;
      sub_10017BECC(v3, v4, v6);
    }
  }

  else
  {

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      sub_10017BECC(*(v0 + 32), *(v0 + 40), *(v0 + 88));
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_10017A668(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = qword_1002CDD88;
    v17 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100018D90(v4, qword_1002E8CB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10001901C(0xD00000000000001ALL, 0x8000000100234AD0, &v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Beginning live transcription observation", v7, 0xCu);
      sub_100014B64(v8);
    }

    *&v17[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_delegate + 8] = &off_100293D08;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100018D90(v9, qword_1002E8CB0);
    v10 = static os_log_type_t.error.getter();
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10001901C(0xD00000000000001ALL, 0x8000000100234AD0, &v18);
      _os_log_impl(&_mh_execute_header, v11, v10, "%s Unable to begin live transcription.", v12, 0xCu);
      sub_100014B64(v13);
    }

    v14 = *(v2 + 32);
    v15 = *(v2 + 40);
    *(v2 + 32) = xmmword_10024CE30;
    v16 = *(v2 + 48);
    *(v2 + 48) = 0x80;
    sub_100179B88(v14, v15, v16);

    sub_10017C6A8(v14, v15, v16);
  }
}

uint64_t sub_10017A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  CurrentValueSubject.value.getter();

  v7 = (v17 & 0xC0) == 0x80 && v16 == 2;
  if (!v7 || v17 != 128)
  {
    sub_10010D6F8(v16, v17);
    v8 = *(v3 + 32);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
LABEL_8:
    *(v3 + 32) = xmmword_10024CE30;
    *(v3 + 48) = 0x80;
    sub_100179B88(v8, v9, v10);
    return sub_10017C6A8(v8, v9, v10);
  }

  v15 = a3;
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  v14 = *(v3 + 48);
  if (v14 < 0 && (v12 | v13 || v14 != -128) && (v13 != 1 || v12 || v14 != -128))
  {
    v9 = 0;
    v10 = 128;
    v8 = 3;
    if (v13 != 2 || v12 || v14 != -128)
    {
      goto LABEL_8;
    }
  }

  *(v3 + 32) = xmmword_10024CE40;
  *(v3 + 48) = 0x80;
  sub_100179B88(v13, v12, v14);
  sub_10017C6A8(v13, v12, v14);
  return sub_10017C11C(a1, a2, v15);
}

uint64_t sub_10017AB10(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  if ((v7 & 0x80000000) == 0 || !(v6 | v5) && v7 == -128 || (v5 == 1 ? (v8 = v6 == 0) : (v8 = 0), v8 && v7 == -128 || (v5 == 2 ? (v9 = v6 == 0) : (v9 = 0), v9 && v7 == -128)))
  {
    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = result & 0xFFFFFFFFFFFFLL;
    }

    *(v3 + 32) = v10 != 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 96;
    v11 = result;
    sub_100179B88(v5, v6, v7);
    sub_10017C6A8(v5, v6, v7);

    return sub_10017C11C(v11, a2, a3);
  }

  return result;
}

uint64_t sub_10017AC0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for DecodingError();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = type metadata accessor for AttributedString.CharacterView();
  *(v5 + 104) = swift_task_alloc();
  v7 = type metadata accessor for TranscriptionData(0);
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  sub_1000C773C(&unk_1002D4AC0, &qword_1002469F0);
  *(v5 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v9;
  *(v5 + 168) = v8;

  return _swift_task_switch(sub_10017ADF0, v9, v8);
}

uint64_t sub_10017ADF0()
{
  v17 = v0;
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  v0[22] = qword_1002E8D20;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_100018D90(v1, qword_1002E8CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Retrieving existing transcription", v4, 0xCu);
    sub_100014B64(v5);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v0[4];
  *(v7 + 40) = v6;
  v10 = *(v7 + 48);
  *(v7 + 48) = 0;

  sub_100179B88(v8, v9, v10);
  sub_10017C6A8(v8, v9, v10);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_10017B024;
  v12 = v0[18];
  v13 = v0[4];
  v14 = v0[5];

  return sub_1000F6804(v12, v13, v14);
}

uint64_t sub_10017B024()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10017B7EC;
  }

  else
  {
    v5 = sub_10017B160;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017B160()
{
  v20 = v0;
  v1 = *(v0 + 144);
  if ((*(*(v0 + 120) + 48))(v1, 1, *(v0 + 112)) == 1)
  {
    sub_100003CBC(v1, &unk_1002D4AC0, &qword_1002469F0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v19);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s No transcription found. Beginning new transcription.", v4, 0xCu);
      sub_100014B64(v5);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *(v7 + 32) = *(v0 + 32);
    *(v7 + 40) = v6;
    v10 = *(v7 + 48);
    *(v7 + 48) = 32;

    sub_100179B88(v8, v9, v10);
    sub_10017C6A8(v8, v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_10017B400;
    v12 = *(v0 + 136);
    v13 = *(v0 + 224);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);

    return sub_1000F7104(v12, v14, v15, v13);
  }

  else
  {
    v17 = *(v0 + 24);

    sub_1000FC4BC(v1, v17);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10017B400()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10017BCD8;
  }

  else
  {
    v5 = sub_10017B53C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017B53C()
{
  v15 = v0;
  v2 = v0[16];
  v1 = v0[17];

  sub_10012D314(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v14);
    *(v7 + 12) = 2080;
    type metadata accessor for AttributedString();
    sub_10017C6C0(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10017C6C0(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v8 = String.init<A>(_:)();
    v10 = v9;
    sub_1000FC460(v6);
    v11 = sub_10001901C(v8, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Transcription complete. Results: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000FC460(v6);
  }

  sub_1000FC4BC(v0[17], v0[3]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10017B7EC()
{
  v42 = v0;
  *(v0 + 16) = *(v0 + 200);
  swift_errorRetain();
  sub_1000C773C(&qword_1002D5540, &qword_1002425B0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);

    (*(v4 + 32))(v1, v2, v3);
    v5 = RCCatchTranscriptionDecodingError();
    v6 = *(v0 + 80);
    if (v5)
    {
      v7 = *(*(v0 + 64) + 16);
      v7(*(v0 + 72), *(v0 + 80), *(v0 + 56));
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v14 = *(v0 + 64);
      if (v10)
      {
        v40 = *(v0 + 80);
        v15 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v15 = 138412290;
        swift_allocError();
        v7(v16, v12, v13);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = *(v14 + 8);
        v18(v12, v13);
        *(v15 + 4) = v17;
        *v39 = v17;
        _os_log_impl(&_mh_execute_header, v8, v9, "Catching decode failure so that file can be re-transcribed, error = %@", v15, 0xCu);
        sub_100003CBC(v39, &unk_1002D3690, &qword_100242370);

        v18(v40, v13);
      }

      else
      {

        v24 = *(v14 + 8);
        v24(v12, v13);
        v24(v11, v13);
      }

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_10001901C(0xD000000000000038, 0x8000000100234A90, &v41);
        _os_log_impl(&_mh_execute_header, v25, v26, "%s No transcription found. Beginning new transcription.", v27, 0xCu);
        sub_100014B64(v28);
      }

      v29 = *(v0 + 40);
      v30 = *(v0 + 48);
      v31 = *(v30 + 32);
      v32 = *(v30 + 40);
      *(v30 + 32) = *(v0 + 32);
      *(v30 + 40) = v29;
      v33 = *(v30 + 48);
      *(v30 + 48) = 32;

      sub_100179B88(v31, v32, v33);
      sub_10017C6A8(v31, v32, v33);
      v34 = swift_task_alloc();
      *(v0 + 208) = v34;
      *v34 = v0;
      v34[1] = sub_10017B400;
      v35 = *(v0 + 136);
      v36 = *(v0 + 224);
      v37 = *(v0 + 32);
      v38 = *(v0 + 40);

      return sub_1000F7104(v35, v37, v38, v36);
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    swift_allocError();
    (*(v20 + 16))(v21, v6, v19);
    swift_willThrow();
    (*(v20 + 8))(v6, v19);
  }

  else
  {

    swift_willThrow();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10017BCD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10011DDD4(a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = 65;
  }

  else
  {
    v13 = 64;
  }

  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v16 = *(v3 + 48);
  *(v3 + 48) = v13;

  sub_100179B88(v14, v15, v16);
  sub_10017C6A8(v14, v15, v16);
  sub_10017C11C(v7, v9, v11);

  result = *(v3 + 88);
  v19 = *(v3 + 96);
  v18 = (v3 + 88);
  if (v19)
  {
    if (result == a1 && v19 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      *v18 = 0;
      v18[1] = 0;
    }
  }

  return result;
}

uint64_t sub_10017BECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100018D90(v7, qword_1002E8CB0);
  v8 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001901C(0xD000000000000037, 0x8000000100234A50, &v20);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_10001901C(v11, v12, &v20);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v9, v8, "%s Failed to transcribe with error - %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  *(v3 + 32) = xmmword_10024CE50;
  v16 = *(v3 + 48);
  *(v3 + 48) = 0x80;
  sub_100179B88(v14, v15, v16);
  sub_10017C6A8(v14, v15, v16);
  sub_10017C11C(0, 0xE000000000000000, _swiftEmptyArrayStorage);
  result = *(v3 + 88);
  v19 = *(v3 + 96);
  v18 = (v4 + 88);
  if (v19)
  {
    if (result == a1 && v19 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      *v18 = 0;
      v18[1] = 0;
    }
  }

  return result;
}

uint64_t sub_10017C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a2;

  v3[10] = a3;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002B04C(1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10017C1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10017C1D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 17))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10017C224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_10017C288(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_10017C2C4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10017C3B8;

  return v5(v2 + 32);
}

uint64_t sub_10017C3B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10017C4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a3 >> 5;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if ((a6 & 0xE0) == 0x40)
      {
        if (a1 == a4 && a2 == a5 || (v9 = a3, v10 = a6, v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v9, a6 = v10, (v11 & 1) != 0))
        {
          v8 = a6 ^ a3;
          return (v8 ^ 1) & 1;
        }
      }

      return 0;
    }

    if (v7 == 3)
    {
      if ((a6 & 0xE0) == 0x60)
      {
        v8 = a4 ^ a1;
        return (v8 ^ 1) & 1;
      }

      return 0;
    }

    if (a2 | a1 || a3 != 128)
    {
      if (a1 == 1 && !a2 && a3 == 128)
      {
        if ((a6 & 0xE0) != 0x80 || a4 != 1)
        {
          return 0;
        }
      }

      else if (a1 == 2 && !a2 && a3 == 128)
      {
        if ((a6 & 0xE0) != 0x80 || a4 != 2)
        {
          return 0;
        }
      }

      else if ((a6 & 0xE0) != 0x80 || a4 != 3)
      {
        return 0;
      }

      if (a5)
      {
        return 0;
      }
    }

    else if ((a6 & 0xE0) != 0x80 || a5 | a4)
    {
      return 0;
    }

    return a6 == 128;
  }

  if (a3 >> 5)
  {
    if ((a6 & 0xE0) != 0x20)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }
  }

  else
  {
    if (a6 >= 0x20u)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10017C690(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x5Fu)
  {
  }

  return result;
}

uint64_t sub_10017C6A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x5Fu)
  {
  }

  return result;
}

uint64_t sub_10017C6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017C708(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002001C;

  return sub_10017A180(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10017C7E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_10017C2C4(a1, v4);
}

unint64_t sub_10017C89C()
{
  result = qword_1002D4AE8;
  if (!qword_1002D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AE8);
  }

  return result;
}

unint64_t sub_10017C8F4()
{
  result = qword_1002D4AF0;
  if (!qword_1002D4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AF0);
  }

  return result;
}

unint64_t sub_10017C9CC()
{
  result = qword_1002D4AF8;
  if (!qword_1002D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4AF8);
  }

  return result;
}

uint64_t sub_10017CA20()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9118);
  sub_100018D90(v0, qword_1002E9118);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10017CA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = type metadata accessor for MainActor();
  v4[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v6;
  v4[36] = v5;

  return _swift_task_switch(sub_10017CB24, v6, v5);
}

uint64_t sub_10017CB24()
{
  IntentParameter.wrappedValue.getter();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 296) = v1;
  *(v0 + 304) = v3;
  v5 = *(v0 + 88);
  *(v0 + 312) = v4;
  *(v0 + 320) = v5;
  if (v1)
  {
    IntentParameter.wrappedValue.getter();
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 120);
    *(v0 + 328) = v7;
    *(v0 + 344) = v8;
    v9 = v7;
    if (v7)
    {
      AppDependency.wrappedValue.getter();
      sub_10000AACC((v0 + 136), *(v0 + 160));
      *(v0 + 360) = static MainActor.shared.getter();
      v10 = swift_task_alloc();
      *(v0 + 368) = v10;
      *v10 = v0;
      v10[1] = sub_10017CD0C;

      return sub_1001A0E38(v0 + 16, v2, v1, v6, v9);
    }
  }

  sub_1000E454C();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10017CD0C()
{
  *(*v1 + 376) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10017CFFC;
  }

  else
  {
    v4 = sub_10017CE64;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10017CE64()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10017CEC8, v1, v2);
}

uint64_t sub_10017CEC8()
{

  sub_100014B64((v0 + 136));
  v1 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 48);
  sub_10012EC78();
  static IntentResult.result<A>(value:)();

  *(v0 + 216) = *(v0 + 16);
  sub_10012ECCC(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017CFFC()
{

  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_10017D060, v1, v2);
}

uint64_t sub_10017D060()
{

  sub_100014B64((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017D134@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002CDF70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100018D90(v2, qword_1002E9118);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10017D1DC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_10017CA84(a1, v4, v5, v6);
}

uint64_t sub_10017D290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10017D308();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10017D2BC(uint64_t a1)
{
  v2 = sub_10017C9CC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10017D308()
{
  v30 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v26 = sub_1000C773C(&qword_1002D2EC0, &unk_10024AEB0);
  LocalizedStringResource.init(stringLiteral:)();
  v13 = *(v12 + 56);
  v24 = v12 + 56;
  v27 = v13;
  v13(v10, 1, 1, v11);
  v23 = "_INTENT_TARGET_PARAMETER";
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  IntentDialog.init(stringLiteral:)();
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 0, 1, v14);
  v15(v4, 1, 1, v14);
  v20 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v21 = v0 + 104;
  v22 = v16;
  v17 = v29;
  v16(v29);
  v19 = sub_100156D60();
  sub_1000DC3A4();
  v28 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  LocalizedStringResource.init(stringLiteral:)();
  v27(v10, 1, 1, v25);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  IntentDialog.init(stringLiteral:)();
  v15(v7, 0, 1, v14);
  v15(v4, 1, 1, v14);
  v22(v17, v20, v30);
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  sub_1000C773C(&qword_1002D4B00, &qword_10024D1B8);
  v31 = 0xD000000000000027;
  v32 = 0x80000001002321A0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v28;
}

VoiceMemos::RecordingDurationData __swiftcall RecordingDurationData.init(countOfRecordingsLessThanThirtySecs:countOfRecordingsThirtySecsToFiftyNineSecs:countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs:countOfRecordingsThreeHundredSecsOrGreater:)(Swift::Int32 countOfRecordingsLessThanThirtySecs, Swift::Int32 countOfRecordingsThirtySecsToFiftyNineSecs, Swift::Int32 countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs, Swift::Int32 countOfRecordingsThreeHundredSecsOrGreater)
{
  v4 = countOfRecordingsLessThanThirtySecs | (*&countOfRecordingsThirtySecsToFiftyNineSecs << 32);
  v5 = countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs | (*&countOfRecordingsThreeHundredSecsOrGreater << 32);
  result.countOfRecordingsSixtySecsToTwoHundredNinetyNineSecs = v5;
  result.countOfRecordingsThreeHundredSecsOrGreater = HIDWORD(v5);
  result.countOfRecordingsLessThanThirtySecs = v4;
  result.countOfRecordingsThirtySecsToFiftyNineSecs = HIDWORD(v4);
  return result;
}

unint64_t sub_10017D854()
{
  v1 = 0xD00000000000002ALL;
  v2 = 0xD000000000000034;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10017D8C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10017DBEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10017D8EC(uint64_t a1)
{
  v2 = sub_10017DB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017D928(uint64_t a1)
{
  v2 = sub_10017DB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RecordingDurationData.encode(to:)(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1000C773C(&qword_1002D4B08, &qword_10024D1D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000AACC(a1, a1[3]);
  sub_10017DB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10017DB2C()
{
  result = qword_1002D4B10;
  if (!qword_1002D4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B10);
  }

  return result;
}

unint64_t sub_10017DB98@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10017DD58(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10017DBEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000023 && 0x8000000100234B70 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000100234BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000034 && 0x8000000100234BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000100234C10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_10017DD58(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D4B30, &unk_10024D3E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_10017DB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100014B64(a1);
  }

  v15 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100014B64(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_10017DF60()
{
  result = qword_1002D4B18;
  if (!qword_1002D4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B18);
  }

  return result;
}

unint64_t sub_10017DFB8()
{
  result = qword_1002D4B20;
  if (!qword_1002D4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B20);
  }

  return result;
}

unint64_t sub_10017E010()
{
  result = qword_1002D4B28;
  if (!qword_1002D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D4B28);
  }

  return result;
}

NSString sub_10017E064()
{
  result = String._bridgeToObjectiveC()();
  qword_1002E9130 = result;
  return result;
}

id sub_10017E09C()
{
  if (qword_1002CDF78 != -1)
  {
    swift_once();
  }

  v1 = qword_1002E9130;

  return v1;
}

void sub_10017E27C()
{
  v1 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = type metadata accessor for RCCopyTranscriptActivity();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareWithActivityItems:", isa);

  v6 = [v0 recordingUUIDs];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];

    v10 = [objc_allocWithZone(type metadata accessor for RCControlsActionHelper()) init];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v9;
    v12[6] = v8;
    sub_100194190(0, 0, v3, &unk_10024D420, v12);
  }

  else
  {
  }
}

uint64_t sub_10017E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10017E4DC;

  return sub_1001A8584(a5, a6);
}

uint64_t sub_10017E4DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  return _swift_task_switch(sub_10017E5DC, 0, 0);
}

uint64_t sub_10017E5DC(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = *(v1 + 32);
  v3 = [objc_opt_self() generalPasteboard];
  if (v2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  [v3 setString:v2];

  v4 = *(v1 + 8);

  return v4();
}