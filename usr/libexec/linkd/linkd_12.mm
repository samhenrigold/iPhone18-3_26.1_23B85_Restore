uint64_t sub_100107500()
{
  sub_100107490();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_10010757C()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

void sub_100107644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = a1;
  v5 = 0;
  v85 = a2 & 0xC000000000000001;
  v86 = sub_1000232F4(a2);
  v84 = a2 & 0xFFFFFFFFFFFFFF8;
  v6 = _swiftEmptyArrayStorage;
  v69 = a2;
  v83 = a2 + 32;
  while (v5 != v86)
  {
    if (v85)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v84 + 16))
      {
        goto LABEL_83;
      }

      v7 = *(v83 + 8 * v5);
    }

    v8 = v7;
    v9 = __OFADD__(v5, 1);
    v10 = v5 + 1;
    if (v9)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      return;
    }

    sub_1001081C8(v78);
    if (v3)
    {

      goto LABEL_81;
    }

    v12 = v11;

    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v6 >> 62;
    if (v6 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_84;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_18:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_19:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_20;
    }

    if (v14)
    {
      goto LABEL_18;
    }

    if (v16 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v88 = v10;
    sub_1000184A4();
    if (v12 >> 62)
    {
      v20 = sub_1000120BC();
      if (!v20)
      {
        goto LABEL_34;
      }

      v21 = v20;
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v14 < v22)
      {
        goto LABEL_91;
      }

      if (v21 < 1)
      {
        goto LABEL_93;
      }

      v72 = v22;
      v74 = v13;
      v80 = v6;
      v76 = 0;
      sub_10010900C(&qword_10019C040, &qword_10019C038, &qword_100151C30);
      for (i = 0; i != v21; ++i)
      {
        v24 = sub_10002EB80(&qword_10019C038, &qword_100151C30);
        v32 = sub_100011184(v24, v25, v26, v27, v28, v29, v30, v31, v69, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v86);
        v34 = *v33;
        v32(v87, 0);
        *(v16 + 32 + 8 * i) = v34;
      }

      v13 = v74;
      v3 = v76;
      v6 = v80;
      v18 = v72;
LABEL_30:

      v5 = v88;
      if (v18 < v13)
      {
        goto LABEL_85;
      }

      if (v18 > 0)
      {
        v35 = *(v82 + 16);
        v9 = __OFADD__(v35, v18);
        v36 = v35 + v18;
        if (v9)
        {
          goto LABEL_90;
        }

        *(v82 + 16) = v36;
      }
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        if (v14 < v17)
        {
          goto LABEL_92;
        }

        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = sub_10002EB80(&qword_10019C030, &qword_100151C28);
        sub_1000116A0(v19);
        goto LABEL_30;
      }

LABEL_34:

      v5 = v88;
      if (v13 > 0)
      {
        goto LABEL_85;
      }
    }
  }

  v37 = sub_1000232F4(v6);
  v9 = __OFSUB__(v78, v37);
  v79 = v78 - v37;
  if (v9)
  {
    goto LABEL_98;
  }

  v38 = 0;
  v39 = _swiftEmptyArrayStorage;
  v81 = v6;
  while (1)
  {
    if (v38 == v86)
    {
      v87[0] = v6;
      sub_10006E1D4(v39);
      return;
    }

    if (v85)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v84 + 16))
      {
        goto LABEL_87;
      }

      v40 = *(v83 + 8 * v38);
    }

    v41 = v40;
    v9 = __OFADD__(v38, 1);
    v42 = v38 + 1;
    if (v9)
    {
      goto LABEL_86;
    }

    sub_1001085D4(v79);
    if (v3)
    {
      break;
    }

    v44 = v43;

    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v39 >> 62;
    v88 = v42;
    if (v39 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v47 + v45;
    if (__OFADD__(v47, v45))
    {
      goto LABEL_88;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v46)
      {
        if (v48 <= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

LABEL_57:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_58;
    }

    if (v46)
    {
      goto LABEL_57;
    }

LABEL_58:
    v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_59:
    sub_1000184A4();
    if (v44 >> 62)
    {
      v52 = sub_1000120BC();
      if (v52)
      {
        v53 = v52;
        v54 = _CocoaArrayWrapper.endIndex.getter();
        if (v46 < v54)
        {
          goto LABEL_95;
        }

        if (v53 < 1)
        {
          goto LABEL_97;
        }

        v71 = v54;
        v73 = v45;
        v75 = v39;
        v77 = 0;
        sub_10010900C(&qword_10019C040, &qword_10019C038, &qword_100151C30);
        for (j = 0; j != v53; ++j)
        {
          v56 = sub_10002EB80(&qword_10019C038, &qword_100151C30);
          v64 = sub_100011184(v56, v57, v58, v59, v60, v61, v62, v63, v69, v71, v73, v75, v77, v79, v81, v82, v83, v84, v85, v86);
          v66 = *v65;
          v64(v87, 0);
          *(v48 + 32 + 8 * j) = v66;
        }

        v39 = v75;
        v3 = v77;
        v50 = v71;
        v45 = v73;
        goto LABEL_69;
      }
    }

    else
    {
      v49 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
        if (v46 < v49)
        {
          goto LABEL_96;
        }

        v50 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v51 = sub_10002EB80(&qword_10019C030, &qword_100151C28);
        sub_1000116A0(v51);
LABEL_69:

        v6 = v81;
        v38 = v88;
        if (v50 < v45)
        {
          goto LABEL_89;
        }

        if (v50 > 0)
        {
          v67 = *(v82 + 16);
          v9 = __OFADD__(v67, v50);
          v68 = v67 + v50;
          if (v9)
          {
            goto LABEL_94;
          }

          *(v82 + 16) = v68;
        }

        continue;
      }
    }

    v6 = v81;
    v38 = v88;
    if (v45 > 0)
    {
      goto LABEL_89;
    }
  }

LABEL_81:
}

void sub_100107C44(void *a1)
{
  v2 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v2 - 8);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v61 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = [a1 localizedPhrase];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v67 = v15;
  v68 = v17;
  sub_10000BE0C();
  v18 = StringProtocol.hash.getter();

  v19 = [a1 parameterIdentifier];
  v62 = v7;
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v13, v9, v6);
    v67 = 0x726F68736F747561;
    v68 = 0xEF2F2F3A74756374;
    v21 = [v63 actionIdentifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 35;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v69 = v18;
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 35;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    sub_10010575C();
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = v68;
    v63 = v67;
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    v67 = 0x726F68736F747561;
    v68 = 0xEF2F2F3A74756374;
    v31 = [v63 actionIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 35;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v69 = v18;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v30 = v68;
    v63 = v67;
  }

  v38 = [a1 localizedPhrase];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = [a1 basePhraseTemplate];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = [a1 parameterIdentifier];
  v47 = v65;
  if (v46)
  {
    v48 = v46;
    v49 = v64;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v64;
  }

  sub_1000075C4(v49, v50, 1, v6);
  sub_100037B80(v49, v47);
  if (sub_1000032C4(v47, 1, v6) == 1)
  {
    sub_100108BA4(v47);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = UUID.uuidString.getter();
    v52 = v53;
    (*(v62 + 8))(v47, v6);
  }

  v54 = objc_allocWithZone(CCAppShortcutPhraseContent);
  v55 = v66;
  v56 = sub_10010886C(v39, v41, v43, v45, v51, v52, v63, v30);
  if (v55)
  {
  }

  else
  {
    v57 = v56;
    v58 = objc_allocWithZone(CCAppShortcutPhraseMetaContent);
    v59 = sub_1000377E0();
    v60 = objc_allocWithZone(CCItemInstance);
    sub_1000378AC(v57, v59);
  }
}

void sub_1001081C8(uint64_t a1)
{
  if (a1 >= 1)
  {
    v27 = v2;
    v7 = [v2 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000232F4(v8);
    sub_100013588();
    while (v5 != v6)
    {
      if (v4)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ([v9 *(v1 + 328)])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100009A50();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_100009A50();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
    }

    sub_100003880(v11, _swiftEmptyArrayStorage, v12, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr, v13, v14, v15, v27, v29, a1);
    v30 = v18 >> 1;
    v19 = (v18 >> 1) - v17;
    if (__OFSUB__(v18 >> 1, v17))
    {
      goto LABEL_32;
    }

    if (!v19)
    {
      swift_unknownObjectRelease();
      return;
    }

    v20 = v16;
    v21 = v17;
    v32 = v28;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v23 = v20 + 8 * v21;
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_30;
        }

        if ((v21 + v22) >= v30 || v22 >= v19)
        {
          goto LABEL_31;
        }

        v26 = *(v23 + 8 * v22);
        sub_100107C44(v26);
        if (v3)
        {

          swift_unknownObjectRelease();

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10001AB54();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_10001AB54();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v22;
        if (v24 == v19)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

LABEL_33:
    __break(1u);
  }
}

unint64_t sub_100108488(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), unint64_t *a4, void *a5)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = _CocoaArrayWrapper.subscript.getter();

    return v15;
  }

  v9 = a3(a2);
  v10 = sub_100108A5C(0, a1, v9);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_16;
  }

  sub_100108A00(0, a2);
  sub_100108A00(v12, a2);
  if ((a2 & 0xC000000000000001) != 0 && v12)
  {
    sub_100003D44(0, a4, a5);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_1001085D4(uint64_t a1)
{
  if (a1 >= 1)
  {
    v27 = v2;
    v7 = [v2 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000232F4(v8);
    sub_100013588();
    while (v5 != v6)
    {
      if (v4)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_29;
        }

        v9 = *(v8 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ([v9 *(v1 + 328)])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100009A50();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_100009A50();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v6;
    }

    sub_100003880(v11, _swiftEmptyArrayStorage, v12, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr, v13, v14, v15, v27, v29, a1);
    v30 = v18 >> 1;
    v19 = (v18 >> 1) - v17;
    if (__OFSUB__(v18 >> 1, v17))
    {
      goto LABEL_32;
    }

    if (!v19)
    {
      swift_unknownObjectRelease();
      return;
    }

    v20 = v16;
    v21 = v17;
    v32 = v28;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v23 = v20 + 8 * v21;
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_30;
        }

        if ((v21 + v22) >= v30 || v22 >= v19)
        {
          goto LABEL_31;
        }

        v26 = *(v23 + 8 * v22);
        sub_100107C44(v26);
        if (v3)
        {

          swift_unknownObjectRelease();

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_10001AB54();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_10001AB54();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v22;
        if (v24 == v19)
        {

          swift_unknownObjectRelease();
          return;
        }
      }
    }

LABEL_33:
    __break(1u);
  }
}

id sub_10010886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = String._bridgeToObjectiveC()();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = String._bridgeToObjectiveC()();

  if (a8)
  {
LABEL_5:
    v15 = String._bridgeToObjectiveC()();

    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  v20 = 0;
  v16 = [v8 initWithPhrase:v12 baseTemplate:v13 templateParameterValue:v14 actionIdentifier:v15 error:&v20];

  if (v16)
  {
    v17 = v20;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v16;
}

uint64_t sub_100108A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100108A5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100108BA4(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010900C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002EC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100109060()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019E328 = result;
  unk_10019E330 = v1;
  return result;
}

uint64_t sub_100109090()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = v0;
  v2 = *(v0 + 112);
  *(v1 + 272) = v2;
  if (v2)
  {
    v3 = sub_100109378;
  }

  else
  {
    v3 = sub_100109198;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100109198()
{
  sub_1000070C8();
  v1 = *(v0 + 208);

  v2 = sub_1000038A8();

  return v3(v2);
}

uint64_t sub_100109204()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 288) = v2;
  if (v2)
  {
    v3 = sub_1001093E0;
  }

  else
  {
    v3 = sub_10010930C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010930C()
{
  sub_1000070C8();
  v1 = *(v0 + 208);

  v2 = sub_1000038A8();

  return v3(v2);
}

uint64_t sub_100109378()
{
  sub_1000070C8();
  v1 = *(v0 + 264);
  swift_willThrow();

  sub_100003A00();

  return v2();
}

uint64_t sub_1001093E0()
{
  sub_1000070C8();
  v1 = *(v0 + 280);
  swift_willThrow();

  sub_100003A00();

  return v2();
}

uint64_t *sub_100109448(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  result = sub_1000034B4((a1 + 32), *(a1 + 56));
  v10 = *result;
  if (a5)
  {
    v11 = a5;

    return sub_100038184();
  }

  else if (a3)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    return sub_100032704(v10, a2, v13, v15, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010951C(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v11 = *v4;
  sub_10000298C();
  *v12 = v11;

  v13 = *(v9 + 24);
  if (v5)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, 0, v14);

    _Block_release(v13);
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    (v13)[2](v13, a1, isa, 0);

    _Block_release(v13);
    sub_100009B18(a2, a3);
  }

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_100109754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10003CC10(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_1000032C4(v11, 1, v12) == 1)
  {
    sub_1000075EC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1000075EC(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000075EC(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1001099F0()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v3 = sub_1000070A8(v1);

  return v4(v3);
}

void sub_100109F48()
{
  sub_100004DF0();
  v2 = v1;
  v31 = v3;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58(&qword_1001983B0);
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144(&qword_1001983B8);
  }

  sub_100003A8C(&qword_10019E3E8);
  v4 = == infix<A>(_:_:)();
  v6 = v5;
  v8 = v7;
  memcpy(v28, __dst, sizeof(v28));
  QueryType.filter(_:)(v4, v6, v8, &type metadata for Table, &protocol witness table for Table, v9, v10, v11, v24, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14]);

  if (v2)
  {
    memcpy(v28, __src, sizeof(v28));
    if (qword_1001983D0 != -1)
    {
      sub_1000072C4(&qword_1001983D0);
    }

    sub_100003A8C(&qword_10019C128);
    v12 = == infix<A>(_:_:)();
    v14 = v13;
    v16 = v15;
    memcpy(v26, v28, sizeof(v26));
    QueryType.filter(_:)(v12, v14, v16, &type metadata for Table, &protocol witness table for Table, v17, v18, v19, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v26[17], v26[18], v26[19], v26[20], v26[21], 0, v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14]);

    sub_10001970C(v28);
    memcpy(__src, v27, sizeof(__src));
  }

  v28[3] = &type metadata for Table;
  v28[4] = &protocol witness table for Table;
  sub_100003A98();
  v28[0] = swift_allocObject();
  memcpy((v28[0] + 16), __src, 0xB0uLL);
  v20 = Connection.pluck(_:)(v28);
  v22 = v21;
  sub_1000034F8(v28);
  if (!v0)
  {
    if (v20)
    {
      sub_10010B038(v20, v22, v31);
    }

    else
    {
      v23 = type metadata accessor for LNBundleRecord(0);
      sub_1000075C4(v31, 1, 1, v23);
    }
  }

  sub_100004674();
}

void sub_10010A1E0()
{
  sub_100004DF0();
  v1 = v0;
  v3 = v2;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58(&qword_1001983B0);
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144(&qword_1001983B8);
  }

  sub_100003A8C(&qword_10019E3E8);
  __src[0] = v3;
  __src[1] = v1;
  == infix<A>(_:_:)();
  sub_1000052EC();
  memcpy(v12, __dst, sizeof(v12));
  v4 = sub_100006768();
  sub_1000120DC(v4, v5, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v15, __src, sizeof(v15));
  memcpy(__src, v15, sizeof(__src));
  QueryType.delete()();
  sub_10000754C();
  v16.template._countAndFlagsBits = sub_100006B18();
  Connection.run(_:)(v16);

  sub_100004674();
}

void sub_10010A348()
{
  sub_100004DF0();
  v1 = v0;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58(&qword_1001983B0);
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  if (qword_1001983B8 != -1)
  {
    sub_100008144(&qword_1001983B8);
  }

  v2 = v1[1];
  __src[0] = *v1;

  v3 = == infix<A>(_:_:)();
  v5 = v4;
  v7 = v6;

  memcpy(v22, __dst, sizeof(v22));
  QueryType.filter(_:)(v3, v5, v7, &type metadata for Table, &protocol witness table for Table, v8, v9, v10, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], __src[0], v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v25, __src, 0xB0uLL);
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  sub_100003A98();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014BC40;
  if (qword_1001983C8 != -1)
  {
    sub_1000184BC(&qword_1001983C8);
  }

  v12 = type metadata accessor for LNBundleRecord(0);
  v13 = (v1 + *(v12 + 24));
  v14 = v13[1];
  v22[0] = *v13;
  v15 = v22[0];
  v22[1] = v14;
  <- infix<A>(_:_:)();
  v16 = v22[0];
  v17 = v22[1];
  sub_1000098F0(v15, v14);
  sub_100009B18(v16, v17);
  if (qword_1001983D0 != -1)
  {
    sub_1000072C4(&qword_1001983D0);
  }

  sub_100003A8C(&qword_10019C128);
  v22[0] = *(v1 + *(v12 + 28));
  <- infix<A>(_:_:)();
  memcpy(v22, v25, sizeof(v22));
  v26 = QueryType.update(_:)(v11);
  countAndFlagsBits = v26.template._countAndFlagsBits;
  object = v26.template._object;
  rawValue = v26.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10001970C(v25);
  v27.template._countAndFlagsBits = countAndFlagsBits;
  v27.template._object = object;
  v27.bindings._rawValue = rawValue;
  Connection.run(_:)(v27);

  sub_100004674();
}

void sub_10010A624()
{
  sub_100004DF0();
  v23[2] = v0;
  v2 = v1;
  v3 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58(&qword_1001983B0);
  }

  memcpy(v29, &unk_10019E338, 0xB0uLL);
  memcpy(v28, &unk_10019E338, sizeof(v28));
  sub_1000196B0(v29, v26);
  if (qword_1001983B8 != -1)
  {
    sub_100008144(&qword_1001983B8);
  }

  sub_100003A8C(&qword_10019E3E8);
  v6 = v2[1];
  v26[0] = *v2;
  v26[1] = v6;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  v23[0] = *algn_10019E408;
  v23[1] = qword_10019E400;
  v8 = type metadata accessor for LNBundleRecord(0);
  sub_100083E9C(v2 + v8[5], v5);
  v9 = type metadata accessor for URL();
  if (sub_1000032C4(v5, 1, v9) == 1)
  {
    sub_100003E9C(v5, &qword_1001990C0, &unk_10014E200);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v12 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  v24 = countAndFlagsBits;
  v25 = object;
  <- infix<A>(_:_:)();

  if (qword_1001983C8 != -1)
  {
    sub_1000184BC(&qword_1001983C8);
  }

  sub_100003A8C(&qword_10019C110);
  v13 = (v2 + v8[6]);
  v15 = v13[1];
  v24 = *v13;
  v14 = v24;
  v25 = v15;
  <- infix<A>(_:_:)();
  v16 = v24;
  v17 = v25;
  sub_1000098F0(v14, v15);
  sub_100009B18(v16, v17);
  if (qword_1001983D0 != -1)
  {
    sub_1000072C4(&qword_1001983D0);
  }

  sub_100003A8C(&qword_10019C128);
  v24 = *(v2 + v8[7]);
  <- infix<A>(_:_:)();
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019E418);
  v24 = *(v2 + v8[8]);
  <- infix<A>(_:_:)();
  v18 = QueryType.insert(_:_:)(v27, inited);
  v20 = v19;
  v22 = v21;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v27);
  memcpy(v26, v28, sizeof(v26));
  sub_10001970C(v26);
  v30.template._countAndFlagsBits = v18;
  v30.template._object = v20;
  v30.bindings._rawValue = v22;
  Connection.run(_:)(v30);

  sub_100004674();
}

void sub_10010AA54()
{
  sub_100004DF0();
  v1 = v0;
  if (qword_1001983B0 != -1)
  {
    sub_100002D58(&qword_1001983B0);
  }

  memcpy(__dst, &unk_10019E338, sizeof(__dst));
  __src[0] = v1;
  if (qword_1001983B8 != -1)
  {
    sub_100008144(&qword_1001983B8);
  }

  v2 = sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_1000038C4(&qword_100198790);
  v3 = sub_100006768();
  Collection<>.contains(_:)(v3, v4, v5, v2, v6, v7);
  sub_1000052EC();
  memcpy(v16, __dst, sizeof(v16));
  v8 = sub_100006768();
  sub_1000120DC(v8, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v19, __src, sizeof(v19));
  memcpy(__src, v19, sizeof(__src));
  QueryType.delete()();
  sub_10000754C();
  v20.template._countAndFlagsBits = sub_100006B18();
  Connection.run(_:)(v20);

  sub_100004674();
}

uint64_t sub_10010ABE4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100003E9C(v7, &qword_1001992F0, &qword_10014E000);
  }

  return 3;
}

uint64_t sub_10010AD0C()
{
  v0 = sub_1000077D8();
  sub_1000098F0(v0, v1);
  return sub_1000077D8();
}

uint64_t sub_10010AD94()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_100198780);
  return ExpressionType.init(_:)(0x4449656C646E7562, 0xE800000000000000, v2, v3);
}

uint64_t sub_10010AE0C()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_100199520);
  return ExpressionType.init(_:)(7107189, 0xE300000000000000, v2, v3);
}

uint64_t sub_10010AE7C()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013EBC(&qword_100199500, &unk_10019AAD0, &unk_100150890, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100157FF0, v0, v1);
}

uint64_t sub_10010AF18()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013EBC(&qword_10019C140, &qword_100199EC8, &unk_10014ED00, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)(0xD000000000000013, 0x8000000100158030, v0, v1);
}

uint64_t sub_10010AFB4()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  v3 = sub_100007C48(&qword_10019C140);
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xEF6E6F6973726556, v2, v3);
}

uint64_t sub_10010B038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v10 = v24;
  v9 = v25;
  if (qword_1001983C0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019E400, *algn_10019E408, a1, a2, &type metadata for String, &protocol witness table for String, &v24);
  v11 = v25;
  if (qword_1001983C8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v12 = v24;
  v23 = v25;
  if (qword_1001983D0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v22 = v24;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v14 = v24;
  if (v11)
  {

    URL.init(fileURLWithPath:)();
    swift_bridgeObjectRelease_n();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for URL();
  sub_1000075C4(v8, v15, 1, v16);
  *a3 = v10;
  a3[1] = v9;
  v17 = type metadata accessor for LNBundleRecord(0);
  sub_10009EDDC(v8, a3 + v17[5]);
  v18 = (a3 + v17[6]);
  v19 = v22;
  v20 = v23;
  *v18 = v12;
  v18[1] = v20;
  *(a3 + v17[7]) = v19;
  *(a3 + v17[8]) = v14;
  return sub_1000075C4(a3, 0, 1, v17);
}

uint64_t type metadata accessor for LNBundleRecord(uint64_t a1)
{
  result = qword_10019C1A0;
  if (!qword_10019C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010B450(uint64_t a1)
{
  sub_100062140(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LNBundleMetadataVersion(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_10010B51C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = &TableBuilder;
  v8 = [a1 action];
  v9 = [v8 parameters];

  sub_10010BC00();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v10;
  v60 = a5;
  v12 = *(a5 + 72);
  v11 = *(a5 + 80);
  v13 = [v6 identifiersByTypeMap];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = v12;
  v66 = v11;
  v15 = 0;
  v16 = sub_10010BC4C(v14, sub_10010BC44, v64);

  v17 = v16[2];
  if (v17 < 2)
  {
    if (!v17)
    {

      if (qword_1001982E8 != -1)
      {
        sub_100002D78(&qword_1001982E8);
      }

      v51 = type metadata accessor for Logger();
      sub_10000347C(v51, qword_10019DFF0);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v67 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_100004C50(v12, v11, &v67);
        _os_log_impl(&_mh_execute_header, v52, v53, "Cannot find parameter of type %s to bind value", v54, 0xCu);
        sub_1000034F8(v55);
      }

      v22 = [v6 action];
      goto LABEL_61;
    }

    v23 = 0;
    v24 = v16 + 8;
    v25 = 1 << *(v16 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v6 = v26 & v16[8];
    v27 = (v25 + 63) >> 6;
    v57 = v27;
    v58 = v16 + 8;
    v59 = v16;
    if (!v6)
    {
LABEL_10:
      while (1)
      {
        v28 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v28 >= v27)
        {

          objc_allocWithZone(LNAction);

          return sub_1000BAA38(a2);
        }

        v6 = v24[v28];
        ++v23;
        if (v6)
        {
          v23 = v28;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    while (1)
    {
LABEL_14:
      v29 = (v16[6] + ((v23 << 10) | (16 * __clz(__rbit64(v6)))));
      v30 = *v29;
      v31 = v29[1];
      swift_bridgeObjectRetain_n();
      v62 = v31;
      v63 = v30;
      sub_10010C45C(&v68, v30, v31);
      v7 = v32;
      v33 = v68;
      v34 = v68 >> 62;
      if (v68 >> 62)
      {
        sub_100008164(v68 & 0xFFFFFFFFFFFFFF8);
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v35 - v7;
      if (v35 < v7)
      {
        goto LABEL_65;
      }

      if (v7 < 0)
      {
        goto LABEL_66;
      }

      if (v34)
      {
        sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v37 < v35)
      {
        goto LABEL_67;
      }

      v38 = v7 - v35;
      if (__OFSUB__(0, v36))
      {
        goto LABEL_68;
      }

      if (v34)
      {
        sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v39 - v36;
      if (__OFADD__(v39, v38))
      {
        goto LABEL_69;
      }

      v61 = v15;
      v41 = v7;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v34)
      {
        goto LABEL_32;
      }

LABEL_33:
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      swift_arrayDestroy();
      if (v36)
      {
        if (v33 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *(v7 + 16);
        }

        v43 = v42 - v35;
        if (__OFSUB__(v42, v35))
        {
          goto LABEL_70;
        }

        v44 = (v7 + 32 + 8 * v35);
        if (v35 != v41 || v7 + 32 + 8 * v41 >= v44 + 8 * v43)
        {
          memmove((v7 + 32 + 8 * v41), v44, 8 * v43);
        }

        if (v33 >> 62)
        {
          v46 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v46 = *(v7 + 16);
        }

        if (__OFADD__(v46, v38))
        {
          goto LABEL_71;
        }

        *(v7 + 16) = v46 - v36;
      }

      v68 = v33;
      v47 = *(v60 + 88);
      objc_allocWithZone(LNProperty);
      v48 = v47;
      v49 = sub_10010BB9C(v63, v62, v47);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v6 &= v6 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v24 = v58;
      v16 = v59;
      v27 = v57;
      v15 = v61;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    if (!v34)
    {
      v7 = v33 & 0xFFFFFFFFFFFFFF8;
      if (v40 <= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_100008164(v33 & 0xFFFFFFFFFFFFFF8);
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_33;
  }

  if (qword_1001982E8 != -1)
  {
LABEL_72:
    sub_100002D78(&qword_1001982E8);
  }

  v18 = type metadata accessor for Logger();
  sub_10000347C(v18, qword_10019DFF0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot support matching of the same parameter type more than once", v21, 2u);
  }

  v22 = [v6 *(v7 + 2984)];
LABEL_61:

  return v22;
}

uint64_t sub_10010BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == a5 && a4 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_10010BB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

unint64_t sub_10010BC00()
{
  result = qword_10019BBA0;
  if (!qword_10019BBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BBA0);
  }

  return result;
}

unint64_t *sub_10010BC4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_10010BF4C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_100047518(0, v8, v9);
  v10 = sub_10010BDD0(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

unint64_t *sub_10010BDD0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_10010C214(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10010C214(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10010BF4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10010BDD0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_10010BFDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10002EB80(&qword_10019C1E8, &unk_100151D18);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_10010C214(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10002EB80(&qword_10019AE50, &qword_10014FF88);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_10010C45C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;

  v8 = sub_10010C708(v7, a2, a3);
  v10 = v8;
  if (v3)
  {
    goto LABEL_43;
  }

  v34 = a2;
  if (v9)
  {
    sub_1000232F4(v7);
LABEL_43:

    return;
  }

  v32 = 0;
  v33 = a1;
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    while (1)
    {
      v12 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 == v12)
      {
        goto LABEL_43;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v13 = *(v7 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v16 == v34 && v18 == a3)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          if (v10 != v11)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v10 >= v23)
              {
                goto LABEL_50;
              }

              if (v11 >= v23)
              {
                goto LABEL_51;
              }

              v24 = *(v7 + 32 + 8 * v11);
              v21 = *(v7 + 32 + 8 * v10);
              v22 = v24;
            }

            v25 = v22;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
            {
              v7 = sub_1000FCD8C();
              v26 = (v7 >> 62) & 1;
            }

            else
            {
              LODWORD(v26) = 0;
            }

            v27 = v7 & 0xFFFFFFFFFFFFFF8;
            v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
            *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v25;

            if ((v7 & 0x8000000000000000) != 0 || v26)
            {
              v7 = sub_1000FCD8C();
              v27 = v7 & 0xFFFFFFFFFFFFFF8;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v11 >= *(v27 + 16))
            {
              goto LABEL_48;
            }

            v29 = v27 + 8 * v11;
            v30 = *(v29 + 32);
            *(v29 + 32) = v21;

            *v33 = v7;
          }

          v31 = __OFADD__(v10++, 1);
          if (v31)
          {
            goto LABEL_47;
          }
        }
      }

      v31 = __OFADD__(v11++, 1);
      if (v31)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

unint64_t sub_10010C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000232F4(a1);
  v18 = result;
  v7 = 0;
  while (1)
  {
    if (v18 == v7)
    {
      v17 = 0;
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v9 = v8;
    v10 = [v8 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == a2 && v13 == a3)
    {

LABEL_17:
      v17 = v7;
LABEL_18:

      return v17;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v7 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 8 * v7 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10010C868(__int128 *a1)
{
  if (qword_1001983E0 != -1)
  {
    sub_100008170(&qword_1001983E0);
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  memcpy(__src, &unk_10019E430, sizeof(__src));
  sub_1000196B0(__dst, v11);
  if (qword_1001983E8 != -1)
  {
    sub_100002D98(&qword_1001983E8);
  }

  v10 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  if (qword_1001983F0 != -1)
  {
    swift_once();
  }

  v13 = a1[1];
  v10 = a1[1];
  sub_1000BABFC(&v13, &v9);
  <- infix<A>(_:_:)();
  sub_10010CC68(&v13);
  if (qword_1001983F8 != -1)
  {
    swift_once();
  }

  *&v10 = *(a1 + 4);
  <- infix<A>(_:_:)();
  v3 = QueryType.insert(_:_:)(v11, inited);
  v5 = v4;
  v7 = v6;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v11);
  memcpy(v15, __src, sizeof(v15));
  sub_10001970C(v15);
  v16.template._countAndFlagsBits = v3;
  v16.template._object = v5;
  v16.bindings._rawValue = v7;
  Connection.run(_:)(v16);
}

uint64_t sub_10010CB58()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10010CBE0()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD00000000000001ELL, 0x8000000100158070, v0, v1);
}

uint64_t sub_10010CC68(uint64_t a1)
{
  v2 = sub_10002EB80(&unk_100199100, &qword_10014E230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010CCD0()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013F04(&qword_10019C140, &qword_100199EC8, &unk_10014ED00);
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100158050, v0, v1);
}

void *sub_10010CD68()
{
  Statement.makeIterator()();
  v0 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = Statement.failableNext()();
    if (v2)
    {
      break;
    }

    if (!v1)
    {

      return v0;
    }

    if (!*(v1 + 16))
    {
      __break(1u);
      break;
    }

    sub_10001B618(v1 + 32, v9);
    if (v10)
    {
      sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10010E64C(v9);
    }

    v11 = 0;
    v12 = 0;
LABEL_10:

    v3 = v12;
    if (v12)
    {
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100013A60();
        v0 = v6;
      }

      v4 = v0[2];
      if (v4 >= v0[3] >> 1)
      {
        sub_100013A60();
        v0 = v7;
      }

      v0[2] = v4 + 1;
      v5 = &v0[2 * v4];
      v5[4] = v13;
      v5[5] = v3;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_10010CF04(uint64_t a1, uint64_t a2)
{
  v2 = Connection.handle.getter(a1, a2);
  v3 = sqlite3_extended_result_codes(v2, 1);
  v7 = 1;
  v5 = Connection.handle.getter(v3, v4);
  sqlite3_file_control(v5, 0, 10, &v7);
  v6._object = 0x8000000100158900;
  v6._countAndFlagsBits = 0xD000000000000018;
  Connection.execute(_:)(v6);
}

void sub_10010CFA0()
{
  Connection.run(_:_:)();
  v0 = sub_10010CD68();

  v1 = 0;
  v2 = v0[2];
LABEL_2:
  for (i = &v0[2 * v1 + 5]; ; i += 2)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= v0[2])
    {
      break;
    }

    v4 = *(i - 1);
    v5 = *i;
    v6 = v4 == 27503 && v5 == 0xE200000000000000;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100011438(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        sub_100011438(v7 > 1, v8 + 1, 1);
        v9 = v8 + 1;
      }

      ++v1;
      _swiftEmptyArrayStorage[2] = v9;
      v10 = &_swiftEmptyArrayStorage[2 * v8];
      v10[4] = v4;
      v10[5] = v5;
      goto LABEL_2;
    }

    ++v1;
  }

  __break(1u);
}

void sub_10010D13C()
{
  *&v224 = 0;
  *(&v224 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(4231);
  sub_1000052FC();
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x6769666E6F63;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  sub_100011A38();
  v2._countAndFlagsBits = sub_10000892C();
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 7955819;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  sub_100006B28();
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10001AA40();
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  sub_1000052FC();
  String.append(_:)(v6);
  v7._countAndFlagsBits = sub_100013D04();
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_10000892C();
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x4449656C646E7562;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  sub_100006B28();
  String.append(_:)(v10);
  v11._countAndFlagsBits = 7107189;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v12);
  sub_1000052FC();
  String.append(_:)(v13);
  sub_1000052FC();
  String.append(_:)(v14);
  sub_1000052FC();
  String.append(_:)(v15);
  sub_1000052FC();
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_1000118F8();
  String.append(_:)(v17);
  sub_1000052FC();
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_100012ADC();
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_10000892C();
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  sub_100008190();
  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x8000000100158180;
  String.append(_:)(v21);
  v22 = sub_1000111A8();
  sub_10001E160(v22);
  sub_1000052FC();
  String.append(_:)(v23);
  v24._countAndFlagsBits = sub_1000118F8();
  v24._object = 0xE800000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  v25._object = 0x8000000100158200;
  String.append(_:)(v25);
  sub_100008190();
  sub_100004FF8();
  v26 = sub_1000111A8();
  sub_10001E160(v26);
  sub_10010E6B4();
  String.append(_:)(v27);
  sub_100008190();
  sub_10001AB60();
  sub_100009A5C();
  String.append(_:)(v28);
  v29._countAndFlagsBits = sub_100013D04();
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  sub_1000038F0();
  v30 = sub_100002DB8();
  sub_1000048C4(v30);
  sub_1000052FC();
  String.append(_:)(v31);
  v32._countAndFlagsBits = sub_100012ADC();
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  sub_1000038F0();
  sub_100008190();
  sub_100004FF8();
  v33 = sub_1000111A8();
  sub_10001E160(v33);
  sub_1000052FC();
  String.append(_:)(v34);
  sub_1000052FC();
  String.append(_:)(v35);
  v36._countAndFlagsBits = sub_10000892C();
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  sub_100008190();
  sub_100003C6C();
  v37._countAndFlagsBits = sub_1000118F8();
  v37._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v37);
  sub_100003C6C();
  sub_1000068D8(v38, 0x80000001001564D0);
  sub_1000052FC();
  String.append(_:)(v39);
  sub_100008190();
  sub_100004FF8();
  v40._countAndFlagsBits = sub_1000118F8();
  v40._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v40);
  sub_10010E6B4();
  String.append(_:)(v41);
  sub_100008190();
  sub_10000EED8(0x4552454645522029);
  v42._countAndFlagsBits = 0x73656C646E7562;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  sub_1000038F0();
  sub_1000187A0();
  sub_1000052FC();
  String.append(_:)(v43);
  v44._countAndFlagsBits = sub_10001279C();
  v44._object = 0xE800000000000000;
  String.append(_:)(v44);
  sub_1000184DC();
  sub_100008190();
  sub_100003C6C();
  v45._countAndFlagsBits = sub_1000118F8();
  v45._object = 0xE800000000000000;
  String.append(_:)(v45);
  sub_1000052FC();
  String.append(_:)(v46);
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v47);
  sub_100008190();
  sub_100004FF8();
  v48._countAndFlagsBits = sub_1000118F8();
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  sub_100024778(0xD000000000000013);
  sub_100008190();
  v49._countAndFlagsBits = sub_100012ADC();
  v49._object = 0xEE006C6F636F746FLL;
  String.append(_:)(v49);
  v50._countAndFlagsBits = sub_1000135C0();
  v50._object = 0xE700000000000000;
  String.append(_:)(v50);
  sub_1000038F0();
  v51._countAndFlagsBits = sub_100013D04();
  v51._object = 0xE800000000000000;
  String.append(_:)(v51);
  sub_1000052FC();
  String.append(_:)(v52);
  v53._countAndFlagsBits = sub_10001279C();
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  sub_1000038F0();
  sub_100008190();
  sub_100004FF8();
  v54._countAndFlagsBits = sub_1000118F8();
  v54._object = 0xE800000000000000;
  String.append(_:)(v54);
  sub_1000078E8();
  String.append(_:)(v55);
  v56._countAndFlagsBits = sub_1000135C0();
  v56._object = 0xE700000000000000;
  String.append(_:)(v56);
  sub_1000184DC();
  sub_100008190();
  sub_100003C6C();
  sub_100007C74();
  sub_100003C6C();
  v57._countAndFlagsBits = sub_1000111A8();
  v57._object = 0xE900000000000065;
  String.append(_:)(v57);
  sub_1000052FC();
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x6564497972657571;
  v59._object = 0xEF7265696669746ELL;
  String.append(_:)(v59);
  sub_100006B28();
  String.append(_:)(v60);
  v61._countAndFlagsBits = sub_10001269C();
  v61._object = 0xEE00657079546575;
  String.append(_:)(v61);
  sub_1000052FC();
  String.append(_:)(v62);
  v63._countAndFlagsBits = sub_1000120F4();
  String.append(_:)(v63);
  sub_1000052FC();
  String.append(_:)(v64);
  sub_100008190();
  sub_100004FF8();
  v65._countAndFlagsBits = sub_1000111A8();
  v65._object = 0xE900000000000065;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0xD000000000000013;
  v66._object = 0x8000000100158220;
  String.append(_:)(v66);
  sub_100008190();
  sub_10001AB60();
  sub_100009A5C();
  String.append(_:)(v67);
  v68 = sub_100002DB8();
  sub_10000C93C(v68);
  sub_1000038F0();
  v69 = sub_100002DB8();
  sub_1000048C4(v69);
  sub_1000052FC();
  String.append(_:)(v70);
  v71._countAndFlagsBits = sub_1000135C0();
  v71._object = 0xE700000000000000;
  String.append(_:)(v71);
  sub_1000038F0();
  sub_100008190();
  sub_100004FF8();
  v72._countAndFlagsBits = sub_1000111A8();
  v72._object = 0xE900000000000065;
  String.append(_:)(v72);
  sub_1000052FC();
  String.append(_:)(v73);
  v74._countAndFlagsBits = sub_1000135C0();
  v74._object = 0xE700000000000000;
  String.append(_:)(v74);
  sub_1000038F0();
  v75._countAndFlagsBits = sub_10001269C();
  v75._object = 0xEE00657079546575;
  String.append(_:)(v75);
  sub_1000052FC();
  String.append(_:)(v76);
  v77._countAndFlagsBits = sub_1000135C0();
  v77._object = 0xE700000000000000;
  String.append(_:)(v77);
  sub_1000038F0();
  v78._countAndFlagsBits = sub_1000120F4();
  String.append(_:)(v78);
  sub_1000078E8();
  String.append(_:)(v79);
  v80._countAndFlagsBits = 0x736D756E65;
  v80._object = 0xE500000000000000;
  String.append(_:)(v80);
  v81._countAndFlagsBits = 0x202020200A2820;
  v81._object = 0xE700000000000000;
  String.append(_:)(v81);
  sub_100008190();
  sub_100003C6C();
  sub_10001E160(0x696669746E656469);
  sub_100006B28();
  String.append(_:)(v82);
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v83);
  sub_100008190();
  sub_100004FF8();
  v84 = sub_10000892C();
  sub_10001E160(v84);
  v85._countAndFlagsBits = 0xD000000000000013;
  v85._object = 0x8000000100158220;
  String.append(_:)(v85);
  sub_100008190();
  v86 = sub_100019D74();
  sub_1000248CC(v86);
  v87._countAndFlagsBits = 0x73656C646E7562;
  v87._object = 0xE700000000000000;
  String.append(_:)(v87);
  sub_1000038F0();
  v88._countAndFlagsBits = 0x4449656C646E7562;
  v88._object = 0xE800000000000000;
  String.append(_:)(v88);
  sub_100024778(0xD000000000000025);
  sub_1000052FC();
  String.append(_:)(v89);
  v90._countAndFlagsBits = sub_1000135C0();
  v90._object = 0xE700000000000000;
  String.append(_:)(v90);
  sub_100008190();
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v91);
  v92._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v92);
  sub_1000052FC();
  String.append(_:)(v93);
  sub_1000052FC();
  String.append(_:)(v94);
  sub_100008190();
  v95._countAndFlagsBits = sub_10000892C();
  v95._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v95);
  v96._countAndFlagsBits = sub_100012ADC();
  v96._object = 0xE700000000000000;
  String.append(_:)(v96);
  sub_1000038F0();
  v97._countAndFlagsBits = sub_1000118F8();
  v97._object = 0xE800000000000000;
  String.append(_:)(v97);
  sub_10000756C();
  v98._countAndFlagsBits = 0x74726F6853707061;
  v98._object = 0xEC00000073747563;
  String.append(_:)(v98);
  sub_100011A38();
  v99._countAndFlagsBits = 0x696669746E656469;
  v99._object = 0xE700000000000000;
  String.append(_:)(v99);
  sub_100008190();
  sub_100003C6C();
  sub_100007C74();
  sub_1000052FC();
  String.append(_:)(v100);
  sub_100008190();
  v101._countAndFlagsBits = sub_1000135C0();
  v101._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v101);
  v102._countAndFlagsBits = sub_100012ADC();
  v102._object = 0xE700000000000000;
  String.append(_:)(v102);
  sub_1000038F0();
  v103._countAndFlagsBits = sub_1000118F8();
  v103._object = 0xE800000000000000;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0xD000000000000025;
  v104._object = 0x80000001001582D0;
  String.append(_:)(v104);
  sub_1000052FC();
  String.append(_:)(v105);
  v106._countAndFlagsBits = sub_10000892C();
  v106._object = 0xE700000000000000;
  String.append(_:)(v106);
  sub_1000052FC();
  String.append(_:)(v107);
  sub_100003C6C();
  sub_100008190();
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v108);
  sub_100003C6C();
  sub_10001A8BC();
  v109._countAndFlagsBits = sub_1000111A8();
  String.append(_:)(v109);
  sub_100003C6C();
  sub_1000068D8(v110, 0x8000000100155350);
  sub_100003C6C();
  v111._countAndFlagsBits = sub_1000111A8();
  v111._object = 0xE800000000000000;
  String.append(_:)(v111);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v112);
  v113._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v113);
  sub_1000052FC();
  String.append(_:)(v114);
  sub_1000052FC();
  String.append(_:)(v115);
  sub_100008190();
  v116._countAndFlagsBits = sub_1000135C0();
  v116._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v116);
  v117._countAndFlagsBits = 0x73656C646E7562;
  v117._object = 0xE700000000000000;
  String.append(_:)(v117);
  sub_1000038F0();
  v118 = sub_100002DB8();
  sub_1000048C4(v118);
  sub_100006B28();
  String.append(_:)(v119);
  sub_1000068D8(v120, 0x8000000100154C00);
  v121._countAndFlagsBits = sub_10000892C();
  v121._object = 0xE700000000000000;
  String.append(_:)(v121);
  sub_100008190();
  sub_100003C6C();
  sub_1000068D8(v122, 0x8000000100154C20);
  sub_100003C6C();
  v123._countAndFlagsBits = 0x446465646F636E65;
  v123._object = 0xEB00000000617461;
  String.append(_:)(v123);
  sub_1000052FC();
  String.append(_:)(v124);
  sub_100008190();
  sub_100004FF8();
  sub_1000068D8(v125, 0x8000000100154C20);
  sub_1000052FC();
  String.append(_:)(v126);
  sub_100008190();
  v127._countAndFlagsBits = sub_1000135C0();
  v127._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v127);
  v128._countAndFlagsBits = sub_100013D04();
  v128._object = 0xE700000000000000;
  String.append(_:)(v128);
  sub_1000038F0();
  sub_100002738();
  v129._countAndFlagsBits = 0x444969746E656469;
  v129._object = 0xE800000000000000;
  String.append(_:)(v129);
  v130._countAndFlagsBits = 0xD000000000000025;
  v130._object = 0x80000001001582D0;
  String.append(_:)(v130);
  sub_1000068D8(v131, 0x8000000100155A80);
  v132._countAndFlagsBits = sub_10000892C();
  v132._object = 0xE700000000000000;
  String.append(_:)(v132);
  sub_100008190();
  sub_100003C6C();
  sub_1000068D8(v133, 0x80000001001564D0);
  sub_100003C6C();
  v134._countAndFlagsBits = sub_10001AA40();
  v134._object = 0xE500000000000000;
  String.append(_:)(v134);
  sub_1000052FC();
  String.append(_:)(v135);
  v136._countAndFlagsBits = 0x746169636F737361;
  v136._object = 0xEE00617461446465;
  String.append(_:)(v136);
  sub_1000052FC();
  String.append(_:)(v137);
  sub_100008190();
  sub_100004FF8();
  sub_1000068D8(v138, 0x80000001001564D0);
  sub_1000052FC();
  String.append(_:)(v139);
  sub_100008190();
  v140._countAndFlagsBits = 0x4552454645522029;
  v140._object = " TEXT NOT NULL,\n    UNIQUE(";
  String.append(_:)(v140);
  v141 = sub_100002DB8();
  sub_10000C93C(v141);
  sub_1000038F0();
  v142._countAndFlagsBits = sub_1000135C0();
  v142._object = 0xE800000000000000;
  String.append(_:)(v142);
  sub_10000756C();
  v143._countAndFlagsBits = 0x746E6176656C6572;
  v143._object = 0xEF73746E65746E49;
  String.append(_:)(v143);
  v144._countAndFlagsBits = 0x696669746E656469;
  v144._object = 0xE700000000000000;
  String.append(_:)(v144);
  sub_100008190();
  sub_100003C6C();
  sub_1000068D8(v145, 0x80000001001564D0);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v146);
  sub_1000052FC();
  String.append(_:)(v147);
  v148._object = 0xEA0000000000646ELL;
  v148._countAndFlagsBits = 0x694B746567646977;
  String.append(_:)(v148);
  v149._countAndFlagsBits = sub_1000072E4();
  String.append(_:)(v149);
  v150._countAndFlagsBits = 0x436465646F636E65;
  v150._object = 0xEE00747865746E6FLL;
  String.append(_:)(v150);
  sub_1000052FC();
  String.append(_:)(v151);
  sub_100008190();
  sub_100004FF8();
  sub_1000068D8(v152, 0x80000001001564D0);
  v153 = sub_100013D04();
  sub_10000EED8(v153);
  sub_10000C93C(0x6E6F69746361);
  sub_1000038F0();
  sub_100008190();
  sub_100004FF8();
  sub_10001E160(0x696669746E656469);
  sub_10000756C();
  sub_1000068D8(v154, 0x8000000100155AA0);
  v155._countAndFlagsBits = sub_1000118F8();
  v155._object = 0xE700000000000000;
  String.append(_:)(v155);
  v156._countAndFlagsBits = sub_1000118F8();
  v156._object = 0xEE00726569666974;
  String.append(_:)(v156);
  sub_100003C6C();
  sub_100008190();
  sub_100003C6C();
  sub_10001A8BC();
  String.append(_:)(v157);
  sub_100003C6C();
  sub_1000068D8(v158, 0x8000000100155350);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v159);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v160);
  sub_100003C6C();
  v161._countAndFlagsBits = sub_10001AA40();
  v161._object = 0xE500000000000000;
  String.append(_:)(v161);
  sub_1000052FC();
  String.append(_:)(v162);
  v163._countAndFlagsBits = sub_1000118F8();
  v163._object = 0xEE00726569666974;
  String.append(_:)(v163);
  v164._countAndFlagsBits = 8236;
  v164._object = 0xE200000000000000;
  String.append(_:)(v164);
  sub_100008190();
  sub_1000052FC();
  String.append(_:)(v165);
  sub_100008190();
  v166._countAndFlagsBits = sub_10001AB60();
  v166._object = 0x696669746E656469;
  String.append(_:)(v166);
  v167 = sub_100002DB8();
  sub_10000C93C(v167);
  sub_1000038F0();
  v168 = sub_100002DB8();
  sub_1000048C4(v168);
  sub_10000756C();
  sub_100006B28();
  String.append(_:)(v169);
  v170._countAndFlagsBits = sub_100012ADC();
  v170._object = 0xE700000000000000;
  String.append(_:)(v170);
  sub_1000068D8(v171, 0x8000000100155560);
  sub_100003C6C();
  v172._countAndFlagsBits = 0x6D796E6F6E7973;
  v172._object = 0xE700000000000000;
  String.append(_:)(v172);
  sub_100003C6C();
  sub_100008190();
  sub_1000078E8();
  String.append(_:)(v173);
  sub_1000068D8(v174, 0x8000000100155560);
  sub_100004FF8();
  sub_100008190();
  sub_100011B40();
  sub_1000068D8(v175, 0x8000000100155AA0);
  sub_1000038F0();
  v176._countAndFlagsBits = 0x6E6564496E617073;
  v176._object = 0xEE00726569666974;
  String.append(_:)(v176);
  sub_100004FF8();
  sub_100008190();
  sub_1000052FC();
  String.append(_:)(v177);
  sub_100006B28();
  String.append(_:)(v178);
  sub_1000038F0();
  sub_1000068D8(v179, 0x8000000100155560);
  v180._countAndFlagsBits = 8236;
  v180._object = 0xE200000000000000;
  String.append(_:)(v180);
  sub_100008190();
  sub_1000052FC();
  String.append(_:)(v181);
  v182._countAndFlagsBits = 0x50656C706D617865;
  v182._object = 0xEE00736573617268;
  String.append(_:)(v182);
  v183._countAndFlagsBits = sub_1000111A8();
  v183._object = 0xE700000000000000;
  String.append(_:)(v183);
  sub_100008190();
  sub_100003C6C();
  sub_1000068D8(v184, 0x8000000100155560);
  sub_1000052FC();
  String.append(_:)(v185);
  v186._countAndFlagsBits = 1684957547;
  v186._object = 0xE400000000000000;
  String.append(_:)(v186);
  sub_1000052FC();
  String.append(_:)(v187);
  v188._countAndFlagsBits = 0x7470697263736564;
  v188._object = 0xEB000000006E6F69;
  String.append(_:)(v188);
  sub_1000078E8();
  String.append(_:)(v189);
  sub_100008190();
  sub_100011B40();
  sub_100002738();
  v190._countAndFlagsBits = "intentEnablement" & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v190._object = 0xE700000000000000;
  String.append(_:)(v190);
  sub_1000038F0();
  sub_1000187A0();
  sub_1000052FC();
  String.append(_:)(v191);
  sub_100006B28();
  String.append(_:)(v192);
  v193._countAndFlagsBits = sub_1000111A8();
  v193._object = 0xE700000000000000;
  String.append(_:)(v193);
  sub_100008190();
  sub_1000116DC(0xD000000000000014);
  sub_100024778(0xD000000000000019);
  sub_100003C6C();
  sub_1000052FC();
  String.append(_:)(v194);
  v195._countAndFlagsBits = 0xD000000000000020;
  v195._object = 0x8000000100158580;
  String.append(_:)(v195);
  sub_100008190();
  sub_100019D74();
  sub_100009A5C();
  String.append(_:)(v196);
  v197._countAndFlagsBits = sub_1000135C0();
  v197._object = 0xE700000000000000;
  String.append(_:)(v197);
  sub_1000038F0();
  v198._countAndFlagsBits = sub_100013D04();
  v198._object = 0xE800000000000000;
  String.append(_:)(v198);
  sub_1000052FC();
  String.append(_:)(v199);
  sub_100006B28();
  String.append(_:)(v200);
  sub_1000038F0();
  sub_100024778(0xD000000000000019);
  sub_1000052FC();
  String.append(_:)(v201);
  v202._countAndFlagsBits = 0x6E61747369737361;
  v202._object = 0xEF746E65746E4974;
  String.append(_:)(v202);
  v203._countAndFlagsBits = 0x202020200A2820;
  v203._object = 0xE700000000000000;
  String.append(_:)(v203);
  sub_100008190();
  sub_1000078E8();
  String.append(_:)(v204);
  sub_100007C74();
  sub_1000116DC(0xD000000000000020);
  sub_100008190();
  sub_1000248CC(" INT NOT NULL,\n    FOREIGN KEY(");
  v205._countAndFlagsBits = sub_1000135C0();
  v205._object = 0xE700000000000000;
  String.append(_:)(v205);
  sub_1000038F0();
  v206._countAndFlagsBits = 0x4449656C646E7562;
  v206._object = 0xE800000000000000;
  String.append(_:)(v206);
  sub_10010E6B4();
  String.append(_:)(v207);
  sub_1000052FC();
  String.append(_:)(v208);
  v209._countAndFlagsBits = sub_1000118F8();
  v209._object = 0xE700000000000000;
  String.append(_:)(v209);
  sub_100008190();
  sub_1000078E8();
  String.append(_:)(v210);
  v211._countAndFlagsBits = 0x657669746167656ELL;
  v211._object = 0xEF73657361726850;
  String.append(_:)(v211);
  sub_1000116DC(0xD000000000000020);
  sub_100008190();
  v212._countAndFlagsBits = sub_1000111A8();
  v212._object = "    PRIMARY KEY (";
  String.append(_:)(v212);
  v213._countAndFlagsBits = sub_100002DB8() & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  v213._object = 0xE700000000000000;
  String.append(_:)(v213);
  sub_1000038F0();
  v214._countAndFlagsBits = sub_10000892C();
  v214._object = 0xE800000000000000;
  String.append(_:)(v214);
  sub_10010E6B4();
  String.append(_:)(v215);
  sub_1000052FC();
  String.append(_:)(v216);
  sub_1000184DC();
  sub_100008190();
  sub_1000078E8();
  String.append(_:)(v217);
  sub_100007C74();
  sub_1000116DC(0xD000000000000020);
  sub_100008190();
  v218._countAndFlagsBits = sub_1000111A8();
  v218._object = "    PRIMARY KEY (";
  String.append(_:)(v218);
  v219._countAndFlagsBits = sub_1000118F8();
  v219._object = 0xE700000000000000;
  String.append(_:)(v219);
  sub_1000038F0();
  v220._countAndFlagsBits = sub_10000892C();
  v220._object = 0xE800000000000000;
  String.append(_:)(v220);
  sub_1000052FC();
  String.append(_:)(v221);
  v222._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v222);

  v223._countAndFlagsBits = 59;
  v223._object = 0xE100000000000000;
  String.append(_:)(v223);
  xmmword_10019E528 = v224;
}

uint64_t sub_10010E64C(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010E6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100198408 != -1)
  {
    sub_1000081B0(&qword_100198408);
  }

  memcpy(v20, &unk_10019C1F0, sizeof(v20));
  if (qword_100198410 != -1)
  {
    sub_100002DCC(&qword_100198410);
  }

  sub_100003A8C(&qword_10019C2A0);
  v19[0] = a1;
  v6 = == infix<A>(_:_:)();
  v8 = v7;
  v10 = v9;
  memcpy(v18, v20, sizeof(v18));
  QueryType.filter(_:)(v6, v8, v10, &type metadata for Table, &protocol witness table for Table, v11, v12, v13, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v18[21], v19[0], a2, v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14]);

  memcpy(v21, v19, sizeof(v21));
  v19[3] = &type metadata for Table;
  v19[4] = &protocol witness table for Table;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), v21, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v19);
  v14 = sub_1000034F8(v19);
  if (!v3)
  {
    __chkstk_darwin(v14);

    RowIterator.compactMap<A>(_:)();
    v8 = v16;
  }

  return v8;
}

uint64_t sub_10010E91C(uint64_t a1)
{
  if (qword_100198408 != -1)
  {
    sub_1000081B0(&qword_100198408);
  }

  memcpy(__dst, &unk_10019C1F0, sizeof(__dst));
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014ECA0;
  if (qword_100198410 != -1)
  {
    sub_100002DCC(&qword_100198410);
  }

  sub_100003A8C(&qword_10019C2A0);
  v9[0] = *a1;
  <- infix<A>(_:_:)();
  if (qword_100198418 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019C2B8);
  v9[0] = *(a1 + 16);
  <- infix<A>(_:_:)();
  if (qword_100198420 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019C2D0);
  *&v9[0] = *(a1 + 32);
  <- infix<A>(_:_:)();
  if (qword_100198428 != -1)
  {
    swift_once();
  }

  v3 = *(a1 + 48);
  if (v3 >> 60 != 15)
  {
    v4 = *(a1 + 40);
    sub_1000098F0(v4, v3);
    sub_10010F114(v4, v3);
  }

  <- infix<A>(_:_:)();

  memcpy(v9, __dst, sizeof(v9));
  v11 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
  countAndFlagsBits = v11.template._countAndFlagsBits;
  object = v11.template._object;
  rawValue = v11.bindings._rawValue;
  swift_setDeallocating();
  sub_1000B3030();
  v12.template._countAndFlagsBits = countAndFlagsBits;
  v12.template._object = object;
  v12.bindings._rawValue = rawValue;
  Connection.run(_:)(v12);
}

uint64_t sub_10010EC5C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10010ECE4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

uint64_t sub_10010ED6C()
{
  v0 = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v1 = sub_100013F04(&qword_10019C140, &qword_100199EC8, &unk_10014ED00);
  return ExpressionType.init(_:)(0x65756C6176, 0xE500000000000000, v0, v1);
}

uint64_t sub_10010EDEC()
{
  v0 = sub_10002EB80(&qword_10019C300, &qword_100151D80);
  v1 = sub_100013F04(&qword_10019C308, &qword_10019C300, &qword_100151D80);
  return ExpressionType.init(_:)(0x746169636F737361, 0xEE00617461446465, v0, v1);
}

uint64_t sub_10010EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_100198410 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v7 = v13;
  v6 = v14;
  if (qword_100198418 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v9 = v13;
  v8 = v14;
  if (qword_100198420 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v10 = v13;
  if (qword_100198428 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019C2E8, unk_10019C2F0, a1, a2, &type metadata for Blob, &protocol witness table for Blob, &v13);
  result = v13;
  if (v13)
  {
    result = sub_1000F4E4C(v13);
  }

  else
  {
    v12 = 0xF000000000000000;
  }

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v10;
  a3[5] = result;
  a3[6] = v12;
  return result;
}

double sub_10010F0C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010EE7C(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v4;
  result = *&v7;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  return result;
}

void sub_10010F114(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_10000A7A4(v8, 0);
      v11 = Data._copyContents(initializing:)();
      sub_100009B18(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_100009B18(a1, a2);
      }

      return;
  }
}

double sub_10010F2A0@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v6);
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

uint64_t sub_10010F2F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10010F338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10010F394(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10010F3B4, 0, 0);
}

uint64_t sub_10010F3B4()
{
  v1 = *(v0 + 24);

  sub_10010F4A8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010F440(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    *(a2 + 16) = v3;
    swift_errorRetain();
  }

  return result;
}

void sub_10010F4A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  aBlock = v2;
  v17 = v1;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v4);

  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  v5 = sub_10010F8C4(aBlock, v17, 0);
  v6 = LNAppNotificationEventListenerXPCInterface();
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v20 = sub_1000B58F0;
  v21 = v7;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000A10D0;
  v19 = &unk_100190330;
  v9 = _Block_copy(&aBlock);

  v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (*v8)
  {
    swift_willThrow();
    swift_errorRetain();

    sub_1000034F8(v22);

    return;
  }

  sub_100004D14(v22, &aBlock);
  sub_10002EB80(&qword_10019C3C0, &qword_100151EA8);
  if (swift_dynamicCast())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v20 = sub_10010F9F0;
    v21 = v11;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10002FFF8;
    v19 = &unk_100190358;
    v13 = _Block_copy(&aBlock);

    [v15 sendAppNotificationEvents:isa reply:v13];
    _Block_release(v13);

    swift_beginAccess();
    if (*(v11 + 16))
    {
      swift_willThrow();
      swift_errorRetain();

      sub_1000034F8(v22);

      swift_unknownObjectRelease();

      return;
    }

    [v5 invalidate];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10010F99C();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  sub_1000034F8(v22);
}

id sub_10010F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_10010F940()
{

  return _swift_deallocClassInstance(v0);
}

unint64_t sub_10010F99C()
{
  result = qword_10019C3C8;
  if (!qword_10019C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C3C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppNotificationEventListenerClient.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010FAD8()
{
  result = qword_10019C3D0[0];
  if (!qword_10019C3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10019C3D0);
  }

  return result;
}

id sub_10010FB60()
{
  result = getLNLogCategoryExecution();
  if (result)
  {
    qword_10019E550 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010FCF0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  v15 = type metadata accessor for OSSignposter();
  sub_100037CD8(v15, a2);
  sub_10000347C(v15, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v16 = sub_10000347C(v8, a4);
  v17 = *(v9 + 16);
  v17(v14, v16, v8);
  v17(v11, v14, v8);
  OSSignposter.init(logger:)();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10010FE80(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id *sub_10010FF7C()
{
  v1 = qword_10019E588;
  type metadata accessor for Logger();
  sub_100002978();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 16);
  type metadata accessor for Optional();
  sub_100002978();
  (*(v4 + 8))(v0 + v3);

  sub_1001100F4(v0 + *(*v0 + 18) + 8);
  return v0;
}

uint64_t sub_100110084()
{
  sub_10010FF7C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_1001100F4(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_10019C468, &qword_100152028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10011015C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100110178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1001101B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100110218(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == *(a2 + 32) ? (v6 = a1[5] == *(a2 + 40)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100045314(a1[6], *(a2 + 48)) & 1) != 0 && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)))
  {
    v7 = *(a1 + 57) ^ *(a2 + 57) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001102E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Schema.RuntimeError(0);
  __chkstk_darwin(v4);
  sub_100002958();
  v7 = v6 - v5;
  v8 = type metadata accessor for MetadataError();
  sub_100002944();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002958();
  v14 = v13 - v12;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    (*(v10 + 32))(a2, v14, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      sub_10011058C(v7, a2);
    }

    else
    {

      swift_errorRetain();
      if (!swift_dynamicCast())
      {

        *a2 = a1;
        return swift_storeEnumTagMultiPayload();
      }

      sub_10002EC1C();
      v16 = swift_allocError();
      *v17 = a1;
      *(v17 + 8) = v18;
      *(v17 + 16) = v19;
      *(v17 + 24) = v20;

      *a2 = v16;
      swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t type metadata accessor for Schema.RuntimeError(uint64_t a1)
{
  result = qword_10019C4E0;
  if (!qword_10019C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011058C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schema.RuntimeError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001105F0(uint64_t a1)
{
  result = type metadata accessor for MetadataError();
  if (v2 <= 0x3F)
  {
    result = sub_1000FCA6C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100110678()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataError();
  sub_100002944();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002958();
  v8 = v7 - v6;
  v9 = type metadata accessor for Schema.RuntimeError(0);
  __chkstk_darwin(v9);
  sub_100002958();
  v12 = (v11 - v10);
  sub_100110930(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v4 + 32))(v8, v12, v2);
      v25 = MetadataError.errorDescription.getter();
      (*(v4 + 8))(v8, v2);
      return v25;
    case 2u:
      sub_100007304();
      _StringGuts.grow(_:)(28);

      sub_1000081D8();
      goto LABEL_6;
    case 3u:
      sub_100007304();
      _StringGuts.grow(_:)(40);

      sub_1000081D8();
      v22 = v23 + 12;
LABEL_6:
      v27 = v22;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v24._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v24);

      return v27;
    case 4u:
      v17 = *v12;
      v18 = v12[1];
      sub_100007304();
      _StringGuts.grow(_:)(55);
      v19._countAndFlagsBits = 0x20656C646E7542;
      v19._object = 0xE700000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v17;
      v20._object = v18;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD00000000000002ELL;
      v21._object = 0x8000000100158A80;
      String.append(_:)(v21);
      return v27;
    default:
      v13 = *v12;
      v14 = v12[1];
      sub_100007304();
      _StringGuts.grow(_:)(31);

      sub_1000081D8();
      v27 = v15 + 3;
      v16._countAndFlagsBits = v13;
      v16._object = v14;
      String.append(_:)(v16);

      return v27;
  }
}

uint64_t sub_100110930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Schema.RuntimeError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100110994()
{
  sub_100004DF0();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v7 - 8);
  v36 = &v32 - v8;
  if (qword_100198450 != -1)
  {
    sub_100007FFC(&qword_100198450);
  }

  memcpy(v44, &unk_10019C518, sizeof(v44));
  if (qword_100198458 != -1)
  {
    sub_100002DEC();
    swift_once();
  }

  v9 = sub_100003A8C(&qword_10019C5C8);
  v41[0] = v6;
  v41[1] = v4;
  v38 = v10;
  v39 = v9;
  v37 = v11;
  v12 = == infix<A>(_:_:)();
  v14 = v13;
  v16 = v15;
  memcpy(v40, v44, sizeof(v40));
  QueryType.filter(_:)(v12, v14, v16, &type metadata for Table, &protocol witness table for Table, v17, v18, v19, v32, v33, v34, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7]);

  memcpy(v47, v41, sizeof(v47));
  v45 = v42;
  v46 = v43;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10014CE90;
  if (qword_100198460 != -1)
  {
    sub_100007314(&qword_100198460);
  }

  v40[0] = qword_10019C5E0;
  *&v40[1] = *algn_10019C5E8;
  v21 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v22 = sub_100056DD4();
  ExpressionType.asc.getter(v21, v22, (v20 + 32));

  v41[3] = &type metadata for Table;
  v41[4] = &protocol witness table for Table;
  sub_100003A98();
  v23 = swift_allocObject();
  v41[0] = v23;
  memcpy((v23 + 16), v47, 0x88uLL);
  *(v23 + 152) = v20;
  v24 = v46;
  *(v23 + 160) = v45;
  *(v23 + 176) = v24;
  Connection.prepareRowIterator(_:)(v41);
  sub_1000034F8(v41);
  if (!v0)
  {
    LOBYTE(v40[0]) = 0;
    while (1)
    {
      v25 = Statement.failableNext()();
      if (v26)
      {

        goto LABEL_17;
      }

      if (!v25)
      {
        goto LABEL_17;
      }

      if (v40[0])
      {
        break;
      }

      v27 = objc_autoreleasePoolPush();
      Row.get<A>(_:)();
      v28 = v41[1];
      if (qword_100198468 != -1)
      {
        sub_100007C9C();
        swift_once();
      }

      sub_100003A8C(&qword_10019C5F8);
      Row.get<A>(_:)();
      v33 = v28;

      sub_10011213C();
      v29 = v36;
      v30 = type metadata accessor for URL();
      sub_1000075C4(v29, 1, 1, v30);
      v31 = static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v29);

      v34(v31, v40);

      objc_autoreleasePoolPop(v27);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_100110E84()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v8 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v12 = v8;
    v68 = v10;
    v69 = v11;
    v13 = v9;
    v67 = v7;
    if (qword_100198450 != -1)
    {
      sub_100007FFC(&qword_100198450);
    }

    memcpy(v72, &unk_10019C518, sizeof(v72));
    Table.init(jsonEach:key:)();
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v77, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v71);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v12;
    v71[1] = v13;
    v14 = == infix<A>(_:_:)();
    v16 = v15;
    v18 = v17;

    memcpy(v70, v73, sizeof(v70));
    QueryType.filter(_:)(v14, v16, v18, &type metadata for Table, &protocol witness table for Table, v19, v20, v21, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v74, v73, sizeof(v74));
    sub_10001970C(v74);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v73[0] = v68;
    v73[1] = v69;
    v22 = == infix<A>(_:_:)();
    v24 = v23;
    v26 = v25;

    memcpy(v70, v71, sizeof(v70));
    QueryType.filter(_:)(v22, v24, v26, &type metadata for Table, &protocol witness table for Table, v27, v28, v29, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v75, v71, sizeof(v75));
    sub_10001970C(v75);
    memcpy(v76, v73, sizeof(v76));
    v73[3] = &type metadata for Table;
    v73[4] = &protocol witness table for Table;
    sub_100003A98();
    v73[0] = swift_allocObject();
    memcpy((v73[0] + 16), v76, 0xB0uLL);
    v30 = Connection.prepareRowIterator(_:)(v73);
    sub_1000034F8(v73);
    v31 = &type metadata for String;
    v68 = sub_10011213C();
    v66 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v33 = Statement.failableNext()();
        if (v34)
        {

          goto LABEL_25;
        }

        if (!v33)
        {

          goto LABEL_25;
        }

        v35 = i[139];

        if (v35 != -1)
        {
          sub_100002DEC();
          swift_once();
        }

        sub_10000390C(qword_10019C5C8, unk_10019C5D0, qword_10019C5D8);
        if (!v35)
        {
          break;
        }
      }

      v69 = v73[0];
      v78 = v73[1];
      if (qword_100198468 != -1)
      {
        sub_100007C9C();
        swift_once();
      }

      v36 = sub_100003A8C(&qword_10019C5F8);
      sub_10000390C(v36, v37, v38);
      v39 = v30;
      v40 = v31;

      v41 = type metadata accessor for URL();
      v42 = v67;
      sub_1000075C4(v67, 1, 1, v41);
      v43 = static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v42);

      v65 = v43;
      v44 = v66;
      HIDWORD(v64) = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v44;
      v45 = sub_10000C2A0(v69, v78);
      v46 = *(v44 + 16);
      LODWORD(v66) = v47;
      v48 = (v47 & 1) == 0;
      v49 = v46 + v48;
      if (__OFADD__(v46, v48))
      {
        break;
      }

      v50 = v45;
      sub_10002EB80(&qword_10019B480, &qword_1001506A0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v64), v49))
      {
        v51 = sub_10000C2A0(v69, v78);
        v53 = v66;
        if ((v66 & 1) != (v52 & 1))
        {
          goto LABEL_29;
        }

        v54 = v51;
        v31 = v40;
        v30 = v39;
      }

      else
      {
        v54 = v50;
        v31 = v40;
        v30 = v39;
        v53 = v66;
      }

      if (v53)
      {

        v66 = v73[0];
        v55 = *(v73[0] + 56);
        v69 = *(v55 + 8 * v54);
        v56 = v65;
        *(v55 + 8 * v54) = v65;
      }

      else
      {
        v57 = v73[0];
        *(v73[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v58 = (v57[6] + 16 * v54);
        *v58 = v69;
        v58[1] = v78;
        v59 = v65;
        *(v57[7] + 8 * v54) = v65;

        v60 = v57[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_28;
        }

        v66 = v57;
        v57[2] = v62;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_10011159C()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198450 != -1)
  {
    sub_100007FFC(&qword_100198450);
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  if (qword_100198458 != -1)
  {
    sub_100002DEC();
    swift_once();
  }

  sub_100003A8C(&qword_10019C5C8);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100198460 != -1)
  {
    sub_100007314(&qword_100198460);
  }

  sub_100003A8C(&qword_10019C5E0);
  __src[0] = v4;
  v14 = == infix<A>(_:_:)();
  v17 = && infix(_:_:)(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  QueryType.filter(_:)(v17, v19, v21, &type metadata for Table, &protocol witness table for Table, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v25)
  {
    sub_100111D88();
  }

  sub_100004674();
}

uint64_t sub_100111820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100063A0C(a1, a2, a3, a4, 0x7365697469746E65, 0xE800000000000000, 0xD000000000000010, 0x8000000100154580, 0x656D614E65707974, 0xE800000000000000, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v5)
  {
    if (v7)
    {
      sub_10011159C();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

void sub_100111948()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  if (qword_100198450 != -1)
  {
    sub_100007FFC(&qword_100198450);
  }

  memcpy(__dst, &unk_10019C518, sizeof(__dst));
  memcpy(v25, &unk_10019C518, sizeof(v25));
  if (qword_100198460 != -1)
  {
    sub_100007314(&qword_100198460);
  }

  memcpy(v24, __dst, sizeof(v24));
  QueryType.namespace<A>(_:)(qword_10019C5E0, *algn_10019C5E8, qword_10019C5F0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v5, v6, v21, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v24[4] = &protocol witness table for Expression<A>;
  v24[0] = v8;
  v24[1] = v10;
  v24[2] = v12;
  SchemaType.select(_:_:)(v24, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  sub_1000034F8(v24);
  if (v2)
  {
    memcpy(v25, __src, sizeof(v25));
    if (qword_100198458 != -1)
    {
      sub_100002DEC();
      swift_once();
    }

    sub_100003A8C(&qword_10019C5C8);
    v24[0] = v4;
    v24[1] = v2;
    v13 = == infix<A>(_:_:)();
    v15 = v14;
    v17 = v16;
    memcpy(v23, v25, sizeof(v23));
    QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12], v23[13], v23[14], v23[15], v23[16], v23[17], v23[18], v23[19], v23[20], v23[21], v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14]);

    sub_10001970C(v25);
    memcpy(__src, v24, sizeof(__src));
  }

  v25[3] = &type metadata for Table;
  v25[4] = &protocol witness table for Table;
  sub_100003A98();
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), __src, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v25);
  sub_1000034F8(v25);
  if (!v0)
  {
    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

uint64_t sub_100111C88()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100111D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v5 = sub_100056DD4();
  return ExpressionType.init(_:)(a3, 0xE800000000000000, v4, v5);
}

uint64_t sub_100111D88()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v0 - 8);
  v2 = v6 - v1;
  if (qword_100198458 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v3 = v6[2];
  if (qword_100198468 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_10011213C();
  v4 = type metadata accessor for URL();
  sub_1000075C4(v2, 1, 1, v4);
  static LNEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v2);

  return v3;
}

uint64_t sub_100111F6C(void *a1, uint64_t a2)
{
  v4 = Connection.prepareRowIterator(_:)(a1);
  if (!v2)
  {
    __chkstk_darwin(v4);

    RowIterator.compactMap<A>(_:)();
    v3 = v6;
  }

  return v3;
}

void sub_100112078(void *a1@<X8>)
{
  if (qword_100198460 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_10011213C()
{
  result = qword_10019AB50;
  if (!qword_10019AB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019AB50);
  }

  return result;
}

uint64_t sub_10011218C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1001121D4(uint64_t a1, void *a2)
{
  result = LNEnumMetadata.asJson(prettyPrinted:)(0)._countAndFlagsBits;
  if (!v3)
  {
    if (qword_100198470 != -1)
    {
      sub_1000081EC(&qword_100198470);
    }

    memcpy(__dst, &unk_10019C610, sizeof(__dst));
    memcpy(__src, &unk_10019C610, sizeof(__src));
    sub_1000196B0(__dst, v10);
    if (qword_100198478 != -1)
    {
      sub_100002E00();
      swift_once();
    }

    sub_100003A8C(&qword_10019C6C0);
    <- infix<A>(_:_:)();
    sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    if (qword_100198488 != -1)
    {
      sub_100007334();
      swift_once();
    }

    sub_100003A8C(&qword_10019C6F0);
    <- infix<A>(_:_:)();

    v5 = QueryType.insert(_:_:)(v10, inited);
    v7 = v6;
    v9 = v8;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v10);
    memcpy(v13, __src, sizeof(v13));
    sub_10001970C(v13);
    v14.template._countAndFlagsBits = v5;
    v14.template._object = v7;
    v14.bindings._rawValue = v9;
    Connection.run(_:)(v14);
  }

  return result;
}

void sub_1001123EC()
{
  sub_100004DF0();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v7 - 8);
  v36 = &v32 - v8;
  if (qword_100198470 != -1)
  {
    sub_1000081EC(&qword_100198470);
  }

  memcpy(v44, &unk_10019C610, sizeof(v44));
  if (qword_100198478 != -1)
  {
    sub_100002E00();
    swift_once();
  }

  v9 = sub_100003A8C(&qword_10019C6C0);
  v41[0] = v6;
  v41[1] = v4;
  v38 = v10;
  v39 = v9;
  v37 = v11;
  v12 = == infix<A>(_:_:)();
  v14 = v13;
  v16 = v15;
  memcpy(v40, v44, sizeof(v40));
  QueryType.filter(_:)(v12, v14, v16, &type metadata for Table, &protocol witness table for Table, v17, v18, v19, v32, v33, v34, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7], v40[8], v40[9], v40[10], v40[11], v40[12], v40[13], v40[14], v40[15], v40[16], v40[17], v40[18], v40[19], v40[20], v40[21], v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7]);

  memcpy(v47, v41, sizeof(v47));
  v45 = v42;
  v46 = v43;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10014CE90;
  if (qword_100198480 != -1)
  {
    sub_100007CB0(&qword_100198480);
  }

  v40[0] = qword_10019C6D8;
  *&v40[1] = unk_10019C6E0;
  v21 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v22 = sub_100056DD4();
  ExpressionType.asc.getter(v21, v22, (v20 + 32));

  v41[3] = &type metadata for Table;
  v41[4] = &protocol witness table for Table;
  sub_100003A98();
  v23 = swift_allocObject();
  v41[0] = v23;
  memcpy((v23 + 16), v47, 0x88uLL);
  *(v23 + 152) = v20;
  v24 = v46;
  *(v23 + 160) = v45;
  *(v23 + 176) = v24;
  Connection.prepareRowIterator(_:)(v41);
  sub_1000034F8(v41);
  if (!v0)
  {
    LOBYTE(v40[0]) = 0;
    while (1)
    {
      v25 = Statement.failableNext()();
      if (v26)
      {

        goto LABEL_17;
      }

      if (!v25)
      {
        goto LABEL_17;
      }

      if (v40[0])
      {
        break;
      }

      v27 = objc_autoreleasePoolPush();
      Row.get<A>(_:)();
      v28 = v41[1];
      if (qword_100198488 != -1)
      {
        sub_100007334();
        swift_once();
      }

      sub_100003A8C(&qword_10019C6F0);
      Row.get<A>(_:)();
      v33 = v28;

      sub_100020830();
      v29 = v36;
      v30 = type metadata accessor for URL();
      sub_1000075C4(v29, 1, 1, v30);
      v31 = static LNEnumMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v29);

      v34(v31, v40);

      objc_autoreleasePoolPop(v27);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_1001128DC()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v8 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v12 = v8;
    v68 = v10;
    v69 = v11;
    v13 = v9;
    v67 = v7;
    if (qword_100198470 != -1)
    {
      sub_1000081EC(&qword_100198470);
    }

    memcpy(v72, &unk_10019C610, sizeof(v72));
    Table.init(jsonEach:key:)();
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v77, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v71);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v12;
    v71[1] = v13;
    v14 = == infix<A>(_:_:)();
    v16 = v15;
    v18 = v17;

    memcpy(v70, v73, sizeof(v70));
    QueryType.filter(_:)(v14, v16, v18, &type metadata for Table, &protocol witness table for Table, v19, v20, v21, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v74, v73, sizeof(v74));
    sub_10001970C(v74);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v73[0] = v68;
    v73[1] = v69;
    v22 = == infix<A>(_:_:)();
    v24 = v23;
    v26 = v25;

    memcpy(v70, v71, sizeof(v70));
    QueryType.filter(_:)(v22, v24, v26, &type metadata for Table, &protocol witness table for Table, v27, v28, v29, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v75, v71, sizeof(v75));
    sub_10001970C(v75);
    memcpy(v76, v73, sizeof(v76));
    v73[3] = &type metadata for Table;
    v73[4] = &protocol witness table for Table;
    sub_100003A98();
    v73[0] = swift_allocObject();
    memcpy((v73[0] + 16), v76, 0xB0uLL);
    v30 = Connection.prepareRowIterator(_:)(v73);
    sub_1000034F8(v73);
    v31 = &type metadata for String;
    v68 = sub_100020830();
    v66 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v33 = Statement.failableNext()();
        if (v34)
        {

          goto LABEL_25;
        }

        if (!v33)
        {

          goto LABEL_25;
        }

        v35 = i[143];

        if (v35 != -1)
        {
          sub_100002E00();
          swift_once();
        }

        sub_10000390C(qword_10019C6C0, *algn_10019C6C8, qword_10019C6D0);
        if (!v35)
        {
          break;
        }
      }

      v69 = v73[0];
      v78 = v73[1];
      if (qword_100198488 != -1)
      {
        sub_100007334();
        swift_once();
      }

      v36 = sub_100003A8C(&qword_10019C6F0);
      sub_10000390C(v36, v37, v38);
      v39 = v30;
      v40 = v31;

      v41 = type metadata accessor for URL();
      v42 = v67;
      sub_1000075C4(v67, 1, 1, v41);
      v43 = static LNEnumMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v42);

      v65 = v43;
      v44 = v66;
      HIDWORD(v64) = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v44;
      v45 = sub_10000C2A0(v69, v78);
      v46 = *(v44 + 16);
      LODWORD(v66) = v47;
      v48 = (v47 & 1) == 0;
      v49 = v46 + v48;
      if (__OFADD__(v46, v48))
      {
        break;
      }

      v50 = v45;
      sub_10002EB80(&qword_10019B490, &qword_10014EE48);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v64), v49))
      {
        v51 = sub_10000C2A0(v69, v78);
        v53 = v66;
        if ((v66 & 1) != (v52 & 1))
        {
          goto LABEL_29;
        }

        v54 = v51;
        v31 = v40;
        v30 = v39;
      }

      else
      {
        v54 = v50;
        v31 = v40;
        v30 = v39;
        v53 = v66;
      }

      if (v53)
      {

        v66 = v73[0];
        v55 = *(v73[0] + 56);
        v69 = *(v55 + 8 * v54);
        v56 = v65;
        *(v55 + 8 * v54) = v65;
      }

      else
      {
        v57 = v73[0];
        *(v73[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v58 = (v57[6] + 16 * v54);
        *v58 = v69;
        v58[1] = v78;
        v59 = v65;
        *(v57[7] + 8 * v54) = v65;

        v60 = v57[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_28;
        }

        v66 = v57;
        v57[2] = v62;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100112FF4()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198470 != -1)
  {
    sub_1000081EC(&qword_100198470);
  }

  memcpy(__dst, &unk_10019C610, sizeof(__dst));
  if (qword_100198478 != -1)
  {
    sub_100002E00();
    swift_once();
  }

  sub_100003A8C(&qword_10019C6C0);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100198480 != -1)
  {
    sub_100007CB0(&qword_100198480);
  }

  sub_100003A8C(&qword_10019C6D8);
  __src[0] = v4;
  v14 = == infix<A>(_:_:)();
  v17 = && infix(_:_:)(v9, v11, v13, v14, v15, v16);
  v19 = v18;
  v21 = v20;

  memcpy(v27, __dst, sizeof(v27));
  QueryType.filter(_:)(v17, v19, v21, &type metadata for Table, &protocol witness table for Table, v22, v23, v24, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v4, v2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v30, __src, sizeof(v30));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v30, 0xB0uLL);
  v25 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v25)
  {
    sub_100020474();
  }

  sub_100004674();
}

uint64_t sub_100113278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100063A0C(a1, a2, a3, a4, 0x736D756E65, 0xE500000000000000, 0xD000000000000010, 0x8000000100154580, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v5)
  {
    if (v7)
    {
      sub_100112FF4();
      a5 = v9;
    }

    else
    {
      return 0;
    }
  }

  return a5;
}

uint64_t sub_1001133F4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10011349C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001134E4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  if (qword_100198308 != -1)
  {
    sub_100002CBC(&qword_100198308);
  }

  v12 = type metadata accessor for Logger();
  sub_10000347C(v12, qword_10019E050);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v23 = v14;
    v15 = swift_slowAlloc();
    v24 = sub_100004B3C();
    v26[0] = v24;
    *v15 = 67109634;
    *(v15 + 4) = a5 & 1;
    *(v15 + 8) = 2080;
    *(v15 + 10) = sub_100004C50(a1, a2, v26);
    *(v15 + 18) = 2080;
    v25[0] = a3;
    v25[1] = a4;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v16 = String.init<A>(describing:)();
    v18 = sub_100004C50(v16, v17, v26);

    *(v15 + 20) = v18;
    _os_log_impl(&_mh_execute_header, v13, v23, "Setting isObserved status to %{BOOL}d for: %s/%s", v15, 0x1Cu);
    swift_arrayDestroy();
    sub_1000036AC(v24);
    sub_1000067A0();
  }

  else
  {
  }

  v20 = *(v6 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  __chkstk_darwin(v19);
  os_unfair_lock_lock((v20 + 24));
  sub_100115DC8((v20 + 16), v25);
  os_unfair_lock_unlock((v20 + 24));
  v21 = v25[0];
  sub_1000C0A28();
  if (*(v21 + 16))
  {
    sub_100104254(a1, a2, a3, a4, v21);
  }
}

uint64_t sub_1001137B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_1001137DC, 0, 0);
}

uint64_t sub_1001137DC()
{
  v47 = v0;
  if (qword_100198308 != -1)
  {
    sub_100002CBC(&qword_100198308);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000347C(v1, qword_10019E050);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  if (v4)
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = sub_1000056E4();
    v46[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100004C50(v7, v6, v46);
    *(v8 + 12) = 2048;
    *(v8 + 14) = sub_1000232F4(v5);

    _os_log_impl(&_mh_execute_header, v2, v3, "Received events for %s: %ld", v8, 0x16u);
    sub_1000034F8(v9);
    sub_1000067A0();
    sub_1000036AC(v8);
  }

  else
  {
  }

  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v10 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v15 = swift_task_alloc();
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v10;
  v15[5] = v11;
  os_unfair_lock_lock((v14 + 24));
  sub_100115D04((v14 + 16), v46);
  os_unfair_lock_unlock((v14 + 24));
  v16 = v46[0];
  *(v0 + 136) = v46[0];

  v17 = *(v16 + 32);
  *(v0 + 192) = v17;
  v18 = -1;
  v19 = -1 << v17;
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  if ((v18 & *(v16 + 64)) != 0)
  {
    v20 = 0;
  }

  else
  {
    v21 = 0;
    v22 = ((63 - v19) >> 6) - 1;
    do
    {
      if (v22 == v21)
      {

        sub_10000783C();

        __asm { BRAA            X1, X16 }
      }

      v20 = v21 + 1;
    }

    while (!*(*(v0 + 136) + 8 * v21++ + 72));
  }

  sub_100007348(v20);
  swift_bridgeObjectRetain_n();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 104);
    v27 = sub_1000056E4();
    *(v0 + 88) = sub_100004B3C();
    v28 = sub_100008938(4.8152e-34);
    v29 = sub_100005014(v28);
    sub_1000111B4(v29);
    if (v30)
    {
      v31 = *(v16 + 16);
    }

    else
    {
      v31 = sub_100003C88();
    }

    *(v27 + 24) = v31;

    sub_100006B34(&_mh_execute_header, v34, v35, "%s: Sending events to %s: %ld");
    swift_arrayDestroy();
    sub_1000067A0();
    sub_1000036AC(v27);
  }

  else
  {

    v26 = v16 & 0xC000000000000001;
  }

  type metadata accessor for AppNotificationEventListenerClient();
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = v12;
  *(inited + 24) = 0;
  if (v26)
  {
    v37 = sub_100003C88();
    if (v37)
    {
      goto LABEL_24;
    }

LABEL_27:

    v38 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v37 = *(v16 + 16);
  if (!v37)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v37 < 1)
  {
    v38 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v38 = swift_allocObject();
    v39 = j__malloc_size(v38);
    sub_100003934(v39);
  }

  sub_100009A70();
  v41 = v40;
  result = sub_100014464(*(v0 + 16));
  if (v41 != v37)
  {
    __break(1u);
    return result;
  }

LABEL_30:
  *(v0 + 168) = v38;
  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  *v43 = v0;
  sub_10000820C(v43);
  sub_10000783C();

  return sub_10010F394(v44);
}

uint64_t sub_100113C34()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10011403C;
  }

  else
  {
    v2 = sub_100113D68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100113D68()
{
  swift_setDeallocating();

  v5 = *(v2 + 152);
  if (((*(v2 + 144) - 1) & *(v2 + 144)) != 0)
  {
LABEL_6:
    sub_100007348(v5);
    swift_bridgeObjectRetain_n();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v2 + 104);
      v10 = sub_1000056E4();
      *(v2 + 88) = sub_100004B3C();
      v11 = sub_100008938(4.8152e-34);
      v12 = sub_100005014(v11);
      sub_1000111B4(v12);
      if (v13)
      {
        v14 = *(v0 + 16);
      }

      else
      {
        v14 = sub_100003C88();
      }

      *(v10 + 24) = v14;

      sub_100006B34(&_mh_execute_header, v16, v17, "%s: Sending events to %s: %ld");
      swift_arrayDestroy();
      sub_1000067A0();
      sub_1000036AC(v10);
    }

    else
    {

      v9 = v0 & 0xC000000000000001;
    }

    type metadata accessor for AppNotificationEventListenerClient();
    inited = swift_initStackObject();
    *(v2 + 160) = inited;
    *(inited + 16) = v3;
    *(inited + 24) = v1;
    if (v9)
    {
      v19 = sub_100003C88();
      if (v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = *(v0 + 16);
      if (v19)
      {
LABEL_17:
        if (v19 < 1)
        {
          v20 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
          v20 = swift_allocObject();
          v21 = j__malloc_size(v20);
          sub_100003934(v21);
        }

        sub_100009A70();
        v23 = v22;
        result = sub_100014464(*(v2 + 16));
        if (v23 != v19)
        {
LABEL_27:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_23:
    *(v2 + 168) = v20;
    v24 = swift_task_alloc();
    *(v2 + 176) = v24;
    *v24 = v2;
    v25 = sub_10000820C(v24);

    return sub_10010F394(v25);
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    result = *(v2 + 136);
    if (v6 >= (((1 << *(v2 + 192)) + 63) >> 6))
    {
      break;
    }

    ++v5;
    if (*(result + 8 * v6 + 64))
    {
      v5 = v6;
      goto LABEL_6;
    }
  }

  v15 = *(v2 + 8);

  return v15();
}

uint64_t sub_10011403C()
{

  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1001140B4(uint64_t a1, unint64_t a2, int64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  sub_100002958();
  v53 = v11 - v10;
  v12 = type metadata accessor for UUID();
  sub_100002944();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002958();
  v18 = v17 - v16;
  v19 = &_swiftEmptySetSingleton;
  v57 = &_swiftEmptySetSingleton;
  v49 = *(a3 + 16);
  if (!v49)
  {
    v20 = *(a4 + 16);
    if (v20)
    {
      v48 = a5;
      v54[0] = _swiftEmptyArrayStorage;
      v21 = v9;
      sub_1000B38D4(0, v20, 0);
      v22 = _swiftEmptyArrayStorage;
      sub_100018504();
      v47 = a4;
      v24 = a4 + v23;
      v52 = *(v21 + 72);
      v25 = (v14 + 32);
      do
      {
        sub_10004092C(v24, v53);
        v26 = *v25;
        (*v25)(v18, v53, v12);
        v54[0] = v22;
        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          sub_1000B38D4(v27 > 1, v28 + 1, 1);
          v22 = v54[0];
        }

        v22[2] = v28 + 1;
        sub_100018504();
        v26(v22 + v29 + *(v14 + 72) * v28, v18, v12);
        v24 += v52;
        --v20;
      }

      while (v20);
      v57 = sub_1000C2E54(v22);
      a5 = v48;
      a4 = v47;
      v19 = &_swiftEmptySetSingleton;
    }
  }

  if (qword_100198308 != -1)
  {
LABEL_23:
    sub_100002CBC(&qword_100198308);
  }

  v30 = type metadata accessor for Logger();
  sub_10000347C(v30, qword_10019E050);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_1000056E4();
    v34 = v19;
    v35 = sub_1000056E4();
    v54[0] = v35;
    *v33 = 136315650;
    *(v33 + 4) = sub_100004C50(a1, a2, v54);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v49;
    *(v33 + 22) = 2048;
    *(v33 + 24) = *(a4 + 16);

    _os_log_impl(&_mh_execute_header, v31, v32, "%s: # of event listeners %ld # of observation status change clients %ld", v33, 0x20u);
    sub_1000034F8(v35);
    v36 = v35;
    v19 = v34;
    sub_1000036AC(v36);
    sub_1000036AC(v33);
  }

  else
  {
  }

  v56 = v19;
  v19 = (a5 + 64);
  v37 = 1 << *(a5 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  a4 = v38 & *(a5 + 64);
  v39 = (v37 + 63) >> 6;

  v40 = 0;
  if (a4)
  {
    while (1)
    {
      v41 = v40;
LABEL_19:
      v42 = (v41 << 10) | (16 * __clz(__rbit64(a4)));
      v43 = *(a5 + 56);
      v44 = (*(a5 + 48) + v42);
      v45 = v44[1];
      v54[0] = *v44;
      v54[1] = v45;
      v55 = *(v43 + v42);

      sub_100114950(&v56, v54, a1, a2);
      a4 &= a4 - 1;

      v40 = v41;
      if (!a4)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v41 >= v39)
    {
      break;
    }

    a4 = v19[v41];
    ++v40;
    if (a4)
    {
      goto LABEL_19;
    }
  }

  sub_100114D74(v56);
  return v57;
}

void *sub_100114590(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  __chkstk_darwin(v12 - 8);
  sub_100002958();
  v15 = v14 - v13;
  type metadata accessor for UUID();
  sub_100002944();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100002958();
  if (*(a5 + 16))
  {
    return &_swiftEmptySetSingleton;
  }

  v43 = a1;
  v45 = v19;
  v23 = *(a6 + 16);
  if (!v23)
  {
    return &_swiftEmptySetSingleton;
  }

  v42 = v21 - v20;
  if (qword_100198308 != -1)
  {
    sub_100002CBC(&qword_100198308);
  }

  v24 = type metadata accessor for Logger();
  sub_10000347C(v24, qword_10019E050);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v41 = v25;
    v40 = v26;
    v27 = swift_slowAlloc();
    v28 = sub_100004B3C();
    v47 = v28;
    *v27 = 136315906;
    *(v27 + 4) = sub_100004C50(v43, a2, &v47);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100004C50(a3, a4, &v47);
    *(v27 + 22) = 2048;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v23;

    _os_log_impl(&_mh_execute_header, v41, v40, "%s/%s: # of event listeners %ld # of observation status change clients %ld", v27, 0x2Au);
    swift_arrayDestroy();
    sub_1000036AC(v28);
    sub_1000036AC(v27);
  }

  else
  {
  }

  v29 = v45;
  v47 = _swiftEmptyArrayStorage;
  sub_1000B38D4(0, v23, 0);
  v30 = v47;
  sub_100018504();
  v32 = a6 + v31;
  v44 = *(v33 + 72);
  v34 = (v17 + 32);
  do
  {
    v46 = v23;
    sub_10004092C(v32, v15);
    v35 = *v34;
    v36 = v15;
    (*v34)(v42, v15, v29);
    v47 = v30;
    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1000B38D4(v37 > 1, v38 + 1, 1);
      v30 = v47;
    }

    *(v30 + 16) = v38 + 1;
    sub_100018504();
    v35(v30 + v39 + *(v17 + 72) * v38, v42, v29);
    v32 += v44;
    v23 = v46 - 1;
    v15 = v36;
  }

  while (v46 != 1);
  return sub_1000C2E54(v30);
}

void sub_100114950(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v36 = a1;
  v7 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v35 = *a2;
  v15 = a2[3];
  v37 = a2[2];
  v38 = v14;
  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v33 = a3;
    v34 = a4;
    v42 = _swiftEmptyArrayStorage;
    sub_1000B38D4(0, v16, 0);
    v17 = v42;
    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v32 = v15;
    v19 = v15 + v18;
    v20 = *(v8 + 72);
    v39 = v11 + 32;
    v40 = v20;
    do
    {
      v21 = v41;
      sub_10004092C(v19, v41);
      (*(v11 + 16))(v13, v21, v10);
      sub_100040990(v21);
      v42 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000B38D4(v22 > 1, v23 + 1, 1);
        v17 = v42;
      }

      v17[2] = v23 + 1;
      (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13, v10);
      v19 += v40;
      --v16;
    }

    while (v16);
    a3 = v33;
    a4 = v34;
    v15 = v32;
  }

  sub_100114F84(v17);
  v25 = v37;
  v24 = v38;
  if (qword_100198308 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000347C(v26, qword_10019E050);

  v27 = v15;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v30 = 136315906;
    *(v30 + 4) = sub_100004C50(a3, a4, &v42);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_100004C50(v35, v24, &v42);
    *(v30 + 22) = 2048;
    *(v30 + 24) = *(v25 + 16);
    *(v30 + 32) = 2048;
    *(v30 + 34) = *(v27 + 16);

    _os_log_impl(&_mh_execute_header, v28, v29, "%s/%s: # of event listeners %ld # of observation status change clients %ld", v30, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100114D74(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_100047FD8();
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100114F84(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v18[1] = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v5, v15, v2, v7);
      sub_100047FD8();
      (*(v11 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_100115110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, int a10)
{
  j = a1;
  v17 = sub_10000E898(a2, a3, *a1);
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v79 = v20;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (v17)
  {
    v22 = v19;
  }

  else
  {
    v22 = _swiftEmptyDictionarySingleton;
  }

  if (a5)
  {
    v78 = a9;
    v23 = sub_1000A0E7C(a4, a5, v22);
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
    }

    if (v23)
    {
      v26 = v24;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v82 = v25;
    v73 = a4;
    v75 = a5;
    if (a6)
    {

      v27 = sub_100114590(a2, a3, a4, a5, v25, v26);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_19:
        v28 = v25[2];
        if (v28 >= v25[3] >> 1)
        {
          sub_100070F2C();
          v25 = v63;
        }

        v25[2] = v28 + 1;
        v29 = &v25[3 * v28];
        v29[4] = a7;
        v29[5] = a8;
        *(v29 + 12) = a10;
        goto LABEL_54;
      }

LABEL_82:
      sub_100070F2C();
      v25 = v62;
      goto LABEL_19;
    }

    if (!v25[2])
    {
      v27 = &_swiftEmptySetSingleton;
LABEL_54:
      swift_isUniquelyReferenced_nonNull_native();
      sub_10006971C();
      a9 = v78;
      goto LABEL_77;
    }

    swift_bridgeObjectRetain_n();
    result = sub_100115D24(v25, a7, a8);
    if (v34)
    {
      v27 = v25[2];
LABEL_52:

      v48 = v25[2];
      a7 = v79;
      if (v48 < v27)
      {
        goto LABEL_85;
      }

      sub_1000F5628(v27, v48, v45, v46, v47);
      v27 = sub_100114590(a2, a3, v73, v75, v82, v26);
      goto LABEL_54;
    }

    v27 = result;
    v66 = j;
    j = result + 1;
    if (!__OFADD__(result, 1))
    {
      for (i = 3 * result; ; i += 3)
      {
        v37 = v25[2];
        if (j == v37)
        {
          j = v66;
          goto LABEL_52;
        }

        if (j >= v37)
        {
          break;
        }

        v39 = v25[i + 7];
        v38 = v25[i + 8];
        v40 = v39 == a7 && v38 == a8;
        if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (j != v27)
          {
            if (v27 >= v37)
            {
              goto LABEL_80;
            }

            v41 = &v25[3 * v27 + 4];
            v70 = *(v41 + 8);
            v71 = *v41;
            v69 = *(v41 + 16);
            a10 = v25[i + 9];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000F5248();
              v25 = v44;
            }

            v42 = &v25[3 * v27];
            v42[4] = v39;
            v42[5] = v38;
            *(v42 + 12) = a10;

            if (j >= v25[2])
            {
              goto LABEL_81;
            }

            v43 = &v25[i];
            v43[7] = v71;
            v43[8] = v70;
            *(v43 + 18) = v69;

            v82 = v25;
          }

          ++v27;
        }

        ++j;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    goto LABEL_88;
  }

  v83 = v21;
  v30 = v21;
  if (a6)
  {
    v78 = a9;

    v27 = sub_1001140B4(a2, a3, v30, v79, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_24;
  }

  if (!v21[2])
  {
    v27 = &_swiftEmptySetSingleton;
    goto LABEL_77;
  }

  swift_bridgeObjectRetain_n();

  result = sub_100115D24(v30, a7, a8);
  if (v35)
  {
    v27 = *(v30 + 16);
LABEL_74:

    v61 = *(v30 + 16);
    if (v61 >= v27)
    {
      sub_1000F5628(v27, v61, v58, v59, v60);

      v27 = sub_1001140B4(a2, a3, v83, v79, v22);

      goto LABEL_76;
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v27 = result;
  v67 = j;
  v68 = v22;
  v78 = a9;
  v49 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_89:
    __break(1u);
    return result;
  }

  for (j = 24 * result; ; j += 24)
  {
    v50 = *(v30 + 16);
    if (v49 == v50)
    {
      a9 = v78;
      j = v67;
      v22 = v68;
      goto LABEL_74;
    }

    if (v49 >= v50)
    {
      goto LABEL_79;
    }

    v51 = *(v30 + j + 56);
    v52 = *(v30 + j + 64);
    v53 = v51 == a7 && v52 == a8;
    if (!v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

LABEL_72:
    ++v49;
  }

  if (v49 == v27)
  {
LABEL_71:
    ++v27;
    goto LABEL_72;
  }

  if (v27 < v50)
  {
    v54 = v30 + 32 + 24 * v27;
    v74 = *(v54 + 8);
    v76 = *v54;
    v72 = *(v54 + 16);
    a10 = *(v30 + j + 72);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F5248();
      v30 = v57;
    }

    v55 = v30 + 24 * v27;
    *(v55 + 32) = v51;
    *(v55 + 40) = v52;
    *(v55 + 48) = a10;

    if (v49 >= *(v30 + 16))
    {
      goto LABEL_84;
    }

    v56 = v30 + j;
    *(v56 + 56) = v76;
    *(v56 + 64) = v74;
    *(v56 + 72) = v72;

    v83 = v30;
    goto LABEL_71;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  sub_100070F2C();
  v30 = v64;
LABEL_24:
  v31 = *(v30 + 16);
  if (v31 >= *(v30 + 24) >> 1)
  {
    sub_100070F2C();
    v30 = v65;
  }

  *(v30 + 16) = v31 + 1;
  v32 = v30 + 24 * v31;
  *(v32 + 32) = a7;
  *(v32 + 40) = a8;
  *(v32 + 48) = a10;
  a9 = v78;
LABEL_76:

LABEL_77:

  swift_isUniquelyReferenced_nonNull_native();
  v84 = *j;
  sub_1000695E0();

  *j = v84;
  *a9 = v27;
  return result;
}

void *sub_1001157E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {

      sub_1000C2FE4(v5);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100069958();

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_10011589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v6 = a6;
  v9 = sub_1000232F4(a6);
  v27 = v6 & 0xC000000000000001;
  v10 = v6 & 0xFFFFFFFFFFFFFF8;

  v11 = 0;
  do
  {
    v26 = v11 + 1;

    for (i = 0; v9 != i; ++i)
    {
      if (v27)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v10 + 16))
        {
          goto LABEL_28;
        }

        v13 = *(v6 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      v15 = v6;
      v16 = [v13 entityType];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v17 == a3 && v19 == a4)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_17:
      v6 = v15;
    }

    sub_1000C2FE4(_swiftEmptyArrayStorage);
    v23 = v22;
    if (sub_1000FED28())
    {
    }

    else
    {

      v24 = sub_1000B6334();

      if (v24)
      {
        sub_10003550C(v24, v23);
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_100069958();
    }

    v11 = v26;
  }

  while (v26 != v25);
}

uint64_t sub_100115B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = sub_10000E898(a2, a3, *a1);
  if (v7)
  {
    v10 = v9;
    v32 = a5;
    v33 = a4;
    v11 = sub_1001157E0(v7, v8, a4);

    v12 = 0;
    v14 = v10 + 64;
    v13 = *(v10 + 64);
    v34 = v10;
    v15 = *(v10 + 32);
    v16 = v11;
    v17 = 1 << v15;
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v13;
    v20 = (v17 + 63) >> 6;
    if ((v18 & v13) != 0)
    {
      do
      {
        v21 = v12;
        result = v34;
LABEL_11:
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v24 = (v21 << 10) | (16 * v23);
        v25 = (*(result + 48) + v24);
        v26 = *v25;
        v27 = v25[1];
        v28 = (*(result + 56) + v24);
        v29 = *v28;
        v30 = v28[1];

        sub_10011589C(v29, v30, v26, v27, v16, v33);
        v16 = v31;
      }

      while (v19);
    }

    result = v34;
    while (1)
    {
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        a5 = v32;
        goto LABEL_15;
      }

      v19 = *(v14 + 8 * v21);
      ++v12;
      if (v19)
      {
        v12 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_10002EB80(&qword_10019C708, &qword_1001521C8);
    result = Dictionary.init(dictionaryLiteral:)();
    v16 = result;
LABEL_15:
    *a5 = v16;
  }

  return result;
}

uint64_t sub_100115D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 3;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_100115E08()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198490 != -1)
  {
    sub_100008234(&qword_100198490);
  }

  memcpy(v33, &unk_10019C710, 0xB0uLL);
  if (v6)
  {
    sub_1000196B0(v33, v31);
    if (qword_100198498 != -1)
    {
      sub_100002E14();
      swift_once();
    }

    sub_100003A8C(&qword_10019C7C0);
    v31[0] = v8;
    v31[1] = v6;
    == infix<A>(_:_:)();
    memcpy(v30, v33, sizeof(v30));
    v9 = sub_100003950();
    QueryType.filter(_:)(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_10001970C(v33);
    v17 = v31;
  }

  else
  {
    sub_1000196B0(v33, v31);
    v17 = v33;
  }

  memcpy(v32, v17, sizeof(v32));
  if (v2)
  {
    if (qword_1001984B0 != -1)
    {
      swift_once();
    }

    sub_100003A8C(&unk_10019C808);
    v30[0] = v4;
    v30[1] = v2;
    v18 = == infix<A>(_:_:)();
    v20 = v19;
    v22 = v21;
    memcpy(v29, v32, sizeof(v29));
    QueryType.filter(_:)(v18, v20, v22, &type metadata for Table, &protocol witness table for Table, v23, v24, v25, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], v29[21], v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14]);

    sub_10001970C(v32);
    v26 = v30;
  }

  else
  {
    v26 = v32;
  }

  memcpy(v31, v26, sizeof(v31));
  v30[3] = &type metadata for Table;
  v30[4] = &protocol witness table for Table;
  sub_100003A98();
  v30[0] = swift_allocObject();
  memcpy((v30[0] + 16), v31, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v30);
  v27 = sub_1000034F8(v30);
  if (!v0)
  {
    __chkstk_darwin(v27);

    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

void sub_100116160()
{
  sub_100004DF0();
  v42 = v0;
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  if (qword_100198490 != -1)
  {
    sub_100008234(&qword_100198490);
  }

  v38 = v9;
  memcpy(v47, &unk_10019C710, sizeof(v47));
  if (qword_100198498 != -1)
  {
    sub_100002E14();
    swift_once();
  }

  v10 = sub_100003A8C(&qword_10019C7C0);
  v44[0] = v6;
  v44[1] = v4;
  v40 = v11;
  v41 = v10;
  v39 = v12;
  v13 = == infix<A>(_:_:)();
  v15 = v14;
  v17 = v16;
  memcpy(v43, v47, sizeof(v43));
  QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15], v43[16], v43[17], v43[18], v43[19], v43[20], v43[21], v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7]);

  memcpy(v50, v44, sizeof(v50));
  v48 = v45;
  v49 = v46;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10014CE90;
  if (qword_1001984A0 != -1)
  {
    sub_100007CD0(&qword_1001984A0);
  }

  v43[0] = qword_10019C7D8;
  *&v43[1] = unk_10019C7E0;
  v22 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v23 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  ExpressionType.asc.getter(v22, v23, (v21 + 32));

  v44[3] = &type metadata for Table;
  v44[4] = &protocol witness table for Table;
  sub_100003A98();
  v24 = swift_allocObject();
  v44[0] = v24;
  memcpy((v24 + 16), v50, 0x88uLL);
  *(v24 + 152) = v21;
  v25 = v49;
  *(v24 + 160) = v48;
  *(v24 + 176) = v25;
  v26 = v42;
  v27 = Connection.prepareRowIterator(_:)(v44);
  sub_1000034F8(v44);
  if (!v26)
  {
    LOBYTE(v43[0]) = 0;
    v42 = v27;
    while (1)
    {
      v28 = Statement.failableNext()();
      if (v29)
      {

        goto LABEL_17;
      }

      if (!v28)
      {
        goto LABEL_17;
      }

      if (v43[0])
      {
        break;
      }

      v30 = objc_autoreleasePoolPush();
      sub_100003950();
      Row.get<A>(_:)();
      v31 = v44[1];
      if (qword_1001984A8 != -1)
      {
        sub_100007388();
        swift_once();
      }

      sub_100003A8C(&qword_10019C7F0);
      Row.get<A>(_:)();
      v35 = v31;

      sub_100117B70();
      v32 = type metadata accessor for URL();
      v33 = v38;
      sub_1000075C4(v38, 1, 1, v32);
      v34 = static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v33);

      v36(v34, v43);

      objc_autoreleasePoolPop(v30);
    }

LABEL_17:
  }

  sub_100004674();
}

void sub_100116668()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v8 = sub_10004B2E4(v4, v2);
  if (v0)
  {
LABEL_25:
    sub_100004674();
  }

  else
  {
    v12 = v8;
    v68 = v10;
    v69 = v11;
    v13 = v9;
    v67 = v7;
    if (qword_100198490 != -1)
    {
      sub_100008234(&qword_100198490);
    }

    memcpy(v72, &unk_10019C710, sizeof(v72));
    Table.init(jsonEach:key:)();
    v71[3] = &type metadata for Table;
    v71[4] = &protocol witness table for Table;
    sub_100003A98();
    v71[0] = swift_allocObject();
    memcpy((v71[0] + 16), v77, 0xB0uLL);
    QueryType.join(_:_:on:)();
    sub_1000034F8(v71);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v71[0] = v12;
    v71[1] = v13;
    v14 = == infix<A>(_:_:)();
    v16 = v15;
    v18 = v17;

    memcpy(v70, v73, sizeof(v70));
    QueryType.filter(_:)(v14, v16, v18, &type metadata for Table, &protocol witness table for Table, v19, v20, v21, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v74, v73, sizeof(v74));
    sub_10001970C(v74);
    sub_100002A04();
    static Expression.jsonExtract(key:source:)();
    v73[0] = v68;
    v73[1] = v69;
    v22 = == infix<A>(_:_:)();
    v24 = v23;
    v26 = v25;

    memcpy(v70, v71, sizeof(v70));
    QueryType.filter(_:)(v22, v24, v26, &type metadata for Table, &protocol witness table for Table, v27, v28, v29, v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15], v70[16], v70[17], v70[18], v70[19], v70[20], v70[21], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8]);

    memcpy(v75, v71, sizeof(v75));
    sub_10001970C(v75);
    memcpy(v76, v73, sizeof(v76));
    v73[3] = &type metadata for Table;
    v73[4] = &protocol witness table for Table;
    sub_100003A98();
    v73[0] = swift_allocObject();
    memcpy((v73[0] + 16), v76, 0xB0uLL);
    v30 = Connection.prepareRowIterator(_:)(v73);
    sub_1000034F8(v73);
    v31 = &type metadata for String;
    v68 = sub_100117B70();
    v66 = Dictionary.init(dictionaryLiteral:)();
    for (i = &unk_100198000; ; i = &unk_100198000)
    {
      while (1)
      {
        v33 = Statement.failableNext()();
        if (v34)
        {

          goto LABEL_25;
        }

        if (!v33)
        {

          goto LABEL_25;
        }

        v35 = i[147];

        if (v35 != -1)
        {
          sub_100002E14();
          swift_once();
        }

        sub_10000390C(qword_10019C7C0, *algn_10019C7C8, qword_10019C7D0);
        if (!v35)
        {
          break;
        }
      }

      v69 = v73[0];
      v78 = v73[1];
      if (qword_1001984A8 != -1)
      {
        sub_100007388();
        swift_once();
      }

      v36 = sub_100003A8C(&qword_10019C7F0);
      sub_10000390C(v36, v37, v38);
      v39 = v30;
      v40 = v31;

      v41 = type metadata accessor for URL();
      v42 = v67;
      sub_1000075C4(v67, 1, 1, v41);
      v43 = static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v42);

      v65 = v43;
      v44 = v66;
      HIDWORD(v64) = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v44;
      v45 = sub_10000C2A0(v69, v78);
      v46 = *(v44 + 16);
      LODWORD(v66) = v47;
      v48 = (v47 & 1) == 0;
      v49 = v46 + v48;
      if (__OFADD__(v46, v48))
      {
        break;
      }

      v50 = v45;
      sub_10002EB80(&qword_10019B4A0, &qword_100150790);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(SBYTE4(v64), v49))
      {
        v51 = sub_10000C2A0(v69, v78);
        v53 = v66;
        if ((v66 & 1) != (v52 & 1))
        {
          goto LABEL_29;
        }

        v54 = v51;
        v31 = v40;
        v30 = v39;
      }

      else
      {
        v54 = v50;
        v31 = v40;
        v30 = v39;
        v53 = v66;
      }

      if (v53)
      {

        v66 = v73[0];
        v55 = *(v73[0] + 56);
        v69 = *(v55 + 8 * v54);
        v56 = v65;
        *(v55 + 8 * v54) = v65;
      }

      else
      {
        v57 = v73[0];
        *(v73[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v58 = (v57[6] + 16 * v54);
        *v58 = v69;
        v58[1] = v78;
        v59 = v65;
        *(v57[7] + 8 * v54) = v65;

        v60 = v57[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_28;
        }

        v66 = v57;
        v57[2] = v62;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_100116D80()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100198490 != -1)
  {
    sub_100008234(&qword_100198490);
  }

  memcpy(__dst, &unk_10019C710, sizeof(__dst));
  if (qword_100198498 != -1)
  {
    sub_100002E14();
    swift_once();
  }

  sub_100003A8C(&qword_10019C7C0);
  __src[0] = v8;
  __src[1] = v6;
  v9 = == infix<A>(_:_:)();
  v11 = v10;
  v13 = v12;
  if (qword_1001984A0 != -1)
  {
    sub_100007CD0(&qword_1001984A0);
  }

  sub_100003A8C(&qword_10019C7D8);
  __src[0] = v4;
  __src[1] = v2;
  v14 = == infix<A>(_:_:)();
  && infix(_:_:)(v9, v11, v13, v14, v15, v16);

  memcpy(v25, __dst, sizeof(v25));
  v17 = sub_100003950();
  QueryType.filter(_:)(v17, v18, v19, &type metadata for Table, &protocol witness table for Table, v20, v21, v22, v24, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v28, __src, sizeof(v28));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v28, 0xB0uLL);
  v23 = Connection.pluck(_:)(__src);
  sub_1000034F8(__src);
  if (!v0 && v23)
  {
    sub_100117934();
  }

  sub_1000111C8();
  sub_100004674();
}

void sub_100116FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100063A0C(a1, a2, a3, a4, 0x73656972657571, 0xE700000000000000, 0xD000000000000010, 0x8000000100154580, 0x6564497972657571, 0xEF7265696669746ELL, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000021, 0x8000000100158B20);
  if (!v4 && v5)
  {
    sub_100116D80();
  }

  sub_1000111C8();
}

void sub_10011712C()
{
  sub_100004DF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  i = v6;
  v57 = v8;
  if (qword_100198490 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    memcpy(v56, &unk_10019C710, 0xB0uLL);
    if (i)
    {
      sub_1000196B0(v56, v54);
      v9 = i;
      v10 = LNValueType.asJson(prettyPrinted:sortedKeys:)(0, 1);
      v1 = v11;
      if (v11)
      {

        memcpy(v55, v56, sizeof(v55));
        v1 = 0;
      }

      else
      {
        v12 = v3;
        memcpy(v52, v56, sizeof(v52));
        if (qword_1001984B8 != -1)
        {
          swift_once();
        }

        sub_100003A8C(&unk_10019C820);
        v54[0] = v10;
        v13 = == infix<A>(_:_:)();
        v15 = v14;
        v17 = v16;

        QueryType.filter(_:)(v13, v15, v17, &type metadata for Table, &protocol witness table for Table, v18, v19, v20, v47, v48, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12]);

        memcpy(v54, v52, sizeof(v54));
        sub_10001970C(v54);
        memcpy(v55, v53, sizeof(v55));
        v3 = v12;
      }
    }

    else
    {
      sub_1000196B0(v56, v54);
      memcpy(v55, v56, sizeof(v55));
    }

    if (v5)
    {
      v21 = v5;
      v22 = LNValueType.asJson(prettyPrinted:sortedKeys:)(0, 1);
      v1 = v23;
      if (v23)
      {

        memcpy(v54, v55, sizeof(v54));
        v1 = 0;
      }

      else
      {
        v24 = v3;
        memcpy(v51, v55, sizeof(v51));
        if (qword_1001984C0 != -1)
        {
          swift_once();
        }

        sub_100003A8C(&unk_10019C838);
        v53[0] = v22;
        v25 = == infix<A>(_:_:)();
        v27 = v26;
        v29 = v28;

        QueryType.filter(_:)(v25, v27, v29, &type metadata for Table, &protocol witness table for Table, v30, v31, v32, v47, v48, v49, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], v51[12], v51[13], v51[14], v51[15], v51[16], v51[17], v51[18], v51[19], v51[20], v51[21], v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12]);

        memcpy(v53, v51, sizeof(v53));
        sub_10001970C(v53);
        memcpy(v54, v52, sizeof(v54));
        v3 = v24;
      }
    }

    else
    {
      memcpy(v54, v55, sizeof(v54));
    }

    v53[1]._object = &type metadata for Table;
    v53[2]._countAndFlagsBits = &protocol witness table for Table;
    sub_100003A98();
    v53[0]._countAndFlagsBits = swift_allocObject();
    memcpy((v53[0]._countAndFlagsBits + 16), v54, 0xB0uLL);
    Connection.prepareRowIterator(_:)(v53);
    v33 = sub_1000034F8(v53);
    if (v1)
    {
      break;
    }

    __chkstk_darwin(v33);

    RowIterator.compactMap<A>(_:)();
    v5 = v34;

    v35 = 0;
    v36 = v5[2];
    v37 = v5 + 6;
    v48 = (v5 + 6);
    v49 = _swiftEmptyArrayStorage;
LABEL_19:
    for (i = &v37[3 * v35]; ; i += 3)
    {
      if (v36 == v35)
      {

        goto LABEL_18;
      }

      if (v35 >= v5[2])
      {
        break;
      }

      v38 = *(i - 2);
      v3 = *(i - 1);
      v39 = *i;

      v40 = v39;
      if ((v57 & ~[v40 capabilities]) == 0)
      {
        countAndFlagsBits = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0]._countAndFlagsBits = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B37E4(0, v49[2] + 1, 1);
          countAndFlagsBits = v53[0]._countAndFlagsBits;
        }

        v37 = v5 + 6;
        v44 = *(countAndFlagsBits + 16);
        v43 = *(countAndFlagsBits + 24);
        v45 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v50 = v44 + 1;
          v47 = *(countAndFlagsBits + 16);
          sub_1000B37E4(v43 > 1, v44 + 1, 1);
          v37 = v5 + 6;
          v45 = v50;
          v44 = v47;
          countAndFlagsBits = v53[0]._countAndFlagsBits;
        }

        ++v35;
        *(countAndFlagsBits + 16) = v45;
        v49 = countAndFlagsBits;
        v46 = (countAndFlagsBits + 24 * v44);
        v46[4] = v38;
        v46[5] = v3;
        v46[6] = v40;
        goto LABEL_19;
      }

      ++v35;
    }

    __break(1u);
LABEL_31:
    sub_100008234(&qword_100198490);
  }

LABEL_18:
  sub_100004674();
}

uint64_t sub_10011770C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1001177E0()
{
  sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  sub_1000111C8();
  v3 = sub_100013F04(v0, v1, v2);
  return sub_10000503C(v3);
}

uint64_t sub_1001178C8()
{
  sub_10002EB80(&qword_100199518, &unk_10014ED10);
  sub_1000111C8();
  v3 = sub_100013F04(v0, v1, v2);
  return sub_10000503C(v3);
}

uint64_t sub_100117934()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v0 - 8);
  v2 = v6 - v1;
  if (qword_100198498 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v3 = v6[2];
  if (qword_1001984A8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100117B70();
  v4 = type metadata accessor for URL();
  sub_1000075C4(v2, 1, 1, v4);
  static LNQueryMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v2);

  return v3;
}

uint64_t sub_100117B18@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_100117B70()
{
  result = qword_10019B2E0;
  if (!qword_10019B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019B2E0);
  }

  return result;
}

uint64_t sub_100117BB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_100117C1C(uint64_t a1)
{
  sub_100062140(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_100117CE0()
{
  sub_100003E9C(v0 + qword_10019E598, &qword_1001990C0, &unk_10014E200);

  sub_100003E9C(v0 + qword_10019C858, &qword_1001990C0, &unk_10014E200);

  return v0;
}

uint64_t sub_100117D7C()
{
  v1 = sub_10002EB80(&unk_10019C8F0, &unk_1001522A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  URL.lastPathComponent.getter();
  sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  Regex.wholeMatch(in:)();
  if (v0)
  {

    v4 = sub_10002EB80(&unk_10019C900, &unk_1001522B0);
    sub_1000075C4(v3, 1, 1, v4);
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v5 = sub_10002EB80(&unk_10019C900, &unk_1001522B0);
  v6 = 1;
  if (sub_1000032C4(v3, 1, v5) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_100003E9C(v3, &unk_10019C8F0, &unk_1001522A0);
  return v6;
}

uint64_t sub_100117EE4()
{
  sub_100117CE0();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_100117F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a4 && a2 == a5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000047D0();
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int sub_100117FF8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100118060(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

_BYTE *storeEnumTagSinglePayload for StreamManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1001181B4()
{
  result = qword_10019C910;
  if (!qword_10019C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C910);
  }

  return result;
}

unint64_t sub_10011820C()
{
  result = qword_10019C918;
  if (!qword_10019C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019C918);
  }

  return result;
}

uint64_t sub_100118268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1001182A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100118320(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  sub_100002BE8();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v30 = v10;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v14 = (*(v30 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = v14[1];
    v29[0] = *v14;
    v29[1] = v15;

    (a1)(&v25, v29);
    if (v3)
    {

      return;
    }

    v16 = v26;
    if (v26)
    {
      v23 = v27;
      v21 = v25;
      v22 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000703A8();
        v12 = v19;
      }

      v17 = v12[2];
      if (v17 >= v12[3] >> 1)
      {
        sub_1000703A8();
        v12 = v20;
      }

      v12[2] = v17 + 1;
      v18 = &v12[5 * v17];
      v18[4] = v21;
      v18[5] = v16;
      *(v18 + 3) = v23;
      v18[8] = v22;
    }

    v7 &= v7 - 1;
  }

  while (v7);
LABEL_2:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1001184F0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v13 = _swiftEmptyArrayStorage;
  v6 = a4(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v12 = v8;
    a1(&v11, &v12);
    if (v4)
    {

      return;
    }

    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }
}

void sub_100118648(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1001984C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000347C(v4, qword_10019E5A0);
  sub_100013334(a1, v44);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    sub_100003BFC();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315138;
    v9 = v45;
    sub_1000034B4(v44, v45);
    sub_1000039EC();
    v10(v9);
    sub_1000034F8(v44);
    v11 = sub_1000077D8();
    v14 = sub_100004C50(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Loading combined static metadata for bundle %s", v7, 0xCu);
    sub_1000034F8(v8);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v44);
  }

  sub_100003D44(0, &qword_10019C970, LNBundleMetadata_ptr);
  v15 = a1[3];
  sub_1000034B4(a1, v15);
  sub_1000039EC();
  v16(v15);
  v17 = LNBundleMetadata.init(bundleIdentifier:)();
  if (!v2)
  {
    v18 = v17;
    v19 = [v17 generator];
    if (v19)
    {

      sub_100013334(a1, v44);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        sub_100003BFC();
        v23 = swift_slowAlloc();
        v47 = v23;
        *v22 = 136315138;
        v24 = v45;
        sub_1000034B4(v44, v45);
        sub_1000039EC();
        v25(v24);
        sub_1000034F8(v44);
        v26 = sub_1000077D8();
        v29 = sub_100004C50(v26, v27, v28);

        *(v22 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v20, v21, "Ingesting static metadata for %s", v22, 0xCu);
        sub_1000034F8(v23);
        sub_100004DE4();

        sub_100004DE4();
      }

      else
      {

        sub_1000034F8(v44);
      }

      sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
      sub_100065210();
      v40 = Dictionary.init(dictionaryLiteral:)();
      v41 = sub_1000034B4(a1, a1[3]);
      sub_10011C3B0(v41, v40, v18, __src);

      memcpy(a2, __src, 0xA8uLL);
    }

    else
    {
      sub_100013334(a1, v44);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        sub_100003BFC();
        v33 = swift_slowAlloc();
        v47 = v33;
        *v32 = 136315138;
        v34 = v45;
        sub_1000034B4(v44, v45);
        sub_1000039EC();
        v36 = v35(v34);
        v38 = v37;
        sub_1000034F8(v44);
        v39 = sub_100004C50(v36, v38, &v47);

        *(v32 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v31, "Undefined compile time metadata generator for %s", v32, 0xCu);
        sub_1000034F8(v33);
        sub_100004DE4();

        sub_100004DE4();
      }

      else
      {

        sub_1000034F8(v44);
      }

      sub_10011CEFC();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_100118B18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  sub_100002944();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002958();
  v10 = v9 - v8;
  if (qword_1001982F8 != -1)
  {
    sub_1000068F4(&qword_1001982F8);
  }

  v11 = sub_10000347C(v4, qword_10019E020);
  (*(v6 + 16))(v10, v11, v4);
  v13 = *v2;
  v12 = v2[1];

  sub_10002EB80(&qword_10019C920, &unk_100151C40);
  v30 = Dictionary.init(dictionaryLiteral:)();
  v29 = v4;
  v14 = v2[3];
  __chkstk_darwin(v30);
  v28 = v6;
  *(&v28 - 6) = a1;
  *(&v28 - 5) = v2;
  *(&v28 - 4) = &v30;
  *(&v28 - 3) = v13;
  *(&v28 - 2) = v12;
  *(&v28 - 1) = v10;

  sub_1001184F0(sub_100119FB4, (&v28 - 8), v14, sub_1000232F4);
  v16 = v15;

  v2[3] = v16;
  type metadata accessor for AssistantSuggestionPhraseProvider();
  v17 = static AssistantSuggestionPhraseProvider.getAppIntentSchemasBundle()();
  v18 = static AssistantSuggestionPhraseProvider.getPhrases(actions:assistantDomainsAndActionsToLoad:bundleIdentifier:phraseResourceBundle:)();

  v19 = sub_10006E80C(v18);
  v20 = v2[10];
  __chkstk_darwin(v19);
  sub_100005308();
  sub_1001184F0(sub_10011A4FC, v17, v20, sub_1000232F4);
  v22 = v21;

  v2[10] = v22;
  v24 = v2[9];
  __chkstk_darwin(v23);
  sub_100005308();
  sub_1001184F0(sub_10011B090, v22, v24, sub_1000232F4);
  v26 = v25;

  v2[9] = v26;
  return (*(v28 + 8))(v10, v29);
}

void sub_100118E48()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return;
  }

  while (1)
  {
    v3 = *(v35 + 112);
    v4 = sub_1000232F4(v3);
    v5 = 0;
    v6 = v3;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3 & 0xC000000000000001;
    v36 = v2;
    v34 = LNSystemProtocolIdentifierAssistantInvocableIntent;
LABEL_4:
    v39 = v1 + 32;
    v40 = v1 & 0xC000000000000001;
    v7 = v5;
    v38 = v1;
LABEL_5:
    if (v7 >= v2)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!__OFADD__(v7, 1))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32 < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v2 = v32;
    if (!v32)
    {
      return;
    }
  }

  v41 = v7 + 1;
  sub_10003818C(v7, v40 == 0, v1);
  v37 = v7;
  if (v40)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v8 = *(v39 + 8 * v7);
  }

  v9 = v8;
  v10 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (v4 != v10)
  {
    if (v43)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v42 + 16))
      {
        goto LABEL_39;
      }

      v11 = *(v6 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v13 = [v11 parentIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = [v9 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v19;

    if (v14 == v18 && v16 == v1)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_23:
    ++v10;
  }

  v22 = v44;
  v23 = [v9 systemProtocolMetadata];
  type metadata accessor for LNSystemProtocolIdentifier(0);
  sub_10002EB80(&qword_1001990B0, &qword_10014D050);
  sub_10011C15C(&qword_100198970, type metadata accessor for LNSystemProtocolIdentifier, &unk_10014CE38);
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = sub_1000232F4(v22);

  if (!v25)
  {
    if (!v24[2] || (, sub_10004B2BC(), v27 = v26, , (v27 & 1) == 0))
    {

      v7 = v41;
      v2 = v36;
      v1 = v38;
      if (v41 != v36)
      {
        goto LABEL_5;
      }

      return;
    }
  }

  v28 = [objc_allocWithZone(LNEmptySystemProtocolMetadata) init];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v24;
  sub_10011CD8C(v28, v34, isUniquelyReferenced_nonNull_native, &v44);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31 = [v9 actionMetadataWithSystemProtocolMetadata:isa];

  v1 = v38;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v1 = sub_1000FCD8C();
  }

  v2 = v36;
  if (v37 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v37 + 0x20);
  *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v37 + 0x20) = v31;

  *(v35 + 24) = v1;
  v5 = v41;
  if (v41 != v36)
  {
    goto LABEL_4;
  }
}

id sub_1001192B4@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, ValueMetadata **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v108 = a7;
  v115 = a3;
  v116 = a6;
  v111 = a5;
  v124 = a2;
  v12 = type metadata accessor for Logger();
  v112 = *(v12 - 8);
  v113 = v12;
  __chkstk_darwin(v12);
  v117 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AssistantPrebuiltIntent();
  v122 = *(v14 - 8);
  v123 = v14;
  __chkstk_darwin(v14);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002EB80(&qword_10019C950, &qword_100152568);
  __chkstk_darwin(v16 - 8);
  v121 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v103 - v19;
  v21 = type metadata accessor for AssistantSchemaVersion();
  __chkstk_darwin(v21 - 8);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AssistantSchemaIdentifier();
  v120 = *(v24 - 8);
  __chkstk_darwin(v24);
  v107 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  v29 = *a1;
  v30 = sub_10005628C(v29, &selRef_assistantDefinedSchemas, &qword_10019C940, LNAssistantDefinedSchemaConformance_ptr);
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = v30;
  if (!sub_1000232F4(v30))
  {

LABEL_8:
    *a8 = v29;
    return v29;
  }

  v104 = a8;
  sub_10003818C(0, (v31 & 0xC000000000000001) == 0, v31);
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v32 = *(v31 + 32);
  }

  v33 = v32;
  v118 = v28;
  v110 = v20;
  v105 = v24;

  v125 = sub_100056300(v33, &selRef_domain);
  v109 = v33;
  v106 = v8;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    sub_1000034B4(v124, v124[3]);
    v37 = [v33 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = dispatch thunk of PrebuiltMetadataProvider.getSchemaDomain(for:)();
    v35 = v38;

    if (!v35)
    {
      v35 = v115[20];
      v125 = v115[19];
    }
  }

  v114 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = *a4;
  v40 = v126;
  *a4 = 0x8000000000000000;
  sub_10000C2A0(v125, v35);
  Kind = v40[1].Kind;
  v43 = (v41 & 1) == 0;
  v44 = Kind + v43;
  if (__OFADD__(Kind, v43))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v45 = v41;
  sub_10002EB80(&qword_10019C958, &qword_100152570);
  v46 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v44);
  v47 = v126;
  if (v46)
  {
    sub_10000C2A0(v125, v35);
    if ((v45 & 1) != (v48 & 1))
    {
      goto LABEL_32;
    }
  }

  *a4 = v47;

  if ((v45 & 1) == 0)
  {
    sub_10006A09C();
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000FCDF4();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v49 = v109;
  v50 = [v109 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100119FD8(v23);

  AssistantSchemaIdentifier.init(kind:version:domain:)();
  sub_1000034B4(v124, v124[3]);
  v51 = [v49 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v110;
  dispatch thunk of PrebuiltMetadataProvider.getPrebuiltIntent(with:domain:)();

  v53 = v121;
  sub_10011C0F8(v52, v121, &qword_10019C950, &qword_100152568);
  v54 = v123;
  if (sub_1000032C4(v53, 1, v123) == 1)
  {
    sub_100003E9C(v53, &qword_10019C950, &qword_100152568);
    v126 = &type metadata for ApplicationMetadataExtractor;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      v55 = v117;
      Logger.init(subsystem:category:)();
      v56 = v114;

      v57 = v109;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v60 = 136315650;
        v61 = sub_100004C50(v125, v35, &v126);

        *(v60 + 4) = v61;
        *(v60 + 12) = 2080;
        v62 = [v57 name];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = sub_100004C50(v63, v65, &v126);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2080;
        v67 = [v56 identifier];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = sub_100004C50(v68, v70, &v126);

        *(v60 + 24) = v71;
        swift_arrayDestroy();

        (*(v112 + 8))(v117, v113);
      }

      else
      {

        (*(v112 + 8))(v55, v113);
      }

      sub_100003E9C(v110, &qword_10019C950, &qword_100152568);
      (*(v120 + 8))(v118, v105);
      *v104 = v56;
      return v56;
    }

    goto LABEL_31;
  }

  v72 = v119;
  (*(v122 + 32))(v119, v53, v54);
  v73 = v115[2];
  v74 = v105;
  if (v73 && (v75 = v73, v76 = [v114 identifier], v77 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v79 = v78, v76, LOBYTE(v76) = sub_10011A138(v75, v111, v116, v77, v79, &AssistantPrebuiltIntent.requiredEntitlements.getter), , v75, (v76 & 1) == 0))
  {

    (*(v122 + 8))(v72, v54);
    sub_100003E9C(v110, &qword_10019C950, &qword_100152568);
    result = (*(v120 + 8))(v118, v74);
    *v104 = 0;
  }

  else
  {
    v80 = v120;
    v81 = v107;
    (*(v120 + 16))(v107, v118, v74);
    v82 = v114;
    v83 = v116;

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = v125;
      *v86 = 136315650;
      sub_10011C15C(&qword_10019C960, &type metadata accessor for AssistantSchemaIdentifier, &protocol conformance descriptor for AssistantSchemaIdentifier);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v80;
      v90 = v89;
      v91 = *(v88 + 8);
      v91(v81, v105);
      v92 = sub_100004C50(v87, v90, &v126);

      *(v86 + 4) = v92;
      *(v86 + 12) = 2080;
      *(v86 + 14) = sub_100004C50(v111, v83, &v126);
      *(v86 + 22) = 2080;
      v93 = [v82 identifier];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = sub_100004C50(v94, v96, &v126);

      *(v86 + 24) = v97;
      _os_log_impl(&_mh_execute_header, v84, v85, "Applying %s to %s:%s", v86, 0x20u);
      swift_arrayDestroy();

      v74 = v105;
    }

    else
    {

      v91 = *(v80 + 8);
      v91(v81, v74);
    }

    v98 = v119;
    v99 = AssistantPrebuiltIntent.metadata.getter();
    v100 = v118;
    AssistantSchemaIdentifier.description.getter();
    v101 = String._bridgeToObjectiveC()();

    v102 = [v82 copyWithDescriptiveMetadataFromAction:v99 usingLibraryKey:v101];

    (*(v122 + 8))(v98, v123);
    sub_100003E9C(v110, &qword_10019C950, &qword_100152568);
    result = (v91)(v100, v74);
    *v104 = v102;
  }

  return result;
}

uint64_t sub_100119FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002EB80(&qword_10019C938, &qword_100152558);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = [v2 version];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AssistantSchemaVersion.init(_:)();
  v9 = type metadata accessor for AssistantSchemaVersion();
  if (sub_1000032C4(v7, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a1, v7, v9);
  }

  AssistantSchemaVersion.init(major:minor:patch:)();
  result = sub_1000032C4(v7, 1, v9);
  if (result != 1)
  {
    return sub_100003E9C(v7, &qword_10019C938, &qword_100152558);
  }

  return result;
}

uint64_t sub_10011A138(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  if (!*(v11 + 16))
  {

    return 1;
  }

  v31 = a4;
  v32 = a2;
  v33 = a5;
  v34 = a3;
  v13 = 0;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v18 = v13;
LABEL_10:
      v19 = (*(v12 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v19;
      v6 = v19[1];

      v21 = [a1 entitlements];
      v35 = v20;
      v22 = String._bridgeToObjectiveC()();
      sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
      v23 = [v21 objectForKey:v22 ofClass:swift_getObjCClassFromMetadata()];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      if (!*(&v39 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v24 = [v37 BOOLValue];

      if ((v24 & 1) == 0)
      {
        goto LABEL_22;
      }

      v16 &= v16 - 1;

      v13 = v18;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    sub_100003E9C(v40, &qword_1001992F0, &qword_10014E000);
LABEL_22:
    if (qword_1001982F8 == -1)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        return 1;
      }

      v16 = *(v12 + 56 + 8 * v18);
      ++v13;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  sub_1000068F4(&qword_1001982F8);
LABEL_23:
  v26 = type metadata accessor for Logger();
  sub_10000347C(v26, qword_10019E020);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    sub_100003BFC();
    v29 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v29 = 136446722;
    *(v29 + 4) = sub_100004C50(v31, v33, v40);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100004C50(v32, v34, v40);
    *(v29 + 22) = 2082;
    v30 = sub_100004C50(v35, v6, v40);

    *(v29 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v27, v28, "Skipping %{public}s because bundle '%{public}s' is missing the required entitlement '%{public}s'", v29, 0x20u);
    swift_arrayDestroy();
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {
  }

  return 0;
}

id sub_10011A590@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, void (*a11)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a12)(void), uint64_t a13, SEL *a14)
{
  v135 = a6;
  v136 = a4;
  v141 = a5;
  v139 = a3;
  type metadata accessor for Logger();
  sub_100002944();
  v137 = v20;
  v138 = v19;
  __chkstk_darwin(v19);
  sub_100002958();
  v140 = (v22 - v21);
  a7(0);
  sub_100002944();
  v144 = v24;
  v145 = v23;
  __chkstk_darwin(v23);
  v142 = &v125 - v25;
  v146 = a10;
  v26 = sub_10002EB80(a8, a10);
  __chkstk_darwin(v26 - 8);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v147 = &v125 - v30;
  v31 = type metadata accessor for AssistantSchemaVersion();
  __chkstk_darwin(v31 - 8);
  sub_100002958();
  v34 = v33 - v32;
  v35 = type metadata accessor for AssistantSchemaIdentifier();
  sub_100002944();
  v143 = v36;
  __chkstk_darwin(v37);
  v134 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v148 = &v125 - v40;
  v41 = *a1;
  v42 = sub_10005628C(*a1, &selRef_assistantDefinedSchemas, &qword_10019C940, LNAssistantDefinedSchemaConformance_ptr);
  if (!v42)
  {
    goto LABEL_8;
  }

  v43 = v42;
  if (!sub_1000232F4(v42))
  {

LABEL_8:
    *a9 = v41;
    return v41;
  }

  v132 = v35;
  v127 = a11;
  sub_10003818C(0, (v43 & 0xC000000000000001) == 0, v43);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v44 = *(v43 + 32);
  }

  v45 = v44;
  v131 = a8;
  v126 = a9;

  v133 = sub_100056300(v45, &selRef_domain);
  v129 = a2;
  v130 = v45;
  v128 = v41;
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v49 = a2[3];
    v133 = a2[4];
    sub_1000034B4(a2, v49);
    v50 = [v45 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = dispatch thunk of PrebuiltMetadataProvider.getSchemaDomain(for:)();
    v47 = v51;

    if (!v47)
    {
      v47 = *(v139 + 160);
      v133 = *(v139 + 152);
    }

    v45 = v130;
  }

  v52 = v45;
  v53 = [v45 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100119FD8(v34);

  v54 = v133;
  AssistantSchemaIdentifier.init(kind:version:domain:)();
  v55 = v129[3];
  v56 = v129[4];
  sub_1000034B4(v129, v55);
  v57 = [v52 name];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = v147;
  v127(v58, v60, v54, v47, v55, v56);

  v62 = v131;
  v63 = v146;
  sub_10011C0F8(v61, v28, v131, v146);
  v64 = v145;
  if (sub_1000032C4(v28, 1, v145) == 1)
  {
    sub_100003E9C(v28, v62, v63);
    v149 = &type metadata for ApplicationMetadataExtractor;
    sub_10002EB80(&qword_10019A250, &qword_10014DF40);
    String.init<A>(describing:)();
    result = LNLogSubsystem;
    v65 = v128;
    if (LNLogSubsystem)
    {
      String.init(cString:)();
      v66 = v140;
      Logger.init(subsystem:category:)();
      v67 = v65;

      v68 = v130;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        sub_100003BFC();
        v71 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *v71 = 136315650;
        v72 = sub_100004C50(v133, v47, &v149);

        *(v71 + 4) = v72;
        *(v71 + 12) = 2080;
        v73 = [v68 name];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = sub_100004C50(v74, v76, &v149);

        *(v71 + 14) = v77;
        *(v71 + 22) = 2080;
        v78 = [v67 identifier];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = sub_100004C50(v79, v81, &v149);

        *(v71 + 24) = v82;
        swift_arrayDestroy();
        sub_100004DE4();

        sub_100004DE4();

        (*(v137 + 8))(v140, v138);
        v84 = v146;
        v83 = v147;
        v85 = v131;
      }

      else
      {

        (*(v137 + 8))(v66, v138);
        v83 = v147;
        v85 = v62;
        v84 = v63;
      }

      sub_100003E9C(v83, v85, v84);
      v115 = sub_100011904();
      v116(v115);
      *v126 = v67;
      return v67;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v86 = v142;
    (*(v144 + 32))(v142, v28, v64);
    v87 = *(v139 + 16);
    v88 = v128;
    if (v87 && (v89 = v87, v90 = [v88 identifier], v91 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v93 = v92, v90, v94 = v91, v86 = v142, v95 = sub_10011A138(v89, v136, v141, v94, v93, a12), , v89, (v95 & 1) == 0))
    {

      (*(v144 + 8))(v86, v64);
      sub_100003E9C(v147, v62, v63);
      v123 = sub_100011904();
      result = v124(v123);
      *v126 = 0;
    }

    else
    {
      v139 = a13;
      v140 = a14;
      v96 = v143;
      (*(v143 + 16))(v134, v148, v132);
      v97 = v88;

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v98, v99))
      {
        sub_100003BFC();
        v100 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v149 = v138;
        *v100 = 136315650;
        v101 = AssistantSchemaIdentifier.description.getter();
        v103 = v102;
        v143 = *(v96 + 8);
        v104 = sub_100005064();
        v105(v104);
        v106 = sub_100004C50(v101, v103, &v149);

        *(v100 + 4) = v106;
        *(v100 + 12) = 2080;
        *(v100 + 14) = sub_100004C50(v136, v141, &v149);
        *(v100 + 22) = 2080;
        v107 = [v97 identifier];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        v111 = v108;
        v86 = v142;
        v112 = sub_100004C50(v111, v110, &v149);

        *(v100 + 24) = v112;
        _os_log_impl(&_mh_execute_header, v98, v99, "Applying %s to %s:%s", v100, 0x20u);
        swift_arrayDestroy();
        v113 = v143;
        sub_100004DE4();

        v63 = v146;
        sub_100004DE4();
      }

      else
      {

        v113 = *(v96 + 8);
        v117 = sub_100005064();
        v114 = v113(v117);
      }

      v118 = (v139)(v114);
      v119 = v148;
      AssistantSchemaIdentifier.description.getter();
      v120 = v86;
      v121 = String._bridgeToObjectiveC()();

      v122 = [v97 *v140];

      (*(v144 + 8))(v120, v145);
      sub_100003E9C(v147, v131, v63);
      result = (v113)(v119, v132);
      *v126 = v122;
    }
  }

  return result;
}

unint64_t sub_10011B124(char a1)
{
  if (!a1)
  {
    return 0xD000000000000033;
  }

  if (a1 == 1)
  {
    return 0xD00000000000003CLL;
  }

  return 0xD000000000000028;
}

uint64_t sub_10011B180()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019E5A0);
  sub_10000347C(v0, qword_10019E5A0);
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10011B234()
{
  v1 = 0;
  v2 = [v0 queries];
  sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 + 64;
  sub_100002BE8();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = _swiftEmptyDictionarySingleton;
  if (v7)
  {
    while (1)
    {
LABEL_6:
      v12 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v7)))));
      v13 = [v12 resultValueType];
      if (v10[2] && (sub_100045CE0(), (v15 & 1) != 0))
      {
        v16 = *(v10[7] + 8 * v14);
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014CE80;
      *(inited + 32) = v12;
      v18 = v16 >> 62;
      v96 = v13;
      if (v16 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_82;
      }

      v21 = v12;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      if (*(v22 + 16) >= *(v22 + 24) >> 1)
      {
        goto LABEL_83;
      }

      v23 = v9;
      swift_arrayInitWithCopy();

      ++*(v22 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v10;
      sub_100045CE0();
      v27 = v10[2];
      v28 = (v26 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_84;
      }

      v30 = v25;
      v31 = v26;
      sub_10002EB80(&qword_10019C9A8, &unk_100152588);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
      {
        v32 = v96;
        sub_100045CE0();
        if ((v31 & 1) != (v34 & 1))
        {
          sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
          goto LABEL_89;
        }

        v30 = v33;
      }

      else
      {
        v32 = v96;
      }

      v10 = v100;
      if (v31)
      {
        *(v100[7] + 8 * v30) = v16;
      }

      else
      {
        v100[(v30 >> 6) + 8] |= 1 << v30;
        *(v10[6] + 8 * v30) = v32;
        *(v10[7] + 8 * v30) = v16;
        v35 = v10[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_85;
        }

        v10[2] = v37;
      }

      v7 &= v7 - 1;
      v9 = v23;
      v4 = v3 + 64;
      if (!v7)
      {
        goto LABEL_2;
      }
    }

    if (!v18)
    {
      v22 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_19;
  }

  while (1)
  {
LABEL_2:
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v1;
    if (v7)
    {
      v1 = v11;
      goto LABEL_6;
    }
  }

  v38 = [v91 entities];
  sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = 0;
  v100 = _swiftEmptyArrayStorage;
  v41 = v39 + 64;
  sub_100002BE8();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v94 = v39;
  while (v44)
  {
LABEL_39:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = *(*(v39 + 56) + ((v40 << 9) | (8 * v48)));
    v50 = [v49 systemProtocolMetadata];
    type metadata accessor for LNSystemEntityProtocolIdentifier(0);
    sub_10002EB80(&qword_1001990B0, &qword_10014D050);
    sub_10011C15C(&qword_100198910, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_10014CCE4);
    v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v51 + 16) && (sub_10004B2BC(), (v52 & 1) != 0))
    {

      sub_100003D44(0, &unk_10019B460, LNEntityValueType_ptr);
      v53 = [v49 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = sub_1000AEC0C();
      if (v10[2] && (sub_100045CE0(), (v55 & 1) != 0))
      {

        v39 = v94;
      }

      else
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v39 = v94;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v47 >= v46)
    {

      v56 = v100;
      v57 = sub_1000232F4(v100);
      if (v57)
      {
        v58 = v57;
        v100 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v58 < 0)
        {
          goto LABEL_86;
        }

        v59 = 0;
        while (1)
        {
          v60 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_76;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v59 >= *(v56 + 16))
            {
              goto LABEL_80;
            }

            v61 = *(v56 + 8 * v59 + 32);
          }

          v62 = v61;
          v98 = v61;
          sub_10011BB8C(&v98, &v99);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v59;
          if (v60 == v58)
          {

            v63 = v100;
            goto LABEL_57;
          }
        }
      }

      v63 = _swiftEmptyArrayStorage;
LABEL_57:
      v64 = [v91 queries];
      v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = sub_1000232F4(v63);
      if (!v97)
      {
LABEL_73:

        return v65;
      }

      v66 = 0;
      v95 = v63 & 0xC000000000000001;
      v92 = v63 & 0xFFFFFFFFFFFFFF8;
      v93 = v63;
      while (1)
      {
        if (v95)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v66 >= *(v92 + 16))
          {
            goto LABEL_81;
          }

          v67 = *(v63 + 8 * v66 + 32);
        }

        v68 = v67;
        v69 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_77;
        }

        v70 = [v67 identifier];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v74 = v68;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v65;
        v76 = sub_10000C2A0(v71, v73);
        v78 = v65[2];
        v79 = (v77 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_78;
        }

        v81 = v76;
        v82 = v77;
        sub_10002EB80(&qword_10019B4A0, &qword_100150790);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v75, v80))
        {
          v83 = sub_10000C2A0(v71, v73);
          if ((v82 & 1) != (v84 & 1))
          {
            goto LABEL_89;
          }

          v81 = v83;
        }

        if (v82)
        {

          v65 = v100;
          v85 = v100[7];
          v86 = *(v85 + 8 * v81);
          *(v85 + 8 * v81) = v74;
        }

        else
        {
          v65 = v100;
          v100[(v81 >> 6) + 8] |= 1 << v81;
          v87 = (v65[6] + 16 * v81);
          *v87 = v71;
          v87[1] = v73;
          *(v65[7] + 8 * v81) = v74;

          v88 = v65[2];
          v36 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v36)
          {
            goto LABEL_79;
          }

          v65[2] = v89;
        }

        ++v66;
        v63 = v93;
        if (v69 == v97)
        {
          goto LABEL_73;
        }
      }
    }

    v44 = *(v41 + 8 * v47);
    ++v40;
    if (v44)
    {
      v40 = v47;
      goto LABEL_39;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);

  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}