void sub_10001FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v10 - 8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15);
  v65 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v50 - v18;
  __chkstk_darwin(v19);
  v55 = &v50 - v21;
  v51 = a2;
  if (a3 != a2)
  {
    v61 = (v20 + 32);
    v64 = (v20 + 56);
    v22 = *a4;
    v23 = (v20 + 48);
    v58 = (v20 + 8);
    v59 = v22;
    v24 = -1;
    if ((a5 & 1) == 0)
    {
      v24 = 1;
    }

    v56 = v23;
    v57 = v24;
    v25 = v22 + 8 * a3 - 8;
    v26 = a1 - a3;
LABEL_7:
    v53 = v25;
    v54 = a3;
    v27 = *(v59 + 8 * a3);
    v52 = v26;
    v28 = v55;
    while (1)
    {
      v29 = *v25;
      v30 = v27;
      v66 = v29;
      v63 = v30;
      v31 = [v30 creationDate];
      if (v31)
      {
        v32 = v31;
        v33 = v62;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = *v61;
        (*v61)(v14, v33, v15);
        v35 = *v64;
        (*v64)(v14, 0, 1, v15);
        v34(v28, v14, v15);
      }

      else
      {
        v35 = *v64;
        (*v64)(v14, 1, 1, v15);
        static Date.now.getter();
        if ((*v56)(v14, 1, v15) != 1)
        {
          sub_100007E14(v14, &qword_100142FE0, &unk_1000F8EC0);
        }
      }

      v36 = [v66 creationDate];
      if (v36)
      {
        v37 = v62;
        v38 = v36;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = *v61;
        v40 = v14;
        v41 = v60;
        v42 = v37;
        v28 = v55;
        (*v61)(v60, v42, v15);
        v35(v41, 0, 1, v15);
        v43 = v41;
        v14 = v40;
        v39(v65, v43, v15);
      }

      else
      {
        v44 = v60;
        v35(v60, 1, 1, v15);
        static Date.now.getter();
        if ((*v56)(v44, 1, v15) != 1)
        {
          sub_100007E14(v60, &qword_100142FE0, &unk_1000F8EC0);
        }
      }

      v45 = v65;
      v46 = Date.compare(_:)();
      v47 = *v58;
      (*v58)(v45, v15);
      v47(v28, v15);

      if (v46 != v57)
      {
LABEL_6:
        a3 = v54 + 1;
        v25 = v53 + 8;
        v26 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return;
        }

        goto LABEL_7;
      }

      if (!v59)
      {
        break;
      }

      v48 = *v25;
      v27 = *(v25 + 8);
      *v25 = v27;
      *(v25 + 8) = v48;
      v25 -= 8;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1000200DC(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_10001EF50(v10, v11, a1, v6, a2 & 1);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10001FC2C(0, v4, 1, a1, a2 & 1);
  }
}

uint64_t sub_1000201FC(unint64_t isUniquelyReferenced_nonNull_native, SEL *a2)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_41;
  }

  v2 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v30 = v2;
    v31 = isUniquelyReferenced_nonNull_native + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = *(v31 + 8 * v3);
      }

      v5 = isUniquelyReferenced_nonNull_native;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_native *a2];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000B730(v9, v10, v11);
        StringProtocol.precomposedStringWithCanonicalMapping.getter();

        v12 = StringProtocol.localizedUppercase.getter();
        v14 = v13;

        sub_10001E5C4(1, v12, v14, v15);
      }

      else
      {
        Substring.init(_:)();
      }

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      v19 = _swiftEmptyArrayStorage[2];
      if (v19)
      {
        v20 = 0;
        v21 = &_swiftEmptyArrayStorage[5];
        while (1)
        {
          v22 = *(v21 - 1) == v16 && *v21 == v18;
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v20;
          v21 += 2;
          if (v19 == v20)
          {
            v19 = 0;
            goto LABEL_22;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_10005CEF0(v4);
          v4 = isUniquelyReferenced_nonNull_native;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v20 >= v4[2])
        {
          goto LABEL_40;
        }

        v27 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v4[v20 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[v20 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v30;
        }
      }

      else
      {
LABEL_22:
        sub_10001D854(v16, v18, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100063048(0, v4[2] + 1, 1);
        }

        v24 = v4[2];
        v23 = v4[3];
        if (v24 >= v23 >> 1)
        {
          sub_100063048((v23 > 1), v24 + 1, 1);
        }

        v4[2] = v24 + 1;
        v25 = &v4[v24];
        v25[4] = _swiftEmptyArrayStorage;
        v26 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v25[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v3 == v2)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v29 = isUniquelyReferenced_nonNull_native;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_native = v29;
  }

  return 0;
}

uint64_t sub_100020604(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142FA0, &qword_1000F9620);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v11 = qword_10014FF90;
  swift_getKeyPath();
  v16[1] = v11;
  sub_1000208CC(&qword_100142FA8, type metadata accessor for MusicSubscriptionStatusController, &unk_1000FD054);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_100007FDC(v11 + v12, v10, &qword_100142FA0, &qword_1000F9620);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100007E14(v10, &qword_100142FA0, &qword_1000F9620);
    v13 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100007E14(v10, &qword_100142FA0, &qword_1000F9620);
    v14 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }
  }

  return sub_1000C3900(v13 | a1 | (a2 << 8), 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000208CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020914@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10001E16C(&unk_1000F6408, &qword_100142ED8);
}

void sub_100020998()
{
  *(*(v0 + 16) + qword_100142ED8) = *(v0 + 24);
}

uint64_t sub_1000209DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10001E088();
  a1[1] = v2;
}

uint64_t sub_100020A1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100019E8C(v1, v2);
}

uint64_t sub_100020A68()
{
  v1 = v0[4];
  v2 = (v0[2] + qword_100142EB8);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t getEnumTagSinglePayload for ViewConfiguration.ViewName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewConfiguration.ViewName(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100020CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143008;
  if (!qword_100143008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143008);
  }

  return result;
}

unint64_t sub_100020D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143010;
  if (!qword_100143010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143010);
  }

  return result;
}

unint64_t sub_100020DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143018;
  if (!qword_100143018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143018);
  }

  return result;
}

uint64_t sub_100020E1C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000D0C8(v0, qword_10014FF08);
  sub_10000BEC4(v0, qword_10014FF08);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100020E80()
{
  v0 = sub_100002D44(&qword_100142CC0, &qword_1000F6028);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_100002D44(&qword_100142CC8, &unk_1000F6030);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100141AA8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000BEC4(v6, qword_10014FF08);
  (*(v7 + 16))(v9, v10, v6);
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100021098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  v4 = type metadata accessor for IntentDonationManager();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v5 = type metadata accessor for IntentDonationIdentifier();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();
  v3[52] = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext();
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();

  return _swift_task_switch(sub_100021268, 0, 0);
}

uint64_t sub_100021268()
{
  v30 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 472) = sub_10000BEC4(v1, qword_10014FEA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    v6 = *(v0 + 448);
    v7 = *(v0 + 432);
    v28 = *(v0 + 352);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    *(v0 + 328) = v28;
    sub_100019A88(v9, v10, v11);
    AppIntent.systemContext.getter();
    IntentSystemContext.source.getter();
    (*(v6 + 8))(v4, v5);
    v12 = Optional.debugDescription.getter();
    v14 = v13;
    sub_100007E14(v7, &qword_100142878, &qword_1000F68E0);
    v15 = sub_1000BA1EC(v12, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Music Recognition request triggered by %s", v8, 0xCu);
    sub_100007E74(v9);
  }

  if (qword_100141B48 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 448);
  v16 = *(v0 + 456);
  v18 = *(v0 + 440);
  v19 = qword_10014FF28;
  v20 = type metadata accessor for MusicRecognizer(0);
  *(v0 + 280) = v20;
  *(v0 + 288) = &off_100136F18;
  *(v0 + 256) = v19;
  *(v0 + 296) = *(v0 + 352);
  *(v0 + 480) = sub_100019A88(v20, v21, v22);

  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v17 + 8))(v16, v18);
  v23 = swift_task_alloc();
  *(v0 + 488) = v23;
  *v23 = v0;
  v23[1] = sub_10002159C;
  v24 = *(v0 + 424);
  v25 = *(v0 + 352);
  v26 = *(v0 + 360);

  return sub_100021D28(v0 + 16, v0 + 256, v24, v25, v26);
}

uint64_t sub_10002159C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  sub_100007E14(*(v2 + 424), &qword_100142878, &qword_1000F68E0);
  if (v0)
  {
    v3 = sub_100021AD4;
  }

  else
  {
    sub_100007E74((v2 + 256));
    v3 = sub_1000216E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000216E8()
{
  v1 = *(v0 + 64);
  *(v0 + 208) = *(v0 + 48);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v2;
  sub_100002D44(&qword_100143068, &unk_1000F68F0);
  sub_100023200();
  v12 = *(v0 + 352);
  static IntentResult.result<A>(value:)();
  v3 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 208);
  *(v0 + 144) = v3;
  *(v0 + 160) = *(v0 + 240);
  v4 = *(v0 + 192);
  *(v0 + 96) = *(v0 + 176);
  *(v0 + 112) = v4;
  sub_100007E14(v0 + 96, &qword_100143068, &unk_1000F68F0);
  static IntentDonationManager.shared.getter();
  *(v0 + 312) = v12;
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  v6 = sub_100002D44(&qword_100143038, &qword_1000F68A8);
  v7 = sub_100004610(&qword_100143078, &qword_100143038, &qword_1000F68A8, &protocol conformance descriptor for IntentResultContainer<A, B, C, D>);
  *v5 = v0;
  v5[1] = sub_10002189C;
  v8 = *(v0 + 480);
  v9 = *(v0 + 408);
  v10 = *(v0 + 344);

  return IntentDonationManager.donate<A, B>(intent:result:)(v9, v0 + 312, v10, &type metadata for RecognizeMusicIntent, v6, v8, v7);
}

uint64_t sub_10002189C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *(*v1 + 368);
  *(*v1 + 512) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100021B88;
  }

  else
  {
    (*(v2[50] + 8))(v2[51], v2[49]);
    v6 = sub_100021A2C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100021A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021AD4()
{
  sub_100007E74((v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021B88()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IntentDonationManager unable to donate App Intent %@", v3, 0xCu);
    sub_100007E14(v4, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100021D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v5[22] = type metadata accessor for MusicRecognitionIntentConfiguration(0);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100021DC4, 0, 0);
}

uint64_t sub_100021DC4()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = v3[3];
  v6 = v3[4];
  v7 = sub_10000DC80(v3, v5);
  *(v0 + 120) = v5;
  *(v0 + 128) = *(v6 + 8);
  v8 = sub_100023284((v0 + 96));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  sub_100012CAC(v4, v1);
  IntentParameter.wrappedValue.getter();
  LOBYTE(v4) = *(v0 + 208);
  IntentParameter.wrappedValue.getter();
  v9 = *(v0 + 209);
  *(v1 + v2[5]) = v4;
  *(v1 + v2[6]) = v9;
  *(v1 + v2[7]) = 0;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_100021F30;
  v11 = *(v0 + 184);

  return sub_10002214C(v0 + 16, v0 + 96, v11);
}

uint64_t sub_100021F30()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_1000232E8(*(v2 + 184));
  if (v0)
  {
    v3 = sub_1000220DC;
  }

  else
  {
    sub_100007E74((v2 + 96));
    v3 = sub_10002205C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002205C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  v1[3] = *(v0 + 64);
  v1[4] = v2;
  v1[1] = v4;
  v1[2] = v3;
  *v1 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000220DC()
{
  sub_100007E74((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return _swift_task_switch(sub_100022170, 0, 0);
}

uint64_t sub_100022170()
{
  *(v0 + 120) = *sub_10000DC80(*(v0 + 104), *(*(v0 + 104) + 24));
  type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return _swift_task_switch(sub_100022218, v2, v1);
}

uint64_t sub_100022218()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for MusicRecognitionIntentConfiguration(0);
  v0[19] = v3;
  *(v2 + 24) = *(v1 + *(v3 + 20));
  v4 = *(v1 + *(v3 + 28));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1000222D0;
  v6 = v0[14];

  return sub_100054B0C(v4, v6);
}

uint64_t sub_1000222D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  *(v5 + 184) = a3;

  v6 = *(v4 + 144);
  v7 = *(v4 + 136);

  return _swift_task_switch(sub_1000223FC, v7, v6);
}

uint64_t sub_1000223FC()
{

  return _swift_task_switch(sub_100022464, 0, 0);
}

void sub_100022464()
{
  if (*(v0 + 184) == 255)
  {
    goto LABEL_28;
  }

  v1 = SHSession.Result.wasCancelled.getter();
  if (v1)
  {
    if (qword_100141D90 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BEC4(v4, qword_10014FFD0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Match attempt was cancelled so returning nil from the App Intent", v7, 2u);
    }

    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 96);
    v11 = *(v0 + 184);

    sub_1000120D0(v9, v8, v11);
    v10[3] = 0u;
    v10[4] = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    *v10 = 0u;
    goto LABEL_29;
  }

  if (!*(v0 + 184))
  {
    v13 = [*(v0 + 168) mediaItems];
    sub_100023398();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_14;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;
      v18 = *(v0 + 168);
      v17 = *(v0 + 176);
      v19 = *(v0 + 96);

      sub_100016C9C(v16, v0 + 16);

      sub_1000120D0(v18, v17, 0);
      *v19 = *(v0 + 16);
      v20 = *(v0 + 32);
      v21 = *(v0 + 48);
      v22 = *(v0 + 80);
      v19[3] = *(v0 + 64);
      v19[4] = v22;
      v19[1] = v20;
      v19[2] = v21;
      goto LABEL_29;
    }

    sub_1000120D0(*(v0 + 168), *(v0 + 176), 0);

    goto LABEL_28;
  }

  if (*(v0 + 184) != 1)
  {
    swift_errorRetain();
    v23 = _convertErrorToNSError(_:)();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    v27 = sub_10006CA70(&off_100134E78);
    sub_1000CD1A0(v24, v26, v27);
    v29 = v28;

    if (v29)
    {
    }

    else
    {
      v30 = [v23 code];
      if (v30 != 202)
      {
        sub_100023344(v30, v31, v32);
        swift_allocError();
        v34 = 2;
        goto LABEL_23;
      }
    }

    sub_100023344(v30, v31, v32);
    swift_allocError();
    v34 = 1;
LABEL_23:
    *v33 = v34;
    swift_willThrow();

    goto LABEL_24;
  }

  if ((*(*(v0 + 112) + *(*(v0 + 152) + 24)) & 1) == 0)
  {
    sub_1000120D0(*(v0 + 168), *(v0 + 176), 1u);
LABEL_28:
    v36 = *(v0 + 96);
    v36[3] = 0u;
    v36[4] = 0u;
    v36[1] = 0u;
    v36[2] = 0u;
    *v36 = 0u;
LABEL_29:
    v35 = *(v0 + 8);
    goto LABEL_30;
  }

  sub_100023344(v1, v2, v3);
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
LABEL_24:
  sub_1000120D0(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  v35 = *(v0 + 8);
LABEL_30:

  v35();
}

uint64_t sub_100022840(uint64_t a1)
{
  v1 = sub_100002D44(&qword_100143048, &qword_1000F68B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_100019A88(v8, v9, v10);
  IntentPrediction.init<>(displayRepresentation:)();
  sub_100004610(&qword_100143040, &qword_100143048, &qword_1000F68B0, &protocol conformance descriptor for IntentPrediction<A, B>);
  static IntentPredictionsBuilder.buildExpression<A>(_:)();
  v11 = *(v2 + 8);
  v11(v4, v1);
  static IntentPredictionsBuilder.buildBlock<A>(_:)();
  return (v11)(v7, v1);
}

unint64_t sub_1000229E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143020;
  if (!qword_100143020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143020);
  }

  return result;
}

unint64_t sub_100022A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143028;
  if (!qword_100143028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143028);
  }

  return result;
}

uint64_t sub_100022B14@<X0>(uint64_t a1@<X8>)
{
  if (qword_100141AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000BEC4(v2, qword_10014FF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100022BD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000789C;

  return sub_100021098(a1, v5, v4);
}

uint64_t sub_100022C80@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100022D7C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100022CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100019A88(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

uint64_t sub_100022D7C()
{
  v33 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002D44(&qword_100143050, &qword_1000F68B8);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = sub_100002D44(&qword_100143058, &unk_1000F68C0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142CC8, &unk_1000F6030);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v30 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = sub_100002D44(&qword_100143060, &qword_1000F68D0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = *(v12 + 56);
  v31 = v12 + 56;
  v29(v10, 0, 1, v11);
  v36 = 1;
  v13 = type metadata accessor for Bool.IntentDisplayName();
  v14 = *(v13 - 8);
  v27 = *(v14 + 56);
  v28 = v14 + 56;
  v27(v7, 1, 1, v13);
  v15 = type metadata accessor for IntentDialog();
  v16 = *(v15 - 8);
  v25 = *(v16 + 56);
  v26 = v16 + 56;
  v21[0] = v4;
  v25(v4, 1, 1, v15);
  v23 = enum case for InputConnectionBehavior.default(_:);
  v17 = *(v0 + 104);
  v21[1] = v0 + 104;
  v22 = v17;
  v18 = v32;
  v19 = v33;
  v17(v32);
  v24 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29(v10, 0, 1, v30);
  v35 = 0;
  v27(v7, 1, 1, v13);
  v25(v21[0], 1, 1, v15);
  v22(v18, v23, v19);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v24;
}

unint64_t sub_100023200()
{
  result = qword_100143070;
  if (!qword_100143070)
  {
    v1 = sub_100004370(&qword_100143068, &unk_1000F68F0);
    sub_10001645C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143070);
  }

  return result;
}

uint64_t *sub_100023284(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000232E8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRecognitionIntentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143080;
  if (!qword_100143080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143080);
  }

  return result;
}

unint64_t sub_100023398()
{
  result = qword_100143088;
  if (!qword_100143088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100143088);
  }

  return result;
}

uint64_t sub_100023400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100023480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitPlaylist(uint64_t a1)
{
  result = qword_1001430F0;
  if (!qword_1001430F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002353C(uint64_t a1)
{
  result = type metadata accessor for Playlist();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000235A8()
{
  result = static Color.gray.getter();
  qword_100143090 = result;
  return result;
}

uint64_t sub_1000235C8()
{
  v0 = type metadata accessor for RoundedRectangle();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v34[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D44(&qword_100142D60, &qword_1000F6080);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ArtworkImage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100002D44(&qword_100143128, &unk_1000F6940);
  __chkstk_darwin(v9);
  v11 = &v34[-v10];
  Playlist.artwork.getter();
  ArtworkImage.init(_:)();
  type metadata accessor for ArtworkUnavailableView();
  sub_1000239FC();
  ArtworkImage.artworkPlaceholder<A>(_:)();
  (*(v6 + 8))(v8, v5);
  v12 = *(v1 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v3[v12], v13, v14);
  __asm { FMOV            V0.2D, #5.0 }

  *v3 = _Q0;
  if (qword_100141AB0 != -1)
  {
    swift_once();
  }

  v20 = qword_100143090;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = &v11[*(v9 + 36)];
  sub_100023A54(v3, v21);
  v22 = v21 + *(sub_100002D44(&qword_100143130, &qword_1000F6D80) + 36);
  v23 = v35;
  *v22 = *&v34[8];
  *(v22 + 16) = v23;
  *(v22 + 32) = v36;
  v24 = sub_100002D44(&qword_100143138, &qword_1000F6950);
  *(v21 + *(v24 + 52)) = v20;
  *(v21 + *(v24 + 56)) = 256;

  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_100023AB8(v3);
  v28 = (v21 + *(sub_100002D44(&qword_100143140, &qword_1000F6958) + 36));
  *v28 = v25;
  v28[1] = v27;
  *(v21 + *(sub_100002D44(&qword_100143148, &qword_1000F6960) + 36)) = 0x3FC999999999999ALL;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = (v21 + *(sub_100002D44(&qword_100143150, &qword_1000F6968) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_100023B14();
  return AnyView.init<A>(_:)();
}

unint64_t sub_1000239FC()
{
  result = qword_100142D98;
  if (!qword_100142D98)
  {
    type metadata accessor for ArtworkUnavailableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142D98);
  }

  return result;
}

uint64_t sub_100023A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023AB8(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100023B14()
{
  result = qword_100143158;
  if (!qword_100143158)
  {
    sub_100004370(&qword_100143128, &unk_1000F6940);
    type metadata accessor for ArtworkUnavailableView();
    sub_1000239FC();
    swift_getOpaqueTypeConformance2();
    sub_100023BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143158);
  }

  return result;
}

unint64_t sub_100023BD0()
{
  result = qword_100143160;
  if (!qword_100143160)
  {
    sub_100004370(&qword_100143150, &qword_1000F6968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143160);
  }

  return result;
}

void sub_100023C4C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() colorNamed:v0];

  if (v1)
  {
    qword_100143168 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100023CC8()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData;
    if (i != *(*&v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16))
    {
      sub_100023F14();
    }

    [v0 bounds];
    Width = CGRectGetWidth(v24);
    v6 = *&v0[v1];
    if (v6 >> 62)
    {
      v23 = Width;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      Width = v23;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(*&v0[v4] + 16);
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = Width / v7 * 0.5;
    while (1)
    {
      swift_beginAccess();
      v11 = *&v0[v1];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 8 * v9 + 32);
      }

      v13 = v12;
      swift_endAccess();
      v14 = *&v0[v4];
      if (v9 >= *(v14 + 16))
      {
        break;
      }

      v15 = v9 + 1;
      v16 = *(v14 + 4 * v9 + 32);
      [v0 bounds];
      v18 = v17 * v16;
      if (v16 >= 1.0)
      {
        v18 = v17;
      }

      if (v10 > v18)
      {
        v19 = v10;
      }

      else
      {
        v19 = v18;
      }

      v20 = [v13 layer];
      [v20 setBounds:{0.0, 0.0, v10, v19}];

      v21 = [v13 layer];
      [v21 setCornerRadius:v10 * 0.5];

      v9 = v15;
      if (v8 == v15)
      {
        return [v0 setNeedsDisplay];
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return [v0 setNeedsDisplay];
}

void sub_100023F14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v4 = *&v1[v2];
      v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v5)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == v5)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }
    }

LABEL_14:

    *&v1[v2] = _swiftEmptyArrayStorage;
  }

LABEL_15:
  for (i = *(*&v1[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16); i; --i)
  {
    v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v12 = [v11 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v11 layer];
    [v13 setAllowsEdgeAntialiasing:1];

    if (qword_100141AB8 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100143168];
    swift_beginAccess();
    v14 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v1 addSubview:v14];
  }
}

void sub_10002426C()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v1 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style;
  v2 = v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style];
  [v0 bounds];
  v4 = v3;
  v5 = &qword_100143000;
  v6 = OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews;
  if (v2)
  {
    swift_beginAccess();
    v7 = *&v0[v6];
    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v9 = 0.52;
  }

  else
  {
    swift_beginAccess();
    v10 = *&v0[v6];
    if (v10 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v4 + -2.0;
    v9 = 0.54;
  }

  v11 = *(*&v0[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v4 / v8;
    v4 = v13 * v9;
    v14 = v5[47];
    v15 = (v13 - v13 * v9) * 0.5;
    do
    {
      swift_beginAccess();
      v16 = *&v0[v14];
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          v8 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v17 = *(v16 + 8 * v12 + 32);
      }

      v5 = v17;
      v18 = v12 + 1;
      swift_endAccess();
      v19 = [v5 layer];
      [v19 setCornerRadius:v4 * 0.5];

      v20 = v13 * v12;
      v21 = v20 + 1.0;
      v22 = v15 + v4 * 0.5 + v20;
      if (v0[v1])
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      [v0 bounds];
      [v5 setCenter:{v23, CGRectGetMidY(v25)}];
      [v5 bounds];
      [v5 setBounds:{0.0, 0.0, v4}];

      ++v12;
    }

    while (v11 != v18);
  }
}

id sub_100024528(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData) = a2;

  return sub_100023CC8();
}

uint64_t getEnumTagSinglePayload for SpectralOutputWaveformStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpectralOutputWaveformStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001431B0;
  if (!qword_1001431B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001431B0);
  }

  return result;
}

void sub_1000247C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView;
  v12 = type metadata accessor for SpectralOutputWaveformView();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
  *&v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
  v13[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 0;
  v21.receiver = v13;
  v21.super_class = v12;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100023F14();

  *&v5[v11] = v14;
  v15 = [objc_opt_self() mainBundle];
  v16 = objc_allocWithZone(BSUICAPackageView);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithPackageName:v17 inBundle:v15];

  if (v18)
  {
    *&v5[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView] = v18;
    v20.receiver = v5;
    v20.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
    sub_100024968();
  }

  else
  {
    __break(1u);
  }
}

void sub_100024968()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = *&v0[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = String._bridgeToObjectiveC()();
  [v4 setAccessibilityIdentifier:v5];

  [v4 setClipsToBounds:1];
  v6 = String._bridgeToObjectiveC()();
  [v4 setState:v6];

  [v1 addSubview:v4];
  v28 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F6A30;
  v8 = [v2 centerXAnchor];
  v9 = [v1 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v2 centerYAnchor];
  v12 = [v1 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v2 heightAnchor];
  v15 = [v14 constraintEqualToConstant:24.0];

  *(v7 + 48) = v15;
  v16 = [v2 widthAnchor];
  v17 = [v16 constraintEqualToConstant:24.0];

  *(v7 + 56) = v17;
  v18 = [v4 centerXAnchor];
  v19 = [v1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v7 + 64) = v20;
  v21 = [v4 centerYAnchor];
  v22 = [v1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v7 + 72) = v23;
  v24 = [v4 heightAnchor];
  v25 = [v24 constraintEqualToConstant:24.0];

  *(v7 + 80) = v25;
  v26 = [v4 widthAnchor];
  v27 = [v26 constraintEqualToConstant:24.0];

  *(v7 + 88) = v27;
  sub_100025014();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

void sub_100024DE4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_waveformView;
  v6 = type metadata accessor for SpectralOutputWaveformView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_barViews] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_waveformData] = _swiftEmptyArrayStorage;
  v7[OBJC_IVAR____TtC16MusicRecognition26SpectralOutputWaveformView_style] = 0;
  v16.receiver = v7;
  v16.super_class = v6;
  v8 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100023F14();

  *&v2[v5] = v8;
  v9 = [objc_opt_self() mainBundle];
  v10 = objc_allocWithZone(BSUICAPackageView);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithPackageName:v11 inBundle:v9];

  if (v12)
  {
    *&v2[OBJC_IVAR____TtC16MusicRecognition21WaveformAccessoryView_listeningView] = v12;
    v15.receiver = v2;
    v15.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
    if (v13)
    {
      v14 = v13;
      sub_100024968();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100025014()
{
  result = qword_100143260;
  if (!qword_100143260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100143260);
  }

  return result;
}

uint64_t sub_100025074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100025100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NavigationBarButtonStyle(uint64_t a1)
{
  result = qword_1001432E0;
  if (!qword_1001432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000251C8(uint64_t a1)
{
  sub_100025234(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100025234(uint64_t a1)
{
  if (!qword_1001432F0)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1001432F0);
    }
  }
}

void sub_1000252A8()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_100143270 = v0;
}

uint64_t sub_1000252EC()
{
  result = static Color.secondary.getter();
  qword_100143278 = result;
  return result;
}

uint64_t sub_10002530C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = type metadata accessor for ColorScheme();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v72 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v60 - v4;
  v5 = type metadata accessor for BorderlessButtonStyle();
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  __chkstk_darwin(v5);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolVariants();
  v61 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ButtonStyleConfiguration.Label();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002D44(&qword_100143320, &qword_1000F6AD8);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v60 = sub_100002D44(&qword_100143328, &qword_1000F6AE0);
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v22 = &v60 - v21;
  v23 = sub_100002D44(&qword_100143330, &qword_1000F6AE8);
  v69 = *(v23 - 8);
  v70 = v23;
  __chkstk_darwin(v23);
  v75 = &v60 - v24;
  v66 = sub_100002D44(&qword_100143338, &qword_1000F6AF0);
  __chkstk_darwin(v66);
  v73 = &v60 - v25;
  ButtonStyleConfiguration.label.getter();
  static Font.Weight.bold.getter();
  sub_100025D40(&qword_100143340, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
  View.fontWeight(_:)();
  (*(v15 + 8))(v17, v14);
  v26 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v20[*(v18 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  static SymbolVariants.circle.getter();
  SymbolVariants.fill.getter();
  v29 = *(v61 + 8);
  v30 = v13;
  v31 = v64;
  v29(v30, v8);
  v32 = sub_100025BC0();
  View.symbolVariant(_:)();
  v33 = v10;
  v34 = v65;
  v29(v33, v8);
  sub_100025CD8(v20);
  v35 = v63;
  BorderlessButtonStyle.init()();
  v76 = v18;
  v77 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100025D40(&qword_100143350, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v36 = v35;
  v37 = v60;
  v38 = v67;
  View.buttonStyle<A>(_:)();
  (*(v68 + 8))(v36, v38);
  (*(v62 + 8))(v22, v37);
  v39 = [objc_opt_self() whiteColor];
  v68 = Color.init(uiColor:)();
  v40 = v71;
  sub_10004116C(v71);
  v41 = enum case for ColorScheme.light(_:);
  v42 = *(v31 + 104);
  v43 = v72;
  v42(v72, enum case for ColorScheme.light(_:), v34);
  v44 = v43;
  LOBYTE(v43) = static ColorScheme.== infix(_:_:)();
  v45 = *(v31 + 8);
  v46 = v44;
  v45(v44, v34);
  v47 = v40;
  v45(v40, v34);
  if (v43)
  {
    if (qword_100141AC0 != -1)
    {
      swift_once();
    }

    v48 = &qword_100143270;
  }

  else
  {
    if (qword_100141AC8 != -1)
    {
      swift_once();
    }

    v48 = &qword_100143278;
  }

  v49 = v73;
  v50 = *v48;

  (*(v69 + 32))(v49, v75, v70);
  v51 = (v49 + *(v66 + 36));
  *v51 = v68;
  v51[1] = v50;
  sub_10004116C(v47);
  v42(v46, v41, v34);
  v52 = static ColorScheme.== infix(_:_:)();
  v45(v46, v34);
  v45(v47, v34);
  if (v52)
  {
    if (qword_100141AC0 != -1)
    {
      swift_once();
    }

    v53 = &qword_100143270;
  }

  else
  {
    if (qword_100141AC8 != -1)
    {
      swift_once();
    }

    v53 = &qword_100143278;
  }

  v54 = *v53;

  v55 = swift_getKeyPath();
  v76 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  v57 = v74;
  sub_100025D90(v49, v74);
  result = sub_100002D44(&qword_100143358, &qword_1000F6B60);
  v59 = (v57 + *(result + 36));
  *v59 = v55;
  v59[1] = v56;
  return result;
}

unint64_t sub_100025BC0()
{
  result = qword_100143348;
  if (!qword_100143348)
  {
    sub_100004370(&qword_100143320, &qword_1000F6AD8);
    type metadata accessor for ButtonStyleConfiguration.Label();
    sub_100025D40(&qword_100143340, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143348);
  }

  return result;
}

uint64_t sub_100025CD8(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100143320, &qword_1000F6AD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100025D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100025D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100143338, &qword_1000F6AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025E04()
{
  result = qword_100143360;
  if (!qword_100143360)
  {
    sub_100004370(&qword_100143358, &qword_1000F6B60);
    sub_100025EBC();
    sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143360);
  }

  return result;
}

unint64_t sub_100025EBC()
{
  result = qword_100143368;
  if (!qword_100143368)
  {
    sub_100004370(&qword_100143338, &qword_1000F6AF0);
    sub_100004370(&qword_100143328, &qword_1000F6AE0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100004370(&qword_100143320, &qword_1000F6AD8);
    sub_100025BC0();
    swift_getOpaqueTypeConformance2();
    sub_100025D40(&qword_100143350, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143370, &qword_100143378, &qword_1000F6B68, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143368);
  }

  return result;
}

uint64_t sub_100026050(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100026120(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_1001421C0, &unk_1000F5330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AddToPlaylistView(uint64_t a1)
{
  result = qword_100143408;
  if (!qword_100143408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002621C(uint64_t a1)
{
  sub_100026300(319, &unk_100143418, type metadata accessor for AddToPlaylistViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_100026300(319, &qword_100142248, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100026300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100026380@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v145 = *(v1 + 8);
  sub_100002D44(&qword_100143448, &qword_1000F6BE8);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v144 = v154;
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel, &unk_1000F8C40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  sub_10002CEB0(v154 + v4, &v154);

  v5 = v154;
  v143 = a1;
  if (v154)
  {
    if (v154 == 1)
    {
      v138 = &v128;
      v142 = sub_100002D44(&qword_100143550, &qword_1000F6CC8);
      v141 = *(v142 - 1);
      __chkstk_darwin(v142);
      v140 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      __chkstk_darwin(v7);
      v9 = &v128 - v8;
      v135 = LocalizedStringKey.init(stringLiteral:)();
      v137 = v10;
      LODWORD(v139) = v11;
      v13 = v12;
      v14 = type metadata accessor for AddToPlaylistView(0);
      v136 = &v128;
      v15 = *(v14 - 8);
      v16 = *(v15 + 64);
      __chkstk_darwin(v14 - 8);
      sub_10002D580(v2, &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for MainActor();
      v17 = static MainActor.shared.getter();
      v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(v19 + 24) = &protocol witness table for MainActor;
      sub_10002D710(&v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
      v134 = type metadata accessor for TaskPriority();
      v20 = *(v134 - 1);
      v21 = *(v20 + 64);
      __chkstk_darwin(v134);
      v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = &v128 - v22;
      static TaskPriority.userInitiated.getter();
      if (sub_1000EEF04(2, 26, 4, 0))
      {
        v131 = type metadata accessor for _TaskModifier2();
        v132 = &v128;
        v130 = *(v131 - 8);
        __chkstk_darwin(v131);
        v133 = &v128;
        v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v144 = 0;
        v145 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v144 = 0xD000000000000035;
        v145 = 0x8000000100100500;
        *&v152[0] = 48;
        v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v13;
        String.append(_:)(v26);

        v129 = &v128;
        v28 = __chkstk_darwin(v27);
        v29 = &v128 - v22;
        v30 = &v128 - v22;
        v31 = v134;
        (*(v20 + 16))(v29, v30, v134, v28);
        _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
        (*(v20 + 8))(v23, v31);
        v32 = sub_100002D44(&qword_100141DF8, &unk_1000F4520);
        (*(v130 + 32))(&v9[*(v32 + 36)], v25, v131);
        v33 = v137;
        *v9 = v135;
        *(v9 + 1) = v33;
        v9[16] = v139 & 1;
        *(v9 + 3) = v128;
      }

      else
      {
        v90 = &v9[*(sub_100002D44(&qword_100141E00, &qword_1000F6CF0) + 36)];
        v91 = type metadata accessor for _TaskModifier();
        (*(v20 + 32))(&v90[*(v91 + 20)], &v128 - v22, v134);
        *v90 = &unk_1000F6CE0;
        *(v90 + 1) = v19;
        v92 = v137;
        *v9 = v135;
        *(v9 + 1) = v92;
        v9[16] = v139 & 1;
        *(v9 + 3) = v13;
      }

      v93 = v141;
      v94 = v140;
      v95 = v9;
      v96 = v142;
      (v141[4])(v140, v95, v142);
      v136 = sub_100002D44(&qword_100143468, &qword_1000F6C28);
      v137 = &v128;
      __chkstk_darwin(v136);
      v139 = &v128 - v97;
      v98 = sub_100002D44(&qword_100143548, &qword_1000F6CC0);
      v133 = &v128;
      v99 = __chkstk_darwin(v98);
      (v93[2])(&v128 - v100, v94, v96, v99);
      swift_storeEnumTagMultiPayload();
      v101 = sub_100002D44(&qword_100143540, &qword_1000F6CB8);
      v104 = sub_10002D0E0(v101, v102, v103);
      v144 = &type metadata for LoadingView;
      v145 = v104;
      swift_getOpaqueTypeConformance2();
      v105 = sub_100004370(&qword_100143480, &qword_1000F6C30);
      v106 = sub_100004370(&qword_100143488, &qword_1000F6C38);
      v132 = v106;
      v107 = sub_100004370(&qword_100143490, &qword_1000F6C40);
      v108 = sub_100004370(&qword_100143498, &qword_1000F6C48);
      v109 = sub_100004610(&qword_1001434A0, &qword_100143498, &qword_1000F6C48, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
      v144 = v108;
      v145 = v109;
      v135 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v144 = v107;
      v145 = OpaqueTypeConformance2;
      v134 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
      v111 = swift_getOpaqueTypeConformance2();
      v131 = sub_10002D134();
      v144 = v105;
      v145 = v106;
      v146 = v111;
      v147 = v131;
      swift_getOpaqueTypeConformance2();
      v112 = v139;
      _ConditionalContent<>.init(storage:)();
      v113 = sub_100002D44(&qword_100143460, &qword_1000F6C20);
      v133 = &v128;
      __chkstk_darwin(v113);
      sub_100007FDC(v112, &v128 - v114, &qword_100143468, &qword_1000F6C28);
      swift_storeEnumTagMultiPayload();
      v130 = sub_100002D44(&qword_100143458, &qword_1000F6C18);
      v129 = sub_10002CF0C();
      v115 = sub_100004370(&qword_1001434D8, &qword_1000F6C70);
      v116 = sub_100004370(&qword_1001434E0, &qword_1000F6C78);
      v117 = sub_100004370(&qword_1001434E8, &qword_1000F6C80);
      v118 = sub_100004370(&qword_1001434F0, &qword_1000F6C88);
      v119 = sub_100004370(&qword_1001434F8, &qword_1000F6C90);
      v120 = sub_100004370(&qword_100143500, &qword_1000F6C98);
      v121 = sub_10002D410();
      v122 = sub_10002D4F4();
      v123 = type metadata accessor for InsetListStyle();
      v144 = v118;
      v145 = v123;
      v146 = v121;
      v147 = &protocol witness table for InsetListStyle;
      v124 = swift_getOpaqueTypeConformance2();
      v144 = v118;
      v145 = &type metadata for Solarium;
      v146 = v119;
      v147 = v120;
      v148 = v121;
      v149 = &protocol witness table for Solarium;
      v150 = v122;
      v151 = v124;
      v125 = swift_getOpaqueTypeConformance2();
      v144 = v117;
      v145 = v125;
      v126 = swift_getOpaqueTypeConformance2();
      v144 = v116;
      v145 = v126;
      v127 = swift_getOpaqueTypeConformance2();
      v144 = v115;
      v145 = v132;
      v146 = v127;
      v147 = v131;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v139, &qword_100143468, &qword_1000F6C28);
      return (v141[1])(v140, v142);
    }

    else
    {
      v152[0] = v155;
      v152[1] = v156;
      v153 = v157;
      v71 = sub_100002D44(&qword_100143458, &qword_1000F6C18);
      v142 = &v128;
      v72 = *(v71 - 8);
      __chkstk_darwin(v71);
      v74 = &v128 - v73;
      sub_1000282A8(v5, v152, &v128 - v73);

      v75 = sub_100002D44(&qword_100143460, &qword_1000F6C20);
      v141 = &v128;
      v76 = __chkstk_darwin(v75);
      (*(v72 + 16))(&v128 - v77, v74, v71, v76);
      swift_storeEnumTagMultiPayload();
      v140 = sub_100002D44(&qword_100143468, &qword_1000F6C28);
      v139 = sub_10002CF0C();
      v138 = sub_100004370(&qword_1001434D8, &qword_1000F6C70);
      v137 = sub_100004370(&qword_100143488, &qword_1000F6C38);
      v136 = sub_100004370(&qword_1001434E0, &qword_1000F6C78);
      v78 = sub_100004370(&qword_1001434E8, &qword_1000F6C80);
      v79 = sub_100004370(&qword_1001434F0, &qword_1000F6C88);
      v80 = sub_100004370(&qword_1001434F8, &qword_1000F6C90);
      v81 = sub_100004370(&qword_100143500, &qword_1000F6C98);
      v82 = sub_10002D410();
      v83 = sub_10002D4F4();
      v84 = type metadata accessor for InsetListStyle();
      v144 = v79;
      v145 = v84;
      v146 = v82;
      v147 = &protocol witness table for InsetListStyle;
      v85 = swift_getOpaqueTypeConformance2();
      v144 = v79;
      v145 = &type metadata for Solarium;
      v146 = v80;
      v147 = v81;
      v148 = v82;
      v149 = &protocol witness table for Solarium;
      v150 = v83;
      v151 = v85;
      v86 = swift_getOpaqueTypeConformance2();
      v144 = v78;
      v145 = v86;
      v87 = swift_getOpaqueTypeConformance2();
      v144 = v136;
      v145 = v87;
      v88 = swift_getOpaqueTypeConformance2();
      v89 = sub_10002D134();
      v144 = v138;
      v145 = v137;
      v146 = v88;
      v147 = v89;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      (*(v72 + 8))(v74, v71);
      return sub_100007E14(v152, &qword_100143538, &qword_1000F6CB0);
    }
  }

  else
  {
    v34 = sub_100002D44(&qword_100143540, &qword_1000F6CB8);
    v141 = &v128;
    v138 = *(v34 - 8);
    v35 = v138;
    __chkstk_darwin(v34);
    v37 = &v128 - v36;
    v137 = &v128 - v36;
    sub_100027D9C(&v128 - v36);
    v139 = sub_100002D44(&qword_100143468, &qword_1000F6C28);
    v140 = &v128;
    __chkstk_darwin(v139);
    v142 = (&v128 - v38);
    v39 = sub_100002D44(&qword_100143548, &qword_1000F6CC0);
    v133 = &v128;
    v40 = __chkstk_darwin(v39);
    Kind = v35[1].Kind;
    v136 = v34;
    Kind(&v128 - v42, v37, v34, v40);
    swift_storeEnumTagMultiPayload();
    v43 = sub_100002D44(&qword_100143550, &qword_1000F6CC8);
    v46 = sub_10002D0E0(v43, v44, v45);
    v144 = &type metadata for LoadingView;
    v145 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = sub_100004370(&qword_100143480, &qword_1000F6C30);
    v48 = sub_100004370(&qword_100143488, &qword_1000F6C38);
    v132 = v48;
    v49 = sub_100004370(&qword_100143490, &qword_1000F6C40);
    v50 = sub_100004370(&qword_100143498, &qword_1000F6C48);
    v51 = sub_100004610(&qword_1001434A0, &qword_100143498, &qword_1000F6C48, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    v144 = v50;
    v145 = v51;
    v135 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
    v52 = swift_getOpaqueTypeConformance2();
    v144 = v49;
    v145 = v52;
    v134 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
    v53 = swift_getOpaqueTypeConformance2();
    v131 = sub_10002D134();
    v144 = v47;
    v145 = v48;
    v146 = v53;
    v147 = v131;
    swift_getOpaqueTypeConformance2();
    v54 = v142;
    _ConditionalContent<>.init(storage:)();
    v55 = sub_100002D44(&qword_100143460, &qword_1000F6C20);
    v133 = &v128;
    __chkstk_darwin(v55);
    sub_100007FDC(v54, &v128 - v56, &qword_100143468, &qword_1000F6C28);
    swift_storeEnumTagMultiPayload();
    v130 = sub_100002D44(&qword_100143458, &qword_1000F6C18);
    v129 = sub_10002CF0C();
    v57 = sub_100004370(&qword_1001434D8, &qword_1000F6C70);
    v58 = sub_100004370(&qword_1001434E0, &qword_1000F6C78);
    v59 = sub_100004370(&qword_1001434E8, &qword_1000F6C80);
    v60 = sub_100004370(&qword_1001434F0, &qword_1000F6C88);
    v61 = sub_100004370(&qword_1001434F8, &qword_1000F6C90);
    v62 = sub_100004370(&qword_100143500, &qword_1000F6C98);
    v63 = sub_10002D410();
    v64 = sub_10002D4F4();
    v65 = type metadata accessor for InsetListStyle();
    v144 = v60;
    v145 = v65;
    v146 = v63;
    v147 = &protocol witness table for InsetListStyle;
    v66 = swift_getOpaqueTypeConformance2();
    v144 = v60;
    v145 = &type metadata for Solarium;
    v146 = v61;
    v147 = v62;
    v148 = v63;
    v149 = &protocol witness table for Solarium;
    v150 = v64;
    v151 = v66;
    v67 = swift_getOpaqueTypeConformance2();
    v144 = v59;
    v145 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v144 = v58;
    v145 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v144 = v57;
    v145 = v132;
    v146 = v69;
    v147 = v131;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v142, &qword_100143468, &qword_1000F6C28);
    return (v138->Description)(v137, v136);
  }
}

uint64_t sub_100027A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100027B34, v5, v4);
}

uint64_t sub_100027B34()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_100002D44(&qword_100143448, &qword_1000F6BE8);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100027BF8;

  return sub_1000647E4();
}

uint64_t sub_100027BF8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100027D3C, v3, v2);
}

uint64_t sub_100027D3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027D9C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100143498, &qword_1000F6C48);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_100002D44(&qword_100143490, &qword_1000F6C40);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v31 = sub_100002D44(&qword_100143480, &qword_1000F6C30);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v25 - v10;
  v36 = v1;
  sub_100002D44(&qword_100143558, &qword_1000F6CF8);
  sub_10002D858();
  ContentUnavailableView.init(label:description:actions:)();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v17 = sub_100004610(&qword_1001434A0, &qword_100143498, &qword_1000F6C48, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
  View.navigationTitle(_:)();
  sub_10000BFBC(v12, v14, v16 & 1);

  (*(v26 + 8))(v5, v3);
  v18 = v29;
  v19 = v30;
  v20 = v32;
  (*(v30 + 104))(v29, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v32);
  v37 = v3;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v27;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v19 + 8))(v18, v20);
  (*(v28 + 8))(v9, v22);
  v35 = v25;
  sub_100002D44(&qword_100143488, &qword_1000F6C38);
  v37 = v22;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10002D134();
  v23 = v31;
  View.toolbar<A>(content:)();
  return (*(v33 + 8))(v11, v23);
}

uint64_t sub_1000282A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v49 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_1001434F0, &qword_1000F6C88);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v41 = sub_100002D44(&qword_1001434E8, &qword_1000F6C80);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v35 - v10;
  v43 = sub_100002D44(&qword_1001434E0, &qword_1000F6C78);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v35 - v11;
  v45 = sub_100002D44(&qword_1001434D8, &qword_1000F6C70);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v35 - v12;
  v53 = a2;
  v54 = v3;
  v40 = v3;
  v55 = a1;
  sub_10002A474(sub_10002DC34, v52, v9);
  Solarium.init()();
  v13 = sub_100002D44(&qword_1001434F8, &qword_1000F6C90);
  v36 = sub_100002D44(&qword_100143500, &qword_1000F6C98);
  v14 = sub_10002D410();
  v15 = sub_10002D4F4();
  v16 = type metadata accessor for InsetListStyle();
  v56 = v7;
  v57 = v16;
  v58 = v14;
  v59 = &protocol witness table for InsetListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v13;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_100007E14(v9, &qword_1001434F0, &qword_1000F6C88);
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  LOBYTE(v13) = v22;
  v56 = v7;
  v57 = &type metadata for Solarium;
  v58 = v18;
  v59 = v36;
  v60 = v14;
  v61 = &protocol witness table for Solarium;
  v62 = v15;
  v63 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v38;
  v25 = v41;
  v26 = v37;
  View.navigationTitle(_:)();
  sub_10000BFBC(v19, v21, v13 & 1);

  (*(v42 + 8))(v26, v25);
  v27 = v48;
  v28 = v47;
  v29 = v49;
  (*(v48 + 104))(v47, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v49);
  v56 = v25;
  v57 = v23;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  v32 = v43;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v27 + 8))(v28, v29);
  (*(v44 + 8))(v24, v32);
  v51 = v40;
  sub_100002D44(&qword_100143488, &qword_1000F6C38);
  v56 = v32;
  v57 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10002D134();
  v33 = v45;
  View.toolbar<A>(content:)();
  return (*(v46 + 8))(v31, v33);
}

uint64_t sub_100028950@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000BFBC(v2, v4, v6 & 1);

  v12 = Text.bold()();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000BFBC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100028A80@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static HierarchicalShapeStyle.secondary.getter();
  v7 = Text.foregroundStyle<A>(_:)();
  v9 = v8;
  v11 = v10;
  sub_10000BFBC(v2, v4, v6 & 1);

  static Font.subheadline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10000BFBC(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_100028BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddToPlaylistView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002D580(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10002D710(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_100002D44(&qword_1001435A0, &qword_1000F6D60);
  sub_10002DA6C();
  Button.init(action:label:)();
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  result = sub_100002D44(&qword_100143558, &qword_1000F6CF8);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_100028D30(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OpenURLAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AddToPlaylistView(0);
  sub_100041144(v9);
  v10 = a1[1];
  v12[2] = *a1;
  v12[3] = v10;
  sub_100002D44(&qword_100143448, &qword_1000F6BE8);
  State.wrappedValue.getter();
  (*(v3 + 16))(v5, v12[1] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_appleMusicBaseURL, v2);

  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

double sub_100028F14@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.horizontal.getter();
  v10 = v6 & 1;
  LOBYTE(v35) = v6 & 1;
  v11 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = (a1 + *(sub_100002D44(&qword_1001435A0, &qword_1000F6D60) + 36));
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #3.0 }

  *v20 = _Q0;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v29 = &v20[*(sub_100002D44(&qword_100143130, &qword_1000F6D80) + 36)];
  *v29 = v35;
  *(v29 + 1) = v36;
  *(v29 + 4) = v37;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = &v20[*(sub_100002D44(&qword_1001435D8, &qword_1000F6D78) + 36)];
  *v33 = v30;
  v33[1] = v32;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = v15;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_100029124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v48 = a1;
  v56 = a4;
  v5 = sub_100002D44(&qword_100143610, &qword_1000F6DA0);
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = &v44 - v6;
  v49 = sub_100002D44(&qword_100143618, &qword_1000F6DA8);
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v12 = sub_100002D44(&qword_100143620, &qword_1000F6DB0);
  __chkstk_darwin(v12);
  v47 = sub_100002D44(&qword_100143628, &qword_1000F6DB8);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v44 - v13;
  v15 = sub_100002D44(&qword_100143630, &qword_1000F6DC0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = sub_100002D44(&qword_100143638, &qword_1000F6DC8);
  __chkstk_darwin(v19 - 8);
  v50 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = sub_100007FDC(v48, &v58, &qword_100143538, &qword_1000F6CB0);
  v57 = v23;
  if (*(&v59 + 1))
  {
    v44 = &v44;
    v62[0] = v58;
    v62[1] = v59;
    v63 = v60;
    __chkstk_darwin(v24);
    *(&v44 - 2) = v62;
    *(&v44 - 1) = a2;
    sub_100029AC0();
    sub_100002D44(&qword_100143658, &qword_1000F6DD8);
    v45 = v15;
    v25 = sub_100004370(&qword_1001435C8, &qword_1000F6D70);
    v48 = a2;
    v26 = v25;
    v27 = sub_10002DBB0();
    *&v58 = &type metadata for Text;
    *(&v58 + 1) = &type metadata for Solarium;
    *&v59 = v26;
    *(&v59 + 1) = &protocol witness table for Text;
    v60 = &protocol witness table for Solarium;
    v61 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10002DF14();
    v23 = v57;
    Section<>.init(header:content:)();
    static VerticalEdge.Set.all.getter();
    sub_10002E02C(&qword_100143678, &qword_100143628, &qword_1000F6DB8, sub_10002DF14);
    a2 = v48;
    v28 = v47;
    View.listSectionSeparator(_:edges:)();
    (*(v46 + 8))(v14, v28);
    v29 = v45;
    (*(v16 + 32))(v23, v18, v45);
    (*(v16 + 56))(v23, 0, 1, v29);
    v30 = sub_10002E120(v62);
  }

  else
  {
    sub_100007E14(&v58, &qword_100143538, &qword_1000F6CB0);
    v30 = (*(v16 + 56))(v23, 1, 1, v15);
  }

  __chkstk_darwin(v30);
  *(&v44 - 2) = v51;
  *(&v44 - 1) = a2;
  sub_10002A21C();
  sub_100002D44(&qword_100143640, &qword_1000F6DD0);
  v31 = sub_100004370(&qword_1001435C8, &qword_1000F6D70);
  v32 = sub_10002DBB0();
  *&v58 = &type metadata for Text;
  *(&v58 + 1) = &type metadata for Solarium;
  *&v59 = v31;
  *(&v59 + 1) = &protocol witness table for Text;
  v60 = &protocol witness table for Solarium;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  sub_10002DE90();
  v33 = v52;
  Section<>.init(header:content:)();
  static VerticalEdge.Set.all.getter();
  sub_10002E02C(&qword_100143668, &qword_100143610, &qword_1000F6DA0, sub_10002DE90);
  v34 = v53;
  v35 = v55;
  View.listSectionSeparator(_:edges:)();
  (*(v54 + 8))(v33, v35);
  v36 = v50;
  sub_100007FDC(v23, v50, &qword_100143638, &qword_1000F6DC8);
  v37 = *(v7 + 16);
  v38 = v9;
  v39 = v49;
  v37(v9, v34, v49);
  v40 = v56;
  sub_100007FDC(v36, v56, &qword_100143638, &qword_1000F6DC8);
  v41 = sub_100002D44(&qword_100143670, &unk_1000F6DE0);
  v37((v40 + *(v41 + 48)), v38, v39);
  v42 = *(v7 + 8);
  v42(v34, v39);
  sub_100007E14(v57, &qword_100143638, &qword_1000F6DC8);
  v42(v38, v39);
  return sub_100007E14(v36, &qword_100143638, &qword_1000F6DC8);
}

uint64_t sub_100029944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002E174(a1, v18);
  sub_10002D580(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002E174(a1, v16);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v9 = sub_10002D710(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v10 = v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v16[1];
  *v10 = v16[0];
  *(v10 + 16) = v11;
  *(v10 + 32) = v17;
  v18[40] = 0;
  v19 = sub_10002E1D4;
  v20 = v8;
  sub_10002DFD0(v9, v12, v13);
  View.accessibilityIdentifier(_:)();
  return sub_10002E1F4(v18);
}

uint64_t sub_100029AC0()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000BFBC(v0, v2, v4 & 1);

  static Color.primary.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  Solarium.init()();
  v15 = sub_100002D44(&qword_1001435C8, &qword_1000F6D70);
  v16 = sub_10002DBB0();
  View.staticIf<A, B>(_:then:)(v16, sub_10002F4A8, 0, &type metadata for Text, &type metadata for Solarium, v15, &protocol witness table for Text, &protocol witness table for Solarium, v16);
  sub_10000BFBC(v10, v12, v14 & 1);
}

uint64_t sub_100029C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002E358(a1);
  v12[1] = v7;
  swift_getKeyPath();
  sub_10002D580(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_10002D710(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10002E68C;
  *(v10 + 24) = v9;

  sub_100002D44(&qword_100143680, &qword_1000F6E30);
  sub_100002D44(&qword_100143658, &qword_1000F6DD8);
  sub_100004610(&qword_100143688, &qword_100143680, &qword_1000F6E30, &protocol conformance descriptor for [A]);
  sub_10002DF14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100029E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AddToPlaylistView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10002E174(a2, v22);
  LOBYTE(a3) = *(a3 + 16) - 1 != a1;
  sub_10002D580(a4, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002E174(a2, v20);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = sub_10002D710(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v14 = v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = v20[1];
  *v14 = v20[0];
  *(v14 + 16) = v15;
  *(v14 + 32) = v21;
  v22[40] = a3;
  v23 = sub_10002E8B8;
  v24 = v12;
  sub_10002DFD0(v13, v16, v17);
  View.accessibilityIdentifier(_:)();
  return sub_10002E1F4(v22);
}

double sub_10002A010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AddToPlaylistView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = a2[3];
  v14 = a2[4];
  sub_10000DC80(a2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v17 = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  sub_10002D580(a1, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = &protocol witness table for MainActor;
  sub_10002D710(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = (v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v15;
  v22[1] = v17;
  sub_1000C8AF8(0, 0, v12, a4, v21);

  return result;
}

uint64_t sub_10002A21C()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.Weight.semibold.getter();
  v5 = Text.fontWeight(_:)();
  v7 = v6;
  v9 = v8;
  sub_10000BFBC(v0, v2, v4 & 1);

  static Color.primary.getter();
  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v5, v7, v9 & 1);

  Solarium.init()();
  v15 = sub_100002D44(&qword_1001435C8, &qword_1000F6D70);
  v16 = sub_10002DBB0();
  View.staticIf<A, B>(_:then:)(v16, sub_10002F4A8, 0, &type metadata for Text, &type metadata for Solarium, v15, &protocol witness table for Text, &protocol witness table for Solarium, v16);
  sub_10000BFBC(v10, v12, v14 & 1);
}

uint64_t sub_10002A3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = static Edge.Set.top.getter();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  sub_100003B04(v3, v4, v5);
}

uint64_t sub_10002A474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v19 = sub_100002D44(&qword_100143528, &qword_1000F6CA8);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  v8 = sub_100002D44(&qword_1001435E0, &qword_1000F6D88);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100002D44(&qword_100143518, &qword_1000F6CA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15 = static Solarium.isEnabled.getter();
  v20 = a1;
  v21 = a2;
  if (v15)
  {
    static Axis.Set.vertical.getter();
    sub_100002D44(&qword_1001435F8, &qword_1000F6D98);
    sub_100004610(&qword_100143600, &qword_1001435F8, &qword_1000F6D98, &protocol conformance descriptor for LazyVStack<A>);
    ScrollView.init(_:showsIndicators:content:)();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_100004610(&qword_100143510, &qword_100143518, &qword_1000F6CA0, &protocol conformance descriptor for ScrollView<A>);
    sub_100004610(&qword_100143520, &qword_100143528, &qword_1000F6CA8, &protocol conformance descriptor for List<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_100002D44(&qword_1001435E8, &qword_1000F6D90);
    sub_100004610(&qword_1001435F0, &qword_1001435E8, &qword_1000F6D90, &protocol conformance descriptor for TupleView<A>);
    List<>.init(content:)();
    v17 = v19;
    (*(v5 + 16))(v10, v7, v19);
    swift_storeEnumTagMultiPayload();
    sub_100004610(&qword_100143510, &qword_100143518, &qword_1000F6CA0, &protocol conformance descriptor for ScrollView<A>);
    sub_100004610(&qword_100143520, &qword_100143528, &qword_1000F6CA8, &protocol conformance descriptor for List<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_10002A8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100007FDC(a1, a2, &qword_1001434F0, &qword_1000F6C88);
  result = sub_100002D44(&qword_1001434F8, &qword_1000F6C90);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_10002A958()
{
  v0 = type metadata accessor for InsetListStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  InsetListStyle.init()();
  sub_100002D44(&qword_1001434F0, &qword_1000F6C88);
  sub_10002D410();
  View.listStyle<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002AA64@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v30 = a4;
  v5 = type metadata accessor for AddToPlaylistView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100002D44(&qword_1001434B0, &qword_1000F6C50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = sub_100002D44(&qword_100143578, &qword_1000F6D10);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  sub_10002D580(a1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_10002D710(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_100002D44(&qword_100143580, &qword_1000F6D18);
  sub_10002D990();
  Button.init(action:label:)();
  Solarium.init()();
  v18 = sub_100002D44(&qword_1001434B8, &qword_1000F6C58);
  v19 = sub_100004610(&qword_1001434C0, &qword_1001434B0, &qword_1000F6C50, &protocol conformance descriptor for Button<A>);
  v20 = sub_100004370(&qword_1001434C8, &unk_1000F6C60);
  v21 = type metadata accessor for PlainButtonStyle();
  v22 = sub_10002D32C();
  v23 = sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.staticIf<A, B>(_:then:)(OpaqueTypeConformance2, sub_10002B320, 0, v8, &type metadata for Solarium, v18, v19, &protocol witness table for Solarium, OpaqueTypeConformance2);
  (*(v9 + 8))(v11, v8);
  v31 = v8;
  v32 = &type metadata for Solarium;
  v33 = v18;
  v34 = v19;
  v35 = &protocol witness table for Solarium;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.accessibilityIdentifier(_:)();
  return (*(v29 + 8))(v15, v25);
}

uint64_t sub_10002AE60(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v2);
  static HorizontalAlignment.leading.getter();
  sub_10002DE40(&qword_100143608, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002D44(&qword_1001435E8, &qword_1000F6D90);
  sub_100004610(&qword_1001435F0, &qword_1001435E8, &qword_1000F6D90, &protocol conformance descriptor for TupleView<A>);
  return LazyVStack.init(alignment:spacing:pinnedViews:content:)();
}

double sub_10002AFC8(void *a1)
{
  sub_100002D44(&qword_100143448, &qword_1000F6BE8);
  State.wrappedValue.getter();
  v1 = *(v4 + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);

  v1(v2);

  return result;
}

uint64_t sub_10002B054()
{
  v0 = sub_100002D44(&qword_100143590, &qword_1000F6D50);
  __chkstk_darwin(v0);
  v2 = &v11 - v1;
  v3 = sub_100002D44(&qword_100143598, &qword_1000F6D58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  if (static Solarium.isEnabled.getter())
  {
    v12 = Image.init(systemName:)();
    static Font.Weight.regular.getter();
    View.fontWeight(_:)();

    (*(v4 + 16))(v2, v6, v3);
    swift_storeEnumTagMultiPayload();
    v12 = &type metadata for Image;
    v13 = &protocol witness table for Image;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    *v2 = Text.init(_:tableName:bundle:comment:)();
    *(v2 + 1) = v8;
    v2[16] = v9 & 1;
    *(v2 + 3) = v10;
    swift_storeEnumTagMultiPayload();
    v12 = &type metadata for Image;
    v13 = &protocol witness table for Image;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10002B320(uint64_t a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001434C8, &unk_1000F6C60);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v11 = sub_100002D44(&qword_1001434B0, &qword_1000F6C50);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v9;
  PlainButtonStyle.init()();
  sub_10002D32C();
  sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  return sub_100007E14(v8, &qword_1001434C8, &unk_1000F6C60);
}

uint64_t sub_10002B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_10002B5D0, v8, v7);
}

uint64_t sub_10002B5D0()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  sub_100002D44(&qword_100143448, &qword_1000F6BE8);
  State.wrappedValue.getter();
  v4 = *(v0[6] + OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel_onDismissHandler);

  v4(v5);

  v0[4] = v2;
  v0[5] = v3;
  State.wrappedValue.getter();
  v0[14] = v0[7];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10002B704;
  v8 = v0[9];
  v7 = v0[10];

  return sub_10006545C(v8, v7);
}

uint64_t sub_10002B704()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10002B848, v3, v2);
}

uint64_t sub_10002B848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002B8AC(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 5.0;
  if (result)
  {
    v2 = 10.0;
  }

  qword_100143390 = *&v2;
  return result;
}

uint64_t sub_10002B8DC()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = Color.init(uiColor:)();
  qword_100143398 = result;
  return result;
}

uint64_t sub_10002B91C(double a1)
{
  result = static Solarium.isEnabled.getter();
  v2 = 0.0;
  if (result)
  {
    v2 = 12.0;
  }

  qword_1001433A0 = *&v2;
  return result;
}

uint64_t sub_10002B94C(void *a1)
{
  v2 = sub_100002D44(&qword_1001436B0, &qword_1000F6EE8);
  __chkstk_darwin(v2);
  v4 = &v13 - v3;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100141AE8 != -1)
    {
      swift_once();
    }

    v5 = qword_1001433A8;
  }

  else
  {
    v5 = static HorizontalAlignment.leading.getter();
  }

  if (qword_100141AE0 != -1)
  {
    v12 = v5;
    swift_once();
    v5 = v12;
  }

  v6 = qword_1001433A0;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
  v7 = sub_100002D44(&qword_1001436D0, &qword_1000F6EF8);
  sub_10002BB4C(a1, &v4[*(v7 + 44)]);
  Solarium.init()();
  v8 = sub_100002D44(&qword_1001436B8, &qword_1000F6EF0);
  v9 = sub_100004610(&qword_1001436C0, &qword_1001436B0, &qword_1000F6EE8, &protocol conformance descriptor for VStack<A>);
  v10 = sub_10002F01C();
  View.staticIf<A, B>(_:then:)(v10, sub_10002CABC, 0, v2, &type metadata for Solarium, v8, v9, &protocol witness table for Solarium, v10);
  return sub_100007E14(v4, &qword_1001436B0, &qword_1000F6EE8);
}

uint64_t sub_10002BB4C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v39 = sub_100002D44(&qword_1001436E0, &qword_1000F6F00);
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v35 - v3;
  v4 = sub_100002D44(&qword_1001436E8, &qword_1000F6F08);
  __chkstk_darwin(v4 - 8);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100002D44(&qword_1001436F0, &qword_1000F6F10);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v40 = sub_100002D44(&qword_1001436F8, &qword_1000F6F18);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v16 = 1;
  v11[16] = 1;
  v17 = sub_100002D44(&qword_100143700, &qword_1000F6F20);
  v18 = a1;
  sub_10002C010(a1, &v11[*(v17 + 44)]);
  Solarium.init()();
  v19 = sub_100002D44(&qword_100143708, &qword_1000F6F28);
  v20 = sub_100004610(&qword_100143710, &qword_1001436F0, &qword_1000F6F10, &protocol conformance descriptor for HStack<A>);
  v21 = sub_10002F128();
  v37 = v15;
  v22 = v39;
  View.staticIf<A, B>(_:then:)(v21, sub_10002CA18, 0, v9, &type metadata for Solarium, v19, v20, &protocol witness table for Solarium, v21);
  sub_100007E14(v11, &qword_1001436F0, &qword_1000F6F10);
  if ((static Solarium.isEnabled.getter() & 1) != 0 && *(v18 + 40) == 1)
  {
    v23 = v36;
    Divider.init()();
    if (qword_100141AE8 != -1)
    {
      swift_once();
    }

    v24 = (v23 + *(v22 + 36));
    *v24 = qword_1001433A8;
    v24[1] = sub_10002F4A4;
    v24[2] = 0;
    sub_10002F1E0(v23, v8);
    v16 = 0;
  }

  (*(v42 + 56))(v8, v16, 1, v22);
  v26 = v37;
  v25 = v38;
  v27 = *(v38 + 16);
  v28 = v40;
  v29 = v41;
  v27(v41, v37, v40);
  v30 = v43;
  sub_100007FDC(v8, v43, &qword_1001436E8, &qword_1000F6F08);
  v31 = v44;
  v27(v44, v29, v28);
  v32 = sub_100002D44(&qword_100143720, &qword_1000F6F30);
  sub_100007FDC(v30, &v31[*(v32 + 48)], &qword_1001436E8, &qword_1000F6F08);
  sub_100007E14(v8, &qword_1001436E8, &qword_1000F6F08);
  v33 = *(v25 + 8);
  v33(v26, v28);
  sub_100007E14(v30, &qword_1001436E8, &qword_1000F6F08);
  return (v33)(v29, v28);
}

uint64_t sub_10002C010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100002D44(&qword_100143728, &qword_1000F6F38);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100002D44(&qword_100143730, &qword_1000F6F40);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v16 = sub_100002D44(&qword_100143738, &qword_1000F6F48);
  sub_10002C3E4(a1, &v5[*(v16 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002F250(v5, v12, &qword_100143728, &qword_1000F6F38);
  v17 = &v12[*(v7 + 44)];
  v18 = v39;
  *(v17 + 4) = v38;
  *(v17 + 5) = v18;
  *(v17 + 6) = v40;
  v19 = v35;
  *v17 = v34;
  *(v17 + 1) = v19;
  v20 = v37;
  *(v17 + 2) = v36;
  *(v17 + 3) = v20;
  sub_10002F250(v12, v15, &qword_100143730, &qword_1000F6F40);
  v21 = a1[3];
  v22 = a1[4];
  sub_10000DC80(a1, v21);
  v23 = (*(v22 + 24))(v21, v22);
  v24 = 0;
  KeyPath = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v23)
  {
    v24 = Image.init(systemName:)();
    if (qword_100141AD8 != -1)
    {
      swift_once();
    }

    v26 = qword_100143398;
    KeyPath = swift_getKeyPath();

    v28 = static Font.caption2.getter();
    v27 = swift_getKeyPath();
  }

  sub_100007FDC(v15, v9, &qword_100143730, &qword_1000F6F40);
  v29 = v33;
  sub_100007FDC(v9, v33, &qword_100143730, &qword_1000F6F40);
  v30 = (v29 + *(sub_100002D44(&qword_100143740, &qword_1000F6F50) + 48));
  sub_10002F2B8(v24, KeyPath, v26, v27, v28);
  sub_10002F328(v24, KeyPath, v26, v27, v28);
  *v30 = v24;
  v30[1] = KeyPath;
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  sub_100007E14(v15, &qword_100143730, &qword_1000F6F40);
  sub_10002F328(v24, KeyPath, v26, v27, v28);
  return sub_100007E14(v9, &qword_100143730, &qword_1000F6F40);
}

uint64_t sub_10002C3E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_100002D44(&qword_100143748, &qword_1000F6F88);
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v51 - v6;
  v7 = sub_100002D44(&qword_100143750, &unk_1000F6F90);
  __chkstk_darwin(v7);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_10000DC80(a1, v12);
  v52 = (*(v13 + 32))(v12, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v66;
  v14 = v67;
  v15 = v68;
  v16 = v69;
  v18 = v70;
  v17 = v71;
  if (qword_100141AD0 != -1)
  {
    swift_once();
  }

  v19 = qword_100143390;
  v20 = &v11[*(v7 + 36)];
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(sub_100002D44(&qword_100143758, &qword_1000F97A0) + 36)) = 256;
  v24 = v51;
  *v11 = v52;
  *(v11 + 1) = v24;
  v11[16] = v14;
  *(v11 + 3) = v15;
  v11[32] = v16;
  *(v11 + 5) = v18;
  *(v11 + 6) = v17;
  v25 = a1[3];
  v26 = a1[4];
  sub_10000DC80(a1, v25);
  v59 = (*(v26 + 16))(v25, v26);
  v60 = v27;
  sub_10000B730(v59, v27, v28);
  v29 = Text.init<A>(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v52 = v34;
  KeyPath = swift_getKeyPath();
  v59 = v29;
  v60 = v31;
  v61 = v33 & 1;
  v62 = v35;
  v63 = KeyPath;
  v64 = 2;
  v65 = 0;
  Solarium.init()();
  v37 = sub_100002D44(&qword_100142990, &qword_1000F6FD0);
  v38 = sub_100002D44(&qword_100143760, &unk_1000F6FD8);
  v39 = sub_1000149E0();
  v40 = sub_10002F3A4();
  v41 = v54;
  View.staticIf<A, B>(_:then:)(v40, sub_10002C8E8, 0, v37, &type metadata for Solarium, v38, v39, &protocol witness table for Solarium, v40);
  sub_10000BFBC(v29, v31, v33 & 1);

  v42 = v53;
  sub_100007FDC(v11, v53, &qword_100143750, &unk_1000F6F90);
  v44 = v57;
  v43 = v58;
  v45 = *(v57 + 16);
  v46 = v55;
  v45(v55, v41, v58);
  v47 = v56;
  sub_100007FDC(v42, v56, &qword_100143750, &unk_1000F6F90);
  v48 = sub_100002D44(&qword_100143770, &qword_1000F6FE8);
  v45((v47 + *(v48 + 48)), v46, v43);
  v49 = *(v44 + 8);
  v49(v41, v43);
  sub_100007E14(v11, &qword_100143750, &unk_1000F6F90);
  v49(v46, v43);
  return sub_100007E14(v42, &qword_100143750, &unk_1000F6F90);
}

uint64_t sub_10002C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (qword_100141AE8 != -1)
  {
    v12 = v3;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v15 = a2;
    swift_once();
    a2 = v15;
    v5 = v14;
    v4 = v13;
    v3 = v12;
  }

  v10 = qword_1001433A8;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = sub_10002F4A4;
  *(a2 + 72) = 0;
  sub_100003B04(v3, v4, v5);
}

uint64_t sub_10002CA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100007FDC(a1, a2, &qword_1001436F0, &qword_1000F6F10);
  result = sub_100002D44(&qword_100143708, &qword_1000F6F28);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_10002CABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100007FDC(a1, a2, &qword_1001436B0, &qword_1000F6EE8);
  v4 = (a2 + *(sub_100002D44(&qword_1001436B8, &qword_1000F6EF0) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_10002CB54()
{
  sub_10002EF74(v0, v5);
  v1 = swift_allocObject();
  v2 = v5[1];
  v1[1] = v5[0];
  v1[2] = v2;
  v3 = v5[3];
  v1[3] = v5[2];
  v1[4] = v3;
  sub_100002D44(&qword_1001436A8, &qword_1000F6EE0);
  sub_100004370(&qword_1001436B0, &qword_1000F6EE8);
  sub_100004370(&qword_1001436B8, &qword_1000F6EF0);
  sub_100004610(&qword_1001436C0, &qword_1001436B0, &qword_1000F6EE8, &protocol conformance descriptor for VStack<A>);
  sub_10002F01C();
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_10002CCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002F0D4(a1, a2, a3);
  result = HorizontalAlignment.init(_:)();
  qword_1001433A8 = result;
  return result;
}

uint64_t sub_10002CD00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel, &unk_1000F8C40);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16MusicRecognition22AddToPlaylistViewModel__state;
  swift_beginAccess();
  return sub_10002CEB0(v3 + v4, a2);
}

uint64_t sub_10002CDCC(uint64_t a1, uint64_t *a2)
{
  sub_10002CEB0(a1, v3);
  swift_getKeyPath();
  sub_10002DE40(&qword_100143450, type metadata accessor for AddToPlaylistViewModel, &unk_1000F8C40);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10002EC08(v3);
}

unint64_t sub_10002CF0C()
{
  result = qword_100143470;
  if (!qword_100143470)
  {
    v1 = sub_100004370(&qword_100143468, &qword_1000F6C28);
    sub_10002D0E0(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_100004370(&qword_100143480, &qword_1000F6C30);
    sub_100004370(&qword_100143488, &qword_1000F6C38);
    sub_100004370(&qword_100143490, &qword_1000F6C40);
    sub_100004370(&qword_100143498, &qword_1000F6C48);
    sub_100004610(&qword_1001434A0, &qword_100143498, &qword_1000F6C48, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002D134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143470);
  }

  return result;
}

unint64_t sub_10002D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143478;
  if (!qword_100143478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143478);
  }

  return result;
}

unint64_t sub_10002D134()
{
  result = qword_1001434A8;
  if (!qword_1001434A8)
  {
    sub_100004370(&qword_100143488, &qword_1000F6C38);
    sub_100004370(&qword_1001434B0, &qword_1000F6C50);
    sub_100004370(&qword_1001434B8, &qword_1000F6C58);
    sub_100004610(&qword_1001434C0, &qword_1001434B0, &qword_1000F6C50, &protocol conformance descriptor for Button<A>);
    sub_100004370(&qword_1001434C8, &unk_1000F6C60);
    type metadata accessor for PlainButtonStyle();
    sub_10002D32C();
    sub_10002DE40(&qword_1001422F0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DE40(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001434A8);
  }

  return result;
}

unint64_t sub_10002D32C()
{
  result = qword_1001434D0;
  if (!qword_1001434D0)
  {
    sub_100004370(&qword_1001434C8, &unk_1000F6C60);
    sub_100004610(&qword_1001434C0, &qword_1001434B0, &qword_1000F6C50, &protocol conformance descriptor for Button<A>);
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001434D0);
  }

  return result;
}

unint64_t sub_10002D410()
{
  result = qword_100143508;
  if (!qword_100143508)
  {
    sub_100004370(&qword_1001434F0, &qword_1000F6C88);
    sub_100004610(&qword_100143510, &qword_100143518, &qword_1000F6CA0, &protocol conformance descriptor for ScrollView<A>);
    sub_100004610(&qword_100143520, &qword_100143528, &qword_1000F6CA8, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143508);
  }

  return result;
}

unint64_t sub_10002D4F4()
{
  result = qword_100143530;
  if (!qword_100143530)
  {
    sub_100004370(&qword_1001434F8, &qword_1000F6C90);
    sub_10002D410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143530);
  }

  return result;
}

uint64_t sub_10002D580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D5E4()
{
  v1 = (type metadata accessor for AddToPlaylistView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddToPlaylistView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D774()
{
  v2 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012EC8;

  return sub_100027A9C(v4, v5, v0 + v3);
}

unint64_t sub_10002D858()
{
  result = qword_100143560;
  if (!qword_100143560)
  {
    sub_100004370(&qword_100143558, &qword_1000F6CF8);
    sub_100004610(&qword_100143568, &qword_100143570, &unk_1000F6D00, &protocol conformance descriptor for Button<A>);
    sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143560);
  }

  return result;
}

unint64_t sub_10002D990()
{
  result = qword_100143588;
  if (!qword_100143588)
  {
    sub_100004370(&qword_100143580, &qword_1000F6D18);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143588);
  }

  return result;
}

unint64_t sub_10002DA6C()
{
  result = qword_1001435A8;
  if (!qword_1001435A8)
  {
    sub_100004370(&qword_1001435A0, &qword_1000F6D60);
    sub_10002DB24();
    sub_100004610(&qword_1001435D0, &qword_1001435D8, &qword_1000F6D78, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435A8);
  }

  return result;
}

unint64_t sub_10002DB24()
{
  result = qword_1001435B0;
  if (!qword_1001435B0)
  {
    sub_100004370(&qword_1001435B8, &qword_1000F6D68);
    sub_10002DBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435B0);
  }

  return result;
}

unint64_t sub_10002DBB0()
{
  result = qword_1001435C0;
  if (!qword_1001435C0)
  {
    sub_100004370(&qword_1001435C8, &qword_1000F6D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001435C0);
  }

  return result;
}

uint64_t sub_10002DC78()
{
  v1 = (type metadata accessor for AddToPlaylistView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002DD9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10002DE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002DE90()
{
  result = qword_100143648;
  if (!qword_100143648)
  {
    sub_100004370(&qword_100143640, &qword_1000F6DD0);
    sub_10002DF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143648);
  }

  return result;
}

unint64_t sub_10002DF14()
{
  result = qword_100143650;
  if (!qword_100143650)
  {
    v1 = sub_100004370(&qword_100143658, &qword_1000F6DD8);
    sub_10002DFD0(v1, v2, v3);
    sub_10002DE40(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143650);
  }

  return result;
}

unint64_t sub_10002DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143660;
  if (!qword_100143660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143660);
  }

  return result;
}

uint64_t sub_10002E02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    sub_100004370(&qword_1001435C8, &qword_1000F6D70);
    sub_10002DBB0();
    swift_getOpaqueTypeConformance2();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002E228(uint64_t a1)
{
  v4 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100012EC8;

  return sub_10002B534(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_10002E358(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      sub_10002E174(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_100002D44(&qword_100143690, &qword_1000F6E40);
        v10 = swift_allocObject();
        v11 = (j__malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v15 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

uint64_t sub_10002E508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000DC80(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10002E560()
{
  v1 = (type metadata accessor for AddToPlaylistView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002E68C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100029E78(a1, a2, v6, v7);
}

uint64_t sub_10002E718()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E780()
{
  v1 = (type metadata accessor for AddToPlaylistView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100007E74((v0 + v7));

  return _swift_deallocObject(v0, v7 + 40, v2 | 7);
}

double sub_10002E8D8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_10002A010(v2 + v6, (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_10002E978()
{
  v1 = (type metadata accessor for AddToPlaylistView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_100002D44(&qword_1001422A0, &unk_1000F53E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10002EABC(uint64_t a1)
{
  v4 = *(type metadata accessor for AddToPlaylistView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000789C;

  return sub_10002B534(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10002EC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002ECA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002ED08()
{
  result = qword_100143698;
  if (!qword_100143698)
  {
    sub_100004370(&qword_1001436A0, &qword_1000F6E88);
    sub_10002CF0C();
    sub_100004370(&qword_1001434D8, &qword_1000F6C70);
    sub_100004370(&qword_100143488, &qword_1000F6C38);
    sub_100004370(&qword_1001434E0, &qword_1000F6C78);
    sub_100004370(&qword_1001434E8, &qword_1000F6C80);
    sub_100004370(&qword_1001434F0, &qword_1000F6C88);
    sub_100004370(&qword_1001434F8, &qword_1000F6C90);
    sub_100004370(&qword_100143500, &qword_1000F6C98);
    sub_10002D410();
    sub_10002D4F4();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002D134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143698);
  }

  return result;
}

uint64_t sub_10002EFAC()
{
  sub_100007E74((v0 + 16));

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10002F01C()
{
  result = qword_1001436C8;
  if (!qword_1001436C8)
  {
    sub_100004370(&qword_1001436B8, &qword_1000F6EF0);
    sub_100004610(&qword_1001436C0, &qword_1001436B0, &qword_1000F6EE8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001436C8);
  }

  return result;
}

unint64_t sub_10002F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001436D8;
  if (!qword_1001436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001436D8);
  }

  return result;
}

unint64_t sub_10002F128()
{
  result = qword_100143718;
  if (!qword_100143718)
  {
    sub_100004370(&qword_100143708, &qword_1000F6F28);
    sub_100004610(&qword_100143710, &qword_1001436F0, &qword_1000F6F10, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143718);
  }

  return result;
}

uint64_t sub_10002F1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001436E0, &qword_1000F6F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D44(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002F2B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

double sub_10002F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_10002F3A4()
{
  result = qword_100143768;
  if (!qword_100143768)
  {
    sub_100004370(&qword_100143760, &unk_1000F6FD8);
    sub_1000149E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143768);
  }

  return result;
}

uint64_t sub_10002F4B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a7;
  v32 = a6;
  v33 = a9;
  v29 = a2;
  v30 = a1;
  v15 = *(a8 - 8);
  v31 = a10;
  __chkstk_darwin(a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LibraryItemContextMenu(0, v19, a11, v18);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v28 - v22;
  type metadata accessor for LibraryItemContextMenuModel(0, a8, a11, v24);
  (*(v15 + 16))(v17, v29, a8);
  v25 = sub_1000E6490(v30, v17);
  sub_10002F7D4(a3, a4);
  v26 = v32;
  sub_10002F7D4(a5, v32);
  sub_10002F6C8(v25, a3, a4, a5, v26, v23);
  View.modifier<A>(_:)();
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_10002F6C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v13 = type metadata accessor for LibraryItemContextMenu(0, *(v11 + 80), *(v11 + 88), v12);
  v14 = (a6 + v13[9]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + v13[10]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a6 + v13[11];
  result = swift_getKeyPath();
  *v16 = result;
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_10002F7D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10002F7F4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LibraryItemContextMenuModel(255, *(a1 + 16), *(a1 + 24), a5);
  type metadata accessor for Bindable();
  if (v5 <= 0x3F)
  {
    sub_100008ADC(319);
    if (v6 <= 0x3F)
    {
      sub_10002FA68(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  type metadata accessor for LibraryItemContextMenuModel(255, *(a3 + 16), *(a3 + 24), a5);
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10002F9A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  type metadata accessor for LibraryItemContextMenuModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

void sub_10002FA68(uint64_t a1)
{
  if (!qword_100143808)
  {
    type metadata accessor for ViewConfiguration(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100143808);
    }
  }
}

uint64_t sub_10002FB04(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LibraryItemContextMenuModel(255, *(a1 + 16), *(a1 + 24), a5);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v6;
}

uint64_t sub_10002FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v31 = sub_100004370(&qword_100143810, &unk_1000F7110);
  WitnessTable = swift_getWitnessTable();
  v30 = sub_100030A64(WitnessTable, v8, v9);
  v44 = v6;
  v45 = &type metadata for ContextMenuContent;
  v46 = &type metadata for LibraryItemPreview;
  v47 = v31;
  v48 = WitnessTable;
  v49 = v30;
  v12 = WitnessTable;
  v50 = sub_100030AB8(v30, v10, v11);
  v51 = sub_100030B0C();
  v28 = v50;
  v29 = v51;
  v32 = &opaque type descriptor for <<opaque return type of View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = *(a2 + 24);
  v41 = *(a2 + 16);
  v42 = v20;
  v43 = v4;
  v38 = v41;
  v39 = v20;
  v40 = v4;
  v35 = v41;
  v36 = v20;
  v37 = v4;
  v21 = swift_checkMetadataState();
  v22 = v30;
  v23 = v12;
  v24 = v31;
  View.contextMenu<A, B, C>(menuItems:preview:previewDestination:)();
  v44 = v21;
  v45 = &type metadata for ContextMenuContent;
  v46 = &type metadata for LibraryItemPreview;
  v47 = v24;
  v48 = v23;
  v49 = v22;
  v50 = v28;
  v51 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1000B03E4();
  v25 = *(v14 + 8);
  v25(v16, OpaqueTypeMetadata2);
  sub_1000B03E4();
  return (v25)(v19, OpaqueTypeMetadata2);
}

void sub_10002FE84(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for LibraryItemContextMenu(0, a1, a2, a3);
  v10 = sub_10002FB04(v5, v9, v6, v7, v8);
  v11 = sub_1000E64E0(v10);

  *a4 = v11;
}

uint64_t sub_10002FED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = type metadata accessor for LibraryItemContextMenu(0, a2, a3, a4);
  v12 = *(sub_10002FB04(v7, v11, v8, v9, v10) + 16);

  v13 = (a1 + *(v7 + 36));
  v14 = *v13;
  v15 = v13[1];
  *a5 = v12;
  a5[1] = v14;
  a5[2] = v15;

  return sub_10002F7D4(v14, v15);
}

uint64_t sub_10002FF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)@<X8>)
{
  v9 = type metadata accessor for LibraryItemContextMenu(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  result = (*(v10 + 32))(v15 + v14, v13, v9);
  *a5 = sub_100030CD8;
  a5[1] = v15;
  return result;
}

uint64_t sub_100030094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a4;
  v7 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v7 - 8);
  v83 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v84 = &v74[-v10];
  __chkstk_darwin(v11);
  v82 = &v74[-v12];
  __chkstk_darwin(v13);
  v79 = &v74[-v14];
  __chkstk_darwin(v15);
  v81 = &v74[-v16];
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v74[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for LibraryItemContextMenu(0, a2, a3, v21);
  v78 = *(sub_10002FB04(v22, v26, v23, v24, v25) + 16);

  v80 = v22;
  v27 = *(v22 + 44);
  v85 = a1;
  v28 = (a1 + v27);
  v29 = *v28;
  v30 = *(v28 + 8);

  v31 = v29;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v31 = v88[0];
  }

  swift_getKeyPath();
  v88[0] = v31;
  sub_100030D6C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v31 + 40);
  v76 = *(v31 + 32);
  v77 = v33;

  v34 = v29;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v34 = v88[0];
  }

  swift_getKeyPath();
  v88[0] = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = *(v34 + 48);

  v36 = v29;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v36 = v88[0];
  }

  swift_getKeyPath();
  v88[0] = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v36 + 16);

  if (v30)
  {
    v89 = v29;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
    v29 = v89;
  }

  v40 = 0x2000Bu >> (8 * v38);
  swift_getKeyPath();
  v88[0] = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v29 + 49);

  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v42 = qword_10014FF90;
  v43 = type metadata accessor for MusicSubscriptionStatusController(0);
  v88[3] = v43;
  v88[4] = &off_100139B30;
  v88[0] = v42;
  type metadata accessor for TrackPageViewModel(0);
  v44 = swift_allocObject();
  v45 = sub_100007D60(v88, v43);
  v46 = __chkstk_darwin(v45);
  v48 = &v74[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v49 + 16))(v48, v46);
  v50 = *v48;
  v87[3] = v43;
  v87[4] = &off_100139B30;
  v87[0] = v50;
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 96) = 0u;
  *(v44 + 112) = 0u;
  *(v44 + 128) = 0;
  *(v44 + 136) = 2;
  *(v44 + 144) = 0x3FE6666666666666;
  *(v44 + 200) = 0;
  *(v44 + 152) = 0u;
  *(v44 + 168) = 0u;
  *(v44 + 177) = 0u;
  *(v44 + 248) = 0;
  *(v44 + 232) = 0u;
  *(v44 + 216) = 0u;
  *(v44 + 392) = 0u;
  *(v44 + 408) = 0u;
  *(v44 + 360) = 0u;
  *(v44 + 376) = 0u;
  *(v44 + 328) = 0u;
  *(v44 + 344) = 0u;
  *(v44 + 296) = 0u;
  *(v44 + 312) = 0u;
  *(v44 + 264) = 0u;
  *(v44 + 280) = 0u;
  v51 = 1;
  *(v44 + 424) = 0;
  *(v44 + 432) = 1;
  *(v44 + 440) = 0u;
  *(v44 + 456) = 0u;
  *(v44 + 472) = 0u;
  v52 = objc_opt_self();

  *(v44 + 488) = [v52 sharedInstance];
  *(v44 + 496) = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 504) = v53;
  *(v44 + 512) = v54 & 1;
  *(v44 + 520) = v55;
  *(v44 + 528) = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 536) = v56;
  *(v44 + 544) = v57 & 1;
  *(v44 + 552) = v58;
  ObservationRegistrar.init()();
  v59 = v78;
  *(v44 + 560) = v78;
  *(v44 + 568) = v76;
  *(v44 + 576) = v77;
  *(v44 + 584) = v75;
  sub_100007DB0(v87, v44 + 592);
  *(v44 + 256) = v40;
  v60 = [v59 artworkURL];
  v61 = v79;
  if (v60)
  {
    v62 = v60;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  v63 = type metadata accessor for URL();
  v64 = *(*(v63 - 8) + 56);
  v64(v61, v51, 1, v63);
  v65 = v81;
  sub_100007F6C(v61, v81);
  v66 = v82;
  v64(v82, 1, 1, v63);
  type metadata accessor for SongArtworkViewModel(0);
  v67 = swift_allocObject();
  v64(v67 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL, 1, 1, v63);
  v64(v67 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL, 1, 1, v63);
  ObservationRegistrar.init()();
  v68 = v84;
  sub_100008790(v65, v84);
  sub_1000D88D8(v68);
  sub_100008790(v66, v68);
  v69 = v83;
  sub_100008790(v68, v83);
  sub_1000D8B98(v69);
  sub_10001719C(v66);
  sub_10001719C(v65);
  sub_10001719C(v68);
  sub_100007E74(v87);
  *(v44 + 208) = v67;
  *(v44 + 632) = v41;
  sub_100007E74(v88);
  v70 = (v85 + *(v80 + 40));
  v71 = *v70;
  v72 = v70[1];
  sub_10002F7D4(*v70, v72);
  return sub_100040EF4(v44, v71, v72, v86);
}

unint64_t sub_100030A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143818;
  if (!qword_100143818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143818);
  }

  return result;
}

unint64_t sub_100030AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143820;
  if (!qword_100143820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143820);
  }

  return result;
}

unint64_t sub_100030B0C()
{
  result = qword_100143828;
  if (!qword_100143828)
  {
    sub_100004370(&qword_100143810, &unk_1000F7110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143828);
  }

  return result;
}

uint64_t sub_100030B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for LibraryItemContextMenu(0, v5, v6, a4);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  type metadata accessor for LibraryItemContextMenuModel(255, v5, v6, v11);
  v12 = type metadata accessor for Bindable();
  (*(*(v12 - 8) + 8))(v4 + v9, v12);
  if (*(v4 + v9 + *(v7 + 36)))
  {
  }

  if (*(v4 + v9 + *(v7 + 40)))
  {
  }

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

uint64_t sub_100030CD8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for LibraryItemContextMenu(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_100030094(v7, v4, v5, a2);
}

unint64_t sub_100030D6C()
{
  result = qword_100142060;
  if (!qword_100142060)
  {
    type metadata accessor for ViewConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100142060);
  }

  return result;
}

uint64_t sub_100030DDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryItemContextMenu(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100143810, &unk_1000F7110);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_100030A64(WitnessTable, v4, v5);
  sub_100030AB8(v10, v6, v7);
  sub_100030B0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100030EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100030FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_100142878, &qword_1000F68E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for MusicRecognitionIntentConfiguration(uint64_t a1)
{
  result = qword_100143888;
  if (!qword_100143888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000310EC(uint64_t a1)
{
  sub_100031164(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100031164(uint64_t a1)
{
  if (!qword_100143898)
  {
    type metadata accessor for IntentSystemContext.Source();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100143898);
    }
  }
}

uint64_t sub_1000311BC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10003138C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001A168();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031408(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10001A404(v5);
}

uint64_t sub_1000314D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v9(v8);
  return Section<>.init(header:content:)();
}

uint64_t sub_1000315A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryListViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000315F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryListViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  return Bindable.projectedValue.getter();
}

uint64_t sub_100031644(uint64_t a1)
{
  sub_100002D44(&qword_100143A60, &unk_1000F73E8);
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100031720(uint64_t a1)
{
  sub_100002D44(&qword_100143A60, &unk_1000F73E8);
  State.projectedValue.getter();
  return v2;
}

void sub_10003178C(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v10 = type metadata accessor for LibraryListView(0, *(v8 + 80), *(v8 + 88), v9);
  v11 = v10[9];
  *(a5 + v11) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  swift_storeEnumTagMultiPayload();

  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v12 = a5 + v10[11];
  State.init(wrappedValue:)();

  *v12 = v14;
  *(v12 + 1) = v15 & 1;
  *(v12 + 8) = v16;
  v13 = (a5 + v10[12]);
  *v13 = a3;
  v13[1] = a4;
}

uint64_t sub_100031938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v168 = type metadata accessor for ScenePhase();
  v159 = *(v168 - 8);
  __chkstk_darwin(v168);
  v158 = (v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = *(a1 - 8);
  v167 = *(v173 + 64);
  __chkstk_darwin(v4);
  v172 = v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100143968, &qword_1000F7310);
  __chkstk_darwin(v6 - 8);
  v162 = v135 - v7;
  v156 = a1;
  v8 = *(a1 + 24);
  v9 = *(a1 + 16);
  v170 = v9;
  v169 = v8;
  type metadata accessor for LibraryListViewModel(255, v9, v8, v10);
  v157 = type metadata accessor for Bindable();
  v161 = *(v157 - 1);
  __chkstk_darwin(v157);
  v155 = v135 - v11;
  v165 = type metadata accessor for NavigationPath();
  v164 = sub_100004370(&qword_100143970, &qword_1000F7318);
  v163 = sub_100004370(&qword_100143978, &qword_1000F7320);
  v154 = sub_100004370(&qword_100143980, &qword_1000F7328);
  v153 = sub_100004370(&qword_100143988, &unk_1000F7330);
  v152 = sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  v151 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, v9, v8, v12);
  v13 = type metadata accessor for ModifiedContent();
  v16 = sub_10003D5F4(v13, v14, v15);
  WitnessTable = swift_getWitnessTable();
  v199 = v16;
  v200 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v18 = type metadata accessor for ModifiedContent();
  v19 = sub_100004370(&qword_100142950, &qword_1000F7340);
  v20 = swift_getWitnessTable();
  v21 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v197 = v20;
  v198 = v21;
  v166 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = swift_getWitnessTable();
  v23 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v183 = v18;
  v184 = v19;
  v185 = v22;
  v186 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v24 = type metadata accessor for ModifiedContent();
  v25 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v183 = v18;
  v184 = v19;
  v185 = v22;
  v186 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v195 = OpaqueTypeConformance2;
  v196 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_10003D648();
  v183 = v24;
  v184 = v25;
  v185 = v28;
  v186 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v150 = &protocol conformance descriptor for [A];
  v31 = sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  v32 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v183 = v152;
  v184 = v151;
  v185 = OpaqueTypeMetadata2;
  v186 = v31;
  v187 = v32;
  type metadata accessor for ForEach();
  v33 = type metadata accessor for Section();
  v34 = sub_100004370(&qword_1001439E8, &qword_1000F7370);
  v35 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  v183 = v34;
  v184 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v183 = v24;
  v184 = v25;
  v185 = v28;
  v186 = v29;
  v194 = swift_getOpaqueTypeConformance2();
  v37 = swift_getWitnessTable();
  v191 = v36;
  v192 = v37;
  v193 = &protocol witness table for EmptyView;
  v38 = swift_getWitnessTable();
  v183 = v33;
  v184 = v38;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88, &qword_1000F4E90);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08, &qword_1000F7388);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10, &qword_1000F7390);
  v39 = type metadata accessor for ModifiedContent();
  v40 = sub_100004610(&qword_100143A18, &qword_100143980, &qword_1000F7328, v150);
  v183 = v154;
  v184 = &type metadata for String;
  v185 = v39;
  v186 = v40;
  v187 = &protocol witness table for String;
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  v41 = type metadata accessor for TupleView();
  v42 = swift_getWitnessTable();
  v183 = &type metadata for Never;
  v184 = v41;
  v185 = &protocol witness table for Never;
  v186 = v42;
  type metadata accessor for List();
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  v43 = type metadata accessor for ModifiedContent();
  v44 = swift_getWitnessTable();
  v45 = sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier, &unk_1000FE080);
  v189 = v44;
  v190 = v45;
  v46 = swift_getWitnessTable();
  v183 = v43;
  v184 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v183 = v43;
  v184 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v183 = v47;
  v184 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v183 = v47;
  v184 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000B730(v50, v51, v52);
  v183 = v49;
  v184 = &type metadata for String;
  v185 = v50;
  v186 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v183 = v49;
  v184 = &type metadata for String;
  v185 = v50;
  v186 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v183 = v54;
  v184 = &type metadata for Bool;
  v185 = v55;
  v186 = &protocol witness table for Bool;
  v56 = swift_getOpaqueTypeMetadata2();
  v57 = sub_10003D954();
  v58 = type metadata accessor for TrackPageView(255);
  v183 = v54;
  v184 = &type metadata for Bool;
  v185 = v55;
  v186 = &protocol witness table for Bool;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_100040C80(&qword_100142FB8, sub_10003D954, &protocol conformance descriptor for NSObject);
  v61 = sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView, &unk_1000F7A60);
  v183 = v56;
  v184 = v57;
  v185 = v58;
  v186 = v59;
  v187 = v60;
  v188 = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  v63 = sub_100004370(&qword_100143A28, &qword_1000F7398);
  v183 = v56;
  v184 = v57;
  v185 = v58;
  v186 = v59;
  v187 = v60;
  v188 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_100004370(&qword_100143A30, &qword_1000F73A0);
  v66 = sub_100004610(&qword_100143A38, &qword_100143A30, &qword_1000F73A0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v183 = v65;
  v184 = v66;
  v67 = swift_getOpaqueTypeConformance2();
  v183 = v62;
  v184 = v63;
  v185 = v64;
  v186 = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  v69 = sub_100004370(&qword_100143A40, &qword_1000F73A8);
  v183 = v62;
  v184 = v63;
  v185 = v64;
  v186 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v73 = sub_10003D9A0(v70, v71, v72);
  v183 = &type metadata for DeviceToDeviceEncryptionView;
  v184 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v183 = v68;
  v184 = v69;
  v185 = v70;
  v186 = v74;
  v145 = swift_getOpaqueTypeMetadata2();
  v183 = v68;
  v184 = v69;
  v185 = v70;
  v186 = v74;
  v144 = swift_getOpaqueTypeConformance2();
  v75 = type metadata accessor for NavigationStack();
  v146 = *(v75 - 8);
  __chkstk_darwin(v75);
  v139 = v135 - v76;
  sub_100004370(&qword_1001429D8, &qword_1000F5AE8);
  v77 = type metadata accessor for ModifiedContent();
  v154 = *(v77 - 8);
  __chkstk_darwin(v77);
  v163 = v135 - v78;
  v79 = swift_getWitnessTable();
  v135[1] = v79;
  v80 = sub_100004610(&qword_1001429D0, &qword_1001429D8, &qword_1000F5AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v181 = v79;
  v182 = v80;
  v81 = swift_getWitnessTable();
  v84 = sub_10003D9F4(v81, v82, v83);
  v183 = v77;
  v184 = &type metadata for HistorySortSelection;
  v136 = v77;
  v185 = v81;
  v186 = v84;
  v138 = v81;
  v85 = v84;
  v137 = v84;
  v86 = swift_getOpaqueTypeMetadata2();
  v142 = v86;
  v152 = *(v86 - 8);
  __chkstk_darwin(v86);
  v164 = v135 - v87;
  v183 = v77;
  v184 = &type metadata for HistorySortSelection;
  v185 = v81;
  v186 = v85;
  v149 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v88 = swift_getOpaqueTypeConformance2();
  v141 = v88;
  v140 = sub_100040C80(&qword_100143A58, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v183 = v86;
  v184 = v168;
  v185 = v88;
  v186 = v140;
  v147 = swift_getOpaqueTypeMetadata2();
  v151 = *(v147 - 8);
  __chkstk_darwin(v147);
  v165 = v135 - v89;
  v150 = type metadata accessor for ModifiedContent();
  v153 = *(v150 - 1);
  __chkstk_darwin(v150);
  v143 = v135 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v148 = v135 - v92;
  v93 = v155;
  v94 = v156;
  v95 = v171;
  sub_1000315F4(v156, v96, v97, v98);
  v99 = v170;
  v177 = v170;
  v100 = v169;
  v178 = v169;
  swift_getKeyPath();
  v101 = v157;
  Bindable<A>.subscript.getter();

  (*(v161 + 8))(v93, v101);
  v174 = v99;
  v175 = v100;
  v176 = v95;
  v102 = v95;
  v103 = v139;
  NavigationStack.init<>(path:root:)();
  static Color.primary.getter();
  View.tint(_:)();

  (*(v146 + 8))(v103, v75);
  LOWORD(v183) = sub_100031644(v94) & 0x1FF;
  v104 = v173;
  v161 = *(v173 + 16);
  v162 = (v173 + 16);
  v105 = v172;
  v106 = v94;
  (v161)(v172, v102, v94);
  v107 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v108 = swift_allocObject();
  v109 = v170;
  v110 = v169;
  *(v108 + 16) = v170;
  *(v108 + 24) = v110;
  v111 = *(v104 + 32);
  v173 = v104 + 32;
  v111(v108 + v107, v105, v94);
  v157 = v111;
  v112 = v136;
  v113 = v163;
  View.onChange<A>(of:initial:_:)();

  (*(v154 + 8))(v113, v112);
  v114 = v171;
  v115 = v158;
  sub_100041394(v158);
  v116 = v172;
  (v161)(v172, v114, v94);
  v117 = swift_allocObject();
  *(v117 + 16) = v109;
  *(v117 + 24) = v110;
  v111(v117 + v107, v116, v94);
  v118 = v115;
  v119 = v142;
  v120 = v168;
  v121 = v141;
  v122 = v140;
  v123 = v164;
  View.onChange<A>(of:initial:_:)();

  (*(v159 + 8))(v118, v120);
  (*(v152 + 8))(v123, v119);
  v124 = v172;
  (v161)(v172, v171, v106);
  v125 = swift_allocObject();
  v126 = v169;
  *(v125 + 16) = v170;
  *(v125 + 24) = v126;
  (v157)(v125 + v107, v124, v106);
  v183 = v119;
  v184 = v120;
  v185 = v121;
  v186 = v122;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = v143;
  v129 = v147;
  v130 = v165;
  View.onAppear(perform:)();

  (*(v151 + 8))(v130, v129);
  v179 = v127;
  v180 = &protocol witness table for _AppearanceActionModifier;
  v131 = v150;
  swift_getWitnessTable();
  v132 = v148;
  sub_1000B03E4();
  v133 = *(v153 + 8);
  v133(v128, v131);
  sub_1000B03E4();
  return (v133)(v132, v131);
}

uint64_t sub_100032FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v251 = a1;
  v235 = a5;
  type metadata accessor for LibraryListViewModel(255, a2, a3, a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  v233 = v7;
  v234 = v8;
  __chkstk_darwin(v7);
  v232 = &v182 - v9;
  v10 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v230 = *(v10 - 8);
  v231 = v10;
  __chkstk_darwin(v10);
  v229 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentMarginPlacement();
  v227 = *(v12 - 8);
  v228 = v12;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = a2;
  v246 = a3;
  v248 = type metadata accessor for LibraryListView(0, a2, a3, v14);
  v250 = *(v248 - 8);
  v247 = *(v250 + 64);
  __chkstk_darwin(v248);
  v249 = &v182 - v15;
  v16 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v16 - 8);
  v225 = &v182 - v17;
  v245 = sub_100004370(&qword_100143970, &qword_1000F7318);
  v244 = sub_100004370(&qword_100143978, &qword_1000F7320);
  v242 = sub_100004370(&qword_100143980, &qword_1000F7328);
  v240 = sub_100004370(&qword_100143988, &unk_1000F7330);
  v239 = sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  v238 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, a2, a3, v18);
  v19 = type metadata accessor for ModifiedContent();
  v22 = sub_10003D5F4(v19, v20, v21);
  WitnessTable = swift_getWitnessTable();
  v276 = v22;
  v277 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v24 = type metadata accessor for ModifiedContent();
  v25 = sub_100004370(&qword_100142950, &qword_1000F7340);
  v26 = swift_getWitnessTable();
  v27 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v274 = v26;
  v275 = v27;
  v241 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v28 = swift_getWitnessTable();
  v29 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v260 = v24;
  v261 = v25;
  v262 = v28;
  v263 = v29;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v30 = type metadata accessor for ModifiedContent();
  v31 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v236 = v31;
  v260 = v24;
  v261 = v25;
  v262 = v28;
  v263 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v272 = OpaqueTypeConformance2;
  v273 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_10003D648();
  v260 = v30;
  v261 = v31;
  v262 = v34;
  v263 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v237 = &protocol conformance descriptor for [A];
  v37 = sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  v38 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v260 = v239;
  v261 = v238;
  v262 = OpaqueTypeMetadata2;
  v263 = v37;
  v264 = v38;
  type metadata accessor for ForEach();
  v39 = type metadata accessor for Section();
  v40 = sub_100004370(&qword_1001439E8, &qword_1000F7370);
  v41 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  v260 = v40;
  v261 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v260 = v30;
  v261 = v236;
  v262 = v34;
  v263 = v35;
  v271 = swift_getOpaqueTypeConformance2();
  v43 = swift_getWitnessTable();
  v268 = v42;
  v269 = v43;
  v270 = &protocol witness table for EmptyView;
  v44 = swift_getWitnessTable();
  v260 = v39;
  v261 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88, &qword_1000F4E90);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08, &qword_1000F7388);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10, &qword_1000F7390);
  v45 = type metadata accessor for ModifiedContent();
  v46 = sub_100004610(&qword_100143A18, &qword_100143980, &qword_1000F7328, v237);
  v260 = v242;
  v261 = &type metadata for String;
  v262 = v45;
  v263 = v46;
  v264 = &protocol witness table for String;
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  v47 = type metadata accessor for TupleView();
  v244 = v47;
  v245 = swift_getWitnessTable();
  v260 = &type metadata for Never;
  v261 = v47;
  v262 = &protocol witness table for Never;
  v263 = v245;
  v48 = type metadata accessor for List();
  v223 = *(v48 - 8);
  __chkstk_darwin(v48);
  v213 = &v182 - v49;
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  v217 = v48;
  v50 = type metadata accessor for ModifiedContent();
  v224 = *(v50 - 8);
  __chkstk_darwin(v50);
  v218 = &v182 - v51;
  v52 = swift_getWitnessTable();
  v214 = v52;
  v53 = sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier, &unk_1000FE080);
  v266 = v52;
  v267 = v53;
  v54 = swift_getWitnessTable();
  v260 = v50;
  v261 = v54;
  v55 = v50;
  v211 = v50;
  v212 = v54;
  v56 = v54;
  v57 = swift_getOpaqueTypeMetadata2();
  v219 = *(v57 - 8);
  __chkstk_darwin(v57);
  v210 = &v182 - v58;
  v260 = v55;
  v261 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v260 = v57;
  v261 = v59;
  v60 = v57;
  v208 = v57;
  v209 = v59;
  v61 = v59;
  v62 = swift_getOpaqueTypeMetadata2();
  v220 = *(v62 - 8);
  __chkstk_darwin(v62);
  v207 = &v182 - v63;
  v260 = v60;
  v261 = v61;
  v64 = swift_getOpaqueTypeConformance2();
  v67 = sub_10000B730(v64, v65, v66);
  v260 = v62;
  v261 = &type metadata for String;
  v68 = v62;
  v204 = v62;
  v205 = v67;
  v262 = v64;
  v263 = v67;
  v206 = v64;
  v69 = v67;
  v70 = swift_getOpaqueTypeMetadata2();
  v221 = *(v70 - 8);
  __chkstk_darwin(v70);
  v242 = (&v182 - v71);
  v260 = v68;
  v261 = &type metadata for String;
  v262 = v64;
  v263 = v69;
  v72 = swift_getOpaqueTypeConformance2();
  v260 = v70;
  v261 = &type metadata for Bool;
  v73 = v70;
  v202 = v70;
  v262 = v72;
  v263 = &protocol witness table for Bool;
  v74 = v72;
  v203 = v72;
  v75 = swift_getOpaqueTypeMetadata2();
  v222 = *(v75 - 8);
  __chkstk_darwin(v75);
  v241 = &v182 - v76;
  v77 = sub_10003D954();
  v78 = type metadata accessor for TrackPageView(255);
  v260 = v73;
  v261 = &type metadata for Bool;
  v262 = v74;
  v263 = &protocol witness table for Bool;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_100040C80(&qword_100142FB8, sub_10003D954, &protocol conformance descriptor for NSObject);
  v81 = sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView, &unk_1000F7A60);
  v194 = v75;
  v195 = v80;
  v260 = v75;
  v261 = v77;
  v187 = v77;
  v188 = v78;
  v262 = v78;
  v263 = v79;
  v82 = v79;
  v196 = v79;
  v264 = v80;
  v265 = v81;
  v83 = v81;
  v191 = v81;
  v84 = swift_getOpaqueTypeMetadata2();
  v215 = *(v84 - 8);
  __chkstk_darwin(v84);
  v198 = &v182 - v85;
  v86 = sub_100004370(&qword_100143A28, &qword_1000F7398);
  v260 = v75;
  v261 = v77;
  v262 = v78;
  v263 = v82;
  v264 = v80;
  v265 = v83;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = sub_100004370(&qword_100143A30, &qword_1000F73A0);
  v89 = sub_100004610(&qword_100143A38, &qword_100143A30, &qword_1000F73A0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v260 = v88;
  v261 = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v84;
  v183 = v84;
  v184 = v90;
  v260 = v84;
  v261 = v86;
  v185 = v87;
  v186 = v86;
  v92 = v87;
  v262 = v87;
  v263 = v90;
  v93 = v90;
  v94 = swift_getOpaqueTypeMetadata2();
  v197 = v94;
  v216 = *(v94 - 8);
  __chkstk_darwin(v94);
  v239 = (&v182 - v95);
  v96 = sub_100004370(&qword_100143A40, &qword_1000F73A8);
  v192 = v96;
  v260 = v91;
  v261 = v86;
  v262 = v92;
  v263 = v93;
  v97 = swift_getOpaqueTypeConformance2();
  v190 = v97;
  v100 = sub_10003D9A0(v97, v98, v99);
  v260 = &type metadata for DeviceToDeviceEncryptionView;
  v261 = v100;
  v189 = swift_getOpaqueTypeConformance2();
  v260 = v94;
  v261 = v96;
  v262 = v97;
  v263 = v189;
  v199 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v101 = swift_getOpaqueTypeMetadata2();
  v102 = *(v101 - 8);
  v200 = v101;
  v201 = v102;
  __chkstk_darwin(v101);
  v240 = &v182 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v193 = &v182 - v105;
  v106 = v243;
  v257 = v243;
  v107 = v246;
  v258 = v246;
  v108 = v251;
  v259 = v251;
  v109 = v213;
  List<>.init(content:)();
  v110 = type metadata accessor for URL();
  v111 = v225;
  (*(*(v110 - 8) + 56))(v225, 1, 1, v110);
  v112 = v250;
  v113 = *(v250 + 16);
  v237 = (v250 + 16);
  v238 = v113;
  v114 = v249;
  v115 = v248;
  (v113)(v249, v108, v248);
  v116 = v112;
  v245 = *(v112 + 80);
  v117 = (v245 + 32) & ~v245;
  v244 = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = v106;
  *(v118 + 24) = v107;
  v236 = *(v116 + 32);
  v250 = v116 + 32;
  v119 = v118 + v117;
  v120 = v115;
  (v236)(v119, v114, v115);
  v121 = v218;
  v122 = v111;
  v123 = v111;
  v124 = v217;
  sub_1000D9768(v123, sub_10003DC54, v118, v217, v214, v218);

  sub_100007E14(v122, &unk_100144630, &qword_1000F5180);
  (*(v223 + 8))(v109, v124);
  static Edge.Set.top.getter();
  v125 = v226;
  static ContentMarginPlacement.automatic.getter();
  v126 = v210;
  v127 = v211;
  View.contentMargins(_:_:for:)();
  (*(v227 + 8))(v125, v228);
  (*(v224 + 8))(v121, v127);
  v129 = v229;
  v128 = v230;
  v130 = v231;
  (*(v230 + 104))(v229, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v231);
  v131 = v207;
  v132 = v208;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v128 + 8))(v129, v130);
  (*(v219 + 8))(v126, v132);
  v133 = v251;
  sub_1000315A4(v120, v134, v135, v136);
  v137 = sub_10001E088();
  v139 = v138;

  v260 = v137;
  v261 = v139;
  v140 = v204;
  View.navigationTitle<A>(_:)();

  (*(v220 + 8))(v131, v140);
  v141 = v249;
  v142 = v133;
  v143 = v238;
  (v238)(v249, v142, v120);
  v144 = v244;
  v145 = swift_allocObject();
  v146 = v243;
  v147 = v246;
  *(v145 + 16) = v243;
  *(v145 + 24) = v147;
  v148 = v120;
  v149 = v236;
  (v236)(v145 + v144, v141, v148);
  v150 = v242;
  v151 = v202;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v221 + 8))(v150, v151);
  v242 = swift_checkMetadataState();
  v152 = v249;
  v153 = v248;
  v143(v249, v251, v248);
  v154 = v244;
  v155 = swift_allocObject();
  v156 = v246;
  *(v155 + 16) = v146;
  *(v155 + 24) = v156;
  v149(v155 + v154, v152, v153);
  swift_checkMetadataState();
  v157 = v198;
  v158 = v241;
  v159 = v194;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v222 + 8))(v158, v159);
  v254 = v146;
  v160 = v156;
  v255 = v156;
  v161 = v251;
  v256 = v251;
  v162 = v183;
  View.toolbar<A>(content:)();
  (*(v215 + 8))(v157, v162);
  v163 = v232;
  v164 = v248;
  sub_1000315F4(v248, v165, v166, v167);
  v252 = v146;
  v253 = v160;
  swift_getKeyPath();
  v168 = v233;
  Bindable<A>.subscript.getter();

  (*(v234 + 8))(v163, v168);
  v169 = v249;
  (v238)(v249, v161, v164);
  v170 = v244;
  v171 = swift_allocObject();
  *(v171 + 16) = v146;
  *(v171 + 24) = v160;
  (v236)(v171 + v170, v169, v164);
  v172 = v189;
  v173 = v190;
  v174 = v192;
  v175 = v197;
  v176 = v239;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v216 + 8))(v176, v175);
  v260 = v175;
  v261 = v174;
  v262 = v173;
  v263 = v172;
  swift_getOpaqueTypeConformance2();
  v177 = v193;
  v178 = v240;
  v179 = v200;
  sub_1000B03E4();
  v180 = *(v201 + 8);
  v180(v178, v179);
  sub_1000B03E4();
  return (v180)(v177, v179);
}

uint64_t sub_1000347DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v119 = a1;
  v136 = a5;
  v143 = a3;
  v141 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  v135 = *(v141 - 8);
  v133 = *(v135 + 64);
  __chkstk_darwin(v141);
  v134 = &KeyPath - v7;
  v142 = sub_100004370(&qword_100143980, &qword_1000F7328);
  v140 = sub_100004370(&qword_100143988, &unk_1000F7330);
  v139 = sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  v138 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, a2, a3, v8);
  v9 = type metadata accessor for ModifiedContent();
  v12 = sub_10003D5F4(v9, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v160 = v12;
  v161 = WitnessTable;
  v137 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v14 = type metadata accessor for ModifiedContent();
  v15 = sub_100004370(&qword_100142950, &qword_1000F7340);
  v16 = swift_getWitnessTable();
  v17 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v158 = v16;
  v159 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v151 = v14;
  v152 = v15;
  v153 = v18;
  v154 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v20 = type metadata accessor for ModifiedContent();
  v21 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v132 = v21;
  v151 = v14;
  v152 = v15;
  v153 = v18;
  v154 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v156 = OpaqueTypeConformance2;
  v157 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_10003D648();
  v151 = v20;
  v152 = v21;
  v153 = v24;
  v154 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v137 = &protocol conformance descriptor for [A];
  v27 = sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  v28 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v151 = v139;
  v152 = v138;
  v153 = OpaqueTypeMetadata2;
  v154 = v27;
  v155 = v28;
  type metadata accessor for ForEach();
  v29 = type metadata accessor for Section();
  v30 = sub_100004370(&qword_1001439E8, &qword_1000F7370);
  v31 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  v151 = v30;
  v152 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v151 = v20;
  v152 = v132;
  v153 = v24;
  v154 = v25;
  v150[13] = swift_getOpaqueTypeConformance2();
  v33 = swift_getWitnessTable();
  v150[10] = v32;
  v150[11] = v33;
  v34 = v119;
  v150[12] = &protocol witness table for EmptyView;
  v35 = swift_getWitnessTable();
  v129 = v29;
  v151 = v29;
  v152 = v35;
  v121 = v35;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88, &qword_1000F4E90);
  v36 = type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08, &qword_1000F7388);
  v117 = v36;
  v37 = type metadata accessor for ModifiedContent();
  v38 = sub_100004370(&qword_100143A10, &qword_1000F7390);
  v122 = v37;
  v115 = v38;
  v39 = type metadata accessor for ModifiedContent();
  v40 = sub_100004610(&qword_100143A18, &qword_100143980, &qword_1000F7328, v137);
  v151 = v142;
  v152 = &type metadata for String;
  v126 = v40;
  v127 = v39;
  v153 = v39;
  v154 = v40;
  v155 = &protocol witness table for String;
  v132 = type metadata accessor for ForEach();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &KeyPath - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v130 = &KeyPath - v43;
  v44 = type metadata accessor for ListSectionSpacing();
  v113 = *(v44 - 8);
  v114 = v44;
  __chkstk_darwin(v44);
  v46 = &KeyPath - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100002D44(&qword_100143B98, &qword_1000F7628);
  v116 = *(v138 - 8);
  __chkstk_darwin(v138);
  v112 = &KeyPath - v47;
  v120 = sub_100002D44(&qword_100143978, &qword_1000F7320);
  __chkstk_darwin(v120);
  v125 = &KeyPath - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &KeyPath - v50;
  v52 = sub_100002D44(&qword_100143970, &qword_1000F7318);
  v123 = *(v52 - 8);
  v124 = v52;
  __chkstk_darwin(v52);
  v140 = &KeyPath - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &KeyPath - v55;
  v57 = v118;
  v144 = v118;
  v145 = v143;
  v146 = v34;
  sub_100002D44(&qword_100143BA0, &qword_1000F7630);
  sub_100004610(&qword_100143BA8, &qword_100143BA0, &qword_1000F7630, &protocol conformance descriptor for IDView<A, B>);
  v139 = v56;
  Section<>.init(content:)();
  v58 = v34;
  sub_1000315A4(v141, v59, v60, v61);
  LOBYTE(v27) = sub_10001AA2C();

  v63 = 1;
  v137 = v51;
  if ((v27 & 1) == 0)
  {
    __chkstk_darwin(v62);
    v64 = v57;
    v65 = v143;
    *(&KeyPath - 4) = v57;
    *(&KeyPath - 3) = v65;
    v66 = v34;
    v109 = v34;
    sub_100002D44(&qword_100143BB0, &qword_1000F7638);
    sub_10003E908();
    v67 = v112;
    Section<>.init(content:)();
    static ListSectionSpacing.custom(_:)();
    v68 = *(sub_100002D44(&qword_100143BC8, &qword_1000F7640) + 36);
    v69 = v113;
    v70 = v114;
    (*(v113 + 16))(v67 + v68, v46, v114);
    v111 = v46;
    v71 = *(v69 + 56);
    v71(v67 + v68, 0, 1, v70);
    KeyPath = swift_getKeyPath();
    v72 = v66;
    v73 = (v67 + *(v138 + 36));
    v74 = *(v115 + 28);
    (*(v69 + 32))(v73 + v74, v111, v70);
    v75 = v73 + v74;
    v57 = v64;
    v71(v75, 0, 1, v70);
    *v73 = KeyPath;
    v58 = v72;
    v51 = v137;
    sub_10002F250(v67, v137, &qword_100143B98, &qword_1000F7628);
    v63 = 0;
  }

  (*(v116 + 56))(v51, v63, 1, v138);
  v76 = v141;
  sub_1000315A4(v141, v77, v78, v79);
  v80 = sub_100031644(v76);
  sub_10001AE2C(v80 & 0x1FF);
  v82 = v81;

  v150[0] = v82;
  v83 = v134;
  v84 = v135;
  (*(v135 + 16))(v134, v58, v76);
  v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v86 = swift_allocObject();
  v87 = v143;
  *(v86 + 16) = v57;
  *(v86 + 24) = v87;
  (*(v84 + 32))(v86 + v85, v83, v76);
  v151 = v129;
  v152 = v121;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v150[8] = v88;
  v150[9] = v89;
  v90 = swift_getWitnessTable();
  v91 = sub_100004610(&qword_100143BD0, &qword_100143A08, &qword_1000F7388, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v150[6] = v90;
  v150[7] = v91;
  v92 = swift_getWitnessTable();
  v93 = sub_100004610(&qword_100143BD8, &qword_100143A10, &qword_1000F7390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v150[4] = v92;
  v150[5] = v93;
  v94 = swift_getWitnessTable();
  v109 = sub_10003EB10(v94, v95, v96);
  v97 = v131;
  ForEach<>.init(_:content:)();
  v150[3] = v94;
  v98 = v132;
  v142 = swift_getWitnessTable();
  v99 = v130;
  sub_1000B03E4();
  v100 = v128;
  v143 = *(v128 + 8);
  v143(v97, v98);
  v102 = v123;
  v101 = v124;
  v103 = v140;
  (*(v123 + 16))(v140, v139, v124);
  v151 = v103;
  v104 = v137;
  v105 = v125;
  sub_100007FDC(v137, v125, &qword_100143978, &qword_1000F7320);
  v152 = v105;
  (*(v100 + 16))(v97, v99, v98);
  v153 = v97;
  v150[0] = v101;
  v150[1] = v120;
  v150[2] = v98;
  v147 = sub_10003EB64();
  v148 = sub_10003EC20();
  v149 = v142;
  sub_1000311BC(&v151, 3uLL, v150);
  v106 = v143;
  v143(v99, v98);
  sub_100007E14(v104, &qword_100143978, &qword_1000F7320);
  v107 = *(v102 + 8);
  v107(v139, v101);
  v106(v97, v98);
  sub_100007E14(v105, &qword_100143978, &qword_1000F7320);
  return (v107)(v140, v101);
}

void sub_1000356D0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LibraryListView(0, a1, a2, v10);
  sub_1000315A4(v11, v12, v13, v14);
  v31 = sub_10001A97C();

  sub_1000315A4(v11, v15, v16, v17);
  HIDWORD(v30) = sub_10001ADB4();

  v32 = static Color.clear.getter();
  v18 = AnyView.init<A>(_:)();
  v19 = static Solarium.isEnabled.getter();
  v20 = static Solarium.isEnabled.getter();
  v33 = 0;
  sub_1000315A4(v11, v21, v22, v23);
  LOBYTE(v11) = sub_10001ADB4();

  if (v11)
  {
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v26 = 0x8000000100100760;
    v24 = 0xD000000000000022;
  }

  v27 = 0.0;
  v28 = BYTE4(v30) & 1;
  *a3 = v31;
  *(a3 + 8) = v28;
  if (v19)
  {
    v29 = 4.0;
  }

  else
  {
    v29 = 0.0;
  }

  *(a3 + 16) = v18;
  *(a3 + 24) = 0x4020000000000000;
  if (v20)
  {
    v27 = 4.0;
  }

  *(a3 + 32) = v29;
  *(a3 + 40) = v27;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = v24;
  *(a3 + 72) = v26;
}

uint64_t sub_1000358D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - v12;
  (*(v10 + 16))(&v18 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v10 + 32))(v15 + v14, v13, v9);
  result = static Solarium.isEnabled.getter();
  v17 = 12.0;
  *a5 = sub_10003F8B4;
  *(a5 + 8) = v15;
  *(a5 + 16) = 0;
  if (result)
  {
    v17 = 16.0;
  }

  *(a5 + 24) = v17;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

double sub_100035A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  sub_1000315A4(v4, v5, v6, v7);
  sub_10001A1E4(1);

  return result;
}

uint64_t sub_100035A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a3;
  v81 = a4;
  v82 = a1;
  v83 = a2;
  v87 = a5;
  v7 = type metadata accessor for Prominence();
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v84 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100004370(&qword_100143988, &unk_1000F7330);
  v77 = sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  v76 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, a3, a4, v9);
  v10 = type metadata accessor for ModifiedContent();
  v13 = sub_10003D5F4(v10, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v105 = v13;
  v106 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v15 = type metadata accessor for ModifiedContent();
  v16 = sub_100004370(&qword_100142950, &qword_1000F7340);
  v17 = swift_getWitnessTable();
  v18 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v103 = v17;
  v104 = v18;
  v78 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v19 = swift_getWitnessTable();
  v20 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v96 = v15;
  v97 = v16;
  v98 = v19;
  v99 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v21 = type metadata accessor for ModifiedContent();
  v22 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v96 = v15;
  v97 = v16;
  v98 = v19;
  v99 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = &protocol conformance descriptor for _TraitWritingModifier<A>;
  v24 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v101 = OpaqueTypeConformance2;
  v102 = v24;
  v75 = v21;
  v25 = swift_getWitnessTable();
  v26 = sub_10003D648();
  v96 = v21;
  v97 = v22;
  v98 = v25;
  v99 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  v29 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v96 = v77;
  v97 = v76;
  v98 = OpaqueTypeMetadata2;
  v99 = v28;
  v100 = v29;
  v30 = type metadata accessor for ForEach();
  v31 = type metadata accessor for Section();
  v77 = *(v31 - 8);
  __chkstk_darwin(v31);
  v76 = &v65 - v32;
  v33 = sub_100004370(&qword_1001439E8, &qword_1000F7370);
  v34 = sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  v96 = v33;
  v97 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v96 = v75;
  v97 = v22;
  v98 = v25;
  v99 = v26;
  v95 = swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  v92 = v35;
  v93 = v36;
  v94 = &protocol witness table for EmptyView;
  v68 = swift_getWitnessTable();
  v96 = v31;
  v97 = v68;
  v70 = &opaque type descriptor for <<opaque return type of View.headerProminence(_:)>>;
  v67 = swift_getOpaqueTypeMetadata2();
  v73 = *(v67 - 8);
  __chkstk_darwin(v67);
  v38 = &v65 - v37;
  sub_100004370(&qword_100141F88, &qword_1000F4E90);
  v69 = type metadata accessor for ModifiedContent();
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v65 - v39;
  sub_100004370(&qword_100143A08, &qword_1000F7388);
  v71 = type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10, &qword_1000F7390);
  v40 = type metadata accessor for ModifiedContent();
  v75 = *(v40 - 8);
  __chkstk_darwin(v40);
  v66 = &v65 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v72 = &v65 - v43;
  v44 = *v82;
  v45 = v82[1];
  v46 = v82[2];
  v90[2] = v80;
  v90[3] = v81;
  v90[4] = v44;
  v90[5] = v45;
  v90[6] = v46;
  v90[7] = v83;
  v89[2] = v80;
  v89[3] = v81;
  v89[4] = v44;
  v89[5] = v45;
  v89[6] = v46;
  v47 = v76;
  sub_1000314D4(sub_10003EEA4, v90, sub_10003EEB4, v89, v88, v30, v35, v36);
  v48 = v84;
  v49 = v85;
  v50 = v86;
  (*(v85 + 104))(v84, enum case for Prominence.increased(_:), v86);
  v51 = v68;
  View.headerProminence(_:)();
  (*(v49 + 8))(v48, v50);
  (*(v77 + 8))(v47, v31);
  v91 = static HierarchicalShapeStyle.primary.getter();
  v96 = v31;
  v97 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v65;
  v54 = v67;
  View.foregroundStyle<A>(_:)();
  (*(v73 + 8))(v38, v54);
  static Solarium.isEnabled.getter();
  v55 = sub_100004610(&qword_100141F80, &qword_100141F88, &qword_1000F4E90, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v90[13] = v52;
  v90[14] = v55;
  v56 = v69;
  v57 = swift_getWitnessTable();
  v58 = v66;
  View.listSectionSpacing(_:)();
  (*(v74 + 8))(v53, v56);
  v59 = sub_100004610(&qword_100143BD0, &qword_100143A08, &qword_1000F7388, v79);
  v90[11] = v57;
  v90[12] = v59;
  v60 = swift_getWitnessTable();
  v61 = sub_100004610(&qword_100143BD8, &qword_100143A10, &qword_1000F7390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v90[9] = v60;
  v90[10] = v61;
  swift_getWitnessTable();
  v62 = v72;
  sub_1000B03E4();
  v63 = *(v75 + 8);
  v63(v58, v40);
  sub_1000B03E4();
  return (v63)(v62, v40);
}

uint64_t sub_100036510@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v56 = a1;
  v57 = a2;
  v58 = a5;
  v50 = a3;
  v51 = a4;
  v55 = type metadata accessor for LibraryListView(0, a3, a4, a2);
  v53 = *(v55 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = v45 - v7;
  v59 = sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  v60 = type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, a3, a4, v8);
  v9 = type metadata accessor for ModifiedContent();
  v12 = sub_10003D5F4(v9, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v72 = v12;
  v73 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  v14 = type metadata accessor for ModifiedContent();
  v15 = sub_100004370(&qword_100142950, &qword_1000F7340);
  v16 = swift_getWitnessTable();
  v17 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v70 = v16;
  v71 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v63 = v14;
  v64 = v15;
  v65 = v18;
  v66 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v20 = type metadata accessor for ModifiedContent();
  v21 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v48 = v21;
  v63 = v14;
  v64 = v15;
  v65 = v18;
  v66 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v68 = OpaqueTypeConformance2;
  v69 = v23;
  v49 = v20;
  v24 = swift_getWitnessTable();
  v47 = v24;
  v46 = sub_10003D648();
  v63 = v20;
  v64 = v21;
  v65 = v24;
  v66 = v46;
  v45[0] = &opaque type descriptor for <<opaque return type of View.swipeActions<A>(edge:allowsFullSwipe:content:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45[2] = OpaqueTypeMetadata2;
  v26 = sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  v45[1] = v26;
  v27 = sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v63 = v59;
  v64 = v60;
  v65 = OpaqueTypeMetadata2;
  v66 = v26;
  v67 = v27;
  v28 = type metadata accessor for ForEach();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = v45 - v34;
  v62 = v56;
  v36 = v53;
  v37 = v52;
  v38 = v55;
  (*(v53 + 16))(v52, v57, v55, v33);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v51;
  *(v40 + 16) = v50;
  *(v40 + 24) = v41;
  (*(v36 + 32))(v40 + v39, v37, v38);

  v63 = v49;
  v64 = v48;
  v65 = v47;
  v66 = v46;
  v42 = swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100143C18, sub_10003D954, &protocol conformance descriptor for SHMediaItem);
  ForEach<>.init(_:content:)();
  v61 = v42;
  swift_getWitnessTable();
  sub_1000B03E4();
  v43 = *(v29 + 8);
  v43(v31, v28);
  sub_1000B03E4();
  return (v43)(v35, v28);
}

uint64_t sub_100036BA0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a2;
  v104 = a1;
  v91 = a5;
  v7 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v7);
  v105 = v73 - v8;
  v106 = a3;
  v101 = a4;
  v103 = type metadata accessor for LibraryListView(0, a3, a4, v9);
  v97 = *(v103 - 8);
  v100 = *(v97 + 64);
  __chkstk_darwin(v103);
  v96 = v73 - v10;
  type metadata accessor for LibraryItemContextMenu(255, a3, a4, v11);
  v12 = type metadata accessor for ModifiedContent();
  v15 = sub_10003D5F4(v12, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v120 = v15;
  v121 = WitnessTable;
  v99 = v12;
  v98 = swift_getWitnessTable();
  v17 = type metadata accessor for Button();
  v102 = *(v17 - 8);
  __chkstk_darwin(v17);
  v95 = v73 - v18;
  type metadata accessor for AccessibilityAttachmentModifier();
  v94 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v89 = *(v19 - 8);
  __chkstk_darwin(v19);
  v92 = v73 - v20;
  v21 = swift_getWitnessTable();
  v93 = v21;
  v22 = sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v118 = v21;
  v119 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  v122 = *&v19;
  v123 = *&v7;
  v124 = *&v23;
  v125 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v82 = v73 - v26;
  sub_100004370(&qword_100143998, &qword_1000F7348);
  v86 = OpaqueTypeMetadata2;
  v27 = type metadata accessor for ModifiedContent();
  v87 = *(v27 - 8);
  __chkstk_darwin(v27);
  v84 = v73 - v28;
  v29 = sub_100004370(&qword_1001439A0, &qword_1000F7350);
  v88 = v19;
  v122 = *&v19;
  v123 = *&v7;
  v90 = v7;
  v81 = v23;
  v124 = *&v23;
  v125 = v24;
  v80 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v73[1] = OpaqueTypeConformance2;
  v116 = OpaqueTypeConformance2;
  v117 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_10003D648();
  v122 = *&v27;
  v123 = *&v29;
  v83 = v29;
  v77 = v32;
  v124 = *&v32;
  v125 = v33;
  v76 = v33;
  v79 = swift_getOpaqueTypeMetadata2();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v75 = v73 - v37;
  v38 = *v104;
  v39 = v97;
  v40 = v96;
  v41 = v107;
  v42 = v103;
  (*(v97 + 16))(v96, v107, v103, v36);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = (v100 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v106;
  v47 = v101;
  *(v45 + 16) = v106;
  *(v45 + 24) = v47;
  v48 = v45 + v43;
  v49 = v47;
  (*(v39 + 32))(v48, v40, v42);
  *(v45 + v44) = v38;
  v50 = v105;
  v51 = v46;
  v52 = v92;
  v108 = v51;
  v109 = v49;
  v110 = v38;
  v111 = v41;
  v53 = v38;
  v54 = v95;
  Button.init(action:label:)();
  v55 = v94;
  View.accessibilityIdentifier(_:)();
  (*(v102 + 8))(v54, v55);
  v56 = enum case for DynamicTypeSize.accessibility2(_:);
  v57 = type metadata accessor for DynamicTypeSize();
  (*(*(v57 - 8) + 104))(v50, v56, v57);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v59 = v82;
    v60 = v88;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v50, &qword_100142950, &qword_1000F7340);
    (*(v89 + 8))(v52, v60);
    v61 = static Solarium.isEnabled.getter();
    v62 = 12.0;
    if (v61)
    {
      v62 = 16.0;
    }

    v122 = v62;
    v123 = v62;
    v124 = v62;
    v125 = 0x4030000000000000;
    v126 = 0;
    v63 = v84;
    v64 = v86;
    View.listRowInsets(_:)();
    v65 = (*(v85 + 8))(v59, v64);
    __chkstk_darwin(v65);
    v73[-4] = v106;
    v73[-3] = v49;
    v73[-2] = v107;
    v73[-1] = v53;
    v66 = v74;
    v67 = v83;
    v68 = v77;
    v69 = v76;
    View.swipeActions<A>(edge:allowsFullSwipe:content:)();
    (*(v87 + 8))(v63, v27);
    v112 = v27;
    v113 = v67;
    v114 = v68;
    v115 = v69;
    swift_getOpaqueTypeConformance2();
    v70 = v75;
    v71 = v79;
    sub_1000B03E4();
    v72 = *(v78 + 8);
    v72(v66, v71);
    sub_1000B03E4();
    return (v72)(v70, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100037694(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LibraryListView(0, a3, a4, v12);
  sub_1000315A4(v13, v14, v15, v16);
  sub_100020604(0xBu, 0);

  sub_1000315A4(v13, v17, v18, v19);
  v20 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v20 = v23[1];
  }

  sub_10001C7A4(a2, v20);

  return result;
}

uint64_t sub_100037854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v9 = type metadata accessor for LibraryListView(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v61 = *(v10 + 64);
  __chkstk_darwin(v9);
  v63 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v54 = &v54 - v13;
  v15 = *(a3 - 8);
  v60 = v15;
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v18;
  v20 = v19;
  v56 = a4;
  v66 = type metadata accessor for LibraryItemContextMenu(255, v19, a4, v21);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v67 = v22;
  v68 = v23;
  __chkstk_darwin(v22);
  v62 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v65 = &v54 - v26;
  KeyPath = swift_getKeyPath();
  v72 = KeyPath;
  v73 = 0;
  v74 = a1;
  v59 = a1;
  v27 = v9;
  v57 = a2;
  v31 = sub_1000315A4(v9, v28, v29, v30);
  v32 = *(v15 + 16);
  v33 = v31 + *(*v31 + 184);
  v55 = v20;
  v32(v18, v33, v20);

  v34 = *(v10 + 16);
  v34(v14, a2, v27);
  v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v20;
  *(v36 + 24) = a4;
  v37 = *(v10 + 32);
  v37(v36 + v35, v54, v27);
  v38 = v63;
  v34(v63, v57, v27);
  v39 = swift_allocObject();
  v41 = v55;
  v40 = v56;
  *(v39 + 16) = v55;
  *(v39 + 24) = v40;
  v42 = (v37)(v39 + v35, v38, v27);
  v45 = sub_10003D5F4(v42, v43, v44);
  v46 = v62;
  v47 = v58;
  v48 = v59;
  sub_10002F4B0(v59, v58, sub_10003F658, v36, sub_10003F6F4, v39, &type metadata for LibraryItemView, v41, v62, v45, v40);

  (*(v60 + 8))(v47, v41);

  WitnessTable = swift_getWitnessTable();
  v70 = v45;
  v71 = WitnessTable;
  v50 = v67;
  swift_getWitnessTable();
  v51 = v65;
  sub_1000B03E4();
  v52 = *(v68 + 8);
  v52(v46, v50);
  sub_1000B03E4();
  return (v52)(v51, v50);
}

uint64_t sub_100037D10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v36 = a2;
  v37 = a5;
  v7 = type metadata accessor for LibraryListView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_100002D44(&qword_100143C20, &qword_1000F7680);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_100002D44(&qword_1001439D0, &unk_1000F7360);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  static ButtonRole.destructive.getter();
  v19 = type metadata accessor for ButtonRole();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  (*(v8 + 16))(v11, a1, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v33;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v8 + 32))(v22 + v20, v11, v7);
  v24 = v36;
  *(v22 + v21) = v36;
  v38 = a3;
  v39 = v23;
  v25 = v24;
  Button.init(role:action:label:)();
  sub_100004610(&qword_1001439C8, &qword_1001439D0, &unk_1000F7360, &protocol conformance descriptor for Button<A>);
  v26 = v37;
  v27 = v34;
  View.accessibilityIdentifier(_:)();
  (*(v35 + 8))(v18, v27);
  v28 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002D44(&qword_1001439A0, &qword_1000F7350);
  v31 = (v26 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v28;
  return result;
}

double sub_10003807C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25[2] = a1;
  v26 = a4;
  v25[1] = a3;
  v7 = type metadata accessor for LibraryListView(0, a3, a4, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v12 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  type metadata accessor for MainActor();
  v16 = a2;
  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = a3;
  *(v20 + 5) = v26;
  (*(v8 + 32))(&v20[v18], v11, v7);
  *&v20[v19] = v16;
  sub_1000C8AF8(0, 0, v14, &unk_1000F76C8, v20);

  sub_1000315A4(v7, v21, v22, v23);
  sub_100020604(0x12u, 0);

  return result;
}

uint64_t sub_1000382E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(a6 - 8);
  v7[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[9] = v9;
  v7[10] = v8;

  return _swift_task_switch(sub_1000383CC, v9, v8);
}

uint64_t sub_1000383CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[6];
  v5 = v4[7];
  v7 = v4[4];
  v19 = v4[5];
  v8 = type metadata accessor for LibraryListView(0, v7, v19, a4);
  v12 = sub_1000315A4(v8, v9, v10, v11);
  (*(v6 + 16))(v5, v12 + *(*v12 + 184), v7);

  v18 = (*(v19 + 40) + **(v19 + 40));
  v13 = swift_task_alloc();
  v4[11] = v13;
  *v13 = v4;
  v13[1] = sub_100038548;
  v14 = v4[4];
  v15 = v4[5];
  v16 = v4[3];

  return v18(v16, v14, v15);
}

uint64_t sub_100038548()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_1000386CC, v6, v5);
}

uint64_t sub_1000386CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100038734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v39 = type metadata accessor for AccessibilityTraits();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100002D44(&qword_1001439E8, &qword_1000F7370);
  __chkstk_darwin(v36);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  __chkstk_darwin(v10);
  v35 = &v33 - v11;
  *&v48[0] = a1;
  *(&v48[0] + 1) = a2;
  sub_10000B730(v12, v13, v14);

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000BFBC(v15, v17, v19 & 1);

  v27 = static Solarium.isEnabled.getter();
  v28 = 0.0;
  if (v27)
  {
    v28 = 4.0;
  }

  v47 = v24 & 1;
  v46 = 0;
  *&v41 = v20;
  *(&v41 + 1) = v22;
  LOBYTE(v42) = v24 & 1;
  *(&v42 + 1) = v26;
  *&v43 = 0x4038000000000000;
  *(&v43 + 1) = v28;
  v44 = xmmword_1000F7210;
  v45 = 0;
  sub_100002D44(&qword_100143A00, &unk_1000F7378);
  sub_10003D89C();
  View.accessibilityIdentifier(_:)();
  v48[2] = v43;
  v48[3] = v44;
  v49 = v45;
  v48[0] = v41;
  v48[1] = v42;
  sub_100007E14(v48, &qword_100143A00, &unk_1000F7378);
  v29 = v37;
  static AccessibilityTraits.isHeader.getter();
  v30 = v34;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v38 + 8))(v29, v39);
  sub_100007E14(v7, &qword_1001439E8, &qword_1000F7370);
  v31 = v35;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_100007E14(v30, &qword_1001439E8, &qword_1000F7370);
  sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  View.accessibilityShowsLargeContentViewer()();
  return sub_100007E14(v31, &qword_1001439E8, &qword_1000F7370);
}

double sub_100038B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a4;
  v7 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  sub_1000315A4(v7, v8, v9, v10);
  sub_100020604(v6, a5);

  return result;
}

uint64_t sub_100038B88@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 <= 0.0;
  return result;
}

double sub_100038BBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = type metadata accessor for LibraryListView(0, a4, a5, a4);
  sub_1000315A4(v6, v7, v8, v9);
  sub_10001C6C4((v5 & 1) == 0);

  return result;
}

uint64_t sub_100038C18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for LibraryListView(0, a1, a2, a2);
  sub_1000315A4(v4, v5, v6, v7);
  v8 = sub_10001E144();

  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v9 = type metadata accessor for TrackPageView(0);
  v10 = v9[5];
  *(a3 + v10) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  swift_storeEnumTagMultiPayload();
  v11 = v9[6];
  *(a3 + v11) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v12 = v9[7];
  *(a3 + v12) = swift_getKeyPath();
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  swift_storeEnumTagMultiPayload();
  v13 = (a3 + v9[9]);
  *v13 = [objc_allocWithZone(CLLocationManager) init];
  type metadata accessor for LocationManager(0);
  Logger.init(subsystem:category:)();
  v14 = (a3 + v9[10]);
  sub_100002D44(&qword_1001420E8, &qword_1000F7620);
  *(swift_allocObject() + 16) = 0;
  sub_100004610(&qword_1001420F0, &qword_1001420E8, &qword_1000F7620, &unk_1000FC274);
  result = ObservedObject.init(wrappedValue:)();
  *v14 = result;
  v14[1] = v16;
  *(a3 + v9[8]) = v8;
  v17 = (a3 + v9[11]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_100038E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100002D44(&qword_100143A30, &qword_1000F73A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a1;
  sub_100002D44(&qword_100143A68, &qword_1000F7440);
  v12 = sub_100004370(&qword_100143A70, &qword_1000F7448);
  v13 = sub_100004370(&qword_100143A78, &qword_1000F7450);
  v14 = sub_10003E220();
  v15 = sub_100004610(&qword_100143A98, &qword_100143A78, &qword_1000F7450, &protocol conformance descriptor for Label<A, B>);
  v17[8] = v12;
  v17[9] = v13;
  v17[10] = v14;
  v17[11] = v15;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  sub_100004610(&qword_100143A38, &qword_100143A30, &qword_1000F73A0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10003908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v8 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - v10;
  v26 = sub_100002D44(&qword_100143A90, &qword_1000F7458);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = v25 - v12;
  v28 = sub_100002D44(&qword_100143A70, &qword_1000F7448);
  v14 = __chkstk_darwin(v28);
  v16 = v25 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v9 + 32))(v18 + v17, v11, v8);
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v33 = a2;
  v34 = a3;
  v25[1] = sub_100002D44(&qword_100143AA0, &qword_1000F7460);
  sub_100002D44(&qword_100143AA8, &qword_1000F7468);
  v19 = sub_100004370(&qword_100143AB0, &qword_1000F7470);
  v20 = sub_100004370(&qword_100143AB8, &unk_1000F7478);
  v21 = sub_10003E3A8();
  v22 = sub_10003E460();
  v38 = &type metadata for Image;
  v39 = &type metadata for Solarium;
  v40 = v19;
  v41 = v20;
  v42 = &protocol witness table for Image;
  v43 = &protocol witness table for Solarium;
  v44 = v21;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_100143B10, &qword_100143AA8, &qword_1000F7468, &protocol conformance descriptor for TupleView<A>);
  Menu.init(onPresentationChanged:content:label:)();
  sub_100004610(&qword_100143A88, &qword_100143A90, &qword_1000F7458, &protocol conformance descriptor for Menu<A, B>);
  v23 = v26;
  View.accessibilityIdentifier(_:)();
  (*(v27 + 8))(v13, v23);
  v30 = a2;
  v31 = a3;
  v32 = a1;
  sub_100002D44(&qword_100143A78, &qword_1000F7450);
  sub_10003E220();
  sub_100004610(&qword_100143A98, &qword_100143A78, &qword_1000F7450, &protocol conformance descriptor for Label<A, B>);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_100007E14(v16, &qword_100143A70, &qword_1000F7448);
}

double sub_100039538(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = type metadata accessor for LibraryListView(0, a3, a4, a4);
    sub_1000315A4(v4, v5, v6, v7);
    sub_100020604(0x11u, 0);
  }

  return result;
}

uint64_t sub_1000395B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v4 = a3;
  v53 = a3;
  v52 = a2;
  v58 = a4;
  v7 = sub_100002D44(&qword_100143B20, &qword_1000F7518);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v49 - v10;
  v54 = sub_100002D44(&qword_100143B28, &qword_1000F7520);
  v51 = *(v54 - 8);
  v11 = v51;
  __chkstk_darwin(v54);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v17 = type metadata accessor for LibraryListView(0, a2, v4, v16);
  v18 = sub_100031720(v17);
  v20 = v19;
  LOWORD(v4) = v21;
  swift_getKeyPath();
  v70 = v18;
  v71 = v20;
  v72 = v4 & 0x1FF;
  sub_100002D44(&qword_100143B30, &qword_1000F7548);
  Binding.subscript.getter();

  v22 = v67;
  v23 = v68;
  v24 = v69;

  v64 = v22;
  v65 = v23;
  v66 = v24;
  v25 = sub_100002D44(&qword_100143B38, &unk_1000F7550);
  sub_100020CE8(v25, v26, v27);
  sub_10003E740();
  v50 = v15;
  Picker.init(selection:label:content:)();
  v28 = sub_100031720(v17);
  v30 = v29;
  LOWORD(v22) = v31;
  swift_getKeyPath();
  v70 = v28;
  v71 = v30;
  v72 = v22 & 0x1FF;
  Binding.subscript.getter();

  v32 = v67;
  v33 = v68;
  v34 = v69;

  v61 = v52;
  v62 = v53;
  v63 = a1;
  v64 = v32;
  v65 = v33;
  v66 = v34;
  sub_100002D44(&qword_100143B58, &qword_1000F7580);
  sub_100004610(&qword_100143B60, &qword_100143B58, &qword_1000F7580, &protocol conformance descriptor for TupleView<A>);
  v35 = v60;
  Picker.init(selection:label:content:)();
  v36 = *(v11 + 16);
  v37 = v59;
  v38 = v54;
  v36(v59, v15, v54);
  v40 = v55;
  v39 = v56;
  v41 = *(v56 + 16);
  v42 = v35;
  v43 = v57;
  v41(v55, v42, v57);
  v44 = v58;
  v36(v58, v37, v38);
  v45 = sub_100002D44(&qword_100143B68, &qword_1000F7588);
  v41(&v44[*(v45 + 48)], v40, v43);
  v46 = *(v39 + 8);
  v46(v60, v43);
  v47 = *(v51 + 8);
  v47(v50, v38);
  v46(v40, v43);
  return (v47)(v59, v38);
}

uint64_t sub_100039AAC()
{
  sub_100002D44(&qword_100143000, qword_1000F65E0);
  sub_100002D44(&qword_100143B50, &qword_1000F9790);
  sub_100004610(&qword_100143B88, &qword_100143000, qword_1000F65E0, &protocol conformance descriptor for [A]);
  v0 = sub_10003E7C4();
  sub_10003E88C(v0, v1, v2);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100039BA0(char *a1)
{
  v1 = sub_100019C60(*a1);
  sub_10000B730(v1, v2, v3);
  v4 = Text.init<A>(_:)();
  v6 = v5 & 1;
  v8 = v7;
  View.accessibilityIdentifier(_:)();

  sub_10000BFBC(v4, v8, v6);
}

uint64_t sub_100039CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40[1] = a1;
  v44 = a4;
  v6 = sub_100002D44(&qword_100143B70, &qword_1000F7590);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  v10 = sub_100002D44(&qword_100143B78, &qword_1000F7598);
  __chkstk_darwin(v10 - 8);
  v43 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = v40 - v13;
  __chkstk_darwin(v14);
  v41 = v40 - v15;
  __chkstk_darwin(v16);
  v40[0] = v40 - v17;
  v19 = type metadata accessor for LibraryListView(0, a2, a3, v18);
  sub_1000315A4(v19, v20, v21, v22);

  *v9 = Text.init(_:tableName:bundle:comment:)();
  *(v9 + 1) = v23;
  v9[16] = v24 & 1;
  *(v9 + 3) = v25;
  *(v9 + 16) = 257;
  v45 = &type metadata for Text;
  v46 = &type metadata for Bool;
  v47 = &protocol witness table for Text;
  v48 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  v26 = *(v7 + 8);
  v26(v9, v6);
  sub_1000315A4(v19, v27, v28, v29);

  *v9 = Text.init(_:tableName:bundle:comment:)();
  *(v9 + 1) = v30;
  v9[16] = v31 & 1;
  *(v9 + 3) = v32;
  *(v9 + 16) = 256;
  v33 = v41;
  View.accessibilityIdentifier(_:)();
  v26(v9, v6);
  v34 = v40[0];
  v35 = v42;
  sub_100007FDC(v40[0], v42, &qword_100143B78, &qword_1000F7598);
  v36 = v43;
  sub_100007FDC(v33, v43, &qword_100143B78, &qword_1000F7598);
  v37 = v44;
  sub_100007FDC(v35, v44, &qword_100143B78, &qword_1000F7598);
  v38 = sub_100002D44(&qword_100143B80, &unk_1000F75A0);
  sub_100007FDC(v36, v37 + *(v38 + 48), &qword_100143B78, &qword_1000F7598);
  sub_100007E14(v33, &qword_100143B78, &qword_1000F7598);
  sub_100007E14(v34, &qword_100143B78, &qword_1000F7598);
  sub_100007E14(v36, &qword_100143B78, &qword_1000F7598);
  return sub_100007E14(v35, &qword_100143B78, &qword_1000F7598);
}

double sub_10003A138()
{
  Image.init(systemName:)();
  Solarium.init()();
  sub_100002D44(&qword_100143AB0, &qword_1000F7470);
  sub_100002D44(&qword_100143AB8, &unk_1000F7478);
  sub_10003E3A8();
  sub_10003E460();
  View.staticIf<A, B, C>(_:then:else:)();

  return result;
}

uint64_t sub_10003A248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v5 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  *a2 = v4;
  a2[1] = KeyPath;
  a2[2] = v5;
}

uint64_t sub_10003A2BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SymbolVariants();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v22[1] = *a1;
  static SymbolVariants.circle.getter();
  SymbolVariants.fill.getter();
  v11 = *(v5 + 8);
  v11(v10, v4);
  View.symbolVariant(_:)();
  v11(v7, v4);
  v12 = (a2 + *(sub_100002D44(&qword_100143AE8, &qword_1000F7490) + 36));
  v13 = *(sub_100002D44(&qword_100143AF8, &qword_1000F7498) + 28);
  static SymbolRenderingMode.palette.getter();
  v14 = type metadata accessor for SymbolRenderingMode();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *v12 = swift_getKeyPath();
  LODWORD(v12) = static HierarchicalShapeStyle.primary.getter();
  v15 = [objc_opt_self() tertiarySystemFillColor];
  v16 = Color.init(uiColor:)();
  v17 = a2 + *(sub_100002D44(&qword_100143AD8, &qword_1000F7488) + 36);
  *v17 = v12;
  *(v17 + 8) = v16;
  static Font.title2.getter();
  static Font.Weight.semibold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = sub_100002D44(&qword_100143AB8, &unk_1000F7478);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t sub_10003A530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002D44(&qword_1001422B8, &qword_1000F53F8);
  swift_getOpaqueTypeConformance2();
  return Label.init(title:icon:)();
}

uint64_t sub_10003A600@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LibraryListView(0, a1, a2, a3);
  sub_1000315A4(v5, v6, v7, v8);

  result = Text.init(_:tableName:bundle:comment:)();
  *a4 = result;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v12;
  return result;
}

double sub_10003A6C0()
{
  v0 = type metadata accessor for SymbolVariants();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v8 - v5;
  v8[1] = Image.init(systemName:)();
  if (static Solarium.isEnabled.getter())
  {
    static SymbolVariants.none.getter();
  }

  else
  {
    static SymbolVariants.circle.getter();
    SymbolVariants.fill.getter();
    (*(v1 + 8))(v3, v0);
  }

  View.symbolVariant(_:)();
  (*(v1 + 8))(v6, v0);

  return result;
}

uint64_t sub_10003A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  sub_1000315A4(v9, v10, v11, v12);
  v40 = sub_10001E158();
  v13 = v40;

  v15 = *(v9 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - v17;
  (*(v15 + 16))(&v36 - v17, a1, v9, v16);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v19;
  *(v21 + 3) = &protocol witness table for MainActor;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  (*(v15 + 32))(&v21[v20], v18, v9);
  v22 = type metadata accessor for TaskPriority();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v36 - v25;
  static TaskPriority.userInitiated.getter();
  if (sub_1000EEF04(2, 26, 4, 0))
  {
    v38 = type metadata accessor for _TaskModifier2();
    v39 = &v36;
    v37 = *(v38 - 8);
    __chkstk_darwin(v38);
    v36 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v42 = 0xD000000000000033;
    v43 = 0x80000001001006A0;
    v41 = 185;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v30 = __chkstk_darwin(v29);
    (*(v23 + 16))(&v36 - v25, &v36 - v25, v22, v30);
    v31 = v36;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v23 + 8))(v26, v22);
    v32 = sub_100002D44(&qword_100141E08, &qword_1000F4530);
    result = (*(v37 + 32))(&a5[*(v32 + 36)], v31, v38);
  }

  else
  {
    v34 = &a5[*(sub_100002D44(&qword_100141E10, &qword_1000F4538) + 36)];
    v35 = type metadata accessor for _TaskModifier();
    result = (*(v23 + 32))(&v34[*(v35 + 20)], &v36 - v25, v22);
    *v34 = &unk_1000F7438;
    *(v34 + 1) = v21;
  }

  *a5 = v40;
  return result;
}

uint64_t sub_10003AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003AD08, v7, v6);
}

uint64_t sub_10003AD08()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for LibraryListView(0, v2, v1, v3);
  v8 = sub_1000315A4(v4, v5, v6, v7);
  sub_10001BA4C(v8);

  v9 = v0[1];

  return v9();
}

double sub_10003AD98(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != *a2)
  {
    type metadata accessor for LibraryListView(0, a4, a5, a4);

    sub_100002D44(&qword_100143A60, &unk_1000F73E8);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10003AE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for ScenePhase();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for ScenePhase.background(_:), v7, v9);
  v12 = static ScenePhase.== infix(_:_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = type metadata accessor for LibraryListView(0, a4, a5, v14);
    sub_1000315A4(v15, v16, v17, v18);
    sub_10001C650();

    return sub_1000316AC(0, v15);
  }

  return result;
}

uint64_t sub_10003AFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v51 = a3;
  v46 = sub_100002D44(&qword_100143CA0, &unk_1000F7850);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v44 - v5;
  v6 = sub_100002D44(&qword_100143CA8, &unk_1000FD340);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = sub_100002D44(&qword_100143CB0, &qword_1000F7860);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = sub_100002D44(&qword_100143CB8, &qword_1000F7868);
  v47 = *(v15 - 8);
  v48 = v15;
  __chkstk_darwin(v15);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4008000000000000;
  v14[16] = 0;
  v20 = sub_100002D44(&qword_100143CC0, &qword_1000F7870);
  sub_10003B460(a1, v3, &v14[*(v20 + 44)]);
  Solarium.init()();
  v21 = sub_100002D44(&qword_100143CC8, &qword_1000F7878);
  v22 = sub_100004610(&qword_100143CD0, &qword_100143CB0, &qword_1000F7860, &protocol conformance descriptor for VStack<A>);
  v23 = sub_100040998();
  v24 = v19;
  View.staticIf<A, B>(_:then:)(v23, sub_10003C858, 0, v12, &type metadata for Solarium, v21, v22, &protocol witness table for Solarium, v23);
  sub_100007E14(v14, &qword_100143CB0, &qword_1000F7860);
  if (static Solarium.isEnabled.getter())
  {
    v25 = 1;
    v26 = v46;
  }

  else
  {
    v27 = v45;
    Divider.init()();
    v28 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v29 = v46;
    v30 = v27 + *(v46 + 36);
    *v30 = v28;
    *(v30 + 8) = v31;
    *(v30 + 16) = v32;
    *(v30 + 24) = v33;
    *(v30 + 32) = v34;
    *(v30 + 40) = 0;
    sub_10002F250(v27, v11, &qword_100143CA0, &unk_1000F7850);
    v25 = 0;
    v26 = v29;
  }

  (*(v50 + 56))(v11, v25, 1, v26);
  v35 = v47;
  v36 = v48;
  v37 = *(v47 + 16);
  v38 = v49;
  v37(v49, v24, v48);
  sub_100007FDC(v11, v8, &qword_100143CA8, &unk_1000FD340);
  v39 = v8;
  v40 = v51;
  v37(v51, v38, v36);
  v41 = sub_100002D44(&qword_100143CE0, &qword_1000F7880);
  sub_100007FDC(v39, &v40[*(v41 + 48)], &qword_100143CA8, &unk_1000FD340);
  sub_100007E14(v11, &qword_100143CA8, &unk_1000FD340);
  v42 = *(v35 + 8);
  v42(v24, v36);
  sub_100007E14(v39, &qword_100143CA8, &unk_1000FD340);
  return (v42)(v38, v36);
}

uint64_t sub_10003B460@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v62 = a2;
  v63 = a1;
  v66 = a3;
  v3 = sub_100002D44(&qword_100143CE8, &qword_1000F7888);
  __chkstk_darwin(v3 - 8);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = (&v57 - v6);
  v59 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v59);
  v74 = &v57 - v7;
  v8 = type metadata accessor for AccessibilityTraits();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100002D44(&qword_100143B50, &qword_1000F9790);
  __chkstk_darwin(v73);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v57 - v13;
  __chkstk_darwin(v14);
  v68 = &v57 - v15;
  __chkstk_darwin(v16);
  v72 = &v57 - v17;
  v61 = sub_100002D44(&qword_100143CF0, &qword_1000F7890);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v57 - v20;
  LocalizedStringKey.init(_:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24;
  static Font.largeTitle.getter();
  if (static Solarium.isEnabled.getter())
  {
    static Font.Weight.bold.getter();
  }

  else
  {
    static Font.Weight.heavy.getter();
  }

  Font.weight(_:)();

  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10000BFBC(v21, v23, v25 & 1);

  v76 = v26;
  v77 = v28;
  v78 = v30 & 1;
  v79 = v32;
  View.accessibilityIdentifier(_:)();
  sub_10000BFBC(v26, v28, v30 & 1);

  v33 = [objc_opt_self() mainBundle];
  v80._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x485F4D415A414853;
  v34._object = 0xEE0059524F545349;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v80);

  v36 = v67;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_100007E14(v11, &qword_100143B50, &qword_1000F9790);
  v37 = v69;
  static AccessibilityTraits.isHeader.getter();
  v38 = v68;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v70 + 8))(v37, v71);
  sub_100007E14(v36, &qword_100143B50, &qword_1000F9790);
  v39 = v72;
  ModifiedContent<>.accessibilityHeading(_:)();
  sub_100007E14(v38, &qword_100143B50, &qword_1000F9790);
  v40 = enum case for DynamicTypeSize.accessibility2(_:);
  v41 = type metadata accessor for DynamicTypeSize();
  v42 = v74;
  (*(*(v41 - 8) + 104))(v74, v40, v41);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10003E7C4();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    v44 = v75;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v42, &qword_100142950, &qword_1000F7340);
    sub_100007E14(v39, &qword_100143B50, &qword_1000F9790);
    v45 = static VerticalAlignment.firstTextLineCenter.getter();
    v46 = v64;
    *v64 = v45;
    *(v46 + 8) = 0x4020000000000000;
    *(v46 + 16) = 0;
    v47 = sub_100002D44(&qword_100143CF8, &qword_1000F7898);
    sub_10003BC50(v63, v62 & 1, (v46 + *(v47 + 44)));
    v48 = v60;
    v49 = *(v60 + 16);
    v50 = v58;
    v51 = v44;
    v52 = v61;
    v49(v58, v51, v61);
    v53 = v65;
    sub_100007FDC(v46, v65, &qword_100143CE8, &qword_1000F7888);
    v54 = v66;
    v49(v66, v50, v52);
    v55 = sub_100002D44(&qword_100143D00, &qword_1000F78A0);
    sub_100007FDC(v53, &v54[*(v55 + 48)], &qword_100143CE8, &qword_1000F7888);
    sub_100007E14(v46, &qword_100143CE8, &qword_1000F7888);
    v56 = *(v48 + 8);
    v56(v75, v52);
    sub_100007E14(v53, &qword_100143CE8, &qword_1000F7888);
    return (v56)(v50, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BC50@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v93 = a2;
  v89 = a3;
  v84 = type metadata accessor for CircularProgressViewStyle();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002D44(&qword_100143D08, &qword_1000F78A8);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = v74 - v5;
  v81 = sub_100002D44(&qword_100143D10, &qword_1000F78B0);
  __chkstk_darwin(v81);
  v83 = v74 - v6;
  v99 = sub_100002D44(&qword_100143D18, &qword_1000F78B8);
  v94 = *(v99 - 8);
  __chkstk_darwin(v99);
  v76 = v74 - v7;
  v8 = sub_100002D44(&qword_100143D20, &qword_1000F78C0);
  __chkstk_darwin(v8 - 8);
  v88 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = v74 - v11;
  v98 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v98);
  v13 = v74 - v12;
  v96 = sub_100002D44(&qword_100143D28, &qword_1000F78C8);
  __chkstk_darwin(v96);
  v15 = v74 - v14;
  v92 = sub_100002D44(&qword_100143D30, &qword_1000F78D0);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = v74 - v16;
  v87 = sub_100002D44(&qword_100143D38, &qword_1000F78D8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v97 = v74 - v20;
  v21.super.isa = [objc_opt_self() mainBundle];
  v107._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000100100840;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v107._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v107);

  sub_100002D44(&qword_100143D40, &qword_1000F78E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000F57C0;
  *(v24 + 56) = &type metadata for Int;
  *(v24 + 64) = &protocol witness table for Int;
  *(v24 + 32) = a1;
  v25 = static String.localizedStringWithFormat(_:_:)();
  v27 = v26;

  *&v105[0] = v25;
  *(&v105[0] + 1) = v27;
  sub_10000B730(v28, v29, v30);
  v31 = Text.init<A>(_:)();
  v33 = v32;
  LOBYTE(v21.super.isa) = v34;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v38 = Font.weight(_:)();

  v39 = swift_getKeyPath();
  LOBYTE(v21.super.isa) &= 1u;
  LOBYTE(v105[0]) = v21.super.isa;
  v40 = Color.init(_:bundle:)();
  *&v100 = v31;
  *(&v100 + 1) = v33;
  LOBYTE(v101) = v21.super.isa;
  *(&v101 + 1) = v36;
  *&v102 = KeyPath;
  BYTE8(v102) = 0;
  *&v103 = v39;
  *(&v103 + 1) = v38;
  v104 = v40;
  sub_100002D44(&qword_100143D48, &qword_1000F7918);
  sub_100040A58();
  View.accessibilityIdentifier(_:)();
  v105[2] = v102;
  v105[3] = v103;
  v106 = v104;
  v105[0] = v100;
  v105[1] = v101;
  v41 = v96;
  sub_100007E14(v105, &qword_100143D48, &qword_1000F7918);
  v42 = sub_10003D7E8(&qword_100143D88, &qword_100143D28, &qword_1000F78C8, sub_100040A58);
  v90 = v17;
  View.accessibilityShowsLargeContentViewer()();
  sub_100007E14(v15, &qword_100143D28, &qword_1000F78C8);
  v43 = enum case for DynamicTypeSize.accessibility1(_:);
  v44 = type metadata accessor for DynamicTypeSize();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v47 = v45 + 104;
  v46(v13, v43, v44);
  v48 = sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v74[0] = v48;
    v74[1] = v47;
    v75 = v46;
    *&v100 = v41;
    *(&v100 + 1) = v42;
    v50 = 1;
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    v51 = v97;
    v52 = v92;
    v53 = v90;
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v13, &qword_100142950, &qword_1000F7340);
    (*(v91 + 8))(v53, v52);
    v54 = v99;
    v55 = v95;
    v56 = v94;
    v57 = v51;
    if ((v93 & 1) == 0)
    {
LABEL_5:
      (*(v56 + 56))(v55, v50, 1, v54);
      v64 = v86;
      v65 = *(v86 + 16);
      v66 = v85;
      v67 = v87;
      v65(v85, v57, v87);
      v68 = v55;
      v69 = v88;
      sub_100007FDC(v55, v88, &qword_100143D20, &qword_1000F78C0);
      v70 = v57;
      v71 = v89;
      v65(v89, v66, v67);
      v72 = sub_100002D44(&qword_100143D90, &qword_1000F7940);
      sub_100007FDC(v69, &v71[*(v72 + 48)], &qword_100143D20, &qword_1000F78C0);
      sub_100007E14(v68, &qword_100143D20, &qword_1000F78C0);
      v73 = *(v64 + 8);
      v73(v70, v67);
      sub_100007E14(v69, &qword_100143D20, &qword_1000F78C0);
      return (v73)(v66, v67);
    }

    v58 = v77;
    ProgressView<>.init<>()();
    v59 = v80;
    CircularProgressViewStyle.init()();
    sub_100004610(&qword_100143D98, &qword_100143D08, &qword_1000F78A8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100040C80(&qword_100143DA0, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v60 = v79;
    v61 = v84;
    v62 = v83;
    View.progressViewStyle<A>(_:)();
    (*(v82 + 8))(v59, v61);
    (*(v78 + 8))(v58, v60);
    *(v62 + *(v81 + 36)) = 0x3FE0000000000000;
    v75(v13, enum case for DynamicTypeSize.xxxLarge(_:), v44);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100040CC8();
      v63 = v76;
      View.dynamicTypeSize<A>(_:)();
      sub_100007E14(v13, &qword_100142950, &qword_1000F7340);
      sub_100007E14(v62, &qword_100143D10, &qword_1000F78B0);
      v54 = v99;
      (*(v56 + 32))(v55, v63, v99);
      v50 = 0;
      v57 = v97;
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_10003C858@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100007FDC(a1, a2, &qword_100143CB0, &qword_1000F7860);
  v4 = (a2 + *(sub_100002D44(&qword_100143CC8, &qword_1000F7878) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

uint64_t sub_10003C920@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100002D44(&qword_100143C98, &qword_1000F7848);
  return sub_10003AFCC(v4, v5, (a2 + *(v6 + 44)));
}

uint64_t sub_10003C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v29 = sub_100002D44(&qword_100142950, &qword_1000F7340);
  __chkstk_darwin(v29);
  v4 = &v27 - v3;
  v27 = sub_100002D44(&qword_100143C30, &qword_1000F7810);
  __chkstk_darwin(v27);
  v6 = &v27 - v5;
  v28 = sub_100002D44(&qword_100143C38, &qword_1000F7818);
  __chkstk_darwin(v28);
  v8 = &v27 - v7;
  v30 = sub_100002D44(&qword_100143C40, &qword_1000F7820);
  __chkstk_darwin(v30);
  v10 = &v27 - v9;
  v31 = sub_100002D44(&qword_100143C48, &qword_1000F7828);
  __chkstk_darwin(v31);
  v12 = &v27 - v11;
  v13 = static VerticalAlignment.center.getter();
  v36 = 0;
  sub_10003CF14(&v37);
  v39 = v37;
  v40 = v38[0];
  v41 = v38[1];
  v42 = v38[2];
  v43[0] = v37;
  v43[1] = v38[0];
  v43[2] = v38[1];
  v43[3] = v38[2];
  sub_100007FDC(&v39, v44, &qword_100143C50, &qword_1000F7830);
  sub_100007E14(v43, &qword_100143C50, &qword_1000F7830);
  *&v35[55] = v42;
  *&v35[39] = v41;
  *&v35[23] = v40;
  *&v35[7] = v39;
  *(&v38[1] + 1) = *&v35[16];
  *(&v38[2] + 1) = *&v35[32];
  *(&v38[3] + 1) = *&v35[48];
  *&v37 = v13;
  *(&v37 + 1) = 0x4028000000000000;
  LOBYTE(v38[0]) = v36;
  *&v38[4] = *(&v42 + 1);
  *(v38 + 1) = *v35;
  sub_100002D44(&qword_100143C58, &qword_1000F7838);
  sub_100004610(&qword_100143C60, &qword_100143C58, &qword_1000F7838, &protocol conformance descriptor for HStack<A>);
  View.accessibilityIdentifier(_:)();
  v44[2] = v38[1];
  v44[3] = v38[2];
  v44[4] = v38[3];
  v45 = *&v38[4];
  v44[0] = v37;
  v44[1] = v38[0];
  sub_100007E14(v44, &qword_100143C58, &qword_1000F7838);
  v14 = enum case for DynamicTypeSize.accessibility3(_:);
  v15 = type metadata accessor for DynamicTypeSize();
  (*(*(v15 - 8) + 104))(v4, v14, v15);
  sub_100040C80(&qword_1001429E8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100040644();
    sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v4, &qword_100142950, &qword_1000F7340);
    sub_100007E14(v6, &qword_100143C30, &qword_1000F7810);
    v17 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v18 = &v8[*(v28 + 36)];
    *v18 = v17;
    *(v18 + 1) = v19;
    *(v18 + 2) = v20;
    *(v18 + 3) = v21;
    *(v18 + 4) = v22;
    v18[40] = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10002F250(v8, v10, &qword_100143C38, &qword_1000F7818);
    v23 = &v10[*(v30 + 36)];
    v24 = v38[4];
    *(v23 + 4) = v38[3];
    *(v23 + 5) = v24;
    *(v23 + 6) = v38[5];
    v25 = v38[0];
    *v23 = v37;
    *(v23 + 1) = v25;
    v26 = v38[2];
    *(v23 + 2) = v38[1];
    *(v23 + 3) = v26;
    sub_10002F250(v10, v12, &qword_100143C40, &qword_1000F7820);
    v12[*(v31 + 36)] = 0;
    sub_10004072C();
    View.onTapGesture(count:perform:)();
    return sub_100007E14(v12, &qword_100143C48, &qword_1000F7828);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003CF14@<X0>(uint64_t a1@<X8>)
{
  v18 = Image.init(systemName:)();
  v17 = Color.init(_:bundle:)();
  static Font.title2.getter();
  static Font.Weight.semibold.getter();
  v16 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  LocalizedStringKey.init(_:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.callout.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000BFBC(v2, v4, v6 & 1);

  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v16;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11 & 1;
  *(a1 + 56) = v13;

  sub_100003B04(v7, v9, v11 & 1);

  sub_10000BFBC(v7, v9, v11 & 1);
}

void sub_10003D178(uint64_t a1)
{
  sub_10003D50C(319, &qword_100143808, type metadata accessor for ViewConfiguration);
  if (v2 <= 0x3F)
  {
    sub_10003D50C(319, &qword_100143958, &type metadata accessor for ScenePhase);
    if (v4 <= 0x3F)
    {
      type metadata accessor for LibraryListViewModel(255, *(a1 + 16), *(a1 + 24), v3);
      type metadata accessor for Bindable();
      if (v5 <= 0x3F)
      {
        sub_10003D560();
        if (v6 <= 0x3F)
        {
          sub_100008ADC(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10003D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(qword_1001438D0, &unk_1000F7280);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v8 = v6;
    v9 = *(v6 - 8);
    v10 = *(a3 + 36);
LABEL_5:
    v12 = *(v9 + 48);

    return v12(a1 + v10, a2, v8);
  }

  type metadata accessor for LibraryListViewModel(255, *(a3 + 16), *(a3 + 24), v7);
  v11 = type metadata accessor for Bindable();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v9 = *(v11 - 8);
    v10 = *(a3 + 40);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10003D3E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002D44(qword_1001438D0, &unk_1000F7280);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v10 = v8;
    v11 = *(v8 - 8);
    v12 = *(a4 + 36);
  }

  else
  {
    type metadata accessor for LibraryListViewModel(255, *(a4 + 16), *(a4 + 24), v9);
    result = type metadata accessor for Bindable();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + *(a4 + 44) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(result - 8);
    v12 = *(a4 + 40);
  }

  v14 = *(v11 + 56);

  return v14(a1 + v12, a2, a2, v10);
}

void sub_10003D50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10003D560()
{
  if (!qword_100143960)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100143960);
    }
  }
}

unint64_t sub_10003D5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143990;
  if (!qword_100143990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143990);
  }

  return result;
}

unint64_t sub_10003D648()
{
  result = qword_1001439B0;
  if (!qword_1001439B0)
  {
    sub_100004370(&qword_1001439A0, &qword_1000F7350);
    sub_10003D700();
    sub_100004610(&qword_1001429D0, &qword_1001429D8, &qword_1000F5AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439B0);
  }

  return result;
}

unint64_t sub_10003D700()
{
  result = qword_1001439B8;
  if (!qword_1001439B8)
  {
    sub_100004370(&qword_1001439C0, &qword_1000F7358);
    sub_100004610(&qword_1001439C8, &qword_1001439D0, &unk_1000F7360, &protocol conformance descriptor for Button<A>);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439B8);
  }

  return result;
}

uint64_t sub_10003D7E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    a4();
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003D89C()
{
  result = qword_1001439F8;
  if (!qword_1001439F8)
  {
    sub_100004370(&qword_100143A00, &unk_1000F7378);
    sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001439F8);
  }

  return result;
}

unint64_t sub_10003D954()
{
  result = qword_100142FB0;
  if (!qword_100142FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100142FB0);
  }

  return result;
}

unint64_t sub_10003D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143A48;
  if (!qword_100143A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A48);
  }

  return result;
}

unint64_t sub_10003D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143A50;
  if (!qword_100143A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A50);
  }

  return result;
}

__n128 sub_10003DA7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_10003DA98(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LibraryListView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_10003AD98(a1, a2, v10, v7, v8);
}

uint64_t sub_10003DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LibraryListView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_10003AE78(a1, a2, v10, v7, v8);
}

uint64_t sub_10003DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LibraryListView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = (v4 + *(result + 56) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  if (*v8)
  {
    return (*v8)();
  }

  return result;
}

uint64_t sub_10003DC60@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100002D44(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100007FDC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

double sub_10003DDB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LibraryListView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100038BBC(a1, a2, v10, v7, v8);
}

uint64_t sub_10003DE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001A168();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003DED4@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(type metadata accessor for LibraryListView(0, v4, v5, a1) - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10003A834(v8, v4, v5, v6, a2);
}

uint64_t sub_10003DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for LibraryListView(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 48) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  swift_unknownObjectRelease();
  v11 = v4 + v9;

  v12 = v7[9];
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v15 = v7[10];
  type metadata accessor for LibraryListViewModel(255, v5, v6, v14);
  v16 = type metadata accessor for Bindable();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  if (*(v11 + v7[12]))
  {
  }

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

uint64_t sub_10003E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for LibraryListView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100012EC8;

  return sub_10003AC6C(v10, v11, v4 + v9, v6, v7);
}

unint64_t sub_10003E220()
{
  result = qword_100143A80;
  if (!qword_100143A80)
  {
    sub_100004370(&qword_100143A70, &qword_1000F7448);
    sub_100004610(&qword_100143A88, &qword_100143A90, &qword_1000F7458, &protocol conformance descriptor for Menu<A, B>);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143A80);
  }

  return result;
}

double sub_10003E308(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LibraryListView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100039538(a1, v9, v6, v7);
}

unint64_t sub_10003E3A8()
{
  result = qword_100143AC0;
  if (!qword_100143AC0)
  {
    sub_100004370(&qword_100143AB0, &qword_1000F7470);
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AC0);
  }

  return result;
}

unint64_t sub_10003E460()
{
  result = qword_100143AC8;
  if (!qword_100143AC8)
  {
    sub_100004370(&qword_100143AB8, &unk_1000F7478);
    sub_10003E518();
    sub_100004610(&qword_100141F70, &qword_100141F78, &qword_1000F5CC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AC8);
  }

  return result;
}

unint64_t sub_10003E518()
{
  result = qword_100143AD0;
  if (!qword_100143AD0)
  {
    sub_100004370(&qword_100143AD8, &qword_1000F7488);
    sub_10003E5D0();
    sub_100004610(&qword_100143B00, &qword_100143B08, &unk_1000F74A0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AD0);
  }

  return result;
}

unint64_t sub_10003E5D0()
{
  result = qword_100143AE0;
  if (!qword_100143AE0)
  {
    sub_100004370(&qword_100143AE8, &qword_1000F7490);
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100143AF0, &qword_100143AF8, &qword_1000F7498, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143AE0);
  }

  return result;
}

unint64_t sub_10003E740()
{
  result = qword_100143B40;
  if (!qword_100143B40)
  {
    sub_100004370(&qword_100143B38, &unk_1000F7550);
    sub_10003E7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B40);
  }

  return result;
}

unint64_t sub_10003E7C4()
{
  result = qword_100143B48;
  if (!qword_100143B48)
  {
    sub_100004370(&qword_100143B50, &qword_1000F9790);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B48);
  }

  return result;
}

unint64_t sub_10003E88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143B90;
  if (!qword_100143B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143B90);
  }

  return result;
}

unint64_t sub_10003E908()
{
  result = qword_100143BB8;
  if (!qword_100143BB8)
  {
    v1 = sub_100004370(&qword_100143BB0, &qword_1000F7638);
    sub_10003E9C0(v1, v2, v3);
    sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BB8);
  }

  return result;
}

unint64_t sub_10003E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143BC0;
  if (!qword_100143BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BC0);
  }

  return result;
}

uint64_t sub_10003EA74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LibraryListView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100035A88(a1, v9, v6, v7, a3);
}

unint64_t sub_10003EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100143BE0;
  if (!qword_100143BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BE0);
  }

  return result;
}

unint64_t sub_10003EB64()
{
  result = qword_100143BE8;
  if (!qword_100143BE8)
  {
    sub_100004370(&qword_100143970, &qword_1000F7318);
    sub_100004610(&qword_100143BA8, &qword_100143BA0, &qword_1000F7630, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BE8);
  }

  return result;
}

unint64_t sub_10003EC20()
{
  result = qword_100143BF0;
  if (!qword_100143BF0)
  {
    sub_100004370(&qword_100143978, &qword_1000F7320);
    sub_10003ECA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BF0);
  }

  return result;
}

unint64_t sub_10003ECA4()
{
  result = qword_100143BF8;
  if (!qword_100143BF8)
  {
    sub_100004370(&qword_100143B98, &qword_1000F7628);
    sub_10003ED5C();
    sub_100004610(&qword_100143BD8, &qword_100143A10, &qword_1000F7390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143BF8);
  }

  return result;
}

unint64_t sub_10003ED5C()
{
  result = qword_100143C00;
  if (!qword_100143C00)
  {
    sub_100004370(&qword_100143BC8, &qword_1000F7640);
    sub_10003EE14();
    sub_100004610(&qword_100143BD0, &qword_100143A08, &qword_1000F7388, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C00);
  }

  return result;
}

unint64_t sub_10003EE14()
{
  result = qword_100143C08;
  if (!qword_100143C08)
  {
    sub_100004370(&qword_100143C10, &qword_1000F7678);
    sub_10003E908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C08);
  }

  return result;
}

uint64_t sub_10003EEDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LibraryListView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_10003EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for LibraryListView(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = v4 + v9;

  v12 = v7[9];
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v15 = v7[10];
  type metadata accessor for LibraryListViewModel(255, v5, v6, v14);
  v16 = type metadata accessor for Bindable();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  if (*(v11 + v7[12]))
  {
  }

  v17 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v4, v17 + 8, v8 | 7);
}

uint64_t sub_10003F1A0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LibraryListView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4 + v8, v9, v5, v6);
}

uint64_t sub_10003F264@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10003F29C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = type metadata accessor for LibraryListView(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 48) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  swift_unknownObjectRelease();
  v11 = v4 + v9;

  v12 = v7[9];
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v15 = v7[10];
  type metadata accessor for LibraryListViewModel(255, v5, v6, v14);
  v16 = type metadata accessor for Bindable();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  if (*(v11 + v7[12]))
  {
  }

  v17 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v4, v17 + 8, v8 | 7);
}

uint64_t sub_10003F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for LibraryListView(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_10000789C;

  return sub_1000382E0(a1, v12, v13, v4 + v11, v14, v9, v8);
}

double sub_10003F664(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for LibraryListView(0, v7, v8, a4) - 8);
  return sub_100038B10(v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a1, a2);
}

uint64_t sub_10003F700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for LibraryListView(0, v5, v6, a4);
  v8 = *(*(v7 - 1) + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = v4 + v9;

  v12 = v7[9];
  sub_100002D44(&qword_1001420E0, &unk_1000F5290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v15 = v7[10];
  type metadata accessor for LibraryListViewModel(255, v5, v6, v14);
  v16 = type metadata accessor for Bindable();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);

  if (*(v11 + v7[12]))
  {
  }

  return _swift_deallocObject(v4, v9 + v10, v8 | 7);
}

double sub_10003F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for LibraryListView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100035A3C(v9, v5, v6, v7);
}

uint64_t initializeBufferWithCopyOfBuffer for LibraryHeader(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003FA04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for NavigationPath();
  sub_100004370(&qword_100143970, &qword_1000F7318);
  sub_100004370(&qword_100143978, &qword_1000F7320);
  sub_100004370(&qword_100143980, &qword_1000F7328);
  sub_100004370(&qword_100143988, &unk_1000F7330);
  sub_100004370(&qword_100142FC8, &qword_1000F8AB0);
  type metadata accessor for UUID();
  type metadata accessor for LibraryItemContextMenu(255, v1, v2, v3);
  v4 = type metadata accessor for ModifiedContent();
  sub_10003D5F4(v4, v5, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100142950, &qword_1000F7340);
  swift_getWitnessTable();
  sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_100004610(&qword_1001429F0, &qword_100142950, &qword_1000F7340, &protocol conformance descriptor for PartialRangeThrough<A>);
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143998, &qword_1000F7348);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_1001439A0, &qword_1000F7350);
  swift_getOpaqueTypeConformance2();
  sub_100004610(&qword_1001439A8, &qword_100143998, &qword_1000F7348, &protocol conformance descriptor for _TraitWritingModifier<A>);
  swift_getWitnessTable();
  sub_10003D648();
  swift_getOpaqueTypeMetadata2();
  sub_100004610(&qword_1001439D8, &qword_100142FC8, &qword_1000F8AB0, &protocol conformance descriptor for [A]);
  sub_100040C80(&qword_1001439E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_100004370(&qword_1001439E8, &qword_1000F7370);
  sub_10003D7E8(&qword_1001439F0, &qword_1001439E8, &qword_1000F7370, sub_10003D89C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100141F88, &qword_1000F4E90);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A08, &qword_1000F7388);
  type metadata accessor for ModifiedContent();
  sub_100004370(&qword_100143A10, &qword_1000F7390);
  type metadata accessor for ModifiedContent();
  sub_100004610(&qword_100143A18, &qword_100143980, &qword_1000F7328, &protocol conformance descriptor for [A]);
  type metadata accessor for ForEach();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for ShazamUpsellOverlayModifier(255);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100040C80(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier, &unk_1000FE080);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10000B730(OpaqueTypeConformance2, v8, v9);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10003D954();
  type metadata accessor for TrackPageView(255);
  swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100142FB8, sub_10003D954, &protocol conformance descriptor for NSObject);
  sub_100040C80(&qword_100142068, type metadata accessor for TrackPageView, &unk_1000F7A60);
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143A28, &qword_1000F7398);
  swift_getOpaqueTypeConformance2();
  sub_100004370(&qword_100143A30, &qword_1000F73A0);
  sub_100004610(&qword_100143A38, &qword_100143A30, &qword_1000F73A0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100004370(&qword_100143A40, &qword_1000F73A8);
  v10 = swift_getOpaqueTypeConformance2();
  sub_10003D9A0(v10, v11, v12);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  sub_100004370(&qword_1001429D8, &qword_1000F5AE8);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100004610(&qword_1001429D0, &qword_1001429D8, &qword_1000F5AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable();
  sub_10003D9F4(WitnessTable, v14, v15);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScenePhase();
  swift_getOpaqueTypeConformance2();
  sub_100040C80(&qword_100143A58, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_100040644()
{
  result = qword_100143C68;
  if (!qword_100143C68)
  {
    sub_100004370(&qword_100143C30, &qword_1000F7810);
    sub_100004610(&qword_100143C60, &qword_100143C58, &qword_1000F7838, &protocol conformance descriptor for HStack<A>);
    sub_100040C80(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C68);
  }

  return result;
}

unint64_t sub_10004072C()
{
  result = qword_100143C70;
  if (!qword_100143C70)
  {
    sub_100004370(&qword_100143C48, &qword_1000F7828);
    sub_1000407E4();
    sub_100004610(&qword_100143C88, &qword_100143C90, &qword_1000F7840, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100143C70);
  }

  return result;
}